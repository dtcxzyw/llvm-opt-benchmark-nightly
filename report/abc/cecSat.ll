Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cecSat?download=true
inline.NumInlined: 390
inline.NumDeleted: 93
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@Cec2_ManSimClassRefineOne:bb.a
.lr.ph8.i66:                                      ; preds = %bb.e, %.lr.ph8.preheader.i64
  %indvars.iv15.i67 = phi i64 [ 0, %.lr.ph8.preheader.i64 ], [ %indvars.iv.next16.i69, %bb.e ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv15.i67
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !62
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv15.i67
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !62
  %.not21.i68 = icmp eq i64 %i.ax, %i.az
  br i1 %.not21.i68, label %bb.e, label %Cec2_ObjSimEqual.exit71

bb.f:                                             ; preds = %.lr.ph.i58
  %indvars.iv.next.i61 = add nuw nsw i64 %indvars.iv.i59, 1 ; 2 uses
  %exitcond.not.i62 = icmp eq i64 %indvars.iv.next.i61, %wide.trip.count.i57
  br i1 %exitcond.not.i62, label %.loopexit, label %.lr.ph.i58, !llvm.loop !5

.lr.ph.i58:                                       ; preds = %bb.f, %.lr.ph.preheader.i56
  %indvars.iv.i59 = phi i64 [ 0, %.lr.ph.preheader.i56 ], [ %indvars.iv.next.i61, %bb.f ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i59
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !62
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i59
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !62
  %i.be = xor i64 %i.bd, %i.bb
  %.not.i60 = icmp eq i64 %i.be, -1
  br i1 %.not.i60, label %bb.f, label %Cec2_ObjSimEqual.exit71

.loopexit:                                        ; preds = %bb.f, %bb.e, %.preheader1.i54, %.preheader.i63
  %i.bf = sext i32 %.13897 to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %.val44114, i64 %i.bf
  store i32 %.03999, ptr %i.bg, align 4, !tbaa !14
  %.pre = zext nneg i32 %.03999 to i64
  br label %bb.g

Cec2_ObjSimEqual.exit71:                          ; preds = %.lr.ph.i58, %.lr.ph8.i66
  %.val48 = load ptr, ptr %i.ab, align 8, !tbaa !78
  %i.bh = zext nneg i32 %.03999 to i64            ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.val48, i64 %i.bh ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = and i32 %i.bj, -268435456
  %i.bl = or disjoint i32 %i.bk, %i.ai
  store i32 %i.bl, ptr %i.bi, align 4
  %.val52 = load ptr, ptr %i.a, align 8, !tbaa !79 ; 2 uses
  %i.bm = zext nneg i32 %.03698 to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.val52, i64 %i.bm
  store i32 %.03999, ptr %i.bn, align 4, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %Cec2_ObjSimEqual.exit71
  %.pre-phi = phi i64 [ %.pre, %.loopexit ], [ %i.bh, %Cec2_ObjSimEqual.exit71 ]
  %.val44 = phi ptr [ %.val44114, %.loopexit ], [ %.val52, %Cec2_ObjSimEqual.exit71 ] ; 3 uses
  %.2 = phi i32 [ %.03999, %.loopexit ], [ %.13897, %Cec2_ObjSimEqual.exit71 ] ; 2 uses
  %.1 = phi i32 [ %.03698, %.loopexit ], [ %.03999, %Cec2_ObjSimEqual.exit71 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.val44, i64 %.pre-phi
  %.039 = load i32, ptr %i.bo, align 4, !tbaa !14 ; 2 uses
  %i.bp = icmp sgt i32 %.039, 0
  br i1 %i.bp, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !143

._crit_edge.loopexit:                             ; preds = %bb.g
  %.pre117 = zext nneg i32 %.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %Cec2_ObjSimEqual.exit
  %.pre-phi118 = phi i64 [ %.pre117, %._crit_edge.loopexit ], [ %i.ac, %Cec2_ObjSimEqual.exit ]
  %.val51 = phi ptr [ %.val44, %._crit_edge.loopexit ], [ %.val45, %Cec2_ObjSimEqual.exit ] ; 2 uses
  %.138.lcssa = phi i32 [ %.2, %._crit_edge.loopexit ], [ %.03791.us, %Cec2_ObjSimEqual.exit ]
  %i.bq = sext i32 %.138.lcssa to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %.val51, i64 %i.bq
  store i32 -1, ptr %i.br, align 4, !tbaa !14
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.val51, i64 %.pre-phi118
  store i32 -1, ptr %i.bs, align 4, !tbaa !14
  br label %Cec2_ObjSimEqual.exit.thread74

Cec2_ObjSimEqual.exit.thread74:                   ; preds = %.loopexit79.us, %.lr.ph, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @Cec2_ManSimAlloc(ptr nofree noundef captures(none) initializes((840, 844)) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %Vec_WrdFreeP.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !61   ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %.thread.i

.thread.i:                                        ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.e) #23
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !61
  br label %bb.c

bb.c:                                             ; preds = %.thread.i, %bb.b
  %i.h = phi ptr [ %i.f, %.thread.i ], [ %i.b, %bb.b ]
  tail call void @free(ptr noundef nonnull %i.h) #23
  store ptr null, ptr %i.a, align 8, !tbaa !81
  br label %Vec_WrdFreeP.exit

Vec_WrdFreeP.exit:                                ; preds = %bb.a, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !81   ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %Vec_WrdFreeP.exit12, label %bb.d

bb.d:                                             ; preds = %Vec_WrdFreeP.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !61   ; 2 uses
  %.not.i10 = icmp eq ptr %i.m, null
  br i1 %.not.i10, label %bb.e, label %.thread.i11

.thread.i11:                                      ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.m) #23
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !81   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr null, ptr %i.o, align 8, !tbaa !61
  br label %bb.e

bb.e:                                             ; preds = %.thread.i11, %bb.d
  %i.p = phi ptr [ %i.n, %.thread.i11 ], [ %i.j, %bb.d ]
  tail call void @free(ptr noundef nonnull %i.p) #23
  store ptr null, ptr %i.i, align 8, !tbaa !81
  br label %Vec_WrdFreeP.exit12

Vec_WrdFreeP.exit12:                              ; preds = %Vec_WrdFreeP.exit, %bb.e
  %i.q = getelementptr i8, ptr %0, i64 24
  %.val = load i32, ptr %i.q, align 8, !tbaa !48
  %i.r = mul nsw i32 %.val, %1                    ; 4 uses
  %i.s = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24 ; 4 uses
  %i.t = add i32 %i.r, -1
  %or.cond.i.i = icmp ult i32 %i.t, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.r ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.s, align 8, !tbaa !73
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_WrdStart.exit, label %bb.f

bb.f:                                             ; preds = %Vec_WrdFreeP.exit12
  %i.u = sext i32 %spec.store.select.i.i to i64
  %i.v = shl nsw i64 %i.u, 3
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #24
  br label %Vec_WrdStart.exit

Vec_WrdStart.exit:                                ; preds = %Vec_WrdFreeP.exit12, %bb.f
  %i.x = phi ptr [ %i.w, %bb.f ], [ null, %Vec_WrdFreeP.exit12 ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.x, ptr %i.z, align 8, !tbaa !61
  store i32 %i.r, ptr %i.y, align 4, !tbaa !72
  %i.aa = sext i32 %i.r to i64
  %i.ab = shl nsw i64 %i.aa, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.x, i8 0, i64 %i.ab, i1 false)
  store ptr %i.s, ptr %i.a, align 8, !tbaa !58
  %i.ac = getelementptr i8, ptr %0, i64 64
  %.val9 = load ptr, ptr %i.ac, align 8, !tbaa !56
  %i.ad = getelementptr i8, ptr %.val9, i64 4
  %.val9.val = load i32, ptr %i.ad, align 4, !tbaa !46
  %i.ae = shl i32 %1, 2
  %i.af = mul i32 %i.ae, %.val9.val               ; 2 uses
  %i.ag = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24 ; 4 uses
  %i.ah = add i32 %i.af, -1
  %or.cond.i = icmp ult i32 %i.ah, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %i.af ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 0, ptr %i.ai, align 4, !tbaa !72
  store i32 %spec.store.select.i, ptr %i.ag, align 8, !tbaa !73
  %.not.i13 = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i13, label %Vec_WrdAlloc.exit, label %bb.g

bb.g:                                             ; preds = %Vec_WrdStart.exit
  %i.aj = sext i32 %spec.store.select.i to i64
  %i.ak = shl nsw i64 %i.aj, 3
  %i.al = tail call noalias ptr @malloc(i64 noundef %i.ak) #24
  br label %Vec_WrdAlloc.exit

Vec_WrdAlloc.exit:                                ; preds = %Vec_WrdStart.exit, %bb.g
  %i.am = phi ptr [ %i.al, %bb.g ], [ null, %Vec_WrdStart.exit ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !61
  store ptr %i.ag, ptr %i.i, align 8, !tbaa !71
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 840
  store i32 %1, ptr %i.ao, align 8, !tbaa !57
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 0, -1) i32 @Cec2_ManSimHashKey(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = shl i32 %1, 1                            ; 4 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !14
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  %i.d = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader20

.preheader20:                                     ; preds = %bb.a
  br i1 %i.d, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader20
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1) ; 2 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 5 uses
  %min.iters.check = icmp slt i32 %i.a, 8
  %i.e = add nsw i32 %smax, -17
  %i.f = icmp ult i32 %i.e, -16
  %or.cond = select i1 %min.iters.check, i1 true, i1 %i.f
  br i1 %or.cond, label %.lr.ph.preheader70, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 24           ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi41 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <4 x i32>, ptr %i.g, align 4, !tbaa !14
  %wide.load42 = load <4 x i32>, ptr %i.h, align 4, !tbaa !14
  %i.i = xor <4 x i32> %wide.load, splat (i32 -1)
  %i.j = xor <4 x i32> %wide.load42, splat (i32 -1)
  %i.k = and i64 %index, 8
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @Cec2_ManSimHashKey.s_Primes, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load43 = load <4 x i32>, ptr %i.l, align 16, !tbaa !14
  %wide.load44 = load <4 x i32>, ptr %i.m, align 16, !tbaa !14
  %i.n = mul <4 x i32> %wide.load43, %i.i
  %i.o = mul <4 x i32> %wide.load44, %i.j
  %i.p = xor <4 x i32> %i.n, %vec.phi             ; 2 uses
  %i.q = xor <4 x i32> %i.o, %vec.phi41           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !144

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <4 x i32> %i.q, %i.p
  %i.s = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader70

.lr.ph.preheader70:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.01822.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.s, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader70
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.ph
  %i.u = load i32, ptr %i.t, align 4, !tbaa !14
  %i.v = xor i32 %i.u, -1
  %i.w = and i64 %indvars.iv.ph, 8
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @Cec2_ManSimHashKey.s_Primes, i64 %i.w
  %i.y = load i32, ptr %i.x, align 16, !tbaa !14
  %i.z = mul i32 %i.y, %i.v
  %i.aa = xor i32 %i.z, %.01822.ph                ; 2 uses
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader70
  %.lcssa72.unr = phi i32 [ poison, %.lr.ph.preheader70 ], [ %i.aa, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader70 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.01822.unr = phi i32 [ %.01822.ph, %.lr.ph.preheader70 ], [ %i.aa, %.lr.ph.prol ]
  %i.ab = add nsw i64 %wide.trip.count, -1
  %i.ac = icmp eq i64 %indvars.iv.ph, %i.ab
  br i1 %i.ac, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %bb.a
  br i1 %i.d, label %.lr.ph26.preheader, label %.loopexit

.lr.ph26.preheader:                               ; preds = %.preheader
  %smax34 = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1) ; 2 uses
  %wide.trip.count35 = zext nneg i32 %smax34 to i64 ; 5 uses
  %min.iters.check47 = icmp slt i32 %i.a, 8
  %i.ad = add nsw i32 %smax34, -17
  %i.ae = icmp ult i32 %i.ad, -16
  %or.cond66 = select i1 %min.iters.check47, i1 true, i1 %i.ae
  br i1 %or.cond66, label %.lr.ph26.preheader67, label %vector.ph48

vector.ph48:                                      ; preds = %.lr.ph26.preheader
  %n.vec49 = and i64 %wide.trip.count35, 24       ; 3 uses
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph48
  %index51 = phi i64 [ 0, %vector.ph48 ], [ %index.next58, %vector.body50 ] ; 3 uses
  %vec.phi52 = phi <4 x i32> [ zeroinitializer, %vector.ph48 ], [ %i.am, %vector.body50 ]
  %vec.phi53 = phi <4 x i32> [ zeroinitializer, %vector.ph48 ], [ %i.an, %vector.body50 ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index51 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load54 = load <4 x i32>, ptr %i.af, align 4, !tbaa !14
  %wide.load55 = load <4 x i32>, ptr %i.ag, align 4, !tbaa !14
  %i.ah = and i64 %index51, 8
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @Cec2_ManSimHashKey.s_Primes, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load56 = load <4 x i32>, ptr %i.ai, align 16, !tbaa !14
  %wide.load57 = load <4 x i32>, ptr %i.aj, align 16, !tbaa !14
  %i.ak = mul <4 x i32> %wide.load56, %wide.load54
  %i.al = mul <4 x i32> %wide.load57, %wide.load55
  %i.am = xor <4 x i32> %i.ak, %vec.phi52         ; 2 uses
  %i.an = xor <4 x i32> %i.al, %vec.phi53         ; 2 uses
  %index.next58 = add nuw i64 %index51, 8         ; 2 uses
  %i.ao = icmp eq i64 %index.next58, %n.vec49
  br i1 %i.ao, label %middle.block59, label %vector.body50, !llvm.loop !145

middle.block59:                                   ; preds = %vector.body50
  %bin.rdx60 = xor <4 x i32> %i.an, %i.am
  %i.ap = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx60) ; 2 uses
  %cmp.n61 = icmp eq i64 %n.vec49, %wide.trip.count35
  br i1 %cmp.n61, label %.loopexit, label %.lr.ph26.preheader67

.lr.ph26.preheader67:                             ; preds = %.lr.ph26.preheader, %middle.block59
  %indvars.iv31.ph = phi i64 [ 0, %.lr.ph26.preheader ], [ %n.vec49, %middle.block59 ] ; 3 uses
  %.11924.ph = phi i32 [ 0, %.lr.ph26.preheader ], [ %i.ap, %middle.block59 ] ; 2 uses
  %xtraiter75 = and i64 %wide.trip.count35, 3     ; 2 uses
  %lcmp.mod76.not = icmp eq i64 %xtraiter75, 0
  br i1 %lcmp.mod76.not, label %.lr.ph26.prol.loopexit, label %.lr.ph26.prol

.lr.ph26.prol:                                    ; preds = %.lr.ph26.preheader67, %.lr.ph26.prol
  %indvars.iv31.prol = phi i64 [ %indvars.iv.next32.prol, %.lr.ph26.prol ], [ %indvars.iv31.ph, %.lr.ph26.preheader67 ] ; 3 uses
  %.11924.prol = phi i32 [ %i.aw, %.lr.ph26.prol ], [ %.11924.ph, %.lr.ph26.preheader67 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph26.prol ], [ 0, %.lr.ph26.preheader67 ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv31.prol
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !14
  %i.as = and i64 %indvars.iv31.prol, 15
  %i.at = getelementptr inbounds nuw [4 x i8], ptr @Cec2_ManSimHashKey.s_Primes, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !14
  %i.av = mul i32 %i.au, %i.ar
  %i.aw = xor i32 %i.av, %.11924.prol             ; 3 uses
  %indvars.iv.next32.prol = add nuw nsw i64 %indvars.iv31.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter75
  br i1 %prol.iter.cmp.not, label %.lr.ph26.prol.loopexit, label %.lr.ph26.prol, !llvm.loop !146

.lr.ph26.prol.loopexit:                           ; preds = %.lr.ph26.prol, %.lr.ph26.preheader67
  %.lcssa.unr = phi i32 [ poison, %.lr.ph26.preheader67 ], [ %i.aw, %.lr.ph26.prol ]
  %indvars.iv31.unr = phi i64 [ %indvars.iv31.ph, %.lr.ph26.preheader67 ], [ %indvars.iv.next32.prol, %.lr.ph26.prol ]
  %.11924.unr = phi i32 [ %.11924.ph, %.lr.ph26.preheader67 ], [ %i.aw, %.lr.ph26.prol ]
  %i.ax = sub nsw i64 %indvars.iv31.ph, %wide.trip.count35
  %i.ay = icmp ugt i64 %i.ax, -4
  br i1 %i.ay, label %.loopexit, label %.lr.ph26

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.01822 = phi i32 [ %i.bo, %.lr.ph ], [ %.01822.unr, %.lr.ph.prol.loopexit ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !14
  %i.bb = xor i32 %i.ba, -1
  %i.bc = and i64 %indvars.iv, 15
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr @Cec2_ManSimHashKey.s_Primes, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !14
  %i.bf = mul i32 %i.be, %i.bb
  %i.bg = xor i32 %i.bf, %.01822
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !14
  %i.bj = xor i32 %i.bi, -1
  %i.bk = and i64 %indvars.iv.next, 15
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr @Cec2_ManSimHashKey.s_Primes, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !14
  %i.bn = mul i32 %i.bm, %i.bj
  %i.bo = xor i32 %i.bn, %i.bg                    ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !147

.lr.ph26:                                         ; preds = %.lr.ph26.prol.loopexit, %.lr.ph26
  %indvars.iv31 = phi i64 [ %indvars.iv.next32.3, %.lr.ph26 ], [ %indvars.iv31.unr, %.lr.ph26.prol.loopexit ] ; 6 uses
  %.11924 = phi i32 [ %i.cq, %.lr.ph26 ], [ %.11924.unr, %.lr.ph26.prol.loopexit ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv31
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !14
  %i.br = and i64 %indvars.iv31, 15
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr @Cec2_ManSimHashKey.s_Primes, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !14
  %i.bu = mul i32 %i.bt, %i.bq
  %i.bv = xor i32 %i.bu, %.11924
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next32
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !14
  %i.by = and i64 %indvars.iv.next32, 15
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr @Cec2_ManSimHashKey.s_Primes, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !14
  %i.cb = mul i32 %i.ca, %i.bx
  %i.cc = xor i32 %i.cb, %i.bv
  %indvars.iv.next32.1 = add nuw nsw i64 %indvars.iv31, 2 ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next32.1
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !14
  %i.cf = and i64 %indvars.iv.next32.1, 15
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr @Cec2_ManSimHashKey.s_Primes, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !14
  %i.ci = mul i32 %i.ch, %i.ce
  %i.cj = xor i32 %i.ci, %i.cc
  %indvars.iv.next32.2 = add nuw nsw i64 %indvars.iv31, 3 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next32.2
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !14
  %i.cm = and i64 %indvars.iv.next32.2, 15
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr @Cec2_ManSimHashKey.s_Primes, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !14
  %i.cp = mul i32 %i.co, %i.cl
  %i.cq = xor i32 %i.cp, %i.cj                    ; 2 uses
  %indvars.iv.next32.3 = add nuw nsw i64 %indvars.iv31, 4 ; 2 uses
  %exitcond36.not.3 = icmp eq i64 %indvars.iv.next32.3, %wide.trip.count35
  br i1 %exitcond36.not.3, label %.loopexit, label %.lr.ph26, !llvm.loop !148

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph26.prol.loopexit, %.lr.ph26, %middle.block, %middle.block59, %.preheader20, %.preheader
  %.2 = phi i32 [ %i.cq, %.lr.ph26 ], [ 0, %.preheader ], [ 0, %.preheader20 ], [ %i.ap, %middle.block59 ], [ %i.s, %middle.block ], [ %.lcssa.unr, %.lr.ph26.prol.loopexit ], [ %.lcssa72.unr, %.lr.ph.prol.loopexit ], [ %i.bo, %.lr.ph ]
  %i.cr = urem i32 %.2, %2
  ret i32 %i.cr
}

; Function Attrs: nounwind uwtable
define void @Cec2_ManCreateClasses(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.d) #23
  store ptr null, ptr %i.c, align 8, !tbaa !78
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !79   ; 2 uses
  %.not65 = icmp eq ptr %i.f, null
  br i1 %.not65, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.f) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.g = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %.val75 = load i32, ptr %i.g, align 8, !tbaa !48 ; 4 uses
  %i.h = sext i32 %.val75 to i64                  ; 2 uses
  %i.i = tail call noalias ptr @calloc(i64 noundef %i.h, i64 noundef 4) #26
  store ptr %i.i, ptr %i.c, align 8, !tbaa !78
  %i.j = shl nsw i64 %i.h, 2                      ; 2 uses
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.k, i8 -1, i64 %i.j, i1 false)
  store ptr %i.k, ptr %i.e, align 8, !tbaa !79
  %i.l = add i32 %.val75, -1
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.backedge, %bb.e
  %.012.i = phi i32 [ %i.l, %bb.e ], [ %i.m, %.critedge.i.backedge ] ; 2 uses
  %i.m = add i32 %.012.i, 1                       ; 6 uses
  %i.n = and i32 %.012.i, 1
  %.not.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.not.i, label %.preheader.i, label %.critedge.i.backedge

.critedge.i.backedge:                             ; preds = %.lr.ph.i, %.critedge.i
  br label %.critedge.i

.preheader.i:                                     ; preds = %.critedge.i
  %.not15.i = icmp ult i32 %i.m, 9
  br i1 %.not15.i, label %Abc_PrimeCudd.exit, label %.lr.ph.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.o = add nuw nsw i32 %.01116.i, 2             ; 3 uses
  %i.p = mul nuw nsw i32 %i.o, %i.o
  %.not.i = icmp ugt i32 %i.p, %i.m
  br i1 %.not.i, label %Abc_PrimeCudd.exit, label %.lr.ph.i, !llvm.loop !149

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.f
  %.01116.i = phi i32 [ %i.o, %bb.f ], [ 3, %.preheader.i ] ; 2 uses
  %i.q = urem i32 %i.m, %.01116.i
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.critedge.i.backedge, label %bb.f

Abc_PrimeCudd.exit:                               ; preds = %.preheader.i, %bb.f
  %i.s = zext nneg i32 %i.m to i64
  %i.t = shl nuw nsw i64 %i.s, 2                  ; 2 uses
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.u, i8 -1, i64 %i.t, i1 false)
  %i.v = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.w = icmp sgt i32 %.val75, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Abc_PrimeCudd.exit
  %i.x = getelementptr i8, ptr %0, i64 856
  %i.y = shl i32 %i.b, 1                          ; 3 uses
  %i.z = icmp sgt i32 %i.b, 0                     ; 2 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.y, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 11 uses
  %.val140 = load ptr, ptr %i.v, align 8, !tbaa !36 ; 2 uses
  %.not66141 = icmp eq ptr %.val140, null
  br i1 %.not66141, label %.critedge, label %.lr.ph144.a

.lr.ph144.a:                                      ; preds = %.lr.ph
  %4 = add nsw i64 %wide.trip.count.i, -1         ; 2 uses
  %min.iters.check153 = icmp slt i32 %i.y, 8
  %5 = icmp ugt i64 %4, 15
  %or.cond = select i1 %min.iters.check153, i1 true, i1 %5
  %n.vec155 = and i64 %wide.trip.count.i, 24      ; 3 uses
  %cmp.n167 = icmp eq i64 %n.vec155, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.aa = add nsw i64 %wide.trip.count.i, -1
  %min.iters.check = icmp slt i32 %i.y, 8
  %6 = icmp ugt i64 %4, 15
  %or.cond170 = select i1 %min.iters.check, i1 true, i1 %6
  %n.vec = and i64 %wide.trip.count.i, 24         ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter184 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod185.not = icmp eq i64 %xtraiter184, 0
  br label %bb.h

bb.g:                                             ; preds = %bb.l
  %.val = load ptr, ptr %i.v, align 8, !tbaa !36  ; 2 uses
  %.not66 = icmp eq ptr %.val, null
  br i1 %.not66, label %.critedge, label %bb.h, !llvm.loop !150

bb.h:                                             ; preds = %.lr.ph144.a, %bb.g
  %.val143 = phi ptr [ %.val140, %.lr.ph144.a ], [ %.val, %bb.g ]
  %indvars.iv142 = phi i64 [ 0, %.lr.ph144.a ], [ %indvars.iv.next, %bb.g ] ; 5 uses
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %.val143, i64 %indvars.iv142
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !78
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv142 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = or i32 %i.ae, 268435455
  store i32 %i.af, ptr %i.ad, align 4
  %.val83 = load i64, ptr %i.ab, align 4          ; 2 uses
  %i.ag = and i64 %.val83, 2147483648
  %.not.i84 = icmp eq i64 %i.ag, 0
  %i.ah = and i64 %.val83, 536870911
  %i.ai = icmp eq i64 %i.ah, 536870911
  %narrow.i.not = or i1 %.not.i84, %i.ai
  br i1 %narrow.i.not, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %.val76 = load i32, ptr %i.a, align 8, !tbaa !57
  %.val77 = load ptr, ptr %i.x, align 8, !tbaa !58
  %i.aj = getelementptr i8, ptr %.val77, i64 8
  %.val77.val = load ptr, ptr %i.aj, align 8, !tbaa !61
  %i.ak = trunc nuw nsw i64 %indvars.iv142 to i32 ; 2 uses
  %i.al = mul nsw i32 %.val76, %i.ak
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %.val77.val, i64 %i.am ; 11 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !14
  %i.ap = and i32 %i.ao, 1
  %.not.i85 = icmp eq i32 %i.ap, 0
  br i1 %.not.i85, label %.preheader.i87, label %.preheader20.i

.preheader20.i:                                   ; preds = %bb.i
  br i1 %i.z, label %.lr.ph.i86.preheader, label %Cec2_ManSimHashKey.exit

.lr.ph.i86.preheader:                             ; preds = %.preheader20.i
  br i1 %or.cond, label %.lr.ph.i86.preheader172, label %vector.body156

vector.body156:                                   ; preds = %.lr.ph.i86.preheader, %vector.body156
  %index157 = phi i64 [ %index.next164, %vector.body156 ], [ 0, %.lr.ph.i86.preheader ] ; 3 uses
  %vec.phi158 = phi <4 x i32> [ %i.az, %vector.body156 ], [ zeroinitializer, %.lr.ph.i86.preheader ]
  %vec.phi159 = phi <4 x i32> [ %i.ba, %vector.body156 ], [ zeroinitializer, %.lr.ph.i86.preheader ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index157 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load160 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !14
  %wide.load161 = load <4 x i32>, ptr %i.ar, align 4, !tbaa !14
  %i.as = xor <4 x i32> %wide.load160, splat (i32 -1)
  %i.at = xor <4 x i32> %wide.load161, splat (i32 -1)
  %i.au = and i64 %index157, 8
  %i.av = getelementptr inbounds nuw [4 x i8], ptr @Cec2_ManSimHashKey.s_Primes, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load162 = load <4 x i32>, ptr %i.av, align 16, !tbaa !14
  %wide.load163 = load <4 x i32>, ptr %i.aw, align 16, !tbaa !14
  %i.ax = mul <4 x i32> %wide.load162, %i.as
  %i.ay = mul <4 x i32> %wide.load163, %i.at
  %i.az = xor <4 x i32> %i.ax, %vec.phi158        ; 2 uses
  %i.ba = xor <4 x i32> %i.ay, %vec.phi159        ; 2 uses
  %index.next164 = add nuw i64 %index157, 8       ; 2 uses
  %i.bb = icmp eq i64 %index.next164, %n.vec155
  br i1 %i.bb, label %middle.block165, label %vector.body156, !llvm.loop !151

middle.block165:                                  ; preds = %vector.body156
  %bin.rdx166 = xor <4 x i32> %i.ba, %i.az
  %i.bc = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx166) ; 2 uses
  br i1 %cmp.n167, label %Cec2_ManSimHashKey.exit, label %.lr.ph.i86.preheader172

.lr.ph.i86.preheader172:                          ; preds = %.lr.ph.i86.preheader, %middle.block165
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i86.preheader ], [ %n.vec155, %middle.block165 ] ; 5 uses
  %.01822.i.ph = phi i32 [ 0, %.lr.ph.i86.preheader ], [ %i.bc, %middle.block165 ] ; 2 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i86.prol.loopexit, label %.lr.ph.i86.prol

.lr.ph.i86.prol:                                  ; preds = %.lr.ph.i86.preheader172
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i.ph
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !14
  %i.bf = xor i32 %i.be, -1
  %i.bg = and i64 %indvars.iv.i.ph, 8
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr @Cec2_ManSimHashKey.s_Primes, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 16, !tbaa !14
  %i.bj = mul i32 %i.bi, %i.bf
  %i.bk = xor i32 %i.bj, %.01822.i.ph             ; 2 uses
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i86.prol.loopexit

.lr.ph.i86.prol.loopexit:                         ; preds = %.lr.ph.i86.prol, %.lr.ph.i86.preheader172
  %.lcssa175.unr = phi i32 [ poison, %.lr.ph.i86.preheader172 ], [ %i.bk, %.lr.ph.i86.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i86.preheader172 ], [ %indvars.iv.next.i.prol, %.lr.ph.i86.prol ]
  %.01822.i.unr = phi i32 [ %.01822.i.ph, %.lr.ph.i86.preheader172 ], [ %i.bk, %.lr.ph.i86.prol ]
  %i.bl = icmp eq i64 %indvars.iv.i.ph, %i.aa
  br i1 %i.bl, label %Cec2_ManSimHashKey.exit, label %.lr.ph.i86

.preheader.i87:                                   ; preds = %bb.i
  br i1 %i.z, label %.lr.ph26.i.preheader, label %Cec2_ManSimHashKey.exit

.lr.ph26.i.preheader:                             ; preds = %.preheader.i87
  br i1 %or.cond170, label %.lr.ph26.i.preheader171, label %vector.body

vector.body:                                      ; preds = %.lr.ph26.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph26.i.preheader ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.bt, %vector.body ], [ zeroinitializer, %.lr.ph26.i.preheader ]
  %vec.phi147 = phi <4 x i32> [ %i.bu, %vector.body ], [ zeroinitializer, %.lr.ph26.i.preheader ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load = load <4 x i32>, ptr %i.bm, align 4, !tbaa !14
  %wide.load148 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !14
  %i.bo = and i64 %index, 8
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr @Cec2_ManSimHashKey.s_Primes, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load149 = load <4 x i32>, ptr %i.bp, align 16, !tbaa !14
  %wide.load150 = load <4 x i32>, ptr %i.bq, align 16, !tbaa !14
  %i.br = mul <4 x i32> %wide.load149, %wide.load
  %i.bs = mul <4 x i32> %wide.load150, %wide.load148
  %i.bt = xor <4 x i32> %i.br, %vec.phi           ; 2 uses
  %i.bu = xor <4 x i32> %i.bs, %vec.phi147        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !152

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <4 x i32> %i.bu, %i.bt
  %i.bw = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %Cec2_ManSimHashKey.exit, label %.lr.ph26.i.preheader171

.lr.ph26.i.preheader171:                          ; preds = %.lr.ph26.i.preheader, %middle.block
  %indvars.iv31.i.ph = phi i64 [ 0, %.lr.ph26.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.11924.i.ph = phi i32 [ 0, %.lr.ph26.i.preheader ], [ %i.bw, %middle.block ] ; 2 uses
  br i1 %lcmp.mod185.not, label %.lr.ph26.i.prol.loopexit, label %.lr.ph26.i.prol

.lr.ph26.i.prol:                                  ; preds = %.lr.ph26.i.preheader171, %.lr.ph26.i.prol
  %indvars.iv31.i.prol = phi i64 [ %indvars.iv.next32.i.prol, %.lr.ph26.i.prol ], [ %indvars.iv31.i.ph, %.lr.ph26.i.preheader171 ] ; 3 uses
  %.11924.i.prol = phi i32 [ %i.cd, %.lr.ph26.i.prol ], [ %.11924.i.ph, %.lr.ph26.i.preheader171 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph26.i.prol ], [ 0, %.lr.ph26.i.preheader171 ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv31.i.prol
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !14
  %i.bz = and i64 %indvars.iv31.i.prol, 15
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr @Cec2_ManSimHashKey.s_Primes, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !14
  %i.cc = mul i32 %i.cb, %i.by
  %i.cd = xor i32 %i.cc, %.11924.i.prol           ; 3 uses
  %indvars.iv.next32.i.prol = add nuw nsw i64 %indvars.iv31.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter184
  br i1 %prol.iter.cmp.not, label %.lr.ph26.i.prol.loopexit, label %.lr.ph26.i.prol, !llvm.loop !153

.lr.ph26.i.prol.loopexit:                         ; preds = %.lr.ph26.i.prol, %.lr.ph26.i.preheader171
  %.lcssa178.unr = phi i32 [ poison, %.lr.ph26.i.preheader171 ], [ %i.cd, %.lr.ph26.i.prol ]
  %indvars.iv31.i.unr = phi i64 [ %indvars.iv31.i.ph, %.lr.ph26.i.preheader171 ], [ %indvars.iv.next32.i.prol, %.lr.ph26.i.prol ]
  %.11924.i.unr = phi i32 [ %.11924.i.ph, %.lr.ph26.i.preheader171 ], [ %i.cd, %.lr.ph26.i.prol ]
  %i.ce = sub nsw i64 %indvars.iv31.i.ph, %wide.trip.count.i
  %i.cf = icmp ugt i64 %i.ce, -4
  br i1 %i.cf, label %Cec2_ManSimHashKey.exit, label %.lr.ph26.i

.lr.ph.i86:                                       ; preds = %.lr.ph.i86.prol.loopexit, %.lr.ph.i86
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i86 ], [ %indvars.iv.i.unr, %.lr.ph.i86.prol.loopexit ] ; 4 uses
  %.01822.i = phi i32 [ %i.cv, %.lr.ph.i86 ], [ %.01822.i.unr, %.lr.ph.i86.prol.loopexit ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !14
  %i.ci = xor i32 %i.ch, -1
  %i.cj = and i64 %indvars.iv.i, 15
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr @Cec2_ManSimHashKey.s_Primes, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !14
  %i.cm = mul i32 %i.cl, %i.ci
  %i.cn = xor i32 %i.cm, %.01822.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next.i
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !14
  %i.cq = xor i32 %i.cp, -1
  %i.cr = and i64 %indvars.iv.next.i, 15
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr @Cec2_ManSimHashKey.s_Primes, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !14
  %i.cu = mul i32 %i.ct, %i.cq
  %i.cv = xor i32 %i.cu, %i.cn                    ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %Cec2_ManSimHashKey.exit, label %.lr.ph.i86, !llvm.loop !154

.lr.ph26.i:                                       ; preds = %.lr.ph26.i.prol.loopexit, %.lr.ph26.i
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i.3, %.lr.ph26.i ], [ %indvars.iv31.i.unr, %.lr.ph26.i.prol.loopexit ] ; 6 uses
  %.11924.i = phi i32 [ %i.dx, %.lr.ph26.i ], [ %.11924.i.unr, %.lr.ph26.i.prol.loopexit ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv31.i
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !14
  %i.cy = and i64 %indvars.iv31.i, 15
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr @Cec2_ManSimHashKey.s_Primes, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !14
  %i.db = mul i32 %i.da, %i.cx
  %i.dc = xor i32 %i.db, %.11924.i
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1 ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next32.i
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !14
  %i.df = and i64 %indvars.iv.next32.i, 15
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr @Cec2_ManSimHashKey.s_Primes, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !14
  %i.di = mul i32 %i.dh, %i.de
  %i.dj = xor i32 %i.di, %i.dc
  %indvars.iv.next32.i.1 = add nuw nsw i64 %indvars.iv31.i, 2 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next32.i.1
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !14
  %i.dm = and i64 %indvars.iv.next32.i.1, 15
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr @Cec2_ManSimHashKey.s_Primes, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !14
  %i.dp = mul i32 %i.do, %i.dl
  %i.dq = xor i32 %i.dp, %i.dj
  %indvars.iv.next32.i.2 = add nuw nsw i64 %indvars.iv31.i, 3 ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next32.i.2
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !14
end_hunk_0
