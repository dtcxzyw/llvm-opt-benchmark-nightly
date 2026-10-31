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
  %6 = sub i64 %.idx.i, %i.a
  %i.u = sub i64 %.idx.i, %i.a
  %i.v = add nsw i64 %wide.trip.count59.i, -1     ; 2 uses
  %min.iters.check646 = icmp ult i32 %i.g, 4
  %n.vec648 = and i64 %wide.trip.count59.i, 2147483644
  %xtraiter920 = and i64 %wide.trip.count59.i, 1
  %i.w = icmp eq i64 %i.v, 0
  %unroll_iter924 = and i64 %wide.trip.count59.i, 2147483646
  %lcmp.mod922.not = icmp eq i64 %xtraiter920, 0
  %lcmp.mod923 = trunc i32 %i.g to i1
  %invariant.op = add i64 %i.u, -1
  %min.iters.check612 = icmp ult i32 %i.g, 4
  %invariant.op974 = add i64 %6, -1
  %n.vec614 = and i64 %wide.trip.count59.i, 4294967292
  %xtraiter932 = and i64 %wide.trip.count59.i, 1
  %i.x = icmp eq i64 %i.v, 0
  %unroll_iter936 = and i64 %wide.trip.count59.i, 4294967294
  %lcmp.mod934.not = icmp eq i64 %xtraiter932, 0
  %lcmp.mod935 = trunc i32 %i.g to i1
  %min.iters.check = icmp ult i32 %i.g, 4
  %diff.check604 = icmp ult i64 %.idx.i, 32
  %or.cond877 = select i1 %min.iters.check, i1 true, i1 %diff.check604
  %n.vec = and i64 %wide.trip.count59.i, 4294967292
  %xtraiter938 = and i64 %wide.trip.count59.i, 3  ; 3 uses
  %i.y = icmp ult i32 %i.g, 4
  %unroll_iter942 = and i64 %wide.trip.count59.i, 4294967292
  %lcmp.mod940.not = icmp eq i64 %xtraiter938, 0
  %lcmp.mod941 = icmp ne i64 %xtraiter938, 0
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %Abc_TtEqual.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Abc_TtEqual.exit.thread ] ; 15 uses
  %.0145447 = phi ptr [ %.0158, %.lr.ph ], [ %.1146, %Abc_TtEqual.exit.thread ] ; 19 uses
  %.0147446 = phi i32 [ 0, %.lr.ph ], [ %.1148, %Abc_TtEqual.exit.thread ] ; 5 uses
  %.0145447609 = ptrtoaddr ptr %.0145447 to i64   ; 5 uses
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
  %i.ao = sub i64 %i.a, %.0145447609
  %diff.check644 = icmp ugt i64 %i.ao, -32
  %or.cond876 = select i1 %min.iters.check646, i1 true, i1 %diff.check644
  br i1 %or.cond876, label %scalar.ph645.preheader, label %vector.ph647

scalar.ph645.preheader:                           ; preds = %.lr.ph.i
  br i1 %i.w, label %scalar.ph645.epil.preheader, label %scalar.ph645

vector.ph647:                                     ; preds = %.lr.ph.i
  %broadcast.splatinsert649 = insertelement <2 x i64> poison, i64 %i.am, i64 0
  %broadcast.splat650 = shufflevector <2 x i64> %broadcast.splatinsert649, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert651 = insertelement <2 x i64> poison, i64 %i.an, i64 0
  %broadcast.splat652 = shufflevector <2 x i64> %broadcast.splatinsert651, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body653

vector.body653:                                   ; preds = %vector.body653, %vector.ph647
  %index654 = phi i64 [ 0, %vector.ph647 ], [ %index.next657, %vector.body653 ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index654 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load655 = load <2 x i64>, ptr %i.ap, align 8, !tbaa !28
  %wide.load656 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !28
  %i.ar = and <2 x i64> %wide.load655, %broadcast.splat650 ; 2 uses
  %i.as = and <2 x i64> %wide.load656, %broadcast.splat650 ; 2 uses
  %i.at = shl <2 x i64> %i.ar, %broadcast.splat652
  %i.au = shl <2 x i64> %i.as, %broadcast.splat652
  %i.av = or <2 x i64> %i.at, %i.ar
  %i.aw = or <2 x i64> %i.au, %i.as
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.0145447, i64 %index654 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x i64> %i.av, ptr %i.ax, align 8, !tbaa !28
  store <2 x i64> %i.aw, ptr %i.ay, align 8, !tbaa !28
  %index.next657 = add nuw i64 %index654, 4       ; 2 uses
  %i.az = icmp eq i64 %index.next657, %n.vec648
  br i1 %i.az, label %.lr.ph.i173.preheader, label %vector.body653, !llvm.loop !81

scalar.ph645:                                     ; preds = %scalar.ph645.preheader, %scalar.ph645
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i.1, %scalar.ph645 ], [ 0, %scalar.ph645.preheader ] ; 4 uses
  %niter925 = phi i64 [ %niter925.next.1, %scalar.ph645 ], [ 0, %scalar.ph645.preheader ]
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
  %niter925.next.1 = add i64 %niter925, 2         ; 2 uses
  %niter925.ncmp.1 = icmp eq i64 %niter925.next.1, %unroll_iter924
  br i1 %niter925.ncmp.1, label %.lr.ph.i173.preheader.loopexit.unr-lcssa, label %scalar.ph645, !llvm.loop !82

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
  %7 = shl nsw i64 %i.bs, 3                       ; 2 uses
  %8 = sub i64 %.0145447609, %i.a                 ; 2 uses
  %i.bt = add i64 %8, %7
  %min.iters.check668 = icmp slt i32 %i.bo, 8
  %diff.check662 = icmp ult i64 %7, 32
  %i.bu = add i64 %8, -1
  %diff.check663 = icmp ult i64 %i.bu, 31
  %conflict.rdx664 = or i1 %diff.check662, %diff.check663
  %i.bv = add i64 %i.bt, -1
  %diff.check665 = icmp ult i64 %i.bv, 31
  %conflict.rdx666 = or i1 %conflict.rdx664, %diff.check665
  %n.vec670 = and i64 %wide.trip.count.i, 2147483644
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.bw = icmp slt i32 %i.bo, 4
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod919 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.04251.us.i = phi ptr [ %i.cu, %._crit_edge.us.i ], [ %.0145447, %.preheader.us.preheader.i ] ; 8 uses
  %.04350.us.i = phi ptr [ %i.ct, %._crit_edge.us.i ], [ %0, %.preheader.us.preheader.i ] ; 7 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %.04251.us.i, i64 %i.bs ; 6 uses
  %brmerge = select i1 %min.iters.check668, i1 true, i1 %conflict.rdx666
  br i1 %brmerge, label %scalar.ph667.preheader, label %vector.body671

scalar.ph667.preheader:                           ; preds = %.preheader.us.i
  br i1 %i.bw, label %scalar.ph667.epil.preheader, label %scalar.ph667

vector.body671:                                   ; preds = %.preheader.us.i, %vector.body671
  %index672 = phi i64 [ %index.next675, %vector.body671 ], [ 0, %.preheader.us.i ] ; 4 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %index672 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %wide.load673 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !28 ; 2 uses
  %wide.load674 = load <2 x i64>, ptr %i.by, align 8, !tbaa !28 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %index672 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store <2 x i64> %wide.load673, ptr %i.bz, align 8, !tbaa !28
  store <2 x i64> %wide.load674, ptr %i.ca, align 8, !tbaa !28
  %i.cb = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index672 ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 16
  store <2 x i64> %wide.load673, ptr %i.cb, align 8, !tbaa !28
  store <2 x i64> %wide.load674, ptr %i.cc, align 8, !tbaa !28
  %index.next675 = add nuw i64 %index672, 4       ; 2 uses
  %i.cd = icmp eq i64 %index.next675, %n.vec670
  br i1 %i.cd, label %._crit_edge.us.i, label %vector.body671, !llvm.loop !83

scalar.ph667:                                     ; preds = %scalar.ph667.preheader, %scalar.ph667
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph667 ], [ 0, %scalar.ph667.preheader ] ; 7 uses
  %niter = phi i64 [ %niter.next.3, %scalar.ph667 ], [ 0, %scalar.ph667.preheader ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %indvars.iv.i
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !28 ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %indvars.iv.i
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !28
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store i64 %i.cf, ptr %gep.i, align 8, !tbaa !28
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %indvars.iv.next.i
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !28 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %indvars.iv.next.i
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !28
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  store i64 %i.ci, ptr %gep.i.1, align 8, !tbaa !28
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %indvars.iv.next.i.1
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !28 ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %indvars.iv.next.i.1
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !28
  %gep.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.1
  store i64 %i.cl, ptr %gep.i.2, align 8, !tbaa !28
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %indvars.iv.next.i.2
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !28 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %indvars.iv.next.i.2
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !28
  %gep.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.2
  store i64 %i.co, ptr %gep.i.3, align 8, !tbaa !28
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.loopexit.unr-lcssa, label %scalar.ph667, !llvm.loop !84

._crit_edge.us.i.loopexit.unr-lcssa:              ; preds = %scalar.ph667
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %scalar.ph667.epil.preheader

scalar.ph667.epil.preheader:                      ; preds = %._crit_edge.us.i.loopexit.unr-lcssa, %scalar.ph667.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %scalar.ph667.preheader ], [ %indvars.iv.next.i.3, %._crit_edge.us.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod919)
  br label %scalar.ph667.epil

scalar.ph667.epil:                                ; preds = %scalar.ph667.epil, %scalar.ph667.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %scalar.ph667.epil ], [ %indvars.iv.i.epil.init, %scalar.ph667.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %scalar.ph667.epil ], [ 0, %scalar.ph667.epil.preheader ]
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %indvars.iv.i.epil
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !28 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %indvars.iv.i.epil
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !28
  %gep.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.epil
  store i64 %i.cr, ptr %gep.i.epil, align 8, !tbaa !28
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i, label %scalar.ph667.epil, !llvm.loop !85

._crit_edge.us.i:                                 ; preds = %vector.body671, %._crit_edge.us.i.loopexit.unr-lcssa, %scalar.ph667.epil
  %i.ct = getelementptr inbounds [8 x i8], ptr %.04350.us.i, i64 %i.br ; 2 uses
  %i.cu = getelementptr inbounds [8 x i8], ptr %.04251.us.i, i64 %i.br
  %i.cv = icmp ult ptr %i.ct, %i.s
  br i1 %i.cv, label %.preheader.us.i, label %.lr.ph.i173.preheader, !llvm.loop !86

.lr.ph.i173.preheader.loopexit.unr-lcssa:         ; preds = %scalar.ph645
  br i1 %lcmp.mod922.not, label %.lr.ph.i173.preheader, label %scalar.ph645.epil.preheader

scalar.ph645.epil.preheader:                      ; preds = %.lr.ph.i173.preheader.loopexit.unr-lcssa, %scalar.ph645.preheader
  %indvars.iv56.i.epil.init = phi i64 [ 0, %scalar.ph645.preheader ], [ %indvars.iv.next57.i.1, %.lr.ph.i173.preheader.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod923)
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv56.i.epil.init
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !28
  %i.cy = and i64 %i.cx, %i.am                    ; 2 uses
  %i.cz = shl i64 %i.cy, %i.an
  %i.da = or i64 %i.cz, %i.cy
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.0145447, i64 %indvars.iv56.i.epil.init
  store i64 %i.da, ptr %i.db, align 8, !tbaa !28
  br label %.lr.ph.i173.preheader

.lr.ph.i173.preheader:                            ; preds = %._crit_edge.us.i, %vector.body653, %scalar.ph645.epil.preheader, %.lr.ph.i173.preheader.loopexit.unr-lcssa, %.preheader.lr.ph.i, %bb.e
  br label %.lr.ph.i173

bb.i:                                             ; preds = %.lr.ph.i173
  %indvars.iv.next.i176 = add nuw nsw i64 %indvars.iv.i174, 1 ; 2 uses
  %exitcond.not.i177 = icmp eq i64 %indvars.iv.next.i176, %wide.trip.count59.i
  br i1 %exitcond.not.i177, label %Abc_TtEqual.exit.thread, label %.lr.ph.i173, !llvm.loop !87

.lr.ph.i173:                                      ; preds = %.lr.ph.i173.preheader, %bb.i
  %indvars.iv.i174 = phi i64 [ %indvars.iv.next.i176, %bb.i ], [ 0, %.lr.ph.i173.preheader ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.0145447, i64 %indvars.iv.i174
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !28
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i174
  %i.df = load i64, ptr %i.de, align 8, !tbaa !28
  %.not.i175 = icmp eq i64 %i.dd, %i.df
  br i1 %.not.i175, label %bb.i, label %Abc_TtEqual.exit

Abc_TtEqual.exit:                                 ; preds = %.lr.ph.i173
  %i.dg = getelementptr inbounds nuw [224 x i8], ptr %4, i64 %indvars.iv ; 10 uses
  store ptr %.0145447, ptr %i.dg, align 16, !tbaa !24
  %i.dh = getelementptr inbounds [8 x i8], ptr %.0145447, i64 %i.r ; 15 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !25
  br i1 %i.q, label %bb.j, label %bb.k

bb.j:                                             ; preds = %Abc_TtEqual.exit
  %i.dj = load i64, ptr %0, align 8, !tbaa !28
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !28
  %i.dm = and i64 %i.dl, %i.dj                    ; 2 uses
  %i.dn = trunc nuw nsw i64 %indvars.iv to i32
  %i.do = shl nuw i32 1, %i.dn
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = lshr i64 %i.dm, %i.dp
  %i.dr = or i64 %i.dq, %i.dm
  store i64 %i.dr, ptr %i.dh, align 8, !tbaa !28
  br label %.lr.ph.preheader.i190

bb.k:                                             ; preds = %Abc_TtEqual.exit
  %i.ds = icmp samesign ult i64 %indvars.iv, 6
  %i.dt = trunc i64 %indvars.iv to i32            ; 2 uses
  br i1 %i.ds, label %.lr.ph.i189, label %.preheader.lr.ph.i179

.lr.ph.i189:                                      ; preds = %bb.k
  %i.du = shl nuw nsw i32 1, %i.dt
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !28 ; 4 uses
  %i.dx = zext nneg i32 %i.du to i64              ; 4 uses
  %.reass975 = add i64 %.0145447609, %invariant.op974
  %diff.check610 = icmp ult i64 %.reass975, 31
  %or.cond976 = select i1 %min.iters.check612, i1 true, i1 %diff.check610
  br i1 %or.cond976, label %scalar.ph611.preheader, label %vector.ph613

scalar.ph611.preheader:                           ; preds = %.lr.ph.i189
  br i1 %i.x, label %scalar.ph611.epil.preheader, label %scalar.ph611

vector.ph613:                                     ; preds = %.lr.ph.i189
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.dw, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert615 = insertelement <2 x i64> poison, i64 %i.dx, i64 0
  %broadcast.splat616 = shufflevector <2 x i64> %broadcast.splatinsert615, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body617

vector.body617:                                   ; preds = %vector.body617, %vector.ph613
  %index618 = phi i64 [ 0, %vector.ph613 ], [ %index.next621, %vector.body617 ] ; 3 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index618 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %wide.load619 = load <2 x i64>, ptr %i.dy, align 8, !tbaa !28
  %wide.load620 = load <2 x i64>, ptr %i.dz, align 8, !tbaa !28
  %i.ea = and <2 x i64> %wide.load619, %broadcast.splat ; 2 uses
  %i.eb = and <2 x i64> %wide.load620, %broadcast.splat ; 2 uses
  %i.ec = lshr <2 x i64> %i.ea, %broadcast.splat616
  %i.ed = lshr <2 x i64> %i.eb, %broadcast.splat616
  %i.ee = or <2 x i64> %i.ec, %i.ea
  %i.ef = or <2 x i64> %i.ed, %i.eb
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %index618 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store <2 x i64> %i.ee, ptr %i.eg, align 8, !tbaa !28
  store <2 x i64> %i.ef, ptr %i.eh, align 8, !tbaa !28
  %index.next621 = add nuw i64 %index618, 4       ; 2 uses
  %i.ei = icmp eq i64 %index.next621, %n.vec614
  br i1 %i.ei, label %.lr.ph.preheader.i190, label %vector.body617, !llvm.loop !88

scalar.ph611:                                     ; preds = %scalar.ph611.preheader, %scalar.ph611
  %indvars.iv58.i = phi i64 [ %indvars.iv.next59.i.1, %scalar.ph611 ], [ 0, %scalar.ph611.preheader ] ; 4 uses
  %niter937 = phi i64 [ %niter937.next.1, %scalar.ph611 ], [ 0, %scalar.ph611.preheader ]
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv58.i
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !28
  %i.el = and i64 %i.ek, %i.dw                    ; 2 uses
  %i.em = lshr i64 %i.el, %i.dx
  %i.en = or i64 %i.em, %i.el
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv58.i
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !28
  %indvars.iv.next59.i = or disjoint i64 %indvars.iv58.i, 1 ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next59.i
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !28
  %i.er = and i64 %i.eq, %i.dw                    ; 2 uses
  %i.es = lshr i64 %i.er, %i.dx
  %i.et = or i64 %i.es, %i.er
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv.next59.i
  store i64 %i.et, ptr %i.eu, align 8, !tbaa !28
  %indvars.iv.next59.i.1 = add nuw nsw i64 %indvars.iv58.i, 2 ; 2 uses
  %niter937.next.1 = add i64 %niter937, 2         ; 2 uses
  %niter937.ncmp.1 = icmp eq i64 %niter937.next.1, %unroll_iter936
  br i1 %niter937.ncmp.1, label %.lr.ph.preheader.i190.loopexit.unr-lcssa, label %scalar.ph611, !llvm.loop !89

.preheader.lr.ph.i179:                            ; preds = %bb.k
  %i.ev = add i32 %i.dt, -6                       ; 2 uses
  %i.ew = shl i32 2, %i.ev
  %i.ex = sext i32 %i.ew to i64                   ; 2 uses
  %i.ey = shl nuw i32 1, %i.ev                    ; 4 uses
  %i.ez = sext i32 %i.ey to i64                   ; 5 uses
  %smax.i182 = call i32 @llvm.smax.i32(i32 %i.ey, i32 1) ; 2 uses
  %wide.trip.count.i183 = zext nneg i32 %smax.i182 to i64 ; 3 uses
  %i.fa = shl nsw i64 %i.ez, 3                    ; 2 uses
  %i.fb = add i64 %.idx.i, %.0145447609
  %i.fc = add i64 %i.fa, %i.a
  %min.iters.check632 = icmp slt i32 %i.ey, 8
  %diff.check626 = icmp ult i64 %i.fa, 32
  %i.fd = sub i64 %i.fc, %i.fb
  %diff.check627 = icmp ugt i64 %i.fd, -32
  %conflict.rdx628 = or i1 %diff.check626, %diff.check627
  %.reass = add i64 %.0145447609, %invariant.op
  %diff.check629 = icmp ult i64 %.reass, 31
  %conflict.rdx630 = or i1 %conflict.rdx628, %diff.check629
  %n.vec634 = and i64 %wide.trip.count.i183, 2147483644
  %xtraiter926 = and i64 %wide.trip.count.i183, 1
  %i.fe = icmp slt i32 %i.ey, 2
  %unroll_iter930 = and i64 %wide.trip.count.i183, 2147483646
  %lcmp.mod928.not = icmp eq i64 %xtraiter926, 0
  %lcmp.mod929 = trunc i32 %smax.i182 to i1
  br label %.preheader.us.i184

.preheader.us.i184:                               ; preds = %._crit_edge.us.i188, %.preheader.lr.ph.i179
  %.04453.us.i = phi ptr [ %i.gd, %._crit_edge.us.i188 ], [ %i.dh, %.preheader.lr.ph.i179 ] ; 9 uses
  %.04552.us.i = phi ptr [ %i.gc, %._crit_edge.us.i188 ], [ %0, %.preheader.lr.ph.i179 ] ; 5 uses
  %brmerge977 = select i1 %min.iters.check632, i1 true, i1 %conflict.rdx630
  br i1 %brmerge977, label %scalar.ph631.preheader, label %vector.body635

scalar.ph631.preheader:                           ; preds = %.preheader.us.i184
  br i1 %i.fe, label %scalar.ph631.epil.preheader, label %scalar.ph631

vector.body635:                                   ; preds = %.preheader.us.i184, %vector.body635
  %index636 = phi i64 [ %index.next639, %vector.body635 ], [ 0, %.preheader.us.i184 ] ; 3 uses
  %i.ff = add nuw nsw i64 %index636, %i.ez        ; 2 uses
  %i.fg = getelementptr inbounds [8 x i8], ptr %.04552.us.i, i64 %i.ff ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %wide.load637 = load <2 x i64>, ptr %i.fg, align 8, !tbaa !28 ; 2 uses
  %wide.load638 = load <2 x i64>, ptr %i.fh, align 8, !tbaa !28 ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i, i64 %index636 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  store <2 x i64> %wide.load637, ptr %i.fi, align 8, !tbaa !28
  store <2 x i64> %wide.load638, ptr %i.fj, align 8, !tbaa !28
  %i.fk = getelementptr inbounds [8 x i8], ptr %.04453.us.i, i64 %i.ff ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store <2 x i64> %wide.load637, ptr %i.fk, align 8, !tbaa !28
  store <2 x i64> %wide.load638, ptr %i.fl, align 8, !tbaa !28
  %index.next639 = add nuw i64 %index636, 4       ; 2 uses
  %i.fm = icmp eq i64 %index.next639, %n.vec634
  br i1 %i.fm, label %._crit_edge.us.i188, label %vector.body635, !llvm.loop !90

scalar.ph631:                                     ; preds = %scalar.ph631.preheader, %scalar.ph631
  %indvars.iv.i185 = phi i64 [ %indvars.iv.next.i186.1, %scalar.ph631 ], [ 0, %scalar.ph631.preheader ] ; 4 uses
  %niter931 = phi i64 [ %niter931.next.1, %scalar.ph631 ], [ 0, %scalar.ph631.preheader ]
  %i.fn = add nuw nsw i64 %indvars.iv.i185, %i.ez ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.04552.us.i, i64 %i.fn
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !28 ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i, i64 %indvars.iv.i185
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !28
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i, i64 %i.fn
  store i64 %i.fp, ptr %i.fr, align 8, !tbaa !28
  %indvars.iv.next.i186 = or disjoint i64 %indvars.iv.i185, 1 ; 2 uses
  %i.fs = add nuw nsw i64 %indvars.iv.next.i186, %i.ez ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %.04552.us.i, i64 %i.fs
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !28 ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i, i64 %indvars.iv.next.i186
  store i64 %i.fu, ptr %i.fv, align 8, !tbaa !28
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i, i64 %i.fs
  store i64 %i.fu, ptr %i.fw, align 8, !tbaa !28
  %indvars.iv.next.i186.1 = add nuw nsw i64 %indvars.iv.i185, 2 ; 2 uses
  %niter931.next.1 = add i64 %niter931, 2         ; 2 uses
  %niter931.ncmp.1 = icmp eq i64 %niter931.next.1, %unroll_iter930
  br i1 %niter931.ncmp.1, label %._crit_edge.us.i188.loopexit.unr-lcssa, label %scalar.ph631, !llvm.loop !91

._crit_edge.us.i188.loopexit.unr-lcssa:           ; preds = %scalar.ph631
  br i1 %lcmp.mod928.not, label %._crit_edge.us.i188, label %scalar.ph631.epil.preheader

scalar.ph631.epil.preheader:                      ; preds = %._crit_edge.us.i188.loopexit.unr-lcssa, %scalar.ph631.preheader
  %indvars.iv.i185.epil.init = phi i64 [ 0, %scalar.ph631.preheader ], [ %indvars.iv.next.i186.1, %._crit_edge.us.i188.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod929)
  %i.fx = add nuw nsw i64 %indvars.iv.i185.epil.init, %i.ez ; 2 uses
  %i.fy = getelementptr inbounds [8 x i8], ptr %.04552.us.i, i64 %i.fx
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !28 ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i, i64 %indvars.iv.i185.epil.init
  store i64 %i.fz, ptr %i.ga, align 8, !tbaa !28
  %i.gb = getelementptr inbounds [8 x i8], ptr %.04453.us.i, i64 %i.fx
  store i64 %i.fz, ptr %i.gb, align 8, !tbaa !28
  br label %._crit_edge.us.i188

._crit_edge.us.i188:                              ; preds = %vector.body635, %scalar.ph631.epil.preheader, %._crit_edge.us.i188.loopexit.unr-lcssa
  %i.gc = getelementptr inbounds [8 x i8], ptr %.04552.us.i, i64 %i.ex ; 2 uses
  %i.gd = getelementptr inbounds [8 x i8], ptr %.04453.us.i, i64 %i.ex
  %i.ge = icmp ult ptr %i.gc, %i.s
  br i1 %i.ge, label %.preheader.us.i184, label %.lr.ph.preheader.i190, !llvm.loop !92

.lr.ph.preheader.i190.loopexit.unr-lcssa:         ; preds = %scalar.ph611
  br i1 %lcmp.mod934.not, label %.lr.ph.preheader.i190, label %scalar.ph611.epil.preheader

scalar.ph611.epil.preheader:                      ; preds = %.lr.ph.preheader.i190.loopexit.unr-lcssa, %scalar.ph611.preheader
  %indvars.iv58.i.epil.init = phi i64 [ 0, %scalar.ph611.preheader ], [ %indvars.iv.next59.i.1, %.lr.ph.preheader.i190.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod935)
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv58.i.epil.init
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !28
  %i.gh = and i64 %i.gg, %i.dw                    ; 2 uses
  %i.gi = lshr i64 %i.gh, %i.dx
  %i.gj = or i64 %i.gi, %i.gh
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv58.i.epil.init
  store i64 %i.gj, ptr %i.gk, align 8, !tbaa !28
  br label %.lr.ph.preheader.i190

.lr.ph.preheader.i190:                            ; preds = %._crit_edge.us.i188, %vector.body617, %scalar.ph611.epil.preheader, %.lr.ph.preheader.i190.loopexit.unr-lcssa, %bb.j
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.r
  %i.gm = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store ptr %i.gl, ptr %i.gm, align 16, !tbaa !26
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.r ; 7 uses
  br i1 %or.cond877, label %.lr.ph.i192.preheader, label %vector.body

.lr.ph.i192.preheader:                            ; preds = %.lr.ph.preheader.i190
  br i1 %i.y, label %.lr.ph.i192.epil.preheader, label %.lr.ph.i192

vector.body:                                      ; preds = %.lr.ph.preheader.i190, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.preheader.i190 ] ; 4 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %.0145447, i64 %index ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %wide.load = load <2 x i64>, ptr %i.go, align 8, !tbaa !28
  %wide.load605 = load <2 x i64>, ptr %i.gp, align 8, !tbaa !28
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %index ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %wide.load606 = load <2 x i64>, ptr %i.gq, align 8, !tbaa !28
  %wide.load607 = load <2 x i64>, ptr %i.gr, align 8, !tbaa !28
  %i.gs = xor <2 x i64> %wide.load606, %wide.load
  %i.gt = xor <2 x i64> %wide.load607, %wide.load605
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %index ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  store <2 x i64> %i.gs, ptr %i.gu, align 8, !tbaa !28
  store <2 x i64> %i.gt, ptr %i.gv, align 8, !tbaa !28
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gw = icmp eq i64 %index.next, %n.vec
  br i1 %i.gw, label %Abc_TtXor.exit, label %vector.body, !llvm.loop !93

.lr.ph.i192:                                      ; preds = %.lr.ph.i192.preheader, %.lr.ph.i192
  %indvars.iv.i193 = phi i64 [ %indvars.iv.next.i194.3, %.lr.ph.i192 ], [ 0, %.lr.ph.i192.preheader ] ; 7 uses
  %niter943 = phi i64 [ %niter943.next.3, %.lr.ph.i192 ], [ 0, %.lr.ph.i192.preheader ]
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %.0145447, i64 %indvars.iv.i193
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !28
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv.i193
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !28
  %i.hb = xor i64 %i.ha, %i.gy
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv.i193
  store i64 %i.hb, ptr %i.hc, align 8, !tbaa !28
  %indvars.iv.next.i194 = or disjoint i64 %indvars.iv.i193, 1 ; 3 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %.0145447, i64 %indvars.iv.next.i194
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !28
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv.next.i194
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !28
  %i.hh = xor i64 %i.hg, %i.he
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv.next.i194
  store i64 %i.hh, ptr %i.hi, align 8, !tbaa !28
  %indvars.iv.next.i194.1 = or disjoint i64 %indvars.iv.i193, 2 ; 3 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.0145447, i64 %indvars.iv.next.i194.1
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !28
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv.next.i194.1
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !28
  %i.hn = xor i64 %i.hm, %i.hk
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv.next.i194.1
  store i64 %i.hn, ptr %i.ho, align 8, !tbaa !28
  %indvars.iv.next.i194.2 = or disjoint i64 %indvars.iv.i193, 3 ; 3 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.0145447, i64 %indvars.iv.next.i194.2
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !28
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv.next.i194.2
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !28
  %i.ht = xor i64 %i.hs, %i.hq
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv.next.i194.2
  store i64 %i.ht, ptr %i.hu, align 8, !tbaa !28
  %indvars.iv.next.i194.3 = add nuw nsw i64 %indvars.iv.i193, 4 ; 2 uses
  %niter943.next.3 = add i64 %niter943, 4         ; 2 uses
  %niter943.ncmp.3 = icmp eq i64 %niter943.next.3, %unroll_iter942
  br i1 %niter943.ncmp.3, label %Abc_TtXor.exit.loopexit.unr-lcssa, label %.lr.ph.i192, !llvm.loop !94

Abc_TtXor.exit.loopexit.unr-lcssa:                ; preds = %.lr.ph.i192
  br i1 %lcmp.mod940.not, label %Abc_TtXor.exit, label %.lr.ph.i192.epil.preheader

.lr.ph.i192.epil.preheader:                       ; preds = %Abc_TtXor.exit.loopexit.unr-lcssa, %.lr.ph.i192.preheader
  %indvars.iv.i193.epil.init = phi i64 [ 0, %.lr.ph.i192.preheader ], [ %indvars.iv.next.i194.3, %Abc_TtXor.exit.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod941)
  br label %.lr.ph.i192.epil

.lr.ph.i192.epil:                                 ; preds = %.lr.ph.i192.epil, %.lr.ph.i192.epil.preheader
  %indvars.iv.i193.epil = phi i64 [ %indvars.iv.next.i194.epil, %.lr.ph.i192.epil ], [ %indvars.iv.i193.epil.init, %.lr.ph.i192.epil.preheader ] ; 4 uses
  %epil.iter939 = phi i64 [ %epil.iter939.next, %.lr.ph.i192.epil ], [ 0, %.lr.ph.i192.epil.preheader ]
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.0145447, i64 %indvars.iv.i193.epil
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !28
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv.i193.epil
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !28
  %i.hz = xor i64 %i.hy, %i.hw
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv.i193.epil
  store i64 %i.hz, ptr %i.ia, align 8, !tbaa !28
  %indvars.iv.next.i194.epil = add nuw nsw i64 %indvars.iv.i193.epil, 1
  %epil.iter939.next = add i64 %epil.iter939, 1   ; 2 uses
  %epil.iter939.cmp.not = icmp eq i64 %epil.iter939.next, %xtraiter938
  br i1 %epil.iter939.cmp.not, label %Abc_TtXor.exit, label %.lr.ph.i192.epil, !llvm.loop !95

Abc_TtXor.exit:                                   ; preds = %vector.body, %Abc_TtXor.exit.loopexit.unr-lcssa, %.lr.ph.i192.epil
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.gn, i64 %i.r
  %i.ic = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store i32 1, ptr %i.ic, align 8, !tbaa !16
  %i.id = shl nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.dg, i64 28
  %i.if = trunc i64 %i.id to i32
  %i.ig = or disjoint i32 %i.if, 1
  store i32 %i.ig, ptr %i.ie, align 4, !tbaa !16
  %i.ih = getelementptr inbounds nuw i8, ptr %i.dg, i64 92
  store i32 1, ptr %i.ih, align 4, !tbaa !16
  %i.ii = getelementptr inbounds nuw i8, ptr %i.dg, i64 96
  %i.ij = trunc nuw i64 %i.id to i32
  store i32 %i.ij, ptr %i.ii, align 16, !tbaa !16
  %i.ik = trunc i64 %indvars.iv to i8
  %i.il = add i8 %i.ik, 97
  %i.im = getelementptr inbounds nuw i8, ptr %i.dg, i64 160
  store i8 %i.il, ptr %i.im, align 16, !tbaa !14
  %i.in = getelementptr inbounds nuw i8, ptr %i.dg, i64 161
  store i8 0, ptr %i.in, align 1, !tbaa !14
  %i.io = add nsw i32 %.0147446, 1
  %i.ip = sext i32 %.0147446 to i64
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ip
  store ptr %i.dg, ptr %i.iq, align 8, !tbaa !133
  br label %Abc_TtEqual.exit.thread

Abc_TtEqual.exit.thread:                          ; preds = %bb.i, %bb.h, %bb.g, %Abc_TtXor.exit
  %.1148 = phi i32 [ %i.io, %Abc_TtXor.exit ], [ %.0147446, %bb.h ], [ %.0147446, %bb.g ], [ %.0147446, %bb.i ] ; 4 uses
  %.1146 = phi ptr [ %i.ib, %Abc_TtXor.exit ], [ %.0145447, %bb.h ], [ %.0145447, %bb.g ], [ %.0145447, %bb.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !96

._crit_edge:                                      ; preds = %Abc_TtEqual.exit.thread
  %i.ir = icmp eq i32 %.1148, 0
  br i1 %i.ir, label %._crit_edge.thread, label %.preheader425

.preheader425:                                    ; preds = %._crit_edge
  %i.is = icmp sgt i32 %.1148, 0
  br i1 %i.is, label %.preheader.lr.ph, label %._crit_edge485.thread

.preheader.lr.ph:                                 ; preds = %.preheader425
  %i.it = icmp sgt i32 %i.g, 0                    ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.g to i64 ; 9 uses
  %i.iu = icmp eq i32 %i.g, 1                     ; 4 uses
  %i.iv = sext i32 %i.g to i64
  %.idx.i.i287 = shl nsw i64 %i.iv, 3             ; 2 uses
  %i.iw = shl nuw nsw i64 %wide.trip.count59.i, 3 ; 2 uses
  %min.iters.check786 = icmp ult i32 %i.g, 4
  %n.vec788 = and i64 %wide.trip.count59.i, 4294967292
  %min.iters.check756 = icmp ult i32 %i.g, 4
  %n.vec758 = and i64 %wide.trip.count59.i, 4294967292
  %min.iters.check726 = icmp ult i32 %i.g, 4
  %n.vec728 = and i64 %wide.trip.count59.i, 4294967292
  %min.iters.check696 = icmp ult i32 %i.g, 4
  %n.vec698 = and i64 %wide.trip.count59.i, 4294967292
  %min.iters.check682 = icmp ult i32 %i.g, 4
  %n.vec684 = and i64 %wide.trip.count59.i, 4294967292
  %xtraiter955 = and i64 %wide.trip.count59.i, 3  ; 3 uses
  %i.ix = icmp ult i32 %i.g, 4
  %unroll_iter959 = and i64 %wide.trip.count59.i, 4294967292
  %lcmp.mod957.not = icmp eq i64 %xtraiter955, 0
  %lcmp.mod958 = icmp ne i64 %xtraiter955, 0
  br label %.preheader

._crit_edge.thread:                               ; preds = %bb.c, %._crit_edge
  %i.iy = icmp ne ptr %.0158, null
  %or.cond = and i1 %i.h, %i.iy
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.thread
  call void @free(ptr noundef nonnull %.0158) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.thread
  %i.iz = icmp sgt i32 %i.g, 0
  br i1 %i.iz, label %.lr.ph.preheader.i196, label %.loopexit

.lr.ph.preheader.i196:                            ; preds = %bb.m
  %wide.trip.count.i197 = zext nneg i32 %i.g to i64 ; 2 uses
  br label %.lr.ph.i198

bb.n:                                             ; preds = %.lr.ph.i198
  %indvars.iv.next.i201 = add nuw nsw i64 %indvars.iv.i199, 1 ; 2 uses
  %exitcond.not.i202 = icmp eq i64 %indvars.iv.next.i201, %wide.trip.count.i197
  br i1 %exitcond.not.i202, label %.loopexit, label %.lr.ph.i198, !llvm.loop !97

.lr.ph.i198:                                      ; preds = %bb.n, %.lr.ph.preheader.i196
  %indvars.iv.i199 = phi i64 [ 0, %.lr.ph.preheader.i196 ], [ %indvars.iv.next.i201, %bb.n ] ; 2 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i199
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !28
  %.not.i200 = icmp eq i64 %i.jb, 0
  br i1 %.not.i200, label %bb.n, label %.lr.ph.i206

.loopexit:                                        ; preds = %bb.n, %bb.m
  store i8 48, ptr %2, align 1, !tbaa !14
  store i8 0, ptr %i.i, align 1, !tbaa !14
  br label %bb.bj
end_hunk_0
begin_hunk_1_@Dsc_Decompose:bb.a
  %indvars.iv.next.i217 = add nuw nsw i64 %indvars.iv.i216, 1 ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %.088.i, i64 %indvars.iv.next.i217
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !16
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %indvars.iv.next.i217
  store i32 %i.na, ptr %i.nb, align 4, !tbaa !16
  %indvars.iv.next.i217.1 = add nuw nsw i64 %indvars.iv.i216, 2 ; 2 uses
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %.088.i, i64 %indvars.iv.next.i217.1
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !16
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %indvars.iv.next.i217.1
  store i32 %i.nd, ptr %i.ne, align 4, !tbaa !16
  %indvars.iv.next.i217.2 = add nuw nsw i64 %indvars.iv.i216, 3 ; 2 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %.088.i, i64 %indvars.iv.next.i217.2
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !16
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %indvars.iv.next.i217.2
  store i32 %i.ng, ptr %i.nh, align 4, !tbaa !16
  %indvars.iv.next.i217.3 = add nuw nsw i64 %indvars.iv.i216, 4 ; 2 uses
  %exitcond.not.i218.3 = icmp eq i64 %indvars.iv.next.i217.3, %wide.trip.count.i214
  br i1 %exitcond.not.i218.3, label %.loopexit.i, label %.lr.ph.i215, !llvm.loop !103

bb.aa:                                            ; preds = %concat.exit.i
  store i32 %i.mc, ptr %i.md, align 4, !tbaa !16
  %.not95109.i = icmp slt i32 %i.mc, 1
  br i1 %.not95109.i, label %.loopexit.i, label %.lr.ph111.preheader.i

.lr.ph111.preheader.i:                            ; preds = %bb.aa
  %i.ni = add nuw nsw i32 %i.mc, 1
  %wide.trip.count128.i = zext nneg i32 %i.ni to i64 ; 2 uses
  %i.nj = zext nneg i32 %i.mc to i64              ; 2 uses
  %min.iters.check850 = icmp ult i32 %i.mc, 8
  br i1 %min.iters.check850, label %.lr.ph111.i.preheader, label %vector.memcheck846

vector.memcheck846:                               ; preds = %.lr.ph111.preheader.i
  %i.nk = sub i64 %i.li, %.086.i847
  %i.nl = add i64 %i.nk, 91
  %diff.check848 = icmp ult i64 %i.nl, 31
  br i1 %diff.check848, label %.lr.ph111.i.preheader, label %vector.ph851

vector.ph851:                                     ; preds = %vector.memcheck846
  %n.vec852 = and i64 %i.nj, 2147483640           ; 3 uses
  %i.nm = or disjoint i64 %n.vec852, 1
  br label %vector.body853

vector.body853:                                   ; preds = %vector.body853, %vector.ph851
  %index854 = phi i64 [ 0, %vector.ph851 ], [ %index.next857, %vector.body853 ] ; 2 uses
  %i.nn = or disjoint i64 %index854, 1            ; 2 uses
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %.086.i, i64 %i.nn ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %wide.load855.a = load <4 x i32>, ptr %i.no, align 4, !tbaa !16
  %wide.load856 = load <4 x i32>, ptr %i.np, align 4, !tbaa !16
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.nn ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  store <4 x i32> %wide.load855.a, ptr %i.nq, align 4, !tbaa !16
  store <4 x i32> %wide.load856, ptr %i.nr, align 4, !tbaa !16
  %index.next857 = add nuw i64 %index854, 8       ; 2 uses
  %i.ns = icmp eq i64 %index.next857, %n.vec852
  br i1 %i.ns, label %middle.block858, label %vector.body853, !llvm.loop !104

middle.block858:                                  ; preds = %vector.body853
  %cmp.n859 = icmp eq i64 %n.vec852, %i.nj
  br i1 %cmp.n859, label %.loopexit.i, label %.lr.ph111.i.preheader

.lr.ph111.i.preheader:                            ; preds = %vector.memcheck846, %.lr.ph111.preheader.i, %middle.block858
  %indvars.iv125.i.ph = phi i64 [ 1, %vector.memcheck846 ], [ 1, %.lr.ph111.preheader.i ], [ %i.nm, %middle.block858 ] ; 4 uses
  %i.nt = sub nsw i64 %wide.trip.count128.i, %indvars.iv125.i.ph
  %i.nu = zext nneg i32 %i.mc to i64
  %i.nv = sub nsw i64 %i.nu, %indvars.iv125.i.ph
  %xtraiter946 = and i64 %i.nt, 3                 ; 2 uses
  %lcmp.mod947.not = icmp eq i64 %xtraiter946, 0
  br i1 %lcmp.mod947.not, label %.lr.ph111.i.prol.loopexit, label %.lr.ph111.i.prol

.lr.ph111.i.prol:                                 ; preds = %.lr.ph111.i.preheader, %.lr.ph111.i.prol
  %indvars.iv125.i.prol = phi i64 [ %indvars.iv.next126.i.prol, %.lr.ph111.i.prol ], [ %indvars.iv125.i.ph, %.lr.ph111.i.preheader ] ; 3 uses
  %prol.iter948 = phi i64 [ %prol.iter948.next, %.lr.ph111.i.prol ], [ 0, %.lr.ph111.i.preheader ]
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %.086.i, i64 %indvars.iv125.i.prol
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !16
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %indvars.iv125.i.prol
  store i32 %i.nx, ptr %i.ny, align 4, !tbaa !16
  %indvars.iv.next126.i.prol = add nuw nsw i64 %indvars.iv125.i.prol, 1 ; 2 uses
  %prol.iter948.next = add i64 %prol.iter948, 1   ; 2 uses
  %prol.iter948.cmp.not = icmp eq i64 %prol.iter948.next, %xtraiter946
  br i1 %prol.iter948.cmp.not, label %.lr.ph111.i.prol.loopexit, label %.lr.ph111.i.prol, !llvm.loop !105

.lr.ph111.i.prol.loopexit:                        ; preds = %.lr.ph111.i.prol, %.lr.ph111.i.preheader
  %indvars.iv125.i.unr = phi i64 [ %indvars.iv125.i.ph, %.lr.ph111.i.preheader ], [ %indvars.iv.next126.i.prol, %.lr.ph111.i.prol ]
  %i.nz = icmp ult i64 %i.nv, 3
  br i1 %i.nz, label %.loopexit.i, label %.lr.ph111.i

.lr.ph111.i:                                      ; preds = %.lr.ph111.i.prol.loopexit, %.lr.ph111.i
  %indvars.iv125.i = phi i64 [ %indvars.iv.next126.i.3, %.lr.ph111.i ], [ %indvars.iv125.i.unr, %.lr.ph111.i.prol.loopexit ] ; 6 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %.086.i, i64 %indvars.iv125.i
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !16
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %indvars.iv125.i
  store i32 %i.ob, ptr %i.oc, align 4, !tbaa !16
  %indvars.iv.next126.i = add nuw nsw i64 %indvars.iv125.i, 1 ; 2 uses
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %.086.i, i64 %indvars.iv.next126.i
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !16
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %indvars.iv.next126.i
  store i32 %i.oe, ptr %i.of, align 4, !tbaa !16
  %indvars.iv.next126.i.1 = add nuw nsw i64 %indvars.iv125.i, 2 ; 2 uses
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %.086.i, i64 %indvars.iv.next126.i.1
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !16
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %indvars.iv.next126.i.1
  store i32 %i.oh, ptr %i.oi, align 4, !tbaa !16
  %indvars.iv.next126.i.2 = add nuw nsw i64 %indvars.iv125.i, 3 ; 2 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %.086.i, i64 %indvars.iv.next126.i.2
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !16
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %indvars.iv.next126.i.2
  store i32 %i.ok, ptr %i.ol, align 4, !tbaa !16
  %indvars.iv.next126.i.3 = add nuw nsw i64 %indvars.iv125.i, 4 ; 2 uses
  %exitcond129.not.i.3 = icmp eq i64 %indvars.iv.next126.i.3, %wide.trip.count128.i
  br i1 %exitcond129.not.i.3, label %.loopexit.i, label %.lr.ph111.i, !llvm.loop !106

.loopexit.i:                                      ; preds = %.lr.ph.i215.prol.loopexit, %.lr.ph.i215, %.lr.ph111.i.prol.loopexit, %.lr.ph111.i, %middle.block873, %middle.block858, %bb.aa, %bb.z
  %.in.i = select i1 %.not.i.i211364, ptr %i.jj, ptr %i.jg
  %i.om = load ptr, ptr %.in.i, align 8, !tbaa !22
  store ptr %i.om, ptr %i.lh, align 8, !tbaa !24
  %i.on = load i32, ptr %.087.i, align 4, !tbaa !16 ; 7 uses
  %i.oo = load i32, ptr %.085.i, align 4, !tbaa !16 ; 7 uses
  %i.op = add i32 %i.oo, %i.on
  %i.oq = getelementptr inbounds nuw i8, ptr %i.lh, i64 24 ; 13 uses
  store i32 %i.op, ptr %i.oq, align 8, !tbaa !16
  %.not97112.i = icmp slt i32 %i.on, 1
  br i1 %.not97112.i, label %.preheader.i, label %.lr.ph114.preheader.i

.lr.ph114.preheader.i:                            ; preds = %.loopexit.i
  %i.or = add nuw i32 %i.on, 1
  %wide.trip.count134.i = zext i32 %i.or to i64   ; 5 uses
  %i.os = zext nneg i32 %i.on to i64              ; 2 uses
  %min.iters.check835 = icmp ult i32 %i.on, 8
  br i1 %min.iters.check835, label %.lr.ph114.i.preheader, label %vector.memcheck831

vector.memcheck831:                               ; preds = %.lr.ph114.preheader.i
  %i.ot = sub i64 %i.li, %.087.i832
  %i.ou = add i64 %i.ot, 23
  %diff.check833 = icmp ult i64 %i.ou, 31
  br i1 %diff.check833, label %.lr.ph114.i.preheader, label %vector.ph836

vector.ph836:                                     ; preds = %vector.memcheck831
  %n.vec837 = and i64 %i.os, 2147483640           ; 3 uses
  %i.ov = or disjoint i64 %n.vec837, 1
  br label %vector.body838

vector.body838:                                   ; preds = %vector.body838, %vector.ph836
  %index839 = phi i64 [ 0, %vector.ph836 ], [ %index.next842, %vector.body838 ] ; 2 uses
  %i.ow = or disjoint i64 %index839, 1            ; 2 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %.087.i, i64 %i.ow ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  %wide.load840 = load <4 x i32>, ptr %i.ox, align 4, !tbaa !16
  %wide.load841 = load <4 x i32>, ptr %i.oy, align 4, !tbaa !16
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.ow ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  store <4 x i32> %wide.load840, ptr %i.oz, align 4, !tbaa !16
  store <4 x i32> %wide.load841, ptr %i.pa, align 4, !tbaa !16
  %index.next842 = add nuw i64 %index839, 8       ; 2 uses
  %i.pb = icmp eq i64 %index.next842, %n.vec837
  br i1 %i.pb, label %middle.block843, label %vector.body838, !llvm.loop !107

middle.block843:                                  ; preds = %vector.body838
  %cmp.n844 = icmp eq i64 %n.vec837, %i.os
  br i1 %cmp.n844, label %.preheader.i, label %.lr.ph114.i.preheader

.lr.ph114.i.preheader:                            ; preds = %vector.memcheck831, %.lr.ph114.preheader.i, %middle.block843
  %indvars.iv131.i.ph = phi i64 [ 1, %vector.memcheck831 ], [ 1, %.lr.ph114.preheader.i ], [ %i.ov, %middle.block843 ] ; 4 uses
  %i.pc = sub nsw i64 %wide.trip.count134.i, %indvars.iv131.i.ph
  %i.pd = zext nneg i32 %i.on to i64
  %i.pe = sub nsw i64 %i.pd, %indvars.iv131.i.ph
  %xtraiter949 = and i64 %i.pc, 3                 ; 2 uses
  %lcmp.mod950.not = icmp eq i64 %xtraiter949, 0
  br i1 %lcmp.mod950.not, label %.lr.ph114.i.prol.loopexit, label %.lr.ph114.i.prol

.lr.ph114.i.prol:                                 ; preds = %.lr.ph114.i.preheader, %.lr.ph114.i.prol
  %indvars.iv131.i.prol = phi i64 [ %indvars.iv.next132.i.prol, %.lr.ph114.i.prol ], [ %indvars.iv131.i.ph, %.lr.ph114.i.preheader ] ; 3 uses
  %prol.iter951 = phi i64 [ %prol.iter951.next, %.lr.ph114.i.prol ], [ 0, %.lr.ph114.i.preheader ]
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %.087.i, i64 %indvars.iv131.i.prol
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !16
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %indvars.iv131.i.prol
  store i32 %i.pg, ptr %i.ph, align 4, !tbaa !16
  %indvars.iv.next132.i.prol = add nuw nsw i64 %indvars.iv131.i.prol, 1 ; 2 uses
  %prol.iter951.next = add i64 %prol.iter951, 1   ; 2 uses
  %prol.iter951.cmp.not = icmp eq i64 %prol.iter951.next, %xtraiter949
  br i1 %prol.iter951.cmp.not, label %.lr.ph114.i.prol.loopexit, label %.lr.ph114.i.prol, !llvm.loop !108

.lr.ph114.i.prol.loopexit:                        ; preds = %.lr.ph114.i.prol, %.lr.ph114.i.preheader
  %indvars.iv131.i.unr = phi i64 [ %indvars.iv131.i.ph, %.lr.ph114.i.preheader ], [ %indvars.iv.next132.i.prol, %.lr.ph114.i.prol ]
  %i.pi = icmp ult i64 %i.pe, 3
  br i1 %i.pi, label %.preheader.i, label %.lr.ph114.i

.preheader.i:                                     ; preds = %.lr.ph114.i.prol.loopexit, %.lr.ph114.i, %middle.block843, %.loopexit.i
  %.082.lcssa.i = phi i64 [ 1, %.loopexit.i ], [ %wide.trip.count134.i, %middle.block843 ], [ %wide.trip.count134.i, %.lr.ph114.i ], [ %wide.trip.count134.i, %.lr.ph114.i.prol.loopexit ] ; 5 uses
  %.not98115.i = icmp slt i32 %i.oo, 1
  br i1 %.not98115.i, label %._crit_edge.i, label %.lr.ph118.preheader.i

.lr.ph118.preheader.i:                            ; preds = %.preheader.i
  %i.pj = add nuw i32 %i.oo, 1
  %wide.trip.count144.i = zext i32 %i.pj to i64   ; 2 uses
  %i.pk = zext nneg i32 %i.oo to i64              ; 2 uses
  %min.iters.check819 = icmp ult i32 %i.oo, 8
  br i1 %min.iters.check819, label %.lr.ph118.i.preheader, label %vector.memcheck815

vector.memcheck815:                               ; preds = %.lr.ph118.preheader.i
  %9 = add i64 %i.li, 20
  %i.pl = shl nuw nsw i64 %.082.lcssa.i, 2
  %i.pm = add i64 %9, %i.pl
  %i.pn = sub i64 %.085.i816, %i.pm
  %diff.check817 = icmp ugt i64 %i.pn, -32
  br i1 %diff.check817, label %.lr.ph118.i.preheader, label %vector.ph820

vector.ph820:                                     ; preds = %vector.memcheck815
  %n.vec821 = and i64 %i.pk, 2147483640           ; 4 uses
  %i.po = add nuw nsw i64 %.082.lcssa.i, %n.vec821
  %i.pp = or disjoint i64 %n.vec821, 1
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %.082.lcssa.i
  br label %vector.body822

vector.body822:                                   ; preds = %vector.body822, %vector.ph820
  %index823 = phi i64 [ 0, %vector.ph820 ], [ %index.next826, %vector.body822 ] ; 3 uses
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %.085.i, i64 %index823 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 4
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pr, i64 20
  %wide.load824 = load <4 x i32>, ptr %i.ps, align 4, !tbaa !16
  %wide.load825 = load <4 x i32>, ptr %i.pt, align 4, !tbaa !16
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %index823 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  store <4 x i32> %wide.load824, ptr %i.pu, align 4, !tbaa !16
  store <4 x i32> %wide.load825, ptr %i.pv, align 4, !tbaa !16
  %index.next826 = add nuw i64 %index823, 8       ; 2 uses
  %i.pw = icmp eq i64 %index.next826, %n.vec821
  br i1 %i.pw, label %middle.block827, label %vector.body822, !llvm.loop !109

middle.block827:                                  ; preds = %vector.body822
  %cmp.n828 = icmp eq i64 %n.vec821, %i.pk
  br i1 %cmp.n828, label %._crit_edge.i, label %.lr.ph118.i.preheader

.lr.ph118.i.preheader:                            ; preds = %vector.memcheck815, %.lr.ph118.preheader.i, %middle.block827
  %indvars.iv139.i.ph = phi i64 [ %.082.lcssa.i, %vector.memcheck815 ], [ %.082.lcssa.i, %.lr.ph118.preheader.i ], [ %i.po, %middle.block827 ] ; 2 uses
  %indvars.iv137.i.ph = phi i64 [ 1, %vector.memcheck815 ], [ 1, %.lr.ph118.preheader.i ], [ %i.pp, %middle.block827 ] ; 4 uses
  %i.px = sub nsw i64 %wide.trip.count144.i, %indvars.iv137.i.ph
  %i.py = zext nneg i32 %i.oo to i64
  %i.pz = sub nsw i64 %i.py, %indvars.iv137.i.ph
  %xtraiter952 = and i64 %i.px, 3                 ; 2 uses
  %lcmp.mod953.not = icmp eq i64 %xtraiter952, 0
  br i1 %lcmp.mod953.not, label %.lr.ph118.i.prol.loopexit, label %.lr.ph118.i.prol

.lr.ph118.i.prol:                                 ; preds = %.lr.ph118.i.preheader, %.lr.ph118.i.prol
  %indvars.iv139.i.prol = phi i64 [ %indvars.iv.next140.i.prol, %.lr.ph118.i.prol ], [ %indvars.iv139.i.ph, %.lr.ph118.i.preheader ] ; 2 uses
  %indvars.iv137.i.prol = phi i64 [ %indvars.iv.next138.i.prol, %.lr.ph118.i.prol ], [ %indvars.iv137.i.ph, %.lr.ph118.i.preheader ] ; 2 uses
  %prol.iter954 = phi i64 [ %prol.iter954.next, %.lr.ph118.i.prol ], [ 0, %.lr.ph118.i.preheader ]
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %.085.i, i64 %indvars.iv137.i.prol
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !16
  %indvars.iv.next140.i.prol = add nuw nsw i64 %indvars.iv139.i.prol, 1 ; 2 uses
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %indvars.iv139.i.prol
  store i32 %i.qb, ptr %i.qc, align 4, !tbaa !16
  %indvars.iv.next138.i.prol = add nuw nsw i64 %indvars.iv137.i.prol, 1 ; 2 uses
  %prol.iter954.next = add i64 %prol.iter954, 1   ; 2 uses
  %prol.iter954.cmp.not = icmp eq i64 %prol.iter954.next, %xtraiter952
  br i1 %prol.iter954.cmp.not, label %.lr.ph118.i.prol.loopexit, label %.lr.ph118.i.prol, !llvm.loop !110

.lr.ph118.i.prol.loopexit:                        ; preds = %.lr.ph118.i.prol, %.lr.ph118.i.preheader
  %indvars.iv139.i.unr = phi i64 [ %indvars.iv139.i.ph, %.lr.ph118.i.preheader ], [ %indvars.iv.next140.i.prol, %.lr.ph118.i.prol ]
  %indvars.iv137.i.unr = phi i64 [ %indvars.iv137.i.ph, %.lr.ph118.i.preheader ], [ %indvars.iv.next138.i.prol, %.lr.ph118.i.prol ]
  %i.qd = icmp ult i64 %i.pz, 3
  br i1 %i.qd, label %._crit_edge.i, label %.lr.ph118.i

.lr.ph114.i:                                      ; preds = %.lr.ph114.i.prol.loopexit, %.lr.ph114.i
  %indvars.iv131.i = phi i64 [ %indvars.iv.next132.i.3, %.lr.ph114.i ], [ %indvars.iv131.i.unr, %.lr.ph114.i.prol.loopexit ] ; 6 uses
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %.087.i, i64 %indvars.iv131.i
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !16
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %indvars.iv131.i
  store i32 %i.qf, ptr %i.qg, align 4, !tbaa !16
  %indvars.iv.next132.i = add nuw nsw i64 %indvars.iv131.i, 1 ; 2 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %.087.i, i64 %indvars.iv.next132.i
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !16
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %indvars.iv.next132.i
  store i32 %i.qi, ptr %i.qj, align 4, !tbaa !16
  %indvars.iv.next132.i.1 = add nuw nsw i64 %indvars.iv131.i, 2 ; 2 uses
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %.087.i, i64 %indvars.iv.next132.i.1
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !16
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %indvars.iv.next132.i.1
  store i32 %i.ql, ptr %i.qm, align 4, !tbaa !16
  %indvars.iv.next132.i.2 = add nuw nsw i64 %indvars.iv131.i, 3 ; 2 uses
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %.087.i, i64 %indvars.iv.next132.i.2
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !16
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %indvars.iv.next132.i.2
  store i32 %i.qo, ptr %i.qp, align 4, !tbaa !16
  %indvars.iv.next132.i.3 = add nuw nsw i64 %indvars.iv131.i, 4 ; 2 uses
  %exitcond135.not.i.3 = icmp eq i64 %indvars.iv.next132.i.3, %wide.trip.count134.i
  br i1 %exitcond135.not.i.3, label %.preheader.i, label %.lr.ph114.i, !llvm.loop !111

.lr.ph118.i:                                      ; preds = %.lr.ph118.i.prol.loopexit, %.lr.ph118.i
  %indvars.iv139.i = phi i64 [ %indvars.iv.next140.i.3, %.lr.ph118.i ], [ %indvars.iv139.i.unr, %.lr.ph118.i.prol.loopexit ] ; 5 uses
  %indvars.iv137.i = phi i64 [ %indvars.iv.next138.i.3, %.lr.ph118.i ], [ %indvars.iv137.i.unr, %.lr.ph118.i.prol.loopexit ] ; 5 uses
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %.085.i, i64 %indvars.iv137.i
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !16
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %indvars.iv139.i
  store i32 %i.qr, ptr %i.qs, align 4, !tbaa !16
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %.085.i, i64 %indvars.iv137.i
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 4
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !16
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %indvars.iv139.i
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 4
  store i32 %i.qv, ptr %i.qx, align 4, !tbaa !16
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %.085.i, i64 %indvars.iv137.i
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !16
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %indvars.iv139.i
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  store i32 %i.ra, ptr %i.rc, align 4, !tbaa !16
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %.085.i, i64 %indvars.iv137.i
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 12
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !16
  %indvars.iv.next140.i.3 = add nuw nsw i64 %indvars.iv139.i, 4
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %indvars.iv139.i
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 12
  store i32 %i.rf, ptr %i.rh, align 4, !tbaa !16
  %indvars.iv.next138.i.3 = add nuw nsw i64 %indvars.iv137.i, 4 ; 2 uses
  %exitcond145.not.i.3 = icmp eq i64 %indvars.iv.next138.i.3, %wide.trip.count144.i
  br i1 %exitcond145.not.i.3, label %._crit_edge.i, label %.lr.ph118.i, !llvm.loop !112

._crit_edge.i:                                    ; preds = %.lr.ph118.i.prol.loopexit, %.lr.ph118.i, %middle.block827, %.preheader.i
  %.not99.i = icmp ult i32 %i.on, %i.oo
  br i1 %.not99.i, label %bb.an, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.i
  %.in101.i = select i1 %.not.i.i211364, ptr %i.jg, ptr %i.jj
  %i.ri = load ptr, ptr %.in101.i, align 8, !tbaa !22 ; 13 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  store ptr %i.ri, ptr %i.rj, align 8, !tbaa !25
  %i.rk = load i32, ptr %.085.i, align 4, !tbaa !16 ; 2 uses
  %.not35.i285 = icmp slt i32 %i.rk, 1
  br i1 %.not35.i285, label %cubeCofactor.exit332, label %.lr.ph.i286

.lr.ph.i286:                                      ; preds = %bb.ab
  %i.rl = getelementptr inbounds i8, ptr %i.ri, i64 %.idx.i.i287 ; 2 uses
  %i.rm = add nuw i32 %i.rk, 1
  %wide.trip.count.i289 = zext i32 %i.rm to i64
  br label %bb.ac

bb.ac:                                            ; preds = %Abc_TtCofactor1.exit.i292, %.lr.ph.i286
  %indvars.iv.i290 = phi i64 [ 1, %.lr.ph.i286 ], [ %indvars.iv.next.i293, %Abc_TtCofactor1.exit.i292 ] ; 2 uses
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %.085.i, i64 %indvars.iv.i290
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !16 ; 4 uses
  %i.rp = and i32 %i.ro, 1
  %.not12.i291 = icmp eq i32 %i.rp, 0
  %i.rq = lshr i32 %i.ro, 1                       ; 10 uses
  br i1 %.not12.i291, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.iu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.rr = load i64, ptr %i.ri, align 8, !tbaa !28
  %i.rs = zext nneg i32 %i.rq to i64
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %i.rs
  %i.ru = load i64, ptr %i.rt, align 8, !tbaa !28
  %i.rv = and i64 %i.ru, %i.rr                    ; 2 uses
  %i.rw = shl nuw i32 1, %i.rq
  %i.rx = zext nneg i32 %i.rw to i64
  %i.ry = lshr i64 %i.rv, %i.rx
  %i.rz = or i64 %i.ry, %i.rv
  br label %Abc_TtCofactor1.exit.sink.split.i313

bb.af:                                            ; preds = %bb.ad
  %i.sa = icmp ult i32 %i.ro, 12
  br i1 %i.sa, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  br i1 %i.lg, label %.lr.ph.i.i309, label %Abc_TtCofactor1.exit.i292

.lr.ph.i.i309:                                    ; preds = %bb.ag
  %i.sb = shl nuw nsw i32 1, %i.rq
  %i.sc = zext nneg i32 %i.rq to i64
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %i.sc
  %i.se = load i64, ptr %i.sd, align 8, !tbaa !28 ; 2 uses
  %i.sf = zext nneg i32 %i.sb to i64              ; 2 uses
  br i1 %min.iters.check786, label %scalar.ph785, label %vector.ph787

vector.ph787:                                     ; preds = %.lr.ph.i.i309
  %broadcast.splatinsert789 = insertelement <2 x i64> poison, i64 %i.se, i64 0
  %broadcast.splat790 = shufflevector <2 x i64> %broadcast.splatinsert789, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert791 = insertelement <2 x i64> poison, i64 %i.sf, i64 0
  %broadcast.splat792 = shufflevector <2 x i64> %broadcast.splatinsert791, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body793

vector.body793:                                   ; preds = %vector.body793, %vector.ph787
  %index794 = phi i64 [ 0, %vector.ph787 ], [ %index.next797, %vector.body793 ] ; 2 uses
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.ri, i64 %index794 ; 3 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 16 ; 2 uses
  %wide.load795 = load <2 x i64>, ptr %i.sg, align 8, !tbaa !28
  %wide.load796 = load <2 x i64>, ptr %i.sh, align 8, !tbaa !28
  %i.si = and <2 x i64> %wide.load795, %broadcast.splat790 ; 2 uses
  %i.sj = and <2 x i64> %wide.load796, %broadcast.splat790 ; 2 uses
  %i.sk = lshr <2 x i64> %i.si, %broadcast.splat792
  %i.sl = lshr <2 x i64> %i.sj, %broadcast.splat792
  %i.sm = or <2 x i64> %i.sk, %i.si
  %i.sn = or <2 x i64> %i.sl, %i.sj
  store <2 x i64> %i.sm, ptr %i.sg, align 8, !tbaa !28
  store <2 x i64> %i.sn, ptr %i.sh, align 8, !tbaa !28
  %index.next797 = add nuw i64 %index794, 4       ; 2 uses
  %i.so = icmp eq i64 %index.next797, %n.vec788
  br i1 %i.so, label %Abc_TtCofactor1.exit.i292, label %vector.body793, !llvm.loop !113

scalar.ph785:                                     ; preds = %.lr.ph.i.i309, %scalar.ph785
  %indvars.iv48.i.i310 = phi i64 [ %indvars.iv.next49.i.i311, %scalar.ph785 ], [ 0, %.lr.ph.i.i309 ] ; 2 uses
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.ri, i64 %indvars.iv48.i.i310 ; 2 uses
  %i.sq = load i64, ptr %i.sp, align 8, !tbaa !28
  %i.sr = and i64 %i.sq, %i.se                    ; 2 uses
end_hunk_1
