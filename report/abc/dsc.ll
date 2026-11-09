Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/dsc?download=true
inline.NumInlined: 41
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 29
begin_hunk_0_@dsc_xor_group:bb.a

vector.memcheck342:                               ; preds = %vector.scevcheck337
  %i.og = add i32 %i.nt, %i.mi
  %i.oh = add i32 %i.og, 1
  %i.oi = sext i32 %i.oh to i64
  %i.oj = shl nsw i64 %i.oi, 2
  %i.ok = add i64 %i.oj, %i.c
  %i.ol = sub i64 %i.ok, %i.a
  %i.om = add i64 %i.ol, -73
  %diff.check343 = icmp ult i64 %i.om, 31
  br i1 %diff.check343, label %.lr.ph.i190.preheader, label %vector.ph344

vector.ph344:                                     ; preds = %vector.memcheck342
  %n.vec345 = and i64 %i.nx, 2147483640           ; 4 uses
  %i.on = or disjoint i64 %n.vec345, 1
  %i.oo = trunc nuw nsw i64 %n.vec345 to i32
  %i.op = add i32 %i.nu, %i.oo
  %invariant.op383 = add i32 %i.nu, 1
  br label %vector.body346

vector.body346:                                   ; preds = %vector.body346, %vector.ph344
  %index347 = phi i64 [ 0, %vector.ph344 ], [ %index.next350, %vector.body346 ] ; 3 uses
  %i.oq = trunc i64 %index347 to i32
  %.reass384 = add i32 %i.oq, %invariant.op383
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index347 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 4
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 20
  %wide.load348 = load <4 x i32>, ptr %i.os, align 4, !tbaa !16
  %wide.load349 = load <4 x i32>, ptr %i.ot, align 4, !tbaa !16
  %i.ou = sext i32 %.reass384 to i64
  %i.ov = getelementptr inbounds [4 x i8], ptr %i.il, i64 %i.ou ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  store <4 x i32> %wide.load348, ptr %i.ov, align 4, !tbaa !16
  store <4 x i32> %wide.load349, ptr %i.ow, align 4, !tbaa !16
  %index.next350 = add nuw i64 %index347, 8       ; 2 uses
  %i.ox = icmp eq i64 %index.next350, %n.vec345
  br i1 %i.ox, label %middle.block351, label %vector.body346, !llvm.loop !78

middle.block351:                                  ; preds = %vector.body346
  %cmp.n352 = icmp eq i64 %n.vec345, %i.nx
  br i1 %cmp.n352, label %._crit_edge.loopexit.i196, label %.lr.ph.i190.preheader

.lr.ph.i190.preheader:                            ; preds = %vector.memcheck342, %vector.scevcheck337, %.lr.ph.preheader.i188, %middle.block351
  %indvars.iv.i191.ph = phi i64 [ 1, %vector.memcheck342 ], [ 1, %vector.scevcheck337 ], [ 1, %.lr.ph.preheader.i188 ], [ %i.on, %middle.block351 ] ; 4 uses
  %.011.in14.i192.ph = phi i32 [ %i.nu, %vector.memcheck342 ], [ %i.nu, %vector.scevcheck337 ], [ %i.nu, %.lr.ph.preheader.i188 ], [ %i.op, %middle.block351 ] ; 2 uses
  %i.oy = sub nsw i64 %wide.trip.count.i189, %indvars.iv.i191.ph
  %i.oz = zext nneg i32 %i.nv to i64
  %i.pa = sub nsw i64 %i.oz, %indvars.iv.i191.ph
  %xtraiter375 = and i64 %i.oy, 3                 ; 2 uses
  %lcmp.mod376.not = icmp eq i64 %xtraiter375, 0
  br i1 %lcmp.mod376.not, label %.lr.ph.i190.prol.loopexit, label %.lr.ph.i190.prol

.lr.ph.i190.prol:                                 ; preds = %.lr.ph.i190.preheader, %.lr.ph.i190.prol
  %indvars.iv.i191.prol = phi i64 [ %indvars.iv.next.i194.prol, %.lr.ph.i190.prol ], [ %indvars.iv.i191.ph, %.lr.ph.i190.preheader ] ; 2 uses
  %.011.in14.i192.prol = phi i32 [ %.011.i193.prol, %.lr.ph.i190.prol ], [ %.011.in14.i192.ph, %.lr.ph.i190.preheader ]
  %prol.iter377 = phi i64 [ %prol.iter377.next, %.lr.ph.i190.prol ], [ 0, %.lr.ph.i190.preheader ]
  %.011.i193.prol = add i32 %.011.in14.i192.prol, 1 ; 3 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i191.prol
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !16
  %i.pd = sext i32 %.011.i193.prol to i64
  %i.pe = getelementptr inbounds [4 x i8], ptr %i.il, i64 %i.pd
  store i32 %i.pc, ptr %i.pe, align 4, !tbaa !16
  %indvars.iv.next.i194.prol = add nuw nsw i64 %indvars.iv.i191.prol, 1 ; 2 uses
  %prol.iter377.next = add i64 %prol.iter377, 1   ; 2 uses
  %prol.iter377.cmp.not = icmp eq i64 %prol.iter377.next, %xtraiter375
  br i1 %prol.iter377.cmp.not, label %.lr.ph.i190.prol.loopexit, label %.lr.ph.i190.prol, !llvm.loop !79

.lr.ph.i190.prol.loopexit:                        ; preds = %.lr.ph.i190.prol, %.lr.ph.i190.preheader
  %indvars.iv.i191.unr = phi i64 [ %indvars.iv.i191.ph, %.lr.ph.i190.preheader ], [ %indvars.iv.next.i194.prol, %.lr.ph.i190.prol ]
  %.011.in14.i192.unr = phi i32 [ %.011.in14.i192.ph, %.lr.ph.i190.preheader ], [ %.011.i193.prol, %.lr.ph.i190.prol ]
  %i.pf = icmp ult i64 %i.pa, 3
  br i1 %i.pf, label %._crit_edge.loopexit.i196, label %.lr.ph.i190

.lr.ph.i190:                                      ; preds = %.lr.ph.i190.prol.loopexit, %.lr.ph.i190
  %indvars.iv.i191 = phi i64 [ %indvars.iv.next.i194.3, %.lr.ph.i190 ], [ %indvars.iv.i191.unr, %.lr.ph.i190.prol.loopexit ] ; 5 uses
  %.011.in14.i192 = phi i32 [ %.011.i193.3, %.lr.ph.i190 ], [ %.011.in14.i192.unr, %.lr.ph.i190.prol.loopexit ] ; 4 uses
  %.011.i193 = add i32 %.011.in14.i192, 1
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i191
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !16
  %i.pi = sext i32 %.011.i193 to i64
  %i.pj = getelementptr inbounds [4 x i8], ptr %i.il, i64 %i.pi
  store i32 %i.ph, ptr %i.pj, align 4, !tbaa !16
  %.011.i193.1 = add i32 %.011.in14.i192, 2
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i191
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 4
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !16
  %i.pn = sext i32 %.011.i193.1 to i64
  %i.po = getelementptr inbounds [4 x i8], ptr %i.il, i64 %i.pn
  store i32 %i.pm, ptr %i.po, align 4, !tbaa !16
  %.011.i193.2 = add i32 %.011.in14.i192, 3
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i191
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !16
  %i.ps = sext i32 %.011.i193.2 to i64
  %i.pt = getelementptr inbounds [4 x i8], ptr %i.il, i64 %i.ps
  store i32 %i.pr, ptr %i.pt, align 4, !tbaa !16
  %.011.i193.3 = add i32 %.011.in14.i192, 4       ; 2 uses
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i191
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 12
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !16
  %i.px = sext i32 %.011.i193.3 to i64
  %i.py = getelementptr inbounds [4 x i8], ptr %i.il, i64 %i.px
  store i32 %i.pw, ptr %i.py, align 4, !tbaa !16
  %indvars.iv.next.i194.3 = add nuw nsw i64 %indvars.iv.i191, 4 ; 2 uses
  %exitcond.not.i195.3 = icmp eq i64 %indvars.iv.next.i194.3, %wide.trip.count.i189
  br i1 %exitcond.not.i195.3, label %._crit_edge.loopexit.i196, label %.lr.ph.i190, !llvm.loop !80

._crit_edge.loopexit.i196:                        ; preds = %.lr.ph.i190.prol.loopexit, %.lr.ph.i190, %middle.block351
  %.pre.i197 = load i32, ptr %i.il, align 8, !tbaa !16
  br label %merge.exit199

merge.exit199:                                    ; preds = %merge.exit186, %._crit_edge.loopexit.i196
  %i.pz = phi i32 [ %.pre.i197, %._crit_edge.loopexit.i196 ], [ %i.nu, %merge.exit186 ]
  %i.qa = add i32 %i.pz, %i.nv
  br label %bb.n

bb.n:                                             ; preds = %merge.exit199, %merge.exit173
  %storemerge202 = phi i32 [ %i.mh, %merge.exit173 ], [ %i.qa, %merge.exit199 ]
  store i32 %storemerge202, ptr %i.il, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define noalias noundef ptr @Dsc_alloc_pool(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp slt i32 %0, 7
  %i.b = add nsw i32 %0, -6
  %i.c = shl i32 3, %i.b
  %i.d = select i1 %i.a, i32 3, i32 %i.c
  %i.e = mul nsw i32 %i.d, %0
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 3
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #20
  ret ptr %i.h
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @Dsc_free_pool(ptr noundef captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %0) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @Dsc_Decompose(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, ptr noundef initializes((0, 2)) %2, ptr noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 5 uses
  %4 = alloca [16 x %struct.Dsc_node_t_], align 16 ; 3 uses
  %i.b = alloca [16 x ptr], align 16              ; 5 uses
  %i.c = alloca [16 x ptr], align 16              ; 12 uses
  %5 = alloca [16 x %struct.Dsc_node_t_], align 16 ; 5 uses
  %i.d = icmp slt i32 %1, 7                       ; 2 uses
  %i.e = add nsw i32 %1, -6                       ; 2 uses
  %i.f = shl nuw i32 1, %i.e
  %i.g = select i1 %i.d, i32 1, i32 %i.f          ; 25 uses
  %i.h = icmp eq ptr %3, null                     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store i8 0, ptr %2, align 1, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 4 uses
  store i8 0, ptr %i.i, align 1, !tbaa !14
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = shl i32 3, %i.e
  %i.k = select i1 %i.d, i32 3, i32 %i.j
  %i.l = mul nsw i32 %i.k, %1
  %i.m = sext i32 %i.l to i64
  %i.n = shl nsw i64 %i.m, 3
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0158 = phi ptr [ %i.o, %bb.b ], [ %3, %bb.a ] ; 11 uses
  %i.p = icmp sgt i32 %1, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.c
  %i.q = icmp eq i32 %i.g, 1                      ; 2 uses
  %i.r = sext i32 %i.g to i64                     ; 5 uses
  %.idx.i = shl nsw i64 %i.r, 3                   ; 5 uses
  %i.s = getelementptr inbounds i8, ptr %0, i64 %.idx.i ; 2 uses
  %i.t = icmp sgt i32 %i.g, 0                     ; 2 uses
  %wide.trip.count59.i = zext i32 %i.g to i64     ; 19 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  %i.u = sub i64 %.idx.i, %i.a
  %i.v = add nsw i64 %wide.trip.count59.i, -1     ; 2 uses
  %min.iters.check656 = icmp ult i32 %i.g, 4
  %n.vec660 = and i64 %wide.trip.count59.i, 2147483644
  %xtraiter959 = and i64 %wide.trip.count59.i, 1
  %i.w = icmp eq i64 %i.v, 0
  %unroll_iter963 = and i64 %wide.trip.count59.i, 2147483646
  %lcmp.mod961.not = icmp eq i64 %xtraiter959, 0
  %lcmp.mod962 = trunc i32 %i.g to i1
  %invariant.op = add i64 %i.u, -1
  %min.iters.check614 = icmp ult i32 %i.g, 4
  %n.vec618 = and i64 %wide.trip.count59.i, 4294967292
  %xtraiter971 = and i64 %wide.trip.count59.i, 1
  %i.x = icmp eq i64 %i.v, 0
  %unroll_iter975 = and i64 %wide.trip.count59.i, 4294967294
  %lcmp.mod973.not = icmp eq i64 %xtraiter971, 0
  %lcmp.mod974 = trunc i32 %i.g to i1
  %min.iters.check = icmp ult i32 %i.g, 4
  %diff.check605 = icmp ult i64 %.idx.i, 32
  %or.cond916 = select i1 %min.iters.check, i1 true, i1 %diff.check605
  %n.vec = and i64 %wide.trip.count59.i, 4294967292
  %xtraiter977 = and i64 %wide.trip.count59.i, 3  ; 3 uses
  %i.y = icmp ult i32 %i.g, 4
  %unroll_iter981 = and i64 %wide.trip.count59.i, 4294967292
  %lcmp.mod979.not = icmp eq i64 %xtraiter977, 0
  %lcmp.mod980 = icmp ne i64 %xtraiter977, 0
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %Abc_TtEqual.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Abc_TtEqual.exit.thread ] ; 15 uses
  %.0145447 = phi ptr [ %.0158, %.lr.ph ], [ %.1146, %Abc_TtEqual.exit.thread ] ; 19 uses
  %.0147446 = phi i32 [ 0, %.lr.ph ], [ %.1148, %Abc_TtEqual.exit.thread ] ; 5 uses
  %.0145447612 = ptrtoaddr ptr %.0145447 to i64   ; 5 uses
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = load i64, ptr %0, align 8, !tbaa !28
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !28
  %i.ac = and i64 %i.ab, %i.z                     ; 2 uses
  %i.ad = trunc nuw nsw i64 %indvars.iv to i32
  %i.ae = shl nuw i32 1, %i.ad
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl i64 %i.ac, %i.af
  %i.ah = or i64 %i.ag, %i.ac
  store i64 %i.ah, ptr %.0145447, align 8, !tbaa !28
  br label %.lr.ph.i173.preheader

bb.f:                                             ; preds = %bb.d
  %i.ai = icmp samesign ult i64 %indvars.iv, 6
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %i.t, label %.lr.ph.i, label %Abc_TtEqual.exit.thread

.lr.ph.i:                                         ; preds = %bb.g
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  %i.ak = shl nuw nsw i32 1, %i.aj
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv
  %i.am = load i64, ptr %i.al, align 8, !tbaa !28 ; 4 uses
  %i.an = zext nneg i32 %i.ak to i64              ; 4 uses
  %i.ao = sub i64 %i.a, %.0145447612
  %diff.check658 = icmp ugt i64 %i.ao, -32
  %or.cond915 = select i1 %min.iters.check656, i1 true, i1 %diff.check658
  br i1 %or.cond915, label %scalar.ph655.preheader, label %vector.ph659

scalar.ph655.preheader:                           ; preds = %.lr.ph.i
  br i1 %i.w, label %scalar.ph655.epil.preheader, label %scalar.ph655

vector.ph659:                                     ; preds = %.lr.ph.i
  %broadcast.splatinsert661 = insertelement <2 x i64> poison, i64 %i.am, i64 0
  %broadcast.splat662 = shufflevector <2 x i64> %broadcast.splatinsert661, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert663 = insertelement <2 x i64> poison, i64 %i.an, i64 0
  %broadcast.splat664 = shufflevector <2 x i64> %broadcast.splatinsert663, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body665

vector.body665:                                   ; preds = %vector.body665, %vector.ph659
  %index666 = phi i64 [ 0, %vector.ph659 ], [ %index.next669, %vector.body665 ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index666 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load667 = load <2 x i64>, ptr %i.ap, align 8, !tbaa !28
  %wide.load668 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !28
  %i.ar = and <2 x i64> %wide.load667, %broadcast.splat662 ; 2 uses
  %i.as = and <2 x i64> %wide.load668, %broadcast.splat662 ; 2 uses
  %i.at = shl <2 x i64> %i.ar, %broadcast.splat664
  %i.au = shl <2 x i64> %i.as, %broadcast.splat664
  %i.av = or <2 x i64> %i.at, %i.ar
  %i.aw = or <2 x i64> %i.au, %i.as
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.0145447, i64 %index666 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x i64> %i.av, ptr %i.ax, align 8, !tbaa !28
  store <2 x i64> %i.aw, ptr %i.ay, align 8, !tbaa !28
  %index.next669 = add nuw i64 %index666, 4       ; 2 uses
  %i.az = icmp eq i64 %index.next669, %n.vec660
  br i1 %i.az, label %.lr.ph.i173.preheader, label %vector.body665, !llvm.loop !81

scalar.ph655:                                     ; preds = %scalar.ph655.preheader, %scalar.ph655
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i.1, %scalar.ph655 ], [ 0, %scalar.ph655.preheader ] ; 4 uses
  %niter964 = phi i64 [ %niter964.next.1, %scalar.ph655 ], [ 0, %scalar.ph655.preheader ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv56.i
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !28
  %i.bc = and i64 %i.bb, %i.am                    ; 2 uses
  %i.bd = shl i64 %i.bc, %i.an
  %i.be = or i64 %i.bd, %i.bc
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.0145447, i64 %indvars.iv56.i
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !28
  %indvars.iv.next57.i = or disjoint i64 %indvars.iv56.i, 1 ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next57.i
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !28
  %i.bi = and i64 %i.bh, %i.am                    ; 2 uses
  %i.bj = shl i64 %i.bi, %i.an
  %i.bk = or i64 %i.bj, %i.bi
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.0145447, i64 %indvars.iv.next57.i
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !28
  %indvars.iv.next57.i.1 = add nuw nsw i64 %indvars.iv56.i, 2 ; 2 uses
  %niter964.next.1 = add i64 %niter964, 2         ; 2 uses
  %niter964.ncmp.1 = icmp eq i64 %niter964.next.1, %unroll_iter963
  br i1 %niter964.ncmp.1, label %.lr.ph.i173.preheader.loopexit.unr-lcssa, label %scalar.ph655, !llvm.loop !82

bb.h:                                             ; preds = %bb.f
  %i.bm = add nsw i64 %indvars.iv, -6             ; 2 uses
  %i.bn = trunc nsw i64 %i.bm to i32              ; 2 uses
  %i.bo = shl nuw i32 1, %i.bn                    ; 4 uses
  br i1 %i.t, label %.preheader.lr.ph.i, label %Abc_TtEqual.exit.thread

.preheader.lr.ph.i:                               ; preds = %bb.h
  %i.bp = icmp eq i64 %i.bm, 31
  %i.bq = shl i32 2, %i.bn
  %i.br = sext i32 %i.bq to i64                   ; 2 uses
  br i1 %i.bp, label %.lr.ph.i173.preheader, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.bs = sext i32 %i.bo to i64                   ; 2 uses
  %smax.i = call i32 @llvm.smax.i32(i32 %i.bo, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 3 uses
  %i.bt = sub i64 %.0145447612, %i.a              ; 2 uses
  %i.bu = shl nsw i64 %i.bs, 3                    ; 2 uses
  %i.bv = add i64 %i.bt, %i.bu
  %min.iters.check680 = icmp slt i32 %i.bo, 8
  %diff.check682 = icmp ult i64 %i.bu, 32
  %i.bw = add i64 %i.bt, -1
  %diff.check683 = icmp ult i64 %i.bw, 31
  %conflict.rdx684 = or i1 %diff.check682, %diff.check683
  %i.bx = add i64 %i.bv, -1
  %diff.check685 = icmp ult i64 %i.bx, 31
  %conflict.rdx686 = or i1 %conflict.rdx684, %diff.check685
  %n.vec688 = and i64 %wide.trip.count.i, 2147483644
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.by = icmp slt i32 %i.bo, 4
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod958 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.04251.us.i = phi ptr [ %i.cw, %._crit_edge.us.i ], [ %.0145447, %.preheader.us.preheader.i ] ; 8 uses
  %.04350.us.i = phi ptr [ %i.cv, %._crit_edge.us.i ], [ %0, %.preheader.us.preheader.i ] ; 7 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %.04251.us.i, i64 %i.bs ; 6 uses
  %brmerge = select i1 %min.iters.check680, i1 true, i1 %conflict.rdx686
  br i1 %brmerge, label %scalar.ph679.preheader, label %vector.body689

scalar.ph679.preheader:                           ; preds = %.preheader.us.i
  br i1 %i.by, label %scalar.ph679.epil.preheader, label %scalar.ph679

vector.body689:                                   ; preds = %.preheader.us.i, %vector.body689
  %index690 = phi i64 [ %index.next693, %vector.body689 ], [ 0, %.preheader.us.i ] ; 4 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %index690 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %wide.load691 = load <2 x i64>, ptr %i.bz, align 8, !tbaa !28 ; 2 uses
  %wide.load692 = load <2 x i64>, ptr %i.ca, align 8, !tbaa !28 ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %index690 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store <2 x i64> %wide.load691, ptr %i.cb, align 8, !tbaa !28
  store <2 x i64> %wide.load692, ptr %i.cc, align 8, !tbaa !28
  %i.cd = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index690 ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 16
  store <2 x i64> %wide.load691, ptr %i.cd, align 8, !tbaa !28
  store <2 x i64> %wide.load692, ptr %i.ce, align 8, !tbaa !28
  %index.next693 = add nuw i64 %index690, 4       ; 2 uses
  %i.cf = icmp eq i64 %index.next693, %n.vec688
  br i1 %i.cf, label %._crit_edge.us.i, label %vector.body689, !llvm.loop !83

scalar.ph679:                                     ; preds = %scalar.ph679.preheader, %scalar.ph679
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph679 ], [ 0, %scalar.ph679.preheader ] ; 7 uses
  %niter = phi i64 [ %niter.next.3, %scalar.ph679 ], [ 0, %scalar.ph679.preheader ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %indvars.iv.i
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !28 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %indvars.iv.i
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !28
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store i64 %i.ch, ptr %gep.i, align 8, !tbaa !28
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %indvars.iv.next.i
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !28 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %indvars.iv.next.i
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !28
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  store i64 %i.ck, ptr %gep.i.1, align 8, !tbaa !28
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %indvars.iv.next.i.1
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !28 ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %indvars.iv.next.i.1
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !28
  %gep.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.1
  store i64 %i.cn, ptr %gep.i.2, align 8, !tbaa !28
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %indvars.iv.next.i.2
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !28 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %indvars.iv.next.i.2
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !28
  %gep.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.2
  store i64 %i.cq, ptr %gep.i.3, align 8, !tbaa !28
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.loopexit.unr-lcssa, label %scalar.ph679, !llvm.loop !84

._crit_edge.us.i.loopexit.unr-lcssa:              ; preds = %scalar.ph679
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %scalar.ph679.epil.preheader

scalar.ph679.epil.preheader:                      ; preds = %._crit_edge.us.i.loopexit.unr-lcssa, %scalar.ph679.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %scalar.ph679.preheader ], [ %indvars.iv.next.i.3, %._crit_edge.us.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod958)
  br label %scalar.ph679.epil

scalar.ph679.epil:                                ; preds = %scalar.ph679.epil, %scalar.ph679.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %scalar.ph679.epil ], [ %indvars.iv.i.epil.init, %scalar.ph679.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %scalar.ph679.epil ], [ 0, %scalar.ph679.epil.preheader ]
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %indvars.iv.i.epil
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !28 ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %indvars.iv.i.epil
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !28
  %gep.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.epil
  store i64 %i.ct, ptr %gep.i.epil, align 8, !tbaa !28
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i, label %scalar.ph679.epil, !llvm.loop !85

._crit_edge.us.i:                                 ; preds = %vector.body689, %._crit_edge.us.i.loopexit.unr-lcssa, %scalar.ph679.epil
  %i.cv = getelementptr inbounds [8 x i8], ptr %.04350.us.i, i64 %i.br ; 2 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %.04251.us.i, i64 %i.br
  %i.cx = icmp ult ptr %i.cv, %i.s
  br i1 %i.cx, label %.preheader.us.i, label %.lr.ph.i173.preheader, !llvm.loop !86

.lr.ph.i173.preheader.loopexit.unr-lcssa:         ; preds = %scalar.ph655
  br i1 %lcmp.mod961.not, label %.lr.ph.i173.preheader, label %scalar.ph655.epil.preheader

scalar.ph655.epil.preheader:                      ; preds = %.lr.ph.i173.preheader.loopexit.unr-lcssa, %scalar.ph655.preheader
  %indvars.iv56.i.epil.init = phi i64 [ 0, %scalar.ph655.preheader ], [ %indvars.iv.next57.i.1, %.lr.ph.i173.preheader.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod962)
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv56.i.epil.init
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !28
  %i.da = and i64 %i.cz, %i.am                    ; 2 uses
  %i.db = shl i64 %i.da, %i.an
  %i.dc = or i64 %i.db, %i.da
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.0145447, i64 %indvars.iv56.i.epil.init
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !28
  br label %.lr.ph.i173.preheader

.lr.ph.i173.preheader:                            ; preds = %._crit_edge.us.i, %vector.body665, %scalar.ph655.epil.preheader, %.lr.ph.i173.preheader.loopexit.unr-lcssa, %.preheader.lr.ph.i, %bb.e
  br label %.lr.ph.i173

bb.i:                                             ; preds = %.lr.ph.i173
  %indvars.iv.next.i176 = add nuw nsw i64 %indvars.iv.i174, 1 ; 2 uses
  %exitcond.not.i177 = icmp eq i64 %indvars.iv.next.i176, %wide.trip.count59.i
  br i1 %exitcond.not.i177, label %Abc_TtEqual.exit.thread, label %.lr.ph.i173, !llvm.loop !87

.lr.ph.i173:                                      ; preds = %.lr.ph.i173.preheader, %bb.i
  %indvars.iv.i174 = phi i64 [ %indvars.iv.next.i176, %bb.i ], [ 0, %.lr.ph.i173.preheader ] ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.0145447, i64 %indvars.iv.i174
  %i.df = load i64, ptr %i.de, align 8, !tbaa !28
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i174
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !28
  %.not.i175 = icmp eq i64 %i.df, %i.dh
  br i1 %.not.i175, label %bb.i, label %Abc_TtEqual.exit

Abc_TtEqual.exit:                                 ; preds = %.lr.ph.i173
  %i.di = getelementptr inbounds nuw [224 x i8], ptr %4, i64 %indvars.iv ; 10 uses
  store ptr %.0145447, ptr %i.di, align 16, !tbaa !24
  %i.dj = getelementptr inbounds [8 x i8], ptr %.0145447, i64 %i.r ; 15 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !25
  br i1 %i.q, label %bb.j, label %bb.k

bb.j:                                             ; preds = %Abc_TtEqual.exit
  %i.dl = load i64, ptr %0, align 8, !tbaa !28
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !28
  %i.do = and i64 %i.dn, %i.dl                    ; 2 uses
  %i.dp = trunc nuw nsw i64 %indvars.iv to i32
  %i.dq = shl nuw i32 1, %i.dp
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = lshr i64 %i.do, %i.dr
  %i.dt = or i64 %i.ds, %i.do
  store i64 %i.dt, ptr %i.dj, align 8, !tbaa !28
  br label %.lr.ph.preheader.i190

bb.k:                                             ; preds = %Abc_TtEqual.exit
  %i.du = icmp samesign ult i64 %indvars.iv, 6
  %i.dv = trunc i64 %indvars.iv to i32            ; 2 uses
  br i1 %i.du, label %.lr.ph.i189, label %.preheader.lr.ph.i179

.lr.ph.i189:                                      ; preds = %bb.k
  %i.dw = shl nuw nsw i32 1, %i.dv
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !28 ; 4 uses
  %i.dz = zext nneg i32 %i.dw to i64              ; 4 uses
  br i1 %min.iters.check614, label %scalar.ph613.preheader, label %vector.memcheck615

scalar.ph613.preheader:                           ; preds = %vector.memcheck615, %.lr.ph.i189
  br i1 %i.x, label %scalar.ph613.epil.preheader, label %scalar.ph613

vector.memcheck615:                               ; preds = %.lr.ph.i189
  %6 = add i64 %.idx.i, %.0145447612
  %7 = sub i64 %i.a, %6
  %diff.check616 = icmp ugt i64 %7, -32
  br i1 %diff.check616, label %scalar.ph613.preheader, label %vector.ph617

vector.ph617:                                     ; preds = %vector.memcheck615
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.dy, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert619 = insertelement <2 x i64> poison, i64 %i.dz, i64 0
  %broadcast.splat620 = shufflevector <2 x i64> %broadcast.splatinsert619, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body621

vector.body621:                                   ; preds = %vector.body621, %vector.ph617
  %index622 = phi i64 [ 0, %vector.ph617 ], [ %index.next625, %vector.body621 ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index622 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %wide.load623 = load <2 x i64>, ptr %i.ea, align 8, !tbaa !28
  %wide.load624 = load <2 x i64>, ptr %i.eb, align 8, !tbaa !28
  %i.ec = and <2 x i64> %wide.load623, %broadcast.splat ; 2 uses
  %i.ed = and <2 x i64> %wide.load624, %broadcast.splat ; 2 uses
  %i.ee = lshr <2 x i64> %i.ec, %broadcast.splat620
  %i.ef = lshr <2 x i64> %i.ed, %broadcast.splat620
  %i.eg = or <2 x i64> %i.ee, %i.ec
  %i.eh = or <2 x i64> %i.ef, %i.ed
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %index622 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store <2 x i64> %i.eg, ptr %i.ei, align 8, !tbaa !28
  store <2 x i64> %i.eh, ptr %i.ej, align 8, !tbaa !28
  %index.next625 = add nuw i64 %index622, 4       ; 2 uses
  %i.ek = icmp eq i64 %index.next625, %n.vec618
  br i1 %i.ek, label %.lr.ph.preheader.i190, label %vector.body621, !llvm.loop !88

scalar.ph613:                                     ; preds = %scalar.ph613.preheader, %scalar.ph613
  %indvars.iv58.i = phi i64 [ %indvars.iv.next59.i.1, %scalar.ph613 ], [ 0, %scalar.ph613.preheader ] ; 4 uses
  %niter976 = phi i64 [ %niter976.next.1, %scalar.ph613 ], [ 0, %scalar.ph613.preheader ]
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv58.i
  %i.em = load i64, ptr %i.el, align 8, !tbaa !28
  %i.en = and i64 %i.em, %i.dy                    ; 2 uses
  %i.eo = lshr i64 %i.en, %i.dz
  %i.ep = or i64 %i.eo, %i.en
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv58.i
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !28
  %indvars.iv.next59.i = or disjoint i64 %indvars.iv58.i, 1 ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next59.i
  %i.es = load i64, ptr %i.er, align 8, !tbaa !28
  %i.et = and i64 %i.es, %i.dy                    ; 2 uses
  %i.eu = lshr i64 %i.et, %i.dz
  %i.ev = or i64 %i.eu, %i.et
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.next59.i
  store i64 %i.ev, ptr %i.ew, align 8, !tbaa !28
  %indvars.iv.next59.i.1 = add nuw nsw i64 %indvars.iv58.i, 2 ; 2 uses
  %niter976.next.1 = add i64 %niter976, 2         ; 2 uses
  %niter976.ncmp.1 = icmp eq i64 %niter976.next.1, %unroll_iter975
  br i1 %niter976.ncmp.1, label %.lr.ph.preheader.i190.loopexit.unr-lcssa, label %scalar.ph613, !llvm.loop !89

.preheader.lr.ph.i179:                            ; preds = %bb.k
  %i.ex = add i32 %i.dv, -6                       ; 2 uses
  %i.ey = shl i32 2, %i.ex
  %i.ez = sext i32 %i.ey to i64                   ; 2 uses
  %i.fa = shl nuw i32 1, %i.ex                    ; 4 uses
  %i.fb = sext i32 %i.fa to i64                   ; 5 uses
  %smax.i182 = call i32 @llvm.smax.i32(i32 %i.fa, i32 1) ; 2 uses
  %wide.trip.count.i183 = zext nneg i32 %smax.i182 to i64 ; 3 uses
  %i.fc = shl nsw i64 %i.fb, 3                    ; 2 uses
  %i.fd = add i64 %.idx.i, %.0145447612
  %i.fe = add i64 %i.fc, %i.a
  %min.iters.check636 = icmp slt i32 %i.fa, 8
  %diff.check638 = icmp ult i64 %i.fc, 32
  %i.ff = sub i64 %i.fe, %i.fd
  %diff.check639 = icmp ugt i64 %i.ff, -32
  %conflict.rdx640 = or i1 %diff.check638, %diff.check639
  %.reass = add i64 %.0145447612, %invariant.op
  %diff.check641 = icmp ult i64 %.reass, 31
  %conflict.rdx642 = or i1 %conflict.rdx640, %diff.check641
  %n.vec644 = and i64 %wide.trip.count.i183, 2147483644
  %xtraiter965 = and i64 %wide.trip.count.i183, 1
  %i.fg = icmp slt i32 %i.fa, 2
  %unroll_iter969 = and i64 %wide.trip.count.i183, 2147483646
  %lcmp.mod967.not = icmp eq i64 %xtraiter965, 0
  %lcmp.mod968 = trunc i32 %smax.i182 to i1
  br label %.preheader.us.i184

.preheader.us.i184:                               ; preds = %._crit_edge.us.i188, %.preheader.lr.ph.i179
  %.04453.us.i = phi ptr [ %i.gf, %._crit_edge.us.i188 ], [ %i.dj, %.preheader.lr.ph.i179 ] ; 9 uses
  %.04552.us.i = phi ptr [ %i.ge, %._crit_edge.us.i188 ], [ %0, %.preheader.lr.ph.i179 ] ; 5 uses
  %brmerge1013 = select i1 %min.iters.check636, i1 true, i1 %conflict.rdx642
  br i1 %brmerge1013, label %scalar.ph635.preheader, label %vector.body645

scalar.ph635.preheader:                           ; preds = %.preheader.us.i184
  br i1 %i.fg, label %scalar.ph635.epil.preheader, label %scalar.ph635

vector.body645:                                   ; preds = %.preheader.us.i184, %vector.body645
  %index646 = phi i64 [ %index.next649, %vector.body645 ], [ 0, %.preheader.us.i184 ] ; 3 uses
  %i.fh = add nuw nsw i64 %index646, %i.fb        ; 2 uses
  %i.fi = getelementptr inbounds [8 x i8], ptr %.04552.us.i, i64 %i.fh ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %wide.load647 = load <2 x i64>, ptr %i.fi, align 8, !tbaa !28 ; 2 uses
  %wide.load648 = load <2 x i64>, ptr %i.fj, align 8, !tbaa !28 ; 2 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i, i64 %index646 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store <2 x i64> %wide.load647, ptr %i.fk, align 8, !tbaa !28
  store <2 x i64> %wide.load648, ptr %i.fl, align 8, !tbaa !28
  %i.fm = getelementptr inbounds [8 x i8], ptr %.04453.us.i, i64 %i.fh ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store <2 x i64> %wide.load647, ptr %i.fm, align 8, !tbaa !28
  store <2 x i64> %wide.load648, ptr %i.fn, align 8, !tbaa !28
  %index.next649 = add nuw i64 %index646, 4       ; 2 uses
  %i.fo = icmp eq i64 %index.next649, %n.vec644
  br i1 %i.fo, label %._crit_edge.us.i188, label %vector.body645, !llvm.loop !90

scalar.ph635:                                     ; preds = %scalar.ph635.preheader, %scalar.ph635
  %indvars.iv.i185 = phi i64 [ %indvars.iv.next.i186.1, %scalar.ph635 ], [ 0, %scalar.ph635.preheader ] ; 4 uses
  %niter970 = phi i64 [ %niter970.next.1, %scalar.ph635 ], [ 0, %scalar.ph635.preheader ]
  %i.fp = add nuw nsw i64 %indvars.iv.i185, %i.fb ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.04552.us.i, i64 %i.fp
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !28 ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i, i64 %indvars.iv.i185
  store i64 %i.fr, ptr %i.fs, align 8, !tbaa !28
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i, i64 %i.fp
  store i64 %i.fr, ptr %i.ft, align 8, !tbaa !28
  %indvars.iv.next.i186 = or disjoint i64 %indvars.iv.i185, 1 ; 2 uses
  %i.fu = add nuw nsw i64 %indvars.iv.next.i186, %i.fb ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %.04552.us.i, i64 %i.fu
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !28 ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i, i64 %indvars.iv.next.i186
  store i64 %i.fw, ptr %i.fx, align 8, !tbaa !28
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i, i64 %i.fu
  store i64 %i.fw, ptr %i.fy, align 8, !tbaa !28
  %indvars.iv.next.i186.1 = add nuw nsw i64 %indvars.iv.i185, 2 ; 2 uses
  %niter970.next.1 = add i64 %niter970, 2         ; 2 uses
  %niter970.ncmp.1 = icmp eq i64 %niter970.next.1, %unroll_iter969
  br i1 %niter970.ncmp.1, label %._crit_edge.us.i188.loopexit.unr-lcssa, label %scalar.ph635, !llvm.loop !91

._crit_edge.us.i188.loopexit.unr-lcssa:           ; preds = %scalar.ph635
  br i1 %lcmp.mod967.not, label %._crit_edge.us.i188, label %scalar.ph635.epil.preheader

scalar.ph635.epil.preheader:                      ; preds = %._crit_edge.us.i188.loopexit.unr-lcssa, %scalar.ph635.preheader
  %indvars.iv.i185.epil.init = phi i64 [ 0, %scalar.ph635.preheader ], [ %indvars.iv.next.i186.1, %._crit_edge.us.i188.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod968)
  %i.fz = add nuw nsw i64 %indvars.iv.i185.epil.init, %i.fb ; 2 uses
  %i.ga = getelementptr inbounds [8 x i8], ptr %.04552.us.i, i64 %i.fz
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !28 ; 2 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i, i64 %indvars.iv.i185.epil.init
  store i64 %i.gb, ptr %i.gc, align 8, !tbaa !28
  %i.gd = getelementptr inbounds [8 x i8], ptr %.04453.us.i, i64 %i.fz
  store i64 %i.gb, ptr %i.gd, align 8, !tbaa !28
  br label %._crit_edge.us.i188

._crit_edge.us.i188:                              ; preds = %vector.body645, %scalar.ph635.epil.preheader, %._crit_edge.us.i188.loopexit.unr-lcssa
  %i.ge = getelementptr inbounds [8 x i8], ptr %.04552.us.i, i64 %i.ez ; 2 uses
  %i.gf = getelementptr inbounds [8 x i8], ptr %.04453.us.i, i64 %i.ez
  %i.gg = icmp ult ptr %i.ge, %i.s
  br i1 %i.gg, label %.preheader.us.i184, label %.lr.ph.preheader.i190, !llvm.loop !92

.lr.ph.preheader.i190.loopexit.unr-lcssa:         ; preds = %scalar.ph613
  br i1 %lcmp.mod973.not, label %.lr.ph.preheader.i190, label %scalar.ph613.epil.preheader

scalar.ph613.epil.preheader:                      ; preds = %.lr.ph.preheader.i190.loopexit.unr-lcssa, %scalar.ph613.preheader
  %indvars.iv58.i.epil.init = phi i64 [ 0, %scalar.ph613.preheader ], [ %indvars.iv.next59.i.1, %.lr.ph.preheader.i190.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod974)
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv58.i.epil.init
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !28
  %i.gj = and i64 %i.gi, %i.dy                    ; 2 uses
  %i.gk = lshr i64 %i.gj, %i.dz
  %i.gl = or i64 %i.gk, %i.gj
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv58.i.epil.init
  store i64 %i.gl, ptr %i.gm, align 8, !tbaa !28
  br label %.lr.ph.preheader.i190

.lr.ph.preheader.i190:                            ; preds = %._crit_edge.us.i188, %vector.body621, %scalar.ph613.epil.preheader, %.lr.ph.preheader.i190.loopexit.unr-lcssa, %bb.j
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.r
  %i.go = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store ptr %i.gn, ptr %i.go, align 16, !tbaa !26
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.r ; 7 uses
  br i1 %or.cond916, label %.lr.ph.i192.preheader, label %vector.body

.lr.ph.i192.preheader:                            ; preds = %.lr.ph.preheader.i190
  br i1 %i.y, label %.lr.ph.i192.epil.preheader, label %.lr.ph.i192

vector.body:                                      ; preds = %.lr.ph.preheader.i190, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.preheader.i190 ] ; 4 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %.0145447, i64 %index ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %wide.load = load <2 x i64>, ptr %i.gq, align 8, !tbaa !28
  %wide.load606 = load <2 x i64>, ptr %i.gr, align 8, !tbaa !28
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %index ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %wide.load607 = load <2 x i64>, ptr %i.gs, align 8, !tbaa !28
  %wide.load608 = load <2 x i64>, ptr %i.gt, align 8, !tbaa !28
  %i.gu = xor <2 x i64> %wide.load607, %wide.load
  %i.gv = xor <2 x i64> %wide.load608, %wide.load606
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %index ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  store <2 x i64> %i.gu, ptr %i.gw, align 8, !tbaa !28
  store <2 x i64> %i.gv, ptr %i.gx, align 8, !tbaa !28
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gy = icmp eq i64 %index.next, %n.vec
  br i1 %i.gy, label %Abc_TtXor.exit, label %vector.body, !llvm.loop !93

.lr.ph.i192:                                      ; preds = %.lr.ph.i192.preheader, %.lr.ph.i192
  %indvars.iv.i193 = phi i64 [ %indvars.iv.next.i194.3, %.lr.ph.i192 ], [ 0, %.lr.ph.i192.preheader ] ; 7 uses
  %niter982 = phi i64 [ %niter982.next.3, %.lr.ph.i192 ], [ 0, %.lr.ph.i192.preheader ]
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %.0145447, i64 %indvars.iv.i193
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !28
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.i193
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !28
  %i.hd = xor i64 %i.hc, %i.ha
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.i193
  store i64 %i.hd, ptr %i.he, align 8, !tbaa !28
  %indvars.iv.next.i194 = or disjoint i64 %indvars.iv.i193, 1 ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.0145447, i64 %indvars.iv.next.i194
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !28
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.next.i194
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !28
  %i.hj = xor i64 %i.hi, %i.hg
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.next.i194
  store i64 %i.hj, ptr %i.hk, align 8, !tbaa !28
  %indvars.iv.next.i194.1 = or disjoint i64 %indvars.iv.i193, 2 ; 3 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %.0145447, i64 %indvars.iv.next.i194.1
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !28
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.next.i194.1
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !28
  %i.hp = xor i64 %i.ho, %i.hm
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.next.i194.1
  store i64 %i.hp, ptr %i.hq, align 8, !tbaa !28
  %indvars.iv.next.i194.2 = or disjoint i64 %indvars.iv.i193, 3 ; 3 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %.0145447, i64 %indvars.iv.next.i194.2
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !28
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.next.i194.2
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !28
  %i.hv = xor i64 %i.hu, %i.hs
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.next.i194.2
  store i64 %i.hv, ptr %i.hw, align 8, !tbaa !28
  %indvars.iv.next.i194.3 = add nuw nsw i64 %indvars.iv.i193, 4 ; 2 uses
  %niter982.next.3 = add i64 %niter982, 4         ; 2 uses
  %niter982.ncmp.3 = icmp eq i64 %niter982.next.3, %unroll_iter981
  br i1 %niter982.ncmp.3, label %Abc_TtXor.exit.loopexit.unr-lcssa, label %.lr.ph.i192, !llvm.loop !94

Abc_TtXor.exit.loopexit.unr-lcssa:                ; preds = %.lr.ph.i192
  br i1 %lcmp.mod979.not, label %Abc_TtXor.exit, label %.lr.ph.i192.epil.preheader

.lr.ph.i192.epil.preheader:                       ; preds = %Abc_TtXor.exit.loopexit.unr-lcssa, %.lr.ph.i192.preheader
  %indvars.iv.i193.epil.init = phi i64 [ 0, %.lr.ph.i192.preheader ], [ %indvars.iv.next.i194.3, %Abc_TtXor.exit.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod980)
  br label %.lr.ph.i192.epil

.lr.ph.i192.epil:                                 ; preds = %.lr.ph.i192.epil, %.lr.ph.i192.epil.preheader
  %indvars.iv.i193.epil = phi i64 [ %indvars.iv.next.i194.epil, %.lr.ph.i192.epil ], [ %indvars.iv.i193.epil.init, %.lr.ph.i192.epil.preheader ] ; 4 uses
  %epil.iter978 = phi i64 [ %epil.iter978.next, %.lr.ph.i192.epil ], [ 0, %.lr.ph.i192.epil.preheader ]
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %.0145447, i64 %indvars.iv.i193.epil
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !28
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.i193.epil
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !28
  %i.ib = xor i64 %i.ia, %i.hy
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.i193.epil
  store i64 %i.ib, ptr %i.ic, align 8, !tbaa !28
  %indvars.iv.next.i194.epil = add nuw nsw i64 %indvars.iv.i193.epil, 1
  %epil.iter978.next = add i64 %epil.iter978, 1   ; 2 uses
  %epil.iter978.cmp.not = icmp eq i64 %epil.iter978.next, %xtraiter977
  br i1 %epil.iter978.cmp.not, label %Abc_TtXor.exit, label %.lr.ph.i192.epil, !llvm.loop !95

Abc_TtXor.exit:                                   ; preds = %vector.body, %Abc_TtXor.exit.loopexit.unr-lcssa, %.lr.ph.i192.epil
  %i.id = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %i.r
  %i.ie = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  store i32 1, ptr %i.ie, align 8, !tbaa !16
  %i.if = shl nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.di, i64 28
  %i.ih = trunc i64 %i.if to i32
  %i.ii = or disjoint i32 %i.ih, 1
  store i32 %i.ii, ptr %i.ig, align 4, !tbaa !16
  %i.ij = getelementptr inbounds nuw i8, ptr %i.di, i64 92
  store i32 1, ptr %i.ij, align 4, !tbaa !16
  %i.ik = getelementptr inbounds nuw i8, ptr %i.di, i64 96
  %i.il = trunc nuw i64 %i.if to i32
  store i32 %i.il, ptr %i.ik, align 16, !tbaa !16
  %i.im = trunc i64 %indvars.iv to i8
  %i.in = add i8 %i.im, 97
  %i.io = getelementptr inbounds nuw i8, ptr %i.di, i64 160
  store i8 %i.in, ptr %i.io, align 16, !tbaa !14
  %i.ip = getelementptr inbounds nuw i8, ptr %i.di, i64 161
  store i8 0, ptr %i.ip, align 1, !tbaa !14
  %i.iq = add nsw i32 %.0147446, 1
  %i.ir = sext i32 %.0147446 to i64
  %i.is = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ir
  store ptr %i.di, ptr %i.is, align 8, !tbaa !133
  br label %Abc_TtEqual.exit.thread

Abc_TtEqual.exit.thread:                          ; preds = %bb.i, %bb.h, %bb.g, %Abc_TtXor.exit
  %.1148 = phi i32 [ %i.iq, %Abc_TtXor.exit ], [ %.0147446, %bb.h ], [ %.0147446, %bb.g ], [ %.0147446, %bb.i ] ; 4 uses
  %.1146 = phi ptr [ %i.id, %Abc_TtXor.exit ], [ %.0145447, %bb.h ], [ %.0145447, %bb.g ], [ %.0145447, %bb.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !96

._crit_edge:                                      ; preds = %Abc_TtEqual.exit.thread
  %i.it = icmp eq i32 %.1148, 0
  br i1 %i.it, label %._crit_edge.thread, label %.preheader425

.preheader425:                                    ; preds = %._crit_edge
  %i.iu = icmp sgt i32 %.1148, 0
  br i1 %i.iu, label %.preheader.lr.ph, label %._crit_edge485.thread

.preheader.lr.ph:                                 ; preds = %.preheader425
  %i.iv = icmp sgt i32 %i.g, 0                    ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.g to i64 ; 9 uses
  %i.iw = icmp eq i32 %i.g, 1                     ; 4 uses
  %i.ix = sext i32 %i.g to i64
  %.idx.i.i287 = shl nsw i64 %i.ix, 3             ; 2 uses
  %i.iy = shl nuw nsw i64 %wide.trip.count59.i, 3 ; 2 uses
  %min.iters.check811 = icmp ult i32 %i.g, 4
  %n.vec813 = and i64 %wide.trip.count59.i, 4294967292
  %min.iters.check779 = icmp ult i32 %i.g, 4
  %n.vec781 = and i64 %wide.trip.count59.i, 4294967292
  %min.iters.check747 = icmp ult i32 %i.g, 4
  %n.vec749 = and i64 %wide.trip.count59.i, 4294967292
  %min.iters.check715 = icmp ult i32 %i.g, 4
  %n.vec717 = and i64 %wide.trip.count59.i, 4294967292
  %min.iters.check700 = icmp ult i32 %i.g, 4
  %n.vec703 = and i64 %wide.trip.count59.i, 4294967292
  %xtraiter994 = and i64 %wide.trip.count59.i, 3  ; 3 uses
  %i.iz = icmp ult i32 %i.g, 4
  %unroll_iter998 = and i64 %wide.trip.count59.i, 4294967292
  %lcmp.mod996.not = icmp eq i64 %xtraiter994, 0
  %lcmp.mod997 = icmp ne i64 %xtraiter994, 0
  br label %.preheader

._crit_edge.thread:                               ; preds = %bb.c, %._crit_edge
  %i.ja = icmp ne ptr %.0158, null
  %or.cond = and i1 %i.h, %i.ja
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.thread
  call void @free(ptr noundef nonnull %.0158) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.thread
  %i.jb = icmp sgt i32 %i.g, 0
  br i1 %i.jb, label %.lr.ph.preheader.i196, label %.loopexit

.lr.ph.preheader.i196:                            ; preds = %bb.m
  %wide.trip.count.i197 = zext nneg i32 %i.g to i64 ; 2 uses
  br label %.lr.ph.i198

bb.n:                                             ; preds = %.lr.ph.i198
  %indvars.iv.next.i201 = add nuw nsw i64 %indvars.iv.i199, 1 ; 2 uses
  %exitcond.not.i202 = icmp eq i64 %indvars.iv.next.i201, %wide.trip.count.i197
  br i1 %exitcond.not.i202, label %.loopexit, label %.lr.ph.i198, !llvm.loop !97

.lr.ph.i198:                                      ; preds = %bb.n, %.lr.ph.preheader.i196
  %indvars.iv.i199 = phi i64 [ 0, %.lr.ph.preheader.i196 ], [ %indvars.iv.next.i201, %bb.n ] ; 2 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i199
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !28
  %.not.i200 = icmp eq i64 %i.jd, 0
  br i1 %.not.i200, label %bb.n, label %.lr.ph.i206

.loopexit:                                        ; preds = %bb.n, %bb.m
  store i8 48, ptr %2, align 1, !tbaa !14
  store i8 0, ptr %i.i, align 1, !tbaa !14
  br label %bb.bj
end_hunk_0
