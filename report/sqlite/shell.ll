inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 119
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@hash_step_vformat:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ah
  %i.aj = sub i32 %i.d, %.1.i
  %i.ak = zext i32 %i.aj to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull readonly align 1 %i.ai, i64 %i.ak, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  ret void
}

declare double @sqlite3_column_double(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #31

; Function Attrs: nounwind uwtable
define internal fastcc ptr @decimal_new(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @sqlite3_value_type(ptr noundef %1) #45 ; 3 uses
  %.not = icmp eq i32 %2, 0
  %i.b = icmp ne i32 %i.a, 2
  %i.c = icmp ne i32 %i.a, 4
  %or.cond.not = and i1 %i.b, %i.c
  %i.d = select i1 %.not, i1 true, i1 %or.cond.not
  %.027 = select i1 %i.d, i32 %i.a, i32 3
  switch i32 %.027, label %bb.i [
    i32 3, label %bb.b
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.e = tail call ptr @sqlite3_value_text(ptr noundef %1) #45
  %i.f = tail call i32 @sqlite3_value_bytes(ptr noundef %1) #45
  %i.g = tail call fastcc ptr @decimalNewFromText(ptr noundef %i.e, i32 noundef %i.f) ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.i = tail call double @sqlite3_value_double(ptr noundef %1) #45
  %i.j = tail call fastcc ptr @decimalFromDouble(double noundef %i.i)
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.k = tail call i32 @sqlite3_value_bytes(ptr noundef %1) #45
  %.not32 = icmp eq i32 %i.k, 8
  br i1 %.not32, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @sqlite3_value_blob(ptr noundef %1) #45 ; 8 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !16
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !16
  %i.q = zext i8 %i.p to i64
  %i.r = shl nuw nsw i64 %i.n, 16
  %i.s = shl nuw nsw i64 %i.q, 8
  %i.t = or disjoint i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !16
  %i.w = zext i8 %i.v to i64
  %i.x = or disjoint i64 %i.t, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !16
  %i.aa = zext i8 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.x, 16
  %i.ac = shl nuw nsw i64 %i.aa, 8
  %i.ad = or disjoint i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !16
  %i.ag = zext i8 %i.af to i64
  %i.ah = or disjoint i64 %i.ad, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 5
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !16
  %i.ak = zext i8 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ah, 16
  %i.am = shl nuw nsw i64 %i.ak, 8
  %i.an = or disjoint i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !16
  %i.aq = zext i8 %i.ap to i64
  %i.ar = or disjoint i64 %i.an, %i.aq
  %i.as = shl nuw i64 %i.ar, 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 7
  %i.au = load i8, ptr %i.at, align 1, !tbaa !16
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
  %i.d = load i8, ptr %i.c, align 1, !tbaa !185
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @sqlite3_result_error_nomem(ptr noundef %0) #45
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.f = load i8, ptr %i.e, align 2, !tbaa !187
  %.not64 = icmp eq i8 %i.f, 0
  br i1 %.not64, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @sqlite3_result_null(ptr noundef %0) #45
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %2, i32 0) ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !180  ; 4 uses
  %i.i = icmp sgt i32 %i.h, %spec.store.select
  br i1 %i.i, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !182
  %i.l = zext nneg i32 %i.h to i64
  %i.m = zext nneg i32 %spec.store.select to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ %i.l, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.n = getelementptr i8, ptr %i.k, i64 %indvars.iv
  %i.o = getelementptr i8, ptr %i.n, i64 -1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !16
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.h, label %.critedge.loopexit.split.loop.exit89

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.r = icmp sgt i64 %indvars.iv.next, %i.m
  br i1 %i.r, label %bb.g, label %.critedge, !llvm.loop !857

.critedge.loopexit.split.loop.exit89:             ; preds = %bb.g
  %i.s = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %.critedge.loopexit.split.loop.exit89, %bb.f
  %.057.lcssa = phi i32 [ %i.h, %bb.f ], [ %i.s, %.critedge.loopexit.split.loop.exit89 ], [ %spec.store.select, %bb.h ] ; 5 uses
  %i.t = icmp sgt i32 %.057.lcssa, 0
  br i1 %i.t, label %.lr.ph69, label %.critedge2

.lr.ph69:                                         ; preds = %.critedge
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !182
  %wide.trip.count = zext nneg i32 %.057.lcssa to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph69, %bb.j
  %indvars.iv76 = phi i64 [ 0, %.lr.ph69 ], [ %indvars.iv.next77, %bb.j ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv76
  %i.x = load i8, ptr %i.w, align 1, !tbaa !16
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.j, label %.critedge2.loopexit.split.loop.exit91

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count
  br i1 %exitcond.not, label %.critedge2, label %bb.i, !llvm.loop !858

.critedge2.loopexit.split.loop.exit91:            ; preds = %bb.i
  %i.z = trunc nuw nsw i64 %indvars.iv76 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.j, %.critedge2.loopexit.split.loop.exit91, %.critedge
  %.058.lcssa = phi i32 [ 0, %.critedge ], [ %i.z, %.critedge2.loopexit.split.loop.exit91 ], [ %.057.lcssa, %bb.j ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !190
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
  store i8 0, ptr %i.a, align 1, !tbaa !16
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !182
  %i.an = zext nneg i32 %.058.lcssa to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  %i.ap = xor i32 %i.ad, -1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1 = phi i32 [ 1, %bb.m ], [ %i.ae, %bb.n ]    ; 7 uses
  %.056 = phi i32 [ -1, %bb.m ], [ %i.ap, %bb.n ]
  %.0 = phi ptr [ %i.a, %bb.m ], [ %i.ao, %bb.n ] ; 9 uses
  %.095 = ptrtoaddr ptr %.0 to i64
  %i.aq = load i8, ptr %1, align 8, !tbaa !188
  %i.ar = icmp ne i8 %i.aq, 0
  %i.as = icmp sgt i32 %.1, 0
  %or.cond = and i1 %i.as, %i.ar
  %. = select i1 %or.cond, i8 45, i8 43
  store i8 %., ptr %i.ah, align 1, !tbaa !16
  %i.at = load i8, ptr %.0, align 1, !tbaa !16
  %i.au = add i8 %i.at, 48
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store i8 %i.au, ptr %i.av, align 1, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  store i8 46, ptr %i.aw, align 1, !tbaa !16
  %i.ax = icmp eq i32 %.1, 1
  br i1 %i.ax, label %bb.p, label %.preheader

.preheader:                                       ; preds = %bb.o
  %i.ay = icmp sgt i32 %.1, 1
  br i1 %i.ay, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %wide.trip.count82 = zext nneg i32 %.1 to i64   ; 3 uses
  %3 = zext i32 %i.ae to i64
  %4 = call i64 @llvm.usub.sat.i64(i64 %3, i64 1) ; 7 uses
  %min.iters.check = icmp samesign ult i64 %4, 8
  br i1 %min.iters.check, label %.lr.ph74.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.az = sub i64 %i.ai, %.095
  %i.ba = add i64 %i.az, 1
  %diff.check = icmp ult i64 %i.ba, 31
  br i1 %diff.check, label %.lr.ph74.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check96 = icmp samesign ult i64 %4, 32
  br i1 %min.iters.check96, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bb = and i64 %4, 24
  %n.vec = and i64 %4, 4294967264                 ; 4 uses
  %i.bc = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = or disjoint i64 %index, 1               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load = load <16 x i8>, ptr %i.be, align 1, !tbaa !16
  %wide.load97 = load <16 x i8>, ptr %i.bf, align 1, !tbaa !16
  %i.bg = add <16 x i8> %wide.load, splat (i8 48)
  %i.bh = add <16 x i8> %wide.load97, splat (i8 48)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bd ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 18
  store <16 x i8> %i.bg, ptr %i.bj, align 1, !tbaa !16
  store <16 x i8> %i.bh, ptr %i.bk, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !859

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bb, 0
  br i1 %min.epilog.iters.check, label %.lr.ph74.preheader, label %vec.epilog.ph, !prof !860

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec98 = and i64 %4, 4294967288               ; 3 uses
  %i.bm = or disjoint i64 %n.vec98, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index99 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next101, %vec.epilog.vector.body ] ; 2 uses
  %i.bn = or disjoint i64 %index99, 1             ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0, i64 %i.bn
  %wide.load100 = load <8 x i8>, ptr %i.bo, align 1, !tbaa !16
  %i.bp = add <8 x i8> %wide.load100, splat (i8 48)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  store <8 x i8> %i.bp, ptr %i.br, align 1, !tbaa !16
  %index.next101 = add nuw i64 %index99, 8        ; 2 uses
  %i.bs = icmp eq i64 %index.next101, %n.vec98
  br i1 %i.bs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !861

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n102 = icmp eq i64 %4, %n.vec98
  br i1 %cmp.n102, label %._crit_edge, label %.lr.ph74.preheader

.lr.ph74.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv79.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.bc, %vec.epilog.iter.check ], [ %i.bm, %vec.epilog.middle.block ] ; 4 uses
  %i.bt = sub nsw i64 %wide.trip.count82, %indvars.iv79.ph
  %xtraiter = and i64 %i.bt, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph74.prol.loopexit, label %.lr.ph74.prol

.lr.ph74.prol:                                    ; preds = %.lr.ph74.preheader, %.lr.ph74.prol
  %indvars.iv79.prol = phi i64 [ %indvars.iv.next80.prol, %.lr.ph74.prol ], [ %indvars.iv79.ph, %.lr.ph74.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph74.prol ], [ 0, %.lr.ph74.preheader ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.0, i64 %indvars.iv79.prol
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !16
  %i.bw = add i8 %i.bv, 48
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv79.prol
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  store i8 %i.bw, ptr %i.by, align 1, !tbaa !16
  %indvars.iv.next80.prol = add nuw nsw i64 %indvars.iv79.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph74.prol.loopexit, label %.lr.ph74.prol, !llvm.loop !862

.lr.ph74.prol.loopexit:                           ; preds = %.lr.ph74.prol, %.lr.ph74.preheader
  %indvars.iv79.unr = phi i64 [ %indvars.iv79.ph, %.lr.ph74.preheader ], [ %indvars.iv.next80.prol, %.lr.ph74.prol ]
  %i.bz = sub nsw i64 %indvars.iv79.ph, %wide.trip.count82
  %i.ca = icmp ugt i64 %i.bz, -4
  br i1 %i.ca, label %._crit_edge, label %.lr.ph74

bb.p:                                             ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ah, i64 3
  store i8 48, ptr %i.cb, align 1, !tbaa !16
  br label %bb.q

.lr.ph74:                                         ; preds = %.lr.ph74.prol.loopexit, %.lr.ph74
  %indvars.iv79 = phi i64 [ %indvars.iv.next80.3, %.lr.ph74 ], [ %indvars.iv79.unr, %.lr.ph74.prol.loopexit ] ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0, i64 %indvars.iv79
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !16
  %i.ce = add i8 %i.cd, 48
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv79
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  store i8 %i.ce, ptr %i.cg, align 1, !tbaa !16
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0, i64 %indvars.iv.next80
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !16
  %i.cj = add i8 %i.ci, 48
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv.next80
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  store i8 %i.cj, ptr %i.cl, align 1, !tbaa !16
  %indvars.iv.next80.1 = add nuw nsw i64 %indvars.iv79, 2 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0, i64 %indvars.iv.next80.1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !16
  %i.co = add i8 %i.cn, 48
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv.next80.1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  store i8 %i.co, ptr %i.cq, align 1, !tbaa !16
  %indvars.iv.next80.2 = add nuw nsw i64 %indvars.iv79, 3 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0, i64 %indvars.iv.next80.2
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !16
  %i.ct = add i8 %i.cs, 48
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv.next80.2
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 2
  store i8 %i.ct, ptr %i.cv, align 1, !tbaa !16
  %indvars.iv.next80.3 = add nuw nsw i64 %indvars.iv79, 4 ; 2 uses
  %exitcond83.not.3 = icmp eq i64 %indvars.iv.next80.3, %wide.trip.count82
  br i1 %exitcond83.not.3, label %._crit_edge, label %.lr.ph74, !llvm.loop !863

._crit_edge:                                      ; preds = %.lr.ph74.prol.loopexit, %.lr.ph74, %middle.block, %vec.epilog.middle.block, %.preheader
  %i.cw = add nsw i32 %.1, 2
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.p
  %.160 = phi i32 [ 4, %bb.p ], [ %i.cw, %._crit_edge ] ; 2 uses
  %i.cx = add i32 %.056, %.1
  %i.cy = add nsw i32 %.1, 20
  %i.cz = sub i32 %i.cy, %.160
  %i.da = sext i32 %.160 to i64
  %i.db = getelementptr inbounds i8, ptr %i.ah, i64 %i.da
  %i.dc = tail call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %i.cz, ptr noundef nonnull %i.db, ptr noundef nonnull @.str.305, i32 noundef %i.cx) #45 ; 0 uses
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
  %i.c = load i8, ptr %i.b, align 1, !tbaa !185
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @sqlite3_result_error_nomem(ptr noundef %0) #45
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = load i8, ptr %i.d, align 2, !tbaa !187
  %.not53 = icmp eq i8 %i.e, 0
  br i1 %.not53, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @sqlite3_result_null(ptr noundef %0) #45
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !180
  %i.h = sext i32 %i.g to i64
  %i.i = add nsw i64 %i.h, 4
  %i.j = tail call ptr @sqlite3_malloc64(i64 noundef %i.i) #45 ; 10 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @sqlite3_result_error_nomem(ptr noundef %0) #45
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.l = load i32, ptr %i.f, align 4, !tbaa !180  ; 3 uses
  switch i32 %i.l, label %bb.j [
    i32 0, label %.thread
    i32 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !182
  %i.o = load i8, ptr %i.n, align 1, !tbaa !16
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.i, %bb.h
  store i8 0, ptr %1, align 8, !tbaa !188
  br label %bb.l

bb.j:                                             ; preds = %bb.h, %bb.i
  %.pr = load i8, ptr %1, align 8, !tbaa !188
  %.not54 = icmp eq i8 %.pr, 0
  br i1 %.not54, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 45, ptr %i.j, align 1, !tbaa !16
  %.pre = load i32, ptr %i.f, align 4, !tbaa !180
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k, %bb.j
  %i.q = phi i32 [ %.pre, %bb.k ], [ %i.l, %bb.j ], [ %i.l, %.thread ] ; 2 uses
  %.047 = phi i32 [ 1, %bb.k ], [ 0, %bb.j ], [ 0, %.thread ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !190  ; 2 uses
  %i.t = sub nsw i32 %i.q, %i.s                   ; 3 uses
  %i.u = icmp slt i32 %i.t, 1
  br i1 %i.u, label %.critedge.thread99, label %bb.m

.critedge.thread99:                               ; preds = %bb.l
  %i.v = add nuw nsw i32 %.047, 1
  %i.w = zext nneg i32 %.047 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.w
  store i8 48, ptr %i.x, align 1, !tbaa !16
  br label %._crit_edge

bb.m:                                             ; preds = %bb.l
  %.not105 = icmp eq i32 %i.t, 1
  br i1 %.not105, label %.lr.ph66, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !182
  %i.aa = xor i32 %i.s, -1
  %i.ab = add i32 %i.q, %i.aa                     ; 2 uses
  %wide.trip.count = zext i32 %i.ab to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 4 uses
  %.058 = phi i32 [ %i.t, %.lr.ph ], [ %i.af, %bb.o ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !16
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = add nsw i32 %.058, -1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph66.loopexit, label %bb.n, !llvm.loop !864

.critedge:                                        ; preds = %bb.n
  %i.ag = icmp sgt i32 %.058, 0
  br i1 %i.ag, label %.lr.ph66, label %._crit_edge

end_hunk_0
