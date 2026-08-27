Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sswRarity?download=true
inline.NumInlined: 245
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 25
begin_hunk_0_@Ssw_RarManObjHashWord:bb.a
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %.val11, i64 %i.f ; 6 uses
  %i.h = icmp sgt i32 %.val.val, 0
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = shl nuw i32 %.val.val, 1                 ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.i, i32 1) ; 2 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 5 uses
  %min.iters.check = icmp slt i32 %i.i, 8
  %i.j = add nsw i32 %smax, -129
  %i.k = icmp ult i32 %i.j, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %i.k
  br i1 %or.cond, label %.lr.ph.preheader20, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 248          ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.s, %vector.body ]
  %vec.phi15 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.t, %vector.body ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <4 x i32>, ptr %i.l, align 4, !tbaa !49
  %wide.load16 = load <4 x i32>, ptr %i.m, align 4, !tbaa !49
  %i.n = and i64 %index, 120
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @Ssw_RarManObjHashWord.s_SPrimes, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load17 = load <4 x i32>, ptr %i.o, align 16, !tbaa !49
  %wide.load18 = load <4 x i32>, ptr %i.p, align 16, !tbaa !49
  %i.q = mul <4 x i32> %wide.load17, %wide.load
  %i.r = mul <4 x i32> %wide.load18, %wide.load16
  %i.s = xor <4 x i32> %i.q, %vec.phi             ; 2 uses
  %i.t = xor <4 x i32> %i.r, %vec.phi15           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <4 x i32> %i.t, %i.s
  %i.v = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader20

.lr.ph.preheader20:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.01012.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.v, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader20, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader20 ] ; 3 uses
  %.01012.prol = phi i32 [ %i.ac, %.lr.ph.prol ], [ %.01012.ph, %.lr.ph.preheader20 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader20 ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.prol
  %i.x = load i32, ptr %i.w, align 4, !tbaa !49
  %i.y = and i64 %indvars.iv.prol, 127
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @Ssw_RarManObjHashWord.s_SPrimes, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !49
  %i.ab = mul i32 %i.aa, %i.x
  %i.ac = xor i32 %i.ab, %.01012.prol             ; 3 uses
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !98

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader20
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader20 ], [ %i.ac, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader20 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.01012.unr = phi i32 [ %.01012.ph, %.lr.ph.preheader20 ], [ %i.ac, %.lr.ph.prol ]
  %i.ad = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %.01012 = phi i32 [ %i.bg, %.lr.ph ], [ %.01012.unr, %.lr.ph.prol.loopexit ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !49
  %i.ah = and i64 %indvars.iv, 127
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @Ssw_RarManObjHashWord.s_SPrimes, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !49
  %i.ak = mul i32 %i.aj, %i.ag
  %i.al = xor i32 %i.ak, %.01012
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.an = load i32, ptr %i.am, align 4, !tbaa !49
  %i.ao = and i64 %indvars.iv.next, 127
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @Ssw_RarManObjHashWord.s_SPrimes, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !49
  %i.ar = mul i32 %i.aq, %i.an
  %i.as = xor i32 %i.ar, %i.al
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next.1
  %i.au = load i32, ptr %i.at, align 4, !tbaa !49
  %i.av = and i64 %indvars.iv.next.1, 127
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr @Ssw_RarManObjHashWord.s_SPrimes, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !49
  %i.ay = mul i32 %i.ax, %i.au
  %i.az = xor i32 %i.ay, %i.as
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next.2
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !49
  %i.bc = and i64 %indvars.iv.next.2, 127
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr @Ssw_RarManObjHashWord.s_SPrimes, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !49
  %i.bf = mul i32 %i.be, %i.bb
  %i.bg = xor i32 %i.bf, %i.az                    ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !99

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  %.010.lcssa = phi i32 [ 0, %bb.a ], [ %i.v, %middle.block ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.bg, %.lr.ph ]
  ret i32 %.010.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Ssw_RarManObjWhichOne(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 36
  %.val = load i32, ptr %i.a, align 4, !tbaa !42
  %.val19 = load ptr, ptr %0, align 8, !tbaa !36
  %i.b = getelementptr i8, ptr %0, i64 40
  %.val20 = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr i8, ptr %.val19, i64 4
  %.val19.val = load i32, ptr %i.c, align 4, !tbaa !12 ; 3 uses
  %i.d = mul nsw i32 %.val19.val, %.val
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %.val20, i64 %i.e
  %i.g = icmp sgt i32 %.val19.val, 0
  br i1 %i.g, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %.val19.val to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.i = load i64, ptr %i.h, align 8, !tbaa !43   ; 5 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.g, label %.preheader

.preheader:                                       ; preds = %.lr.ph
  %i.j = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.preheader
  %indvars.iv27 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next28.3, %bb.f ] ; 9 uses
  %i.k = shl nuw i64 1, %indvars.iv27
  %i.l = and i64 %i.k, %i.i
  %.not18 = icmp eq i64 %i.l, 0
  br i1 %.not18, label %bb.c, label %.split.loop.exit

bb.c:                                             ; preds = %bb.b
  %i.m = shl nuw i64 2, %indvars.iv27
  %i.n = and i64 %i.m, %i.i
  %.not18.1 = icmp eq i64 %i.n, 0
  br i1 %.not18.1, label %bb.d, label %.split.loop.exit.split.loop.exit45

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 4, %indvars.iv27
  %i.p = and i64 %i.o, %i.i
  %.not18.2 = icmp eq i64 %i.p, 0
  br i1 %.not18.2, label %bb.e, label %.split.loop.exit.split.loop.exit43

bb.e:                                             ; preds = %bb.d
  %i.q = shl nuw i64 8, %indvars.iv27
  %i.r = and i64 %i.q, %i.i
  %.not18.3 = icmp eq i64 %i.r, 0
  br i1 %.not18.3, label %bb.f, label %.split.loop.exit.split.loop.exit

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next28.3 = add nuw nsw i64 %indvars.iv27, 4 ; 2 uses
  %exitcond30.not.3 = icmp eq i64 %indvars.iv.next28.3, 64
  br i1 %exitcond30.not.3, label %.split.loop.exit33, label %bb.b, !llvm.loop !100

.split.loop.exit.split.loop.exit:                 ; preds = %bb.e
  %indvars.iv.next28.2.le = or disjoint i64 %indvars.iv27, 3
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit43:               ; preds = %bb.d
  %indvars.iv.next28.1.le = or disjoint i64 %indvars.iv27, 2
  br label %.split.loop.exit

.split.loop.exit.split.loop.exit45:               ; preds = %bb.c
  %indvars.iv.next28.le = or disjoint i64 %indvars.iv27, 1
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %bb.b, %.split.loop.exit.split.loop.exit45, %.split.loop.exit.split.loop.exit43, %.split.loop.exit.split.loop.exit
  %indvars.iv27.lcssa = phi i64 [ %indvars.iv.next28.le, %.split.loop.exit.split.loop.exit45 ], [ %indvars.iv.next28.1.le, %.split.loop.exit.split.loop.exit43 ], [ %indvars.iv.next28.2.le, %.split.loop.exit.split.loop.exit ], [ %indvars.iv27, %bb.b ]
  %i.s = trunc nuw nsw i64 %indvars.iv27.lcssa to i32
  br label %.split.loop.exit33

.split.loop.exit33:                               ; preds = %bb.f, %.split.loop.exit
  %.0.lcssa = phi i32 [ %i.s, %.split.loop.exit ], [ 64, %bb.f ]
  %i.t = shl nuw nsw i32 %i.j, 6
  %i.u = add nuw nsw i32 %.0.lcssa, %i.t
  br label %.loopexit

bb.g:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !101

.loopexit:                                        ; preds = %bb.g, %bb.a, %.split.loop.exit33
  %.017 = phi i32 [ %i.u, %.split.loop.exit33 ], [ -1, %bb.a ], [ -1, %bb.g ]
  ret i32 %.017
}

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @Ssw_RarManCheckNonConstOutputs(ptr nofree noundef captures(none) initializes((96, 104)) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  store i32 -1, ptr %i.a, align 8, !tbaa !102
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  store i32 -1, ptr %i.b, align 4, !tbaa !103
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 112
  %.val5877 = load i32, ptr %i.e, align 8, !tbaa !78 ; 2 uses
  %i.f = icmp sgt i32 %.val5877, 0
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 40
  %i.i = sitofp i64 %2 to double
  %i.j = fdiv double %i.i, 1.000000e+06
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Ssw_RarManPoIsConst0.exit.thread
  %i.k = phi ptr [ %i.d, %.lr.ph ], [ %i.ca, %Ssw_RarManPoIsConst0.exit.thread ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Ssw_RarManPoIsConst0.exit.thread ] ; 6 uses
  %.val5879 = phi i32 [ %.val5877, %.lr.ph ], [ %.val58, %Ssw_RarManPoIsConst0.exit.thread ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !77
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.val53 = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.val53, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !41
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.r = load i32, ptr %i.q, align 8, !tbaa !104  ; 2 uses
  %.not = icmp eq i32 %i.r, 0
  %i.s = sub nsw i32 %.val5879, %i.r
  %i.t = sext i32 %i.s to i64
  %.not45 = icmp slt i64 %indvars.iv, %i.t
  %or.cond = select i1 %.not, i1 true, i1 %.not45
  br i1 %or.cond, label %bb.c, label %.critedge.loopexit

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !105  ; 3 uses
  %.not46 = icmp eq ptr %i.u, null                ; 2 uses
  br i1 %.not46, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val = load ptr, ptr %i.v, align 8, !tbaa !39
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !41
  %.not47 = icmp eq ptr %i.x, null
  br i1 %.not47, label %bb.e, label %Ssw_RarManPoIsConst0.exit.thread

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.y = getelementptr i8, ptr %i.p, i64 36
  %.val.i = load i32, ptr %i.y, align 4, !tbaa !42
  %.val9.i = load ptr, ptr %0, align 8, !tbaa !36 ; 3 uses
  %.val10.i = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.z = getelementptr i8, ptr %.val9.i, i64 4
  %.val9.val.i = load i32, ptr %i.z, align 4, !tbaa !12 ; 3 uses
  %i.aa = mul nsw i32 %.val9.val.i, %.val.i
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %.val10.i, i64 %i.ab ; 2 uses
  %i.ad = icmp sgt i32 %.val9.val.i, 0
  br i1 %i.ad, label %.lr.ph.preheader.i, label %Ssw_RarManPoIsConst0.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %.val9.val.i to i64 ; 2 uses
  br label %.lr.ph.i

bb.f:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Ssw_RarManPoIsConst0.exit.thread, label %.lr.ph.i, !llvm.loop !94

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !43
  %.not.i = icmp eq i64 %i.af, 0
  br i1 %.not.i, label %bb.f, label %Ssw_RarManPoIsConst0.exit

Ssw_RarManPoIsConst0.exit:                        ; preds = %.lr.ph.i
  %i.ag = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  store i32 %i.ag, ptr %i.a, align 8, !tbaa !102
  br label %.lr.ph.i63

.lr.ph.i63:                                       ; preds = %bb.l, %Ssw_RarManPoIsConst0.exit
  %indvars.iv.i64 = phi i64 [ 0, %Ssw_RarManPoIsConst0.exit ], [ %indvars.iv.next.i66, %bb.l ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i64
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !43 ; 5 uses
  %.not.i65 = icmp eq i64 %i.ai, 0
  br i1 %.not.i65, label %bb.l, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i63
  %i.aj = trunc nuw nsw i64 %indvars.iv.i64 to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.preheader.i
  %indvars.iv27.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next28.i.3, %bb.k ] ; 9 uses
  %i.ak = shl nuw i64 1, %indvars.iv27.i
  %i.al = and i64 %i.ak, %i.ai
  %.not18.i = icmp eq i64 %i.al, 0
  br i1 %.not18.i, label %bb.h, label %.split.loop.exit.i

bb.h:                                             ; preds = %bb.g
  %i.am = shl nuw i64 2, %indvars.iv27.i
  %i.an = and i64 %i.am, %i.ai
  %.not18.i.1 = icmp eq i64 %i.an, 0
  br i1 %.not18.i.1, label %bb.i, label %.split.loop.exit.i.split.loop.exit111

bb.i:                                             ; preds = %bb.h
  %i.ao = shl nuw i64 4, %indvars.iv27.i
  %i.ap = and i64 %i.ao, %i.ai
  %.not18.i.2 = icmp eq i64 %i.ap, 0
  br i1 %.not18.i.2, label %bb.j, label %.split.loop.exit.i.split.loop.exit109

bb.j:                                             ; preds = %bb.i
  %i.aq = shl nuw i64 8, %indvars.iv27.i
  %i.ar = and i64 %i.aq, %i.ai
  %.not18.i.3 = icmp eq i64 %i.ar, 0
  br i1 %.not18.i.3, label %bb.k, label %.split.loop.exit.i.split.loop.exit

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next28.i.3 = add nuw nsw i64 %indvars.iv27.i, 4 ; 2 uses
  %exitcond30.not.i.3 = icmp eq i64 %indvars.iv.next28.i.3, 64
  br i1 %exitcond30.not.i.3, label %.split.loop.exit33.i, label %bb.g, !llvm.loop !100

.split.loop.exit.i.split.loop.exit:               ; preds = %bb.j
  %indvars.iv.next28.i.2.le = or disjoint i64 %indvars.iv27.i, 3
  br label %.split.loop.exit.i

.split.loop.exit.i.split.loop.exit109:            ; preds = %bb.i
  %indvars.iv.next28.i.1.le = or disjoint i64 %indvars.iv27.i, 2
  br label %.split.loop.exit.i

.split.loop.exit.i.split.loop.exit111:            ; preds = %bb.h
  %indvars.iv.next28.i.le = or disjoint i64 %indvars.iv27.i, 1
  br label %.split.loop.exit.i

.split.loop.exit.i:                               ; preds = %bb.g, %.split.loop.exit.i.split.loop.exit111, %.split.loop.exit.i.split.loop.exit109, %.split.loop.exit.i.split.loop.exit
  %indvars.iv27.i.lcssa = phi i64 [ %indvars.iv.next28.i.le, %.split.loop.exit.i.split.loop.exit111 ], [ %indvars.iv.next28.i.1.le, %.split.loop.exit.i.split.loop.exit109 ], [ %indvars.iv.next28.i.2.le, %.split.loop.exit.i.split.loop.exit ], [ %indvars.iv27.i, %bb.g ]
  %i.as = trunc nuw nsw i64 %indvars.iv27.i.lcssa to i32
  br label %.split.loop.exit33.i

.split.loop.exit33.i:                             ; preds = %bb.k, %.split.loop.exit.i
  %.0.lcssa.i = phi i32 [ %i.as, %.split.loop.exit.i ], [ 64, %bb.k ]
  %i.at = shl nuw nsw i32 %i.aj, 6
  %i.au = add nuw nsw i32 %.0.lcssa.i, %i.at
  br label %Ssw_RarManObjWhichOne.exit

bb.l:                                             ; preds = %.lr.ph.i63
  %indvars.iv.next.i66 = add nuw nsw i64 %indvars.iv.i64, 1 ; 2 uses
  %exitcond.not.i67 = icmp eq i64 %indvars.iv.next.i66, %wide.trip.count.i
  br i1 %exitcond.not.i67, label %Ssw_RarManObjWhichOne.exit, label %.lr.ph.i63, !llvm.loop !101

Ssw_RarManObjWhichOne.exit:                       ; preds = %bb.l, %.split.loop.exit33.i
  %.017.i = phi i32 [ %i.au, %.split.loop.exit33.i ], [ -1, %bb.l ]
  store i32 %.017.i, ptr %i.b, align 4, !tbaa !103
  %i.av = getelementptr inbounds nuw i8, ptr %.val9.i, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !106
  %.not49 = icmp eq i32 %i.aw, 0
  br i1 %.not49, label %.critedge.loopexit, label %bb.m

bb.m:                                             ; preds = %Ssw_RarManObjWhichOne.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %.val9.i, i64 72 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !107
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !107
  br i1 %.not46, label %bb.n, label %._crit_edge

._crit_edge:                                      ; preds = %bb.m
  %.phi.trans.insert = getelementptr i8, ptr %i.u, i64 8
  %.val59.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !39
  br label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ba = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #23 ; 4 uses
  %i.bb = add i32 %.val5879, -1
  %or.cond.i.i = icmp ult i32 %i.bb, 7
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 8, i32 %.val5879 ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.ba, align 8, !tbaa !108
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_PtrStart.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = sext i32 %spec.store.select.i.i to i64
  %i.bd = shl nsw i64 %i.bc, 3
  %i.be = tail call noalias ptr @malloc(i64 noundef %i.bd) #23
  br label %Vec_PtrStart.exit

Vec_PtrStart.exit:                                ; preds = %bb.n, %bb.o
  %i.bf = phi ptr [ %i.be, %bb.o ], [ null, %bb.n ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !39
  store i32 %.val5879, ptr %i.bg, align 4, !tbaa !109
  %i.bi = sext i32 %.val5879 to i64
  %i.bj = shl nuw nsw i64 %i.bi, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bf, i8 0, i64 %i.bj, i1 false)
  store ptr %i.ba, ptr %i.g, align 8, !tbaa !105
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %Vec_PtrStart.exit
  %.val59 = phi ptr [ %i.bf, %Vec_PtrStart.exit ], [ %.val59.pre, %._crit_edge ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.val59, i64 %indvars.iv
  store ptr inttoptr (i64 1 to ptr), ptr %i.bk, align 8, !tbaa !41
  %i.bl = load ptr, ptr %0, align 8, !tbaa !36    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 88
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !110 ; 2 uses
  %.not50 = icmp eq ptr %i.bn, null
  br i1 %.not50, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = tail call i32 %i.bn(i32 noundef %i.ag, ptr noundef null) #22
  %.not51 = icmp eq i32 %i.bo, 0
  br i1 %.not51, label %._crit_edge87, label %.loopexit

._crit_edge87:                                    ; preds = %bb.q
  %.pre = load ptr, ptr %0, align 8, !tbaa !36
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge87, %bb.p
  %i.bp = phi ptr [ %.pre, %._crit_edge87 ], [ %i.bl, %bb.p ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 44
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !111
  %.not52 = icmp eq i32 %i.br, 0
  %.pre89 = load ptr, ptr %i.c, align 8, !tbaa !16 ; 2 uses
  br i1 %.not52, label %bb.s, label %Ssw_RarManPoIsConst0.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.bs = getelementptr i8, ptr %.pre89, i64 112
  %.val55 = load i32, ptr %i.bs, align 8, !tbaa !78 ; 4 uses
  %i.bt = icmp ult i32 %.val55, 2
  br i1 %i.bt, label %Abc_Base10Log.exit, label %.lr.ph.preheader.i68

.lr.ph.preheader.i68:                             ; preds = %bb.s
  %i.bu = add i32 %.val55, -1
  br label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %.lr.ph.i69, %.lr.ph.preheader.i68
  %.013.i = phi i32 [ %i.bw, %.lr.ph.i69 ], [ 0, %.lr.ph.preheader.i68 ]
  %.0812.i = phi i32 [ %i.bv, %.lr.ph.i69 ], [ %i.bu, %.lr.ph.preheader.i68 ] ; 2 uses
  %i.bv = udiv i32 %.0812.i, 10
  %i.bw = add nuw nsw i32 %.013.i, 1              ; 2 uses
  %.not.i70 = icmp ult i32 %.0812.i, 10
  br i1 %.not.i70, label %Abc_Base10Log.exit, label %.lr.ph.i69, !llvm.loop !112

Abc_Base10Log.exit:                               ; preds = %.lr.ph.i69, %bb.s
  %.09.i = phi i32 [ %.val55, %bb.s ], [ %i.bw, %.lr.ph.i69 ] ; 3 uses
  %i.bx = load i32, ptr %i.a, align 8, !tbaa !102
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !107
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.3, i32 noundef %.09.i, i32 noundef %i.bx, i32 noundef %1, i32 noundef %.09.i, i32 noundef %i.bz, i32 noundef %.09.i, i32 noundef %.val55)
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1)
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.32, double noundef %i.j)
  %.pre88 = load ptr, ptr %i.c, align 8, !tbaa !16
  br label %Ssw_RarManPoIsConst0.exit.thread

Ssw_RarManPoIsConst0.exit.thread:                 ; preds = %bb.f, %bb.e, %bb.r, %Abc_Base10Log.exit, %bb.d
  %i.ca = phi ptr [ %i.k, %bb.d ], [ %i.k, %bb.e ], [ %.pre89, %bb.r ], [ %.pre88, %Abc_Base10Log.exit ], [ %i.k, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 112
  %.val58 = load i32, ptr %i.cb, align 8, !tbaa !78 ; 2 uses
  %i.cc = sext i32 %.val58 to i64
  %i.cd = icmp slt i64 %indvars.iv.next, %i.cc
  br i1 %i.cd, label %bb.b, label %.critedge.loopexit, !llvm.loop !113

.critedge.loopexit:                               ; preds = %bb.b, %Ssw_RarManPoIsConst0.exit.thread, %Ssw_RarManObjWhichOne.exit
  %.pre90 = load i32, ptr %i.a, align 8, !tbaa !102
  %i.ce = icmp sgt i32 %.pre90, -1
  %i.cf = zext i1 %i.ce to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.q, %bb.a, %.critedge.loopexit
  %.0 = phi i32 [ 0, %bb.a ], [ %i.cf, %.critedge.loopexit ], [ 2, %bb.q ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @Ssw_RarManSimulate(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  tail call void @Ssw_RarManInitialize(ptr noundef %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !109
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !115
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 0, ptr %i.f, align 4, !tbaa !109
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16
  tail call void @Aig_ManIncrementTravId(ptr noundef %i.h) #22
  %.not = icmp eq i32 %2, 0                       ; 3 uses
  %.pre266 = load ptr, ptr %i.g, align 8, !tbaa !16 ; 4 uses
  br i1 %.not, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %.pre266, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !38   ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 4
  %.val150226 = load i32, ptr %i.k, align 4, !tbaa !109
  %i.l = icmp sgt i32 %.val150226, 0
  br i1 %i.l, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.m = getelementptr i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Aig_ObjRepr.exit.thread
  %i.n = phi ptr [ %.pre266, %.lr.ph ], [ %i.da, %Aig_ObjRepr.exit.thread ] ; 8 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Aig_ObjRepr.exit.thread ] ; 2 uses
  %i.o = phi ptr [ %i.j, %.lr.ph ], [ %i.dc, %Aig_ObjRepr.exit.thread ]
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val132 = load ptr, ptr %i.p, align 8, !tbaa !39
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.val132, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !41   ; 3 uses
  %i.s = getelementptr i8, ptr %i.n, i64 256
  %.val152 = load ptr, ptr %i.s, align 8, !tbaa !116 ; 2 uses
  %.not.i = icmp eq ptr %.val152, null
  br i1 %.not.i, label %Aig_ObjRepr.exit.thread, label %Aig_ObjRepr.exit

Aig_ObjRepr.exit:                                 ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42   ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %.val152, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !117  ; 6 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %Aig_ObjRepr.exit.thread, label %bb.c

bb.c:                                             ; preds = %Aig_ObjRepr.exit
  %i.z = getelementptr i8, ptr %i.n, i64 312
  %.val155 = load i32, ptr %i.z, align 8, !tbaa !118
  %i.aa = getelementptr i8, ptr %i.x, i64 32      ; 2 uses
  %.val156 = load i32, ptr %i.aa, align 8, !tbaa !119
  %.not223 = icmp eq i32 %.val156, %.val155
  br i1 %.not223, label %Aig_ObjRepr.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val17.i = load ptr, ptr %0, align 8, !tbaa !36
  %.val18.i = load ptr, ptr %i.m, align 8, !tbaa !37 ; 2 uses
  %i.ab = getelementptr i8, ptr %.val17.i, i64 4
  %.val17.val.i = load i32, ptr %i.ab, align 4, !tbaa !12 ; 4 uses
  %i.ac = mul nsw i32 %.val17.val.i, %i.u
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %.val18.i, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 36
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !42
  %i.ah = mul nsw i32 %i.ag, %.val17.val.i
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %.val18.i, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = xor i64 %i.an, %i.al
  %i.ap = shl i64 %i.ao, 60
  %sext.i = ashr i64 %i.ap, 63
  %i.aq = icmp sgt i32 %.val17.val.i, 0
  br i1 %i.aq, label %.lr.ph.preheader.i, label %Aig_ObjRepr.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.d
  %wide.trip.count.i = zext nneg i32 %.val17.val.i to i64
  br label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Aig_ObjRepr.exit.thread, label %.lr.ph.i, !llvm.loop !96

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.i
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !43
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i
  %i.au = load i64, ptr %i.at, align 8, !tbaa !43
  %i.av = xor i64 %i.au, %i.as
  %.not.i166 = icmp eq i64 %i.av, %sext.i
  br i1 %.not.i166, label %bb.e, label %Ssw_RarManObjsAreEqual.exit

Ssw_RarManObjsAreEqual.exit:                      ; preds = %.lr.ph.i
  %i.aw = getelementptr i8, ptr %i.n, i64 48
  %.val146 = load ptr, ptr %i.aw, align 8, !tbaa !84
  %i.ax = icmp eq ptr %i.x, %.val146
  br i1 %i.ax, label %bb.f, label %bb.p

bb.f:                                             ; preds = %Ssw_RarManObjsAreEqual.exit
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !114 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !109 ; 7 uses
  %i.bb = load i32, ptr %i.ay, align 8, !tbaa !108
  %i.bc = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bc, label %bb.g, label %Vec_PtrPush.exit

bb.g:                                             ; preds = %bb.f
  %i.bd = icmp slt i32 %i.ba, 16
  br i1 %i.bd, label %bb.h, label %bb.k
end_hunk_0
begin_hunk_1_@Aig_ManStop
; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Ssw_RarTransferPatterns(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #12 {
bb.a:
  tail call void @Ssw_RarTranspose(ptr noundef %0)
  %i.a = load ptr, ptr %0, align 8, !tbaa !36     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !12   ; 5 uses
  %i.d = shl nsw i32 %i.c, 6                      ; 2 uses
  %i.e = icmp sgt i32 %i.c, 0
  br i1 %i.e, label %.lr.ph86, label %.preheader81

.lr.ph86:                                         ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 12
  %i.g = getelementptr i8, ptr %0, i64 48
  %.val68 = load ptr, ptr %i.g, align 8, !tbaa !76
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 72
  %i.j = getelementptr i8, ptr %i.a, i64 8
  %i.k = load i32, ptr %i.h, align 8, !tbaa !154  ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph86.split, label %.preheader81

.preheader81:                                     ; preds = %._crit_edge, %.lr.ph86, %bb.a
  %i.m = phi i32 [ %i.c, %bb.a ], [ %i.c, %.lr.ph86 ], [ %i.cl, %._crit_edge ] ; 2 uses
  %.lcssa = phi i32 [ %i.d, %bb.a ], [ %i.d, %.lr.ph86 ], [ %i.co, %._crit_edge ] ; 3 uses
  %i.n = icmp sgt i32 %.lcssa, 0
  br i1 %i.n, label %.lr.ph94, label %._crit_edge95

.lr.ph94:                                         ; preds = %.preheader81
  %i.o = getelementptr i8, ptr %0, i64 48
  %.val66 = load ptr, ptr %i.o, align 8, !tbaa !76
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !156  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !154  ; 4 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph94.split.us, label %.lr.ph94.split.preheader

.lr.ph94.split.preheader:                         ; preds = %.lr.ph94
  %i.u = zext nneg i32 %.lcssa to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.q, i8 0, i64 %i.v, i1 false), !tbaa !157
  br label %._crit_edge95

.lr.ph94.split.us:                                ; preds = %.lr.ph94
  %i.w = getelementptr i8, ptr %0, i64 12
  %.val65 = load i32, ptr %i.w, align 4, !tbaa !75
  %i.x = getelementptr i8, ptr %i.a, i64 8
  %i.y = getelementptr i8, ptr %0, i64 72
  %.val72.us = load ptr, ptr %i.y, align 8, !tbaa !155 ; 3 uses
  %.val71.val.us = load i32, ptr %i.x, align 8, !tbaa !13 ; 3 uses
  %i.z = sext i32 %.val65 to i64
  %wide.trip.count122 = zext nneg i32 %.lcssa to i64
  %wide.trip.count = zext nneg i32 %i.s to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.aa = icmp eq i32 %i.s, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod161 = trunc i32 %i.s to i1
  br label %.lr.ph91.us

.lr.ph91.us:                                      ; preds = %._crit_edge92.us, %.lr.ph94.split.us
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %._crit_edge92.us ], [ 0, %.lr.ph94.split.us ] ; 3 uses
  %i.ab = mul nsw i64 %indvars.iv119, %i.z
  %i.ac = getelementptr inbounds [8 x i8], ptr %.val66, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv119 ; 4 uses
  store double 0.000000e+00, ptr %i.ad, align 8, !tbaa !157
  br i1 %i.aa, label %.epil.preheader, label %.lr.ph91.us.new

.lr.ph91.us.new:                                  ; preds = %.lr.ph91.us, %.lr.ph91.us.new
  %indvars.iv116 = phi i64 [ %indvars.iv.next117.1, %.lr.ph91.us.new ], [ 0, %.lr.ph91.us ] ; 4 uses
  %i.ae = phi double [ %i.be, %.lr.ph91.us.new ], [ 0.000000e+00, %.lr.ph91.us ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph91.us.new ], [ 0, %.lr.ph91.us ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv116
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !159
  %i.ah = zext i8 %i.ag to i32
  %i.ai = trunc nuw nsw i64 %indvars.iv116 to i32
  %i.aj = shl i32 %i.ai, %.val71.val.us
  %i.ak = add nsw i32 %i.aj, %i.ah
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %.val72.us, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !49 ; 2 uses
  %i.ao = mul nsw i32 %i.an, %i.an
  %i.ap = uitofp nneg i32 %i.ao to double
  %i.aq = fdiv double 1.000000e+00, %i.ap
  %i.ar = fadd double %i.ae, %i.aq                ; 2 uses
  store double %i.ar, ptr %i.ad, align 8, !tbaa !157
  %indvars.iv.next117 = or disjoint i64 %indvars.iv116, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv.next117
  %i.at = load i8, ptr %i.as, align 1, !tbaa !159
  %i.au = zext i8 %i.at to i32
  %i.av = trunc nuw nsw i64 %indvars.iv.next117 to i32
  %i.aw = shl i32 %i.av, %.val71.val.us
  %i.ax = add nsw i32 %i.aw, %i.au
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %.val72.us, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !49 ; 2 uses
  %i.bb = mul nsw i32 %i.ba, %i.ba
  %i.bc = uitofp nneg i32 %i.bb to double
  %i.bd = fdiv double 1.000000e+00, %i.bc
  %i.be = fadd double %i.ar, %i.bd                ; 3 uses
  store double %i.be, ptr %i.ad, align 8, !tbaa !157
  %indvars.iv.next117.1 = add nuw nsw i64 %indvars.iv116, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge92.us.unr-lcssa, label %.lr.ph91.us.new, !llvm.loop !160

._crit_edge92.us.unr-lcssa:                       ; preds = %.lr.ph91.us.new
  br i1 %lcmp.mod.not, label %._crit_edge92.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge92.us.unr-lcssa, %.lr.ph91.us
  %indvars.iv116.epil.init = phi i64 [ 0, %.lr.ph91.us ], [ %indvars.iv.next117.1, %._crit_edge92.us.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ 0.000000e+00, %.lr.ph91.us ], [ %i.be, %._crit_edge92.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod161)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv116.epil.init
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !159
  %i.bh = zext i8 %i.bg to i32
  %i.bi = trunc nuw nsw i64 %indvars.iv116.epil.init to i32
  %i.bj = shl i32 %i.bi, %.val71.val.us
  %i.bk = add nsw i32 %i.bj, %i.bh
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %.val72.us, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !49 ; 2 uses
  %i.bo = mul nsw i32 %i.bn, %i.bn
  %i.bp = uitofp nneg i32 %i.bo to double
  %i.bq = fdiv double 1.000000e+00, %i.bp
  %i.br = fadd double %.epil.init, %i.bq
  store double %i.br, ptr %i.ad, align 8, !tbaa !157
  br label %._crit_edge92.us

._crit_edge92.us:                                 ; preds = %._crit_edge92.us.unr-lcssa, %.epil.preheader
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %._crit_edge95, label %.lr.ph91.us, !llvm.loop !161

.lr.ph86.split:                                   ; preds = %.lr.ph86, %._crit_edge
  %i.bs = phi i32 [ %i.cl, %._crit_edge ], [ %i.c, %.lr.ph86 ]
  %i.bt = phi i32 [ %i.cm, %._crit_edge ], [ %i.k, %.lr.ph86 ] ; 2 uses
  %.05784 = phi i32 [ %i.cn, %._crit_edge ], [ 0, %.lr.ph86 ] ; 2 uses
  %.val67 = load i32, ptr %i.f, align 4, !tbaa !75
  %i.bu = mul nsw i32 %.val67, %.05784
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %.val68, i64 %i.bv
  %i.bx = icmp sgt i32 %i.bt, 0
  br i1 %i.bx, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph86.split
  %.val70 = load ptr, ptr %i.i, align 8, !tbaa !155
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %indvars.iv
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !159
  %i.ca = zext i8 %i.bz to i32
  %.val69.val = load i32, ptr %i.j, align 8, !tbaa !13
  %i.cb = trunc nuw nsw i64 %indvars.iv to i32
  %i.cc = shl i32 %i.cb, %.val69.val
  %i.cd = add nsw i32 %i.cc, %i.ca
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %.val70, i64 %i.ce ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !49
  %i.ch = add nsw i32 %i.cg, 1
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ci = load i32, ptr %i.h, align 8, !tbaa !154 ; 2 uses
  %i.cj = sext i32 %i.ci to i64
  %i.ck = icmp slt i64 %indvars.iv.next, %i.cj
  br i1 %i.ck, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !162

._crit_edge.loopexit:                             ; preds = %bb.b
  %.pre = load i32, ptr %i.b, align 4, !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph86.split
  %i.cl = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.bs, %.lr.ph86.split ] ; 3 uses
  %i.cm = phi i32 [ %i.ci, %._crit_edge.loopexit ], [ %i.bt, %.lr.ph86.split ]
  %i.cn = add nuw nsw i32 %.05784, 1              ; 2 uses
  %i.co = shl nsw i32 %i.cl, 6                    ; 2 uses
  %i.cp = icmp slt i32 %i.cn, %i.co
  br i1 %i.cp, label %.lr.ph86.split, label %.preheader81, !llvm.loop !163

._crit_edge95:                                    ; preds = %._crit_edge92.us, %.lr.ph94.split.preheader, %.preheader81
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  store i32 0, ptr %i.cq, align 4, !tbaa !141
  %i.cr = icmp sgt i32 %i.m, 0
  br i1 %i.cr, label %.preheader.lr.ph, label %._crit_edge108

.preheader.lr.ph:                                 ; preds = %._crit_edge95
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ct = getelementptr i8, ptr %0, i64 12
  %i.cu = getelementptr i8, ptr %0, i64 48
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %Vec_IntPush.exit80
  %i.cy = phi i32 [ %i.m, %.preheader.lr.ph ], [ %i.gd, %Vec_IntPush.exit80 ] ; 2 uses
  %.261107 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.ga, %Vec_IntPush.exit80 ]
  %.not = icmp eq i32 %i.cy, 0
  %.pre129 = load ptr, ptr %i.cs, align 8, !tbaa !156 ; 4 uses
  br i1 %.not, label %._crit_edge100, label %.lr.ph99

.lr.ph99:                                         ; preds = %.preheader
  %i.cz = shl i32 %i.cy, 6                        ; 2 uses
  %smax = tail call i32 @llvm.umax.i32(i32 %i.cz, i32 1) ; 2 uses
  %wide.trip.count127 = zext i32 %smax to i64     ; 2 uses
  %xtraiter163 = and i64 %wide.trip.count127, 1
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %.epil.preheader162, label %.lr.ph99.new

.lr.ph99.new:                                     ; preds = %.lr.ph99
  %unroll_iter167 = and i64 %wide.trip.count127, 4294967232
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph99.new
  %indvars.iv124 = phi i64 [ 0, %.lr.ph99.new ], [ %indvars.iv.next125.1, %bb.c ] ; 4 uses
  %.098 = phi double [ -1.000000e+09, %.lr.ph99.new ], [ %.1.1, %bb.c ] ; 2 uses
  %.05597 = phi i32 [ -1, %.lr.ph99.new ], [ %.156.1, %bb.c ]
  %niter168 = phi i64 [ 0, %.lr.ph99.new ], [ %niter168.next.1, %bb.c ]
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.pre129, i64 %indvars.iv124
  %i.dc = load double, ptr %i.db, align 8, !tbaa !157 ; 2 uses
  %i.dd = fcmp olt double %.098, %i.dc            ; 2 uses
  %i.de = trunc nuw nsw i64 %indvars.iv124 to i32
  %.156 = select i1 %i.dd, i32 %i.de, i32 %.05597
  %.1 = select i1 %i.dd, double %i.dc, double %.098 ; 2 uses
  %indvars.iv.next125 = or disjoint i64 %indvars.iv124, 1 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.pre129, i64 %indvars.iv.next125
  %i.dg = load double, ptr %i.df, align 8, !tbaa !157 ; 2 uses
  %i.dh = fcmp olt double %.1, %i.dg              ; 2 uses
  %i.di = trunc nuw nsw i64 %indvars.iv.next125 to i32
  %.156.1 = select i1 %i.dh, i32 %i.di, i32 %.156 ; 3 uses
  %.1.1 = select i1 %i.dh, double %i.dg, double %.1 ; 2 uses
  %indvars.iv.next125.1 = add nuw nsw i64 %indvars.iv124, 2 ; 2 uses
  %niter168.next.1 = add i64 %niter168, 2         ; 2 uses
  %niter168.ncmp.1 = icmp eq i64 %niter168.next.1, %unroll_iter167
  br i1 %niter168.ncmp.1, label %._crit_edge100.loopexit.unr-lcssa, label %bb.c, !llvm.loop !164

._crit_edge100.loopexit.unr-lcssa:                ; preds = %bb.c
  %lcmp.mod164.not = icmp eq i64 %xtraiter163, 0
  br i1 %lcmp.mod164.not, label %._crit_edge100, label %.epil.preheader162

.epil.preheader162:                               ; preds = %._crit_edge100.loopexit.unr-lcssa, %.lr.ph99
  %indvars.iv124.epil.init = phi i64 [ 0, %.lr.ph99 ], [ %indvars.iv.next125.1, %._crit_edge100.loopexit.unr-lcssa ] ; 2 uses
  %.098.epil.init = phi double [ -1.000000e+09, %.lr.ph99 ], [ %.1.1, %._crit_edge100.loopexit.unr-lcssa ]
  %.05597.epil.init = phi i32 [ -1, %.lr.ph99 ], [ %.156.1, %._crit_edge100.loopexit.unr-lcssa ]
  %lcmp.mod166 = trunc i32 %smax to i1
  tail call void @llvm.assume(i1 %lcmp.mod166)
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.pre129, i64 %indvars.iv124.epil.init
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !157
  %i.dl = fcmp olt double %.098.epil.init, %i.dk
  %i.dm = trunc nuw nsw i64 %indvars.iv124.epil.init to i32
  %.156.epil = select i1 %i.dl, i32 %i.dm, i32 %.05597.epil.init
  br label %._crit_edge100

._crit_edge100:                                   ; preds = %.epil.preheader162, %._crit_edge100.loopexit.unr-lcssa, %.preheader
  %.055.lcssa = phi i32 [ -1, %.preheader ], [ %.156.1, %._crit_edge100.loopexit.unr-lcssa ], [ %.156.epil, %.epil.preheader162 ] ; 3 uses
  %i.dn = sext i32 %.055.lcssa to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %.pre129, i64 %i.dn
  store double -1.000000e+09, ptr %i.do, align 8, !tbaa !157
  %.val63 = load i32, ptr %i.ct, align 4, !tbaa !75
  %.val64 = load ptr, ptr %i.cu, align 8, !tbaa !76
  %i.dp = mul nsw i32 %.val63, %.055.lcssa
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %.val64, i64 %i.dq
  %i.ds = load ptr, ptr %i.cv, align 8, !tbaa !16 ; 2 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 104
  %.val102 = load i32, ptr %i.dt, align 8, !tbaa !54
  %i.du = icmp sgt i32 %.val102, 0
  br i1 %i.du, label %.lr.ph105, label %._crit_edge106

.lr.ph105:                                        ; preds = %._crit_edge100, %Vec_IntPush.exit
  %i.dv = phi ptr [ %i.er, %Vec_IntPush.exit ], [ %i.ds, %._crit_edge100 ] ; 2 uses
  %.3103 = phi i32 [ %i.ex, %Vec_IntPush.exit ], [ 0, %._crit_edge100 ] ; 3 uses
  %i.dw = lshr i32 %.3103, 5
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !49
  %i.ea = and i32 %.3103, 31
  %i.eb = lshr i32 %i.dz, %i.ea
  %i.ec = and i32 %i.eb, 1
  %i.ed = load i32, ptr %i.cq, align 4, !tbaa !141 ; 7 uses
  %i.ee = load i32, ptr %1, align 8, !tbaa !140
  %i.ef = icmp eq i32 %i.ed, %i.ee
  br i1 %i.ef, label %bb.d, label %.lr.ph105.Vec_IntPush.exit_crit_edge

.lr.ph105.Vec_IntPush.exit_crit_edge:             ; preds = %.lr.ph105
  %.pre130 = load ptr, ptr %i.cw, align 8, !tbaa !51
  br label %Vec_IntPush.exit

bb.d:                                             ; preds = %.lr.ph105
  %i.eg = icmp slt i32 %i.ed, 16
  br i1 %i.eg, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.eh = load ptr, ptr %i.cw, align 8, !tbaa !51 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.eh, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ei = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.eh, i64 noundef 64) #25
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.ej = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.ek = icmp samesign ult i32 %i.ed, 1073741823
  %i.el = shl nuw nsw i32 %i.ed, 1
  %spec.select.i = select i1 %i.ek, i32 %i.el, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.ed, %spec.select.i
  %.pre131 = load ptr, ptr %i.cw, align 8, !tbaa !51 ; 3 uses
  br i1 %.not.i9.i, label %bb.i, label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i10.i = icmp eq ptr %.pre131, null
  %i.em = zext nneg i32 %spec.select.i to i64
  %i.en = shl nuw nsw i64 %i.em, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.eo = tail call ptr @realloc(ptr noundef nonnull %.pre131, i64 noundef %i.en) #25
  br label %Vec_IntGrow.exit11.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.ep = tail call noalias ptr @malloc(i64 noundef %i.en) #23
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.j, %bb.k, %bb.f, %bb.g
  %i.eq = phi ptr [ %i.ej, %bb.g ], [ %i.ei, %bb.f ], [ %i.eo, %bb.j ], [ %i.ep, %bb.k ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ]
  store ptr %i.eq, ptr %i.cw, align 8, !tbaa !51
  store i32 %spec.select.sink.i, ptr %1, align 8, !tbaa !140
  %.pre132 = load i32, ptr %i.cq, align 4, !tbaa !141
  %.pre133 = load ptr, ptr %i.cv, align 8, !tbaa !16
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.lr.ph105.Vec_IntPush.exit_crit_edge, %bb.h, %Vec_IntGrow.exit11.sink.split.i
  %i.er = phi ptr [ %i.dv, %.lr.ph105.Vec_IntPush.exit_crit_edge ], [ %i.dv, %bb.h ], [ %.pre133, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.es = phi i32 [ %i.ed, %.lr.ph105.Vec_IntPush.exit_crit_edge ], [ %i.ed, %bb.h ], [ %.pre132, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.et = phi ptr [ %.pre130, %.lr.ph105.Vec_IntPush.exit_crit_edge ], [ %.pre131, %bb.h ], [ %i.eq, %Vec_IntGrow.exit11.sink.split.i ]
  %i.eu = add nsw i32 %i.es, 1
  store i32 %i.eu, ptr %i.cq, align 4, !tbaa !141
  %i.ev = sext i32 %i.es to i64
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.ev
  store i32 %i.ec, ptr %i.ew, align 4, !tbaa !49
  %i.ex = add nuw nsw i32 %.3103, 1               ; 2 uses
  %i.ey = getelementptr i8, ptr %i.er, i64 104
  %.val = load i32, ptr %i.ey, align 8, !tbaa !54
  %i.ez = icmp slt i32 %i.ex, %.val
  br i1 %i.ez, label %.lr.ph105, label %._crit_edge106, !llvm.loop !165

._crit_edge106:                                   ; preds = %Vec_IntPush.exit, %._crit_edge100
  %i.fa = load ptr, ptr %i.cx, align 8, !tbaa !50 ; 6 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 4 ; 3 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !141 ; 7 uses
  %i.fd = load i32, ptr %i.fa, align 8, !tbaa !140
  %i.fe = icmp eq i32 %i.fc, %i.fd
  br i1 %i.fe, label %bb.l, label %Vec_IntPush.exit80

bb.l:                                             ; preds = %._crit_edge106
  %i.ff = icmp slt i32 %i.fc, 16
  br i1 %i.ff, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !51 ; 2 uses
  %.not9.i.i78 = icmp eq ptr %i.fh, null
  br i1 %.not9.i.i78, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fi = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.fh, i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i79

bb.o:                                             ; preds = %bb.m
  %i.fj = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i79

Vec_IntGrow.exit.i79:                             ; preds = %bb.o, %bb.n
  %i.fk = phi ptr [ %i.fi, %bb.n ], [ %i.fj, %bb.o ]
  store ptr %i.fk, ptr %i.fg, align 8, !tbaa !51
  br label %Vec_IntGrow.exit11.sink.split.i76

bb.p:                                             ; preds = %bb.l
  %i.fl = icmp samesign ult i32 %i.fc, 1073741823
  %i.fm = shl nuw nsw i32 %i.fc, 1
  %spec.select.i73 = select i1 %i.fl, i32 %i.fm, i32 2147483647 ; 3 uses
  %.not.i9.i74 = icmp samesign ult i32 %i.fc, %spec.select.i73
  br i1 %.not.i9.i74, label %bb.q, label %Vec_IntPush.exit80

bb.q:                                             ; preds = %bb.p
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !51 ; 2 uses
  %.not9.i10.i75 = icmp eq ptr %i.fo, null
  %i.fp = zext nneg i32 %spec.select.i73 to i64
  %i.fq = shl nuw nsw i64 %i.fp, 2                ; 2 uses
  br i1 %.not9.i10.i75, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fr = tail call ptr @realloc(ptr noundef nonnull %i.fo, i64 noundef %i.fq) #25
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.fs = tail call noalias ptr @malloc(i64 noundef %i.fq) #23
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ft = phi ptr [ %i.fr, %bb.r ], [ %i.fs, %bb.s ]
  store ptr %i.ft, ptr %i.fn, align 8, !tbaa !51
  br label %Vec_IntGrow.exit11.sink.split.i76

Vec_IntGrow.exit11.sink.split.i76:                ; preds = %bb.t, %Vec_IntGrow.exit.i79
end_hunk_1
begin_hunk_2_@Ssw_RarSignalFilter:bb.a
  %i.om = load ptr, ptr %i.kd, align 8, !tbaa !50
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 4
  store i32 0, ptr %i.on, align 4, !tbaa !141
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bf, %._crit_edge211
  %i.oo = load ptr, ptr %i.ka, align 8, !tbaa !142
  call fastcc void @Ssw_RarTransferPatterns(ptr noundef nonnull %i.as, ptr noundef %i.oo)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %Vec_IntFill.exit
  %.1124 = phi i32 [ -1, %Vec_IntFill.exit ], [ %.0123, %bb.bl ] ; 2 uses
  %.1118 = phi i32 [ %i.ol, %Vec_IntFill.exit ], [ %.0117, %bb.bl ]
  %.1 = phi i32 [ %i.np, %Vec_IntFill.exit ], [ %.0116, %bb.bl ]
  %i.op = load i32, ptr %i.af, align 8, !tbaa !137
  %.not137 = icmp eq i32 %i.op, 0
  br i1 %.not137, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.28, i32 noundef %.1124)
  %i.oq = load ptr, ptr %i.jv, align 8, !tbaa !132
  call void @Ssw_ClassesPrint(ptr noundef %i.oq, i32 noundef 0) #22
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.17)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  %i.or = add nsw i32 %.1124, 1
  br label %bb.al, !llvm.loop !203

.loopexit:                                        ; preds = %bb.am, %bb.ao, %bb.bd, %Abc_Clock.exit167
  %.2 = phi i32 [ %.0121, %bb.ao ], [ %.1122208.lcssa, %Abc_Clock.exit167 ], [ %.1122208.lcssa213, %bb.bd ], [ %.0121, %bb.am ] ; 2 uses
  %.0 = phi i32 [ -1, %bb.ao ], [ 0, %Abc_Clock.exit167 ], [ -1, %bb.bd ], [ -1, %bb.am ]
  %i.os = load i32, ptr %i.jy, align 4, !tbaa !138
  %i.ot = icmp eq i32 %.0123, %i.os
  br i1 %i.ot, label %bb.bq, label %bb.bv

bb.bq:                                            ; preds = %.loopexit
  %i.ou = load i32, ptr %1, align 8, !tbaa !8
  %i.ov = icmp eq i32 %.2, %i.ou
  br i1 %i.ov, label %bb.br, label %bb.bv

bb.br:                                            ; preds = %bb.bq
  %i.ow = load i32, ptr %i.af, align 8, !tbaa !137
  %.not147 = icmp eq i32 %i.ow, 0
  br i1 %.not147, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.ox = call i32 (...) @Abc_FrameIsBatchMode() #22
  %.not148 = icmp eq i32 %i.ox, 0
  %i.oy = select i1 %.not148, ptr @.str.26, ptr @.str.7
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.25, ptr noundef nonnull %i.oy)
  %.pre248 = load i32, ptr %1, align 8, !tbaa !8
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.oz = phi i32 [ %.pre248, %bb.bs ], [ %.2, %bb.br ]
  %i.pa = load i32, ptr %i.jz, align 8, !tbaa !139
  %i.pb = mul nsw i32 %i.pa, %.0117
  %i.pc = add nsw i32 %i.pb, %.0123
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.18, i32 noundef %i.oz, i32 noundef %i.pc, i32 noundef %.0117)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.pd = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #22
  %i.pe = icmp slt i32 %i.pd, 0
  br i1 %i.pe, label %Abc_Clock.exit181, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.pf = load i64, ptr %2, align 8, !tbaa !69
  %i.pg = mul nsw i64 %i.pf, 1000000
  %i.ph = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !71
  %i.pj = sdiv i64 %i.pi, 1000
  %i.pk = add nsw i64 %i.pj, %i.pg
  br label %Abc_Clock.exit181

Abc_Clock.exit181:                                ; preds = %bb.bt, %bb.bu
  %.0.i180 = phi i64 [ %i.pk, %bb.bu ], [ -1, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.pl = sub nsw i64 %.0.i180, %.0.i
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1)
  %i.pm = sitofp i64 %i.pl to double
  %i.pn = fdiv double %i.pm, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.32, double noundef %i.pn)
  br label %bb.bv

bb.bv:                                            ; preds = %Abc_Clock.exit181, %bb.bq, %.loopexit
  call fastcc void @Ssw_RarManStop(ptr noundef nonnull %i.as)
  br label %bb.bw

bb.bw:                                            ; preds = %bb.g, %bb.e, %bb.bv
  %.0125 = phi i32 [ %.0, %bb.bv ], [ -1, %bb.e ], [ 0, %bb.g ]
  ret i32 %.0125
}

declare ptr @Ssw_ClassesPrepareSimple(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @Ssw_ClassesPrepareFromReprs(ptr noundef) local_unnamed_addr #4

declare void @Ssw_ClassesSetData(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @Ssw_ClassesPrint(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @Ssw_ClassesCand1Num(ptr noundef) local_unnamed_addr #4

declare i32 @Ssw_ClassesClassNum(ptr noundef) local_unnamed_addr #4

declare i32 @Abc_FrameIsBatchMode(...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @Ssw_RarSignalFilterGia(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @Gia_ManToAigSimple(ptr noundef %0) #22 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !204
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @Gia_ManReprToAigRepr2(ptr noundef %i.a, ptr noundef nonnull %0) #22
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !204  ; 2 uses
  %.not20 = icmp eq ptr %i.d, null
  br i1 %.not20, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.d) #22
  store ptr null, ptr %i.b, align 8, !tbaa !204
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !205  ; 2 uses
  %.not21 = icmp eq ptr %i.f, null
  br i1 %.not21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.f) #22
  store ptr null, ptr %i.e, align 8, !tbaa !205
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  %i.g = tail call i32 @Ssw_RarSignalFilter(ptr noundef %i.a, ptr noundef %1)
  tail call void @Gia_ManReprFromAigRepr(ptr noundef %i.a, ptr noundef nonnull %0) #22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !188
  tail call void @Abc_CexFree(ptr noundef %i.i) #22
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 408 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !134
  store ptr %i.k, ptr %i.h, align 8, !tbaa !188
  store ptr null, ptr %i.j, align 8, !tbaa !134
  tail call void @Aig_ManStop(ptr noundef %i.a) #22
  ret i32 %i.g
}

declare void @Gia_ManReprToAigRepr2(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @Gia_ManReprFromAigRepr(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #15

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #4

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #16

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #16

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #19

declare void @Ssw_ClassesStop(ptr noundef) local_unnamed_addr #4

declare void @Aig_ManCleanMarkB(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.xor.v4i32(<4 x i32>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #20

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nounwind }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind willreturn memory(read) }
attributes #25 = { nounwind allocsize(1) }
attributes #26 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"Ssw_RarPars_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !10, i64 80, !11, i64 88, !11, i64 96, !11, i64 104}
!10 = !{!"p1 _ZTS10Abc_Cex_t_", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!9, !5, i64 4}
!13 = !{!9, !5, i64 8}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !19, i64 16}
!17 = !{!"Ssw_RarMan_t_", !18, i64 0, !5, i64 8, !5, i64 12, !19, i64 16, !20, i64 24, !21, i64 32, !22, i64 40, !22, i64 48, !23, i64 56, !23, i64 64, !24, i64 72, !25, i64 80, !21, i64 88, !5, i64 96, !5, i64 100, !23, i64 104}
!18 = !{!"p1 _ZTS14Ssw_RarPars_t_", !11, i64 0}
!19 = !{!"p1 _ZTS10Aig_Man_t_", !11, i64 0}
!20 = !{!"p1 _ZTS10Ssw_Cla_t_", !11, i64 0}
!21 = !{!"p1 _ZTS10Vec_Int_t_", !11, i64 0}
!22 = !{!"p1 long", !11, i64 0}
!23 = !{!"p1 _ZTS10Vec_Ptr_t_", !11, i64 0}
!24 = !{!"p1 int", !11, i64 0}
!25 = !{!"p1 double", !11, i64 0}
!26 = !{!27, !5, i64 108}
!27 = !{!"Aig_Man_t_", !28, i64 0, !28, i64 8, !23, i64 16, !23, i64 24, !23, i64 32, !23, i64 40, !29, i64 48, !30, i64 56, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !6, i64 128, !5, i64 156, !31, i64 160, !5, i64 168, !24, i64 176, !5, i64 184, !33, i64 192, !5, i64 200, !5, i64 204, !5, i64 208, !24, i64 216, !5, i64 224, !5, i64 228, !5, i64 232, !5, i64 236, !5, i64 240, !31, i64 248, !31, i64 256, !5, i64 264, !34, i64 272, !21, i64 280, !5, i64 288, !11, i64 296, !11, i64 304, !5, i64 312, !5, i64 316, !5, i64 320, !31, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !24, i64 368, !24, i64 376, !23, i64 384, !21, i64 392, !21, i64 400, !10, i64 408, !23, i64 416, !19, i64 424, !23, i64 432, !5, i64 440, !21, i64 448, !33, i64 456, !21, i64 464, !21, i64 472, !5, i64 480, !35, i64 488, !35, i64 496, !35, i64 504, !23, i64 512, !23, i64 520}
!28 = !{!"p1 omnipotent char", !11, i64 0}
!29 = !{!"p1 _ZTS10Aig_Obj_t_", !11, i64 0}
!30 = !{!"Aig_Obj_t_", !6, i64 0, !29, i64 8, !29, i64 16, !5, i64 24, !5, i64 24, !5, i64 24, !5, i64 24, !5, i64 24, !5, i64 28, !5, i64 31, !5, i64 32, !5, i64 36, !6, i64 40}
!31 = !{!"p2 _ZTS10Aig_Obj_t_", !32, i64 0}
!32 = !{!"any p2 pointer", !11, i64 0}
!33 = !{!"p1 _ZTS10Vec_Vec_t_", !11, i64 0}
!34 = !{!"p1 _ZTS14Aig_MmFixed_t_", !11, i64 0}
!35 = !{!"long", !6, i64 0}
!36 = !{!17, !18, i64 0}
!37 = !{!17, !22, i64 40}
!38 = !{!27, !23, i64 16}
!39 = !{!40, !32, i64 8}
!40 = !{!"Vec_Ptr_t_", !5, i64 0, !5, i64 4, !32, i64 8}
!41 = !{!11, !11, i64 0}
!42 = !{!30, !5, i64 36}
!43 = !{!35, !35, i64 0}
!44 = distinct !{!44, !15, !45}
!45 = !{!"llvm.loop.peeled.count", i32 1}
!46 = distinct !{!46, !15}
!47 = distinct !{!47, !15, !48}
!48 = !{!"llvm.loop.unswitch.partial.disable"}
!49 = !{!5, !5, i64 0}
!50 = !{!17, !21, i64 88}
!51 = !{!52, !24, i64 8}
!52 = !{!"Vec_Int_t_", !5, i64 0, !5, i64 4, !24, i64 8}
!53 = distinct !{!53, !15}
!54 = !{!27, !5, i64 104}
!55 = !{!56, !5, i64 4}
!56 = !{!"Abc_Cex_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !6, i64 20}
!57 = !{!56, !5, i64 0}
!58 = distinct !{!58, !15}
!59 = distinct !{!59, !15}
!60 = !{!61, !61, i64 0}
!61 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!62 = !{!63}
!63 = distinct !{!63, !64, !"vprintf: argument 0"}
!64 = distinct !{!64, !"vprintf"}
!65 = distinct !{null}
!66 = distinct !{!66, !15}
!67 = distinct !{!67, !15}
!68 = distinct !{!68, !15}
!69 = !{!70, !35, i64 0}
!70 = !{!"timespec", !35, i64 0, !35, i64 8}
!71 = !{!70, !35, i64 8}
!72 = distinct !{!72, !15}
!73 = distinct !{!73, !15}
!74 = distinct !{!74, !15}
!75 = !{!17, !5, i64 12}
!76 = !{!17, !22, i64 48}
!77 = !{!27, !23, i64 24}
!78 = !{!27, !5, i64 112}
!79 = distinct !{!79, !15}
!80 = distinct !{!80, !15, !81}
!81 = !{!"llvm.loop.isvectorized", i32 1}
!82 = distinct !{!82, !15}
!83 = distinct !{!83, !15}
!84 = !{!27, !29, i64 48}
!85 = distinct !{!85, !15, !81, !86}
!86 = !{!"llvm.loop.unroll.runtime.disable"}
!87 = distinct !{!87, !15, !81}
!88 = distinct !{!88, !15}
!89 = distinct !{!89, !15, !81, !86}
!90 = distinct !{!90, !91}
!91 = !{!"llvm.loop.unroll.disable"}
!92 = distinct !{!92, !15, !81}
!93 = distinct !{!93, !15}
!94 = distinct !{!94, !15}
!95 = distinct !{!95, !15}
!96 = distinct !{!96, !15}
!97 = distinct !{!97, !15, !81, !86}
!98 = distinct !{!98, !91}
!99 = distinct !{!99, !15, !81}
!100 = distinct !{!100, !15}
!101 = distinct !{!101, !15}
!102 = !{!17, !5, i64 96}
!103 = !{!17, !5, i64 100}
!104 = !{!27, !5, i64 120}
!105 = !{!17, !23, i64 104}
!106 = !{!9, !5, i64 32}
!107 = !{!9, !5, i64 72}
!108 = !{!40, !5, i64 0}
!109 = !{!40, !5, i64 4}
!110 = !{!9, !11, i64 88}
!111 = !{!9, !5, i64 44}
!112 = distinct !{!112, !15}
!113 = distinct !{!113, !15}
!114 = !{!17, !23, i64 56}
!115 = !{!17, !23, i64 64}
!116 = !{!27, !31, i64 256}
!117 = !{!29, !29, i64 0}
!118 = !{!27, !5, i64 312}
!119 = !{!30, !5, i64 32}
!120 = distinct !{!120, !15}
!121 = !{!27, !23, i64 32}
!122 = !{!30, !29, i64 8}
!123 = distinct !{!123, !15, !81, !86}
!124 = distinct !{!124, !91}
!125 = distinct !{!125, !15, !81}
!126 = distinct !{!126, !15}
!127 = !{!30, !29, i64 16}
!128 = distinct !{!128, !15, !81, !86}
!129 = distinct !{!129, !15, !81}
!130 = distinct !{!130, !15}
!131 = distinct !{!131, !15}
!132 = !{!17, !20, i64 24}
!133 = distinct !{!133, !15}
!134 = !{!27, !10, i64 408}
!135 = !{!9, !5, i64 24}
!136 = !{!9, !5, i64 20}
!137 = !{!9, !5, i64 40}
!138 = !{!9, !5, i64 12}
!139 = !{!9, !5, i64 16}
!140 = !{!52, !5, i64 0}
!141 = !{!52, !5, i64 4}
!142 = !{!17, !21, i64 32}
!143 = !{!9, !11, i64 96}
!144 = !{!9, !11, i64 104}
!145 = !{!9, !5, i64 48}
!146 = !{!27, !28, i64 0}
!147 = !{!9, !5, i64 28}
!148 = distinct !{!148, !15, !81, !86}
!149 = distinct !{!149, !15, !86, !81}
!150 = distinct !{!150, !15}
!151 = distinct !{!151, !15}
!152 = !{!9, !5, i64 36}
!153 = !{!27, !11, i64 296}
!154 = !{!17, !5, i64 8}
!155 = !{!17, !24, i64 72}
!156 = !{!17, !25, i64 80}
!157 = !{!158, !158, i64 0}
!158 = !{!"double", !6, i64 0}
!159 = !{!6, !6, i64 0}
!160 = distinct !{!160, !15}
!161 = distinct !{!161, !15}
!162 = distinct !{!162, !15}
end_hunk_2
