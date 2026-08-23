Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaBalAig?download=true
inline.NumInlined: 639
inline.NumDeleted: 118
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Dam_ManCreateMultiRefs:bb.a

bb.c:                                             ; preds = %Vec_IntAlloc.exit.i48
  %i.v = sext i32 %.val41 to i64
  %i.w = shl nsw i64 %i.v, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.t, i8 0, i64 %i.w, i1 false)
  br label %Vec_IntStart.exit51

Vec_IntStart.exit51:                              ; preds = %Vec_IntAlloc.exit.thread.i50, %Vec_IntAlloc.exit.i48, %bb.c
  %.val44 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i50 ], [ null, %Vec_IntAlloc.exit.i48 ], [ %i.t, %bb.c ]
  %i.x = icmp sgt i32 %.val41, 0
  br i1 %i.x, label %.lr.ph72, label %.critedge

.lr.ph72:                                         ; preds = %Vec_IntStart.exit51
  %i.y = getelementptr i8, ptr %i.a, i64 32
  %.val39 = load ptr, ptr %i.y, align 8, !tbaa !18 ; 2 uses
  %.not = icmp eq ptr %.val39, null
  %i.z = getelementptr i8, ptr %0, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = getelementptr i8, ptr %i.a, i64 40
  br i1 %.not, label %.critedge, label %.lr.ph72.split.preheader

.lr.ph72.split.preheader:                         ; preds = %.lr.ph72
  %i.ac = zext nneg i32 %.val41 to i64
  br label %.lr.ph72.split

.lr.ph72.split:                                   ; preds = %.lr.ph72.split.preheader, %Dam_ObjHand.exit.thread
  %indvars.iv80 = phi i64 [ 0, %.lr.ph72.split.preheader ], [ %indvars.iv.next81, %Dam_ObjHand.exit.thread ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %.val39, i64 %indvars.iv80
  %.val = load i64, ptr %i.ad, align 4            ; 4 uses
  %i.ae = and i64 %.val, 2147483648
  %.not.i52 = icmp ne i64 %i.ae, 0
  %i.af = and i64 %.val, 536870911
  %i.ag = icmp eq i64 %i.af, 536870911
  %narrow.i.not = or i1 %.not.i52, %i.ag
  br i1 %narrow.i.not, label %Dam_ObjHand.exit.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph72.split
  %.val42 = load ptr, ptr %i.z, align 8, !tbaa !99 ; 2 uses
  %i.ah = getelementptr i8, ptr %.val42, i64 4
  %.val.i = load i32, ptr %i.ah, align 4, !tbaa !8
  %i.ai = sext i32 %.val.i to i64
  %i.aj = icmp slt i64 %indvars.iv80, %i.ai
  br i1 %i.aj, label %Dam_ObjHand.exit, label %Dam_ObjHand.exit.thread

Dam_ObjHand.exit:                                 ; preds = %bb.d
  %i.ak = getelementptr i8, ptr %.val42, i64 8
  %.val3.i = load ptr, ptr %i.ak, align 8, !tbaa !12
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.val3.i, i64 %indvars.iv80
  %i.am = load i32, ptr %i.al, align 4, !tbaa !13 ; 2 uses
  %.not33 = icmp eq i32 %i.am, 0
  br i1 %.not33, label %Dam_ObjHand.exit.thread, label %Dam_ObjSet.exit

Dam_ObjSet.exit:                                  ; preds = %Dam_ObjHand.exit
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !101
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %.val.i53 = load ptr, ptr %i.ao, align 8, !tbaa !12
  %i.ap = sext i32 %i.am to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %.val.i53, i64 %i.ap ; 6 uses
  %i.ar = trunc i64 %.val to i32
  %i.as = and i32 %i.ar, 536870911                ; 2 uses
  %i.at = lshr i64 %.val, 32
  %i.au = trunc nuw i64 %i.at to i32
  %i.av = and i32 %i.au, 536870911                ; 2 uses
  %.not63 = icmp samesign ult i32 %i.as, %i.av
  br i1 %.not63, label %.preheader, label %bb.e

.preheader:                                       ; preds = %Dam_ObjSet.exit
  %i.aw = load i32, ptr %i.aq, align 4, !tbaa !13
  %.not3768 = icmp slt i32 %i.aw, 1
  br i1 %.not3768, label %Dam_ObjHand.exit.thread, label %.lr.ph70

.lr.ph70:                                         ; preds = %.preheader, %.lr.ph70
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %.lr.ph70 ], [ 1, %.preheader ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv77
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !13
  %i.az = ashr i32 %i.ay, 1
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %.val44, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !13
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !13
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  %i.be = load i32, ptr %i.aq, align 4, !tbaa !13
  %i.bf = sext i32 %i.be to i64
  %.not37.not = icmp slt i64 %indvars.iv77, %i.bf
  br i1 %.not37.not, label %.lr.ph70, label %Dam_ObjHand.exit.thread, !llvm.loop !106

bb.e:                                             ; preds = %Dam_ObjSet.exit
  %i.bg = icmp samesign ugt i32 %i.as, %i.av
  br i1 %i.bg, label %bb.f, label %Dam_ObjHand.exit.thread

bb.f:                                             ; preds = %bb.e
  %.val7.i = load ptr, ptr %i.ab, align 8, !tbaa !39 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val7.i, null
  br i1 %.not.i.i.i, label %.critedge64.preheader, label %Gia_ObjIsAndReal.exit

Gia_ObjIsAndReal.exit:                            ; preds = %bb.f
  %sext.i.i = shl nuw nsw i64 %indvars.iv80, 2
  %i.bh = getelementptr inbounds nuw i8, ptr %.val7.i, i64 %sext.i.i
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !13
  %.not74 = icmp eq i32 %i.bi, 0
  br i1 %.not74, label %.critedge64.preheader, label %Dam_ObjHand.exit.thread

.critedge64.preheader:                            ; preds = %Gia_ObjIsAndReal.exit, %bb.f
  %i.bj = load i32, ptr %i.aq, align 4, !tbaa !13
  %.not3666 = icmp slt i32 %i.bj, 1
  br i1 %.not3666, label %Dam_ObjHand.exit.thread, label %.critedge64

.critedge64:                                      ; preds = %.critedge64.preheader, %.critedge64
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge64 ], [ 1, %.critedge64.preheader ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !13
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %.val43, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !13
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.bq = load i32, ptr %i.aq, align 4, !tbaa !13
  %i.br = sext i32 %i.bq to i64
  %.not36.not = icmp slt i64 %indvars.iv, %i.br
  br i1 %.not36.not, label %.critedge64, label %Dam_ObjHand.exit.thread, !llvm.loop !107

Dam_ObjHand.exit.thread:                          ; preds = %.critedge64, %.lr.ph70, %.critedge64.preheader, %.preheader, %bb.e, %bb.d, %.lr.ph72.split, %Gia_ObjIsAndReal.exit, %Dam_ObjHand.exit
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %i.bs = icmp samesign ult i64 %indvars.iv.next81, %i.ac
  br i1 %i.bs, label %.lr.ph72.split, label %.critedge, !llvm.loop !108

.critedge:                                        ; preds = %Dam_ObjHand.exit.thread, %.lr.ph72, %Vec_IntStart.exit51
  store ptr %i.d, ptr %1, align 8, !tbaa !87
  store ptr %i.n, ptr %2, align 8, !tbaa !87
  ret void
}

; Function Attrs: nounwind uwtable
define void @Dam_ManCreatePairs(ptr noundef initializes((8, 16), (24, 32)) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  tail call void @Dam_ManCollectSets(ptr noundef %0)
  %i.c = load ptr, ptr %0, align 8, !tbaa !86     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 984
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38   ; 6 uses
  %i.f = getelementptr i8, ptr %i.c, i64 24
  %.val252 = load i32, ptr %i.f, align 8, !tbaa !57 ; 3 uses
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 7 uses
  %i.h = add i32 %.val252, -1
  %or.cond.i = icmp ult i32 %i.h, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %.val252 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 5 uses
  store i32 0, ptr %i.i, align 4, !tbaa !8
  store i32 %spec.store.select.i, ptr %i.g, align 8, !tbaa !16
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = sext i32 %spec.store.select.i to i64
  %i.k = shl nsw i64 %i.j, 2
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #28
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a, %bb.b
  %i.m = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !12
  %i.o = sdiv i32 %.val252, 2
  %i.p = tail call fastcc ptr @Hash_IntManStart(i32 noundef %i.o) ; 6 uses
  %i.q = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 3 uses
  store i32 1000, ptr %i.q, align 8, !tbaa !16
  %calloc = tail call dereferenceable_or_null(4000) ptr @calloc(i64 1, i64 4000)
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 6 uses
  store ptr %calloc, ptr %i.s, align 8, !tbaa !12
  store i32 1000, ptr %i.r, align 4, !tbaa !8
  call void @Dam_ManCreateMultiRefs(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.t = load ptr, ptr %0, align 8, !tbaa !86     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !57
  %i.w = icmp sgt i32 %i.v, 0
  %.pre503 = load ptr, ptr %i.a, align 8          ; 3 uses
  br i1 %i.w, label %.lr.ph444, label %.critedge

.lr.ph444:                                        ; preds = %Vec_IntAlloc.exit
  %i.x = getelementptr i8, ptr %0, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 10 uses
  %i.aa = getelementptr i8, ptr %.pre503, i64 8
  %i.ab = getelementptr i8, ptr %i.e, i64 8       ; 10 uses
  %i.ac = load ptr, ptr %i.b, align 8
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph444, %.critedge2
  %i.ag = phi ptr [ %i.m, %.lr.ph444 ], [ %i.ij, %.critedge2 ] ; 6 uses
  %i.ah = phi ptr [ %i.m, %.lr.ph444 ], [ %i.ik, %.critedge2 ] ; 6 uses
  %i.ai = phi ptr [ %i.m, %.lr.ph444 ], [ %i.il, %.critedge2 ] ; 8 uses
  %indvars.iv478 = phi i64 [ 0, %.lr.ph444 ], [ %indvars.iv.next479, %.critedge2 ] ; 7 uses
  %i.aj = phi ptr [ %i.t, %.lr.ph444 ], [ %i.im, %.critedge2 ] ; 2 uses
  %.0443 = phi i32 [ 0, %.lr.ph444 ], [ %.4, %.critedge2 ] ; 7 uses
  %.0186442 = phi i32 [ 0, %.lr.ph444 ], [ %.4190, %.critedge2 ] ; 7 uses
  %.0196441 = phi i32 [ 0, %.lr.ph444 ], [ %.1197, %.critedge2 ] ; 6 uses
  %.0198440 = phi i32 [ 0, %.lr.ph444 ], [ %.1199, %.critedge2 ] ; 5 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 32
  %.val249 = load ptr, ptr %i.ak, align 8, !tbaa !18 ; 2 uses
  %i.al = getelementptr inbounds nuw [12 x i8], ptr %.val249, i64 %indvars.iv478 ; 4 uses
  %.not = icmp eq ptr %.val249, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val245 = load i64, ptr %i.al, align 4         ; 2 uses
  %i.am = and i64 %.val245, 2147483648
  %.not.i258 = icmp ne i64 %i.am, 0
  %i.an = and i64 %.val245, 536870911
  %i.ao = icmp eq i64 %i.an, 536870911
  %narrow.i.not = or i1 %.not.i258, %i.ao
  br i1 %narrow.i.not, label %.critedge2, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val253 = load ptr, ptr %i.x, align 8, !tbaa !99 ; 2 uses
  %i.ap = getelementptr i8, ptr %.val253, i64 4
  %.val.i = load i32, ptr %i.ap, align 4, !tbaa !8
  %i.aq = sext i32 %.val.i to i64
  %i.ar = icmp slt i64 %indvars.iv478, %i.aq
  br i1 %i.ar, label %Dam_ObjHand.exit, label %.critedge2

Dam_ObjHand.exit:                                 ; preds = %bb.e
  %i.as = getelementptr i8, ptr %.val253, i64 8
  %.val3.i = load ptr, ptr %i.as, align 8, !tbaa !12
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.val3.i, i64 %indvars.iv478
  %i.au = load i32, ptr %i.at, align 4, !tbaa !13 ; 2 uses
  %.not220 = icmp eq i32 %i.au, 0
  br i1 %.not220, label %.critedge2, label %Dam_ObjHand.exit.i

Dam_ObjHand.exit.i:                               ; preds = %Dam_ObjHand.exit
  %i.av = load ptr, ptr %i.y, align 8, !tbaa !101
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %.val.i259 = load ptr, ptr %i.aw, align 8, !tbaa !12
  %i.ax = sext i32 %i.au to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %.val.i259, i64 %i.ax ; 7 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !13 ; 2 uses
  %i.ba = add nsw i32 %i.az, -1
  %i.bb = mul nsw i32 %i.ba, %i.az
  %i.bc = sdiv i32 %i.bb, 2
  %i.bd = add nsw i32 %i.bc, %.0198440            ; 4 uses
  store i32 0, ptr %i.z, align 4, !tbaa !8
  %.val248 = load i64, ptr %i.al, align 4         ; 4 uses
  %i.be = and i64 %.val248, 2147483648
  %.not.i.i = icmp ne i64 %i.be, 0
  %i.bf = and i64 %.val248, 536870911
  %i.bg = icmp eq i64 %i.bf, 536870911
  %narrow.i.not.i = or i1 %.not.i.i, %i.bg
  br i1 %narrow.i.not.i, label %Gia_ObjIsAndReal.exit.thread, label %Gia_ObjIsXor.exit

Gia_ObjIsXor.exit:                                ; preds = %Dam_ObjHand.exit.i
  %i.bh = trunc i64 %.val248 to i32
  %i.bi = and i32 %i.bh, 536870911                ; 2 uses
  %i.bj = lshr i64 %.val248, 32
  %i.bk = trunc nuw i64 %i.bj to i32
  %i.bl = and i32 %i.bk, 536870911                ; 2 uses
  %.not416 = icmp samesign ult i32 %i.bi, %i.bl
  br i1 %.not416, label %.preheader, label %bb.p

.preheader:                                       ; preds = %Gia_ObjIsXor.exit
  %i.bm = load i32, ptr %i.ay, align 4, !tbaa !13 ; 2 uses
  %.not224423 = icmp slt i32 %i.bm, 1
  br i1 %.not224423, label %Gia_ObjIsAndReal.exit.thread, label %.lr.ph425

.lr.ph425:                                        ; preds = %.preheader, %bb.o
  %i.bn = phi i32 [ %i.co, %bb.o ], [ %i.bm, %.preheader ]
  %indvars.iv467 = phi i64 [ %indvars.iv.next468, %bb.o ], [ 1, %.preheader ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv467
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !13 ; 2 uses
  %i.bq = ashr i32 %i.bp, 1
  %.val243 = load ptr, ptr %i.ad, align 8, !tbaa !12
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %.val243, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !13
  %i.bu = icmp sgt i32 %i.bt, 1
  br i1 %i.bu, label %bb.f, label %bb.o

bb.f:                                             ; preds = %.lr.ph425
  %i.bv = load i32, ptr %i.z, align 4, !tbaa !8   ; 7 uses
  %i.bw = load i32, ptr %i.e, align 8, !tbaa !16
  %i.bx = icmp eq i32 %i.bv, %i.bw
  br i1 %i.bx, label %bb.g, label %.Vec_IntPush.exit_crit_edge

.Vec_IntPush.exit_crit_edge:                      ; preds = %bb.f
  %.pre493 = load ptr, ptr %i.ab, align 8, !tbaa !12
  br label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.f
  %i.by = icmp slt i32 %i.bv, 16
  br i1 %i.by, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bz = load ptr, ptr %i.ab, align 8, !tbaa !12 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.bz, null
  br i1 %.not9.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bz, i64 noundef 64) #27
  br label %Vec_IntGrow.exit11.sink.split.i

bb.j:                                             ; preds = %bb.h
  %i.cb = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i

bb.k:                                             ; preds = %bb.g
  %i.cc = icmp samesign ult i32 %i.bv, 1073741823
  %i.cd = shl nuw nsw i32 %i.bv, 1
  %spec.select.i = select i1 %i.cc, i32 %i.cd, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.bv, %spec.select.i
  %.pre494 = load ptr, ptr %i.ab, align 8, !tbaa !12 ; 3 uses
  br i1 %.not.i9.i, label %bb.l, label %Vec_IntPush.exit

bb.l:                                             ; preds = %bb.k
  %.not9.i10.i = icmp eq ptr %.pre494, null
  %i.ce = zext nneg i32 %spec.select.i to i64
  %i.cf = shl nuw nsw i64 %i.ce, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = tail call ptr @realloc(ptr noundef nonnull %.pre494, i64 noundef %i.cf) #27
  br label %Vec_IntGrow.exit11.sink.split.i

bb.n:                                             ; preds = %bb.l
  %i.ch = tail call noalias ptr @malloc(i64 noundef %i.cf) #28
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.m, %bb.n, %bb.i, %bb.j
  %i.ci = phi ptr [ %i.cb, %bb.j ], [ %i.ca, %bb.i ], [ %i.cg, %bb.m ], [ %i.ch, %bb.n ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.j ], [ 16, %bb.i ], [ %spec.select.i, %bb.m ], [ %spec.select.i, %bb.n ]
  store ptr %i.ci, ptr %i.ab, align 8, !tbaa !12
  store i32 %spec.select.sink.i, ptr %i.e, align 8, !tbaa !16
  %.pre495 = load i32, ptr %i.z, align 4, !tbaa !8
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.Vec_IntPush.exit_crit_edge, %bb.k, %Vec_IntGrow.exit11.sink.split.i
  %i.cj = phi i32 [ %i.bv, %.Vec_IntPush.exit_crit_edge ], [ %i.bv, %bb.k ], [ %.pre495, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ck = phi ptr [ %.pre493, %.Vec_IntPush.exit_crit_edge ], [ %.pre494, %bb.k ], [ %i.ci, %Vec_IntGrow.exit11.sink.split.i ]
  %i.cl = add nsw i32 %i.cj, 1
  store i32 %i.cl, ptr %i.z, align 4, !tbaa !8
  %i.cm = sext i32 %i.cj to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.cm
  store i32 %i.bp, ptr %i.cn, align 4, !tbaa !13
  %.pre496 = load i32, ptr %i.ay, align 4, !tbaa !13
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph425, %Vec_IntPush.exit
  %i.co = phi i32 [ %i.bn, %.lr.ph425 ], [ %.pre496, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv.next468 = add nuw nsw i64 %indvars.iv467, 1
  %i.cp = sext i32 %i.co to i64
  %.not224.not = icmp slt i64 %indvars.iv467, %i.cp
  br i1 %.not224.not, label %.lr.ph425, label %Gia_ObjIsAndReal.exit.thread, !llvm.loop !109

bb.p:                                             ; preds = %Gia_ObjIsXor.exit
  %i.cq = icmp samesign ugt i32 %i.bi, %i.bl
  br i1 %i.cq, label %bb.q, label %Gia_ObjIsAndReal.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.cr = getelementptr i8, ptr %i.aj, i64 40
  %.val7.i = load ptr, ptr %i.cr, align 8, !tbaa !39 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val7.i, null
  br i1 %.not.i.i.i, label %.critedge419.preheader, label %Gia_ObjIsAndReal.exit

Gia_ObjIsAndReal.exit:                            ; preds = %bb.q
  %sext.i.i = shl nuw nsw i64 %indvars.iv478, 2
  %i.cs = getelementptr inbounds nuw i8, ptr %.val7.i, i64 %sext.i.i
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !13
  %.not464 = icmp eq i32 %i.ct, 0
  br i1 %.not464, label %.critedge419.preheader, label %Gia_ObjIsAndReal.exit.thread

.critedge419.preheader:                           ; preds = %Gia_ObjIsAndReal.exit, %bb.q
  %i.cu = load i32, ptr %i.ay, align 4, !tbaa !13 ; 2 uses
  %.not223421 = icmp slt i32 %i.cu, 1
  br i1 %.not223421, label %Gia_ObjIsAndReal.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge419.preheader, %.critedge419
  %i.cv = phi i32 [ %i.dv, %.critedge419 ], [ %i.cu, %.critedge419.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge419 ], [ 1, %.critedge419.preheader ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !13 ; 2 uses
  %.val242 = load ptr, ptr %i.aa, align 8, !tbaa !12
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %.val242, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !13
  %i.db = icmp sgt i32 %i.da, 1
  br i1 %i.db, label %bb.r, label %.critedge419

bb.r:                                             ; preds = %.lr.ph
  %i.dc = load i32, ptr %i.z, align 4, !tbaa !8   ; 7 uses
  %i.dd = load i32, ptr %i.e, align 8, !tbaa !16
  %i.de = icmp eq i32 %i.dc, %i.dd
  br i1 %i.de, label %bb.s, label %.Vec_IntPush.exit271_crit_edge

.Vec_IntPush.exit271_crit_edge:                   ; preds = %bb.r
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !12
  br label %Vec_IntPush.exit271

bb.s:                                             ; preds = %bb.r
  %i.df = icmp slt i32 %i.dc, 16
  br i1 %i.df, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.dg = load ptr, ptr %i.ab, align 8, !tbaa !12 ; 2 uses
  %.not9.i.i269 = icmp eq ptr %i.dg, null
  br i1 %.not9.i.i269, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dh = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.dg, i64 noundef 64) #27
  br label %Vec_IntGrow.exit11.sink.split.i267

bb.v:                                             ; preds = %bb.t
  %i.di = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i267

bb.w:                                             ; preds = %bb.s
  %i.dj = icmp samesign ult i32 %i.dc, 1073741823
  %i.dk = shl nuw nsw i32 %i.dc, 1
  %spec.select.i264 = select i1 %i.dj, i32 %i.dk, i32 2147483647 ; 4 uses
  %.not.i9.i265 = icmp samesign ult i32 %i.dc, %spec.select.i264
  %.pre490 = load ptr, ptr %i.ab, align 8, !tbaa !12 ; 3 uses
  br i1 %.not.i9.i265, label %bb.x, label %Vec_IntPush.exit271

bb.x:                                             ; preds = %bb.w
  %.not9.i10.i266 = icmp eq ptr %.pre490, null
  %i.dl = zext nneg i32 %spec.select.i264 to i64
  %i.dm = shl nuw nsw i64 %i.dl, 2                ; 2 uses
  br i1 %.not9.i10.i266, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dn = tail call ptr @realloc(ptr noundef nonnull %.pre490, i64 noundef %i.dm) #27
  br label %Vec_IntGrow.exit11.sink.split.i267

bb.z:                                             ; preds = %bb.x
  %i.do = tail call noalias ptr @malloc(i64 noundef %i.dm) #28
  br label %Vec_IntGrow.exit11.sink.split.i267

Vec_IntGrow.exit11.sink.split.i267:               ; preds = %bb.y, %bb.z, %bb.u, %bb.v
  %i.dp = phi ptr [ %i.di, %bb.v ], [ %i.dh, %bb.u ], [ %i.dn, %bb.y ], [ %i.do, %bb.z ] ; 2 uses
  %spec.select.sink.i268 = phi i32 [ 16, %bb.v ], [ 16, %bb.u ], [ %spec.select.i264, %bb.y ], [ %spec.select.i264, %bb.z ]
  store ptr %i.dp, ptr %i.ab, align 8, !tbaa !12
  store i32 %spec.select.sink.i268, ptr %i.e, align 8, !tbaa !16
  %.pre491 = load i32, ptr %i.z, align 4, !tbaa !8
  br label %Vec_IntPush.exit271

Vec_IntPush.exit271:                              ; preds = %.Vec_IntPush.exit271_crit_edge, %bb.w, %Vec_IntGrow.exit11.sink.split.i267
  %i.dq = phi i32 [ %i.dc, %.Vec_IntPush.exit271_crit_edge ], [ %i.dc, %bb.w ], [ %.pre491, %Vec_IntGrow.exit11.sink.split.i267 ] ; 2 uses
  %i.dr = phi ptr [ %.pre, %.Vec_IntPush.exit271_crit_edge ], [ %.pre490, %bb.w ], [ %i.dp, %Vec_IntGrow.exit11.sink.split.i267 ]
  %i.ds = add nsw i32 %i.dq, 1
  store i32 %i.ds, ptr %i.z, align 4, !tbaa !8
  %i.dt = sext i32 %i.dq to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.dt
  store i32 %i.cx, ptr %i.du, align 4, !tbaa !13
  %.pre492 = load i32, ptr %i.ay, align 4, !tbaa !13
  br label %.critedge419

.critedge419:                                     ; preds = %.lr.ph, %Vec_IntPush.exit271
  %i.dv = phi i32 [ %i.cv, %.lr.ph ], [ %.pre492, %Vec_IntPush.exit271 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.dw = sext i32 %i.dv to i64
  %.not223.not = icmp slt i64 %indvars.iv, %i.dw
  br i1 %.not223.not, label %.lr.ph, label %Gia_ObjIsAndReal.exit.thread, !llvm.loop !110

Gia_ObjIsAndReal.exit.thread:                     ; preds = %.critedge419, %bb.o, %.critedge419.preheader, %.preheader, %Dam_ObjHand.exit.i, %bb.p, %Gia_ObjIsAndReal.exit
  %.val235 = load i32, ptr %i.z, align 4, !tbaa !8 ; 3 uses
  %i.dx = icmp slt i32 %.val235, 2
  br i1 %i.dx, label %.critedge2, label %bb.aa

bb.aa:                                            ; preds = %Gia_ObjIsAndReal.exit.thread
  %i.dy = add nsw i32 %.val235, -1
  %i.dz = mul nsw i32 %i.dy, %.val235
  %i.ea = lshr i32 %i.dz, 1
  %i.eb = add nsw i32 %i.ea, %.0196441            ; 3 uses
  %i.ec = load i32, ptr %i.i, align 4, !tbaa !8   ; 8 uses
  %i.ed = load i32, ptr %i.g, align 8, !tbaa !16  ; 2 uses
  %i.ee = icmp eq i32 %i.ec, %i.ed
  br i1 %i.ee, label %bb.ab, label %Vec_IntPush.exit279

bb.ab:                                            ; preds = %bb.aa
  %i.ef = icmp slt i32 %i.ec, 16
  br i1 %i.ef, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %.not9.i.i277 = icmp eq ptr %i.ai, null
  br i1 %.not9.i.i277, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eg = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ai, i64 noundef 64) #27
  br label %Vec_IntGrow.exit11.sink.split.i275

bb.ae:                                            ; preds = %bb.ac
  %i.eh = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i275

bb.af:                                            ; preds = %bb.ab
  %i.ei = icmp samesign ult i32 %i.ec, 1073741823
  %i.ej = shl nuw nsw i32 %i.ec, 1
  %spec.select.i272 = select i1 %i.ei, i32 %i.ej, i32 2147483647 ; 4 uses
  %.not.i9.i273 = icmp samesign ult i32 %i.ec, %spec.select.i272
  br i1 %.not.i9.i273, label %bb.ag, label %Vec_IntPush.exit279

bb.ag:                                            ; preds = %bb.af
  %.not9.i10.i274 = icmp eq ptr %i.ai, null
  %i.ek = zext nneg i32 %spec.select.i272 to i64
  %i.el = shl nuw nsw i64 %i.ek, 2                ; 2 uses
  br i1 %.not9.i10.i274, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.em = tail call ptr @realloc(ptr noundef nonnull %i.ai, i64 noundef %i.el) #27
  br label %Vec_IntGrow.exit11.sink.split.i275

bb.ai:                                            ; preds = %bb.ag
  %i.en = tail call noalias ptr @malloc(i64 noundef %i.el) #28
  br label %Vec_IntGrow.exit11.sink.split.i275

Vec_IntGrow.exit11.sink.split.i275:               ; preds = %bb.ah, %bb.ai, %bb.ad, %bb.ae
  %storemerge = phi ptr [ %i.eh, %bb.ae ], [ %i.eg, %bb.ad ], [ %i.em, %bb.ah ], [ %i.en, %bb.ai ] ; 3 uses
  %spec.select.sink.i276 = phi i32 [ 16, %bb.ae ], [ 16, %bb.ad ], [ %spec.select.i272, %bb.ah ], [ %spec.select.i272, %bb.ai ] ; 2 uses
  store ptr %storemerge, ptr %i.n, align 8, !tbaa !12
  store i32 %spec.select.sink.i276, ptr %i.g, align 8, !tbaa !16
  br label %Vec_IntPush.exit279

Vec_IntPush.exit279:                              ; preds = %bb.aa, %bb.af, %Vec_IntGrow.exit11.sink.split.i275
  %i.eo = phi ptr [ %i.ag, %bb.aa ], [ %i.ag, %bb.af ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i275 ] ; 2 uses
  %i.ep = phi i32 [ %i.ed, %bb.aa ], [ %i.ec, %bb.af ], [ %spec.select.sink.i276, %Vec_IntGrow.exit11.sink.split.i275 ]
  %i.eq = phi ptr [ %i.ah, %bb.aa ], [ %i.ah, %bb.af ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i275 ] ; 4 uses
  %i.er = add nsw i32 %i.ec, 1                    ; 2 uses
  store i32 %i.er, ptr %i.i, align 4, !tbaa !8
  %i.es = sext i32 %i.ec to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.es
  %2 = trunc i64 %indvars.iv478 to i32
  %3 = sub i32 0, %2
  store i32 %3, ptr %i.et, align 4, !tbaa !13
  %.val232432 = load i32, ptr %i.z, align 4, !tbaa !8 ; 2 uses
  %i.eu = icmp sgt i32 %.val232432, 0
  br i1 %i.eu, label %.lr.ph436, label %.critedge2

.critedge4.loopexit:                              ; preds = %Vec_IntUpdateEntry.exit
  %.pre515 = sext i32 %.val231 to i64
  %i.ev = icmp slt i64 %indvars.iv.next476, %.pre515
  %indvars.iv.next471 = add nuw nsw i64 %indvars.iv470, 1
  br i1 %i.ev, label %.lr.ph436, label %.critedge2, !llvm.loop !111

.lr.ph436:                                        ; preds = %Vec_IntPush.exit279, %.critedge4.loopexit
  %.val232500 = phi i32 [ %.val231, %.critedge4.loopexit ], [ %.val232432, %Vec_IntPush.exit279 ]
  %i.ew = phi ptr [ %i.hc, %.critedge4.loopexit ], [ %i.eo, %Vec_IntPush.exit279 ] ; 2 uses
  %i.ex = phi i32 [ %i.hd, %.critedge4.loopexit ], [ %i.ep, %Vec_IntPush.exit279 ]
  %i.ey = phi i32 [ %i.he, %.critedge4.loopexit ], [ %i.er, %Vec_IntPush.exit279 ]
  %i.ez = phi ptr [ %i.hc, %.critedge4.loopexit ], [ %i.eq, %Vec_IntPush.exit279 ] ; 3 uses
  %indvars.iv475 = phi i64 [ %indvars.iv.next476, %.critedge4.loopexit ], [ 0, %Vec_IntPush.exit279 ] ; 2 uses
  %indvars.iv470 = phi i64 [ %indvars.iv.next471, %.critedge4.loopexit ], [ 1, %Vec_IntPush.exit279 ] ; 2 uses
  %.1435 = phi i32 [ %.3, %.critedge4.loopexit ], [ %.0443, %Vec_IntPush.exit279 ] ; 2 uses
  %.1187434 = phi i32 [ %.3189, %.critedge4.loopexit ], [ %.0186442, %Vec_IntPush.exit279 ] ; 2 uses
  %.val241 = load ptr, ptr %i.ab, align 8, !tbaa !12
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.val241, i64 %indvars.iv475
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !13 ; 3 uses
  %indvars.iv.next476 = add nuw nsw i64 %indvars.iv475, 1 ; 3 uses
  %i.fc = sext i32 %.val232500 to i64
  %i.fd = icmp slt i64 %indvars.iv.next476, %i.fc
  br i1 %i.fd, label %.lr.ph430, label %.critedge2

.lr.ph430:                                        ; preds = %.lr.ph436, %Vec_IntUpdateEntry.exit
  %i.fe = phi ptr [ %i.hc, %Vec_IntUpdateEntry.exit ], [ %i.ew, %.lr.ph436 ] ; 2 uses
  %i.ff = phi ptr [ %i.hc, %Vec_IntUpdateEntry.exit ], [ %i.ez, %.lr.ph436 ]
  %i.fg = phi i32 [ %i.hd, %Vec_IntUpdateEntry.exit ], [ %i.ex, %.lr.ph436 ] ; 7 uses
  %i.fh = phi i32 [ %i.he, %Vec_IntUpdateEntry.exit ], [ %i.ey, %.lr.ph436 ] ; 3 uses
  %indvars.iv472 = phi i64 [ %indvars.iv.next473, %Vec_IntUpdateEntry.exit ], [ %indvars.iv470, %.lr.ph436 ] ; 2 uses
  %.2429 = phi i32 [ %.3, %Vec_IntUpdateEntry.exit ], [ %.1435, %.lr.ph436 ] ; 2 uses
  %.2188428 = phi i32 [ %.3189, %Vec_IntUpdateEntry.exit ], [ %.1187434, %.lr.ph436 ] ; 2 uses
  %.val240 = load ptr, ptr %i.ab, align 8, !tbaa !12
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.val240, i64 %indvars.iv472
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !13 ; 3 uses
  %i.fk = icmp sgt i32 %i.fb, %i.fj
  %i.fl = zext i1 %i.fk to i32
  %.val247 = load i64, ptr %i.al, align 4         ; 4 uses
  %i.fm = and i64 %.val247, 2147483648
  %.not.i.i280 = icmp ne i64 %i.fm, 0
  %i.fn = and i64 %.val247, 536870911
  %i.fo = icmp eq i64 %i.fn, 536870911
  %narrow.i.not.i281 = or i1 %.not.i.i280, %i.fo
  br i1 %narrow.i.not.i281, label %Gia_ObjIsXor.exit282, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph430
  %i.fp = trunc i64 %.val247 to i32
  %i.fq = and i32 %i.fp, 536870911
  %i.fr = lshr i64 %.val247, 32
  %i.fs = trunc nuw i64 %i.fr to i32
  %i.ft = and i32 %i.fs, 536870911
  %i.fu = icmp samesign ult i32 %i.fq, %i.ft
  %i.fv = zext i1 %i.fu to i32
  br label %Gia_ObjIsXor.exit282

Gia_ObjIsXor.exit282:                             ; preds = %.lr.ph430, %bb.aj
  %i.fw = phi i32 [ 0, %.lr.ph430 ], [ %i.fv, %bb.aj ]
  %.not225 = icmp eq i32 %i.fw, %i.fl
  br i1 %.not225, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %Gia_ObjIsXor.exit282
  %i.fx = tail call fastcc i32 @Hash_Int2ManInsert(ptr noundef %i.p, i32 noundef %i.fj, i32 noundef %i.fb)
  br label %bb.am

bb.al:                                            ; preds = %Gia_ObjIsXor.exit282
  %i.fy = tail call fastcc i32 @Hash_Int2ManInsert(ptr noundef %i.p, i32 noundef %i.fb, i32 noundef %i.fj)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.0202 = phi i32 [ %i.fx, %bb.ak ], [ %i.fy, %bb.al ] ; 5 uses
  %.not.i.i283 = icmp ne i32 %.0202, 0
  tail call void @llvm.assume(i1 %.not.i.i283)
  %i.fz = load ptr, ptr %i.ae, align 8, !tbaa !96
  %i.ga = shl nsw i32 %.0202, 2
  %i.gb = getelementptr i8, ptr %i.fz, i64 8
  %.val.i.i284 = load ptr, ptr %i.gb, align 8, !tbaa !12
  %i.gc = sext i32 %i.ga to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %.val.i.i284, i64 %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !112 ; 2 uses
  %i.gg = add nsw i32 %i.gf, 1
  store i32 %i.gg, ptr %i.ge, align 4, !tbaa !112
  %i.gh = icmp eq i32 %i.gf, 1
  br i1 %i.gh, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.gi = add nsw i32 %.2188428, 1
  %.val246 = load i64, ptr %i.al, align 4         ; 4 uses
  %i.gj = and i64 %.val246, 2147483648
  %.not.i.i285 = icmp ne i64 %i.gj, 0
  %i.gk = and i64 %.val246, 536870911
  %i.gl = icmp eq i64 %i.gk, 536870911
  %narrow.i.not.i286 = or i1 %.not.i.i285, %i.gl
  br i1 %narrow.i.not.i286, label %Gia_ObjIsXor.exit287, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gm = trunc i64 %.val246 to i32
  %i.gn = and i32 %i.gm, 536870911
  %i.go = lshr i64 %.val246, 32
  %i.gp = trunc nuw i64 %i.go to i32
  %i.gq = and i32 %i.gp, 536870911
  %i.gr = icmp samesign ult i32 %i.gn, %i.gq
  %i.gs = zext i1 %i.gr to i32
  br label %Gia_ObjIsXor.exit287

Gia_ObjIsXor.exit287:                             ; preds = %bb.an, %bb.ao
  %i.gt = phi i32 [ 0, %bb.an ], [ %i.gs, %bb.ao ]
  %i.gu = add nsw i32 %i.gt, %.2429
  br label %bb.ap

bb.ap:                                            ; preds = %Gia_ObjIsXor.exit287, %bb.am
  %.3189 = phi i32 [ %i.gi, %Gia_ObjIsXor.exit287 ], [ %.2188428, %bb.am ] ; 3 uses
  %.3 = phi i32 [ %i.gu, %Gia_ObjIsXor.exit287 ], [ %.2429, %bb.am ] ; 3 uses
  %i.gv = icmp eq i32 %i.fh, %i.fg
  br i1 %i.gv, label %bb.aq, label %Vec_IntPush.exit295

bb.aq:                                            ; preds = %bb.ap
  %i.gw = icmp slt i32 %i.fg, 16
  br i1 %i.gw, label %Vec_IntGrow.exit11.sink.split.i291, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gx = icmp samesign ult i32 %i.fg, 1073741823
  %i.gy = shl nuw nsw i32 %i.fg, 1
  %spec.select.i288 = select i1 %i.gx, i32 %i.gy, i32 2147483647 ; 3 uses
  %.not.i9.i289 = icmp samesign ult i32 %i.fg, %spec.select.i288
  br i1 %.not.i9.i289, label %bb.as, label %Vec_IntPush.exit295

bb.as:                                            ; preds = %bb.ar
  %i.gz = zext nneg i32 %spec.select.i288 to i64
  %i.ha = shl nuw nsw i64 %i.gz, 2
  br label %Vec_IntGrow.exit11.sink.split.i291

Vec_IntGrow.exit11.sink.split.i291:               ; preds = %bb.aq, %bb.as
  %.sink = phi i64 [ %i.ha, %bb.as ], [ 64, %bb.aq ]
  %spec.select.sink.i292 = phi i32 [ %spec.select.i288, %bb.as ], [ 16, %bb.aq ] ; 2 uses
  %i.hb = tail call ptr @realloc(ptr noundef nonnull %i.ff, i64 noundef %.sink) #27 ; 2 uses
  store ptr %i.hb, ptr %i.n, align 8, !tbaa !12
  store i32 %spec.select.sink.i292, ptr %i.g, align 8, !tbaa !16
  br label %Vec_IntPush.exit295

Vec_IntPush.exit295:                              ; preds = %bb.ap, %bb.ar, %Vec_IntGrow.exit11.sink.split.i291
  %i.hc = phi ptr [ %i.fe, %bb.ap ], [ %i.fe, %bb.ar ], [ %i.hb, %Vec_IntGrow.exit11.sink.split.i291 ] ; 8 uses
  %i.hd = phi i32 [ %i.fg, %bb.ap ], [ %i.fg, %bb.ar ], [ %spec.select.sink.i292, %Vec_IntGrow.exit11.sink.split.i291 ] ; 2 uses
  %i.he = add nsw i32 %i.fh, 1                    ; 3 uses
  store i32 %i.he, ptr %i.i, align 4, !tbaa !8
  %i.hf = sext i32 %i.fh to i64
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.hf
  store i32 %.0202, ptr %i.hg, align 4, !tbaa !13
  %.val230 = load i32, ptr %i.r, align 4, !tbaa !8 ; 4 uses
  %.not226 = icmp slt i32 %.0202, %.val230
  br i1 %.not226, label %Vec_IntFillExtra.exit, label %bb.at

bb.at:                                            ; preds = %Vec_IntPush.exit295
  %i.hh = mul nsw i32 %.val230, 3
  %i.hi = sdiv i32 %i.hh, 2                       ; 8 uses
  %.not.i296 = icmp sgt i32 %i.hi, %.val230
  br i1 %.not.i296, label %bb.au, label %Vec_IntFillExtra.exit

bb.au:                                            ; preds = %bb.at
  %i.hj = load i32, ptr %i.q, align 8, !tbaa !16  ; 2 uses
  %i.hk = shl nsw i32 %i.hj, 1                    ; 4 uses
  %i.hl = icmp sgt i32 %i.hi, %i.hk
  %.not.i.i297 = icmp slt i32 %i.hj, %i.hi        ; 2 uses
  %.pre498 = load ptr, ptr %i.s, align 8, !tbaa !12 ; 6 uses
  br i1 %i.hl, label %bb.av, label %bb.az

bb.av:                                            ; preds = %bb.au
  br i1 %.not.i.i297, label %bb.aw, label %.lr.ph.i

bb.aw:                                            ; preds = %bb.av
  %.not9.i.i301 = icmp eq ptr %.pre498, null
  %i.hm = sext i32 %i.hi to i64
  %i.hn = shl nsw i64 %i.hm, 2                    ; 2 uses
  br i1 %.not9.i.i301, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ho = tail call ptr @realloc(ptr noundef nonnull %.pre498, i64 noundef %i.hn) #27
  br label %Vec_IntGrow.exit.sink.split.i

bb.ay:                                            ; preds = %bb.aw
  %i.hp = tail call noalias ptr @malloc(i64 noundef %i.hn) #28
  br label %Vec_IntGrow.exit.sink.split.i

bb.az:                                            ; preds = %bb.au
  br i1 %.not.i.i297, label %bb.ba, label %.lr.ph.i

bb.ba:                                            ; preds = %bb.az
  %.not9.i23.i = icmp eq ptr %.pre498, null
  %i.hq = sext i32 %i.hk to i64
  %i.hr = shl nsw i64 %i.hq, 2                    ; 2 uses
  br i1 %.not9.i23.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hs = tail call ptr @realloc(ptr noundef nonnull %.pre498, i64 noundef %i.hr) #27
  br label %Vec_IntGrow.exit.sink.split.i

end_hunk_0
