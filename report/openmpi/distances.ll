inline.NumInlined: 65
inline.NumDeleted: 23
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@hwloc_distances_release:bb.a

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef ptr @hwloc_backend_distances_add_create(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @__errno_location() #32
  store i32 22, ptr %i.a, align 4, !tbaa !11
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(88) ptr @calloc(i64 noundef 1, i64 noundef 88) #33 ; 8 uses
  %.not21 = icmp eq ptr %i.b, null
  br i1 %.not21, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not22 = icmp eq ptr %1, null
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = tail call noalias ptr @strdup(ptr noundef nonnull %1) #28 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !50
  %.not23 = icmp eq ptr %i.c, null
  br i1 %.not23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %2, ptr %i.d, align 8, !tbaa !66
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 2, ptr %i.e, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 -1, ptr %i.f, align 4, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !57   ; 2 uses
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !57
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.h, ptr %i.j, align 8, !tbaa !79
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.b) #28
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.g, %bb.c, %bb.f
  %.0 = phi ptr [ %i.b, %bb.f ], [ null, %bb.c ], [ null, %bb.g ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #12

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -1, 1) i32 @hwloc_backend_distances_add_values(ptr nofree readnone captures(none) %0, ptr noundef captures(none) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !68   ; 2 uses
  %i.e = and i32 %i.d, 2
  %.not91 = icmp eq i32 %i.e, 0
  br i1 %.not91, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = tail call ptr @__errno_location() #32
  store i32 22, ptr %i.f, align 4, !tbaa !11
  br label %bb.y

bb.d:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %5, 0
  %i.h = icmp ugt i32 %2, 1
  %or.cond.not94 = and i1 %i.h, %i.g
  %i.i = icmp ne ptr %3, null
  %or.cond3 = and i1 %i.i, %or.cond.not94
  %i.j = icmp ne ptr %4, null
  %or.cond5 = and i1 %i.j, %or.cond3
  br i1 %or.cond5, label %.preheader107.preheader, label %bb.e

.preheader107.preheader:                          ; preds = %bb.d
  %wide.trip.count = zext i32 %2 to i64           ; 10 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.preheader107.preheader154, label %vector.ph

vector.ph:                                        ; preds = %.preheader107.preheader
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %vec.phi150 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.r, %vector.body ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <2 x ptr>, ptr %i.k, align 8, !tbaa !83
  %wide.load151 = load <2 x ptr>, ptr %i.l, align 8, !tbaa !83
  %i.m = icmp eq <2 x ptr> %wide.load, splat (ptr null)
  %i.n = icmp eq <2 x ptr> %wide.load151, splat (ptr null)
  %i.o = zext <2 x i1> %i.m to <2 x i32>
  %i.p = zext <2 x i1> %i.n to <2 x i32>
  %i.q = add <2 x i32> %vec.phi, %i.o             ; 2 uses
  %i.r = add <2 x i32> %vec.phi150, %i.p          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.r, %i.q
  %i.t = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit152, label %.preheader107.preheader154

.preheader107.preheader154:                       ; preds = %.preheader107.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader107.preheader ], [ %n.vec, %middle.block ]
  %.0109.ph = phi i32 [ 0, %.preheader107.preheader ], [ %i.t, %middle.block ]
  br label %.preheader107

bb.e:                                             ; preds = %bb.d
  %i.u = tail call ptr @__errno_location() #32
  store i32 22, ptr %i.u, align 4, !tbaa !11
  br label %bb.y

.preheader107:                                    ; preds = %.preheader107.preheader154, %.preheader107
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader107 ], [ %indvars.iv.ph, %.preheader107.preheader154 ] ; 2 uses
  %.0109 = phi i32 [ %spec.select, %.preheader107 ], [ %.0109.ph, %.preheader107.preheader154 ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !83
  %.not100 = icmp eq ptr %i.w, null
  %i.x = zext i1 %.not100 to i32
  %spec.select = add i32 %.0109, %i.x             ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit152, label %.preheader107, !llvm.loop !88

.loopexit152:                                     ; preds = %.preheader107, %middle.block
  %spec.select.lcssa = phi i32 [ %i.t, %middle.block ], [ %spec.select, %.preheader107 ] ; 3 uses
  %.not95 = icmp eq i32 %spec.select.lcssa, 0
  br i1 %.not95, label %bb.s, label %bb.f

bb.f:                                             ; preds = %.loopexit152
  %i.y = icmp eq i32 %spec.select.lcssa, %2
  br i1 %i.y, label %bb.g, label %.lr.ph.i

bb.g:                                             ; preds = %bb.f
  %i.z = tail call ptr @__errno_location() #32
  store i32 2, ptr %i.z, align 4, !tbaa !11
  br label %bb.y

.lr.ph.i:                                         ; preds = %bb.f
  %i.aa = sub i32 %2, %spec.select.lcssa          ; 3 uses
  %i.ab = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ac = icmp eq i64 %i.ab, 0
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod157 = trunc i32 %2 to i1
  br label %bb.k

.lr.ph61.split.us.split.us.i:                     ; preds = %bb.j, %.lr.ph61.split.us.split.us.i.preheader.new
  %indvars.iv92.i = phi i64 [ 0, %.lr.ph61.split.us.split.us.i.preheader.new ], [ %indvars.iv.next93.i.1, %bb.j ] ; 3 uses
  %.260.us.us.i = phi i32 [ 0, %.lr.ph61.split.us.split.us.i.preheader.new ], [ %.3.us.us.i.1, %bb.j ] ; 3 uses
  %niter162 = phi i64 [ 0, %.lr.ph61.split.us.split.us.i.preheader.new ], [ %niter162.next.1, %bb.j ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv92.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !83 ; 2 uses
  %.not.us.us.i = icmp eq ptr %i.ae, null
  br i1 %.not.us.us.i, label %.lr.ph61.split.us.split.us.i.1, label %bb.h

bb.h:                                             ; preds = %.lr.ph61.split.us.split.us.i
  %i.af = zext i32 %.260.us.us.i to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.af
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !83
  %i.ah = add i32 %.260.us.us.i, 1
  br label %.lr.ph61.split.us.split.us.i.1

.lr.ph61.split.us.split.us.i.1:                   ; preds = %bb.h, %.lr.ph61.split.us.split.us.i
  %.3.us.us.i = phi i32 [ %i.ah, %bb.h ], [ %.260.us.us.i, %.lr.ph61.split.us.split.us.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv92.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !83 ; 2 uses
  %.not.us.us.i.1 = icmp eq ptr %i.ak, null
  br i1 %.not.us.us.i.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph61.split.us.split.us.i.1
  %i.al = zext i32 %.3.us.us.i to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.al
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !83
  %i.an = add i32 %.3.us.us.i, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph61.split.us.split.us.i.1
  %.3.us.us.i.1 = phi i32 [ %i.an, %bb.i ], [ %.3.us.us.i, %.lr.ph61.split.us.split.us.i.1 ] ; 2 uses
  %indvars.iv.next93.i.1 = add nuw nsw i64 %indvars.iv92.i, 2 ; 2 uses
  %niter162.next.1 = add nuw i64 %niter162, 2     ; 2 uses
  %niter162.ncmp.1 = icmp eq i64 %niter162.next.1, %unroll_iter161
  br i1 %niter162.ncmp.1, label %hwloc_internal_distances_restrict.exit.unr-lcssa, label %.lr.ph61.split.us.split.us.i, !llvm.loop !89

bb.k:                                             ; preds = %bb.q, %.lr.ph.i
  %indvars.iv72.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next73.i, %bb.q ] ; 3 uses
  %.04158.i = phi i32 [ 0, %.lr.ph.i ], [ %.142.i, %bb.q ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv72.i
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !83
  %.not52.i = icmp eq ptr %i.ap, null
  br i1 %.not52.i, label %bb.q, label %.preheader54.i

.preheader54.i:                                   ; preds = %bb.k
  %i.aq = trunc nuw i64 %indvars.iv72.i to i32
  %i.ar = mul i32 %2, %i.aq                       ; 3 uses
  %i.as = mul i32 %.04158.i, %i.aa                ; 3 uses
  br i1 %i.ac, label %.epil.preheader, label %.preheader54.i.new

.preheader54.i.new:                               ; preds = %.preheader54.i, %bb.o
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %bb.o ], [ 0, %.preheader54.i ] ; 4 uses
  %.056.i = phi i32 [ %.1.i.1, %bb.o ], [ 0, %.preheader54.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.o ], [ 0, %.preheader54.i ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !83
  %.not53.i = icmp eq ptr %i.au, null
  br i1 %.not53.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader54.i.new
  %i.av = trunc nuw i64 %indvars.iv.i to i32
  %i.aw = add i32 %i.ar, %i.av
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !90
  %i.ba = add i32 %.056.i, %i.as
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bb
  store i64 %i.az, ptr %i.bc, align 8, !tbaa !90
  %i.bd = add i32 %.056.i, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader54.i.new
  %.1.i = phi i32 [ %i.bd, %bb.l ], [ %.056.i, %.preheader54.i.new ] ; 3 uses
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !83
  %.not53.i.1 = icmp eq ptr %i.bf, null
  br i1 %.not53.i.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = trunc nuw i64 %indvars.iv.next.i to i32
  %i.bh = add i32 %i.ar, %i.bg
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !90
  %i.bl = add i32 %.1.i, %i.as
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bm
  store i64 %i.bk, ptr %i.bn, align 8, !tbaa !90
  %i.bo = add i32 %.1.i, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1.i.1 = phi i32 [ %i.bo, %bb.n ], [ %.1.i, %bb.m ] ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader54.i.new, !llvm.loop !91

.unr-lcssa:                                       ; preds = %bb.o
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader54.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader54.i ], [ %indvars.iv.next.i.1, %.unr-lcssa ] ; 2 uses
  %.056.i.epil.init = phi i32 [ 0, %.preheader54.i ], [ %.1.i.1, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod157)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i.epil.init
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !83
  %.not53.i.epil = icmp eq ptr %i.bq, null
  br i1 %.not53.i.epil, label %.epilog-lcssa, label %bb.p

bb.p:                                             ; preds = %.epil.preheader
  %i.br = trunc nuw i64 %indvars.iv.i.epil.init to i32
  %i.bs = add i32 %i.ar, %i.br
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !90
  %i.bw = add i32 %.056.i.epil.init, %i.as
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bx
  store i64 %i.bv, ptr %i.by, align 8, !tbaa !90
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.epil.preheader, %bb.p, %.unr-lcssa
  %i.bz = add i32 %.04158.i, 1
  br label %bb.q

bb.q:                                             ; preds = %.epilog-lcssa, %bb.k
  %.142.i = phi i32 [ %i.bz, %.epilog-lcssa ], [ %.04158.i, %bb.k ]
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1 ; 2 uses
  %exitcond76.not.i = icmp eq i64 %indvars.iv.next73.i, %wide.trip.count
  br i1 %exitcond76.not.i, label %.lr.ph61.split.us.split.us.i.preheader, label %bb.k, !llvm.loop !92

.lr.ph61.split.us.split.us.i.preheader:           ; preds = %bb.q
  %xtraiter158 = and i64 %wide.trip.count, 1
  %i.ca = icmp eq i64 %i.ab, 0
  br i1 %i.ca, label %.lr.ph61.split.us.split.us.i.epil.preheader, label %.lr.ph61.split.us.split.us.i.preheader.new

.lr.ph61.split.us.split.us.i.preheader.new:       ; preds = %.lr.ph61.split.us.split.us.i.preheader
  %unroll_iter161 = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph61.split.us.split.us.i

hwloc_internal_distances_restrict.exit.unr-lcssa: ; preds = %bb.j
  %lcmp.mod159.not = icmp eq i64 %xtraiter158, 0
  br i1 %lcmp.mod159.not, label %hwloc_internal_distances_restrict.exit, label %.lr.ph61.split.us.split.us.i.epil.preheader

.lr.ph61.split.us.split.us.i.epil.preheader:      ; preds = %hwloc_internal_distances_restrict.exit.unr-lcssa, %.lr.ph61.split.us.split.us.i.preheader
  %indvars.iv92.i.epil.init = phi i64 [ 0, %.lr.ph61.split.us.split.us.i.preheader ], [ %indvars.iv.next93.i.1, %hwloc_internal_distances_restrict.exit.unr-lcssa ]
  %.260.us.us.i.epil.init = phi i32 [ 0, %.lr.ph61.split.us.split.us.i.preheader ], [ %.3.us.us.i.1, %hwloc_internal_distances_restrict.exit.unr-lcssa ]
  %lcmp.mod160 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod160)
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv92.i.epil.init
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !83 ; 2 uses
  %.not.us.us.i.epil = icmp eq ptr %i.cc, null
  br i1 %.not.us.us.i.epil, label %hwloc_internal_distances_restrict.exit, label %bb.r

bb.r:                                             ; preds = %.lr.ph61.split.us.split.us.i.epil.preheader
  %i.cd = zext i32 %.260.us.us.i.epil.init to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cd
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !83
  br label %hwloc_internal_distances_restrict.exit

hwloc_internal_distances_restrict.exit:           ; preds = %.lr.ph61.split.us.split.us.i.epil.preheader, %bb.r, %hwloc_internal_distances_restrict.exit.unr-lcssa
  %.pre = zext i32 %i.aa to i64
  br label %bb.s

bb.s:                                             ; preds = %hwloc_internal_distances_restrict.exit, %.loopexit152
  %.pre-phi = phi i64 [ %.pre, %hwloc_internal_distances_restrict.exit ], [ %wide.trip.count, %.loopexit152 ] ; 3 uses
  %.084 = phi i32 [ %i.aa, %hwloc_internal_distances_restrict.exit ], [ %2, %.loopexit152 ] ; 7 uses
  %i.cf = shl nuw nsw i64 %.pre-phi, 3
  %i.cg = tail call noalias ptr @malloc(i64 noundef %i.cf) #30 ; 13 uses
  %.not96 = icmp eq ptr %i.cg, null
  br i1 %.not96, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = load ptr, ptr %3, align 8, !tbaa !83
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !93 ; 3 uses
  %i.cj = icmp ugt i32 %.084, 1
  br i1 %i.cj, label %.lr.ph, label %._crit_edge

bb.u:                                             ; preds = %.lr.ph
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %.pre-phi
  br i1 %exitcond124.not, label %._crit_edge, label %.lr.ph, !llvm.loop !97

.lr.ph:                                           ; preds = %bb.t, %bb.u
  %indvars.iv120 = phi i64 [ %indvars.iv.next121, %bb.u ], [ 1, %bb.t ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv120
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !83
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !93
  %.not97 = icmp eq i32 %i.cm, %i.ci
  br i1 %.not97, label %bb.u, label %.thread

._crit_edge:                                      ; preds = %bb.u, %bb.t
  %i.cn = icmp eq i32 %i.ci, -1
  br i1 %i.cn, label %.thread, label %.loopexit106

.thread:                                          ; preds = %.lr.ph, %._crit_edge
  %i.co = shl nuw nsw i64 %.pre-phi, 2
  %i.cp = tail call noalias ptr @malloc(i64 noundef %i.co) #30 ; 8 uses
  %.not98 = icmp eq ptr %i.cp, null
  br i1 %.not98, label %bb.x, label %.lr.ph112.preheader

.lr.ph112.preheader:                              ; preds = %.thread
  %wide.trip.count128 = zext i32 %.084 to i64     ; 2 uses
  %xtraiter163 = and i64 %wide.trip.count128, 3   ; 3 uses
  %i.cq = add i32 %.084, -1
  %i.cr = icmp ult i32 %i.cq, 3
  br i1 %i.cr, label %.lr.ph112.epil.preheader, label %.lr.ph112.preheader.new

.lr.ph112.preheader.new:                          ; preds = %.lr.ph112.preheader
  %unroll_iter166 = and i64 %wide.trip.count128, 4294967292
  br label %.lr.ph112

.lr.ph112:                                        ; preds = %.lr.ph112, %.lr.ph112.preheader.new
  %indvars.iv125 = phi i64 [ 0, %.lr.ph112.preheader.new ], [ %indvars.iv.next126.3, %.lr.ph112 ] ; 6 uses
  %niter167 = phi i64 [ 0, %.lr.ph112.preheader.new ], [ %niter167.next.3, %.lr.ph112 ]
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv125
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !83
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !93
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv125
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !11
  %indvars.iv.next126 = or disjoint i64 %indvars.iv125, 1 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next126
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !83
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !93
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv.next126
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !11
  %indvars.iv.next126.1 = or disjoint i64 %indvars.iv125, 2 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next126.1
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !83
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !93
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv.next126.1
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !11
  %indvars.iv.next126.2 = or disjoint i64 %indvars.iv125, 3 ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next126.2
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !83
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !93
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv.next126.2
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !11
  %indvars.iv.next126.3 = add nuw nsw i64 %indvars.iv125, 4 ; 2 uses
  %niter167.next.3 = add nuw i64 %niter167, 4     ; 2 uses
  %niter167.ncmp.3 = icmp eq i64 %niter167.next.3, %unroll_iter166
  br i1 %niter167.ncmp.3, label %.loopexit106.loopexit.unr-lcssa, label %.lr.ph112, !llvm.loop !98

.loopexit106.loopexit.unr-lcssa:                  ; preds = %.lr.ph112
  %lcmp.mod164.not = icmp eq i64 %xtraiter163, 0
  br i1 %lcmp.mod164.not, label %.loopexit106, label %.lr.ph112.epil.preheader

.lr.ph112.epil.preheader:                         ; preds = %.loopexit106.loopexit.unr-lcssa, %.lr.ph112.preheader
  %indvars.iv125.epil.init = phi i64 [ 0, %.lr.ph112.preheader ], [ %indvars.iv.next126.3, %.loopexit106.loopexit.unr-lcssa ]
  %lcmp.mod165 = icmp ne i64 %xtraiter163, 0
  tail call void @llvm.assume(i1 %lcmp.mod165)
  br label %.lr.ph112.epil

.lr.ph112.epil:                                   ; preds = %.lr.ph112.epil, %.lr.ph112.epil.preheader
  %indvars.iv125.epil = phi i64 [ %indvars.iv125.epil.init, %.lr.ph112.epil.preheader ], [ %indvars.iv.next126.epil, %.lr.ph112.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph112.epil.preheader ], [ %epil.iter.next, %.lr.ph112.epil ]
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv125.epil
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !83
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !93
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv125.epil
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !11
  %indvars.iv.next126.epil = add nuw nsw i64 %indvars.iv125.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter163
  br i1 %epil.iter.cmp.not, label %.loopexit106, label %.lr.ph112.epil, !llvm.loop !99

.loopexit106:                                     ; preds = %.loopexit106.loopexit.unr-lcssa, %.lr.ph112.epil, %._crit_edge
  %.082102 = phi i32 [ %i.ci, %._crit_edge ], [ -1, %.lr.ph112.epil ], [ -1, %.loopexit106.loopexit.unr-lcssa ] ; 2 uses
  %.081 = phi ptr [ null, %._crit_edge ], [ %i.cp, %.lr.ph112.epil ], [ %i.cp, %.loopexit106.loopexit.unr-lcssa ] ; 2 uses
  store i32 %.084, ptr %i.a, align 8, !tbaa !60
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %3, ptr %i.dm, align 8, !tbaa !53
  %i.dn = or i32 %i.d, 1
  store i32 %i.dn, ptr %i.c, align 8, !tbaa !68
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.cg, ptr %i.do, align 8, !tbaa !52
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %.082102, ptr %i.dp, align 4, !tbaa !74
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.081, ptr %i.dq, align 8, !tbaa !51
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %4, ptr %i.dr, align 8, !tbaa !54
  %.not99 = icmp eq ptr %.081, null
  br i1 %.not99, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.loopexit106
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !66
  %i.du = or i64 %i.dt, 16
  store i64 %i.du, ptr %i.ds, align 8, !tbaa !66
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.loopexit106
  %wide.trip.count140 = zext i32 %.084 to i64     ; 4 uses
  switch i32 %.082102, label %.lr.ph117.preheader [
    i32 3, label %.lr.ph115.preheader
    i32 13, label %.lr.ph115.preheader
  ]

.lr.ph115.preheader:                              ; preds = %bb.w, %bb.w
  %xtraiter168 = and i64 %wide.trip.count140, 3   ; 3 uses
  %i.dv = add i32 %.084, -1
  %i.dw = icmp ult i32 %i.dv, 3
  br i1 %i.dw, label %.lr.ph115.epil.preheader, label %.lr.ph115.preheader.new

.lr.ph115.preheader.new:                          ; preds = %.lr.ph115.preheader
  %unroll_iter172 = and i64 %wide.trip.count140, 4294967292
  br label %.lr.ph115

.lr.ph117.preheader:                              ; preds = %bb.w
  %xtraiter174 = and i64 %wide.trip.count140, 3   ; 3 uses
  %i.dx = add i32 %.084, -1
  %i.dy = icmp ult i32 %i.dx, 3
  br i1 %i.dy, label %.lr.ph117.epil.preheader, label %.lr.ph117.preheader.new

.lr.ph117.preheader.new:                          ; preds = %.lr.ph117.preheader
  %unroll_iter178 = and i64 %wide.trip.count140, 4294967292
  br label %.lr.ph117

.lr.ph115:                                        ; preds = %.lr.ph115, %.lr.ph115.preheader.new
  %indvars.iv130 = phi i64 [ 0, %.lr.ph115.preheader.new ], [ %indvars.iv.next131.3, %.lr.ph115 ] ; 6 uses
  %niter173 = phi i64 [ 0, %.lr.ph115.preheader.new ], [ %niter173.next.3, %.lr.ph115 ]
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv130
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !83
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !101
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv130
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !90
  %indvars.iv.next131 = or disjoint i64 %indvars.iv130, 1 ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next131
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !83
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !101
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.next131
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !90
  %indvars.iv.next131.1 = or disjoint i64 %indvars.iv130, 2 ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next131.1
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !83
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !101
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.next131.1
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !90
  %indvars.iv.next131.2 = or disjoint i64 %indvars.iv130, 3 ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next131.2
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !83
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !101
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.next131.2
  store i64 %i.ev, ptr %i.ew, align 8, !tbaa !90
  %indvars.iv.next131.3 = add nuw nsw i64 %indvars.iv130, 4 ; 2 uses
  %niter173.next.3 = add nuw i64 %niter173, 4     ; 2 uses
  %niter173.ncmp.3 = icmp eq i64 %niter173.next.3, %unroll_iter172
  br i1 %niter173.ncmp.3, label %.loopexit.loopexit153.unr-lcssa, label %.lr.ph115, !llvm.loop !102

.lr.ph117:                                        ; preds = %.lr.ph117, %.lr.ph117.preheader.new
  %indvars.iv136 = phi i64 [ 0, %.lr.ph117.preheader.new ], [ %indvars.iv.next137.3, %.lr.ph117 ] ; 6 uses
  %niter179 = phi i64 [ 0, %.lr.ph117.preheader.new ], [ %niter179.next.3, %.lr.ph117 ]
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv136
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !83
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 240
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !103
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv136
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !90
  %indvars.iv.next137 = or disjoint i64 %indvars.iv136, 1 ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next137
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !83
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 240
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !103
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.next137
  store i64 %i.ff, ptr %i.fg, align 8, !tbaa !90
  %indvars.iv.next137.1 = or disjoint i64 %indvars.iv136, 2 ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next137.1
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !83
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 240
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !103
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.next137.1
  store i64 %i.fk, ptr %i.fl, align 8, !tbaa !90
  %indvars.iv.next137.2 = or disjoint i64 %indvars.iv136, 3 ; 2 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next137.2
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !83
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 240
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !103
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.next137.2
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !90
  %indvars.iv.next137.3 = add nuw nsw i64 %indvars.iv136, 4 ; 2 uses
  %niter179.next.3 = add nuw i64 %niter179, 4     ; 2 uses
  %niter179.ncmp.3 = icmp eq i64 %niter179.next.3, %unroll_iter178
  br i1 %niter179.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph117, !llvm.loop !104

bb.x:                                             ; preds = %.thread
  tail call void @free(ptr noundef %i.cg) #28
  br label %bb.y

bb.y:                                             ; preds = %bb.s, %bb.x, %bb.g, %bb.e, %bb.c
  %i.fr = load ptr, ptr %1, align 8, !tbaa !50
  tail call void @free(ptr noundef %i.fr) #28
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !52
  tail call void @free(ptr noundef %i.ft) #28
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !53
  tail call void @free(ptr noundef %i.fv) #28
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !51
  tail call void @free(ptr noundef %i.fx) #28
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !54
  tail call void @free(ptr noundef %i.fz) #28
  tail call void @free(ptr noundef %1) #28
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph117
  %lcmp.mod176.not = icmp eq i64 %xtraiter174, 0
  br i1 %lcmp.mod176.not, label %.loopexit, label %.lr.ph117.epil.preheader

.lr.ph117.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph117.preheader
  %indvars.iv136.epil.init = phi i64 [ 0, %.lr.ph117.preheader ], [ %indvars.iv.next137.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod177 = icmp ne i64 %xtraiter174, 0
  tail call void @llvm.assume(i1 %lcmp.mod177)
  br label %.lr.ph117.epil

.lr.ph117.epil:                                   ; preds = %.lr.ph117.epil, %.lr.ph117.epil.preheader
  %indvars.iv136.epil = phi i64 [ %indvars.iv.next137.epil, %.lr.ph117.epil ], [ %indvars.iv136.epil.init, %.lr.ph117.epil.preheader ] ; 3 uses
  %epil.iter175 = phi i64 [ %epil.iter175.next, %.lr.ph117.epil ], [ 0, %.lr.ph117.epil.preheader ]
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv136.epil
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !83
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 240
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !103
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv136.epil
  store i64 %i.gd, ptr %i.ge, align 8, !tbaa !90
  %indvars.iv.next137.epil = add nuw nsw i64 %indvars.iv136.epil, 1
  %epil.iter175.next = add i64 %epil.iter175, 1   ; 2 uses
  %epil.iter175.cmp.not = icmp eq i64 %epil.iter175.next, %xtraiter174
  br i1 %epil.iter175.cmp.not, label %.loopexit, label %.lr.ph117.epil, !llvm.loop !105

.loopexit.loopexit153.unr-lcssa:                  ; preds = %.lr.ph115
  %lcmp.mod170.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod170.not, label %.loopexit, label %.lr.ph115.epil.preheader

.lr.ph115.epil.preheader:                         ; preds = %.loopexit.loopexit153.unr-lcssa, %.lr.ph115.preheader
  %indvars.iv130.epil.init = phi i64 [ 0, %.lr.ph115.preheader ], [ %indvars.iv.next131.3, %.loopexit.loopexit153.unr-lcssa ]
  %lcmp.mod171 = icmp ne i64 %xtraiter168, 0
  tail call void @llvm.assume(i1 %lcmp.mod171)
  br label %.lr.ph115.epil

.lr.ph115.epil:                                   ; preds = %.lr.ph115.epil, %.lr.ph115.epil.preheader
  %indvars.iv130.epil = phi i64 [ %indvars.iv.next131.epil, %.lr.ph115.epil ], [ %indvars.iv130.epil.init, %.lr.ph115.epil.preheader ] ; 3 uses
  %epil.iter169 = phi i64 [ %epil.iter169.next, %.lr.ph115.epil ], [ 0, %.lr.ph115.epil.preheader ]
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv130.epil
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !83
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !101
  %i.gj = zext i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv130.epil
  store i64 %i.gj, ptr %i.gk, align 8, !tbaa !90
  %indvars.iv.next131.epil = add nuw nsw i64 %indvars.iv130.epil, 1
  %epil.iter169.next = add i64 %epil.iter169, 1   ; 2 uses
  %epil.iter169.cmp.not = icmp eq i64 %epil.iter169.next, %xtraiter168
  br i1 %epil.iter169.cmp.not, label %.loopexit, label %.lr.ph115.epil, !llvm.loop !106

.loopexit:                                        ; preds = %.loopexit.loopexit153.unr-lcssa, %.lr.ph115.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph117.epil, %bb.y
  %.083 = phi i32 [ -1, %bb.y ], [ 0, %.loopexit.loopexit.unr-lcssa ], [ 0, %.lr.ph117.epil ], [ 0, %.lr.ph115.epil ], [ 0, %.loopexit.loopexit153.unr-lcssa ]
  ret i32 %.083
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @hwloc_internal_distances_restrict(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #13 {
bb.a:
  %.not66 = icmp eq i32 %4, 0
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = sub i32 %4, %5
  %wide.trip.count75 = zext i32 %4 to i64         ; 4 uses
  %i.b = add nsw i64 %wide.trip.count75, -1       ; 4 uses
  %xtraiter = and i64 %wide.trip.count75, 1
  %i.c = icmp eq i64 %i.b, 0
  %unroll_iter = and i64 %wide.trip.count75, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod114 = trunc i32 %4 to i1
  br label %bb.k

.lr.ph61:                                         ; preds = %bb.q
  %.not50 = icmp eq ptr %1, null
  %.not51 = icmp eq ptr %2, null                  ; 2 uses
  %wide.trip.count95 = zext i32 %4 to i64         ; 7 uses
  br i1 %.not50, label %.lr.ph61.split.us, label %.lr.ph61.split

.lr.ph61.split.us:                                ; preds = %.lr.ph61
  br i1 %.not51, label %.lr.ph61.split.us.split.us.preheader, label %.lr.ph61.split.us.split.preheader

.lr.ph61.split.us.split.preheader:                ; preds = %.lr.ph61.split.us
  %xtraiter120 = and i64 %wide.trip.count95, 1
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %.lr.ph61.split.us.split.epil.preheader, label %.lr.ph61.split.us.split.preheader.new

.lr.ph61.split.us.split.preheader.new:            ; preds = %.lr.ph61.split.us.split.preheader
  %unroll_iter123 = and i64 %wide.trip.count95, 4294967294
  br label %.lr.ph61.split.us.split

.lr.ph61.split.us.split.us.preheader:             ; preds = %.lr.ph61.split.us
  %xtraiter125 = and i64 %wide.trip.count95, 1
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %.lr.ph61.split.us.split.us.epil.preheader, label %.lr.ph61.split.us.split.us.preheader.new

.lr.ph61.split.us.split.us.preheader.new:         ; preds = %.lr.ph61.split.us.split.us.preheader
  %unroll_iter128 = and i64 %wide.trip.count95, 4294967294
  br label %.lr.ph61.split.us.split.us

.lr.ph61.split.us.split.us:                       ; preds = %bb.d, %.lr.ph61.split.us.split.us.preheader.new
  %indvars.iv92 = phi i64 [ 0, %.lr.ph61.split.us.split.us.preheader.new ], [ %indvars.iv.next93.1, %bb.d ] ; 3 uses
  %.260.us.us = phi i32 [ 0, %.lr.ph61.split.us.split.us.preheader.new ], [ %.3.us.us.1, %bb.d ] ; 3 uses
  %niter129 = phi i64 [ 0, %.lr.ph61.split.us.split.us.preheader.new ], [ %niter129.next.1, %bb.d ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv92
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !83   ; 2 uses
  %.not.us.us = icmp eq ptr %i.g, null
  br i1 %.not.us.us, label %.lr.ph61.split.us.split.us.1, label %bb.b

bb.b:                                             ; preds = %.lr.ph61.split.us.split.us
  %i.h = zext i32 %.260.us.us to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  store ptr %i.g, ptr %i.i, align 8, !tbaa !83
  %i.j = add i32 %.260.us.us, 1
  br label %.lr.ph61.split.us.split.us.1

.lr.ph61.split.us.split.us.1:                     ; preds = %bb.b, %.lr.ph61.split.us.split.us
  %.3.us.us = phi i32 [ %i.j, %bb.b ], [ %.260.us.us, %.lr.ph61.split.us.split.us ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv92
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !83   ; 2 uses
  %.not.us.us.1 = icmp eq ptr %i.m, null
  br i1 %.not.us.us.1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph61.split.us.split.us.1
  %i.n = zext i32 %.3.us.us to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n
  store ptr %i.m, ptr %i.o, align 8, !tbaa !83
  %i.p = add i32 %.3.us.us, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph61.split.us.split.us.1
  %.3.us.us.1 = phi i32 [ %i.p, %bb.c ], [ %.3.us.us, %.lr.ph61.split.us.split.us.1 ] ; 2 uses
  %indvars.iv.next93.1 = add nuw nsw i64 %indvars.iv92, 2 ; 2 uses
  %niter129.next.1 = add nuw i64 %niter129, 2     ; 2 uses
  %niter129.ncmp.1 = icmp eq i64 %niter129.next.1, %unroll_iter128
  br i1 %niter129.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph61.split.us.split.us, !llvm.loop !89

.lr.ph61.split.us.split:                          ; preds = %bb.g, %.lr.ph61.split.us.split.preheader.new
  %indvars.iv87 = phi i64 [ 0, %.lr.ph61.split.us.split.preheader.new ], [ %indvars.iv.next88.1, %bb.g ] ; 4 uses
  %.260.us = phi i32 [ 0, %.lr.ph61.split.us.split.preheader.new ], [ %.3.us.1, %bb.g ] ; 3 uses
  %niter124 = phi i64 [ 0, %.lr.ph61.split.us.split.preheader.new ], [ %niter124.next.1, %bb.g ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv87
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !83   ; 2 uses
  %.not.us = icmp eq ptr %i.r, null
  br i1 %.not.us, label %.lr.ph61.split.us.split.1, label %bb.e

bb.e:                                             ; preds = %.lr.ph61.split.us.split
  %i.s = zext i32 %.260.us to i64                 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.s
  store ptr %i.r, ptr %i.t, align 8, !tbaa !83
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv87
  %i.v = load i32, ptr %i.u, align 4, !tbaa !11
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.s
  store i32 %i.v, ptr %i.w, align 4, !tbaa !11
  %i.x = add i32 %.260.us, 1
  br label %.lr.ph61.split.us.split.1

.lr.ph61.split.us.split.1:                        ; preds = %bb.e, %.lr.ph61.split.us.split
  %.3.us = phi i32 [ %i.x, %bb.e ], [ %.260.us, %.lr.ph61.split.us.split ] ; 3 uses
  %indvars.iv.next88 = or disjoint i64 %indvars.iv87, 1 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next88
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !83   ; 2 uses
  %.not.us.1 = icmp eq ptr %i.z, null
  br i1 %.not.us.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph61.split.us.split.1
  %i.aa = zext i32 %.3.us to i64                  ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aa
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !83
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next88
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !11
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aa
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !11
  %i.af = add i32 %.3.us, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph61.split.us.split.1
  %.3.us.1 = phi i32 [ %i.af, %bb.f ], [ %.3.us, %.lr.ph61.split.us.split.1 ] ; 2 uses
  %indvars.iv.next88.1 = add nuw nsw i64 %indvars.iv87, 2 ; 2 uses
  %niter124.next.1 = add nuw i64 %niter124, 2     ; 2 uses
  %niter124.ncmp.1 = icmp eq i64 %niter124.next.1, %unroll_iter123
  br i1 %niter124.ncmp.1, label %._crit_edge.loopexit111.unr-lcssa, label %.lr.ph61.split.us.split, !llvm.loop !89

.lr.ph61.split:                                   ; preds = %.lr.ph61
  br i1 %.not51, label %.lr.ph61.split.split.us.preheader, label %.lr.ph61.split.split

.lr.ph61.split.split.us.preheader:                ; preds = %.lr.ph61.split
  %xtraiter115 = and i64 %wide.trip.count95, 1
  %i.ag = icmp eq i64 %i.b, 0
  br i1 %i.ag, label %.lr.ph61.split.split.us.epil.preheader, label %.lr.ph61.split.split.us.preheader.new

.lr.ph61.split.split.us.preheader.new:            ; preds = %.lr.ph61.split.split.us.preheader
  %unroll_iter118 = and i64 %wide.trip.count95, 4294967294
  br label %.lr.ph61.split.split.us

.lr.ph61.split.split.us:                          ; preds = %bb.j, %.lr.ph61.split.split.us.preheader.new
  %indvars.iv82 = phi i64 [ 0, %.lr.ph61.split.split.us.preheader.new ], [ %indvars.iv.next83.1, %bb.j ] ; 4 uses
  %.260.us62 = phi i32 [ 0, %.lr.ph61.split.split.us.preheader.new ], [ %.3.us65.1, %bb.j ] ; 3 uses
  %niter119 = phi i64 [ 0, %.lr.ph61.split.split.us.preheader.new ], [ %niter119.next.1, %bb.j ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv82
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !83 ; 2 uses
  %.not.us64 = icmp eq ptr %i.ai, null
  br i1 %.not.us64, label %.lr.ph61.split.split.us.1, label %bb.h

bb.h:                                             ; preds = %.lr.ph61.split.split.us
  %i.aj = zext i32 %.260.us62 to i64              ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aj
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !83
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv82
  %i.am = load i64, ptr %i.al, align 8, !tbaa !90
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.aj
  store i64 %i.am, ptr %i.an, align 8, !tbaa !90
  %i.ao = add i32 %.260.us62, 1
  br label %.lr.ph61.split.split.us.1

.lr.ph61.split.split.us.1:                        ; preds = %bb.h, %.lr.ph61.split.split.us
  %.3.us65 = phi i32 [ %i.ao, %bb.h ], [ %.260.us62, %.lr.ph61.split.split.us ] ; 3 uses
  %indvars.iv.next83 = or disjoint i64 %indvars.iv82, 1 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next83
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !83 ; 2 uses
  %.not.us64.1 = icmp eq ptr %i.aq, null
  br i1 %.not.us64.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph61.split.split.us.1
  %i.ar = zext i32 %.3.us65 to i64                ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ar
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !83
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next83
  %i.au = load i64, ptr %i.at, align 8, !tbaa !90
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ar
  store i64 %i.au, ptr %i.av, align 8, !tbaa !90
  %i.aw = add i32 %.3.us65, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph61.split.split.us.1
  %.3.us65.1 = phi i32 [ %i.aw, %bb.i ], [ %.3.us65, %.lr.ph61.split.split.us.1 ] ; 2 uses
  %indvars.iv.next83.1 = add nuw nsw i64 %indvars.iv82, 2 ; 2 uses
  %niter119.next.1 = add nuw i64 %niter119, 2     ; 2 uses
  %niter119.ncmp.1 = icmp eq i64 %niter119.next.1, %unroll_iter118
  br i1 %niter119.ncmp.1, label %._crit_edge.loopexit112.unr-lcssa, label %.lr.ph61.split.split.us, !llvm.loop !89

bb.k:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv72 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next73, %bb.q ] ; 3 uses
  %.04158 = phi i32 [ 0, %.lr.ph ], [ %.142, %bb.q ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv72
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !83
  %.not52 = icmp eq ptr %i.ay, null
  br i1 %.not52, label %bb.q, label %.preheader54

.preheader54:                                     ; preds = %bb.k
  %i.az = trunc nuw i64 %indvars.iv72 to i32
  %i.ba = mul i32 %4, %i.az                       ; 3 uses
  %i.bb = mul i32 %.04158, %i.a                   ; 3 uses
  br i1 %i.c, label %.epil.preheader, label %.preheader54.new

.preheader54.new:                                 ; preds = %.preheader54, %bb.o
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.o ], [ 0, %.preheader54 ] ; 4 uses
  %.056 = phi i32 [ %.1.1, %bb.o ], [ 0, %.preheader54 ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.o ], [ 0, %.preheader54 ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !83
  %.not53 = icmp eq ptr %i.bd, null
  br i1 %.not53, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader54.new
  %i.be = trunc nuw i64 %indvars.iv to i32
  %i.bf = add i32 %i.ba, %i.be
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !90
  %i.bj = add i32 %.056, %i.bb
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bk
  store i64 %i.bi, ptr %i.bl, align 8, !tbaa !90
  %i.bm = add i32 %.056, 1
  br label %bb.m

bb.m:                                             ; preds = %.preheader54.new, %bb.l
  %.1 = phi i32 [ %i.bm, %bb.l ], [ %.056, %.preheader54.new ] ; 3 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !83
  %.not53.1 = icmp eq ptr %i.bo, null
  br i1 %.not53.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = trunc nuw i64 %indvars.iv.next to i32
  %i.bq = add i32 %i.ba, %i.bp
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !90
  %i.bu = add i32 %.1, %i.bb
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bv
  store i64 %i.bt, ptr %i.bw, align 8, !tbaa !90
  %i.bx = add i32 %.1, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1.1 = phi i32 [ %i.bx, %bb.n ], [ %.1, %bb.m ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader54.new, !llvm.loop !91

.unr-lcssa:                                       ; preds = %bb.o
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader54
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader54 ], [ %indvars.iv.next.1, %.unr-lcssa ] ; 2 uses
  %.056.epil.init = phi i32 [ 0, %.preheader54 ], [ %.1.1, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod114)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil.init
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !83
  %.not53.epil = icmp eq ptr %i.bz, null
  br i1 %.not53.epil, label %.epilog-lcssa, label %bb.p

bb.p:                                             ; preds = %.epil.preheader
  %i.ca = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.cb = add i32 %i.ba, %i.ca
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !90
  %i.cf = add i32 %.056.epil.init, %i.bb
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cg
  store i64 %i.ce, ptr %i.ch, align 8, !tbaa !90
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.epil.preheader, %bb.p, %.unr-lcssa
  %i.ci = add i32 %.04158, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.k, %.epilog-lcssa
  %.142 = phi i32 [ %i.ci, %.epilog-lcssa ], [ %.04158, %bb.k ]
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next73, %wide.trip.count75
  br i1 %exitcond76.not, label %.lr.ph61, label %bb.k, !llvm.loop !92

.lr.ph61.split.split:                             ; preds = %.lr.ph61.split, %bb.s
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %bb.s ], [ 0, %.lr.ph61.split ] ; 4 uses
  %.260 = phi i32 [ %.3, %bb.s ], [ 0, %.lr.ph61.split ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv77
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !83 ; 2 uses
  %.not = icmp eq ptr %i.ck, null
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph61.split.split
  %i.cl = zext i32 %.260 to i64                   ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cl
  store ptr %i.ck, ptr %i.cm, align 8, !tbaa !83
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv77
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !90
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cl
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !90
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv77
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !11
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cl
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !11
  %i.ct = add i32 %.260, 1
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph61.split.split, %bb.r
  %.3 = phi i32 [ %i.ct, %bb.r ], [ %.260, %.lr.ph61.split.split ]
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count95
  br i1 %exitcond81.not, label %._crit_edge, label %.lr.ph61.split.split, !llvm.loop !89

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod126.not = icmp eq i64 %xtraiter125, 0
  br i1 %lcmp.mod126.not, label %._crit_edge, label %.lr.ph61.split.us.split.us.epil.preheader

.lr.ph61.split.us.split.us.epil.preheader:        ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph61.split.us.split.us.preheader
  %indvars.iv92.epil.init = phi i64 [ 0, %.lr.ph61.split.us.split.us.preheader ], [ %indvars.iv.next93.1, %._crit_edge.loopexit.unr-lcssa ]
  %.260.us.us.epil.init = phi i32 [ 0, %.lr.ph61.split.us.split.us.preheader ], [ %.3.us.us.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod127 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod127)
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv92.epil.init
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !83 ; 2 uses
  %.not.us.us.epil = icmp eq ptr %i.cv, null
  br i1 %.not.us.us.epil, label %._crit_edge, label %bb.t

bb.t:                                             ; preds = %.lr.ph61.split.us.split.us.epil.preheader
  %i.cw = zext i32 %.260.us.us.epil.init to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cw
  store ptr %i.cv, ptr %i.cx, align 8, !tbaa !83
  br label %._crit_edge

._crit_edge.loopexit111.unr-lcssa:                ; preds = %bb.g
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %._crit_edge, label %.lr.ph61.split.us.split.epil.preheader

.lr.ph61.split.us.split.epil.preheader:           ; preds = %._crit_edge.loopexit111.unr-lcssa, %.lr.ph61.split.us.split.preheader
  %indvars.iv87.epil.init = phi i64 [ 0, %.lr.ph61.split.us.split.preheader ], [ %indvars.iv.next88.1, %._crit_edge.loopexit111.unr-lcssa ] ; 2 uses
  %.260.us.epil.init = phi i32 [ 0, %.lr.ph61.split.us.split.preheader ], [ %.3.us.1, %._crit_edge.loopexit111.unr-lcssa ]
  %lcmp.mod122 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv87.epil.init
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !83 ; 2 uses
  %.not.us.epil = icmp eq ptr %i.cz, null
  br i1 %.not.us.epil, label %._crit_edge, label %bb.u

bb.u:                                             ; preds = %.lr.ph61.split.us.split.epil.preheader
  %i.da = zext i32 %.260.us.epil.init to i64      ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.da
  store ptr %i.cz, ptr %i.db, align 8, !tbaa !83
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv87.epil.init
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !11
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.da
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !11
  br label %._crit_edge

._crit_edge.loopexit112.unr-lcssa:                ; preds = %bb.j
  %lcmp.mod116.not = icmp eq i64 %xtraiter115, 0
  br i1 %lcmp.mod116.not, label %._crit_edge, label %.lr.ph61.split.split.us.epil.preheader

.lr.ph61.split.split.us.epil.preheader:           ; preds = %._crit_edge.loopexit112.unr-lcssa, %.lr.ph61.split.split.us.preheader
  %indvars.iv82.epil.init = phi i64 [ 0, %.lr.ph61.split.split.us.preheader ], [ %indvars.iv.next83.1, %._crit_edge.loopexit112.unr-lcssa ] ; 2 uses
  %.260.us62.epil.init = phi i32 [ 0, %.lr.ph61.split.split.us.preheader ], [ %.3.us65.1, %._crit_edge.loopexit112.unr-lcssa ]
  %lcmp.mod117 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod117)
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv82.epil.init
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !83 ; 2 uses
  %.not.us64.epil = icmp eq ptr %i.dg, null
  br i1 %.not.us64.epil, label %._crit_edge, label %bb.v

bb.v:                                             ; preds = %.lr.ph61.split.split.us.epil.preheader
  %i.dh = zext i32 %.260.us62.epil.init to i64    ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dh
  store ptr %i.dg, ptr %i.di, align 8, !tbaa !83
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv82.epil.init
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !90
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dh
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !90
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.s, %._crit_edge.loopexit112.unr-lcssa, %bb.v, %.lr.ph61.split.split.us.epil.preheader, %._crit_edge.loopexit111.unr-lcssa, %bb.u, %.lr.ph61.split.us.split.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.t, %.lr.ph61.split.us.split.us.epil.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @hwloc_backend_distances_add_commit(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !60   ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !68
  %i.f = and i32 %i.e, 2
  %.not35 = icmp eq i32 %i.f, 0
  br i1 %.not35, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = and i64 %2, 1
  %.not36 = icmp eq i64 %i.g, 0
  br i1 %.not36, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %.not37 = icmp eq ptr %i.i, null
  br i1 %.not37, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.k = load i32, ptr %i.j, align 8, !tbaa !13
  %.not38 = icmp eq i32 %i.k, 0
  br i1 %.not38, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !51
  %.not39 = icmp eq ptr %i.m, null
  br i1 %.not39, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !39
  %i.n = and i64 %2, 2
  %.not40 = icmp eq i64 %i.n, 0
  br i1 %.not40, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 764
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.q = load i32, ptr %i.p, align 8, !tbaa !41
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.032 = phi ptr [ %i.o, %bb.h ], [ %i.a, %bb.g ]
  %.0 = phi i32 [ %i.q, %bb.h ], [ 1, %bb.g ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 756
end_hunk_0
begin_hunk_1_@hwloc_backend_distances_add_commit:bb.a
  store ptr %1, ptr %i.ad, align 8, !tbaa !45
  br label %bb.n

bb.m:                                             ; preds = %.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %1, ptr %i.ae, align 8, !tbaa !44
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !70
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr null, ptr %i.ag, align 8, !tbaa !45
  store ptr %1, ptr %i.ab, align 8, !tbaa !69
  %i.ah = load i32, ptr %i.d, align 8, !tbaa !68
  %i.ai = and i32 %i.ah, -3
  store i32 %i.ai, ptr %i.d, align 8, !tbaa !68
  br label %bb.p

bb.o:                                             ; preds = %bb.d, %bb.a, %bb.b
  %i.aj = tail call ptr @__errno_location() #32
  store i32 22, ptr %i.aj, align 4, !tbaa !11
  %i.ak = load ptr, ptr %1, align 8, !tbaa !50
  tail call void @free(ptr noundef %i.ak) #28
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !52
  tail call void @free(ptr noundef %i.am) #28
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !53
  tail call void @free(ptr noundef %i.ao) #28
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !51
  tail call void @free(ptr noundef %i.aq) #28
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !54
  tail call void @free(ptr noundef %i.as) #28
  tail call void @free(ptr noundef nonnull %1) #28
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.033 = phi i32 [ 0, %bb.n ], [ -1, %bb.o ]
  ret i32 %.033
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #16

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @hwloc_internal_distances_print_matrix(ptr nofree noundef readonly captures(none) %0) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !74   ; 4 uses
  %i.i = icmp ne i32 %i.h, 3
  %i.j = icmp ne i32 %i.h, 13
  %spec.select = and i1 %i.i, %i.j
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.l = select i1 %spec.select, ptr @.str.10, ptr @.str.11
  %i.m = tail call i64 @fwrite(ptr nonnull %i.l, i64 8, i64 1, ptr %i.k) #34 ; 0 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count45 = zext i32 %i.b to i64       ; 2 uses
  switch i32 %i.h, label %.lr.ph.split [
    i32 13, label %.lr.ph.split.us.preheader
    i32 3, label %.lr.ph.split.us.preheader
  ]

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph, %.lr.ph
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split.us ], [ 0, %.lr.ph.split.us.preheader ] ; 2 uses
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !83
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !101
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.12, i32 noundef %i.r) #35 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count45
  br i1 %exitcond.not, label %.lr.ph36, label %.lr.ph.split.us, !llvm.loop !109

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %.lr.ph.split ], [ 0, %.lr.ph ] ; 2 uses
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv42
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !83
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 240
  %i.x = load i64, ptr %i.w, align 8, !tbaa !103
  %i.y = trunc i64 %i.x to i32
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.t, ptr noundef nonnull @.str.12, i32 noundef %i.y) #35 ; 0 uses
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next43, %wide.trip.count45
  br i1 %exitcond46.not, label %.lr.ph36, label %.lr.ph.split, !llvm.loop !109

._crit_edge:                                      ; preds = %bb.a
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !107
  %fputc = tail call i32 @fputc(i32 10, ptr %i.aa) ; 0 uses
  br label %._crit_edge37

.lr.ph36:                                         ; preds = %.lr.ph.split.us, %.lr.ph.split
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !107
  %fputc68 = tail call i32 @fputc(i32 10, ptr %i.ab) ; 0 uses
  %wide.trip.count66 = zext i32 %i.b to i64       ; 4 uses
  switch i32 %i.h, label %.lr.ph36.split [
    i32 13, label %.lr.ph36.split.us.preheader
    i32 3, label %.lr.ph36.split.us.preheader
  ]

.lr.ph36.split.us.preheader:                      ; preds = %.lr.ph36, %.lr.ph36
  br label %.lr.ph36.split.us

.lr.ph36.split.us:                                ; preds = %.lr.ph36.split.us.preheader, %bb.c
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %bb.c ], [ 0, %.lr.ph36.split.us.preheader ] ; 3 uses
  %i.ac = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv53
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !83
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !101
  %i.ah = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ac, ptr noundef nonnull @.str.14, i32 noundef %i.ag) #35 ; 0 uses
  %i.ai = trunc nuw i64 %indvars.iv53 to i32
  %i.aj = mul i32 %i.b, %i.ai
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph36.split.us
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %bb.b ], [ 0, %.lr.ph36.split.us ] ; 2 uses
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.al = trunc nuw i64 %indvars.iv47 to i32
  %i.am = add i32 %i.aj, %i.al
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !90
  %i.aq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ak, ptr noundef nonnull @.str.15, i64 noundef %i.ap) #35 ; 0 uses
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %exitcond52.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count66
  br i1 %exitcond52.not, label %bb.c, label %bb.b, !llvm.loop !110

bb.c:                                             ; preds = %bb.b
  %i.ar = load ptr, ptr @stderr, align 8, !tbaa !107
  %fputc31.us = tail call i32 @fputc(i32 10, ptr %i.ar) ; 0 uses
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %exitcond57.not = icmp eq i64 %indvars.iv.next54, %wide.trip.count66
  br i1 %exitcond57.not, label %._crit_edge37, label %.lr.ph36.split.us, !llvm.loop !111

.lr.ph36.split:                                   ; preds = %.lr.ph36, %bb.e
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %bb.e ], [ 0, %.lr.ph36 ] ; 3 uses
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv63
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !83
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 240
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !103
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.as, ptr noundef nonnull @.str.14, i32 noundef %i.ax) #35 ; 0 uses
  %i.az = trunc nuw i64 %indvars.iv63 to i32
  %i.ba = mul i32 %i.b, %i.az
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph36.split, %bb.d
  %indvars.iv58 = phi i64 [ 0, %.lr.ph36.split ], [ %indvars.iv.next59, %bb.d ] ; 2 uses
  %i.bb = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.bc = trunc nuw i64 %indvars.iv58 to i32
  %i.bd = add i32 %i.ba, %i.bc
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !90
  %i.bh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bb, ptr noundef nonnull @.str.15, i64 noundef %i.bg) #35 ; 0 uses
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %exitcond62.not = icmp eq i64 %indvars.iv.next59, %wide.trip.count66
  br i1 %exitcond62.not, label %bb.e, label %bb.d, !llvm.loop !110

bb.e:                                             ; preds = %bb.d
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !107
  %fputc31 = tail call i32 @fputc(i32 10, ptr %i.bi) ; 0 uses
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count66
  br i1 %exitcond67.not, label %._crit_edge37, label %.lr.ph36.split, !llvm.loop !111

._crit_edge37:                                    ; preds = %bb.c, %bb.e, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @hwloc__groups_by_distances(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, i32 noundef range(i32 0, 2) %7) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 756
  %i.b = load i32, ptr %i.a, align 4, !tbaa !43
  %i.c = icmp ult i32 %1, 3
  %i.d = and i64 %4, 4
  %.not = icmp eq i64 %i.d, 0
  %or.cond142 = or i1 %i.c, %.not
  br i1 %or.cond142, label %bb.ap, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext i32 %1 to i64                       ; 21 uses
  %i.f = shl nuw nsw i64 %i.e, 2                  ; 2 uses
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #30 ; 14 uses
  %.not132 = icmp eq ptr %i.g, null
  br i1 %.not132, label %bb.ap, label %.preheader164

.preheader164:                                    ; preds = %bb.b
  %.not207 = icmp eq i32 %5, 0
  br i1 %.not207, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader164
  %.not133 = icmp eq i32 %i.b, 0                  ; 5 uses
  %.not134 = icmp eq i32 %7, 0
  %wide.trip.count = zext i32 %5 to i64
  %i.h = add nsw i64 %i.e, -1                     ; 2 uses
  %xtraiter = and i64 %i.e, 1
  %i.i = icmp eq i64 %i.h, 0
  %unroll_iter = and i64 %i.e, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod385 = trunc i32 %1 to i1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %hwloc__check_grouping_matrix.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %hwloc__check_grouping_matrix.exit.thread ] ; 3 uses
  br i1 %.not133, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.k = load ptr, ptr %2, align 8, !tbaa !83
  %i.l = load i32, ptr %i.k, align 8, !tbaa !93
  %i.m = tail call ptr @hwloc_obj_type_string(i32 noundef %i.l) #32
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  %i.o = load float, ptr %i.n, align 4, !tbaa !39
  %i.p = fpext float %i.o to double
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.16, i32 noundef %1, ptr noundef %i.m, double noundef %i.p) #35 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !39 ; 5 uses
  br i1 %.not134, label %hwloc__check_grouping_matrix.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = fcmp une float %.pre, 0.000000e+00
  br i1 %i.r, label %.split95.us.i, label %.split95.i

.split95.us.i:                                    ; preds = %bb.f, %.loopexit.us.i
  %indvars.iv144.i = phi i64 [ %indvars.iv.next145.i, %.loopexit.us.i ], [ 0, %bb.f ] ; 2 uses
  %indvars.iv137.i = phi i64 [ %indvars.iv.next138.i, %.loopexit.us.i ], [ 1, %bb.f ] ; 2 uses
  %indvars.iv.next145.i = add nuw nsw i64 %indvars.iv144.i, 1 ; 3 uses
  %i.s = icmp samesign ult i64 %indvars.iv.next145.i, %i.e
  br i1 %i.s, label %.lr.ph.us.i, label %.loopexit.us.i

.loopexit.us.i:                                   ; preds = %bb.h, %.split95.us.i
  %indvars.iv.next138.i = add nuw nsw i64 %indvars.iv137.i, 1
  %exitcond148.not.i = icmp eq i64 %indvars.iv.next145.i, %i.e
  br i1 %exitcond148.not.i, label %hwloc__check_grouping_matrix.exit, label %.split95.us.i, !llvm.loop !112

.lr.ph.us.i:                                      ; preds = %.split95.us.i
  %i.t = trunc nuw i64 %indvars.iv144.i to i32    ; 5 uses
  %i.u = mul i32 %1, %i.t                         ; 2 uses
  %.pn.in.us.i = add i32 %i.u, %i.t
  %.pn.us.i = zext i32 %.pn.in.us.i to i64
  %.in.us.i = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.pn.us.i
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.us.i
  %indvars.iv139.i = phi i64 [ %indvars.iv.next140.i, %bb.h ], [ %indvars.iv137.i, %.lr.ph.us.i ] ; 2 uses
  %i.v = trunc nuw i64 %indvars.iv139.i to i32    ; 4 uses
  %i.w = add i32 %i.u, %i.v
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !90   ; 5 uses
  %i.aa = mul i32 %1, %i.v
  %i.ab = add i32 %i.aa, %i.t
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !90 ; 3 uses
  %i.af = uitofp i64 %i.z to float                ; 3 uses
  %i.ag = uitofp i64 %i.ae to float
  %i.ah = fsub float %i.af, %i.ag
  %i.ai = tail call float @llvm.fabs.f32(float %i.ah)
  %i.aj = fmul float %.pre, %i.af                 ; 2 uses
  %i.ak = fcmp olt float %i.ai, %i.aj
  %.not.us.us.i = icmp eq i64 %i.z, %i.ae
  %or.cond.us.us.i = select i1 %i.ak, i1 true, i1 %.not.us.us.i
  br i1 %or.cond.us.us.i, label %.thread.us.us.i, label %.split.us.i

.thread.us.us.i:                                  ; preds = %bb.g
  %i.al = load i64, ptr %.in.us.i, align 8, !tbaa !90 ; 3 uses
  %i.am = uitofp i64 %i.al to float
  %i.an = fsub float %i.af, %i.am
  %i.ao = tail call float @llvm.fabs.f32(float %i.an)
  %i.ap = fcmp uge float %i.ao, %i.aj
  %.not64.us.us.i = icmp ugt i64 %i.z, %i.al
  %or.cond.i = select i1 %i.ap, i1 %.not64.us.us.i, i1 false
  br i1 %or.cond.i, label %bb.h, label %hwloc_compare_values.exit57.thread.i

bb.h:                                             ; preds = %.thread.us.us.i
  %indvars.iv.next140.i = add nuw nsw i64 %indvars.iv139.i, 1 ; 2 uses
  %exitcond243 = icmp eq i64 %indvars.iv.next140.i, %i.e
  br i1 %exitcond243, label %.loopexit.us.i, label %bb.g, !llvm.loop !113

.loopexit.i:                                      ; preds = %bb.k, %.split95.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond136.not.i = icmp eq i64 %indvars.iv.next134.i, %i.e
  br i1 %exitcond136.not.i, label %hwloc__check_grouping_matrix.exit, label %.split95.i, !llvm.loop !112

.split95.i:                                       ; preds = %bb.f, %.loopexit.i
  %indvars.iv133.i = phi i64 [ %indvars.iv.next134.i, %.loopexit.i ], [ 0, %bb.f ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit.i ], [ 1, %bb.f ] ; 2 uses
  %indvars.iv.next134.i = add nuw nsw i64 %indvars.iv133.i, 1 ; 3 uses
  %i.aq = icmp samesign ult i64 %indvars.iv.next134.i, %i.e
  br i1 %i.aq, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.split95.i
  %i.ar = trunc nuw i64 %indvars.iv133.i to i32   ; 5 uses
  %i.as = mul i32 %1, %i.ar                       ; 2 uses
  %i.at = add i32 %i.as, %i.ar
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.au
  br label %hwloc_compare_values.exit.thread60.i

hwloc_compare_values.exit.thread60.i:             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv130.i = phi i64 [ %indvars.iv.i, %.lr.ph.i ], [ %indvars.iv.next131.i, %bb.k ] ; 2 uses
  %i.aw = trunc nuw i64 %indvars.iv130.i to i32   ; 4 uses
  %i.ax = add i32 %i.as, %i.aw
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !90 ; 4 uses
  %i.bb = mul i32 %1, %i.aw
  %i.bc = add i32 %i.bb, %i.ar
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !90 ; 2 uses
  %.not61.i = icmp eq i64 %i.ba, %i.bf
  br i1 %.not61.i, label %.thread62.i, label %.split.us.i

.thread62.i:                                      ; preds = %hwloc_compare_values.exit.thread60.i
  %i.bg = load i64, ptr %i.av, align 8, !tbaa !90 ; 2 uses
  %.not64.i = icmp ugt i64 %i.ba, %i.bg
  br i1 %.not64.i, label %bb.k, label %hwloc_compare_values.exit57.thread.i

.split.us.i:                                      ; preds = %hwloc_compare_values.exit.thread60.i, %bb.g
  %.us-phi.i = phi i32 [ %i.t, %bb.g ], [ %i.ar, %hwloc_compare_values.exit.thread60.i ] ; 2 uses
  %.us-phi74.i = phi i64 [ %i.z, %bb.g ], [ %i.ba, %hwloc_compare_values.exit.thread60.i ]
  %.us-phi75.i = phi i64 [ %i.ae, %bb.g ], [ %i.bf, %hwloc_compare_values.exit.thread60.i ]
  %.us-phi76.i = phi i32 [ %i.v, %bb.g ], [ %i.aw, %hwloc_compare_values.exit.thread60.i ] ; 2 uses
  br i1 %.not133, label %hwloc__check_grouping_matrix.exit.thread, label %bb.i

bb.i:                                             ; preds = %.split.us.i
  %i.bh = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.bi = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bh, ptr noundef nonnull @.str.19, i32 noundef %.us-phi.i, i32 noundef %.us-phi76.i, i64 noundef %.us-phi74.i, i32 noundef %.us-phi76.i, i32 noundef %.us-phi.i, i64 noundef %.us-phi75.i) #35 ; 0 uses
  br label %hwloc__check_grouping_matrix.exit.thread

hwloc_compare_values.exit57.thread.i:             ; preds = %.thread62.i, %.thread.us.us.i
  %.us-phi77.i = phi i32 [ %i.t, %.thread.us.us.i ], [ %i.ar, %.thread62.i ] ; 3 uses
  %.us-phi78.i = phi i64 [ %i.z, %.thread.us.us.i ], [ %i.ba, %.thread62.i ]
  %.us-phi79.i = phi i32 [ %i.v, %.thread.us.us.i ], [ %i.aw, %.thread62.i ]
  %.us-phi80.i = phi i64 [ %i.al, %.thread.us.us.i ], [ %i.bg, %.thread62.i ]
  br i1 %.not133, label %hwloc__check_grouping_matrix.exit.thread, label %bb.j

bb.j:                                             ; preds = %hwloc_compare_values.exit57.thread.i
  %i.bj = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.bk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bj, ptr noundef nonnull @.str.20, i32 noundef %.us-phi77.i, i32 noundef %.us-phi79.i, i64 noundef %.us-phi78.i, i32 noundef %.us-phi77.i, i32 noundef %.us-phi77.i, i64 noundef %.us-phi80.i) #35 ; 0 uses
  br label %hwloc__check_grouping_matrix.exit.thread

bb.k:                                             ; preds = %.thread62.i
  %indvars.iv.next131.i = add nuw nsw i64 %indvars.iv130.i, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next131.i, %i.e
  br i1 %exitcond, label %.loopexit.i, label %hwloc_compare_values.exit.thread60.i, !llvm.loop !113

hwloc__check_grouping_matrix.exit:                ; preds = %.loopexit.i, %.loopexit.us.i, %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.g, i8 0, i64 %i.f, i1 false)
  br label %.preheader111.i

.preheader111.i:                                  ; preds = %.epilog-lcssa, %hwloc__check_grouping_matrix.exit
  %indvars.iv140.i = phi i64 [ 0, %hwloc__check_grouping_matrix.exit ], [ %indvars.iv.next141.i, %.epilog-lcssa ] ; 5 uses
  %.091114.i = phi i64 [ -1, %hwloc__check_grouping_matrix.exit ], [ %.293.i.lcssa, %.epilog-lcssa ] ; 2 uses
  %i.bl = trunc nuw i64 %indvars.iv140.i to i32
  %i.bm = mul i32 %1, %i.bl                       ; 3 uses
  br i1 %i.i, label %.epil.preheader, label %.preheader111.i.new

.preheader111.i.new:                              ; preds = %.preheader111.i, %bb.o
  %indvars.iv.i143 = phi i64 [ %indvars.iv.next.i144.1, %bb.o ], [ 0, %.preheader111.i ] ; 4 uses
  %.192112.i = phi i64 [ %.293.i.1, %bb.o ], [ %.091114.i, %.preheader111.i ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.o ], [ 0, %.preheader111.i ]
  %.not102.i = icmp eq i64 %indvars.iv140.i, %indvars.iv.i143
  br i1 %.not102.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader111.i.new
  %i.bn = trunc nuw i64 %indvars.iv.i143 to i32
  %i.bo = add i32 %i.bm, %i.bn
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !90
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.br, i64 %.192112.i)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader111.i.new
  %.293.i = phi i64 [ %.192112.i, %.preheader111.i.new ], [ %spec.select.i, %bb.l ] ; 2 uses
  %indvars.iv.next.i144 = or disjoint i64 %indvars.iv.i143, 1 ; 2 uses
  %.not102.i.1 = icmp eq i64 %indvars.iv140.i, %indvars.iv.next.i144
  br i1 %.not102.i.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = trunc nuw i64 %indvars.iv.next.i144 to i32
  %i.bt = add i32 %i.bm, %i.bs
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !90
  %spec.select.i.1 = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 %.293.i)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.293.i.1 = phi i64 [ %.293.i, %bb.m ], [ %spec.select.i.1, %bb.n ] ; 3 uses
  %indvars.iv.next.i144.1 = add nuw nsw i64 %indvars.iv.i143, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader111.i.new, !llvm.loop !114

.unr-lcssa:                                       ; preds = %bb.o
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader111.i
  %indvars.iv.i143.epil.init = phi i64 [ 0, %.preheader111.i ], [ %indvars.iv.next.i144.1, %.unr-lcssa ] ; 2 uses
  %.192112.i.epil.init = phi i64 [ %.091114.i, %.preheader111.i ], [ %.293.i.1, %.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod385)
  %.not102.i.epil = icmp eq i64 %indvars.iv140.i, %indvars.iv.i143.epil.init
  br i1 %.not102.i.epil, label %.epilog-lcssa, label %bb.p

bb.p:                                             ; preds = %.epil.preheader
  %i.bx = trunc nuw i64 %indvars.iv.i143.epil.init to i32
  %i.by = add i32 %i.bm, %i.bx
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !90
  %spec.select.i.epil = tail call i64 @llvm.umin.i64(i64 %i.cb, i64 %.192112.i.epil.init)
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.epil.preheader, %bb.p, %.unr-lcssa
  %.293.i.lcssa = phi i64 [ %.293.i.1, %.unr-lcssa ], [ %.192112.i.epil.init, %.epil.preheader ], [ %spec.select.i.epil, %bb.p ] ; 7 uses
  %indvars.iv.next141.i = add nuw nsw i64 %indvars.iv140.i, 1 ; 2 uses
  %exitcond144.not.i = icmp eq i64 %indvars.iv.next141.i, %i.e
  br i1 %exitcond144.not.i, label %bb.q, label %.preheader111.i, !llvm.loop !115

bb.q:                                             ; preds = %.epilog-lcssa
  %i.cc = icmp eq i64 %.293.i.lcssa, -1
  br i1 %i.cc, label %hwloc__check_grouping_matrix.exit.thread, label %.preheader110.i

.preheader110.i:                                  ; preds = %bb.q
  %i.cd = fcmp une float %.pre, 0.000000e+00
  %i.ce = uitofp i64 %.293.i.lcssa to float
  %i.cf = fpext float %.pre to double             ; 2 uses
  br i1 %i.cd, label %.preheader110.split.us.i, label %.preheader110.split.i

.preheader110.split.us.i:                         ; preds = %.preheader110.i, %bb.u
  %indvars.iv170.i = phi i64 [ %indvars.iv.next171.i, %bb.u ], [ 0, %.preheader110.i ] ; 3 uses
  %.082135.us.i = phi i32 [ %.183.us.i, %bb.u ], [ 0, %.preheader110.i ] ; 4 uses
  %.089130.us.i = phi i32 [ %.190.us.i, %bb.u ], [ 1, %.preheader110.i ] ; 6 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv170.i ; 3 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !11
  %.not.us.i = icmp eq i32 %i.ch, 0
  br i1 %.not.us.i, label %.preheader108.us.us.preheader.i, label %bb.u

.preheader108.us.us.preheader.i:                  ; preds = %.preheader110.split.us.i
  store i32 %.089130.us.i, ptr %i.cg, align 4, !tbaa !11
  %i.ci = trunc nuw i64 %indvars.iv170.i to i32
  br label %.preheader108.us.us.i

._crit_edge.split.us.us.i:                        ; preds = %.loopexit109.us.us.i, %.preheader108.us.us.i
  %.178.lcssa.us.us180.i = phi i32 [ %.481.us.us.us.i, %.loopexit109.us.us.i ], [ %.077127.us.us.i, %.preheader108.us.us.i ] ; 2 uses
  %i.cj = icmp eq i32 %.178.lcssa.us.us180.i, 1
  br i1 %i.cj, label %bb.t, label %bb.r

bb.r:                                             ; preds = %._crit_edge.split.us.us.i
  %i.ck = add i32 %.089130.us.i, 1                ; 2 uses
  br i1 %.not133, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cl = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.cm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cl, ptr noundef nonnull @.str.24, i32 noundef %.178.lcssa.us.us180.i, i64 noundef %.293.i.lcssa, double noundef %i.cf) #35 ; 0 uses
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.split.us.us.i
  store i32 0, ptr %i.cg, align 4, !tbaa !11
  %i.cn = add i32 %.082135.us.i, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %.preheader110.split.us.i
  %.190.us.i = phi i32 [ %.089130.us.i, %.preheader110.split.us.i ], [ %.089130.us.i, %bb.t ], [ %i.ck, %bb.s ], [ %i.ck, %bb.r ] ; 2 uses
  %.183.us.i = phi i32 [ %.082135.us.i, %.preheader110.split.us.i ], [ %i.cn, %bb.t ], [ %.082135.us.i, %bb.s ], [ %.082135.us.i, %bb.r ] ; 2 uses
  %indvars.iv.next171.i = add nuw nsw i64 %indvars.iv170.i, 1 ; 2 uses
  %exitcond174.not.i = icmp eq i64 %indvars.iv.next171.i, %i.e
  br i1 %exitcond174.not.i, label %.split.us.i146, label %.preheader110.split.us.i, !llvm.loop !116

.preheader108.us.us.i:                            ; preds = %.loopexit109.us.us.i, %.preheader108.us.us.preheader.i
  %.076128.us.us.i = phi i32 [ %.4.us.us.us.i, %.loopexit109.us.us.i ], [ %i.ci, %.preheader108.us.us.preheader.i ] ; 2 uses
  %.077127.us.us.i = phi i32 [ %.481.us.us.us.i, %.loopexit109.us.us.i ], [ 1, %.preheader108.us.us.preheader.i ] ; 2 uses
  %i.co = icmp ult i32 %.076128.us.us.i, %1
  br i1 %i.co, label %.lr.ph.us.us.preheader.i, label %._crit_edge.split.us.us.i

.lr.ph.us.us.preheader.i:                         ; preds = %.preheader108.us.us.i
  %i.cp = zext i32 %.076128.us.us.i to i64
  br label %.lr.ph.us.us.i

.loopexit109.us.us.i:                             ; preds = %.loopexit.split.us.us.us.us.i
  %.not98.us.us.i = icmp eq i32 %.4.us.us.us.i, -1
  br i1 %.not98.us.us.i, label %._crit_edge.split.us.us.i, label %.preheader108.us.us.i, !llvm.loop !117

.lr.ph.us.us.i:                                   ; preds = %.loopexit.split.us.us.us.us.i, %.lr.ph.us.us.preheader.i
  %indvars.iv165.i = phi i64 [ %i.cp, %.lr.ph.us.us.preheader.i ], [ %indvars.iv.next166.i, %.loopexit.split.us.us.us.us.i ] ; 3 uses
  %.0122.us.us.us.i = phi i32 [ -1, %.lr.ph.us.us.preheader.i ], [ %.4.us.us.us.i, %.loopexit.split.us.us.us.us.i ] ; 2 uses
  %.178121.us.us.us.i = phi i32 [ %.077127.us.us.i, %.lr.ph.us.us.preheader.i ], [ %.481.us.us.us.i, %.loopexit.split.us.us.us.us.i ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv165.i
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !11
  %i.cs = icmp eq i32 %i.cr, %.089130.us.i
  br i1 %i.cs, label %.preheader.us.us.us.i, label %.loopexit.split.us.us.us.us.i

.loopexit.split.us.us.us.us.i:                    ; preds = %bb.x, %.lr.ph.us.us.i
  %.481.us.us.us.i = phi i32 [ %.178121.us.us.us.i, %.lr.ph.us.us.i ], [ %.380.us.us.us.us.i, %bb.x ] ; 3 uses
  %.4.us.us.us.i = phi i32 [ %.0122.us.us.us.i, %.lr.ph.us.us.i ], [ %.3.us.us.us.us.i, %bb.x ] ; 3 uses
  %indvars.iv.next166.i = add nuw nsw i64 %indvars.iv165.i, 1 ; 2 uses
  %exitcond169.not.i = icmp eq i64 %indvars.iv.next166.i, %i.e
  br i1 %exitcond169.not.i, label %.loopexit109.us.us.i, label %.lr.ph.us.us.i, !llvm.loop !118

.preheader.us.us.us.i:                            ; preds = %.lr.ph.us.us.i
  %i.ct = trunc nuw i64 %indvars.iv165.i to i32
  %i.cu = mul i32 %1, %i.ct
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %.preheader.us.us.us.i
  %indvars.iv160.i = phi i64 [ %indvars.iv.next161.i, %bb.x ], [ 0, %.preheader.us.us.us.i ] ; 3 uses
  %.1118.us.us.us.us.i = phi i32 [ %.3.us.us.us.us.i, %bb.x ], [ %.0122.us.us.us.i, %.preheader.us.us.us.i ] ; 4 uses
  %.279117.us.us.us.us.i = phi i32 [ %.380.us.us.us.us.i, %bb.x ], [ %.178121.us.us.us.i, %.preheader.us.us.us.i ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv160.i ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !11
  %.not100.us.us.us.us.i = icmp eq i32 %i.cw, 0
  br i1 %.not100.us.us.us.us.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cx = trunc nuw i64 %indvars.iv160.i to i32   ; 2 uses
  %i.cy = add i32 %i.cu, %i.cx
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cz
  %i.db = load i64, ptr %i.da, align 8, !tbaa !90 ; 2 uses
  %i.dc = uitofp i64 %i.db to float               ; 2 uses
  %i.dd = fsub float %i.dc, %i.ce
  %i.de = tail call float @llvm.fabs.f32(float %i.dd)
  %i.df = fmul float %.pre, %i.dc
  %i.dg = fcmp olt float %i.de, %i.df
  %.not101.us.us.us.us.i = icmp eq i64 %i.db, %.293.i.lcssa
  %or.cond107.us.us.us.us.i = select i1 %i.dg, i1 true, i1 %.not101.us.us.us.us.i
  br i1 %or.cond107.us.us.us.us.i, label %hwloc_compare_values.exit.thread.us.us.us.us.i, label %bb.x

hwloc_compare_values.exit.thread.us.us.us.us.i:   ; preds = %bb.w
  store i32 %.089130.us.i, ptr %i.cv, align 4, !tbaa !11
  %i.dh = add i32 %.279117.us.us.us.us.i, 1
  %i.di = icmp eq i32 %.1118.us.us.us.us.i, -1
  %spec.select103.us.us.us.us.i = select i1 %i.di, i32 %i.cx, i32 %.1118.us.us.us.us.i
  br label %bb.x

bb.x:                                             ; preds = %hwloc_compare_values.exit.thread.us.us.us.us.i, %bb.w, %bb.v
  %.380.us.us.us.us.i = phi i32 [ %.279117.us.us.us.us.i, %bb.v ], [ %.279117.us.us.us.us.i, %bb.w ], [ %i.dh, %hwloc_compare_values.exit.thread.us.us.us.us.i ] ; 2 uses
  %.3.us.us.us.us.i = phi i32 [ %.1118.us.us.us.us.i, %bb.v ], [ %.1118.us.us.us.us.i, %bb.w ], [ %spec.select103.us.us.us.us.i, %hwloc_compare_values.exit.thread.us.us.us.us.i ] ; 2 uses
  %indvars.iv.next161.i = add nuw nsw i64 %indvars.iv160.i, 1 ; 2 uses
  %exitcond164.not.i = icmp eq i64 %indvars.iv.next161.i, %i.e
  br i1 %exitcond164.not.i, label %.loopexit.split.us.us.us.us.i, label %bb.v, !llvm.loop !119

.preheader110.split.i:                            ; preds = %.preheader110.i, %bb.ad
end_hunk_1
begin_hunk_2_@hwloc__groups_by_distances:bb.a
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !121
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 40 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !122
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  store i32 900, ptr %i.fe, align 4, !tbaa !123
  %i.ff = load i32, ptr %i.ew, align 8, !tbaa !38
  %i.fg = load ptr, ptr %i.fc, align 8, !tbaa !122
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store i32 %i.ff, ptr %i.fh, align 8, !tbaa !123
  %i.fi = add nuw nsw i64 %indvars.iv251, 1       ; 3 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv251 ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph194, %bb.ah
  %indvars.iv246 = phi i64 [ 0, %.lr.ph194 ], [ %indvars.iv.next247, %bb.ah ] ; 3 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv246
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !11
  %i.fm = zext i32 %i.fl to i64
  %i.fn = icmp eq i64 %i.fi, %i.fm
  br i1 %i.fn, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv246
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !83
  %i.fq = tail call i32 @hwloc_obj_add_other_obj_sets(ptr noundef %i.ez, ptr noundef %i.fp) #28 ; 0 uses
  %i.fr = load i32, ptr %i.fj, align 4, !tbaa !11
  %i.fs = add i32 %i.fr, 1
  store i32 %i.fs, ptr %i.fj, align 4, !tbaa !11
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 2 uses
  %exitcond250.not = icmp eq i64 %indvars.iv.next247, %i.e
  br i1 %exitcond250.not, label %._crit_edge, label %bb.af, !llvm.loop !124

._crit_edge:                                      ; preds = %bb.ah
  %i.ft = tail call ptr @hwloc__insert_object_by_cpuset(ptr noundef %0, ptr noundef null, ptr noundef %i.ez, ptr noundef nonnull %i.ey) #28 ; 2 uses
  %.not141 = icmp eq ptr %i.ft, null
  %i.fu = zext i1 %.not141 to i32
  %spec.select = add i32 %.0196, %i.fu            ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv251
  store ptr %i.ft, ptr %i.fv, align 8, !tbaa !83
  %exitcond255.not = icmp eq i64 %i.fi, %i.ek
  br i1 %exitcond255.not, label %._crit_edge199, label %.lr.ph194, !llvm.loop !125

._crit_edge199:                                   ; preds = %._crit_edge
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !38
  %i.fy = add i32 %i.fx, 1
  store i32 %i.fy, ptr %i.fw, align 8, !tbaa !38
  %.not137 = icmp eq i32 %spec.select, 0
  br i1 %.not137, label %.lr.ph203.preheader, label %bb.ao

.lr.ph203.preheader:                              ; preds = %._crit_edge199
  %i.fz = mul i64 %i.el, %i.ek
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.es, i8 0, i64 %i.fz, i1 false)
  %xtraiter387 = and i64 %i.e, 1
  %i.ga = icmp eq i64 %i.h, 0
  %unroll_iter390 = and i64 %i.e, 4294967294
  %lcmp.mod388.not = icmp eq i64 %xtraiter387, 0
  %lcmp.mod389 = trunc i32 %1 to i1
  br label %.lr.ph203

.lr.ph203:                                        ; preds = %.lr.ph203.preheader, %.loopexit
  %indvars.iv261 = phi i64 [ 0, %.lr.ph203.preheader ], [ %indvars.iv.next262, %.loopexit ] ; 3 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv261
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !11 ; 2 uses
  %.not138 = icmp eq i32 %i.gc, 0
  br i1 %.not138, label %.loopexit, label %.preheader159

.preheader159:                                    ; preds = %.lr.ph203
  %i.gd = trunc nuw i64 %indvars.iv261 to i32
  %i.ge = mul i32 %1, %i.gd                       ; 3 uses
  %i.gf = add i32 %i.gc, -1
  %i.gg = mul i32 %i.gf, %i.ej
  %i.gh = add i32 %i.gg, -1                       ; 3 uses
  br i1 %i.ga, label %.epil.preheader386, label %.preheader159.new

.preheader159.new:                                ; preds = %.preheader159, %bb.al
  %indvars.iv256 = phi i64 [ %indvars.iv.next257.1, %bb.al ], [ 0, %.preheader159 ] ; 4 uses
  %niter391 = phi i64 [ %niter391.next.1, %bb.al ], [ 0, %.preheader159 ]
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv256
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !11 ; 2 uses
  %.not139 = icmp eq i32 %i.gj, 0
  br i1 %.not139, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.preheader159.new
  %i.gk = trunc nuw i64 %indvars.iv256 to i32
  %i.gl = add i32 %i.ge, %i.gk
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.gm
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !90
  %i.gp = add i32 %i.gh, %i.gj
  %i.gq = zext i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.gq ; 2 uses
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !90
  %i.gt = add i64 %i.gs, %i.go
  store i64 %i.gt, ptr %i.gr, align 8, !tbaa !90
  br label %bb.aj

bb.aj:                                            ; preds = %.preheader159.new, %bb.ai
  %indvars.iv.next257 = or disjoint i64 %indvars.iv256, 1 ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next257
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !11 ; 2 uses
  %.not139.1 = icmp eq i32 %i.gv, 0
  br i1 %.not139.1, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gw = trunc nuw i64 %indvars.iv.next257 to i32
  %i.gx = add i32 %i.ge, %i.gw
  %i.gy = zext i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.gy
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !90
  %i.hb = add i32 %i.gh, %i.gv
  %i.hc = zext i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.hc ; 2 uses
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !90
  %i.hf = add i64 %i.he, %i.ha
  store i64 %i.hf, ptr %i.hd, align 8, !tbaa !90
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %indvars.iv.next257.1 = add nuw nsw i64 %indvars.iv256, 2 ; 2 uses
  %niter391.next.1 = add nuw nsw i64 %niter391, 2 ; 2 uses
  %niter391.ncmp.1 = icmp eq i64 %niter391.next.1, %unroll_iter390
  br i1 %niter391.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader159.new, !llvm.loop !126

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.al
  br i1 %lcmp.mod388.not, label %.loopexit, label %.epil.preheader386

.epil.preheader386:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader159
  %indvars.iv256.epil.init = phi i64 [ 0, %.preheader159 ], [ %indvars.iv.next257.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod389)
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv256.epil.init
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !11 ; 2 uses
  %.not139.epil = icmp eq i32 %i.hh, 0
  br i1 %.not139.epil, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %.epil.preheader386
  %i.hi = trunc nuw i64 %indvars.iv256.epil.init to i32
  %i.hj = add i32 %i.ge, %i.hi
  %i.hk = zext i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.hk
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !90
  %i.hn = add i32 %i.gh, %i.hh
  %i.ho = zext i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.ho ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !90
  %i.hr = add i64 %i.hq, %i.hm
  store i64 %i.hr, ptr %i.hp, align 8, !tbaa !90
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.am, %.epil.preheader386, %.lr.ph203
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next262, %i.e
  br i1 %exitcond265.not, label %.preheader.preheader, label %.lr.ph203, !llvm.loop !127

.preheader.preheader:                             ; preds = %.loopexit
  %xtraiter394 = and i64 %i.ek, 1
  %i.hs = icmp eq i32 %i.ej, 1
  %unroll_iter398 = and i64 %i.ek, 4294967294
  %lcmp.mod395.not = icmp eq i64 %xtraiter394, 0
  %lcmp.mod397 = trunc i32 %i.ej to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.an
  %indvars.iv271 = phi i64 [ %indvars.iv.next272, %bb.an ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv271
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !11 ; 3 uses
  %i.hv = trunc nuw i64 %indvars.iv271 to i32
  %i.hw = mul i32 %i.ej, %i.hv                    ; 3 uses
  br i1 %i.hs, label %.epil.preheader393, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv266 = phi i64 [ %indvars.iv.next267.1, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter399 = phi i64 [ %niter399.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv266
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !11
  %i.hz = mul i32 %i.hy, %i.hu
  %i.ia = zext i32 %i.hz to i64
  %i.ib = trunc nuw i64 %indvars.iv266 to i32
  %i.ic = add i32 %i.hw, %i.ib
  %i.id = zext i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.id ; 2 uses
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !90
  %i.ig = udiv i64 %i.if, %i.ia
  store i64 %i.ig, ptr %i.ie, align 8, !tbaa !90
  %indvars.iv.next267 = or disjoint i64 %indvars.iv266, 1 ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv.next267
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !11
  %i.ij = mul i32 %i.ii, %i.hu
  %i.ik = zext i32 %i.ij to i64
  %i.il = trunc nuw i64 %indvars.iv.next267 to i32
  %i.im = add i32 %i.hw, %i.il
  %i.in = zext i32 %i.im to i64
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.in ; 2 uses
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !90
  %i.iq = udiv i64 %i.ip, %i.ik
  store i64 %i.iq, ptr %i.io, align 8, !tbaa !90
  %indvars.iv.next267.1 = add nuw nsw i64 %indvars.iv266, 2 ; 2 uses
  %niter399.next.1 = add nuw i64 %niter399, 2     ; 2 uses
  %niter399.ncmp.1 = icmp eq i64 %niter399.next.1, %unroll_iter398
  br i1 %niter399.ncmp.1, label %.unr-lcssa392, label %.preheader.new, !llvm.loop !128

.unr-lcssa392:                                    ; preds = %.preheader.new
  br i1 %lcmp.mod395.not, label %bb.an, label %.epil.preheader393

.epil.preheader393:                               ; preds = %.unr-lcssa392, %.preheader
  %indvars.iv266.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next267.1, %.unr-lcssa392 ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod397)
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv266.epil.init
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !11
  %i.it = mul i32 %i.is, %i.hu
  %i.iu = zext i32 %i.it to i64
  %i.iv = trunc nuw i64 %indvars.iv266.epil.init to i32
  %i.iw = add i32 %i.hw, %i.iv
  %i.ix = zext i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.ix ; 2 uses
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !90
  %i.ja = udiv i64 %i.iz, %i.iu
  store i64 %i.ja, ptr %i.iy, align 8, !tbaa !90
  br label %bb.an

bb.an:                                            ; preds = %.unr-lcssa392, %.epil.preheader393
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1 ; 2 uses
  %exitcond275.not = icmp eq i64 %indvars.iv.next272, %i.ek
  br i1 %exitcond275.not, label %._crit_edge206, label %.preheader, !llvm.loop !129

._crit_edge206:                                   ; preds = %bb.an
  tail call fastcc void @hwloc__groups_by_distances(ptr noundef %0, i32 noundef %i.ej, ptr noundef nonnull %i.em, ptr noundef nonnull %i.es, i64 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef 0)
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge199, %bb.ae, %._crit_edge206
  tail call void @free(ptr noundef %i.em) #28
  tail call void @free(ptr noundef %i.eo) #28
  tail call void @free(ptr noundef %i.es) #28
  br label %.thread

.thread:                                          ; preds = %hwloc__check_grouping_matrix.exit.thread, %.preheader164, %bb.ao
  tail call void @free(ptr noundef %i.g) #28
  br label %bb.ap

bb.ap:                                            ; preds = %bb.b, %bb.a, %.thread
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @hwloc_internal_distances_add_by_index(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(88) ptr @calloc(i64 noundef 1, i64 noundef 88) #33 ; 13 uses
  %.not21.i = icmp eq ptr %i.a, null
  br i1 %.not21.i, label %hwloc_backend_distances_add_create.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not22.i = icmp eq ptr %1, null
  br i1 %.not22.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noalias ptr @strdup(ptr noundef nonnull readonly %1) #28 ; 3 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !50
  %.not23.i = icmp eq ptr %i.b, null
  br i1 %.not23.i, label %hwloc_backend_distances_add_create.exit.thread.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = phi ptr [ %i.b, %bb.c ], [ null, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 %7, ptr %i.d, align 8, !tbaa !66
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 2, ptr %i.e, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  store i32 -1, ptr %i.f, align 4, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !57   ; 2 uses
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !57
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.h, ptr %i.j, align 8, !tbaa !79
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.l = icmp ugt i32 %4, 1
  %i.m = icmp ne ptr %5, null
  %or.cond.i = and i1 %i.l, %i.m
  %i.n = icmp ne ptr %6, null
  %or.cond3.i = and i1 %or.cond.i, %i.n
  br i1 %or.cond3.i, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.o = icmp ne i32 %2, -1
  %i.p = icmp ne ptr %3, null                     ; 2 uses
  %or.cond5.i = or i1 %i.o, %i.p
  br i1 %or.cond5.i, label %bb.f, label %.sink.split.i

bb.f:                                             ; preds = %bb.e
  %i.q = zext i32 %4 to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #30 ; 2 uses
  %.not35.i = icmp eq ptr %i.s, null
  br i1 %.not35.i, label %hwloc_backend_distances_add_values_by_index.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %4, ptr %i.k, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.s, ptr %i.t, align 8, !tbaa !53
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %5, ptr %i.u, align 8, !tbaa !52
  store i32 %2, ptr %i.f, align 4, !tbaa !74
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %3, ptr %i.v, align 8, !tbaa !51
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %6, ptr %i.w, align 8, !tbaa !54
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = or i64 %7, 16
  store i64 %i.x, ptr %i.d, align 8, !tbaa !66
  br label %bb.i

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  %i.y = tail call ptr @__errno_location() #32
  store i32 22, ptr %i.y, align 4, !tbaa !11
  br label %hwloc_backend_distances_add_values_by_index.exit

hwloc_backend_distances_add_values_by_index.exit: ; preds = %bb.f, %.sink.split.i
  tail call void @free(ptr noundef %i.c) #28
  br label %hwloc_backend_distances_add_create.exit.thread.sink.split

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = tail call i32 @hwloc_backend_distances_add_commit(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %8)
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %hwloc_backend_distances_add_create.exit.thread, label %bb.j

hwloc_backend_distances_add_create.exit.thread.sink.split: ; preds = %bb.c, %hwloc_backend_distances_add_values_by_index.exit
  tail call void @free(ptr noundef nonnull %i.a) #28
  br label %hwloc_backend_distances_add_create.exit.thread

hwloc_backend_distances_add_create.exit.thread:   ; preds = %hwloc_backend_distances_add_create.exit.thread.sink.split, %bb.a, %bb.i
  %.021 = phi ptr [ %5, %bb.a ], [ null, %bb.i ], [ %5, %hwloc_backend_distances_add_create.exit.thread.sink.split ]
  %.020 = phi ptr [ %6, %bb.a ], [ null, %bb.i ], [ %6, %hwloc_backend_distances_add_create.exit.thread.sink.split ]
  %.019 = phi ptr [ %3, %bb.a ], [ null, %bb.i ], [ %3, %hwloc_backend_distances_add_create.exit.thread.sink.split ]
  tail call void @free(ptr noundef %.021) #28
  tail call void @free(ptr noundef %.019) #28
  tail call void @free(ptr noundef %.020) #28
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %hwloc_backend_distances_add_create.exit.thread
  %.0 = phi i32 [ -1, %hwloc_backend_distances_add_create.exit.thread ], [ 0, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @hwloc_internal_distances_add(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(88) ptr @calloc(i64 noundef 1, i64 noundef 88) #33 ; 9 uses
  %.not21.i = icmp eq ptr %i.a, null
  br i1 %.not21.i, label %hwloc_backend_distances_add_create.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not22.i = icmp eq ptr %1, null
  br i1 %.not22.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noalias ptr @strdup(ptr noundef nonnull readonly %1) #28 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !50
  %.not23.i = icmp eq ptr %i.b, null
  br i1 %.not23.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.a) #28
  br label %hwloc_backend_distances_add_create.exit.thread

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %5, ptr %i.c, align 8, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 2, ptr %i.d, align 8, !tbaa !68
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 -1, ptr %i.e, align 4, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !57   ; 2 uses
  %i.h = add i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.g, ptr %i.i, align 8, !tbaa !79
  %i.j = tail call i32 @hwloc_backend_distances_add_values(ptr poison, ptr noundef nonnull %i.a, i32 noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef 0)
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %hwloc_backend_distances_add_create.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call i32 @hwloc_backend_distances_add_commit(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %6)
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %hwloc_backend_distances_add_create.exit.thread, label %bb.g

hwloc_backend_distances_add_create.exit.thread:   ; preds = %bb.d, %bb.a, %bb.f, %bb.e
  %.017 = phi ptr [ %4, %bb.e ], [ null, %bb.f ], [ %4, %bb.a ], [ %4, %bb.d ]
  %.016 = phi ptr [ %3, %bb.e ], [ null, %bb.f ], [ %3, %bb.a ], [ %3, %bb.d ]
  tail call void @free(ptr noundef %.016) #28
  tail call void @free(ptr noundef %.017) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %hwloc_backend_distances_add_create.exit.thread
  %.0 = phi i32 [ -1, %hwloc_backend_distances_add_create.exit.thread ], [ 0, %bb.f ]
  ret i32 %.0
end_hunk_2
begin_hunk_3_@hwloc_distances_get_by_depth:bb.a
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.b = load i32, ptr %i.a, align 4, !tbaa !72
  %.not13 = icmp eq i32 %i.b, 0
  br i1 %.not13, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call ptr @__errno_location() #32
  store i32 22, ptr %i.c, align 4, !tbaa !11
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @hwloc_get_depth_type(ptr noundef nonnull %0, i32 noundef %1) #29 ; 2 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = tail call ptr @__errno_location() #32
  store i32 22, ptr %i.f, align 4, !tbaa !11
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.g = tail call fastcc i32 @hwloc__distances_get(ptr noundef nonnull %0, ptr noundef null, i32 noundef %i.d, ptr noundef %2, ptr noundef %3, i64 noundef %4)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.e ], [ %i.g, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @hwloc_distances_get_by_name(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.b = load i32, ptr %i.a, align 4, !tbaa !72
  %.not8 = icmp eq i32 %i.b, 0
  br i1 %.not8, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call ptr @__errno_location() #32
  store i32 22, ptr %i.c, align 4, !tbaa !11
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = tail call fastcc i32 @hwloc__distances_get(ptr noundef nonnull %0, ptr noundef %1, i32 noundef -1, ptr noundef %2, ptr noundef %3, i64 noundef 31)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ -1, %bb.c ], [ %i.d, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @hwloc_distances_get_by_type(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.b = load i32, ptr %i.a, align 4, !tbaa !72
  %.not9 = icmp eq i32 %i.b, 0
  br i1 %.not9, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call ptr @__errno_location() #32
  store i32 22, ptr %i.c, align 4, !tbaa !11
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = tail call fastcc i32 @hwloc__distances_get(ptr noundef nonnull %0, ptr noundef null, i32 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ -1, %bb.c ], [ %i.d, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -1, 1) i32 @hwloc_distances_transform(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef readnone captures(address_is_null) %3, i64 noundef %4) local_unnamed_addr #22 {
bb.a:
  %i.a = icmp ne i64 %4, 0
  %i.b = icmp ne ptr %3, null
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #32
  store i32 22, ptr %i.c, align 4, !tbaa !11
  br label %hwloc__distances_transform_links.exit

bb.c:                                             ; preds = %bb.a
  switch i32 %2, label %bb.ad [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.i
    i32 3, label %bb.q
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = tail call fastcc i32 @hwloc__distances_transform_remove_null(ptr noundef %1)
  br label %hwloc__distances_transform_links.exit

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !81   ; 14 uses
  %i.g = load i32, ptr %1, align 8, !tbaa !140    ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !141
  %i.j = and i64 %i.i, 8
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.loopexit.sink.split.i, label %.preheader52.i

.preheader52.i:                                   ; preds = %bb.e
  %.not62.i = icmp eq i32 %i.g, 0
  br i1 %.not62.i, label %.preheader51.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader52.i
  %.048.i = add i32 %i.g, 1                       ; 5 uses
  %wide.trip.count.i = zext i32 %i.g to i64       ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.k = icmp ult i32 %i.g, 4
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967292
  br label %bb.g

.preheader51.i.loopexit.unr-lcssa:                ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader51.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader51.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %.preheader51.i.loopexit.unr-lcssa ]
  %lcmp.mod74 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod74)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.l = trunc nuw i64 %indvars.iv.i.epil to i32
  %i.m = mul i32 %.048.i, %i.l
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.n
  store i64 0, ptr %i.o, align 8, !tbaa !90
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader51.i, label %bb.f, !llvm.loop !144

.preheader51.i:                                   ; preds = %.preheader51.i.loopexit.unr-lcssa, %bb.f, %.preheader52.i
  %i.p = mul i32 %i.g, %i.g                       ; 5 uses
  %.not63.i = icmp eq i32 %i.p, 0
  br i1 %.not63.i, label %hwloc__distances_transform_links.exit, label %.lr.ph56.preheader.i

.lr.ph56.preheader.i:                             ; preds = %.preheader51.i
  %wide.trip.count71.i = zext i32 %i.p to i64     ; 5 uses
  %xtraiter75 = and i64 %wide.trip.count71.i, 3   ; 3 uses
  %i.q = icmp ult i32 %i.p, 4
  br i1 %i.q, label %.lr.ph56.i.epil.preheader, label %.lr.ph56.preheader.i.new

.lr.ph56.preheader.i.new:                         ; preds = %.lr.ph56.preheader.i
  %unroll_iter80 = and i64 %wide.trip.count71.i, 4294967292
  br label %.lr.ph56.i

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.g ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.g ]
  %i.r = trunc nuw i64 %indvars.iv.i to i32
  %i.s = mul i32 %.048.i, %i.r
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.t
  store i64 0, ptr %i.u, align 8, !tbaa !90
  %i.v = trunc i64 %indvars.iv.i to i32
  %i.w = or disjoint i32 %i.v, 1
  %i.x = mul i32 %.048.i, %i.w
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.y
  store i64 0, ptr %i.z, align 8, !tbaa !90
  %i.aa = trunc i64 %indvars.iv.i to i32
  %i.ab = or disjoint i32 %i.aa, 2
  %i.ac = mul i32 %.048.i, %i.ab
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ad
  store i64 0, ptr %i.ae, align 8, !tbaa !90
  %i.af = trunc i64 %indvars.iv.i to i32
  %i.ag = or disjoint i32 %i.af, 3
  %i.ah = mul i32 %.048.i, %i.ag
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ai
  store i64 0, ptr %i.aj, align 8, !tbaa !90
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader51.i.loopexit.unr-lcssa, label %bb.g, !llvm.loop !145

.lr.ph56.i:                                       ; preds = %.lr.ph56.i, %.lr.ph56.preheader.i.new
  %indvars.iv68.i = phi i64 [ 0, %.lr.ph56.preheader.i.new ], [ %indvars.iv.next69.i.3, %.lr.ph56.i ] ; 5 uses
  %.037.fr55.i = phi i64 [ 0, %.lr.ph56.preheader.i.new ], [ %.037.fr.i.3, %.lr.ph56.i ] ; 2 uses
  %niter81 = phi i64 [ 0, %.lr.ph56.preheader.i.new ], [ %niter81.next.3, %.lr.ph56.i ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv68.i
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !90 ; 2 uses
  %i.am = add i64 %.037.fr55.i, -1
  %i.an = add i64 %i.al, -1
  %.not49.i = icmp ult i64 %i.an, %i.am
  %.138.i = select i1 %.not49.i, i64 %i.al, i64 %.037.fr55.i
  %.037.fr.i = freeze i64 %.138.i                 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv68.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !90 ; 2 uses
  %i.ar = add i64 %.037.fr.i, -1
  %i.as = add i64 %i.aq, -1
  %.not49.i.1 = icmp ult i64 %i.as, %i.ar
  %.138.i.1 = select i1 %.not49.i.1, i64 %i.aq, i64 %.037.fr.i
  %.037.fr.i.1 = freeze i64 %.138.i.1             ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv68.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !90 ; 2 uses
  %i.aw = add i64 %.037.fr.i.1, -1
  %i.ax = add i64 %i.av, -1
  %.not49.i.2 = icmp ult i64 %i.ax, %i.aw
  %.138.i.2 = select i1 %.not49.i.2, i64 %i.av, i64 %.037.fr.i.1
  %.037.fr.i.2 = freeze i64 %.138.i.2             ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv68.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !90 ; 2 uses
  %i.bb = add i64 %.037.fr.i.2, -1
  %i.bc = add i64 %i.ba, -1
  %.not49.i.3 = icmp ult i64 %i.bc, %i.bb
  %.138.i.3 = select i1 %.not49.i.3, i64 %i.ba, i64 %.037.fr.i.2
  %indvars.iv.next69.i.3 = add nuw nsw i64 %indvars.iv68.i, 4 ; 2 uses
  %.037.fr.i.3 = freeze i64 %.138.i.3             ; 3 uses
  %niter81.next.3 = add nuw i64 %niter81, 4       ; 2 uses
  %niter81.ncmp.3 = icmp eq i64 %niter81.next.3, %unroll_iter80
  br i1 %niter81.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.lr.ph56.i, !llvm.loop !146

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph56.i
  %lcmp.mod77.not = icmp eq i64 %xtraiter75, 0
  br i1 %lcmp.mod77.not, label %._crit_edge.i, label %.lr.ph56.i.epil.preheader

.lr.ph56.i.epil.preheader:                        ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph56.preheader.i
  %indvars.iv68.i.epil.init = phi i64 [ 0, %.lr.ph56.preheader.i ], [ %indvars.iv.next69.i.3, %._crit_edge.i.unr-lcssa ]
  %.037.fr55.i.epil.init = phi i64 [ 0, %.lr.ph56.preheader.i ], [ %.037.fr.i.3, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod79 = icmp ne i64 %xtraiter75, 0
  tail call void @llvm.assume(i1 %lcmp.mod79)
  br label %.lr.ph56.i.epil

.lr.ph56.i.epil:                                  ; preds = %.lr.ph56.i.epil, %.lr.ph56.i.epil.preheader
  %indvars.iv68.i.epil = phi i64 [ %indvars.iv68.i.epil.init, %.lr.ph56.i.epil.preheader ], [ %indvars.iv.next69.i.epil, %.lr.ph56.i.epil ] ; 2 uses
  %.037.fr55.i.epil = phi i64 [ %.037.fr55.i.epil.init, %.lr.ph56.i.epil.preheader ], [ %.037.fr.i.epil, %.lr.ph56.i.epil ] ; 2 uses
  %epil.iter76 = phi i64 [ 0, %.lr.ph56.i.epil.preheader ], [ %epil.iter76.next, %.lr.ph56.i.epil ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv68.i.epil
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !90 ; 2 uses
  %i.bf = add i64 %.037.fr55.i.epil, -1
  %i.bg = add i64 %i.be, -1
  %.not49.i.epil = icmp ult i64 %i.bg, %i.bf
  %.138.i.epil = select i1 %.not49.i.epil, i64 %i.be, i64 %.037.fr55.i.epil
  %indvars.iv.next69.i.epil = add nuw nsw i64 %indvars.iv68.i.epil, 1
  %.037.fr.i.epil = freeze i64 %.138.i.epil       ; 2 uses
  %epil.iter76.next = add i64 %epil.iter76, 1     ; 2 uses
  %epil.iter76.cmp.not = icmp eq i64 %epil.iter76.next, %xtraiter75
  br i1 %epil.iter76.cmp.not, label %._crit_edge.i, label %.lr.ph56.i.epil, !llvm.loop !147

._crit_edge.i:                                    ; preds = %.lr.ph56.i.epil, %._crit_edge.i.unr-lcssa
  %.037.fr.i.lcssa = phi i64 [ %.037.fr.i.3, %._crit_edge.i.unr-lcssa ], [ %.037.fr.i.epil, %.lr.ph56.i.epil ] ; 5 uses
  %.not44.i = icmp eq i64 %.037.fr.i.lcssa, 0
  br i1 %.not44.i, label %hwloc__distances_transform_links.exit, label %.lr.ph59.i

bb.h:                                             ; preds = %.lr.ph59.i
  %indvars.iv.next74.i = add nuw nsw i64 %indvars.iv73.i, 1 ; 2 uses
  %exitcond77.not.i = icmp eq i64 %indvars.iv.next74.i, %wide.trip.count71.i
  br i1 %exitcond77.not.i, label %.lr.ph61.i.preheader, label %.lr.ph59.i, !llvm.loop !148

.lr.ph61.i.preheader:                             ; preds = %bb.h
  %xtraiter82 = and i64 %wide.trip.count71.i, 1
  %i.bh = icmp eq i32 %i.p, 1
  br i1 %i.bh, label %.lr.ph61.i.epil.preheader, label %.lr.ph61.i.preheader.new

.lr.ph61.i.preheader.new:                         ; preds = %.lr.ph61.i.preheader
  %unroll_iter86 = and i64 %wide.trip.count71.i, 4294967294
  br label %.lr.ph61.i

.lr.ph59.i:                                       ; preds = %._crit_edge.i, %bb.h
  %indvars.iv73.i = phi i64 [ %indvars.iv.next74.i, %bb.h ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv73.i
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !90
  %i.bk = urem i64 %i.bj, %.037.fr.i.lcssa
  %.not45.i = icmp eq i64 %i.bk, 0
  br i1 %.not45.i, label %bb.h, label %.loopexit.sink.split.i

.lr.ph61.i:                                       ; preds = %.lr.ph61.i, %.lr.ph61.i.preheader.new
  %indvars.iv78.i = phi i64 [ 0, %.lr.ph61.i.preheader.new ], [ %indvars.iv.next79.i.1, %.lr.ph61.i ] ; 3 uses
  %niter87 = phi i64 [ 0, %.lr.ph61.i.preheader.new ], [ %niter87.next.1, %.lr.ph61.i ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv78.i ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !90
  %i.bn = udiv i64 %i.bm, %.037.fr.i.lcssa
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !90
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv78.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !90
  %i.br = udiv i64 %i.bq, %.037.fr.i.lcssa
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !90
  %indvars.iv.next79.i.1 = add nuw nsw i64 %indvars.iv78.i, 2 ; 2 uses
  %niter87.next.1 = add nuw i64 %niter87, 2       ; 2 uses
  %niter87.ncmp.1 = icmp eq i64 %niter87.next.1, %unroll_iter86
  br i1 %niter87.ncmp.1, label %hwloc__distances_transform_links.exit.loopexit.unr-lcssa, label %.lr.ph61.i, !llvm.loop !149

.loopexit.sink.split.i:                           ; preds = %.lr.ph59.i, %bb.e
  %.sink.i = phi i32 [ 22, %bb.e ], [ 2, %.lr.ph59.i ]
  %i.bs = tail call ptr @__errno_location() #32
  store i32 %.sink.i, ptr %i.bs, align 4, !tbaa !11
  br label %hwloc__distances_transform_links.exit

bb.i:                                             ; preds = %bb.c
  %i.bt = getelementptr i8, ptr %0, i64 704
  %.val = load ptr, ptr %i.bt, align 8, !tbaa !58, !nonnull !150, !noundef !150 ; 3 uses
  %i.bu = getelementptr inbounds i8, ptr %1, i64 -8
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !76 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !79
  %i.by = icmp eq i32 %i.bx, %i.bv
  br i1 %i.by, label %hwloc__internal_distances_from_public.exit.i, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %bb.i, %.lr.ph.i16
  %.011.i6.i = phi ptr [ %.0.i.i, %.lr.ph.i16 ], [ %.val, %bb.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.011.i6.i, i64 80
  %.0.i.i = load ptr, ptr %i.bz, align 8, !tbaa !58, !nonnull !150, !noundef !150 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !79
  %i.cc = icmp eq i32 %i.cb, %i.bv
  br i1 %i.cc, label %hwloc__internal_distances_from_public.exit.i, label %.lr.ph.i16

hwloc__internal_distances_from_public.exit.i:     ; preds = %.lr.ph.i16, %bb.i
  %.011.i.lcssa.i = phi ptr [ %.val, %bb.i ], [ %.0.i.i, %.lr.ph.i16 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !82 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !81 ; 6 uses
  %i.ch = load i32, ptr %1, align 8, !tbaa !140   ; 7 uses
  %i.ci = load ptr, ptr %.011.i.lcssa.i, align 8, !tbaa !50
  %i.cj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ci, ptr noundef nonnull dereferenceable(16) @.str.25) #29
  %.not.i17 = icmp eq i32 %i.cj, 0
  br i1 %.not.i17, label %.preheader4.i, label %hwloc__distances_transform_merge_switch_ports.exit

.preheader4.i:                                    ; preds = %hwloc__internal_distances_from_public.exit.i
  %.not13.i = icmp eq i32 %i.ch, 0
  br i1 %.not13.i, label %hwloc__distances_transform_merge_switch_ports.exit, label %.lr.ph8.preheader.i

.lr.ph8.preheader.i:                              ; preds = %.preheader4.i
  %wide.trip.count.i20 = zext i32 %i.ch to i64    ; 3 uses
  br label %.lr.ph8.i

.lr.ph8.i:                                        ; preds = %is_nvswitch.exit.thread.i, %.lr.ph8.preheader.i
  %indvars.iv22.i = phi i64 [ 1, %.lr.ph8.preheader.i ], [ %indvars.iv.next23.i, %is_nvswitch.exit.thread.i ] ; 2 uses
  %indvars.iv.i21 = phi i64 [ 0, %.lr.ph8.preheader.i ], [ %indvars.iv.next.i22, %is_nvswitch.exit.thread.i ] ; 4 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.i21
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !83 ; 2 uses
  %.not.i73.i = icmp eq ptr %i.cl, null
  br i1 %.not.i73.i, label %is_nvswitch.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph8.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !151 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.cn, null
  br i1 %.not4.i.i, label %is_nvswitch.exit.thread.i, label %is_nvswitch.exit.i

is_nvswitch.exit.i:                               ; preds = %bb.j
  %i.co = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cn, ptr noundef nonnull dereferenceable(9) @.str.26) #29
  %.not5.i.not.i = icmp eq i32 %i.co, 0
  br i1 %.not5.i.not.i, label %.preheader3.i, label %is_nvswitch.exit.thread.i

.preheader3.i:                                    ; preds = %is_nvswitch.exit.i
  %i.cp = trunc nuw i64 %indvars.iv.i21 to i32    ; 4 uses
  %.06410.i = add i32 %i.cp, 1
  %i.cq = icmp ult i32 %.06410.i, %i.ch
  br i1 %i.cq, label %.lr.ph12.i, label %.loopexit

.lr.ph12.i:                                       ; preds = %.preheader3.i
  %i.cr = mul i32 %i.ch, %i.cp
  %.06471.i = add i32 %i.ch, 1                    ; 2 uses
  %i.cs = mul i32 %.06471.i, %i.cp
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ct ; 2 uses
  br label %bb.k

is_nvswitch.exit.thread.i:                        ; preds = %is_nvswitch.exit.i, %bb.j, %.lr.ph8.i
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i21, 1 ; 2 uses
  %exitcond.not.i23 = icmp eq i64 %indvars.iv.next.i22, %wide.trip.count.i20
  %indvars.iv.next23.i = add nuw nsw i64 %indvars.iv22.i, 1
  br i1 %exitcond.not.i23, label %hwloc__distances_transform_merge_switch_ports.exit, label %.lr.ph8.i, !llvm.loop !152

bb.k:                                             ; preds = %is_nvswitch.exit77.thread.i, %.lr.ph12.i
  %indvars.iv25.i = phi i64 [ %indvars.iv22.i, %.lr.ph12.i ], [ %indvars.iv.next26.i, %is_nvswitch.exit77.thread.i ] ; 4 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv25.i ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !83 ; 2 uses
  %.not.i74.i = icmp eq ptr %i.cw, null
  br i1 %.not.i74.i, label %is_nvswitch.exit77.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !151 ; 2 uses
  %.not4.i75.i = icmp eq ptr %i.cy, null
  br i1 %.not4.i75.i, label %is_nvswitch.exit77.thread.i, label %is_nvswitch.exit77.i

is_nvswitch.exit77.i:                             ; preds = %bb.l
  %i.cz = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cy, ptr noundef nonnull dereferenceable(9) @.str.26) #29
  %.not5.i76.not.i = icmp eq i32 %i.cz, 0
  br i1 %.not5.i76.not.i, label %.preheader.i24, label %is_nvswitch.exit77.thread.i

.preheader.i24:                                   ; preds = %is_nvswitch.exit77.i
  %i.da = trunc nuw i64 %indvars.iv25.i to i32    ; 3 uses
  %i.db = mul i32 %i.ch, %i.da
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.preheader.i24
  %indvars.iv16.i = phi i64 [ 0, %.preheader.i24 ], [ %indvars.iv.next17.i, %bb.o ] ; 4 uses
  %i.dc = icmp eq i64 %indvars.iv16.i, %indvars.iv.i21
  %i.dd = icmp eq i64 %indvars.iv16.i, %indvars.iv25.i
  %or.cond.i = or i1 %i.dc, %i.dd
  br i1 %or.cond.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.de = trunc nuw i64 %indvars.iv16.i to i32    ; 3 uses
  %i.df = mul i32 %i.ch, %i.de                    ; 2 uses
  %i.dg = add i32 %i.df, %i.da
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.dh ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !90
  %i.dk = add i32 %i.df, %i.cp
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.dl ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !90
  %i.do = add i64 %i.dn, %i.dj
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !90
  store i64 0, ptr %i.di, align 8, !tbaa !90
  %i.dp = add i32 %i.db, %i.de
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.dq ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !90
  %i.dt = add i32 %i.cr, %i.de
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.du ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !90
  %i.dx = add i64 %i.dw, %i.ds
  store i64 %i.dx, ptr %i.dv, align 8, !tbaa !90
  store i64 0, ptr %i.dr, align 8, !tbaa !90
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1 ; 2 uses
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next17.i, %wide.trip.count.i20
  br i1 %exitcond20.not.i, label %bb.p, label %bb.m, !llvm.loop !153

bb.p:                                             ; preds = %bb.o
  %i.dy = mul i32 %.06471.i, %i.da
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.dz ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !90
  %i.ec = load i64, ptr %i.cu, align 8, !tbaa !90
  %i.ed = add i64 %i.ec, %i.eb
  store i64 %i.ed, ptr %i.cu, align 8, !tbaa !90
  store i64 0, ptr %i.ea, align 8, !tbaa !90
  br label %is_nvswitch.exit77.thread.i

is_nvswitch.exit77.thread.i:                      ; preds = %bb.p, %is_nvswitch.exit77.i, %bb.l, %bb.k
  store ptr null, ptr %i.cv, align 8, !tbaa !83
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next26.i, %wide.trip.count.i20
  br i1 %exitcond, label %.loopexit, label %bb.k, !llvm.loop !154

hwloc__distances_transform_merge_switch_ports.exit: ; preds = %is_nvswitch.exit.thread.i, %hwloc__internal_distances_from_public.exit.i, %.preheader4.i
  %.sink.i19 = phi i32 [ 22, %hwloc__internal_distances_from_public.exit.i ], [ 2, %.preheader4.i ], [ 2, %is_nvswitch.exit.thread.i ]
  %i.ee = tail call ptr @__errno_location() #32
  store i32 %.sink.i19, ptr %i.ee, align 4, !tbaa !11
  br label %hwloc__distances_transform_links.exit

.loopexit:                                        ; preds = %is_nvswitch.exit77.thread.i, %.preheader3.i
  %i.ef = tail call fastcc i32 @hwloc__distances_transform_remove_null(ptr noundef nonnull %1)
  br label %hwloc__distances_transform_links.exit

bb.q:                                             ; preds = %bb.c
  %i.eg = getelementptr i8, ptr %0, i64 704
  %.val15 = load ptr, ptr %i.eg, align 8, !tbaa !58, !nonnull !150, !noundef !150 ; 3 uses
  %i.eh = getelementptr inbounds i8, ptr %1, i64 -8
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !76 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.val15, i64 8
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !79
  %i.el = icmp eq i32 %i.ek, %i.ei
  br i1 %i.el, label %hwloc__internal_distances_from_public.exit.i27, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %bb.q, %.lr.ph.i25
  %.011.i8.i = phi ptr [ %.0.i.i26, %.lr.ph.i25 ], [ %.val15, %bb.q ]
  %i.em = getelementptr inbounds nuw i8, ptr %.011.i8.i, i64 80
  %.0.i.i26 = load ptr, ptr %i.em, align 8, !tbaa !58, !nonnull !150, !noundef !150 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.0.i.i26, i64 8
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !79
  %i.ep = icmp eq i32 %i.eo, %i.ei
  br i1 %i.ep, label %hwloc__internal_distances_from_public.exit.i27, label %.lr.ph.i25

hwloc__internal_distances_from_public.exit.i27:   ; preds = %.lr.ph.i25, %bb.q
  %.011.i.lcssa.i28 = phi ptr [ %.val15, %bb.q ], [ %.0.i.i26, %.lr.ph.i25 ]
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !82 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !81 ; 3 uses
  %i.eu = load i32, ptr %1, align 8, !tbaa !140   ; 4 uses
  %i.ev = load ptr, ptr %.011.i.lcssa.i28, align 8, !tbaa !50
  %i.ew = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ev, ptr noundef nonnull dereferenceable(16) @.str.25) #29
  %.not.i29 = icmp eq i32 %i.ew, 0
  br i1 %.not.i29, label %.preheader6.i, label %bb.r

.preheader6.i:                                    ; preds = %hwloc__internal_distances_from_public.exit.i27
  %.not16.i = icmp eq i32 %i.eu, 0
  br i1 %.not16.i, label %hwloc__distances_transform_links.exit, label %.lr.ph15.preheader.i

.lr.ph15.preheader.i:                             ; preds = %.preheader6.i
  %wide.trip.count31.i = zext i32 %i.eu to i64    ; 4 uses
  br label %.lr.ph15.i

bb.r:                                             ; preds = %hwloc__internal_distances_from_public.exit.i27
  %i.ex = tail call ptr @__errno_location() #32
  store i32 22, ptr %i.ex, align 4, !tbaa !11
  br label %hwloc__distances_transform_links.exit

.lr.ph15.i:                                       ; preds = %.loopexit.i, %.lr.ph15.preheader.i
  %indvars.iv28.i = phi i64 [ 0, %.lr.ph15.preheader.i ], [ %indvars.iv.next29.i, %.loopexit.i ] ; 4 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv28.i
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !83 ; 2 uses
  %.not.i58.i = icmp eq ptr %i.ez, null
  br i1 %.not.i58.i, label %.preheader5.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph15.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !151 ; 2 uses
  %.not4.i.i30 = icmp eq ptr %i.fb, null
  br i1 %.not4.i.i30, label %.preheader5.i, label %is_nvswitch.exit.i31

is_nvswitch.exit.i31:                             ; preds = %bb.s
  %i.fc = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fb, ptr noundef nonnull dereferenceable(9) @.str.26) #29
  %.not5.i.not.i32 = icmp eq i32 %i.fc, 0
  br i1 %.not5.i.not.i32, label %.loopexit.i, label %.preheader5.i

.preheader5.i:                                    ; preds = %is_nvswitch.exit.i31, %bb.s, %.lr.ph15.i
  %i.fd = trunc nuw i64 %indvars.iv28.i to i32
  %i.fe = mul i32 %i.eu, %i.fd                    ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %is_nvswitch.exit62.thread.i, %.preheader5.i
  %indvars.iv.i33 = phi i64 [ 0, %.preheader5.i ], [ %indvars.iv.next.i34, %is_nvswitch.exit62.thread.i ] ; 3 uses
  %.04610.i = phi i64 [ 0, %.preheader5.i ], [ %.147.i, %is_nvswitch.exit62.thread.i ] ; 4 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv.i33
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !83 ; 2 uses
  %.not.i59.i = icmp eq ptr %i.fg, null
  br i1 %.not.i59.i, label %is_nvswitch.exit62.thread.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !151 ; 2 uses
  %.not4.i60.i = icmp eq ptr %i.fi, null
  br i1 %.not4.i60.i, label %is_nvswitch.exit62.thread.i, label %is_nvswitch.exit62.i

is_nvswitch.exit62.i:                             ; preds = %bb.u
  %i.fj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fi, ptr noundef nonnull dereferenceable(9) @.str.26) #29
  %.not5.i61.not.i = icmp eq i32 %i.fj, 0
  br i1 %.not5.i61.not.i, label %bb.v, label %is_nvswitch.exit62.thread.i

bb.v:                                             ; preds = %is_nvswitch.exit62.i
  %i.fk = trunc nuw i64 %indvars.iv.i33 to i32
  %i.fl = add i32 %i.fe, %i.fk
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.fm
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !90
  %i.fp = add i64 %i.fo, %.04610.i
  br label %is_nvswitch.exit62.thread.i

is_nvswitch.exit62.thread.i:                      ; preds = %bb.v, %is_nvswitch.exit62.i, %bb.u, %bb.t
  %.147.i = phi i64 [ %i.fp, %bb.v ], [ %.04610.i, %is_nvswitch.exit62.i ], [ %.04610.i, %bb.u ], [ %.04610.i, %bb.t ] ; 2 uses
  %indvars.iv.next.i34 = add nuw nsw i64 %indvars.iv.i33, 1 ; 2 uses
  %exitcond.not.i35 = icmp eq i64 %indvars.iv.next.i34, %wide.trip.count31.i
  br i1 %exitcond.not.i35, label %.preheader4.i36, label %bb.t, !llvm.loop !155

.preheader4.i36:                                  ; preds = %is_nvswitch.exit62.thread.i, %bb.ac
  %indvars.iv23.i = phi i64 [ %indvars.iv.next24.i, %bb.ac ], [ 0, %is_nvswitch.exit62.thread.i ] ; 4 uses
  %i.fq = icmp eq i64 %indvars.iv28.i, %indvars.iv23.i
  br i1 %i.fq, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %.preheader4.i36
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv23.i
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !83 ; 2 uses
  %.not.i63.i = icmp eq ptr %i.fs, null
  br i1 %.not.i63.i, label %.preheader.i37, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !151 ; 2 uses
  %.not4.i64.i = icmp eq ptr %i.fu, null
  br i1 %.not4.i64.i, label %.preheader.i37, label %is_nvswitch.exit66.i

is_nvswitch.exit66.i:                             ; preds = %bb.x
  %i.fv = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fu, ptr noundef nonnull dereferenceable(9) @.str.26) #29
  %.not5.i65.not.i = icmp eq i32 %i.fv, 0
  br i1 %.not5.i65.not.i, label %bb.ac, label %.preheader.i37

.preheader.i37:                                   ; preds = %is_nvswitch.exit66.i, %bb.x, %bb.w
  %i.fw = trunc nuw i64 %indvars.iv23.i to i32    ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %is_nvswitch.exit70.thread.i, %.preheader.i37
  %indvars.iv18.i = phi i64 [ 0, %.preheader.i37 ], [ %indvars.iv.next19.i, %is_nvswitch.exit70.thread.i ] ; 3 uses
  %.012.i = phi i64 [ 0, %.preheader.i37 ], [ %.1.i, %is_nvswitch.exit70.thread.i ] ; 4 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv18.i
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !83 ; 2 uses
  %.not.i67.i = icmp eq ptr %i.fy, null
  br i1 %.not.i67.i, label %is_nvswitch.exit70.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !151 ; 2 uses
  %.not4.i68.i = icmp eq ptr %i.ga, null
  br i1 %.not4.i68.i, label %is_nvswitch.exit70.thread.i, label %is_nvswitch.exit70.i

is_nvswitch.exit70.i:                             ; preds = %bb.z
  %i.gb = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ga, ptr noundef nonnull dereferenceable(9) @.str.26) #29
  %.not5.i69.not.i = icmp eq i32 %i.gb, 0
  br i1 %.not5.i69.not.i, label %bb.aa, label %is_nvswitch.exit70.thread.i

bb.aa:                                            ; preds = %is_nvswitch.exit70.i
  %i.gc = trunc nuw i64 %indvars.iv18.i to i32
  %i.gd = mul i32 %i.eu, %i.gc
  %i.ge = add i32 %i.gd, %i.fw
  %i.gf = zext i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.gf
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !90
  %i.gi = add i64 %i.gh, %.012.i
  br label %is_nvswitch.exit70.thread.i

is_nvswitch.exit70.thread.i:                      ; preds = %bb.aa, %is_nvswitch.exit70.i, %bb.z, %bb.y
  %.1.i = phi i64 [ %i.gi, %bb.aa ], [ %.012.i, %is_nvswitch.exit70.i ], [ %.012.i, %bb.z ], [ %.012.i, %bb.y ] ; 2 uses
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1 ; 2 uses
  %exitcond22.not.i = icmp eq i64 %indvars.iv.next19.i, %wide.trip.count31.i
  br i1 %exitcond22.not.i, label %bb.ab, label %bb.y, !llvm.loop !156

bb.ab:                                            ; preds = %is_nvswitch.exit70.thread.i
  %i.gj = tail call i64 @llvm.umin.i64(i64 %.147.i, i64 %.1.i)
  %i.gk = add i32 %i.fe, %i.fw
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.gl
  store i64 %i.gj, ptr %i.gm, align 8, !tbaa !90
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %is_nvswitch.exit66.i, %.preheader4.i36
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1 ; 2 uses
  %exitcond27.not.i = icmp eq i64 %indvars.iv.next24.i, %wide.trip.count31.i
  br i1 %exitcond27.not.i, label %.loopexit.i, label %.preheader4.i36, !llvm.loop !157

.loopexit.i:                                      ; preds = %bb.ac, %is_nvswitch.exit.i31
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1 ; 2 uses
  %exitcond32.not.i = icmp eq i64 %indvars.iv.next29.i, %wide.trip.count31.i
  br i1 %exitcond32.not.i, label %hwloc__distances_transform_links.exit, label %.lr.ph15.i, !llvm.loop !158

bb.ad:                                            ; preds = %bb.c
  %i.gn = tail call ptr @__errno_location() #32
  store i32 22, ptr %i.gn, align 4, !tbaa !11
  br label %hwloc__distances_transform_links.exit

hwloc__distances_transform_links.exit.loopexit.unr-lcssa: ; preds = %.lr.ph61.i
  %lcmp.mod84.not = icmp eq i64 %xtraiter82, 0
  br i1 %lcmp.mod84.not, label %hwloc__distances_transform_links.exit, label %.lr.ph61.i.epil.preheader

.lr.ph61.i.epil.preheader:                        ; preds = %hwloc__distances_transform_links.exit.loopexit.unr-lcssa, %.lr.ph61.i.preheader
  %indvars.iv78.i.epil.init = phi i64 [ 0, %.lr.ph61.i.preheader ], [ %indvars.iv.next79.i.1, %hwloc__distances_transform_links.exit.loopexit.unr-lcssa ]
  %lcmp.mod85 = trunc i32 %i.p to i1
  tail call void @llvm.assume(i1 %lcmp.mod85)
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv78.i.epil.init ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !90
  %i.gq = udiv i64 %i.gp, %.037.fr.i.lcssa
  store i64 %i.gq, ptr %i.go, align 8, !tbaa !90
  br label %hwloc__distances_transform_links.exit

hwloc__distances_transform_links.exit:            ; preds = %.loopexit.i, %.lr.ph61.i.epil.preheader, %hwloc__distances_transform_links.exit.loopexit.unr-lcssa, %bb.r, %.preheader6.i, %hwloc__distances_transform_merge_switch_ports.exit, %.loopexit.sink.split.i, %._crit_edge.i, %.preheader51.i, %.loopexit, %bb.ad, %bb.d, %bb.b
  %.013 = phi i32 [ -1, %bb.b ], [ -1, %bb.ad ], [ %i.d, %bb.d ], [ %i.ef, %.loopexit ], [ -1, %.loopexit.sink.split.i ], [ -1, %hwloc__distances_transform_merge_switch_ports.exit ], [ 0, %.preheader51.i ], [ 0, %._crit_edge.i ], [ 0, %.lr.ph61.i.epil.preheader ], [ -1, %bb.r ], [ 0, %.preheader6.i ], [ 0, %hwloc__distances_transform_links.exit.loopexit.unr-lcssa ], [ 0, %.loopexit.i ]
  ret i32 %.013
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1, 1) i32 @hwloc__distances_transform_remove_null(ptr nofree noundef captures(none) %0) unnamed_addr #22 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !82   ; 14 uses
  %i.e = load i32, ptr %0, align 8, !tbaa !140    ; 8 uses
  %.not41 = icmp eq i32 %i.e, 0
  br i1 %.not41, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %i.e to i64         ; 3 uses
  %min.iters.check = icmp ult i32 %i.e, 4
  br i1 %min.iters.check, label %.lr.ph.preheader52, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %vec.phi50 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <2 x ptr>, ptr %i.f, align 8, !tbaa !83
  %wide.load51 = load <2 x ptr>, ptr %i.g, align 8, !tbaa !83
  %i.h = icmp ne <2 x ptr> %wide.load, splat (ptr null)
  %i.i = icmp ne <2 x ptr> %wide.load51, splat (ptr null)
  %i.j = zext <2 x i1> %i.h to <2 x i32>
  %i.k = zext <2 x i1> %i.i to <2 x i32>
  %i.l = add <2 x i32> %vec.phi, %i.j             ; 2 uses
  %i.m = add <2 x i32> %vec.phi50, %i.k           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !159

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.m, %i.l
  %i.o = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader52

.lr.ph.preheader52:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.02937.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader52, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader52 ] ; 2 uses
  %.02937 = phi i32 [ %spec.select, %.lr.ph ], [ %.02937.ph, %.lr.ph.preheader52 ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !83
  %.not34 = icmp ne ptr %i.q, null
  %i.r = zext i1 %.not34 to i32
  %spec.select = add i32 %.02937, %i.r            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !160

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %i.o, %middle.block ], [ %spec.select, %.lr.ph ] ; 5 uses
  %i.s = icmp ult i32 %spec.select.lcssa, 2
  br i1 %i.s, label %._crit_edge.thread, label %bb.b

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %i.t = tail call ptr @__errno_location() #32
  store i32 22, ptr %i.t, align 4, !tbaa !11
  br label %bb.p

bb.b:                                             ; preds = %._crit_edge
  %i.u = icmp eq i32 %spec.select.lcssa, %i.e
  br i1 %i.u, label %bb.p, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %wide.trip.count75.i = zext i32 %i.e to i64     ; 6 uses
  %i.v = add nsw i64 %wide.trip.count75.i, -1     ; 2 uses
  %xtraiter = and i64 %wide.trip.count75.i, 1
  %i.w = icmp eq i64 %i.v, 0
  %unroll_iter = and i64 %wide.trip.count75.i, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod55 = trunc i32 %i.e to i1
  br label %bb.f

.lr.ph61.split.us.split.us.i:                     ; preds = %bb.e, %.lr.ph61.split.us.split.us.i.preheader.new
  %indvars.iv92.i = phi i64 [ 0, %.lr.ph61.split.us.split.us.i.preheader.new ], [ %indvars.iv.next93.i.1, %bb.e ] ; 3 uses
  %.260.us.us.i = phi i32 [ 0, %.lr.ph61.split.us.split.us.i.preheader.new ], [ %.3.us.us.i.1, %bb.e ] ; 3 uses
  %niter60 = phi i64 [ 0, %.lr.ph61.split.us.split.us.i.preheader.new ], [ %niter60.next.1, %bb.e ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv92.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !83   ; 2 uses
  %.not.us.us.i = icmp eq ptr %i.y, null
  br i1 %.not.us.us.i, label %.lr.ph61.split.us.split.us.i.1, label %bb.c

bb.c:                                             ; preds = %.lr.ph61.split.us.split.us.i
  %i.z = zext i32 %.260.us.us.i to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.z
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !83
  %i.ab = add i32 %.260.us.us.i, 1
  br label %.lr.ph61.split.us.split.us.i.1

.lr.ph61.split.us.split.us.i.1:                   ; preds = %bb.c, %.lr.ph61.split.us.split.us.i
  %.3.us.us.i = phi i32 [ %i.ab, %bb.c ], [ %.260.us.us.i, %.lr.ph61.split.us.split.us.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv92.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !83 ; 2 uses
  %.not.us.us.i.1 = icmp eq ptr %i.ae, null
  br i1 %.not.us.us.i.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph61.split.us.split.us.i.1
  %i.af = zext i32 %.3.us.us.i to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.af
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !83
  %i.ah = add i32 %.3.us.us.i, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph61.split.us.split.us.i.1
  %.3.us.us.i.1 = phi i32 [ %i.ah, %bb.d ], [ %.3.us.us.i, %.lr.ph61.split.us.split.us.i.1 ] ; 2 uses
  %indvars.iv.next93.i.1 = add nuw nsw i64 %indvars.iv92.i, 2 ; 2 uses
  %niter60.next.1 = add nuw i64 %niter60, 2       ; 2 uses
  %niter60.ncmp.1 = icmp eq i64 %niter60.next.1, %unroll_iter59
  br i1 %niter60.ncmp.1, label %.lr.ph39.preheader.unr-lcssa, label %.lr.ph61.split.us.split.us.i, !llvm.loop !89

bb.f:                                             ; preds = %bb.l, %.lr.ph.i
  %indvars.iv72.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next73.i, %bb.l ] ; 3 uses
  %.04158.i = phi i32 [ 0, %.lr.ph.i ], [ %.142.i, %bb.l ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv72.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !83
  %.not52.i = icmp eq ptr %i.aj, null
  br i1 %.not52.i, label %bb.l, label %.preheader54.i

.preheader54.i:                                   ; preds = %bb.f
  %i.ak = trunc nuw i64 %indvars.iv72.i to i32
  %i.al = mul i32 %i.e, %i.ak                     ; 3 uses
  %i.am = mul i32 %.04158.i, %spec.select.lcssa   ; 3 uses
  br i1 %i.w, label %.epil.preheader, label %.preheader54.i.new

.preheader54.i.new:                               ; preds = %.preheader54.i, %bb.j
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %bb.j ], [ 0, %.preheader54.i ] ; 4 uses
  %.056.i = phi i32 [ %.1.i.1, %bb.j ], [ 0, %.preheader54.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.j ], [ 0, %.preheader54.i ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !83
  %.not53.i = icmp eq ptr %i.ao, null
  br i1 %.not53.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader54.i.new
  %i.ap = trunc nuw i64 %indvars.iv.i to i32
  %i.aq = add i32 %i.al, %i.ap
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !90
  %i.au = add i32 %.056.i, %i.am
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.av
  store i64 %i.at, ptr %i.aw, align 8, !tbaa !90
  %i.ax = add i32 %.056.i, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader54.i.new
  %.1.i = phi i32 [ %i.ax, %bb.g ], [ %.056.i, %.preheader54.i.new ] ; 3 uses
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !83
  %.not53.i.1 = icmp eq ptr %i.az, null
  br i1 %.not53.i.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = trunc nuw i64 %indvars.iv.next.i to i32
  %i.bb = add i32 %i.al, %i.ba
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !90
  %i.bf = add i32 %.1.i, %i.am
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bg
  store i64 %i.be, ptr %i.bh, align 8, !tbaa !90
  %i.bi = add i32 %.1.i, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1.i.1 = phi i32 [ %i.bi, %bb.i ], [ %.1.i, %bb.h ] ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader54.i.new, !llvm.loop !91

.unr-lcssa:                                       ; preds = %bb.j
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader54.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader54.i ], [ %indvars.iv.next.i.1, %.unr-lcssa ] ; 2 uses
  %.056.i.epil.init = phi i32 [ 0, %.preheader54.i ], [ %.1.i.1, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod55)
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i.epil.init
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !83
  %.not53.i.epil = icmp eq ptr %i.bk, null
  br i1 %.not53.i.epil, label %.epilog-lcssa, label %bb.k

bb.k:                                             ; preds = %.epil.preheader
  %i.bl = trunc nuw i64 %indvars.iv.i.epil.init to i32
  %i.bm = add i32 %i.al, %i.bl
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !90
  %i.bq = add i32 %.056.i.epil.init, %i.am
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.br
  store i64 %i.bp, ptr %i.bs, align 8, !tbaa !90
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.epil.preheader, %bb.k, %.unr-lcssa
  %i.bt = add i32 %.04158.i, 1
  br label %bb.l

bb.l:                                             ; preds = %.epilog-lcssa, %bb.f
  %.142.i = phi i32 [ %i.bt, %.epilog-lcssa ], [ %.04158.i, %bb.f ]
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1 ; 2 uses
  %exitcond76.not.i = icmp eq i64 %indvars.iv.next73.i, %wide.trip.count75.i
  br i1 %exitcond76.not.i, label %.lr.ph61.split.us.split.us.i.preheader, label %bb.f, !llvm.loop !92

.lr.ph61.split.us.split.us.i.preheader:           ; preds = %bb.l
  %xtraiter56 = and i64 %wide.trip.count75.i, 1
  %i.bu = icmp eq i64 %i.v, 0
  br i1 %i.bu, label %.lr.ph61.split.us.split.us.i.epil.preheader, label %.lr.ph61.split.us.split.us.i.preheader.new

.lr.ph61.split.us.split.us.i.preheader.new:       ; preds = %.lr.ph61.split.us.split.us.i.preheader
  %unroll_iter59 = and i64 %wide.trip.count75.i, 4294967294
  br label %.lr.ph61.split.us.split.us.i

.lr.ph39.preheader.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod57.not = icmp eq i64 %xtraiter56, 0
  br i1 %lcmp.mod57.not, label %.lr.ph39.preheader, label %.lr.ph61.split.us.split.us.i.epil.preheader

.lr.ph61.split.us.split.us.i.epil.preheader:      ; preds = %.lr.ph39.preheader.unr-lcssa, %.lr.ph61.split.us.split.us.i.preheader
  %indvars.iv92.i.epil.init = phi i64 [ 0, %.lr.ph61.split.us.split.us.i.preheader ], [ %indvars.iv.next93.i.1, %.lr.ph39.preheader.unr-lcssa ]
  %.260.us.us.i.epil.init = phi i32 [ 0, %.lr.ph61.split.us.split.us.i.preheader ], [ %.3.us.us.i.1, %.lr.ph39.preheader.unr-lcssa ]
  %lcmp.mod58 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod58)
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv92.i.epil.init
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !83 ; 2 uses
  %.not.us.us.i.epil = icmp eq ptr %i.bw, null
  br i1 %.not.us.us.i.epil, label %.lr.ph39.preheader, label %bb.m

bb.m:                                             ; preds = %.lr.ph61.split.us.split.us.i.epil.preheader
  %i.bx = zext i32 %.260.us.us.i.epil.init to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bx
  store ptr %i.bw, ptr %i.by, align 8, !tbaa !83
  br label %.lr.ph39.preheader

.lr.ph39.preheader:                               ; preds = %.lr.ph61.split.us.split.us.i.epil.preheader, %bb.m, %.lr.ph39.preheader.unr-lcssa
  store i32 %spec.select.lcssa, ptr %0, align 8, !tbaa !140
  %i.bz = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !93 ; 2 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %spec.select.lcssa, i32 2)
  %wide.trip.count46 = zext i32 %umax to i64
  br label %.lr.ph39

bb.n:                                             ; preds = %.lr.ph39
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond47.not = icmp eq i64 %indvars.iv.next44, %wide.trip.count46
  br i1 %exitcond47.not, label %._crit_edge40, label %.lr.ph39, !llvm.loop !161

.lr.ph39:                                         ; preds = %.lr.ph39.preheader, %bb.n
  %indvars.iv43 = phi i64 [ 1, %.lr.ph39.preheader ], [ %indvars.iv.next44, %bb.n ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv43
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !83
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !93
  %.not = icmp eq i32 %i.cd, %i.ca
  br i1 %.not, label %bb.n, label %.thread

._crit_edge40:                                    ; preds = %bb.n
  %i.ce = icmp eq i32 %i.ca, -1
  br i1 %i.ce, label %.thread, label %bb.o

.thread:                                          ; preds = %.lr.ph39, %._crit_edge40
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !141
  %i.ch = or i64 %i.cg, 16
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !141
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge40
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !141
  %i.ck = and i64 %i.cj, -17
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !141
  br label %bb.p

bb.p:                                             ; preds = %.thread, %bb.o, %bb.b, %._crit_edge.thread
  %.032 = phi i32 [ -1, %._crit_edge.thread ], [ 0, %bb.b ], [ 0, %bb.o ], [ 0, %.thread ]
  ret i32 %.032
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #25

declare ptr @hwloc_get_obj_by_type_and_gp_index(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #18

declare i32 @hwloc_get_type_depth(ptr noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @hwloc_get_obj_by_depth(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @hwloc_obj_type_string(i32 noundef) local_unnamed_addr #7

declare ptr @hwloc_alloc_setup_object(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #18

declare noalias ptr @hwloc_bitmap_alloc() local_unnamed_addr #18

declare i32 @hwloc_obj_add_other_obj_sets(ptr noundef, ptr noundef) local_unnamed_addr #18

declare ptr @hwloc__insert_object_by_cpuset(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #25

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #26

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind memory(readwrite, target_mem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nofree nounwind }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nounwind }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { nounwind allocsize(0) }
attributes #31 = { noreturn nounwind }
attributes #32 = { nounwind willreturn memory(none) }
attributes #33 = { nounwind allocsize(0,1) }
attributes #34 = { cold }
attributes #35 = { cold nounwind }
end_hunk_3
