Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/utils?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@test_memio_move_message:bb.a
  %i.cc = getelementptr inbounds i8, ptr %i.bx, i64 %i.cb
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.093, i64 %indvars.iv132
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !11
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr %i.cc, i64 %i.cg
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.093, i64 %indvars.iv132
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !11
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds i8, ptr %i.ch, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.093, i64 %indvars.iv132
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !11
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds i8, ptr %i.cm, i64 %i.cq
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.093, i64 %indvars.iv132
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 20
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !11
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds i8, ptr %i.cr, i64 %i.cv
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.093, i64 %indvars.iv132
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !11
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds i8, ptr %i.cw, i64 %i.da
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.093, i64 %indvars.iv132
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 28
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !11
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds i8, ptr %i.db, i64 %i.df ; 3 uses
  %indvars.iv.next133.7 = add nuw nsw i64 %indvars.iv132, 8 ; 2 uses
  %niter159.next.7 = add i64 %niter159, 8         ; 2 uses
  %niter159.ncmp.7 = icmp eq i64 %niter159.next.7, %unroll_iter158
  br i1 %niter159.ncmp.7, label %._crit_edge121.loopexit.unr-lcssa, label %.lr.ph120, !llvm.loop !44

._crit_edge121.loopexit.unr-lcssa:                ; preds = %.lr.ph120
  %lcmp.mod155.not = icmp eq i64 %xtraiter153, 0
  br i1 %lcmp.mod155.not, label %._crit_edge121, label %.lr.ph120.epil.preheader

.lr.ph120.epil.preheader:                         ; preds = %._crit_edge121.loopexit.unr-lcssa, %.lr.ph120.preheader
  %indvars.iv132.epil.init = phi i64 [ 0, %.lr.ph120.preheader ], [ %indvars.iv.next133.7, %._crit_edge121.loopexit.unr-lcssa ]
  %.1119.epil.init = phi ptr [ %.086, %.lr.ph120.preheader ], [ %i.dg, %._crit_edge121.loopexit.unr-lcssa ]
  %lcmp.mod157 = icmp ne i64 %xtraiter153, 0
  tail call void @llvm.assume(i1 %lcmp.mod157)
  br label %.lr.ph120.epil

.lr.ph120.epil:                                   ; preds = %.lr.ph120.epil, %.lr.ph120.epil.preheader
  %indvars.iv132.epil = phi i64 [ %indvars.iv132.epil.init, %.lr.ph120.epil.preheader ], [ %indvars.iv.next133.epil, %.lr.ph120.epil ] ; 2 uses
  %.1119.epil = phi ptr [ %.1119.epil.init, %.lr.ph120.epil.preheader ], [ %i.dk, %.lr.ph120.epil ]
  %epil.iter154 = phi i64 [ 0, %.lr.ph120.epil.preheader ], [ %epil.iter154.next, %.lr.ph120.epil ]
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.093, i64 %indvars.iv132.epil
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !11
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds i8, ptr %.1119.epil, i64 %i.dj ; 2 uses
  %indvars.iv.next133.epil = add nuw nsw i64 %indvars.iv132.epil, 1
  %epil.iter154.next = add i64 %epil.iter154, 1   ; 2 uses
  %epil.iter154.cmp.not = icmp eq i64 %epil.iter154.next, %xtraiter153
  br i1 %epil.iter154.cmp.not, label %._crit_edge121, label %.lr.ph120.epil, !llvm.loop !45

._crit_edge121:                                   ; preds = %._crit_edge121.loopexit.unr-lcssa, %.lr.ph120.epil, %.preheader
  %.1.lcssa = phi ptr [ %.086, %.preheader ], [ %i.dg, %._crit_edge121.loopexit.unr-lcssa ], [ %i.dk, %.lr.ph120.epil ] ; 5 uses
  %i.dl = sext i32 %i.g to i64                    ; 5 uses
  %i.dm = getelementptr inbounds i8, ptr %.1.lcssa, i64 %i.dl
  %i.dn = sext i32 %.0.lcssa to i64
  %i.do = ptrtoint ptr %.1.lcssa to i64
  %i.dp = ptrtoint ptr %.086 to i64               ; 2 uses
  %.neg = add i64 %i.dn, %i.dp
  %i.dq = sub i64 %.neg, %i.do
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.dm, ptr align 1 %.1.lcssa, i64 %i.dq, i1 false)
  %i.dr = icmp ugt ptr %.188.lcssa, %.1.lcssa
  %spec.select.idx = select i1 %i.dr, i64 %i.dl, i64 0
  %spec.select = getelementptr inbounds i8, ptr %.188.lcssa, i64 %spec.select.idx ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1.lcssa, ptr align 1 %spec.select, i64 %i.dl, i1 false)
  %i.ds = getelementptr inbounds i8, ptr %spec.select, i64 %i.dl
  %i.dt = sext i32 %i.r to i64
  %i.du = ptrtoint ptr %spec.select to i64
  %i.dv = add i64 %i.dp, %i.dt
  %i.dw = add i64 %i.dl, %i.du
  %i.dx = sub i64 %i.dv, %i.dw
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %spec.select, ptr align 1 %i.ds, i64 %i.dx, i1 false)
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge121
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.dz = zext nneg i32 %.095 to i64
  %.idx104 = shl nuw nsw i64 %i.dz, 2             ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.093, i64 %.idx104
  %gepdiff105 = sub nuw nsw i64 %.idx104, %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.f, ptr nonnull align 4 %i.dy, i64 %gepdiff105, i1 false)
  store i32 %i.g, ptr %i.ea, align 4, !tbaa !11
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge121
  %i.eb = zext nneg i32 %.095 to i64
  %.idx103 = shl nuw nsw i64 %i.eb, 2             ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.093, i64 %.idx103 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %gepdiff = sub nsw i64 %.idx, %.idx103
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ed, ptr nonnull align 4 %i.ec, i64 %gepdiff, i1 false)
  store i32 %i.g, ptr %i.ec, align 4, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %._crit_edge, %bb.b, %bb.a
  %.096 = phi i32 [ -1, %._crit_edge ], [ -1, %bb.a ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.d ]
  ret i32 %.096
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 -1, 1) i32 @test_memio_drop_message(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65552
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink67 = phi i64 [ 131088, %bb.b ], [ 65536, %bb.a ]
  %.sink66 = phi i64 [ 131376, %bb.b ], [ 131240, %bb.a ]
  %.sink = phi i64 [ 131248, %bb.b ], [ 131112, %bb.a ]
  %.0 = phi ptr [ %i.a, %bb.b ], [ %0, %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.sink67 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.sink66 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.sink ; 5 uses
  %i.e = load i32, ptr %i.c, align 4, !tbaa !11   ; 2 uses
  %i.f = icmp ne i32 %i.e, 0
  %.not47 = icmp slt i32 %2, %i.e
  %or.cond = and i1 %i.f, %.not47
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = sext i32 %2 to i64                       ; 2 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11   ; 3 uses
  %i.j = icmp sgt i32 %2, 0
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader73, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %vec.phi70 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <4 x i32>, ptr %i.k, align 4, !tbaa !11
  %wide.load71 = load <4 x i32>, ptr %i.l, align 4, !tbaa !11
  %i.m = add <4 x i32> %wide.load, %vec.phi       ; 2 uses
  %i.n = add <4 x i32> %wide.load71, %vec.phi70   ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.n, %i.m
  %i.p = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader73

.lr.ph.preheader73:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.04049.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader73, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader73 ] ; 2 uses
  %.04049 = phi i32 [ %i.s, %.lr.ph ], [ %.04049.ph, %.lr.ph.preheader73 ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !11
  %i.s = add nsw i32 %i.r, %.04049                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !47

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.d
  %.040.lcssa = phi i32 [ 0, %bb.d ], [ %i.p, %middle.block ], [ %i.s, %.lr.ph ] ; 2 uses
  %i.t = sext i32 %.040.lcssa to i64
  %i.u = getelementptr inbounds i8, ptr %.0, i64 %i.t ; 2 uses
  %i.v = sext i32 %i.i to i64
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %i.v
  %i.x = load i32, ptr %i.b, align 4, !tbaa !11
  %i.y = add i32 %.040.lcssa, %i.i
  %i.z = sub i32 %i.x, %i.y
  %i.aa = sext i32 %i.z to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.w, i64 %i.aa, i1 false)
  %i.ab = load i32, ptr %i.c, align 4, !tbaa !11
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  %i.ad = icmp slt i32 %2, %i.ac
  br i1 %i.ad, label %.lr.ph53, label %._crit_edge54

.lr.ph53:                                         ; preds = %._crit_edge, %.lr.ph53
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %.lr.ph53 ], [ %i.g, %._crit_edge ] ; 3 uses
  %indvars.iv.next60 = add nsw i64 %indvars.iv59, 1 ; 2 uses
  %i.ae = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv59
  %3 = getelementptr i8, ptr %i.ae, i64 4
  %i.af = load i32, ptr %3, align 4, !tbaa !11
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv59
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !11
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !11
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next60, %i.aj
  br i1 %i.ak, label %.lr.ph53, label %._crit_edge54, !llvm.loop !1

._crit_edge54:                                    ; preds = %.lr.ph53, %._crit_edge
  %.lcssa = phi i32 [ %i.ac, %._crit_edge ], [ %i.ai, %.lr.ph53 ]
  %i.al = load i32, ptr %i.b, align 4, !tbaa !11
  %i.am = sub nsw i32 %i.al, %i.i
  store i32 %i.am, ptr %i.b, align 4, !tbaa !11
  store i32 %.lcssa, ptr %i.c, align 4, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %._crit_edge54
  %.044 = phi i32 [ 0, %._crit_edge54 ], [ -1, %bb.c ]
  ret i32 %.044
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 -1, 1) i32 @test_memio_remove_from_buffer(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65552
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink95 = phi i64 [ 131088, %bb.b ], [ 65536, %bb.a ]
  %.sink94 = phi i64 [ 131376, %bb.b ], [ 131240, %bb.a ]
  %.sink = phi i64 [ 131248, %bb.b ], [ 131112, %bb.a ]
  %.0 = phi ptr [ %i.a, %bb.b ], [ %0, %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.sink95 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.sink94
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.sink ; 2 uses
  %i.e = load i32, ptr %i.b, align 4, !tbaa !11   ; 4 uses
  %i.f = icmp ne i32 %i.e, 0
  %.not63 = icmp slt i32 %2, %i.e
  %or.cond = and i1 %i.f, %.not63
  br i1 %or.cond, label %bb.d, label %test_memio_drop_message.exit

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %3, %2                       ; 3 uses
  %i.h = icmp sgt i32 %i.g, %i.e
  br i1 %i.h, label %test_memio_drop_message.exit, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.i = load i32, ptr %i.c, align 4, !tbaa !11   ; 3 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph._crit_edge ] ; 3 uses
  %.05470 = phi i32 [ 0, %.lr.ph.preheader ], [ %.pre80, %.lr.ph._crit_edge ] ; 3 uses
  %.not64 = icmp sge i32 %2, %.05470
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !11
  %.pre80 = add nsw i32 %.pre, %.05470            ; 2 uses
  %i.k = icmp slt i32 %2, %.pre80
  %or.cond96 = select i1 %.not64, i1 %i.k, i1 false
  br i1 %or.cond96, label %._crit_edge.loopexit, label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %test_memio_drop_message.exit, label %.lr.ph, !llvm.loop !48

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.l = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.054.lcssa = phi i32 [ 0, %.preheader ], [ %.05470, %._crit_edge.loopexit ]
  %.053.lcssa = phi i32 [ 0, %.preheader ], [ %i.l, %._crit_edge.loopexit ] ; 6 uses
  %i.m = zext nneg i32 %.053.lcssa to i64         ; 6 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.m ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !11   ; 2 uses
  %i.p = add nsw i32 %i.o, %.054.lcssa
  %i.q = icmp sgt i32 %i.g, %i.p
  %i.r = icmp eq i32 %.053.lcssa, %i.i
  %or.cond65 = or i1 %i.r, %i.q
  br i1 %or.cond65, label %test_memio_drop_message.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.s = icmp eq i32 %3, %i.o
  br i1 %i.s, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 65552
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink67.i = phi i64 [ 131088, %bb.g ], [ 65536, %bb.f ]
  %.sink66.i = phi i64 [ 131376, %bb.g ], [ 131240, %bb.f ]
  %.sink.i = phi i64 [ 131248, %bb.g ], [ 131112, %bb.f ]
  %.0.i = phi ptr [ %i.t, %bb.g ], [ %0, %bb.f ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.sink67.i ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.sink66.i ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i ; 4 uses
  %i.x = load i32, ptr %i.v, align 4, !tbaa !11
  %.not47.i = icmp slt i32 %.053.lcssa, %i.x
  br i1 %.not47.i, label %bb.i, label %test_memio_drop_message.exit

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.m
  %i.z = load i32, ptr %i.y, align 4, !tbaa !11   ; 3 uses
  %.not66 = icmp eq i32 %.053.lcssa, 0
  br i1 %.not66, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.i
  %min.iters.check = icmp ult i32 %.053.lcssa, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader102, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.m, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ac, %vector.body ]
  %vec.phi100 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ad, %vector.body ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <4 x i32>, ptr %i.aa, align 4, !tbaa !11
  %wide.load101 = load <4 x i32>, ptr %i.ab, align 4, !tbaa !11
  %i.ac = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ad = add <4 x i32> %wide.load101, %vec.phi100 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ad, %i.ac
  %i.af = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.m
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader102

.lr.ph.i.preheader102:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  %.04049.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader102, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader102 ] ; 2 uses
  %.04049.i = phi i32 [ %i.ai, %.lr.ph.i ], [ %.04049.i.ph, %.lr.ph.i.preheader102 ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !11
  %i.ai = add nsw i32 %i.ah, %.04049.i            ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.m
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !50

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.i
  %.040.lcssa.i = phi i32 [ 0, %bb.i ], [ %i.af, %middle.block ], [ %i.ai, %.lr.ph.i ] ; 2 uses
  %i.aj = sext i32 %.040.lcssa.i to i64
  %i.ak = getelementptr inbounds i8, ptr %.0.i, i64 %i.aj ; 2 uses
  %i.al = sext i32 %i.z to i64
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.u, align 4, !tbaa !11
  %i.ao = add i32 %.040.lcssa.i, %i.z
  %i.ap = sub i32 %i.an, %i.ao
  %i.aq = sext i32 %i.ap to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %i.am, i64 %i.aq, i1 false)
  %i.ar = load i32, ptr %i.v, align 4, !tbaa !11
  %i.as = add nsw i32 %i.ar, -1                   ; 2 uses
  %i.at = icmp slt i32 %.053.lcssa, %i.as
  br i1 %i.at, label %.lr.ph53.i, label %._crit_edge54.i

.lr.ph53.i:                                       ; preds = %._crit_edge.i, %.lr.ph53.i
  %indvars.iv59.i = phi i64 [ %indvars.iv.next60.i, %.lr.ph53.i ], [ %i.m, %._crit_edge.i ] ; 2 uses
  %indvars.iv.next60.i = add nuw nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %i.au = getelementptr [4 x i8], ptr %i.w, i64 %indvars.iv59.i ; 2 uses
  %4 = getelementptr i8, ptr %i.au, i64 4
  %5 = load i32, ptr %4, align 4, !tbaa !11
  store i32 %5, ptr %i.au, align 4, !tbaa !11
  %i.av = load i32, ptr %i.v, align 4, !tbaa !11
  %i.aw = add nsw i32 %i.av, -1                   ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp slt i64 %indvars.iv.next60.i, %i.ax
  br i1 %i.ay, label %.lr.ph53.i, label %._crit_edge54.i, !llvm.loop !1

._crit_edge54.i:                                  ; preds = %.lr.ph53.i, %._crit_edge.i
  %.lcssa.i = phi i32 [ %i.as, %._crit_edge.i ], [ %i.aw, %.lr.ph53.i ]
  %i.az = load i32, ptr %i.u, align 4, !tbaa !11
  %i.ba = sub nsw i32 %i.az, %i.z
  store i32 %i.ba, ptr %i.u, align 4, !tbaa !11
  store i32 %.lcssa.i, ptr %i.v, align 4, !tbaa !11
  br label %test_memio_drop_message.exit

bb.j:                                             ; preds = %bb.e
  %i.bb = sext i32 %2 to i64
  %i.bc = getelementptr inbounds i8, ptr %.0, i64 %i.bb ; 2 uses
  %i.bd = sext i32 %3 to i64
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 %i.bd
  %i.bf = sub i32 %i.e, %i.g
  %i.bg = sext i32 %i.bf to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bc, ptr align 1 %i.be, i64 %i.bg, i1 false)
  %i.bh = load i32, ptr %i.n, align 4, !tbaa !11
  %i.bi = sub nsw i32 %i.bh, %3
  store i32 %i.bi, ptr %i.n, align 4, !tbaa !11
  %i.bj = load i32, ptr %i.b, align 4, !tbaa !11
  %i.bk = sub nsw i32 %i.bj, %3
  store i32 %i.bk, ptr %i.b, align 4, !tbaa !11
  br label %test_memio_drop_message.exit

test_memio_drop_message.exit:                     ; preds = %.lr.ph._crit_edge, %._crit_edge54.i, %bb.h, %._crit_edge, %bb.d, %bb.c, %bb.j
  %.058 = phi i32 [ 0, %bb.j ], [ -1, %bb.c ], [ -1, %bb.h ], [ -1, %bb.d ], [ -1, %._crit_edge ], [ 0, %._crit_edge54.i ], [ -1, %.lr.ph._crit_edge ]
  ret i32 %.058
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 -1, 1) i32 @test_memio_modify_message_len(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65552
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink62 = phi i64 [ 131088, %bb.b ], [ 65536, %bb.a ]
  %.sink61 = phi i64 [ 131376, %bb.b ], [ 131240, %bb.a ]
  %.sink = phi i64 [ 131248, %bb.b ], [ 131112, %bb.a ]
  %.0 = phi ptr [ %i.a, %bb.b ], [ %0, %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.sink62 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.sink61
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.sink ; 3 uses
  %i.e = load i32, ptr %i.c, align 4, !tbaa !11   ; 2 uses
  %i.f = icmp ne i32 %i.e, 0
  %.not51 = icmp slt i32 %2, %i.e
  %or.cond = and i1 %i.f, %.not51
  br i1 %or.cond, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c
  %i.g = icmp sgt i32 %2, 0
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader67, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi65 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <4 x i32>, ptr %i.h, align 4, !tbaa !11
  %wide.load66 = load <4 x i32>, ptr %i.i, align 4, !tbaa !11
  %i.j = add <4 x i32> %wide.load, %vec.phi       ; 2 uses
  %i.k = add <4 x i32> %wide.load66, %vec.phi65   ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.k, %i.j
  %i.m = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader67

.lr.ph.preheader67:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.04253.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader67, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader67 ] ; 2 uses
  %.04253 = phi i32 [ %i.p, %.lr.ph ], [ %.04253.ph, %.lr.ph.preheader67 ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !11
  %i.p = add nsw i32 %i.o, %.04253                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !52

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.preheader
  %.042.lcssa = phi i32 [ 0, %.preheader ], [ %i.m, %middle.block ], [ %i.p, %.lr.ph ] ; 2 uses
  %i.q = sext i32 %2 to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !11   ; 4 uses
  %i.t = icmp sgt i32 %3, %i.s
  %.pre = load i32, ptr %i.b, align 4, !tbaa !11  ; 2 uses
  %i.u = sub i32 %3, %i.s                         ; 2 uses
  %i.v = add nsw i32 %i.u, %.pre
  %i.w = icmp sgt i32 %i.v, 65536
  %or.cond64 = select i1 %i.t, i1 %i.w, i1 false
  br i1 %or.cond64, label %bb.d, label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %i.x = sext i32 %.042.lcssa to i64
  %i.y = getelementptr inbounds i8, ptr %.0, i64 %i.x ; 2 uses
  %i.z = sext i32 %3 to i64
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 %i.z
  %i.ab = sext i32 %i.s to i64
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 %i.ab
  %i.ad = add i32 %i.s, %.042.lcssa
  %i.ae = sub i32 %.pre, %i.ad
  %i.af = sext i32 %i.ae to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.ac, i64 %i.af, i1 false)
  store i32 %3, ptr %i.r, align 4, !tbaa !11
  %i.ag = load i32, ptr %i.b, align 4, !tbaa !11
  %i.ah = add i32 %i.u, %i.ag
  store i32 %i.ah, ptr %i.b, align 4, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c, %._crit_edge._crit_edge
  %.046 = phi i32 [ 0, %._crit_edge._crit_edge ], [ -1, %bb.c ], [ -1, %._crit_edge ]
  ret i32 %.046
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @test_memio_setup(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @test_memio_setup_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0)
  ret i32 %i.a
}

declare i32 @wolfSSL_SetTmpDH(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !12}
!1 = distinct !{!1, !12}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!8, !8, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"test_memio_ctx", !7, i64 0, !8, i64 65536, !14, i64 65544, !7, i64 65552, !8, i64 131088, !14, i64 131096, !8, i64 131104, !8, i64 131108, !7, i64 131112, !8, i64 131240, !8, i64 131244, !7, i64 131248, !8, i64 131376, !8, i64 131380}
!16 = !{!15, !8, i64 131104}
!17 = !{!15, !8, i64 131108}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = distinct !{!21, !12}
!22 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
end_hunk_0
