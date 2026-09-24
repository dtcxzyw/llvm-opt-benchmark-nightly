Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/shell?download=true
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
  %i.m = load i8, ptr %i.l, align 1, !tbaa !52
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !52
  %i.q = zext i8 %i.p to i64
  %i.r = shl nuw nsw i64 %i.n, 16
  %i.s = shl nuw nsw i64 %i.q, 8
  %i.t = or disjoint i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !52
  %i.w = zext i8 %i.v to i64
  %i.x = or disjoint i64 %i.t, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !52
  %i.aa = zext i8 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.x, 16
  %i.ac = shl nuw nsw i64 %i.aa, 8
  %i.ad = or disjoint i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !52
  %i.ag = zext i8 %i.af to i64
  %i.ah = or disjoint i64 %i.ad, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 5
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !52
  %i.ak = zext i8 %i.aj to i64
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
  %i.ae = sub nuw nsw i32 %.057.lcssa, %.058.lcssa ; 4 uses
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

vector.body:                                      ; preds = %vector.ph, %vector.body
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

.lr.ph74.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
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
end_hunk_0
begin_hunk_1_@shell_dbtotxt_command:bb.a
bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.f = trunc nuw nsw i64 %indvars.iv.next to i32
  switch i32 %i.f, label %bb.e [
    i32 125, label %bb.f
    i32 123, label %bb.f
    i32 92, label %bb.f
    i32 34, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.g = trunc i64 %indvars.iv.next to i8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next
  store i8 %i.g, ptr %i.h, align 1, !tbaa !52
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.d, %bb.d, %bb.d
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.i = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  switch i32 %i.i, label %bb.g [
    i32 125, label %bb.h
    i32 123, label %bb.h
    i32 92, label %bb.h
    i32 34, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.j = trunc i64 %indvars.iv.next.1 to i8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next.1
  store i8 %i.j, ptr %i.k, align 1, !tbaa !52
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.f, %bb.f, %bb.f
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.l = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  switch i32 %i.l, label %bb.i [
    i32 125, label %bb.j
    i32 123, label %bb.j
    i32 92, label %bb.j
    i32 34, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.m = trunc i64 %indvars.iv.next.2 to i8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next.2
  store i8 %i.m, ptr %i.n, align 1, !tbaa !52
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.h, %bb.h, %bb.h
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.o = trunc nuw nsw i64 %indvars.iv.next.3 to i32
  switch i32 %i.o, label %bb.k [
    i32 125, label %bb.l
    i32 123, label %bb.l
    i32 92, label %bb.l
    i32 34, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.p = trunc i64 %indvars.iv.next.3 to i8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next.3
  store i8 %i.p, ptr %i.q, align 1, !tbaa !52
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.j, %bb.j, %bb.j
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %exitcond.not.4 = icmp eq i64 %indvars.iv.next.4, 127
  br i1 %exitcond.not.4, label %bb.m, label %bb.b, !llvm.loop !1220

bb.m:                                             ; preds = %bb.l
  %i.r = load ptr, ptr %0, align 8, !tbaa !389
  %i.s = call i32 @sqlite3_prepare_v2(ptr noundef %i.r, ptr noundef nonnull @.str.1500, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #45
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.n, label %bb.at

bb.n:                                             ; preds = %bb.m
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.u = call i32 @sqlite3_step(ptr noundef %i.t) #45
  %.not97 = icmp eq i32 %i.u, 100
  %.pre31 = load ptr, ptr %i.a, align 8, !tbaa !109 ; 2 uses
  br i1 %.not97, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.v = call i32 @sqlite3_column_int(ptr noundef %.pre31, i32 noundef 0) #45
  %.fr12 = freeze i32 %i.v                        ; 5 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.x = call i32 @sqlite3_finalize(ptr noundef %i.w) #45 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !109
  %i.y = add i32 %.fr12, -512
  %or.cond7 = icmp ult i32 %i.y, 65025
  %i.z = call range(i32 0, 18) i32 @llvm.ctpop.i32(i32 %.fr12)
  %.not98 = icmp samesign ult i32 %i.z, 2
  %or.cond = select i1 %or.cond7, i1 %.not98, i1 false
  br i1 %or.cond, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.aa = load ptr, ptr %0, align 8, !tbaa !389
  %i.ab = call i32 @sqlite3_prepare_v2(ptr noundef %i.aa, ptr noundef nonnull @.str.1501, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #45
  %.not99 = icmp eq i32 %i.ab, 0
  br i1 %.not99, label %bb.q, label %bb.at

bb.q:                                             ; preds = %bb.p
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.ad = call i32 @sqlite3_step(ptr noundef %i.ac) #45
  %.not100 = icmp eq i32 %i.ad, 100
  %.pre30 = load ptr, ptr %i.a, align 8, !tbaa !109 ; 2 uses
  br i1 %.not100, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.ae = call i64 @sqlite3_column_int64(ptr noundef %.pre30, i32 noundef 0) #45 ; 2 uses
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.ag = call i32 @sqlite3_finalize(ptr noundef %i.af) #45 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !109
  %i.ah = icmp slt i64 %i.ae, 1
  br i1 %i.ah, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ai = load ptr, ptr %0, align 8, !tbaa !389
  %i.aj = call i32 @sqlite3_prepare_v2(ptr noundef %i.ai, ptr noundef nonnull @.str.350, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #45
  %.not101 = icmp eq i32 %i.aj, 0
  br i1 %.not101, label %bb.t, label %bb.at

bb.t:                                             ; preds = %bb.s
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.al = call i32 @sqlite3_step(ptr noundef %i.ak) #45
  %.not102 = icmp eq i32 %i.al, 100
  br i1 %.not102, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.an = call ptr @sqlite3_column_text(ptr noundef %i.am, i32 noundef 2) #45 ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ap = load i8, ptr %i.an, align 1, !tbaa !52
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.079 = phi ptr [ @.str.1502, %bb.w ], [ %i.an, %bb.v ] ; 2 uses
  %i.ar = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %.079, i32 noundef 47) #46 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 1 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !52
  %.not103 = icmp eq i8 %i.au, 0
  %spec.select = select i1 %.not103, ptr %i.ar, ptr %i.at
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.t
  %.188 = phi ptr [ @.str.1502, %bb.t ], [ %spec.select, %bb.y ], [ %.079, %bb.x ]
  %i.av = call noalias ptr @strdup(ptr noundef nonnull %.188) #45 ; 5 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.aa, label %shell_check_oom.exit

bb.aa:                                            ; preds = %bb.z
  call fastcc void @shell_out_of_memory()
  unreachable

shell_check_oom.exit:                             ; preds = %bb.z
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 38 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.az = zext nneg i32 %.fr12 to i64             ; 2 uses
  %i.ba = mul nuw nsw i64 %i.ae, %i.az
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ay, ptr noundef nonnull @.str.1503, i64 noundef %i.ba, i32 noundef %.fr12, ptr noundef nonnull %i.av)
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.bc = call i32 @sqlite3_finalize(ptr noundef %i.bb) #45 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !109
  %i.bd = load ptr, ptr %0, align 8, !tbaa !389
  %i.be = call i32 @sqlite3_prepare_v2(ptr noundef %i.bd, ptr noundef nonnull @.str.1504, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #45
  %.not104 = icmp eq i32 %i.be, 0
  br i1 %.not104, label %.preheader, label %bb.at

.preheader:                                       ; preds = %shell_check_oom.exit
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.bg = call i32 @sqlite3_step(ptr noundef %i.bf) #45
  %i.bh = icmp eq i32 %i.bg, 100
  br i1 %i.bh, label %.lr.ph.us, label %._crit_edge

.lr.ph.us:                                        ; preds = %.preheader, %..loopexit_crit_edge.us
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.bj = call i64 @sqlite3_column_int64(ptr noundef %i.bi, i32 noundef 0) #45 ; 2 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.bl = call ptr @sqlite3_column_blob(ptr noundef %i.bk, i32 noundef 1) #45
  %i.bm = add nsw i64 %i.bj, -1
  %i.bn = mul nsw i64 %i.bm, %i.az
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.us, %.critedge.us
  %indvars.iv27 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next28, %.critedge.us ] ; 3 uses
  %.07810.us = phi i32 [ 0, %.lr.ph.us ], [ %.2.us, %.critedge.us ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv27 ; 33 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !52
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %bb.ac, label %.critedge.thread.loopexit.us

bb.ac:                                            ; preds = %bb.ab
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !52
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %bb.ad, label %.critedge.thread.loopexit.us

bb.ad:                                            ; preds = %bb.ac
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !52
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %bb.ae, label %.critedge.thread.loopexit.us

bb.ae:                                            ; preds = %bb.ad
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 3
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !52
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %bb.af, label %.critedge.thread.loopexit.us

bb.af:                                            ; preds = %bb.ae
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !52
  %i.cc = icmp eq i8 %i.cb, 0
  br i1 %i.cc, label %bb.ag, label %.critedge.thread.loopexit.us

bb.ag:                                            ; preds = %bb.af
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 5
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !52
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.ah, label %.critedge.thread.loopexit.us

bb.ah:                                            ; preds = %bb.ag
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bo, i64 6
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !52
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %bb.ai, label %.critedge.thread.loopexit.us

bb.ai:                                            ; preds = %bb.ah
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bo, i64 7
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !52
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %bb.aj, label %.critedge.thread.loopexit.us

bb.aj:                                            ; preds = %bb.ai
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !52
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.ak, label %.critedge.thread.loopexit.us

bb.ak:                                            ; preds = %bb.aj
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bo, i64 9
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !52
  %i.cr = icmp eq i8 %i.cq, 0
  br i1 %i.cr, label %bb.al, label %.critedge.thread.loopexit.us

bb.al:                                            ; preds = %bb.ak
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bo, i64 10
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !52
  %i.cu = icmp eq i8 %i.ct, 0
  br i1 %i.cu, label %bb.am, label %.critedge.thread.loopexit.us

bb.am:                                            ; preds = %bb.al
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bo, i64 11
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !52
  %i.cx = icmp eq i8 %i.cw, 0
  br i1 %i.cx, label %bb.an, label %.critedge.thread.loopexit.us

bb.an:                                            ; preds = %bb.am
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !52
  %i.da = icmp eq i8 %i.cz, 0
  br i1 %i.da, label %bb.ao, label %.critedge.thread.loopexit.us

bb.ao:                                            ; preds = %bb.an
  %i.db = getelementptr inbounds nuw i8, ptr %i.bo, i64 13
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !52
  %i.dd = icmp eq i8 %i.dc, 0
  br i1 %i.dd, label %bb.ap, label %.critedge.thread.loopexit.us

bb.ap:                                            ; preds = %bb.ao
  %i.de = getelementptr inbounds nuw i8, ptr %i.bo, i64 14
  %i.df = load i8, ptr %i.de, align 1, !tbaa !52
  %i.dg = icmp eq i8 %i.df, 0
  br i1 %i.dg, label %bb.aq, label %.critedge.thread.loopexit.us

bb.aq:                                            ; preds = %bb.ap
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bo, i64 15
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !52
  %i.dj = icmp eq i8 %i.di, 0
  br i1 %i.dj, label %.critedge.us, label %.critedge.thread.loopexit.us

bb.ar:                                            ; preds = %.critedge.thread.loopexit.us
  %i.dk = load ptr, ptr %i.ax, align 8, !tbaa !351
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.dk, ptr noundef nonnull @.str.1505, i64 noundef %i.bj, i64 noundef %i.bn)
  br label %bb.as

bb.as:                                            ; preds = %.critedge.thread.loopexit.us, %bb.ar
  %i.dl = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.dm = trunc nuw nsw i64 %indvars.iv27 to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.dl, ptr noundef nonnull @.str.1506, i32 noundef %i.dm)
  %i.dn = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.do = load i8, ptr %i.bo, align 1, !tbaa !52
  %i.dp = zext i8 %i.do to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.dn, ptr noundef nonnull @.str.1507, i32 noundef %i.dp)
  %i.dq = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bo, i64 1 ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !52
  %i.dt = zext i8 %i.ds to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.dq, ptr noundef nonnull @.str.1507, i32 noundef %i.dt)
  %i.du = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bo, i64 2 ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !52
  %i.dx = zext i8 %i.dw to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.du, ptr noundef nonnull @.str.1507, i32 noundef %i.dx)
  %i.dy = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bo, i64 3 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !52
  %i.eb = zext i8 %i.ea to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.dy, ptr noundef nonnull @.str.1507, i32 noundef %i.eb)
  %i.ec = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !52
  %i.ef = zext i8 %i.ee to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ec, ptr noundef nonnull @.str.1507, i32 noundef %i.ef)
  %i.eg = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bo, i64 5 ; 2 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !52
  %i.ej = zext i8 %i.ei to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.eg, ptr noundef nonnull @.str.1507, i32 noundef %i.ej)
  %i.ek = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.el = getelementptr inbounds nuw i8, ptr %i.bo, i64 6 ; 2 uses
  %i.em = load i8, ptr %i.el, align 1, !tbaa !52
  %i.en = zext i8 %i.em to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ek, ptr noundef nonnull @.str.1507, i32 noundef %i.en)
  %i.eo = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bo, i64 7 ; 2 uses
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !52
  %i.er = zext i8 %i.eq to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.eo, ptr noundef nonnull @.str.1507, i32 noundef %i.er)
  %i.es = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.et = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !52
  %i.ev = zext i8 %i.eu to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.es, ptr noundef nonnull @.str.1507, i32 noundef %i.ev)
  %i.ew = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bo, i64 9 ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !52
  %i.ez = zext i8 %i.ey to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ew, ptr noundef nonnull @.str.1507, i32 noundef %i.ez)
  %i.fa = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bo, i64 10 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !52
  %i.fd = zext i8 %i.fc to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.fa, ptr noundef nonnull @.str.1507, i32 noundef %i.fd)
  %i.fe = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bo, i64 11 ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !52
  %i.fh = zext i8 %i.fg to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.fe, ptr noundef nonnull @.str.1507, i32 noundef %i.fh)
  %i.fi = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bo, i64 12 ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !52
  %i.fl = zext i8 %i.fk to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.fi, ptr noundef nonnull @.str.1507, i32 noundef %i.fl)
  %i.fm = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bo, i64 13 ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !52
  %i.fp = zext i8 %i.fo to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.fm, ptr noundef nonnull @.str.1507, i32 noundef %i.fp)
  %i.fq = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bo, i64 14 ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !52
  %i.ft = zext i8 %i.fs to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.fq, ptr noundef nonnull @.str.1507, i32 noundef %i.ft)
  %i.fu = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bo, i64 15 ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !52
  %i.fx = zext i8 %i.fw to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.fu, ptr noundef nonnull @.str.1507, i32 noundef %i.fx)
  %i.fy = load ptr, ptr %i.ax, align 8, !tbaa !351
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.fy, ptr noundef nonnull @.str.269)
  %i.fz = load i8, ptr %i.bo, align 1, !tbaa !52
  %i.ga = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.gb = zext i8 %i.fz to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !52
  %i.ge = zext i8 %i.gd to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ga, ptr noundef nonnull @.str.1508, i32 noundef %i.ge)
  %i.gf = load i8, ptr %i.dr, align 1, !tbaa !52
  %i.gg = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.gh = zext i8 %i.gf to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !52
  %i.gk = zext i8 %i.gj to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.gg, ptr noundef nonnull @.str.1508, i32 noundef %i.gk)
  %i.gl = load i8, ptr %i.dv, align 1, !tbaa !52
  %i.gm = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.gn = zext i8 %i.gl to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !52
  %i.gq = zext i8 %i.gp to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.gm, ptr noundef nonnull @.str.1508, i32 noundef %i.gq)
  %i.gr = load i8, ptr %i.dz, align 1, !tbaa !52
  %i.gs = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.gt = zext i8 %i.gr to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !52
  %i.gw = zext i8 %i.gv to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.gs, ptr noundef nonnull @.str.1508, i32 noundef %i.gw)
  %i.gx = load i8, ptr %i.ed, align 1, !tbaa !52
  %i.gy = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.gz = zext i8 %i.gx to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !52
  %i.hc = zext i8 %i.hb to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.gy, ptr noundef nonnull @.str.1508, i32 noundef %i.hc)
  %i.hd = load i8, ptr %i.eh, align 1, !tbaa !52
  %i.he = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.hf = zext i8 %i.hd to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !52
  %i.hi = zext i8 %i.hh to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.he, ptr noundef nonnull @.str.1508, i32 noundef %i.hi)
  %i.hj = load i8, ptr %i.el, align 1, !tbaa !52
  %i.hk = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.hl = zext i8 %i.hj to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !52
  %i.ho = zext i8 %i.hn to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.hk, ptr noundef nonnull @.str.1508, i32 noundef %i.ho)
  %i.hp = load i8, ptr %i.ep, align 1, !tbaa !52
  %i.hq = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.hr = zext i8 %i.hp to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !52
  %i.hu = zext i8 %i.ht to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.hq, ptr noundef nonnull @.str.1508, i32 noundef %i.hu)
  %i.hv = load i8, ptr %i.et, align 1, !tbaa !52
  %i.hw = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.hx = zext i8 %i.hv to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hx
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !52
  %i.ia = zext i8 %i.hz to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.hw, ptr noundef nonnull @.str.1508, i32 noundef %i.ia)
  %i.ib = load i8, ptr %i.ex, align 1, !tbaa !52
  %i.ic = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.id = zext i8 %i.ib to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !52
  %i.ig = zext i8 %i.if to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ic, ptr noundef nonnull @.str.1508, i32 noundef %i.ig)
  %i.ih = load i8, ptr %i.fb, align 1, !tbaa !52
  %i.ii = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.ij = zext i8 %i.ih to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ij
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !52
  %i.im = zext i8 %i.il to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ii, ptr noundef nonnull @.str.1508, i32 noundef %i.im)
  %i.in = load i8, ptr %i.ff, align 1, !tbaa !52
  %i.io = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.ip = zext i8 %i.in to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ip
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !52
  %i.is = zext i8 %i.ir to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.io, ptr noundef nonnull @.str.1508, i32 noundef %i.is)
  %i.it = load i8, ptr %i.fj, align 1, !tbaa !52
  %i.iu = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.iv = zext i8 %i.it to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.iv
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !52
  %i.iy = zext i8 %i.ix to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.iu, ptr noundef nonnull @.str.1508, i32 noundef %i.iy)
  %i.iz = load i8, ptr %i.fn, align 1, !tbaa !52
  %i.ja = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.jb = zext i8 %i.iz to i64
  %i.jc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jb
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !52
  %i.je = zext i8 %i.jd to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ja, ptr noundef nonnull @.str.1508, i32 noundef %i.je)
  %i.jf = load i8, ptr %i.fr, align 1, !tbaa !52
  %i.jg = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.jh = zext i8 %i.jf to i64
  %i.ji = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jh
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !52
  %i.jk = zext i8 %i.jj to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.jg, ptr noundef nonnull @.str.1508, i32 noundef %i.jk)
  %i.jl = load i8, ptr %i.fv, align 1, !tbaa !52
  %i.jm = load ptr, ptr %i.ax, align 8, !tbaa !351
  %i.jn = zext i8 %i.jl to i64
  %i.jo = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !52
  %i.jq = zext i8 %i.jp to i32
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.jm, ptr noundef nonnull @.str.1508, i32 noundef %i.jq)
  %i.jr = load ptr, ptr %i.ax, align 8, !tbaa !351
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.jr, ptr noundef nonnull @.str.125)
  br label %.critedge.us

.critedge.us:                                     ; preds = %bb.aq, %bb.as
  %.2.us = phi i32 [ 1, %bb.as ], [ %.07810.us, %bb.aq ]
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 16 ; 2 uses
  %i.js = trunc nuw i64 %indvars.iv.next28 to i32
  %i.jt = icmp sgt i32 %.fr12, %i.js
  br i1 %i.jt, label %bb.ab, label %..loopexit_crit_edge.us, !llvm.loop !1221

.critedge.thread.loopexit.us:                     ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %.not105.us = icmp eq i32 %.07810.us, 0
  br i1 %.not105.us, label %bb.ar, label %bb.as

..loopexit_crit_edge.us:                          ; preds = %.critedge.us
  %i.ju = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.jv = call i32 @sqlite3_step(ptr noundef %i.ju) #45
  %i.jw = icmp eq i32 %i.jv, 100
  br i1 %i.jw, label %.lr.ph.us, label %._crit_edge, !llvm.loop !1222

._crit_edge:                                      ; preds = %..loopexit_crit_edge.us, %.preheader
  %i.jx = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.jy = call i32 @sqlite3_finalize(ptr noundef %i.jx) #45 ; 0 uses
  %i.jz = load ptr, ptr %i.ax, align 8, !tbaa !351
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.jz, ptr noundef nonnull @.str.1509, ptr noundef nonnull %i.av)
  br label %bb.au

bb.at:                                            ; preds = %bb.m, %bb.p, %bb.s, %shell_check_oom.exit
  %.086 = phi ptr [ null, %bb.m ], [ null, %bb.p ], [ null, %bb.s ], [ %i.av, %shell_check_oom.exit ]
  %i.ka = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.kb = load ptr, ptr %0, align 8, !tbaa !389
  %i.kc = call ptr @sqlite3_errmsg(ptr noundef %i.kb) #45
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ka, ptr noundef nonnull @.str.1510, ptr noundef %i.kc)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !109
  br label %.thread

.thread:                                          ; preds = %bb.r, %bb.q, %bb.o, %bb.n, %bb.at
  %i.kd = phi ptr [ %.pre, %bb.at ], [ %.pre31, %bb.n ], [ null, %bb.o ], [ %.pre30, %bb.q ], [ null, %bb.r ]
  %.0863 = phi ptr [ %.086, %bb.at ], [ null, %bb.n ], [ null, %bb.o ], [ null, %bb.q ], [ null, %bb.r ]
  %i.ke = call i32 @sqlite3_finalize(ptr noundef %i.kd) #45 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %.thread, %._crit_edge
  %.0863.sink = phi ptr [ %.0863, %.thread ], [ %i.av, %._crit_edge ]
  %.0 = phi i32 [ 1, %.thread ], [ 0, %._crit_edge ]
  call void @free(ptr noundef %.0863.sink) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @expertDotCommand(ptr nofree noundef nonnull captures(none) initializes((4736, 4752)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 1, 0) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  store ptr null, ptr %i.a, align 8, !tbaa !88
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4736 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = icmp sgt i32 %2, 1
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.d = add nsw i32 %2, -1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4744
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.03547 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.k ]
  %.03646 = phi i32 [ 1, %.lr.ph ], [ %i.ag, %bb.k ] ; 4 uses
  %i.f = sext i32 %.03646 to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %1, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !88   ; 4 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !52
  %i.j = icmp eq i8 %i.i, 45
  br i1 %i.j, label %bb.c, label %strlen30.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !52
  %i.m = icmp eq i8 %i.l, 45
  %spec.select = select i1 %i.m, ptr %i.k, ptr %i.h
  br label %strlen30.exit

strlen30.exit:                                    ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.h, %bb.b ], [ %spec.select, %bb.c ] ; 5 uses
  %i.n = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0) #46 ; 2 uses
  %i.o = icmp ugt i64 %i.n, 1
  br i1 %i.o, label %bb.d, label %.critedge

bb.d:                                             ; preds = %strlen30.exit
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1073741823) ; 2 uses
  %i.q = tail call i32 @strncmp(ptr noundef nonnull %.0, ptr noundef nonnull @.str.1511, i64 noundef range(i64 -2147483648, 2147483648) %i.p) #46
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.e, align 8, !tbaa !479
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.s = tail call i32 @strncmp(ptr noundef nonnull %.0, ptr noundef nonnull @.str.1512, i64 noundef range(i64 -2147483648, 2147483648) %i.p) #46
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.u = icmp eq i32 %.03646, %i.d
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !122
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.v, ptr noundef nonnull @.str.1513, ptr noundef nonnull %.0)
  br label %._crit_edge

bb.i:                                             ; preds = %bb.g
  %i.w = add nsw i32 %.03646, 1                   ; 2 uses
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %1, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !88
  %i.aa = tail call fastcc i64 @integerValue(ptr noundef %i.z)
  %i.ab = trunc i64 %i.aa to i32                  ; 2 uses
  %or.cond = icmp ugt i32 %i.ab, 100
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds [8 x i8], ptr %1, i64 %i.x
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !88
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ad, ptr noundef nonnull @.str.1514, ptr noundef %i.ae)
  br label %._crit_edge

.critedge:                                        ; preds = %strlen30.exit, %bb.f
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !122
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.af, ptr noundef nonnull @.str.1068, ptr noundef nonnull %.0)
  br label %._crit_edge

bb.k:                                             ; preds = %bb.i, %bb.e
  %.137 = phi i32 [ %.03646, %bb.e ], [ %i.w, %bb.i ]
  %.1 = phi i32 [ %.03547, %bb.e ], [ %i.ab, %bb.i ] ; 2 uses
  %i.ag = add nsw i32 %.137, 1                    ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %2
  br i1 %i.ah, label %bb.b, label %.loopexit, !llvm.loop !1223

.loopexit:                                        ; preds = %bb.k, %bb.a
  %.035.lcssa.ph = phi i32 [ 0, %bb.a ], [ %.1, %bb.k ]
  %i.ai = load ptr, ptr %0, align 8, !tbaa !389
  %i.aj = call ptr @sqlite3_expert_new(ptr noundef %i.ai, ptr noundef nonnull %i.a) ; 3 uses
  store ptr %i.aj, ptr %i.b, align 8, !tbaa !388
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.loopexit
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !88  ; 2 uses
  %.not = icmp eq ptr %i.am, null
  %i.an = select i1 %.not, ptr @.str.56, ptr %i.am
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.al, ptr noundef nonnull @.str.1515, ptr noundef nonnull %i.an)
  br label %._crit_edge

bb.m:                                             ; preds = %.loopexit
  %i.ao = call i32 (ptr, i32, ...) @sqlite3_expert_config(ptr noundef nonnull %i.aj, i32 noundef 1, i32 noundef %.035.lcssa.ph) ; 0 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %.critedge, %bb.j, %bb.h, %bb.l, %bb.m
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !88
  call void @sqlite3_free(ptr noundef %i.ap) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @shell_exec(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %struct.winsize, align 2            ; 6 uses
  %i.b = alloca ptr, align 8                      ; 23 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %struct.sqlite3_qrf_spec, align 8   ; 16 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  store ptr null, ptr %i.b, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #45
  %i.f = load ptr, ptr %0, align 8, !tbaa !389    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #45
  %.not = icmp eq ptr %2, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !88
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4312
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull align 8 dereferenceable(128) %i.h, i64 128, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 96
  store ptr @shellWriteQR, ptr %i.i, align 8, !tbaa !1227
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 112
  store ptr %0, ptr %i.j, align 8, !tbaa !1228
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4318 ; 2 uses
  %i.l = load i8, ptr %i.k, align 2, !tbaa !426   ; 2 uses
  %i.m = icmp eq i8 %i.l, 7
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = load i32, ptr %i.n, align 8, !tbaa !344
  %i.p = and i32 %i.o, 8
  %.not96 = icmp eq i32 %i.p, 0
  br i1 %.not96, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 6
end_hunk_1
