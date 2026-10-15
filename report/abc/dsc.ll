Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/dsc?download=true
inline.NumInlined: 41
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 29
begin_hunk_0_@dsc_xor_group:bb.a
  br i1 %i.of, label %.lr.ph.i190.preheader, label %vector.memcheck326

vector.memcheck326:                               ; preds = %vector.scevcheck325
  %i.og = add i32 %i.nt, %i.mi
  %i.oh = add i32 %i.og, 1
  %i.oi = sext i32 %i.oh to i64
  %i.oj = shl nsw i64 %i.oi, 2
  %i.ok = add i64 %i.oj, %i.c
  %i.ol = sub i64 %i.ok, %i.a
  %i.om = add i64 %i.ol, -73
  %diff.check327 = icmp ult i64 %i.om, 31
  br i1 %diff.check327, label %.lr.ph.i190.preheader, label %vector.ph330

vector.ph330:                                     ; preds = %vector.memcheck326
  %n.vec331 = and i64 %i.nx, 2147483640           ; 4 uses
  %i.on = or disjoint i64 %n.vec331, 1
  %i.oo = trunc nuw nsw i64 %n.vec331 to i32
  %i.op = add i32 %i.nu, %i.oo
  %invariant.op369 = add i32 %i.nu, 1
  br label %vector.body332

vector.body332:                                   ; preds = %vector.body332, %vector.ph330
  %index333 = phi i64 [ 0, %vector.ph330 ], [ %index.next336, %vector.body332 ] ; 3 uses
  %i.oq = trunc i64 %index333 to i32
  %.reass370 = add i32 %i.oq, %invariant.op369
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index333 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 4
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 20
  %wide.load334 = load <4 x i32>, ptr %i.os, align 4, !tbaa !16
  %wide.load335 = load <4 x i32>, ptr %i.ot, align 4, !tbaa !16
  %i.ou = sext i32 %.reass370 to i64
  %i.ov = getelementptr inbounds [4 x i8], ptr %i.il, i64 %i.ou ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  store <4 x i32> %wide.load334, ptr %i.ov, align 4, !tbaa !16
  store <4 x i32> %wide.load335, ptr %i.ow, align 4, !tbaa !16
  %index.next336 = add nuw i64 %index333, 8       ; 2 uses
  %i.ox = icmp eq i64 %index.next336, %n.vec331
  br i1 %i.ox, label %middle.block337, label %vector.body332, !llvm.loop !78

middle.block337:                                  ; preds = %vector.body332
  %cmp.n338 = icmp eq i64 %n.vec331, %i.nx
  br i1 %cmp.n338, label %._crit_edge.loopexit.i196, label %.lr.ph.i190.preheader

.lr.ph.i190.preheader:                            ; preds = %vector.memcheck326, %vector.scevcheck325, %.lr.ph.preheader.i188, %middle.block337
  %indvars.iv.i191.ph = phi i64 [ 1, %vector.memcheck326 ], [ 1, %vector.scevcheck325 ], [ 1, %.lr.ph.preheader.i188 ], [ %i.on, %middle.block337 ] ; 4 uses
  %.011.in14.i192.ph = phi i32 [ %i.nu, %vector.memcheck326 ], [ %i.nu, %vector.scevcheck325 ], [ %i.nu, %.lr.ph.preheader.i188 ], [ %i.op, %middle.block337 ] ; 2 uses
  %i.oy = sub nsw i64 %wide.trip.count.i189, %indvars.iv.i191.ph
  %i.oz = zext nneg i32 %i.nv to i64
  %i.pa = sub nsw i64 %i.oz, %indvars.iv.i191.ph
  %xtraiter361 = and i64 %i.oy, 3                 ; 2 uses
  %lcmp.mod362.not = icmp eq i64 %xtraiter361, 0
  br i1 %lcmp.mod362.not, label %.lr.ph.i190.prol.loopexit, label %.lr.ph.i190.prol

.lr.ph.i190.prol:                                 ; preds = %.lr.ph.i190.preheader, %.lr.ph.i190.prol
  %indvars.iv.i191.prol = phi i64 [ %indvars.iv.next.i194.prol, %.lr.ph.i190.prol ], [ %indvars.iv.i191.ph, %.lr.ph.i190.preheader ] ; 2 uses
  %.011.in14.i192.prol = phi i32 [ %.011.i193.prol, %.lr.ph.i190.prol ], [ %.011.in14.i192.ph, %.lr.ph.i190.preheader ]
  %prol.iter363 = phi i64 [ %prol.iter363.next, %.lr.ph.i190.prol ], [ 0, %.lr.ph.i190.preheader ]
  %.011.i193.prol = add i32 %.011.in14.i192.prol, 1 ; 3 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i191.prol
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !16
  %i.pd = sext i32 %.011.i193.prol to i64
  %i.pe = getelementptr inbounds [4 x i8], ptr %i.il, i64 %i.pd
  store i32 %i.pc, ptr %i.pe, align 4, !tbaa !16
  %indvars.iv.next.i194.prol = add nuw nsw i64 %indvars.iv.i191.prol, 1 ; 2 uses
  %prol.iter363.next = add i64 %prol.iter363, 1   ; 2 uses
  %prol.iter363.cmp.not = icmp eq i64 %prol.iter363.next, %xtraiter361
  br i1 %prol.iter363.cmp.not, label %.lr.ph.i190.prol.loopexit, label %.lr.ph.i190.prol, !llvm.loop !79

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

._crit_edge.loopexit.i196:                        ; preds = %.lr.ph.i190.prol.loopexit, %.lr.ph.i190, %middle.block337
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
  %i.v = sub i64 %.idx.i, %i.a
  %i.w = add nsw i64 %wide.trip.count59.i, -1     ; 2 uses
  %min.iters.check646 = icmp ult i32 %i.g, 4
  %n.vec648 = and i64 %wide.trip.count59.i, 2147483644
  %xtraiter920 = and i64 %wide.trip.count59.i, 1
  %i.x = icmp eq i64 %i.w, 0
  %unroll_iter924 = and i64 %wide.trip.count59.i, 2147483646
  %lcmp.mod922.not = icmp eq i64 %xtraiter920, 0
  %lcmp.mod923 = trunc i32 %i.g to i1
  %invariant.op = add i64 %i.v, -1
  %min.iters.check612 = icmp ult i32 %i.g, 4
  %invariant.op974 = add i64 %i.u, -1
  %n.vec614 = and i64 %wide.trip.count59.i, 4294967292
  %xtraiter932 = and i64 %wide.trip.count59.i, 1
  %i.y = icmp eq i64 %i.w, 0
  %unroll_iter936 = and i64 %wide.trip.count59.i, 4294967294
  %lcmp.mod934.not = icmp eq i64 %xtraiter932, 0
  %lcmp.mod935 = trunc i32 %i.g to i1
  %min.iters.check = icmp ult i32 %i.g, 4
  %diff.check604 = icmp ult i64 %.idx.i, 32
  %or.cond877 = select i1 %min.iters.check, i1 true, i1 %diff.check604
  %n.vec = and i64 %wide.trip.count59.i, 4294967292
  %xtraiter938 = and i64 %wide.trip.count59.i, 3  ; 3 uses
  %i.z = icmp ult i32 %i.g, 4
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
  %i.aa = load i64, ptr %0, align 8, !tbaa !28
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !28
  %i.ad = and i64 %i.ac, %i.aa                    ; 2 uses
  %i.ae = trunc nuw nsw i64 %indvars.iv to i32
  %i.af = shl nuw i32 1, %i.ae
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = shl i64 %i.ad, %i.ag
  %i.ai = or i64 %i.ah, %i.ad
  store i64 %i.ai, ptr %.0145447, align 8, !tbaa !28
  br label %.lr.ph.i173.preheader

bb.f:                                             ; preds = %bb.d
  %i.aj = icmp samesign ult i64 %indvars.iv, 6
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %i.t, label %.lr.ph.i, label %Abc_TtEqual.exit.thread

.lr.ph.i:                                         ; preds = %bb.g
  %i.ak = trunc nuw nsw i64 %indvars.iv to i32
  %i.al = shl nuw nsw i32 1, %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv
  %i.an = load i64, ptr %i.am, align 8, !tbaa !28 ; 4 uses
  %i.ao = zext nneg i32 %i.al to i64              ; 4 uses
  %i.ap = sub i64 %i.a, %.0145447609
  %diff.check644 = icmp ugt i64 %i.ap, -32
  %or.cond876 = select i1 %min.iters.check646, i1 true, i1 %diff.check644
  br i1 %or.cond876, label %scalar.ph645.preheader, label %vector.ph647

scalar.ph645.preheader:                           ; preds = %.lr.ph.i
  br i1 %i.x, label %scalar.ph645.epil.preheader, label %scalar.ph645

vector.ph647:                                     ; preds = %.lr.ph.i
  %broadcast.splatinsert649 = insertelement <2 x i64> poison, i64 %i.an, i64 0
  %broadcast.splat650 = shufflevector <2 x i64> %broadcast.splatinsert649, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert651 = insertelement <2 x i64> poison, i64 %i.ao, i64 0
  %broadcast.splat652 = shufflevector <2 x i64> %broadcast.splatinsert651, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body653

vector.body653:                                   ; preds = %vector.body653, %vector.ph647
  %index654 = phi i64 [ 0, %vector.ph647 ], [ %index.next657, %vector.body653 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index654 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load655 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !28
  %wide.load656 = load <2 x i64>, ptr %i.ar, align 8, !tbaa !28
  %i.as = and <2 x i64> %wide.load655, %broadcast.splat650 ; 2 uses
  %i.at = and <2 x i64> %wide.load656, %broadcast.splat650 ; 2 uses
  %i.au = shl <2 x i64> %i.as, %broadcast.splat652
  %i.av = shl <2 x i64> %i.at, %broadcast.splat652
  %i.aw = or <2 x i64> %i.au, %i.as
  %i.ax = or <2 x i64> %i.av, %i.at
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.0145447, i64 %index654 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <2 x i64> %i.aw, ptr %i.ay, align 8, !tbaa !28
  store <2 x i64> %i.ax, ptr %i.az, align 8, !tbaa !28
  %index.next657 = add nuw i64 %index654, 4       ; 2 uses
  %i.ba = icmp eq i64 %index.next657, %n.vec648
  br i1 %i.ba, label %.lr.ph.i173.preheader, label %vector.body653, !llvm.loop !81

scalar.ph645:                                     ; preds = %scalar.ph645.preheader, %scalar.ph645
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i.1, %scalar.ph645 ], [ 0, %scalar.ph645.preheader ] ; 4 uses
  %niter925 = phi i64 [ %niter925.next.1, %scalar.ph645 ], [ 0, %scalar.ph645.preheader ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv56.i
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !28
  %i.bd = and i64 %i.bc, %i.an                    ; 2 uses
  %i.be = shl i64 %i.bd, %i.ao
  %i.bf = or i64 %i.be, %i.bd
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.0145447, i64 %indvars.iv56.i
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !28
  %indvars.iv.next57.i = or disjoint i64 %indvars.iv56.i, 1 ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next57.i
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !28
  %i.bj = and i64 %i.bi, %i.an                    ; 2 uses
  %i.bk = shl i64 %i.bj, %i.ao
  %i.bl = or i64 %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0145447, i64 %indvars.iv.next57.i
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !28
  %indvars.iv.next57.i.1 = add nuw nsw i64 %indvars.iv56.i, 2 ; 2 uses
  %niter925.next.1 = add i64 %niter925, 2         ; 2 uses
  %niter925.ncmp.1 = icmp eq i64 %niter925.next.1, %unroll_iter924
  br i1 %niter925.ncmp.1, label %.lr.ph.i173.preheader.loopexit.unr-lcssa, label %scalar.ph645, !llvm.loop !82

bb.h:                                             ; preds = %bb.f
  %i.bn = add nsw i64 %indvars.iv, -6             ; 2 uses
  %i.bo = trunc nsw i64 %i.bn to i32              ; 2 uses
  %i.bp = shl nuw i32 1, %i.bo                    ; 4 uses
  br i1 %i.t, label %.preheader.lr.ph.i, label %Abc_TtEqual.exit.thread

.preheader.lr.ph.i:                               ; preds = %bb.h
  %i.bq = icmp eq i64 %i.bn, 31
  %i.br = shl i32 2, %i.bo
  %i.bs = sext i32 %i.br to i64                   ; 2 uses
  br i1 %i.bq, label %.lr.ph.i173.preheader, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.bt = sext i32 %i.bp to i64                   ; 2 uses
  %smax.i = call i32 @llvm.smax.i32(i32 %i.bp, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 3 uses
  %i.bu = shl nsw i64 %i.bt, 3                    ; 2 uses
  %i.bv = sub i64 %.0145447609, %i.a              ; 2 uses
  %i.bw = add i64 %i.bv, %i.bu
  %min.iters.check668 = icmp slt i32 %i.bp, 8
  %diff.check662 = icmp ult i64 %i.bu, 32
  %i.bx = add i64 %i.bv, -1
  %diff.check663 = icmp ult i64 %i.bx, 31
  %conflict.rdx664 = or i1 %diff.check662, %diff.check663
  %i.by = add i64 %i.bw, -1
  %diff.check665 = icmp ult i64 %i.by, 31
  %conflict.rdx666 = or i1 %conflict.rdx664, %diff.check665
  %n.vec670 = and i64 %wide.trip.count.i, 2147483644
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.bz = icmp slt i32 %i.bp, 4
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod919 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.04251.us.i = phi ptr [ %i.cx, %._crit_edge.us.i ], [ %.0145447, %.preheader.us.preheader.i ] ; 8 uses
  %.04350.us.i = phi ptr [ %i.cw, %._crit_edge.us.i ], [ %0, %.preheader.us.preheader.i ] ; 7 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %.04251.us.i, i64 %i.bt ; 6 uses
  %brmerge = select i1 %min.iters.check668, i1 true, i1 %conflict.rdx666
  br i1 %brmerge, label %scalar.ph667.preheader, label %vector.body671

scalar.ph667.preheader:                           ; preds = %.preheader.us.i
  br i1 %i.bz, label %scalar.ph667.epil.preheader, label %scalar.ph667

vector.body671:                                   ; preds = %.preheader.us.i, %vector.body671
  %index672 = phi i64 [ %index.next675, %vector.body671 ], [ 0, %.preheader.us.i ] ; 4 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %index672 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %wide.load673 = load <2 x i64>, ptr %i.ca, align 8, !tbaa !28 ; 2 uses
  %wide.load674 = load <2 x i64>, ptr %i.cb, align 8, !tbaa !28 ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %index672 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <2 x i64> %wide.load673, ptr %i.cc, align 8, !tbaa !28
  store <2 x i64> %wide.load674, ptr %i.cd, align 8, !tbaa !28
  %i.ce = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index672 ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 16
  store <2 x i64> %wide.load673, ptr %i.ce, align 8, !tbaa !28
  store <2 x i64> %wide.load674, ptr %i.cf, align 8, !tbaa !28
  %index.next675 = add nuw i64 %index672, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next675, %n.vec670
  br i1 %i.cg, label %._crit_edge.us.i, label %vector.body671, !llvm.loop !83

scalar.ph667:                                     ; preds = %scalar.ph667.preheader, %scalar.ph667
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph667 ], [ 0, %scalar.ph667.preheader ] ; 7 uses
  %niter = phi i64 [ %niter.next.3, %scalar.ph667 ], [ 0, %scalar.ph667.preheader ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %indvars.iv.i
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !28 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %indvars.iv.i
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !28
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store i64 %i.ci, ptr %gep.i, align 8, !tbaa !28
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %indvars.iv.next.i
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !28 ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %indvars.iv.next.i
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !28
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  store i64 %i.cl, ptr %gep.i.1, align 8, !tbaa !28
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %indvars.iv.next.i.1
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !28 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %indvars.iv.next.i.1
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !28
  %gep.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.1
  store i64 %i.co, ptr %gep.i.2, align 8, !tbaa !28
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %indvars.iv.next.i.2
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !28 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %indvars.iv.next.i.2
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !28
  %gep.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.2
  store i64 %i.cr, ptr %gep.i.3, align 8, !tbaa !28
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
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i, i64 %indvars.iv.i.epil
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !28 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i, i64 %indvars.iv.i.epil
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !28
  %gep.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.epil
  store i64 %i.cu, ptr %gep.i.epil, align 8, !tbaa !28
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i, label %scalar.ph667.epil, !llvm.loop !85

._crit_edge.us.i:                                 ; preds = %vector.body671, %._crit_edge.us.i.loopexit.unr-lcssa, %scalar.ph667.epil
  %i.cw = getelementptr inbounds [8 x i8], ptr %.04350.us.i, i64 %i.bs ; 2 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %.04251.us.i, i64 %i.bs
  %i.cy = icmp ult ptr %i.cw, %i.s
  br i1 %i.cy, label %.preheader.us.i, label %.lr.ph.i173.preheader, !llvm.loop !86

.lr.ph.i173.preheader.loopexit.unr-lcssa:         ; preds = %scalar.ph645
  br i1 %lcmp.mod922.not, label %.lr.ph.i173.preheader, label %scalar.ph645.epil.preheader

scalar.ph645.epil.preheader:                      ; preds = %.lr.ph.i173.preheader.loopexit.unr-lcssa, %scalar.ph645.preheader
  %indvars.iv56.i.epil.init = phi i64 [ 0, %scalar.ph645.preheader ], [ %indvars.iv.next57.i.1, %.lr.ph.i173.preheader.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod923)
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv56.i.epil.init
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !28
  %i.db = and i64 %i.da, %i.an                    ; 2 uses
  %i.dc = shl i64 %i.db, %i.ao
  %i.dd = or i64 %i.dc, %i.db
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.0145447, i64 %indvars.iv56.i.epil.init
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !28
  br label %.lr.ph.i173.preheader

.lr.ph.i173.preheader:                            ; preds = %._crit_edge.us.i, %vector.body653, %scalar.ph645.epil.preheader, %.lr.ph.i173.preheader.loopexit.unr-lcssa, %.preheader.lr.ph.i, %bb.e
  br label %.lr.ph.i173

bb.i:                                             ; preds = %.lr.ph.i173
  %indvars.iv.next.i176 = add nuw nsw i64 %indvars.iv.i174, 1 ; 2 uses
  %exitcond.not.i177 = icmp eq i64 %indvars.iv.next.i176, %wide.trip.count59.i
  br i1 %exitcond.not.i177, label %Abc_TtEqual.exit.thread, label %.lr.ph.i173, !llvm.loop !87

.lr.ph.i173:                                      ; preds = %.lr.ph.i173.preheader, %bb.i
  %indvars.iv.i174 = phi i64 [ %indvars.iv.next.i176, %bb.i ], [ 0, %.lr.ph.i173.preheader ] ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.0145447, i64 %indvars.iv.i174
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !28
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i174
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !28
  %.not.i175 = icmp eq i64 %i.dg, %i.di
  br i1 %.not.i175, label %bb.i, label %Abc_TtEqual.exit

Abc_TtEqual.exit:                                 ; preds = %.lr.ph.i173
  %i.dj = getelementptr inbounds nuw [224 x i8], ptr %4, i64 %indvars.iv ; 10 uses
  store ptr %.0145447, ptr %i.dj, align 16, !tbaa !24
  %i.dk = getelementptr inbounds [8 x i8], ptr %.0145447, i64 %i.r ; 15 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !25
  br i1 %i.q, label %bb.j, label %bb.k

bb.j:                                             ; preds = %Abc_TtEqual.exit
  %i.dm = load i64, ptr %0, align 8, !tbaa !28
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !28
  %i.dp = and i64 %i.do, %i.dm                    ; 2 uses
  %i.dq = trunc nuw nsw i64 %indvars.iv to i32
  %i.dr = shl nuw i32 1, %i.dq
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = lshr i64 %i.dp, %i.ds
  %i.du = or i64 %i.dt, %i.dp
  store i64 %i.du, ptr %i.dk, align 8, !tbaa !28
  br label %.lr.ph.preheader.i190

bb.k:                                             ; preds = %Abc_TtEqual.exit
  %i.dv = icmp samesign ult i64 %indvars.iv, 6
  %i.dw = trunc i64 %indvars.iv to i32            ; 2 uses
  br i1 %i.dv, label %.lr.ph.i189, label %.preheader.lr.ph.i179

.lr.ph.i189:                                      ; preds = %bb.k
  %i.dx = shl nuw nsw i32 1, %i.dw
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !28 ; 4 uses
  %i.ea = zext nneg i32 %i.dx to i64              ; 4 uses
  %.reass975 = add i64 %.0145447609, %invariant.op974
  %diff.check610 = icmp ult i64 %.reass975, 31
  %or.cond976 = select i1 %min.iters.check612, i1 true, i1 %diff.check610
  br i1 %or.cond976, label %scalar.ph611.preheader, label %vector.ph613

scalar.ph611.preheader:                           ; preds = %.lr.ph.i189
  br i1 %i.y, label %scalar.ph611.epil.preheader, label %scalar.ph611

vector.ph613:                                     ; preds = %.lr.ph.i189
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.dz, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert615 = insertelement <2 x i64> poison, i64 %i.ea, i64 0
  %broadcast.splat616 = shufflevector <2 x i64> %broadcast.splatinsert615, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body617

vector.body617:                                   ; preds = %vector.body617, %vector.ph613
  %index618 = phi i64 [ 0, %vector.ph613 ], [ %index.next621, %vector.body617 ] ; 3 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index618 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %wide.load619 = load <2 x i64>, ptr %i.eb, align 8, !tbaa !28
  %wide.load620 = load <2 x i64>, ptr %i.ec, align 8, !tbaa !28
  %i.ed = and <2 x i64> %wide.load619, %broadcast.splat ; 2 uses
  %i.ee = and <2 x i64> %wide.load620, %broadcast.splat ; 2 uses
  %i.ef = lshr <2 x i64> %i.ed, %broadcast.splat616
  %i.eg = lshr <2 x i64> %i.ee, %broadcast.splat616
  %i.eh = or <2 x i64> %i.ef, %i.ed
  %i.ei = or <2 x i64> %i.eg, %i.ee
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %index618 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store <2 x i64> %i.eh, ptr %i.ej, align 8, !tbaa !28
  store <2 x i64> %i.ei, ptr %i.ek, align 8, !tbaa !28
  %index.next621 = add nuw i64 %index618, 4       ; 2 uses
  %i.el = icmp eq i64 %index.next621, %n.vec614
  br i1 %i.el, label %.lr.ph.preheader.i190, label %vector.body617, !llvm.loop !88

scalar.ph611:                                     ; preds = %scalar.ph611.preheader, %scalar.ph611
  %indvars.iv58.i = phi i64 [ %indvars.iv.next59.i.1, %scalar.ph611 ], [ 0, %scalar.ph611.preheader ] ; 4 uses
  %niter937 = phi i64 [ %niter937.next.1, %scalar.ph611 ], [ 0, %scalar.ph611.preheader ]
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv58.i
  %i.en = load i64, ptr %i.em, align 8, !tbaa !28
  %i.eo = and i64 %i.en, %i.dz                    ; 2 uses
  %i.ep = lshr i64 %i.eo, %i.ea
  %i.eq = or i64 %i.ep, %i.eo
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv58.i
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !28
  %indvars.iv.next59.i = or disjoint i64 %indvars.iv58.i, 1 ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next59.i
  %i.et = load i64, ptr %i.es, align 8, !tbaa !28
  %i.eu = and i64 %i.et, %i.dz                    ; 2 uses
  %i.ev = lshr i64 %i.eu, %i.ea
  %i.ew = or i64 %i.ev, %i.eu
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.next59.i
  store i64 %i.ew, ptr %i.ex, align 8, !tbaa !28
  %indvars.iv.next59.i.1 = add nuw nsw i64 %indvars.iv58.i, 2 ; 2 uses
  %niter937.next.1 = add i64 %niter937, 2         ; 2 uses
  %niter937.ncmp.1 = icmp eq i64 %niter937.next.1, %unroll_iter936
  br i1 %niter937.ncmp.1, label %.lr.ph.preheader.i190.loopexit.unr-lcssa, label %scalar.ph611, !llvm.loop !89

.preheader.lr.ph.i179:                            ; preds = %bb.k
  %i.ey = add i32 %i.dw, -6                       ; 2 uses
  %i.ez = shl i32 2, %i.ey
  %i.fa = sext i32 %i.ez to i64                   ; 2 uses
  %i.fb = shl nuw i32 1, %i.ey                    ; 4 uses
  %i.fc = sext i32 %i.fb to i64                   ; 5 uses
  %smax.i182 = call i32 @llvm.smax.i32(i32 %i.fb, i32 1) ; 2 uses
  %wide.trip.count.i183 = zext nneg i32 %smax.i182 to i64 ; 3 uses
  %i.fd = shl nsw i64 %i.fc, 3                    ; 2 uses
  %i.fe = add i64 %.idx.i, %.0145447609
  %i.ff = add i64 %i.fd, %i.a
  %min.iters.check632 = icmp slt i32 %i.fb, 8
  %diff.check626 = icmp ult i64 %i.fd, 32
  %i.fg = sub i64 %i.ff, %i.fe
  %diff.check627 = icmp ugt i64 %i.fg, -32
  %conflict.rdx628 = or i1 %diff.check626, %diff.check627
  %.reass = add i64 %.0145447609, %invariant.op
  %diff.check629 = icmp ult i64 %.reass, 31
  %conflict.rdx630 = or i1 %conflict.rdx628, %diff.check629
  %n.vec634 = and i64 %wide.trip.count.i183, 2147483644
  %xtraiter926 = and i64 %wide.trip.count.i183, 1
  %i.fh = icmp slt i32 %i.fb, 2
  %unroll_iter930 = and i64 %wide.trip.count.i183, 2147483646
  %lcmp.mod928.not = icmp eq i64 %xtraiter926, 0
  %lcmp.mod929 = trunc i32 %smax.i182 to i1
  br label %.preheader.us.i184

.preheader.us.i184:                               ; preds = %._crit_edge.us.i188, %.preheader.lr.ph.i179
  %.04453.us.i = phi ptr [ %i.gg, %._crit_edge.us.i188 ], [ %i.dk, %.preheader.lr.ph.i179 ] ; 9 uses
  %.04552.us.i = phi ptr [ %i.gf, %._crit_edge.us.i188 ], [ %0, %.preheader.lr.ph.i179 ] ; 5 uses
  %brmerge977 = select i1 %min.iters.check632, i1 true, i1 %conflict.rdx630
  br i1 %brmerge977, label %scalar.ph631.preheader, label %vector.body635

scalar.ph631.preheader:                           ; preds = %.preheader.us.i184
  br i1 %i.fh, label %scalar.ph631.epil.preheader, label %scalar.ph631

vector.body635:                                   ; preds = %.preheader.us.i184, %vector.body635
  %index636 = phi i64 [ %index.next639, %vector.body635 ], [ 0, %.preheader.us.i184 ] ; 3 uses
  %i.fi = add nuw nsw i64 %index636, %i.fc        ; 2 uses
  %i.fj = getelementptr inbounds [8 x i8], ptr %.04552.us.i, i64 %i.fi ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %wide.load637 = load <2 x i64>, ptr %i.fj, align 8, !tbaa !28 ; 2 uses
  %wide.load638 = load <2 x i64>, ptr %i.fk, align 8, !tbaa !28 ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i, i64 %index636 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store <2 x i64> %wide.load637, ptr %i.fl, align 8, !tbaa !28
  store <2 x i64> %wide.load638, ptr %i.fm, align 8, !tbaa !28
  %i.fn = getelementptr inbounds [8 x i8], ptr %.04453.us.i, i64 %i.fi ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store <2 x i64> %wide.load637, ptr %i.fn, align 8, !tbaa !28
  store <2 x i64> %wide.load638, ptr %i.fo, align 8, !tbaa !28
  %index.next639 = add nuw i64 %index636, 4       ; 2 uses
  %i.fp = icmp eq i64 %index.next639, %n.vec634
  br i1 %i.fp, label %._crit_edge.us.i188, label %vector.body635, !llvm.loop !90

scalar.ph631:                                     ; preds = %scalar.ph631.preheader, %scalar.ph631
  %indvars.iv.i185 = phi i64 [ %indvars.iv.next.i186.1, %scalar.ph631 ], [ 0, %scalar.ph631.preheader ] ; 4 uses
  %niter931 = phi i64 [ %niter931.next.1, %scalar.ph631 ], [ 0, %scalar.ph631.preheader ]
  %i.fq = add nuw nsw i64 %indvars.iv.i185, %i.fc ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.04552.us.i, i64 %i.fq
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !28 ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i, i64 %indvars.iv.i185
  store i64 %i.fs, ptr %i.ft, align 8, !tbaa !28
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i, i64 %i.fq
  store i64 %i.fs, ptr %i.fu, align 8, !tbaa !28
  %indvars.iv.next.i186 = or disjoint i64 %indvars.iv.i185, 1 ; 2 uses
  %i.fv = add nuw nsw i64 %indvars.iv.next.i186, %i.fc ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %.04552.us.i, i64 %i.fv
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !28 ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i, i64 %indvars.iv.next.i186
  store i64 %i.fx, ptr %i.fy, align 8, !tbaa !28
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i, i64 %i.fv
  store i64 %i.fx, ptr %i.fz, align 8, !tbaa !28
  %indvars.iv.next.i186.1 = add nuw nsw i64 %indvars.iv.i185, 2 ; 2 uses
  %niter931.next.1 = add i64 %niter931, 2         ; 2 uses
  %niter931.ncmp.1 = icmp eq i64 %niter931.next.1, %unroll_iter930
  br i1 %niter931.ncmp.1, label %._crit_edge.us.i188.loopexit.unr-lcssa, label %scalar.ph631, !llvm.loop !91

._crit_edge.us.i188.loopexit.unr-lcssa:           ; preds = %scalar.ph631
  br i1 %lcmp.mod928.not, label %._crit_edge.us.i188, label %scalar.ph631.epil.preheader

scalar.ph631.epil.preheader:                      ; preds = %._crit_edge.us.i188.loopexit.unr-lcssa, %scalar.ph631.preheader
  %indvars.iv.i185.epil.init = phi i64 [ 0, %scalar.ph631.preheader ], [ %indvars.iv.next.i186.1, %._crit_edge.us.i188.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod929)
  %i.ga = add nuw nsw i64 %indvars.iv.i185.epil.init, %i.fc ; 2 uses
  %i.gb = getelementptr inbounds [8 x i8], ptr %.04552.us.i, i64 %i.ga
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !28 ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i, i64 %indvars.iv.i185.epil.init
  store i64 %i.gc, ptr %i.gd, align 8, !tbaa !28
  %i.ge = getelementptr inbounds [8 x i8], ptr %.04453.us.i, i64 %i.ga
  store i64 %i.gc, ptr %i.ge, align 8, !tbaa !28
  br label %._crit_edge.us.i188

._crit_edge.us.i188:                              ; preds = %vector.body635, %scalar.ph631.epil.preheader, %._crit_edge.us.i188.loopexit.unr-lcssa
  %i.gf = getelementptr inbounds [8 x i8], ptr %.04552.us.i, i64 %i.fa ; 2 uses
  %i.gg = getelementptr inbounds [8 x i8], ptr %.04453.us.i, i64 %i.fa
  %i.gh = icmp ult ptr %i.gf, %i.s
  br i1 %i.gh, label %.preheader.us.i184, label %.lr.ph.preheader.i190, !llvm.loop !92

.lr.ph.preheader.i190.loopexit.unr-lcssa:         ; preds = %scalar.ph611
  br i1 %lcmp.mod934.not, label %.lr.ph.preheader.i190, label %scalar.ph611.epil.preheader

scalar.ph611.epil.preheader:                      ; preds = %.lr.ph.preheader.i190.loopexit.unr-lcssa, %scalar.ph611.preheader
  %indvars.iv58.i.epil.init = phi i64 [ 0, %scalar.ph611.preheader ], [ %indvars.iv.next59.i.1, %.lr.ph.preheader.i190.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod935)
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv58.i.epil.init
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !28
  %i.gk = and i64 %i.gj, %i.dz                    ; 2 uses
  %i.gl = lshr i64 %i.gk, %i.ea
  %i.gm = or i64 %i.gl, %i.gk
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv58.i.epil.init
  store i64 %i.gm, ptr %i.gn, align 8, !tbaa !28
  br label %.lr.ph.preheader.i190

.lr.ph.preheader.i190:                            ; preds = %._crit_edge.us.i188, %vector.body617, %scalar.ph611.epil.preheader, %.lr.ph.preheader.i190.loopexit.unr-lcssa, %bb.j
  %i.go = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.r
  %i.gp = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store ptr %i.go, ptr %i.gp, align 16, !tbaa !26
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.r ; 7 uses
  br i1 %or.cond877, label %.lr.ph.i192.preheader, label %vector.body

.lr.ph.i192.preheader:                            ; preds = %.lr.ph.preheader.i190
  br i1 %i.z, label %.lr.ph.i192.epil.preheader, label %.lr.ph.i192

vector.body:                                      ; preds = %.lr.ph.preheader.i190, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.preheader.i190 ] ; 4 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %.0145447, i64 %index ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %wide.load = load <2 x i64>, ptr %i.gr, align 8, !tbaa !28
  %wide.load605 = load <2 x i64>, ptr %i.gs, align 8, !tbaa !28
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %index ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %wide.load606 = load <2 x i64>, ptr %i.gt, align 8, !tbaa !28
  %wide.load607 = load <2 x i64>, ptr %i.gu, align 8, !tbaa !28
  %i.gv = xor <2 x i64> %wide.load606, %wide.load
  %i.gw = xor <2 x i64> %wide.load607, %wide.load605
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %index ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  store <2 x i64> %i.gv, ptr %i.gx, align 8, !tbaa !28
  store <2 x i64> %i.gw, ptr %i.gy, align 8, !tbaa !28
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gz = icmp eq i64 %index.next, %n.vec
  br i1 %i.gz, label %Abc_TtXor.exit, label %vector.body, !llvm.loop !93

.lr.ph.i192:                                      ; preds = %.lr.ph.i192.preheader, %.lr.ph.i192
  %indvars.iv.i193 = phi i64 [ %indvars.iv.next.i194.3, %.lr.ph.i192 ], [ 0, %.lr.ph.i192.preheader ] ; 7 uses
  %niter943 = phi i64 [ %niter943.next.3, %.lr.ph.i192 ], [ 0, %.lr.ph.i192.preheader ]
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %.0145447, i64 %indvars.iv.i193
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !28
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.i193
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !28
  %i.he = xor i64 %i.hd, %i.hb
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv.i193
  store i64 %i.he, ptr %i.hf, align 8, !tbaa !28
  %indvars.iv.next.i194 = or disjoint i64 %indvars.iv.i193, 1 ; 3 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %.0145447, i64 %indvars.iv.next.i194
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !28
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.next.i194
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !28
  %i.hk = xor i64 %i.hj, %i.hh
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv.next.i194
  store i64 %i.hk, ptr %i.hl, align 8, !tbaa !28
  %indvars.iv.next.i194.1 = or disjoint i64 %indvars.iv.i193, 2 ; 3 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.0145447, i64 %indvars.iv.next.i194.1
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !28
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.next.i194.1
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !28
  %i.hq = xor i64 %i.hp, %i.hn
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv.next.i194.1
  store i64 %i.hq, ptr %i.hr, align 8, !tbaa !28
  %indvars.iv.next.i194.2 = or disjoint i64 %indvars.iv.i193, 3 ; 3 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %.0145447, i64 %indvars.iv.next.i194.2
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !28
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.next.i194.2
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !28
  %i.hw = xor i64 %i.hv, %i.ht
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv.next.i194.2
  store i64 %i.hw, ptr %i.hx, align 8, !tbaa !28
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
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %.0145447, i64 %indvars.iv.i193.epil
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !28
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.i193.epil
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !28
  %i.ic = xor i64 %i.ib, %i.hz
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv.i193.epil
  store i64 %i.ic, ptr %i.id, align 8, !tbaa !28
  %indvars.iv.next.i194.epil = add nuw nsw i64 %indvars.iv.i193.epil, 1
  %epil.iter939.next = add i64 %epil.iter939, 1   ; 2 uses
  %epil.iter939.cmp.not = icmp eq i64 %epil.iter939.next, %xtraiter938
  br i1 %epil.iter939.cmp.not, label %Abc_TtXor.exit, label %.lr.ph.i192.epil, !llvm.loop !95

Abc_TtXor.exit:                                   ; preds = %vector.body, %Abc_TtXor.exit.loopexit.unr-lcssa, %.lr.ph.i192.epil
  %6 = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %i.r
  %i.ie = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  store i32 1, ptr %i.ie, align 8, !tbaa !16
  %i.if = shl nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.dj, i64 28
  %i.ih = trunc i64 %i.if to i32
  %i.ii = or disjoint i32 %i.ih, 1
  store i32 %i.ii, ptr %i.ig, align 4, !tbaa !16
  %i.ij = getelementptr inbounds nuw i8, ptr %i.dj, i64 92
  store i32 1, ptr %i.ij, align 4, !tbaa !16
  %i.ik = getelementptr inbounds nuw i8, ptr %i.dj, i64 96
  %i.il = trunc nuw i64 %i.if to i32
  store i32 %i.il, ptr %i.ik, align 16, !tbaa !16
  %i.im = trunc i64 %indvars.iv to i8
  %i.in = add i8 %i.im, 97
  %i.io = getelementptr inbounds nuw i8, ptr %i.dj, i64 160
  store i8 %i.in, ptr %i.io, align 16, !tbaa !14
  %i.ip = getelementptr inbounds nuw i8, ptr %i.dj, i64 161
  store i8 0, ptr %i.ip, align 1, !tbaa !14
  %i.iq = add nsw i32 %.0147446, 1
  %i.ir = sext i32 %.0147446 to i64
  %i.is = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ir
  store ptr %i.dj, ptr %i.is, align 8, !tbaa !133
  br label %Abc_TtEqual.exit.thread

Abc_TtEqual.exit.thread:                          ; preds = %bb.i, %bb.h, %bb.g, %Abc_TtXor.exit
  %.1148 = phi i32 [ %i.iq, %Abc_TtXor.exit ], [ %.0147446, %bb.h ], [ %.0147446, %bb.g ], [ %.0147446, %bb.i ] ; 4 uses
  %.1146 = phi ptr [ %6, %Abc_TtXor.exit ], [ %.0145447, %bb.h ], [ %.0145447, %bb.g ], [ %.0145447, %bb.i ]
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
  %i.iz = icmp ult i32 %i.g, 4
  %unroll_iter959 = and i64 %wide.trip.count59.i, 4294967292
  %lcmp.mod957.not = icmp eq i64 %xtraiter955, 0
  %lcmp.mod958 = icmp ne i64 %xtraiter955, 0
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

bb.o:                                             ; preds = %.lr.ph.i206
  %indvars.iv.next.i209 = add nuw nsw i64 %indvars.iv.i207, 1 ; 2 uses
  %exitcond.not.i210 = icmp eq i64 %indvars.iv.next.i209, %wide.trip.count.i197
  br i1 %exitcond.not.i210, label %bb.p, label %.lr.ph.i206, !llvm.loop !98

.lr.ph.i206:                                      ; preds = %.lr.ph.i198, %bb.o
  %indvars.iv.i207 = phi i64 [ %indvars.iv.next.i209, %bb.o ], [ 0, %.lr.ph.i198 ] ; 2 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i207
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !28
  %.not.i208 = icmp eq i64 %i.jf, -1
  br i1 %.not.i208, label %bb.o, label %Abc_TtIsConst1.exit

bb.p:                                             ; preds = %bb.o
  store i8 49, ptr %2, align 1, !tbaa !14
  store i8 0, ptr %i.i, align 1, !tbaa !14
  br label %bb.bj

Abc_TtIsConst1.exit:                              ; preds = %.lr.ph.i206
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr nonnull poison)
  br label %bb.bj

.loopexit424:                                     ; preds = %bb.az
  %i.jg = icmp sgt i32 %.1141, 0
  br i1 %i.jg, label %.preheader, label %._crit_edge485, !llvm.loop !99

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit424
  %.2149484 = phi i32 [ %.1148, %.preheader.lr.ph ], [ %.1141, %.loopexit424 ]
  %.0150483 = phi i32 [ 0, %.preheader.lr.ph ], [ %.3153, %.loopexit424 ]
  %.0154482 = phi i32 [ 0, %.preheader.lr.ph ], [ %.5397, %.loopexit424 ]
  %wide.trip.count525 = zext nneg i32 %.2149484 to i64
  br label %bb.q

bb.q:                                             ; preds = %.preheader, %bb.az
  %indvars.iv522 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next523, %bb.az ] ; 2 uses
  %.0140478 = phi i32 [ 0, %.preheader ], [ %.1141, %bb.az ] ; 3 uses
  %.1151475 = phi i32 [ %.0150483, %.preheader ], [ %.3153, %bb.az ] ; 5 uses
  %.1155474 = phi i32 [ %.0154482, %.preheader ], [ %.5397, %bb.az ] ; 5 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv522
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !133 ; 10 uses
  %i.jj = icmp sgt i32 %.1151475, 0
  br i1 %i.jj, label %.lr.ph459, label %._crit_edge460.split.us

.lr.ph459:                                        ; preds = %bb.q
  %i.jk = load ptr, ptr %i.ji, align 8, !tbaa !24 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 8 ; 3 uses
  %i.jm = getelementptr i8, ptr %i.ji, i64 16
  br i1 %i.iv, label %.lr.ph.preheader.i.i.us.preheader, label %.lr.ph459.split

.lr.ph.preheader.i.i.us.preheader:                ; preds = %.lr.ph459
  %wide.trip.count515 = zext nneg i32 %.1151475 to i64
  br label %.lr.ph.preheader.i.i.us

.lr.ph.preheader.i.i.us:                          ; preds = %.lr.ph.preheader.i.i.us.preheader, %dsc_xor_test.exit.us
  %indvars.iv512 = phi i64 [ 0, %.lr.ph.preheader.i.i.us.preheader ], [ %indvars.iv.next513, %dsc_xor_test.exit.us ] ; 6 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv512
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !133 ; 7 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !24 ; 2 uses
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %bb.r, %.lr.ph.preheader.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.preheader.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.r ] ; 3 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %indvars.iv.i.i.us
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !28
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %indvars.iv.i.i.us
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !28
  %.not.i.i.us = icmp eq i64 %i.jr, %i.jt
  br i1 %.not.i.i.us, label %bb.r, label %Abc_TtEqual.exit.i.us

bb.r:                                             ; preds = %.lr.ph.i.i.us
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.us, label %.thread.loopexit554, label %.lr.ph.i.i.us, !llvm.loop !87

Abc_TtEqual.exit.i.us:                            ; preds = %.lr.ph.i.i.us
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !25 ; 2 uses
  br label %.lr.ph.i26.i.us

.lr.ph.i26.i.us:                                  ; preds = %bb.s, %Abc_TtEqual.exit.i.us
  %indvars.iv.i27.i.us = phi i64 [ 0, %Abc_TtEqual.exit.i.us ], [ %indvars.iv.next.i29.i.us, %bb.s ] ; 3 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %indvars.iv.i27.i.us
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !28
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %indvars.iv.i27.i.us
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !28
  %.not.i28.i.us = icmp eq i64 %i.jx, %i.jz
  br i1 %.not.i28.i.us, label %bb.s, label %Abc_TtEqual.exit31.i.us

bb.s:                                             ; preds = %.lr.ph.i26.i.us
  %indvars.iv.next.i29.i.us = add nuw nsw i64 %indvars.iv.i27.i.us, 1 ; 2 uses
  %exitcond.not.i30.i.us = icmp eq i64 %indvars.iv.next.i29.i.us, %wide.trip.count.i.i
  br i1 %exitcond.not.i30.i.us, label %.thread.loopexit, label %.lr.ph.i26.i.us, !llvm.loop !87

Abc_TtEqual.exit31.i.us:                          ; preds = %.lr.ph.i26.i.us
  %i.ka = load ptr, ptr %i.jl, align 8, !tbaa !25 ; 2 uses
  br label %.lr.ph.i35.i.us

.lr.ph.i35.i.us:                                  ; preds = %bb.t, %Abc_TtEqual.exit31.i.us
  %indvars.iv.i36.i.us = phi i64 [ 0, %Abc_TtEqual.exit31.i.us ], [ %indvars.iv.next.i38.i.us, %bb.t ] ; 3 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %indvars.iv.i36.i.us
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !28
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %indvars.iv.i36.i.us
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !28
  %.not.i37.i.us = icmp eq i64 %i.kc, %i.ke
end_hunk_0
