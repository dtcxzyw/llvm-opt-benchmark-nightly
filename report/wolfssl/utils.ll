Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/utils?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@test_memio_copy_message:bb.a
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.022.i, i64 %.pre-phi.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !11 ; 3 uses
  %i.av = load i32, ptr %3, align 4, !tbaa !11
  %i.aw = icmp slt i32 %i.av, %i.au
  br i1 %i.aw, label %test_memio_get_message.exit.thread, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.ax = sext i32 %i.au to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %.1.lcssa.i, i64 %i.ax, i1 false)
  store i32 %i.au, ptr %3, align 4, !tbaa !11
  br label %test_memio_get_message.exit.thread

test_memio_get_message.exit.thread:               ; preds = %bb.a, %bb.b, %.loopexit, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -1, %.loopexit ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 -1, 1) i32 @test_memio_get_message(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq i32 %1, 0                       ; 3 uses
  %.022.v = select i1 %.not, i64 131248, i64 131112
  %.022 = getelementptr inbounds nuw i8, ptr %0, i64 %.022.v ; 10 uses
  %i.a = icmp slt i32 %4, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.023.in.v = select i1 %.not, i64 131376, i64 131240
  %.023.in = getelementptr inbounds nuw i8, ptr %0, i64 %.023.in.v
  %.023 = load i32, ptr %.023.in, align 8, !tbaa !11
  %.not26 = icmp slt i32 %4, %.023
  br i1 %.not26, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %.0.idx = select i1 %.not, i64 65552, i64 0
  %.0 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.idx ; 3 uses
  %.not29 = icmp eq i32 %4, 0
  br i1 %.not29, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %4 to i64      ; 4 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.b = icmp ult i32 %4, 8
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ] ; 9 uses
  %.128 = phi ptr [ %.0, %.lr.ph.preheader.new ], [ %i.ao, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %.022, i64 %indvars.iv
  %i.d = load i32, ptr %i.c, align 4, !tbaa !11
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %.128, i64 %i.e
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %.022, i64 %indvars.iv
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 %i.j
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.022, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !11
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %i.k, i64 %i.o
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.022, i64 %indvars.iv
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !11
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 %i.t
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.022, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i32, ptr %i.w, align 4, !tbaa !11
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %i.u, i64 %i.y
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.022, i64 %indvars.iv
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !11
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %i.z, i64 %i.ad
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.022, i64 %indvars.iv
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !11
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %i.ae, i64 %i.ai
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.022, i64 %indvars.iv
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  %i.am = load i32, ptr %i.al, align 4, !tbaa !11
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %i.aj, i64 %i.an ; 3 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !0

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %.128.epil.init = phi ptr [ %.0, %.lr.ph.preheader ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod33 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod33)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.128.epil = phi ptr [ %.128.epil.init, %.lr.ph.epil.preheader ], [ %i.as, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.022, i64 %indvars.iv.epil
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !11
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %.128.epil, i64 %i.ar ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !37

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %.pre-phi = phi i64 [ 0, %.preheader ], [ %wide.trip.count, %.lr.ph.epil ], [ %wide.trip.count, %._crit_edge.loopexit.unr-lcssa ]
  %.1.lcssa = phi ptr [ %.0, %.preheader ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ], [ %i.as, %.lr.ph.epil ]
  store ptr %.1.lcssa, ptr %2, align 8, !tbaa !38
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.022, i64 %.pre-phi
  %i.au = load i32, ptr %i.at, align 4, !tbaa !11
  store i32 %i.au, ptr %3, align 4, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b, %._crit_edge
  %.024 = phi i32 [ 0, %._crit_edge ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.024
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @test_memio_msg_is_hello_retry_request(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %.023.in.i = getelementptr inbounds nuw i8, ptr %0, i64 131240
  %.023.i = load i32, ptr %.023.in.i, align 8, !tbaa !11
  %.not26.i = icmp sgt i32 %.023.i, 0
  br i1 %.not26.i, label %test_memio_get_message.exit, label %test_memio_get_message.exit.thread

test_memio_get_message.exit:                      ; preds = %bb.a
  %.022.i = getelementptr inbounds nuw i8, ptr %0, i64 131112
  %i.a = load i32, ptr %.022.i, align 8, !tbaa !11
  %i.b = icmp slt i32 %i.a, 43
  br i1 %i.b, label %test_memio_get_message.exit.thread, label %bb.b

bb.b:                                             ; preds = %test_memio_get_message.exit
  %i.c = load i8, ptr %0, align 8, !tbaa !39
  %.not1 = icmp eq i8 %i.c, 22
  br i1 %.not1, label %bb.c, label %test_memio_get_message.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.e = load i8, ptr %i.d, align 1, !tbaa !39
  %.not2 = icmp eq i8 %i.e, 2
  br i1 %.not2, label %bb.d, label %test_memio_get_message.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 2 uses
  %i.g = load i128, ptr %i.f, align 1
  %i.h = xor i128 %i.g, -146586874009152049272879457959727521329
  %i.i = getelementptr i8, ptr %i.f, i64 16
  %i.j = load i128, ptr %i.i, align 1
  %i.k = xor i128 %i.j, -132654569078305155925981863284619238718
  %i.l = or i128 %i.h, %i.k
  %i.m = icmp ne i128 %i.l, 0
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  %i.p = zext i1 %i.o to i32
  br label %test_memio_get_message.exit.thread

test_memio_get_message.exit.thread:               ; preds = %bb.a, %bb.b, %bb.c, %test_memio_get_message.exit, %bb.d
  %.0 = phi i32 [ %i.p, %bb.d ], [ 0, %test_memio_get_message.exit ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 -1, 1) i32 @test_memio_move_message(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq i32 %1, 0                       ; 3 uses
  %.094.in.v = select i1 %.not, i64 131376, i64 131240
  %.094.in = getelementptr inbounds nuw i8, ptr %0, i64 %.094.in.v
  %.093.v = select i1 %.not, i64 131248, i64 131112
  %.093 = getelementptr inbounds nuw i8, ptr %0, i64 %.093.v ; 23 uses
  %.086.idx = select i1 %.not, i64 65552, i64 0
  %.086 = getelementptr inbounds nuw i8, ptr %0, i64 %.086.idx ; 7 uses
  %.094 = load i32, ptr %.094.in, align 8, !tbaa !11 ; 6 uses
  %i.a = icmp sgt i32 %2, -1
  %.not100 = icmp slt i32 %2, %.094
  %or.cond = select i1 %i.a, i1 %.not100, i1 false
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %3, -1
  %.not101 = icmp slt i32 %3, %.094
  %or.cond106 = select i1 %i.b, i1 %.not101, i1 false
  %i.c = add nsw i32 %.094, -1
  %.095 = select i1 %or.cond106, i32 %3, i32 %i.c ; 5 uses
  %i.d = icmp eq i32 %2, %.095
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = zext nneg i32 %2 to i64                  ; 3 uses
  %.idx = shl nuw nsw i64 %i.e, 2                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.093, i64 %.idx ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !11   ; 4 uses
  %i.h = icmp sgt i32 %.094, 0
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %.094 to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %.094, 8
  br i1 %min.iters.check, label %.lr.ph.preheader147, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi144 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.093, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <4 x i32>, ptr %i.i, align 4, !tbaa !11
  %wide.load145 = load <4 x i32>, ptr %i.j, align 4, !tbaa !11
  %i.k = add <4 x i32> %wide.load, %vec.phi       ; 2 uses
  %i.l = add <4 x i32> %wide.load145, %vec.phi144 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.l, %i.k
  %i.n = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader147

.lr.ph.preheader147:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0113.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader147, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader147 ] ; 2 uses
  %.0113 = phi i32 [ %i.q, %.lr.ph ], [ %.0113.ph, %.lr.ph.preheader147 ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.093, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !11
  %i.q = add nsw i32 %i.p, %.0113                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !41

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.c
  %.0.lcssa = phi i32 [ 0, %bb.c ], [ %i.n, %middle.block ], [ %i.q, %.lr.ph ] ; 2 uses
  %i.r = add nsw i32 %.0.lcssa, %i.g              ; 2 uses
  %i.s = icmp sgt i32 %i.r, 65536
  br i1 %i.s, label %bb.f, label %.preheader111

.preheader111:                                    ; preds = %._crit_edge
  %.not141 = icmp eq i32 %2, 0
  br i1 %.not141, label %.preheader, label %.lr.ph116.preheader

.lr.ph116.preheader:                              ; preds = %.preheader111
  %xtraiter = and i64 %i.e, 7                     ; 3 uses
  %i.t = icmp ult i32 %2, 8
  br i1 %i.t, label %.lr.ph116.epil.preheader, label %.lr.ph116.preheader.new

.lr.ph116.preheader.new:                          ; preds = %.lr.ph116.preheader
  %unroll_iter = and i64 %i.e, 2147483640
  br label %.lr.ph116

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph116
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph116.epil.preheader

.lr.ph116.epil.preheader:                         ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph116.preheader
  %indvars.iv127.epil.init = phi i64 [ 0, %.lr.ph116.preheader ], [ %indvars.iv.next128.7, %.preheader.loopexit.unr-lcssa ]
  %.188115.epil.init = phi ptr [ %.086, %.lr.ph116.preheader ], [ %i.bp, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod152 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod152)
  br label %.lr.ph116.epil

.lr.ph116.epil:                                   ; preds = %.lr.ph116.epil, %.lr.ph116.epil.preheader
  %indvars.iv127.epil = phi i64 [ %indvars.iv.next128.epil, %.lr.ph116.epil ], [ %indvars.iv127.epil.init, %.lr.ph116.epil.preheader ] ; 2 uses
  %.188115.epil = phi ptr [ %i.x, %.lr.ph116.epil ], [ %.188115.epil.init, %.lr.ph116.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph116.epil ], [ 0, %.lr.ph116.epil.preheader ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.093, i64 %indvars.iv127.epil
  %i.v = load i32, ptr %i.u, align 4, !tbaa !11
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %.188115.epil, i64 %i.w ; 2 uses
  %indvars.iv.next128.epil = add nuw nsw i64 %indvars.iv127.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph116.epil, !llvm.loop !42

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph116.epil, %.preheader111
  %.188.lcssa = phi ptr [ %.086, %.preheader111 ], [ %i.bp, %.preheader.loopexit.unr-lcssa ], [ %i.x, %.lr.ph116.epil ] ; 2 uses
  %i.y = icmp sgt i32 %.095, %2                   ; 2 uses
  %i.z = zext i1 %i.y to i32
  %i.aa = add nuw nsw i32 %.095, %i.z             ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph120.preheader, label %._crit_edge121

.lr.ph120.preheader:                              ; preds = %.preheader
  %wide.trip.count135 = zext nneg i32 %i.aa to i64 ; 2 uses
  %xtraiter153 = and i64 %wide.trip.count135, 7   ; 3 uses
  %i.ac = icmp ult i32 %i.aa, 8
  br i1 %i.ac, label %.lr.ph120.epil.preheader, label %.lr.ph120.preheader.new

.lr.ph120.preheader.new:                          ; preds = %.lr.ph120.preheader
  %unroll_iter158 = and i64 %wide.trip.count135, 2147483640
  br label %.lr.ph120

.lr.ph116:                                        ; preds = %.lr.ph116, %.lr.ph116.preheader.new
  %indvars.iv127 = phi i64 [ 0, %.lr.ph116.preheader.new ], [ %indvars.iv.next128.7, %.lr.ph116 ] ; 9 uses
  %.188115 = phi ptr [ %.086, %.lr.ph116.preheader.new ], [ %i.bp, %.lr.ph116 ]
  %niter = phi i64 [ 0, %.lr.ph116.preheader.new ], [ %niter.next.7, %.lr.ph116 ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.093, i64 %indvars.iv127
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !11
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds i8, ptr %.188115, i64 %i.af
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.093, i64 %indvars.iv127
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !11
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ag, i64 %i.ak
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.093, i64 %indvars.iv127
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !11
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds i8, ptr %i.al, i64 %i.ap
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.093, i64 %indvars.iv127
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !11
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %i.aq, i64 %i.au
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.093, i64 %indvars.iv127
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !11
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %i.av, i64 %i.az
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.093, i64 %indvars.iv127
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !11
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %i.ba, i64 %i.be
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.093, i64 %indvars.iv127
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !11
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds i8, ptr %i.bf, i64 %i.bj
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.093, i64 %indvars.iv127
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 28
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !11
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds i8, ptr %i.bk, i64 %i.bo ; 3 uses
  %indvars.iv.next128.7 = add nuw nsw i64 %indvars.iv127, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader.loopexit.unr-lcssa, label %.lr.ph116, !llvm.loop !43

.lr.ph120:                                        ; preds = %.lr.ph120, %.lr.ph120.preheader.new
  %indvars.iv132 = phi i64 [ 0, %.lr.ph120.preheader.new ], [ %indvars.iv.next133.7, %.lr.ph120 ] ; 9 uses
  %.1119 = phi ptr [ %.086, %.lr.ph120.preheader.new ], [ %i.dc, %.lr.ph120 ]
  %niter159 = phi i64 [ 0, %.lr.ph120.preheader.new ], [ %niter159.next.7, %.lr.ph120 ]
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.093, i64 %indvars.iv132
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !11
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr %.1119, i64 %i.bs
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.093, i64 %indvars.iv132
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !11
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds i8, ptr %i.bt, i64 %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.093, i64 %indvars.iv132
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !11
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds i8, ptr %i.by, i64 %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.093, i64 %indvars.iv132
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !11
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds i8, ptr %i.cd, i64 %i.ch
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.093, i64 %indvars.iv132
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !11
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds i8, ptr %i.ci, i64 %i.cm
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.093, i64 %indvars.iv132
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 20
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !11
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds i8, ptr %i.cn, i64 %i.cr
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.093, i64 %indvars.iv132
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !11
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds i8, ptr %i.cs, i64 %i.cw
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.093, i64 %indvars.iv132
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 28
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !11
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds i8, ptr %i.cx, i64 %i.db ; 3 uses
  %indvars.iv.next133.7 = add nuw nsw i64 %indvars.iv132, 8 ; 2 uses
  %niter159.next.7 = add i64 %niter159, 8         ; 2 uses
  %niter159.ncmp.7 = icmp eq i64 %niter159.next.7, %unroll_iter158
  br i1 %niter159.ncmp.7, label %._crit_edge121.loopexit.unr-lcssa, label %.lr.ph120, !llvm.loop !44

._crit_edge121.loopexit.unr-lcssa:                ; preds = %.lr.ph120
  %lcmp.mod155.not = icmp eq i64 %xtraiter153, 0
  br i1 %lcmp.mod155.not, label %._crit_edge121, label %.lr.ph120.epil.preheader

.lr.ph120.epil.preheader:                         ; preds = %._crit_edge121.loopexit.unr-lcssa, %.lr.ph120.preheader
  %indvars.iv132.epil.init = phi i64 [ 0, %.lr.ph120.preheader ], [ %indvars.iv.next133.7, %._crit_edge121.loopexit.unr-lcssa ]
  %.1119.epil.init = phi ptr [ %.086, %.lr.ph120.preheader ], [ %i.dc, %._crit_edge121.loopexit.unr-lcssa ]
  %lcmp.mod157 = icmp ne i64 %xtraiter153, 0
  tail call void @llvm.assume(i1 %lcmp.mod157)
  br label %.lr.ph120.epil

.lr.ph120.epil:                                   ; preds = %.lr.ph120.epil, %.lr.ph120.epil.preheader
  %indvars.iv132.epil = phi i64 [ %indvars.iv132.epil.init, %.lr.ph120.epil.preheader ], [ %indvars.iv.next133.epil, %.lr.ph120.epil ] ; 2 uses
  %.1119.epil = phi ptr [ %.1119.epil.init, %.lr.ph120.epil.preheader ], [ %i.dg, %.lr.ph120.epil ]
  %epil.iter154 = phi i64 [ 0, %.lr.ph120.epil.preheader ], [ %epil.iter154.next, %.lr.ph120.epil ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.093, i64 %indvars.iv132.epil
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !11
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds i8, ptr %.1119.epil, i64 %i.df ; 2 uses
  %indvars.iv.next133.epil = add nuw nsw i64 %indvars.iv132.epil, 1
  %epil.iter154.next = add i64 %epil.iter154, 1   ; 2 uses
  %epil.iter154.cmp.not = icmp eq i64 %epil.iter154.next, %xtraiter153
  br i1 %epil.iter154.cmp.not, label %._crit_edge121, label %.lr.ph120.epil, !llvm.loop !45

._crit_edge121:                                   ; preds = %._crit_edge121.loopexit.unr-lcssa, %.lr.ph120.epil, %.preheader
  %.1.lcssa = phi ptr [ %.086, %.preheader ], [ %i.dc, %._crit_edge121.loopexit.unr-lcssa ], [ %i.dg, %.lr.ph120.epil ] ; 5 uses
  %i.dh = sext i32 %i.g to i64                    ; 5 uses
  %i.di = getelementptr inbounds i8, ptr %.1.lcssa, i64 %i.dh
  %i.dj = sext i32 %.0.lcssa to i64
  %i.dk = ptrtoint ptr %.1.lcssa to i64
  %i.dl = ptrtoint ptr %.086 to i64               ; 2 uses
  %.neg = add i64 %i.dj, %i.dl
  %i.dm = sub i64 %.neg, %i.dk
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.di, ptr align 1 %.1.lcssa, i64 %i.dm, i1 false)
  %i.dn = icmp ugt ptr %.188.lcssa, %.1.lcssa
  %spec.select.idx = select i1 %i.dn, i64 %i.dh, i64 0
  %spec.select = getelementptr inbounds i8, ptr %.188.lcssa, i64 %spec.select.idx ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1.lcssa, ptr align 1 %spec.select, i64 %i.dh, i1 false)
  %i.do = getelementptr inbounds i8, ptr %spec.select, i64 %i.dh
  %i.dp = sext i32 %i.r to i64
  %i.dq = ptrtoint ptr %spec.select to i64
  %i.dr = add i64 %i.dl, %i.dp
  %i.ds = add i64 %i.dh, %i.dq
  %i.dt = sub i64 %i.dr, %i.ds
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %spec.select, ptr align 1 %i.do, i64 %i.dt, i1 false)
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge121
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.dv = zext nneg i32 %.095 to i64
  %.idx104 = shl nuw nsw i64 %i.dv, 2             ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.093, i64 %.idx104
  %gepdiff105 = sub nuw nsw i64 %.idx104, %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.f, ptr nonnull align 4 %i.du, i64 %gepdiff105, i1 false)
  store i32 %i.g, ptr %i.dw, align 4, !tbaa !11
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge121
  %i.dx = zext nneg i32 %.095 to i64
  %.idx103 = shl nuw nsw i64 %i.dx, 2             ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.093, i64 %.idx103 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %gepdiff = sub nsw i64 %.idx, %.idx103
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dz, ptr nonnull align 4 %i.dy, i64 %gepdiff, i1 false)
  store i32 %i.g, ptr %i.dy, align 4, !tbaa !11
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
end_hunk_0
