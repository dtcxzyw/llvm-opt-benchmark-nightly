Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaEquiv?download=true
inline.NumInlined: 1043
inline.NumDeleted: 101
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 31
begin_hunk_0_@Gia_ManEquivToChoices:bb.a
  %i.dp = getelementptr i8, ptr %i.dm, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph138, %bb.g
  %indvars.iv154 = phi i64 [ 0, %.lr.ph138 ], [ %indvars.iv.next155, %bb.g ] ; 2 uses
  %.val92 = load ptr, ptr %i.ac, align 8, !tbaa !50 ; 2 uses
  %.not86 = icmp eq ptr %.val92, null
  br i1 %.not86, label %.critedge6, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val93 = load ptr, ptr %i.dp, align 8, !tbaa !24
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.val93, i64 %indvars.iv154
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !45
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [12 x i8], ptr %.val92, i64 %i.ds
  tail call void @Gia_ManEquivToChoices_rec(ptr noundef nonnull %i.b, ptr noundef nonnull %0, ptr noundef nonnull %i.dt)
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %.val95 = load i32, ptr %i.dn, align 4, !tbaa !44
  %i.du = sext i32 %.val95 to i64
  %i.dv = icmp slt i64 %indvars.iv.next155, %i.du
  br i1 %i.dv, label %bb.f, label %.critedge6, !llvm.loop !201

.critedge6:                                       ; preds = %bb.f, %bb.g, %.critedge4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !24 ; 2 uses
  %.not.i114 = icmp eq ptr %i.dx, null
  br i1 %.not.i114, label %Vec_IntFree.exit, label %bb.h

bb.h:                                             ; preds = %.critedge6
  tail call void @free(ptr noundef nonnull %i.dx) #32
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge6, %bb.h
  tail call void @free(ptr noundef nonnull %i.dm) #32
  %i.dy = load ptr, ptr %i.cu, align 8, !tbaa !56 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 4
  %.val94140 = load i32, ptr %i.dz, align 4, !tbaa !44
  %i.ea = icmp sgt i32 %.val94140, 0
  br i1 %i.ea, label %.lr.ph142, label %.critedge8

.lr.ph142:                                        ; preds = %Vec_IntFree.exit, %bb.k
  %i.eb = phi ptr [ %i.ev, %bb.k ], [ %i.dy, %Vec_IntFree.exit ] ; 2 uses
  %indvars.iv157 = phi i64 [ %indvars.iv.next158, %bb.k ], [ 0, %Vec_IntFree.exit ] ; 3 uses
  %.val104 = load ptr, ptr %i.ac, align 8, !tbaa !50 ; 2 uses
  %i.ec = getelementptr i8, ptr %i.eb, i64 8
  %.val105.val = load ptr, ptr %i.ec, align 8, !tbaa !24
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.val105.val, i64 %indvars.iv157
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !45
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [12 x i8], ptr %.val104, i64 %i.ef ; 2 uses
  %.not87 = icmp eq ptr %.val104, null
  br i1 %.not87, label %.critedge8, label %bb.i

bb.i:                                             ; preds = %.lr.ph142
  %i.eh = trunc nuw nsw i64 %indvars.iv157 to i32
  %i.ei = srem i32 %i.eh, %1
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ek = load i64, ptr %i.eg, align 4            ; 2 uses
  %i.el = and i64 %i.ek, 536870911
  %i.em = sub nsw i64 0, %i.el
  %i.en = getelementptr inbounds [12 x i8], ptr %i.eg, i64 %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !52
  %i.eq = trunc i64 %i.ek to i32
  %i.er = lshr i32 %i.eq, 29
  %i.es = and i32 %i.er, 1
  %i.et = xor i32 %i.es, %i.ep
  %i.eu = tail call fastcc i32 @Gia_ManAppendCo(ptr noundef nonnull %i.b, i32 noundef %i.et) ; 0 uses
  %.pre = load ptr, ptr %i.cu, align 8, !tbaa !56
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ev = phi ptr [ %i.eb, %bb.i ], [ %.pre, %bb.j ] ; 2 uses
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1 ; 2 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 4
  %.val94 = load i32, ptr %i.ew, align 4, !tbaa !44
  %i.ex = sext i32 %.val94 to i64
  %i.ey = icmp slt i64 %indvars.iv.next158, %i.ex
  br i1 %i.ey, label %.lr.ph142, label %.critedge8, !llvm.loop !202

.critedge8:                                       ; preds = %.lr.ph142, %bb.k, %Vec_IntFree.exit
  tail call void @Gia_ManHashStop(ptr noundef nonnull %i.b) #32
  %.val110 = load i32, ptr %i.au, align 8, !tbaa !63
  tail call void @Gia_ManSetRegNum(ptr noundef nonnull %i.b, i32 noundef %.val110) #32
  tail call void @Gia_ManRemoveBadChoices(ptr noundef nonnull %i.b)
  %i.ez = tail call ptr @Gia_ManCleanup(ptr noundef nonnull %i.b) #32
  tail call void @Gia_ManStop(ptr noundef nonnull %i.b) #32
  ret ptr %i.ez
}

declare ptr @Gia_ManGetDangling(ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Gia_ManCountChoiceNodes(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58   ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !42   ; 4 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.j, align 8, !tbaa !50
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %.critedge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.h to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.k = icmp eq i32 %i.h, 1
  br i1 %i.k, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %Gia_ObjIsHead.exit.1, %.lr.ph.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %indvars.iv.next.1, %Gia_ObjIsHead.exit.1 ] ; 4 uses
  %.014 = phi i32 [ 0, %.lr.ph.split.preheader.new ], [ %i.ae, %Gia_ObjIsHead.exit.1 ]
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.1, %Gia_ObjIsHead.exit.1 ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4
  %i.n = and i32 %i.m, 268435455
  %i.o = icmp eq i32 %i.n, 268435455
  br i1 %i.o, label %bb.c, label %Gia_ObjIsHead.exit

bb.c:                                             ; preds = %.lr.ph.split
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !45
  %i.r = icmp sgt i32 %i.q, 0
  %i.s = zext i1 %i.r to i32
  br label %Gia_ObjIsHead.exit

Gia_ObjIsHead.exit:                               ; preds = %.lr.ph.split, %bb.c
  %i.t = phi i32 [ 0, %.lr.ph.split ], [ %i.s, %bb.c ]
  %i.u = add nuw nsw i32 %i.t, %.014
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next
  %i.w = load i32, ptr %i.v, align 4
  %i.x = and i32 %i.w, 268435455
  %i.y = icmp eq i32 %i.x, 268435455
  br i1 %i.y, label %bb.d, label %Gia_ObjIsHead.exit.1

bb.d:                                             ; preds = %Gia_ObjIsHead.exit
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !45
  %i.ab = icmp sgt i32 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  br label %Gia_ObjIsHead.exit.1

Gia_ObjIsHead.exit.1:                             ; preds = %bb.d, %Gia_ObjIsHead.exit
  %i.ad = phi i32 [ 0, %Gia_ObjIsHead.exit ], [ %i.ac, %bb.d ]
  %i.ae = add nuw nsw i32 %i.ad, %i.u             ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge.loopexit.unr-lcssa, label %.lr.ph.split, !llvm.loop !203

.critedge.loopexit.unr-lcssa:                     ; preds = %Gia_ObjIsHead.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next.1, %.critedge.loopexit.unr-lcssa ] ; 2 uses
  %.014.epil.init = phi i32 [ 0, %.lr.ph.split.preheader ], [ %i.ae, %.critedge.loopexit.unr-lcssa ]
  %lcmp.mod21 = trunc i32 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.epil.init
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = and i32 %i.ag, 268435455
  %i.ai = icmp eq i32 %i.ah, 268435455
  br i1 %i.ai, label %bb.e, label %Gia_ObjIsHead.exit.epil

bb.e:                                             ; preds = %.lr.ph.split.epil.preheader
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.epil.init
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !45
  %i.al = icmp sgt i32 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  br label %Gia_ObjIsHead.exit.epil

Gia_ObjIsHead.exit.epil:                          ; preds = %bb.e, %.lr.ph.split.epil.preheader
  %i.an = phi i32 [ 0, %.lr.ph.split.epil.preheader ], [ %i.am, %bb.e ]
  %i.ao = add nuw nsw i32 %i.an, %.014.epil.init
  br label %.critedge

.critedge:                                        ; preds = %Gia_ObjIsHead.exit.epil, %.critedge.loopexit.unr-lcssa, %.lr.ph, %.preheader, %bb.a, %bb.b
  %.012 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %.preheader ], [ 0, %.lr.ph ], [ %i.ae, %.critedge.loopexit.unr-lcssa ], [ %i.ao, %Gia_ObjIsHead.exit.epil ]
  ret i32 %.012
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Gia_ManCountChoices(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !42   ; 3 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.j, align 8, !tbaa !50
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %.critedge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.h to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.h, 8
  br i1 %min.iters.check, label %.lr.ph.split.preheader22, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %vec.phi20 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.r, %vector.body ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <4 x i32>, ptr %i.k, align 4, !tbaa !45
  %wide.load21 = load <4 x i32>, ptr %i.l, align 4, !tbaa !45
  %i.m = icmp sgt <4 x i32> %wide.load, zeroinitializer
  %i.n = icmp sgt <4 x i32> %wide.load21, zeroinitializer
  %i.o = zext <4 x i1> %i.m to <4 x i32>
  %i.p = zext <4 x i1> %i.n to <4 x i32>
  %i.q = add <4 x i32> %vec.phi, %i.o             ; 2 uses
  %i.r = add <4 x i32> %vec.phi20, %i.p           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !204

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.r, %i.q
  %i.t = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.critedge, label %.lr.ph.split.preheader22

.lr.ph.split.preheader22:                         ; preds = %.lr.ph.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.split.preheader ], [ %n.vec, %middle.block ]
  %.015.ph = phi i32 [ 0, %.lr.ph.split.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader22, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader22 ] ; 2 uses
  %.015 = phi i32 [ %i.y, %.lr.ph.split ], [ %.015.ph, %.lr.ph.split.preheader22 ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !45
  %i.w = icmp sgt i32 %i.v, 0
  %i.x = zext i1 %i.w to i32
  %i.y = add nuw nsw i32 %.015, %i.x              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.split, !llvm.loop !205

.critedge:                                        ; preds = %.lr.ph.split, %middle.block, %.preheader, %.lr.ph, %bb.a, %bb.b
  %.012 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %.preheader ], [ 0, %.lr.ph ], [ %i.t, %middle.block ], [ %i.y, %.lr.ph.split ]
  ret i32 %.012
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @Gia_ManHasNoEquivs(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !42   ; 4 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr i8, ptr %0, i64 32
  %.val12 = load ptr, ptr %i.g, align 8, !tbaa !50
  %.not = icmp eq ptr %.val12, null
  br i1 %.not, label %.critedge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %Gia_ObjReprObj.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %Gia_ObjReprObj.exit.thread ] ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 268435455
  %i.k = icmp eq i32 %i.j, 268435455
  br i1 %i.k, label %Gia_ObjReprObj.exit.thread, label %.critedge.loopexit.split.loop.exit

Gia_ObjReprObj.exit.thread:                       ; preds = %.lr.ph.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.split, !llvm.loop !10

.critedge.loopexit.split.loop.exit:               ; preds = %.lr.ph.split
  %i.l = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %Gia_ObjReprObj.exit.thread, %.critedge.loopexit.split.loop.exit, %.lr.ph, %.preheader
  %.0.lcssa = phi i32 [ 0, %.preheader ], [ 0, %.lr.ph ], [ %i.l, %.critedge.loopexit.split.loop.exit ], [ %i.e, %Gia_ObjReprObj.exit.thread ]
  %i.m = icmp eq i32 %.0.lcssa, %i.e
  %i.n = zext i1 %i.m to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.critedge
  %.010 = phi i32 [ %i.n, %.critedge ], [ 1, %bb.a ]
  ret i32 %.010
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Gia_CommandSpecI(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #6 {
bb.a:
  %6 = alloca %struct.Cec_ParSim_t_, align 4      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.34)
  br label %.thread

bb.d:                                             ; preds = %bb.b
  tail call void @Gia_ManCleanMark0(ptr noundef nonnull %0) #32
  tail call void @Gia_ManPrintStats(ptr noundef nonnull %0, ptr noundef null) #32
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %Gia_ManHasNoEquivs.exit.thread, label %.preheader.i.lr.ph

.preheader.i.lr.ph:                               ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 32
  %i.k = getelementptr i8, ptr %0, i64 72
  %i.l = getelementptr i8, ptr %0, i64 64
  %.not53 = icmp eq i32 %3, 0
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 24
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.lr.ph, %bb.q
  %i.n = phi ptr [ %i.g, %.preheader.i.lr.ph ], [ %i.az, %bb.q ]
  %.04671 = phi i32 [ 0, %.preheader.i.lr.ph ], [ %.147, %bb.q ] ; 2 uses
  %.04870 = phi i32 [ 0, %.preheader.i.lr.ph ], [ %i.ay, %bb.q ] ; 2 uses
  %i.o = load i32, ptr %i.i, align 8, !tbaa !42   ; 3 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.i, label %Gia_ManHasNoEquivs.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %.val12.i = load ptr, ptr %i.j, align 8, !tbaa !50
  %.not.i = icmp eq ptr %.val12.i, null
  br i1 %.not.i, label %Gia_ManHasNoEquivs.exit, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %i.o to i64
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %Gia_ObjReprObj.exit.thread.i, %.lr.ph.split.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.preheader.i ], [ %indvars.iv.next.i, %Gia_ObjReprObj.exit.thread.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.r = load i32, ptr %i.q, align 4
  %i.s = and i32 %i.r, 268435455
  %i.t = icmp eq i32 %i.s, 268435455
  br i1 %i.t, label %Gia_ObjReprObj.exit.thread.i, label %.critedge.loopexit.split.loop.exit.i

Gia_ObjReprObj.exit.thread.i:                     ; preds = %.lr.ph.split.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
end_hunk_0
