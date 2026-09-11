Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/unate?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@map_unate_to_cover:bb.a
  %i.ds = load i32, ptr %0, align 8, !tbaa !20
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %.05070.us, i64 %i.dt ; 2 uses
  %i.dv = icmp ult ptr %i.du, %i.al
  br i1 %i.dv, label %.lr.ph73.split.us, label %._crit_edge74

.lr.ph73.split:                                   ; preds = %.lr.ph73, %.preheader
  %.04971 = phi ptr [ %i.eo, %.preheader ], [ %i.ao, %.lr.ph73 ] ; 4 uses
  %.05070 = phi ptr [ %i.er, %.preheader ], [ %i.ag, %.lr.ph73 ]
  %i.dw = load i32, ptr @cube, align 8, !tbaa !18 ; 2 uses
  %i.dx = icmp slt i32 %i.dw, 33
  %i.dy = add nsw i32 %i.dw, -1
  %i.dz = ashr i32 %i.dy, 5
  %i.ea = add nsw i32 %i.dz, 1
  %i.eb = select i1 %i.dx, i32 1, i32 %i.ea       ; 5 uses
  store i32 %i.eb, ptr %.04971, align 4, !tbaa !7
  %i.ec = shl nsw i32 %i.eb, 5
  %i.ed = load i32, ptr @cube, align 8, !tbaa !18
  %i.ee = sub nsw i32 %i.ec, %i.ed
  %i.ef = lshr i32 -1, %i.ee
  %i.eg = sext i32 %i.eb to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %.04971, i64 %i.eg
  store i32 %i.ef, ptr %i.eh, align 4, !tbaa !7
  %i.ei = icmp sgt i32 %i.eb, 1
  br i1 %i.ei, label %.lr.ph62.preheader, label %.preheader

.lr.ph62.preheader:                               ; preds = %.lr.ph73.split
  %i.ej = add nsw i32 %i.eb, -1
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = shl nuw nsw i64 %i.ek, 2
  %scevgep = getelementptr i8, ptr %.04971, i64 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 -1, i64 %i.el, i1 false), !tbaa !7
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph62.preheader, %.lr.ph73.split
  %i.em = load i32, ptr %i.d, align 8, !tbaa !20
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %.04971, i64 %i.en
  %i.ep = load i32, ptr %0, align 8, !tbaa !20
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [4 x i8], ptr %.05070, i64 %i.eq ; 2 uses
  %i.es = icmp ult ptr %i.er, %i.al
  br i1 %i.es, label %.lr.ph73.split, label %._crit_edge74

._crit_edge74:                                    ; preds = %.preheader, %._crit_edge69.us, %._crit_edge
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge74
  tail call void @free(ptr noundef nonnull %i.j) #11
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge74
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @unate_compl(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !13
  %i.e = load i32, ptr %0, align 8, !tbaa !20
  %i.f = mul nsw i32 %i.e, %i.d                   ; 2 uses
  %i.g = sext i32 %i.f to i64
  %.idx = shl nuw nsw i64 %i.g, 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.i = icmp sgt i32 %i.f, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.014 = phi ptr [ %i.r, %.lr.ph ], [ %i.b, %bb.a ] ; 6 uses
  %i.j = load i32, ptr %.014, align 4, !tbaa !7
  %i.k = and i32 %i.j, 65535
  store i32 %i.k, ptr %.014, align 4, !tbaa !7
  %i.l = tail call i32 (ptr, ...) @set_ord(ptr noundef nonnull %.014) #11
  %i.m = shl i32 %i.l, 16
  %i.n = load i32, ptr %.014, align 4, !tbaa !7
  %i.o = or i32 %i.n, %i.m
  store i32 %i.o, ptr %.014, align 4, !tbaa !7
  %i.p = load i32, ptr %0, align 8, !tbaa !20
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %.014, i64 %i.q ; 2 uses
  %i.s = icmp ult ptr %i.r, %i.h
  br i1 %i.s, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.t = tail call ptr @unate_complement(ptr noundef nonnull %0)
  %i.u = tail call ptr (ptr, ...) @sf_rev_contain(ptr noundef %i.t) #11
  ret ptr %i.u
}

declare i32 @set_ord(...) local_unnamed_addr #2

declare ptr @sf_rev_contain(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @unate_complement(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 9 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  switch i32 %i.b, label %bb.g [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %0) #11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !19
  %i.e = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 1, i32 noundef %i.d) #11 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.h = load i32, ptr %i.e, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !13   ; 2 uses
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !13
  %i.l = mul nsw i32 %i.j, %i.h
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.m
  %i.o = load i32, ptr %i.c, align 4, !tbaa !19
  %i.p = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.n, i32 noundef %i.o) #11 ; 0 uses
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !19   ; 2 uses
  %i.u = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.t, i32 noundef %i.t) #11 ; 4 uses
  %i.v = load i32, ptr %i.s, align 4, !tbaa !19   ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 12 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.z = phi i32 [ %i.v, %.lr.ph ], [ %i.at, %bb.f ] ; 2 uses
  %.094119 = phi i32 [ 0, %.lr.ph ], [ %i.au, %bb.f ] ; 3 uses
  %i.aa = lshr i32 %.094119, 5
  %i.ab = add nuw nsw i32 %i.aa, 1
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !7
  %i.af = and i32 %.094119, 31
  %i.ag = shl nuw i32 1, %i.af                    ; 2 uses
  %i.ah = and i32 %i.ae, %i.ag
  %.not107 = icmp eq i32 %i.ah, 0
  br i1 %.not107, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !14
  %i.aj = load i32, ptr %i.u, align 8, !tbaa !20
  %i.ak = load i32, ptr %i.y, align 4, !tbaa !13  ; 2 uses
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.y, align 4, !tbaa !13
  %i.am = mul nsw i32 %i.ak, %i.aj
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.an
  %i.ap = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.ao, i32 noundef %i.z) #11
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ac ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7
  %i.as = or i32 %i.ar, %i.ag
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !7
  %.pre = load i32, ptr %i.s, align 4, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.at = phi i32 [ %i.z, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  %i.au = add nuw nsw i32 %.094119, 1             ; 2 uses
  %i.av = icmp slt i32 %i.au, %i.at
  br i1 %i.av, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.c
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %0) #11
  br label %bb.x

bb.g:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !19 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 33
  %i.az = add nsw i32 %i.ax, -1
  %i.ba = lshr i32 %i.az, 3
  %i.bb = and i32 %i.ba, 536870908
  %i.bc = add nuw nsw i32 %i.bb, 8
  %narrow = select i1 %i.ay, i32 8, i32 %i.bc
  %i.bd = zext nneg i32 %narrow to i64
  %i.be = tail call noalias ptr @malloc(i64 noundef %i.bd) #12
  %i.bf = load i32, ptr %i.aw, align 4, !tbaa !19
  %i.bg = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.be, i32 noundef %i.bf) #11 ; 6 uses
  %i.bh = load i32, ptr %i.aw, align 4, !tbaa !19
  %i.bi = add nsw i32 %i.bh, 1                    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.bk = load i32, ptr %i.a, align 4, !tbaa !13  ; 3 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph124.preheader, label %._crit_edge125

.lr.ph124.preheader:                              ; preds = %bb.g
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !14
  br label %.lr.ph124

.lr.ph124:                                        ; preds = %.lr.ph124.preheader, %bb.i
  %1 = phi i32 [ %2, %bb.i ], [ %i.bk, %.lr.ph124.preheader ]
  %.0122 = phi i32 [ %.1, %bb.i ], [ %i.bi, %.lr.ph124.preheader ] ; 2 uses
  %.195121 = phi i32 [ %i.bw, %bb.i ], [ 0, %.lr.ph124.preheader ]
  %.096120 = phi ptr [ %i.bv, %bb.i ], [ %i.bm, %.lr.ph124.preheader ] ; 4 uses
  %i.bn = load i32, ptr %.096120, align 4, !tbaa !7
  %i.bo = lshr i32 %i.bn, 16
  %i.bp = icmp ult i32 %i.bo, %.0122
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph124
  %i.bq = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef %i.bg, ptr noundef nonnull %.096120) #11 ; 0 uses
  %i.br = load i32, ptr %.096120, align 4, !tbaa !7
  %i.bs = lshr i32 %i.br, 16
  %.pre140 = load i32, ptr %i.a, align 4, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph124, %bb.h
  %2 = phi i32 [ %.pre140, %bb.h ], [ %1, %.lr.ph124 ] ; 3 uses
  %.1 = phi i32 [ %i.bs, %bb.h ], [ %.0122, %.lr.ph124 ] ; 2 uses
  %i.bt = load i32, ptr %0, align 8, !tbaa !20
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %.096120, i64 %i.bu
  %i.bw = add nuw nsw i32 %.195121, 1             ; 2 uses
  %i.bx = icmp slt i32 %i.bw, %2
  br i1 %i.bx, label %.lr.ph124, label %._crit_edge125

._crit_edge125:                                   ; preds = %bb.i, %bb.g
  %.0.lcssa = phi i32 [ %i.bi, %bb.g ], [ %.1, %bb.i ]
  %.lcssa = phi i32 [ %i.bk, %bb.g ], [ %2, %bb.i ]
  switch i32 %.0.lcssa, label %bb.o [
    i32 0, label %bb.j
    i32 1, label %bb.k
  ]

bb.j:                                             ; preds = %._crit_edge125
  store i32 0, ptr %i.a, align 4, !tbaa !13
  br label %.loopexit

bb.k:                                             ; preds = %._crit_edge125
  %i.by = load i32, ptr %i.aw, align 4, !tbaa !19
  %i.bz = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %.lcssa, i32 noundef %i.by) #11 ; 4 uses
  %i.ca = load ptr, ptr %i.bj, align 8, !tbaa !14 ; 2 uses
  %i.cb = load i32, ptr %i.a, align 4, !tbaa !13
  %i.cc = load i32, ptr %0, align 8, !tbaa !20
  %i.cd = mul nsw i32 %i.cc, %i.cb                ; 2 uses
  %i.ce = sext i32 %i.cd to i64
  %.idx.i = shl nsw i64 %i.ce, 2
  %i.cf = getelementptr inbounds i8, ptr %i.ca, i64 %.idx.i
  %i.cg = icmp sgt i32 %i.cd, 0
  br i1 %i.cg, label %.lr.ph.i, label %abs_covered_many.exit

.lr.ph.i:                                         ; preds = %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !14
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bz, i64 12 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %.lr.ph.i
  %.02226.i = phi ptr [ %i.ci, %.lr.ph.i ], [ %.1.i, %bb.n ] ; 9 uses
  %.02325.i = phi ptr [ %i.ca, %.lr.ph.i ], [ %i.dx, %bb.n ] ; 10 uses
  %i.ck = tail call i32 (ptr, ptr, ...) @setp_disjoint(ptr noundef %.02325.i, ptr noundef %i.bg) #11
  %.not.i = icmp eq i32 %i.ck, 0
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.02226.i158 = ptrtoaddr ptr %.02226.i to i64
  %.02325.i157 = ptrtoaddr ptr %.02325.i to i64
  %i.cl = load i32, ptr %.02325.i, align 4, !tbaa !7
  %i.cm = and i32 %i.cl, 1023                     ; 2 uses
  %i.cn = zext nneg i32 %i.cm to i64              ; 4 uses
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.cm, 7
  %i.cp = sub i64 %.02226.i158, %.02325.i157
  %diff.check = icmp ugt i64 %i.cp, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.co, 2040                    ; 3 uses
  %i.cq = sub nsw i64 %i.cn, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cr = sub i64 %i.cn, %index                   ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.02325.i, i64 %i.cr ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -12
  %i.cu = getelementptr inbounds i8, ptr %i.cs, i64 -28
  %wide.load = load <4 x i32>, ptr %i.ct, align 4, !tbaa !7
  %wide.load159 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !7
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.02226.i, i64 %i.cr ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -12
  %i.cx = getelementptr inbounds i8, ptr %i.cv, i64 -28
  store <4 x i32> %wide.load, ptr %i.cw, align 4, !tbaa !7
  store <4 x i32> %wide.load159, ptr %i.cx, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.co, %n.vec
  br i1 %cmp.n, label %.loopexit177, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.m, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.cn, %bb.m ], [ %i.cq, %middle.block ] ; 4 uses
  %i.cz = add nsw i64 %indvars.iv.i.ph, 1
  %xtraiter = and i64 %i.cz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.02325.i, i64 %indvars.iv.i.prol
  %i.db = load i32, ptr %i.da, align 4, !tbaa !7
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.02226.i, i64 %indvars.iv.i.prol
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !7
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !30

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.dd = icmp ult i64 %indvars.iv.i.ph, 3
  br i1 %i.dd, label %.loopexit177, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.02325.i, i64 %indvars.iv.i
  %i.df = load i32, ptr %i.de, align 4, !tbaa !7
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.02226.i, i64 %indvars.iv.i
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !7
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.02325.i, i64 %indvars.iv.next.i
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !7
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.02226.i, i64 %indvars.iv.next.i
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !7
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.02325.i, i64 %indvars.iv.next.i.1
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !7
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.02226.i, i64 %indvars.iv.next.i.1
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !7
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, -3 ; 3 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.02325.i, i64 %indvars.iv.next.i.2
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !7
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.02226.i, i64 %indvars.iv.next.i.2
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !7
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4
  %.not24.i.3 = icmp eq i64 %indvars.iv.next.i.2, 0
  br i1 %.not24.i.3, label %.loopexit177, label %scalar.ph, !llvm.loop !31

.loopexit177:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.dq = load i32, ptr %i.cj, align 4, !tbaa !13
  %i.dr = add nsw i32 %i.dq, 1
  store i32 %i.dr, ptr %i.cj, align 4, !tbaa !13
  %i.ds = load i32, ptr %i.bz, align 8, !tbaa !20
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %.02226.i, i64 %i.dt
  br label %bb.n

bb.n:                                             ; preds = %.loopexit177, %bb.l
  %.1.i = phi ptr [ %i.du, %.loopexit177 ], [ %.02226.i, %bb.l ]
  %i.dv = load i32, ptr %0, align 8, !tbaa !20
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %.02325.i, i64 %i.dw ; 2 uses
  %i.dy = icmp ult ptr %i.dx, %i.cf
  br i1 %i.dy, label %bb.l, label %abs_covered_many.exit

abs_covered_many.exit:                            ; preds = %bb.n, %bb.k
  %i.dz = tail call ptr @unate_complement(ptr noundef %i.bz) ; 5 uses
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %0) #11
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 12 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !13
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %.lr.ph129.preheader, label %.loopexit

.lr.ph129.preheader:                              ; preds = %abs_covered_many.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !14
  br label %.lr.ph129

.lr.ph129:                                        ; preds = %.lr.ph129.preheader, %.lr.ph129
  %.2128 = phi i32 [ %i.ej, %.lr.ph129 ], [ 0, %.lr.ph129.preheader ]
  %.197127 = phi ptr [ %i.ei, %.lr.ph129 ], [ %i.ee, %.lr.ph129.preheader ] ; 3 uses
  %i.ef = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %.197127, ptr noundef %.197127, ptr noundef %i.bg) #11 ; 0 uses
  %i.eg = load i32, ptr %i.dz, align 8, !tbaa !20
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %.197127, i64 %i.eh
  %i.ej = add nuw nsw i32 %.2128, 1               ; 2 uses
  %i.ek = load i32, ptr %i.ea, align 4, !tbaa !13
  %i.el = icmp slt i32 %i.ej, %i.ek
  br i1 %i.el, label %.lr.ph129, label %.loopexit

bb.o:                                             ; preds = %._crit_edge125
  %i.em = tail call ptr (ptr, ptr, ...) @sf_count_restricted(ptr noundef nonnull %0, ptr noundef %i.bg) #11 ; 8 uses
  %i.en = load i32, ptr %i.aw, align 4, !tbaa !19 ; 3 uses
  %i.eo = icmp sgt i32 %i.en, 0
  br i1 %i.eo, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.o
  %wide.trip.count.i = zext nneg i32 %i.en to i64 ; 2 uses
  %xtraiter180 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.ep = icmp ult i32 %i.en, 4
  br i1 %i.ep, label %.lr.ph.i109.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i109

.lr.ph.i109:                                      ; preds = %.lr.ph.i109, %.lr.ph.preheader.i.new
  %indvars.iv.i110 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i111.3, %.lr.ph.i109 ] ; 6 uses
  %.022.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %spec.select19.i.3, %.lr.ph.i109 ] ; 2 uses
  %.01421.i = phi i32 [ -1, %.lr.ph.preheader.i.new ], [ %spec.select.i.3, %.lr.ph.i109 ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i109 ]
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv.i110
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !7  ; 2 uses
  %i.es = icmp sgt i32 %i.er, %.022.i
  %i.et = trunc nuw nsw i64 %indvars.iv.i110 to i32
  %spec.select.i = select i1 %i.es, i32 %i.et, i32 %.01421.i
  %spec.select19.i = tail call i32 @llvm.smax.i32(i32 %i.er, i32 %.022.i) ; 2 uses
  %indvars.iv.next.i111 = or disjoint i64 %indvars.iv.i110, 1 ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv.next.i111
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !7  ; 2 uses
  %i.ew = icmp sgt i32 %i.ev, %spec.select19.i
  %i.ex = trunc nuw nsw i64 %indvars.iv.next.i111 to i32
  %spec.select.i.1 = select i1 %i.ew, i32 %i.ex, i32 %spec.select.i
  %spec.select19.i.1 = tail call i32 @llvm.smax.i32(i32 %i.ev, i32 %spec.select19.i) ; 2 uses
  %indvars.iv.next.i111.1 = or disjoint i64 %indvars.iv.i110, 2 ; 2 uses
end_hunk_0
