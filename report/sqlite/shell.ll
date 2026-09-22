Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/shell?download=true
inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 119
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@decimal_new:bb.a
  %i.al = shl nuw nsw i64 %i.ah, 16
  %i.am = shl nuw nsw i64 %i.ak, 8
  %i.an = or disjoint i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !52
  %i.aq = zext i8 %i.ap to i64
  %i.ar = or disjoint i64 %i.an, %i.aq
  %i.as = shl nuw i64 %i.ar, 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 7
  %i.au = load i8, ptr %i.at, align 1, !tbaa !52
  %i.av = zext i8 %i.au to i64
  %i.aw = or disjoint i64 %i.as, %i.av
  %i.ax = bitcast i64 %i.aw to double
  %i.ay = tail call fastcc ptr @decimalFromDouble(double noundef %i.ax)
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %.not33 = icmp eq ptr %0, null
  br i1 %.not33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @sqlite3_result_error_nomem(ptr noundef nonnull %0) #45
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @sqlite3_free(ptr noundef null) #45
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.a, %bb.c, %bb.d, %bb.e, %bb.h
  %.029 = phi ptr [ null, %bb.h ], [ null, %bb.a ], [ %i.g, %bb.b ], [ %i.j, %bb.c ], [ %i.ay, %bb.e ], [ null, %bb.d ]
  ret ptr %.029
}

; Function Attrs: nounwind uwtable
define internal fastcc void @decimal_result_sci(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !140
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @sqlite3_result_error_nomem(ptr noundef %0) #45
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.f = load i8, ptr %i.e, align 2, !tbaa !141
  %.not64 = icmp eq i8 %i.f, 0
  br i1 %.not64, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @sqlite3_result_null(ptr noundef %0) #45
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %2, i32 0) ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !138  ; 4 uses
  %i.i = icmp sgt i32 %i.h, %spec.store.select
  br i1 %i.i, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !139
  %i.l = zext nneg i32 %i.h to i64
  %i.m = zext nneg i32 %spec.store.select to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ %i.l, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.n = getelementptr i8, ptr %i.k, i64 %indvars.iv
  %i.o = getelementptr i8, ptr %i.n, i64 -1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !52
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.h, label %.critedge.loopexit.split.loop.exit89

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.r = icmp sgt i64 %indvars.iv.next, %i.m
  br i1 %i.r, label %bb.g, label %.critedge, !llvm.loop !1073

.critedge.loopexit.split.loop.exit89:             ; preds = %bb.g
  %i.s = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %.critedge.loopexit.split.loop.exit89, %bb.f
  %.057.lcssa = phi i32 [ %i.h, %bb.f ], [ %i.s, %.critedge.loopexit.split.loop.exit89 ], [ %spec.store.select, %bb.h ] ; 5 uses
  %i.t = icmp sgt i32 %.057.lcssa, 0
  br i1 %i.t, label %.lr.ph69, label %.critedge2

.lr.ph69:                                         ; preds = %.critedge
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !139
  %wide.trip.count = zext nneg i32 %.057.lcssa to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph69, %bb.j
  %indvars.iv76 = phi i64 [ 0, %.lr.ph69 ], [ %indvars.iv.next77, %bb.j ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv76
  %i.x = load i8, ptr %i.w, align 1, !tbaa !52
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.j, label %.critedge2.loopexit.split.loop.exit91

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count
  br i1 %exitcond.not, label %.critedge2, label %bb.i, !llvm.loop !1074

.critedge2.loopexit.split.loop.exit91:            ; preds = %bb.i
  %i.z = trunc nuw nsw i64 %indvars.iv76 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.j, %.critedge2.loopexit.split.loop.exit91, %.critedge
  %.058.lcssa = phi i32 [ 0, %.critedge ], [ %i.z, %.critedge2.loopexit.split.loop.exit91 ], [ %.057.lcssa, %bb.j ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !143
  %i.ac = sub i32 %.057.lcssa, %i.h
  %i.ad = add nsw i32 %i.ac, %i.ab
  %i.ae = sub nsw i32 %.057.lcssa, %.058.lcssa    ; 4 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = add nsw i64 %i.af, 20
  %i.ah = tail call ptr @sqlite3_malloc64(i64 noundef %i.ag) #45 ; 15 uses
  %i.ai = ptrtoaddr ptr %i.ah to i64
  %i.aj = icmp eq ptr %i.ah, null
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.critedge2
  tail call void @sqlite3_result_error_nomem(ptr noundef %0) #45
  br label %bb.r

bb.l:                                             ; preds = %.critedge2
  %i.ak = icmp eq i32 %i.ae, 0
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %i.a, align 1, !tbaa !52
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !139
  %i.an = zext nneg i32 %.058.lcssa to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  %i.ap = xor i32 %i.ad, -1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1 = phi i32 [ 1, %bb.m ], [ %i.ae, %bb.n ]    ; 7 uses
  %.056 = phi i32 [ -1, %bb.m ], [ %i.ap, %bb.n ]
  %.0 = phi ptr [ %i.a, %bb.m ], [ %i.ao, %bb.n ] ; 9 uses
  %.095 = ptrtoaddr ptr %.0 to i64
  %i.aq = load i8, ptr %1, align 8, !tbaa !142
  %i.ar = icmp ne i8 %i.aq, 0
  %i.as = icmp sgt i32 %.1, 0
  %or.cond = and i1 %i.as, %i.ar
  %. = select i1 %or.cond, i8 45, i8 43
  store i8 %., ptr %i.ah, align 1, !tbaa !52
  %i.at = load i8, ptr %.0, align 1, !tbaa !52
  %i.au = add i8 %i.at, 48
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store i8 %i.au, ptr %i.av, align 1, !tbaa !52
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  store i8 46, ptr %i.aw, align 1, !tbaa !52
  %i.ax = icmp eq i32 %.1, 1
  br i1 %i.ax, label %bb.p, label %.preheader

.preheader:                                       ; preds = %bb.o
  %i.ay = icmp sgt i32 %.1, 1
  br i1 %i.ay, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %wide.trip.count82 = zext nneg i32 %.1 to i64   ; 3 uses
  %i.az = zext i32 %i.ae to i64
  %i.ba = call i64 @llvm.usub.sat.i64(i64 %i.az, i64 1) ; 7 uses
  %min.iters.check = icmp samesign ult i64 %i.ba, 8
  br i1 %min.iters.check, label %.lr.ph74.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bb = sub i64 %i.ai, %.095
  %i.bc = add i64 %i.bb, 1
  %diff.check = icmp ult i64 %i.bc, 31
  br i1 %diff.check, label %.lr.ph74.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check96 = icmp samesign ult i64 %i.ba, 32
  br i1 %min.iters.check96, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bd = and i64 %i.ba, 24
  %n.vec = and i64 %i.ba, 4294967264              ; 4 uses
  %i.be = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bf = or disjoint i64 %index, 1               ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load = load <16 x i8>, ptr %i.bg, align 1, !tbaa !52
  %wide.load97 = load <16 x i8>, ptr %i.bh, align 1, !tbaa !52
  %i.bi = add <16 x i8> %wide.load, splat (i8 48)
  %i.bj = add <16 x i8> %wide.load97, splat (i8 48)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bf ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 18
  store <16 x i8> %i.bi, ptr %i.bl, align 1, !tbaa !52
  store <16 x i8> %i.bj, ptr %i.bm, align 1, !tbaa !52
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !1075

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bd, 0
  br i1 %min.epilog.iters.check, label %.lr.ph74.preheader, label %vec.epilog.ph, !prof !1079

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec98 = and i64 %i.ba, 4294967288            ; 3 uses
  %i.bo = or disjoint i64 %n.vec98, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index99 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next101, %vec.epilog.vector.body ] ; 2 uses
  %i.bp = or disjoint i64 %index99, 1             ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0, i64 %i.bp
  %wide.load100 = load <8 x i8>, ptr %i.bq, align 1, !tbaa !52
  %i.br = add <8 x i8> %wide.load100, splat (i8 48)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bp
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  store <8 x i8> %i.br, ptr %i.bt, align 1, !tbaa !52
  %index.next101 = add nuw i64 %index99, 8        ; 2 uses
  %i.bu = icmp eq i64 %index.next101, %n.vec98
  br i1 %i.bu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1076

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n102 = icmp eq i64 %i.ba, %n.vec98
  br i1 %cmp.n102, label %._crit_edge, label %.lr.ph74.preheader

.lr.ph74.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv79.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.be, %vec.epilog.iter.check ], [ %i.bo, %vec.epilog.middle.block ] ; 4 uses
  %i.bv = sub nsw i64 %wide.trip.count82, %indvars.iv79.ph
  %xtraiter = and i64 %i.bv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph74.prol.loopexit, label %.lr.ph74.prol

.lr.ph74.prol:                                    ; preds = %.lr.ph74.preheader, %.lr.ph74.prol
  %indvars.iv79.prol = phi i64 [ %indvars.iv.next80.prol, %.lr.ph74.prol ], [ %indvars.iv79.ph, %.lr.ph74.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph74.prol ], [ 0, %.lr.ph74.preheader ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.0, i64 %indvars.iv79.prol
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !52
  %i.by = add i8 %i.bx, 48
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv79.prol
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  store i8 %i.by, ptr %i.ca, align 1, !tbaa !52
  %indvars.iv.next80.prol = add nuw nsw i64 %indvars.iv79.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph74.prol.loopexit, label %.lr.ph74.prol, !llvm.loop !1077

.lr.ph74.prol.loopexit:                           ; preds = %.lr.ph74.prol, %.lr.ph74.preheader
  %indvars.iv79.unr = phi i64 [ %indvars.iv79.ph, %.lr.ph74.preheader ], [ %indvars.iv.next80.prol, %.lr.ph74.prol ]
  %i.cb = sub nsw i64 %indvars.iv79.ph, %wide.trip.count82
  %i.cc = icmp ugt i64 %i.cb, -4
  br i1 %i.cc, label %._crit_edge, label %.lr.ph74

bb.p:                                             ; preds = %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ah, i64 3
  store i8 48, ptr %i.cd, align 1, !tbaa !52
  br label %bb.q

.lr.ph74:                                         ; preds = %.lr.ph74.prol.loopexit, %.lr.ph74
  %indvars.iv79 = phi i64 [ %indvars.iv.next80.3, %.lr.ph74 ], [ %indvars.iv79.unr, %.lr.ph74.prol.loopexit ] ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0, i64 %indvars.iv79
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !52
  %i.cg = add i8 %i.cf, 48
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv79
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  store i8 %i.cg, ptr %i.ci, align 1, !tbaa !52
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0, i64 %indvars.iv.next80
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !52
  %i.cl = add i8 %i.ck, 48
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv.next80
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  store i8 %i.cl, ptr %i.cn, align 1, !tbaa !52
  %indvars.iv.next80.1 = add nuw nsw i64 %indvars.iv79, 2 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0, i64 %indvars.iv.next80.1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !52
  %i.cq = add i8 %i.cp, 48
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv.next80.1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  store i8 %i.cq, ptr %i.cs, align 1, !tbaa !52
  %indvars.iv.next80.2 = add nuw nsw i64 %indvars.iv79, 3 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0, i64 %indvars.iv.next80.2
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !52
  %i.cv = add i8 %i.cu, 48
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv.next80.2
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  store i8 %i.cv, ptr %i.cx, align 1, !tbaa !52
  %indvars.iv.next80.3 = add nuw nsw i64 %indvars.iv79, 4 ; 2 uses
  %exitcond83.not.3 = icmp eq i64 %indvars.iv.next80.3, %wide.trip.count82
  br i1 %exitcond83.not.3, label %._crit_edge, label %.lr.ph74, !llvm.loop !1078

._crit_edge:                                      ; preds = %.lr.ph74.prol.loopexit, %.lr.ph74, %middle.block, %vec.epilog.middle.block, %.preheader
  %i.cy = add nsw i32 %.1, 2
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.p
  %.160 = phi i32 [ 4, %bb.p ], [ %i.cy, %._crit_edge ] ; 2 uses
  %i.cz = add i32 %.056, %.1
  %i.da = add nsw i32 %.1, 20
  %i.db = sub i32 %i.da, %.160
  %i.dc = sext i32 %.160 to i64
  %i.dd = getelementptr inbounds i8, ptr %i.ah, i64 %i.dc
  %i.de = tail call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %i.db, ptr noundef nonnull %i.dd, ptr noundef nonnull @.str.305, i32 noundef %i.cz) #45 ; 0 uses
  tail call void @sqlite3_result_text(ptr noundef %0, ptr noundef nonnull %i.ah, i32 noundef -1, ptr noundef nonnull @sqlite3_free) #45
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.k, %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @decimal_result(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1) unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !140
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @sqlite3_result_error_nomem(ptr noundef %0) #45
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = load i8, ptr %i.d, align 2, !tbaa !141
  %.not53 = icmp eq i8 %i.e, 0
  br i1 %.not53, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @sqlite3_result_null(ptr noundef %0) #45
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !138
  %i.h = sext i32 %i.g to i64
  %i.i = add nsw i64 %i.h, 4
  %i.j = tail call ptr @sqlite3_malloc64(i64 noundef %i.i) #45 ; 10 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @sqlite3_result_error_nomem(ptr noundef %0) #45
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.l = load i32, ptr %i.f, align 4, !tbaa !138  ; 3 uses
  switch i32 %i.l, label %bb.j [
    i32 0, label %.thread
    i32 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !139
  %i.o = load i8, ptr %i.n, align 1, !tbaa !52
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.i, %bb.h
  store i8 0, ptr %1, align 8, !tbaa !142
  br label %bb.l

bb.j:                                             ; preds = %bb.h, %bb.i
  %.pr = load i8, ptr %1, align 8, !tbaa !142
  %.not54 = icmp eq i8 %.pr, 0
  br i1 %.not54, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 45, ptr %i.j, align 1, !tbaa !52
  %.pre = load i32, ptr %i.f, align 4, !tbaa !138
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k, %bb.j
  %i.q = phi i32 [ %.pre, %bb.k ], [ %i.l, %bb.j ], [ %i.l, %.thread ] ; 2 uses
  %.047 = phi i32 [ 1, %bb.k ], [ 0, %bb.j ], [ 0, %.thread ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !143  ; 2 uses
  %i.t = sub nsw i32 %i.q, %i.s                   ; 3 uses
  %i.u = icmp slt i32 %i.t, 1
  br i1 %i.u, label %.critedge.thread99, label %bb.m

.critedge.thread99:                               ; preds = %bb.l
  %i.v = add nuw nsw i32 %.047, 1
  %i.w = zext nneg i32 %.047 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.w
  store i8 48, ptr %i.x, align 1, !tbaa !52
  br label %._crit_edge

bb.m:                                             ; preds = %bb.l
  %.not105 = icmp eq i32 %i.t, 1
  br i1 %.not105, label %.lr.ph66, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !139
  %i.aa = xor i32 %i.s, -1
  %i.ab = add i32 %i.q, %i.aa                     ; 2 uses
  %wide.trip.count = zext i32 %i.ab to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 4 uses
  %.058 = phi i32 [ %i.t, %.lr.ph ], [ %i.af, %bb.o ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !52
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = add nsw i32 %.058, -1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph66.loopexit, label %bb.n, !llvm.loop !1080

.critedge:                                        ; preds = %bb.n
  %i.ag = icmp sgt i32 %.058, 0
  br i1 %i.ag, label %.lr.ph66, label %._crit_edge

.lr.ph66.loopexit:                                ; preds = %bb.o
  %i.ah = zext i32 %i.ab to i64
  br label %.lr.ph66
end_hunk_0
begin_hunk_1_@dotCmdImport:bb.a
  %.in = phi ptr [ @stderr, %bb.cr ], [ %spec.select339, %bb.cs ]
  %i.iz = load ptr, ptr %.in, align 8, !tbaa !122
  %i.ja = load ptr, ptr %1, align 8, !tbaa !677
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.iz, ptr noundef nonnull @.str.1720, ptr noundef %i.ja, ptr noundef nonnull %i.is)
  call void @sqlite3_free(ptr noundef nonnull %i.is) #45
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cq
  %i.jb = icmp eq ptr %i.ir, null
  br i1 %i.jb, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.jc = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.jd = load ptr, ptr %1, align 8, !tbaa !677
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.jc, ptr noundef nonnull @.str.1721, ptr noundef %i.jd)
  call fastcc void @import_cleanup(ptr noundef %1)
  call void @sqlite3_free(ptr noundef %i.ik) #45
  br label %.critedge336

bb.cw:                                            ; preds = %bb.cu
  %i.je = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1722, ptr noundef %i.ik, ptr noundef nonnull %i.ir) #45 ; 6 uses
  %i.jf = icmp eq ptr %i.je, null
  br i1 %i.jf, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  call fastcc void @import_cleanup(ptr noundef %1)
  call fastcc void @shell_out_of_memory()
  unreachable

bb.cy:                                            ; preds = %bb.cw
  br i1 %i.fy, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !351
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.jh, ptr noundef nonnull @.str.253, ptr noundef nonnull %i.je)
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.ji = load ptr, ptr %0, align 8, !tbaa !389
  %i.jj = call i32 @sqlite3_exec(ptr noundef %i.ji, ptr noundef nonnull %i.je, ptr noundef null, ptr noundef null, ptr noundef null) #45
  %.not312 = icmp eq i32 %i.jj, 0
  br i1 %.not312, label %.critedge334, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.jk = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.jl = load ptr, ptr %0, align 8, !tbaa !389
  %i.jm = call ptr @sqlite3_errmsg(ptr noundef %i.jl) #45
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.jk, ptr noundef nonnull @.str.1723, ptr noundef nonnull %i.je, ptr noundef %i.jm)
  call void @sqlite3_free(ptr noundef nonnull %i.je) #45
  call fastcc void @import_cleanup(ptr noundef %1)
  br label %.critedge336

.critedge334:                                     ; preds = %bb.da
  call void @sqlite3_free(ptr noundef nonnull %i.je) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #45
  br label %bb.dc

bb.dc:                                            ; preds = %.critedge334, %bb.cm, %import_append_char.exit
  %i.jn = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1724, ptr noundef nonnull %.2283, ptr noundef %.2280) #45 ; 3 uses
  %i.jo = icmp eq ptr %i.jn, null
  br i1 %i.jo, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  call fastcc void @import_cleanup(ptr noundef %1)
  call fastcc void @shell_out_of_memory()
  unreachable

bb.de:                                            ; preds = %bb.dc
  %i.jp = load ptr, ptr %0, align 8, !tbaa !389
  %i.jq = call i32 @sqlite3_prepare_v2(ptr noundef %i.jp, ptr noundef nonnull %i.jn, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #45
  call void @sqlite3_free(ptr noundef nonnull %i.jn) #45
  %.not313 = icmp eq i32 %i.jq, 0
  %i.jr = load ptr, ptr %i.a, align 8, !tbaa !109 ; 3 uses
  br i1 %.not313, label %bb.dm, label %bb.df

bb.df:                                            ; preds = %bb.de
  %.not325 = icmp eq ptr %i.jr, null
  br i1 %.not325, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.js = call i32 @sqlite3_finalize(ptr noundef nonnull %i.jr) #45 ; 0 uses
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.jt = load ptr, ptr %0, align 8, !tbaa !389
  %i.ju = call ptr @sqlite3_errmsg(ptr noundef %i.jt) #45
  %i.jv = load ptr, ptr @stderr, align 8, !tbaa !122
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.jv, ptr noundef nonnull @.str.1088, ptr noundef %i.ju)
  %i.jw = load ptr, ptr %i.fo, align 8, !tbaa !679 ; 2 uses
  %.not.i372 = icmp eq ptr %i.jw, null
  br i1 %.not.i372, label %bb.dk, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !680 ; 2 uses
  %.not12.i373 = icmp eq ptr %i.jy, null
  br i1 %.not12.i373, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.jz = call i32 %i.jy(ptr noundef nonnull %i.jw) #45, !inline_history !1253 ; 0 uses
  store ptr null, ptr %i.fo, align 8, !tbaa !679
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di, %bb.dh
  %i.ka = load ptr, ptr %i.ha, align 8, !tbaa !682
  call void @sqlite3_free(ptr noundef %i.ka) #45
  store ptr null, ptr %i.ha, align 8, !tbaa !682
  %i.kb = load ptr, ptr %i.fq, align 8, !tbaa !681 ; 2 uses
  %.not13.i374 = icmp eq ptr %i.kb, null
  br i1 %.not13.i374, label %.critedge, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  call void @sqlite3_free(ptr noundef nonnull %i.kb) #45
  br label %.critedge

bb.dm:                                            ; preds = %bb.de
  %i.kc = call i32 @sqlite3_step(ptr noundef %i.jr) #45
  %i.kd = icmp eq i32 %i.kc, 100
  br i1 %i.kd, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.ke = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.kf = call i32 @sqlite3_column_int(ptr noundef %i.ke, i32 noundef 0) #45
  br label %bb.do

bb.do:                                            ; preds = %bb.dm, %bb.dn
  %.0274 = phi i32 [ %i.kf, %bb.dn ], [ 0, %bb.dm ] ; 16 uses
  %i.kg = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.kh = call i32 @sqlite3_finalize(ptr noundef %i.kg) #45 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !109
  %i.ki = icmp eq i32 %.0274, 0
  br i1 %i.ki, label %.critedge, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %.not314 = icmp eq ptr %.2280, null             ; 2 uses
  br i1 %.not314, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.kj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.2280) #46
  %i.kk = shl i64 %i.kj, 1
  %i.kl = add i64 %i.kk, 66
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dp, %bb.dq
  %i.km = phi i64 [ %i.kl, %bb.dq ], [ 64, %bb.dp ]
  %i.kn = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.2283) #46
  %i.ko = shl i64 %i.kn, 1
  %i.kp = shl nsw i32 %.0274, 1
  %i.kq = sext i32 %i.kp to i64
  %i.kr = add nsw i64 %i.kq, 2
  %i.ks = add i64 %i.kr, %i.km
  %i.kt = add i64 %i.ks, %i.ko                    ; 2 uses
  %i.ku = call ptr @sqlite3_malloc64(i64 noundef %i.kt) #45 ; 12 uses
  %i.kv = icmp eq ptr %i.ku, null
  br i1 %i.kv, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  call fastcc void @import_cleanup(ptr noundef %1)
  call fastcc void @shell_out_of_memory()
  unreachable

bb.dt:                                            ; preds = %bb.dr
  %i.kw = trunc i64 %i.kt to i32                  ; 2 uses
  br i1 %.not314, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.kx = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %i.kw, ptr noundef nonnull %i.ku, ptr noundef nonnull @.str.1725, ptr noundef nonnull %.2280, ptr noundef nonnull %.2283) #45 ; 0 uses
  br label %strlen30.exit377

bb.dv:                                            ; preds = %bb.dt
  %i.ky = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %i.kw, ptr noundef nonnull %i.ku, ptr noundef nonnull @.str.1726, ptr noundef nonnull %.2283) #45 ; 0 uses
  br label %strlen30.exit377

strlen30.exit377:                                 ; preds = %bb.du, %bb.dv
  %i.kz = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ku) #46
  %i.la = call i64 @llvm.umin.i64(i64 %i.kz, i64 1073741823) ; 6 uses
  %i.lb = icmp sgt i32 %.0274, 1
  br i1 %i.lb, label %iter.check, label %._crit_edge460

iter.check:                                       ; preds = %strlen30.exit377
  %i.lc = add nsw i32 %.0274, -1
  %i.ld = zext i32 %i.lc to i64                   ; 5 uses
  %min.iters.check = icmp ult i32 %.0274, 5
  br i1 %min.iters.check, label %.lr.ph459.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check563 = icmp ult i32 %.0274, 17
  br i1 %min.iters.check563, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.le = and i64 %i.ld, 12
  %n.vec = and i64 %i.ld, 4294967280              ; 5 uses
  %i.lf = shl nuw nsw i64 %n.vec, 1
  %i.lg = add nuw nsw i64 %i.la, %i.lf            ; 2 uses
  %i.lh = trunc nuw i64 %n.vec to i32
  %i.li = or disjoint i32 %i.lh, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lj = shl nuw i64 %index, 1
  %i.lk = add nuw i64 %i.la, %i.lj                ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.lk
  %i.lm = getelementptr i8, ptr %i.ku, i64 %i.lk
  %i.ln = getelementptr i8, ptr %i.lm, i64 16
  store <16 x i8> <i8 44, i8 63, i8 44, i8 63, i8 44, i8 63, i8 44, i8 63, i8 44, i8 63, i8 44, i8 63, i8 44, i8 63, i8 44, i8 63>, ptr %i.ll, align 1, !tbaa !52
  store <16 x i8> <i8 44, i8 63, i8 44, i8 63, i8 44, i8 63, i8 44, i8 63, i8 44, i8 63, i8 44, i8 63, i8 44, i8 63, i8 44, i8 63>, ptr %i.ln, align 1, !tbaa !52
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.lo = icmp eq i64 %index.next, %n.vec
  br i1 %i.lo, label %middle.block, label %vector.body, !llvm.loop !1246

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ld
  br i1 %cmp.n, label %._crit_edge460, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.le, 0
  br i1 %min.epilog.iters.check, label %.lr.ph459.preheader, label %vec.epilog.ph, !prof !686

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec565 = and i64 %i.ld, 4294967292           ; 4 uses
  %i.lp = shl nuw nsw i64 %n.vec565, 1
  %i.lq = add nuw nsw i64 %i.la, %i.lp            ; 2 uses
  %i.lr = trunc nuw i64 %n.vec565 to i32
  %i.ls = or disjoint i32 %i.lr, 1
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.la
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index566 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next567, %vec.epilog.vector.body ] ; 2 uses
  %i.lu = shl nuw i64 %index566, 1
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.lu
  store <8 x i8> <i8 44, i8 63, i8 44, i8 63, i8 44, i8 63, i8 44, i8 63>, ptr %i.lv, align 1, !tbaa !52
  %index.next567 = add nuw i64 %index566, 4       ; 2 uses
  %i.lw = icmp eq i64 %index.next567, %n.vec565
  br i1 %i.lw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1247

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n568 = icmp eq i64 %n.vec565, %i.ld
  br i1 %cmp.n568, label %._crit_edge460, label %.lr.ph459.preheader

.lr.ph459.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.la, %iter.check ], [ %i.lg, %vec.epilog.iter.check ], [ %i.lq, %vec.epilog.middle.block ]
  %.3271457.ph = phi i32 [ 1, %iter.check ], [ %i.li, %vec.epilog.iter.check ], [ %i.ls, %vec.epilog.middle.block ]
  br label %.lr.ph459

.lr.ph459:                                        ; preds = %.lr.ph459.preheader, %.lr.ph459
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph459 ], [ %indvars.iv.ph, %.lr.ph459.preheader ] ; 2 uses
  %.3271457 = phi i32 [ %i.lz, %.lr.ph459 ], [ %.3271457.ph, %.lr.ph459.preheader ]
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ku, i64 %indvars.iv ; 2 uses
  store i8 44, ptr %i.lx, align 1, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ly = getelementptr i8, ptr %i.lx, i64 1
  store i8 63, ptr %i.ly, align 1, !tbaa !52
  %i.lz = add nuw nsw i32 %.3271457, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.lz, %.0274
  br i1 %exitcond.not, label %._crit_edge460, label %.lr.ph459, !llvm.loop !1248

._crit_edge460:                                   ; preds = %.lr.ph459, %middle.block, %vec.epilog.middle.block, %strlen30.exit377
  %.0267.lcssa.in = phi i64 [ %i.la, %strlen30.exit377 ], [ %i.lq, %vec.epilog.middle.block ], [ %i.lg, %middle.block ], [ %indvars.iv.next, %.lr.ph459 ]
  %sext = shl i64 %.0267.lcssa.in, 32
  %i.ma = ashr exact i64 %sext, 32
  %i.mb = getelementptr inbounds i8, ptr %i.ku, i64 %i.ma ; 2 uses
  store i8 41, ptr %i.mb, align 1, !tbaa !52
  %i.mc = getelementptr i8, ptr %i.mb, i64 1
  store i8 0, ptr %i.mc, align 1, !tbaa !52
  %i.md = icmp sgt i32 %.2262, 1
  br i1 %i.md, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %._crit_edge460
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !351
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.mf, ptr noundef nonnull @.str.1727, ptr noundef nonnull %i.ku)
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %._crit_edge460
  %i.mg = load ptr, ptr %0, align 8, !tbaa !389
  %i.mh = call i32 @sqlite3_prepare_v2(ptr noundef %i.mg, ptr noundef nonnull %i.ku, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #45
  call void @sqlite3_free(ptr noundef nonnull %i.ku) #45
  %.not315 = icmp eq i32 %i.mh, 0
  %i.mi = load ptr, ptr %0, align 8, !tbaa !389   ; 2 uses
  br i1 %.not315, label %bb.eb, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call fastcc void @shellDatabaseError(ptr noundef %i.mi)
  %i.mj = load ptr, ptr %i.a, align 8, !tbaa !109 ; 2 uses
  %.not324 = icmp eq ptr %i.mj, null
  br i1 %.not324, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.mk = call i32 @sqlite3_finalize(ptr noundef nonnull %i.mj) #45 ; 0 uses
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  call fastcc void @import_cleanup(ptr noundef %1)
  br label %.critedge

bb.eb:                                            ; preds = %bb.dx
  %i.ml = call i32 @sqlite3_get_autocommit(ptr noundef %i.mi) #45
  %.not316 = icmp eq i32 %i.ml, 0                 ; 2 uses
  br i1 %.not316, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.mm = load ptr, ptr %0, align 8, !tbaa !389
  %i.mn = call i32 @sqlite3_exec(ptr noundef %i.mm, ptr noundef nonnull @.str.678, ptr noundef null, ptr noundef null, ptr noundef null) #45 ; 0 uses
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %i.mo = icmp sgt i32 %.0274, 0
  %i.mp = icmp eq ptr %.3266, @csv_read_one_field
  %i.mq = add nsw i32 %.0274, -1                  ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 3 uses
  %i.mu = add i32 %.0274, 1
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.ed
  %i.mv = load i32, ptr %i.dt, align 8, !tbaa !678 ; 3 uses
  br i1 %i.mo, label %.lr.ph469, label %.thread383

.lr.ph469:                                        ; preds = %.backedge, %.loopexit
  %.4272467 = phi i32 [ %i.oa, %.loopexit ], [ 0, %.backedge ] ; 8 uses
  %i.mw = call ptr %.3266(ptr noundef nonnull %1) #45, !callees !1254 ; 4 uses
  %i.mx = icmp eq ptr %i.mw, null                 ; 3 uses
  %i.my = icmp eq i32 %.4272467, 0                ; 4 uses
  %or.cond8 = and i1 %i.my, %i.mx
  br i1 %or.cond8, label %.thread383, label %bb.ee

bb.ee:                                            ; preds = %.lr.ph469
  %i.mz = load i8, ptr %i.j, align 2, !tbaa !426
  %i.na = icmp eq i8 %i.mz, 0
  br i1 %i.na, label %bb.ef, label %bb.ei

bb.ef:                                            ; preds = %bb.ee
  br i1 %i.mx, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.nb = load i8, ptr %i.mw, align 1, !tbaa !52
  %i.nc = icmp eq i8 %i.nb, 0
  %or.cond10 = and i1 %i.my, %i.nc
  br i1 %or.cond10, label %.thread383, label %.thread381

bb.eh:                                            ; preds = %bb.ef
  br i1 %i.my, label %.thread383, label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.ee
  %or.cond13 = select i1 %i.mx, i1 %i.mp, i1 false
  br i1 %or.cond13, label %bb.ej, label %.thread381

bb.ej:                                            ; preds = %bb.ei
  %i.nd = icmp eq i32 %.4272467, %i.mq
  %i.ne = icmp sgt i32 %.4272467, 0
  %or.cond16 = and i1 %i.nd, %i.ne
  %spec.select337 = select i1 %or.cond16, ptr @.str.48, ptr null
  br label %.thread381

.thread381:                                       ; preds = %bb.eg, %bb.ej, %bb.ei
  %.0 = phi ptr [ %i.mw, %bb.ei ], [ %spec.select337, %bb.ej ], [ %i.mw, %bb.eg ] ; 5 uses
  %i.nf = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.ng = add nuw nsw i32 %.4272467, 1            ; 2 uses
  %i.nh = call i32 @sqlite3_bind_text(ptr noundef %i.nf, i32 noundef %i.ng, ptr noundef %.0, i32 noundef -1, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #45 ; 0 uses
  %i.ni = icmp slt i32 %.4272467, %i.mq
  br i1 %i.ni, label %bb.ek, label %.loopexit

bb.ek:                                            ; preds = %.thread381
  %i.nj = load i32, ptr %i.mr, align 8, !tbaa !685
  %i.nk = load i32, ptr %i.cx, align 4, !tbaa !673
  %.not317 = icmp eq i32 %i.nj, %i.nk
  br i1 %.not317, label %.loopexit, label %bb.el

bb.el:                                            ; preds = %bb.ek
  br i1 %i.my, label %sub_0395, label %.tail398.thread

sub_0395:                                         ; preds = %bb.el
  %i.nl = load i8, ptr %.0, align 1
  switch i8 %i.nl, label %.tail398.thread [
    i8 10, label %.tail394
    i8 13, label %sub_1400
  ]

.tail394:                                         ; preds = %sub_0395
  %i.nm = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.nn = load i8, ptr %i.nm, align 1
  %i.no = icmp eq i8 %i.nn, 0
  br i1 %i.no, label %.thread383, label %.tail398.thread

sub_1400:                                         ; preds = %sub_0395
  %i.np = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.nq = load i8, ptr %i.np, align 1
  %.not483 = icmp eq i8 %i.nq, 10
  br i1 %.not483, label %.tail398, label %.tail398.thread

.tail398:                                         ; preds = %sub_1400
  %i.nr = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.ns = load i8, ptr %i.nr, align 1
  %i.nt = icmp eq i8 %i.ns, 0
  br i1 %i.nt, label %.thread383, label %.tail398.thread
end_hunk_1
begin_hunk_2_@tryToCloneSchema:bb.a
  call void @sqlite3_str_appendall(ptr noundef nonnull %i.w, ptr noundef nonnull @.str.1407) #45
  br label %.backedge68.backedge

bb.k:                                             ; preds = %bb.i
  %i.x = load ptr, ptr @stdout, align 8, !tbaa !122
  %fwrite = call i64 @fwrite(ptr nonnull @.str.1407, i64 5, i64 1, ptr %i.x) ; 0 uses
  br label %.backedge68.backedge

.backedge68.backedge:                             ; preds = %bb.k, %bb.j, %bb.c
  br label %.backedge68, !llvm.loop !1298

bb.l:                                             ; preds = %.backedge68
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.z = call i32 @sqlite3_finalize(ptr noundef %i.y) #45 ; 0 uses
  call void @sqlite3_free(ptr noundef nonnull %i.c) #45
  %i.aa = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1408, ptr noundef %2) #45 ; 5 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.m, label %shell_check_oom.exit60

bb.m:                                             ; preds = %bb.l
  call fastcc void @shell_out_of_memory()
  unreachable

shell_check_oom.exit60:                           ; preds = %bb.l
  %i.ac = load ptr, ptr %0, align 8, !tbaa !389
  %i.ad = call i32 @sqlite3_prepare_v2(ptr noundef %i.ac, ptr noundef nonnull %i.aa, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #45
  %.not54 = icmp eq i32 %i.ad, 0
  br i1 %.not54, label %.preheader, label %.loopexit.sink.split

.preheader:                                       ; preds = %shell_check_oom.exit60
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.af = call i32 @sqlite3_step(ptr noundef %i.ae) #45
  %i.ag = icmp eq i32 %i.af, 100
  br i1 %i.ag, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.backedge
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.ai = call ptr @sqlite3_column_text(ptr noundef %i.ah, i32 noundef 0) #45 ; 4 uses
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.ak = call ptr @sqlite3_column_text(ptr noundef %i.aj, i32 noundef 1) #45 ; 3 uses
  %i.al = icmp eq ptr %i.ai, null
  %i.am = icmp eq ptr %i.ak, null
  %or.cond3 = select i1 %i.al, i1 true, i1 %i.am
  br i1 %or.cond3, label %.backedge, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.an = call i32 @sqlite3_stricmp(ptr noundef nonnull %i.ai, ptr noundef nonnull @.str.722) #45
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.backedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = load ptr, ptr @stdout, align 8, !tbaa !122
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ap, ptr noundef nonnull @.str.1405, ptr noundef nonnull %i.ai)
  %i.aq = load ptr, ptr @stdout, align 8, !tbaa !122
  %i.ar = call i32 @fflush(ptr noundef %i.aq)     ; 0 uses
  %i.as = call i32 @sqlite3_exec(ptr noundef %1, ptr noundef nonnull %i.ak, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.b) #45 ; 0 uses
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !88  ; 2 uses
  %.not55 = icmp eq ptr %i.at, null
  br i1 %.not55, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = load ptr, ptr @stderr, align 8, !tbaa !122
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.au, ptr noundef nonnull @.str.1406, ptr noundef nonnull %i.at, ptr noundef nonnull %i.ak)
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !88
  call void @sqlite3_free(ptr noundef %i.av) #45
  store ptr null, ptr %i.b, align 8, !tbaa !88
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %.not59, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void %3(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.ai) #45, !callees !1300
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.aw = load ptr, ptr @cli_output_capture, align 8, !tbaa !335 ; 2 uses
  %.not.i61 = icmp eq ptr %i.aw, null
  br i1 %.not.i61, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @sqlite3_str_appendall(ptr noundef nonnull %i.aw, ptr noundef nonnull @.str.1407) #45
  br label %.backedge

bb.u:                                             ; preds = %bb.s
  %i.ax = load ptr, ptr @stdout, align 8, !tbaa !122
  %fwrite65 = call i64 @fwrite(ptr nonnull @.str.1407, i64 5, i64 1, ptr %i.ax) ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.u, %bb.t, %.lr.ph, %bb.n
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.az = call i32 @sqlite3_step(ptr noundef %i.ay) #45
  %i.ba = icmp eq i32 %i.az, 100
  br i1 %i.ba, label %.lr.ph, label %.loopexit, !llvm.loop !1299

.loopexit.sink.split:                             ; preds = %shell_check_oom.exit60, %shell_check_oom.exit
  %.sink84 = phi ptr [ %i.c, %shell_check_oom.exit ], [ %i.aa, %shell_check_oom.exit60 ] ; 2 uses
  %i.bb = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.bc = load ptr, ptr %0, align 8, !tbaa !389
  %i.bd = call i32 @sqlite3_extended_errcode(ptr noundef %i.bc) #45
  %i.be = load ptr, ptr %0, align 8, !tbaa !389
  %i.bf = call ptr @sqlite3_errmsg(ptr noundef %i.be) #45
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.bb, ptr noundef nonnull @.str.1404, i32 noundef %i.bd, ptr noundef %i.bf, ptr noundef nonnull %.sink84)
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge68, %.backedge, %.loopexit.sink.split, %.preheader
  %.0 = phi ptr [ %.sink84, %.loopexit.sink.split ], [ %i.aa, %.backedge ], [ %i.aa, %.preheader ], [ %i.c, %.backedge68 ]
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.bh = call i32 @sqlite3_finalize(ptr noundef %i.bg) #45 ; 0 uses
  call void @sqlite3_free(ptr noundef nonnull %.0) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tryToCloneData(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 24 uses
  %i.b = alloca ptr, align 8                      ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  store ptr null, ptr %i.a, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  store ptr null, ptr %i.b, align 8, !tbaa !109
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %strlen30.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #46
  %i.e = tail call i64 @llvm.umin.i64(i64 %i.d, i64 1073741823)
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = add nuw nsw i32 %i.f, 200
  br label %strlen30.exit

strlen30.exit:                                    ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.g, %bb.b ], [ 200, %bb.a ] ; 2 uses
  %i.h = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1409, ptr noundef %2) #45 ; 7 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %shell_check_oom.exit

bb.c:                                             ; preds = %strlen30.exit
  tail call fastcc void @shell_out_of_memory()
  unreachable

shell_check_oom.exit:                             ; preds = %strlen30.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !389
  %i.k = call i32 @sqlite3_prepare_v2(ptr noundef %i.j, ptr noundef nonnull %i.h, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #45
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %shell_check_oom.exit
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.m = load ptr, ptr %0, align 8, !tbaa !389
  %i.n = call i32 @sqlite3_extended_errcode(ptr noundef %i.m) #45
  %i.o = load ptr, ptr %0, align 8, !tbaa !389
  %i.p = call ptr @sqlite3_errmsg(ptr noundef %i.o) #45
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.l, ptr noundef nonnull @.str.1410, i32 noundef %i.n, ptr noundef %i.p, ptr noundef nonnull %i.h)
  br label %.loopexit

bb.e:                                             ; preds = %shell_check_oom.exit
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.r = call i32 @sqlite3_column_count(ptr noundef %i.q) #45 ; 9 uses
  %i.s = mul nsw i32 %i.r, 3
  %i.t = add nsw i32 %i.s, %.0.i
  %i.u = sext i32 %i.t to i64
  %i.v = call ptr @sqlite3_malloc64(i64 noundef %i.u) #45 ; 14 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.f, label %strlen30.exit79

bb.f:                                             ; preds = %bb.e
  call fastcc void @shell_out_of_memory()
  unreachable

strlen30.exit79:                                  ; preds = %bb.e
  %i.x = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %.0.i, ptr noundef nonnull %i.v, ptr noundef nonnull @.str.1411, ptr noundef %2) #45 ; 0 uses
  %i.y = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.v) #46
  %i.z = call i64 @llvm.umin.i64(i64 %i.y, i64 1073741823) ; 6 uses
  %i.aa = icmp sgt i32 %i.r, 1
  br i1 %i.aa, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %strlen30.exit79
  %i.ab = add nsw i32 %i.r, -1
  %i.ac = zext i32 %i.ab to i64                   ; 5 uses
  %min.iters.check = icmp ult i32 %i.r, 5
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check120 = icmp ult i32 %i.r, 17
  br i1 %min.iters.check120, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ad = and i64 %i.ac, 12
  %n.vec = and i64 %i.ac, 4294967280              ; 5 uses
  %i.ae = shl nuw nsw i64 %n.vec, 1
  %i.af = add nuw nsw i64 %i.z, %i.ae             ; 2 uses
  %i.ag = trunc nuw i64 %n.vec to i32
  %i.ah = or disjoint i32 %i.ag, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl nuw i64 %index, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <8 x i16> splat (i16 16172), ptr %i.ak, align 1
  store <8 x i16> splat (i16 16172), ptr %i.al, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !1301

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ac
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !686

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec122 = and i64 %i.ac, 4294967292           ; 4 uses
  %i.an = shl nuw nsw i64 %n.vec122, 1
  %i.ao = add nuw nsw i64 %i.z, %i.an             ; 2 uses
  %i.ap = trunc nuw i64 %n.vec122 to i32
  %i.aq = or disjoint i32 %i.ap, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.z
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index123 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next124, %vec.epilog.vector.body ] ; 2 uses
  %i.as = shl nuw i64 %index123, 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as
  store <4 x i16> splat (i16 16172), ptr %i.at, align 1
  %index.next124 = add nuw i64 %index123, 4       ; 2 uses
  %i.au = icmp eq i64 %index.next124, %n.vec122
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1302

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n125 = icmp eq i64 %n.vec122, %i.ac
  br i1 %cmp.n125, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.z, %iter.check ], [ %i.af, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  %.06790.ph = phi i32 [ 1, %iter.check ], [ %i.ah, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.06790 = phi i32 [ %i.aw, %.lr.ph ], [ %.06790.ph, %.lr.ph.preheader ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv
  store i16 16172, ptr %i.av, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.aw = add nuw nsw i32 %.06790, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.aw, %i.r
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1303

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %strlen30.exit79
  %.068.lcssa.in = phi i64 [ %i.z, %strlen30.exit79 ], [ %i.ao, %vec.epilog.middle.block ], [ %i.af, %middle.block ], [ %indvars.iv.next, %.lr.ph ]
  %i.ax = and i64 %.068.lcssa.in, 4294967295
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ay, ptr noundef nonnull align 1 dereferenceable(3) @.str.1413, i64 3, i1 false)
  %i.az = call i32 @sqlite3_prepare_v2(ptr noundef %1, ptr noundef nonnull %i.v, i32 noundef -1, ptr noundef nonnull %i.b, ptr noundef null) #45
  %.not75 = icmp eq i32 %i.az, 0
  br i1 %.not75, label %.preheader82, label %bb.g

.preheader82:                                     ; preds = %._crit_edge
  %i.ba = icmp sgt i32 %i.r, 0                    ; 2 uses
  br label %bb.r

bb.g:                                             ; preds = %._crit_edge
  %i.bb = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.bc = call i32 @sqlite3_extended_errcode(ptr noundef %1) #45
  %i.bd = call ptr @sqlite3_errmsg(ptr noundef %1) #45
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.bb, ptr noundef nonnull @.str.1410, i32 noundef %i.bc, ptr noundef %i.bd, ptr noundef nonnull %i.v)
  br label %.loopexit

.preheader81.1:                                   ; preds = %shell_check_oom.exit80, %.preheader81.1.backedge
  %.1.1 = phi i32 [ %i.co, %.preheader81.1.backedge ], [ %.1, %shell_check_oom.exit80 ]
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.bf = call i32 @sqlite3_step(ptr noundef %i.be) #45
  switch i32 %i.bf, label %bb.q [
    i32 100, label %.preheader.1
    i32 101, label %.loopexit
  ]

.preheader.1:                                     ; preds = %.preheader81.1
  br i1 %i.ba, label %.lr.ph92.1, label %._crit_edge93.1

.lr.ph92.1:                                       ; preds = %.preheader.1, %bb.m
  %.16991.1 = phi i32 [ %.pre-phi, %bb.m ], [ 0, %.preheader.1 ] ; 12 uses
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.bh = call i32 @sqlite3_column_type(ptr noundef %i.bg, i32 noundef %.16991.1) #45
  switch i32 %i.bh, label %.lr.ph92.1._crit_edge [
    i32 5, label %bb.l
    i32 1, label %bb.k
    i32 2, label %bb.j
    i32 3, label %bb.i
    i32 4, label %bb.h
  ]

.lr.ph92.1._crit_edge:                            ; preds = %.lr.ph92.1
  %.pre = add nuw nsw i32 %.16991.1, 1
  br label %bb.m

bb.h:                                             ; preds = %.lr.ph92.1
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.bj = add nuw nsw i32 %.16991.1, 1            ; 2 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.bl = call ptr @sqlite3_column_blob(ptr noundef %i.bk, i32 noundef %.16991.1) #45
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.bn = call i32 @sqlite3_column_bytes(ptr noundef %i.bm, i32 noundef %.16991.1) #45
  %i.bo = call i32 @sqlite3_bind_blob(ptr noundef %i.bi, i32 noundef %i.bj, ptr noundef %i.bl, i32 noundef %i.bn, ptr noundef null) #45 ; 0 uses
  br label %bb.m

bb.i:                                             ; preds = %.lr.ph92.1
  %i.bp = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.bq = add nuw nsw i32 %.16991.1, 1            ; 2 uses
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.bs = call ptr @sqlite3_column_text(ptr noundef %i.br, i32 noundef %.16991.1) #45
  %i.bt = call i32 @sqlite3_bind_text(ptr noundef %i.bp, i32 noundef %i.bq, ptr noundef %i.bs, i32 noundef -1, ptr noundef null) #45 ; 0 uses
  br label %bb.m

bb.j:                                             ; preds = %.lr.ph92.1
  %i.bu = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.bv = add nuw nsw i32 %.16991.1, 1            ; 2 uses
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.bx = call double @sqlite3_column_double(ptr noundef %i.bw, i32 noundef %.16991.1) #45
  %i.by = call i32 @sqlite3_bind_double(ptr noundef %i.bu, i32 noundef %i.bv, double noundef %i.bx) #45 ; 0 uses
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph92.1
  %i.bz = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.ca = add nuw nsw i32 %.16991.1, 1            ; 2 uses
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.cc = call i64 @sqlite3_column_int64(ptr noundef %i.cb, i32 noundef %.16991.1) #45
  %i.cd = call i32 @sqlite3_bind_int64(ptr noundef %i.bz, i32 noundef %i.ca, i64 noundef %i.cc) #45 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph92.1
  %i.ce = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.cf = add nuw nsw i32 %.16991.1, 1            ; 2 uses
  %i.cg = call i32 @sqlite3_bind_null(ptr noundef %i.ce, i32 noundef %i.cf) #45 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph92.1._crit_edge, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.pre-phi = phi i32 [ %.pre, %.lr.ph92.1._crit_edge ], [ %i.cf, %bb.l ], [ %i.ca, %bb.k ], [ %i.bv, %bb.j ], [ %i.bq, %bb.i ], [ %i.bj, %bb.h ] ; 2 uses
  %exitcond105.1.not = icmp eq i32 %.pre-phi, %i.r
  br i1 %exitcond105.1.not, label %._crit_edge93.1, label %.lr.ph92.1, !llvm.loop !1304

._crit_edge93.1:                                  ; preds = %bb.m, %.preheader.1
  %i.ch = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.ci = call i32 @sqlite3_step(ptr noundef %i.ch) #45
  switch i32 %i.ci, label %bb.n [
    i32 101, label %bb.o
    i32 100, label %bb.o
    i32 0, label %bb.o
  ]

bb.n:                                             ; preds = %._crit_edge93.1
  %i.cj = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.ck = call i32 @sqlite3_extended_errcode(ptr noundef %1) #45
  %i.cl = call ptr @sqlite3_errmsg(ptr noundef %1) #45
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.cj, ptr noundef nonnull @.str.1414, i32 noundef %i.ck, ptr noundef %i.cl)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge93.1, %._crit_edge93.1, %._crit_edge93.1
  %i.cm = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.cn = call i32 @sqlite3_reset(ptr noundef %i.cm) #45 ; 0 uses
  %i.co = add nuw nsw i32 %.1.1, 1                ; 3 uses
  %i.cp = urem i32 %i.co, 10000
  %i.cq = udiv i32 %i.co, 10000
  %i.cr = icmp eq i32 %i.cp, 0
  br i1 %i.cr, label %bb.p, label %.preheader81.1.backedge

bb.p:                                             ; preds = %bb.o
  %i.cs = and i32 %i.cq, 3
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr @.str.1416, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !52
  %i.cw = sext i8 %i.cv to i32
  %i.cx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1415, i32 noundef %i.cw) ; 0 uses
  %i.cy = load ptr, ptr @stdout, align 8, !tbaa !122
  %i.cz = call i32 @fflush(ptr noundef %i.cy)     ; 0 uses
  br label %.preheader81.1.backedge

.preheader81.1.backedge:                          ; preds = %bb.p, %bb.o
  br label %.preheader81.1, !llvm.loop !1305

bb.q:                                             ; preds = %.preheader81.1
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.db = call i32 @sqlite3_finalize(ptr noundef %i.da) #45 ; 0 uses
  call void @sqlite3_free(ptr noundef nonnull %i.fe) #45
  %i.dc = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1417, ptr noundef %2) #45 ; 4 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.ac, label %shell_check_oom.exit80.1

shell_check_oom.exit80.1:                         ; preds = %bb.q
  %i.de = load ptr, ptr %0, align 8, !tbaa !389
  %i.df = call i32 @sqlite3_prepare_v2(ptr noundef %i.de, ptr noundef nonnull %i.dc, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #45
  %.not76.1 = icmp eq i32 %i.df, 0
end_hunk_2
