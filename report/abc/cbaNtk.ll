Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cbaNtk?download=true
inline.NumInlined: 1096
inline.NumDeleted: 198
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@Cba_NtkCollectDfs_rec:bb.a
  %i.bc = getelementptr i8, ptr %0, i64 160
  %i.bd = sext i32 %i.aw to i64
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %Cba_FonObj.exit.thread
  %.val45 = phi ptr [ %.val22, %.lr.ph ], [ %.val, %Cba_FonObj.exit.thread ] ; 2 uses
  %indvars.iv = phi i64 [ %i.bd, %.lr.ph ], [ %indvars.iv.next, %Cba_FonObj.exit.thread ] ; 2 uses
  %.val23 = load ptr, ptr %i.bb, align 8, !tbaa !35
  %i.be = getelementptr inbounds [4 x i8], ptr %.val23, i64 %indvars.iv
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !38 ; 2 uses
  %i.bg = icmp slt i32 %i.bf, 1
  br i1 %i.bg, label %Cba_FonObj.exit.thread, label %Cba_FonObj.exit

Cba_FonObj.exit:                                  ; preds = %bb.s
  %.val.i = load ptr, ptr %i.bc, align 8, !tbaa !35
  %i.bh = zext nneg i32 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !38 ; 2 uses
  %.not21 = icmp eq i32 %i.bj, 0
  br i1 %.not21, label %Cba_FonObj.exit.thread, label %bb.t

bb.t:                                             ; preds = %Cba_FonObj.exit
  tail call void @Cba_NtkCollectDfs_rec(ptr noundef nonnull %0, i32 noundef %i.bj, ptr noundef %2)
  %.val.pre = load ptr, ptr %i.au, align 8, !tbaa !35
  br label %Cba_FonObj.exit.thread

Cba_FonObj.exit.thread:                           ; preds = %bb.s, %bb.t, %Cba_FonObj.exit
  %.val = phi ptr [ %.val45, %bb.s ], [ %.val.pre, %bb.t ], [ %.val45, %Cba_FonObj.exit ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.ax
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !38
  %i.bm = sext i32 %i.bl to i64
  %i.bn = icmp slt i64 %indvars.iv.next, %i.bm
  br i1 %i.bn, label %bb.s, label %.critedge, !llvm.loop !107

.critedge:                                        ; preds = %Cba_FonObj.exit.thread, %Cba_ObjSetCopy.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !52 ; 7 uses
  %i.bq = load i32, ptr %2, align 8, !tbaa !53
  %i.br = icmp eq i32 %i.bp, %i.bq
  br i1 %i.br, label %bb.u, label %Vec_IntPush.exit

bb.u:                                             ; preds = %.critedge
  %i.bs = icmp slt i32 %i.bp, 16
  br i1 %i.bs, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !35 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.bu, null
  br i1 %.not9.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bv = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bu, i64 noundef 64) #29
  br label %Vec_IntGrow.exit.i

bb.x:                                             ; preds = %bb.v
  %i.bw = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.x, %bb.w
  %i.bx = phi ptr [ %i.bv, %bb.w ], [ %i.bw, %bb.x ]
  store ptr %i.bx, ptr %i.bt, align 8, !tbaa !35
  br label %Vec_IntGrow.exit11.sink.split.i

bb.y:                                             ; preds = %bb.u
  %i.by = icmp samesign ult i32 %i.bp, 1073741823
  %i.bz = shl nuw nsw i32 %i.bp, 1
  %spec.select.i = select i1 %i.by, i32 %i.bz, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.bp, %spec.select.i
  br i1 %.not.i9.i, label %bb.z, label %Vec_IntPush.exit

bb.z:                                             ; preds = %bb.y
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !35 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.cb, null
  %i.cc = zext nneg i32 %spec.select.i to i64
  %i.cd = shl nuw nsw i64 %i.cc, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ce = tail call ptr @realloc(ptr noundef nonnull %i.cb, i64 noundef %i.cd) #29
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.cf = tail call noalias ptr @malloc(i64 noundef %i.cd) #28
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cg = phi ptr [ %i.ce, %bb.aa ], [ %i.cf, %bb.ab ]
  store ptr %i.cg, ptr %i.ca, align 8, !tbaa !35
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.ac, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.ac ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %2, align 8, !tbaa !53
  %.pre = load i32, ptr %i.bo, align 4, !tbaa !52
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.critedge, %bb.y, %Vec_IntGrow.exit11.sink.split.i
  %i.ch = phi i32 [ %i.bp, %.critedge ], [ %i.bp, %bb.y ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !35
  %i.ck = add nsw i32 %i.ch, 1
  store i32 %i.ck, ptr %i.bo, align 4, !tbaa !52
  %i.cl = sext i32 %i.ch to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.cl
  store i32 %1, ptr %i.cm, align 4, !tbaa !38
  br label %bb.ad

bb.ad:                                            ; preds = %Cba_ObjCopy.exit, %Vec_IntPush.exit
  ret void
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Cba_NtkCollectDfs(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 92         ; 4 uses
  %.val124 = load i32, ptr %i.a, align 4, !tbaa !29 ; 2 uses
  %i.b = add nsw i32 %.val124, -1
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 10 uses
  %i.d = add i32 %.val124, -2
  %or.cond.i = icmp ult i32 %i.d, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %i.b ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 5 uses
  store i32 0, ptr %i.e, align 4, !tbaa !52
  store i32 %spec.store.select.i, ptr %i.c, align 8, !tbaa !53
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sext i32 %spec.store.select.i to i64
  %i.g = shl nsw i64 %i.f, 2
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #28
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a, %bb.b
  %.promoted163 = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 6 uses
  store ptr %.promoted163, ptr %i.i, align 8, !tbaa !35
  %i.j = getelementptr i8, ptr %0, i64 28         ; 2 uses
  %.val116157 = load i32, ptr %i.j, align 4, !tbaa !52
  %i.k = icmp sgt i32 %.val116157, 0
  br i1 %i.k, label %.lr.ph, label %.critedge.preheader

.lr.ph:                                           ; preds = %Vec_IntAlloc.exit
  %i.l = getelementptr i8, ptr %0, i64 32
  br label %bb.c

..critedge.preheader_crit_edge:                   ; preds = %Vec_IntPush.exit
  %i.m = trunc nsw i64 %indvars.iv.next to i32    ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !52
  store i32 %spec.select.sink.i161, ptr %i.c, align 8
  store ptr %storemerge154165, ptr %i.i, align 8
  br label %.critedge.preheader

.critedge.preheader:                              ; preds = %..critedge.preheader_crit_edge, %Vec_IntAlloc.exit
  %.promoted174 = phi ptr [ %storemerge154165, %..critedge.preheader_crit_edge ], [ %.promoted163, %Vec_IntAlloc.exit ] ; 2 uses
  %.promoted171 = phi i32 [ %spec.select.sink.i161, %..critedge.preheader_crit_edge ], [ %spec.store.select.i, %Vec_IntAlloc.exit ]
  %.promoted169 = phi i32 [ %i.m, %..critedge.preheader_crit_edge ], [ 0, %Vec_IntAlloc.exit ] ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 76         ; 4 uses
  %.val120166 = load i32, ptr %i.n, align 4, !tbaa !52
  %i.o = icmp sgt i32 %.val120166, 0
  br i1 %i.o, label %.lr.ph168, label %.critedge2

.lr.ph168:                                        ; preds = %.critedge.preheader
  %i.p = getelementptr i8, ptr %0, i64 80
  %i.q = sext i32 %.promoted169 to i64
  br label %bb.l

bb.c:                                             ; preds = %.lr.ph, %Vec_IntPush.exit
  %indvars.iv204 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next205, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 7 uses
  %storemerge154164 = phi ptr [ %.promoted163, %.lr.ph ], [ %storemerge154165, %Vec_IntPush.exit ] ; 6 uses
  %spec.select.sink.i162 = phi i32 [ %spec.store.select.i, %.lr.ph ], [ %spec.select.sink.i161, %Vec_IntPush.exit ] ; 3 uses
  %.val127 = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.val127, i64 %indvars.iv204
  %i.s = load i32, ptr %i.r, align 4, !tbaa !38
  %i.t = trunc nsw i64 %indvars.iv to i32
  %i.u = icmp eq i32 %spec.select.sink.i162, %i.t
  br i1 %i.u, label %bb.d, label %Vec_IntPush.exit

bb.d:                                             ; preds = %bb.c
  %i.v = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.v, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not9.i.i = icmp eq ptr %storemerge154164, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge154164, i64 noundef 64) #29
  br label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.e
  %i.x = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.d
  %i.y = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.z = shl i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.y, i32 %i.z, i32 2147483647 ; 4 uses
  %i.aa = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.aa
  br i1 %.not.i9.i, label %bb.i, label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i10.i = icmp eq ptr %storemerge154164, null
  %i.ab = zext nneg i32 %spec.select.i to i64
  %i.ac = shl nuw nsw i64 %i.ab, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call ptr @realloc(ptr noundef nonnull %storemerge154164, i64 noundef %i.ac) #29
  br label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.i
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ac) #28
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.g, %bb.f, %bb.k, %bb.j, %bb.c, %bb.h
  %storemerge154165 = phi ptr [ %storemerge154164, %bb.c ], [ %storemerge154164, %bb.h ], [ %i.x, %bb.g ], [ %i.w, %bb.f ], [ %i.ad, %bb.j ], [ %i.ae, %bb.k ] ; 4 uses
  %spec.select.sink.i161 = phi i32 [ %spec.select.sink.i162, %bb.c ], [ %spec.select.sink.i162, %bb.h ], [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %storemerge154165, i64 %indvars.iv
  store i32 %i.s, ptr %i.af, align 4, !tbaa !38
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv204, 1 ; 2 uses
  %.val116 = load i32, ptr %i.j, align 4, !tbaa !52
  %i.ag = sext i32 %.val116 to i64
  %i.ah = icmp slt i64 %indvars.iv.next205, %i.ag
  br i1 %i.ah, label %bb.c, label %..critedge.preheader_crit_edge, !llvm.loop !108

bb.l:                                             ; preds = %.lr.ph168, %Vec_IntPush.exit137
  %indvars.iv211 = phi i64 [ 0, %.lr.ph168 ], [ %indvars.iv.next212, %Vec_IntPush.exit137 ] ; 2 uses
  %indvars.iv209 = phi i64 [ %i.q, %.lr.ph168 ], [ %indvars.iv.next210, %Vec_IntPush.exit137 ] ; 7 uses
  %storemerge153175 = phi ptr [ %.promoted174, %.lr.ph168 ], [ %storemerge153176, %Vec_IntPush.exit137 ] ; 6 uses
  %spec.select.sink.i134173 = phi i32 [ %.promoted171, %.lr.ph168 ], [ %spec.select.sink.i134172, %Vec_IntPush.exit137 ] ; 3 uses
  %.val126 = load ptr, ptr %i.p, align 8, !tbaa !35
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.val126, i64 %indvars.iv211
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !38
  %i.ak = trunc nsw i64 %indvars.iv209 to i32
  %i.al = icmp eq i32 %spec.select.sink.i134173, %i.ak
  br i1 %i.al, label %bb.m, label %Vec_IntPush.exit137

bb.m:                                             ; preds = %bb.l
  %i.am = icmp slt i64 %indvars.iv209, 16
  br i1 %i.am, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %.not9.i.i135 = icmp eq ptr %storemerge153175, null
  br i1 %.not9.i.i135, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge153175, i64 noundef 64) #29
  br label %Vec_IntPush.exit137

bb.p:                                             ; preds = %bb.n
  %i.ao = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntPush.exit137

bb.q:                                             ; preds = %bb.m
  %i.ap = icmp samesign ult i64 %indvars.iv209, 1073741823
  %indvars.iv209.tr = trunc i64 %indvars.iv209 to i32
  %i.aq = shl i32 %indvars.iv209.tr, 1
  %spec.select.i130 = select i1 %i.ap, i32 %i.aq, i32 2147483647 ; 4 uses
  %i.ar = sext i32 %spec.select.i130 to i64
  %.not.i9.i131 = icmp samesign ult i64 %indvars.iv209, %i.ar
  br i1 %.not.i9.i131, label %bb.r, label %Vec_IntPush.exit137

bb.r:                                             ; preds = %bb.q
  %.not9.i10.i132 = icmp eq ptr %storemerge153175, null
  %i.as = zext nneg i32 %spec.select.i130 to i64
  %i.at = shl nuw nsw i64 %i.as, 2                ; 2 uses
  br i1 %.not9.i10.i132, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.au = tail call ptr @realloc(ptr noundef nonnull %storemerge153175, i64 noundef %i.at) #29
  br label %Vec_IntPush.exit137

bb.t:                                             ; preds = %bb.r
  %i.av = tail call noalias ptr @malloc(i64 noundef %i.at) #28
  br label %Vec_IntPush.exit137

Vec_IntPush.exit137:                              ; preds = %bb.p, %bb.o, %bb.t, %bb.s, %bb.l, %bb.q
  %storemerge153176 = phi ptr [ %storemerge153175, %bb.l ], [ %storemerge153175, %bb.q ], [ %i.ao, %bb.p ], [ %i.an, %bb.o ], [ %i.au, %bb.s ], [ %i.av, %bb.t ] ; 4 uses
  %spec.select.sink.i134172 = phi i32 [ %spec.select.sink.i134173, %bb.l ], [ %spec.select.sink.i134173, %bb.q ], [ 16, %bb.p ], [ 16, %bb.o ], [ %spec.select.i130, %bb.s ], [ %spec.select.i130, %bb.t ] ; 2 uses
  %indvars.iv.next210 = add nsw i64 %indvars.iv209, 1 ; 2 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %storemerge153176, i64 %indvars.iv209
  store i32 %i.aj, ptr %i.aw, align 4, !tbaa !38
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %.val120 = load i32, ptr %i.n, align 4, !tbaa !52
  %i.ax = sext i32 %.val120 to i64
  %i.ay = icmp slt i64 %indvars.iv.next212, %i.ax
  br i1 %i.ay, label %bb.l, label %.critedge..critedge2_crit_edge, !llvm.loop !109

.critedge..critedge2_crit_edge:                   ; preds = %Vec_IntPush.exit137
  %i.az = trunc nsw i64 %indvars.iv.next210 to i32 ; 2 uses
  store i32 %i.az, ptr %i.e, align 4, !tbaa !52
  store i32 %spec.select.sink.i134172, ptr %i.c, align 8
  store ptr %storemerge153176, ptr %i.i, align 8
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge..critedge2_crit_edge, %.critedge.preheader
  %.val106 = phi ptr [ %storemerge153176, %.critedge..critedge2_crit_edge ], [ %.promoted174, %.critedge.preheader ]
  %.val105 = phi i32 [ %i.az, %.critedge..critedge2_crit_edge ], [ %.promoted169, %.critedge.preheader ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val.i = load i32, ptr %i.bb, align 8, !tbaa !68 ; 6 uses
  %i.bc = load i32, ptr %i.ba, align 8, !tbaa !53
  %.not.i.i.i = icmp slt i32 %i.bc, %.val.i
  br i1 %.not.i.i.i, label %bb.u, label %Vec_IntGrow.exit.i.i

bb.u:                                             ; preds = %.critedge2
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !35 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.be, null
  %i.bf = sext i32 %.val.i to i64
  %i.bg = shl nsw i64 %i.bf, 2                    ; 2 uses
  br i1 %.not9.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = tail call ptr @realloc(ptr noundef nonnull %i.be, i64 noundef %i.bg) #29
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bi = tail call noalias ptr @malloc(i64 noundef %i.bg) #28
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bj = phi ptr [ %i.bh, %bb.v ], [ %i.bi, %bb.w ]
  store ptr %i.bj, ptr %i.bd, align 8, !tbaa !35
  store i32 %.val.i, ptr %i.ba, align 8, !tbaa !53
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %bb.x, %.critedge2
  %i.bk = icmp sgt i32 %.val.i, 0
  br i1 %i.bk, label %.lr.ph.i.i, label %Cba_NtkCleanObjCopies.exit

.lr.ph.i.i:                                       ; preds = %Vec_IntGrow.exit.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !35
  %wide.trip.count.i.i = zext nneg i32 %.val.i to i64
  %i.bn = shl nuw nsw i64 %wide.trip.count.i.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bm, i8 -1, i64 %i.bn, i1 false), !tbaa !38
  br label %Cba_NtkCleanObjCopies.exit

Cba_NtkCleanObjCopies.exit:                       ; preds = %Vec_IntGrow.exit.i.i, %.lr.ph.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 4 uses
  store i32 %.val.i, ptr %i.bo, align 4, !tbaa !52
  %i.bp = icmp sgt i32 %.val105, 0
  br i1 %i.bp, label %.lr.ph178, label %.critedge4.preheader

.lr.ph178:                                        ; preds = %Cba_NtkCleanObjCopies.exit
  %i.bq = getelementptr i8, ptr %0, i64 176       ; 5 uses
  %wide.trip.count = zext nneg i32 %.val105 to i64
  br label %bb.y

.critedge4.preheader:                             ; preds = %Cba_ObjSetCopy.exit, %Cba_NtkCleanObjCopies.exit
  %i.br = getelementptr i8, ptr %0, i64 44        ; 4 uses
  %.val118182 = load i32, ptr %i.br, align 4, !tbaa !52 ; 3 uses
  %i.bs = icmp sgt i32 %.val118182, 0
  br i1 %i.bs, label %.lr.ph184, label %.critedge6.preheader

.lr.ph184:                                        ; preds = %.critedge4.preheader
  %i.bt = getelementptr i8, ptr %0, i64 48
  %i.bu = getelementptr i8, ptr %0, i64 112       ; 2 uses
  %i.bv = getelementptr i8, ptr %0, i64 144
  %i.bw = getelementptr i8, ptr %0, i64 160
  %.val111.pre = load ptr, ptr %i.bu, align 8, !tbaa !35 ; 2 uses
  br label %bb.aj

bb.y:                                             ; preds = %.lr.ph178, %Cba_ObjSetCopy.exit
  %indvars.iv216 = phi i64 [ 0, %.lr.ph178 ], [ %indvars.iv.next217, %Cba_ObjSetCopy.exit ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.val106, i64 %indvars.iv216
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !38 ; 6 uses
  %i.bz = add nsw i32 %i.by, 1                    ; 5 uses
  %i.ca = load i32, ptr %i.bo, align 4, !tbaa !52 ; 4 uses
  %.not.i.not.i.i = icmp slt i32 %i.by, %i.ca
  br i1 %.not.i.not.i.i, label %Cba_ObjSetCopy.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cb = load i32, ptr %i.ba, align 8, !tbaa !53 ; 4 uses
  %i.cc = shl nsw i32 %i.cb, 1                    ; 2 uses
  %.not.i.i = icmp slt i32 %i.by, %i.cc
  %.not.i.i.not.i.i = icmp sgt i32 %i.cb, %i.by   ; 2 uses
  br i1 %.not.i.i, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cd = load ptr, ptr %i.bq, align 8, !tbaa !35 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.cd, null
  %i.ce = sext i32 %i.bz to i64
  %i.cf = shl nsw i64 %i.ce, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cg = tail call ptr @realloc(ptr noundef nonnull %i.cd, i64 noundef %i.cf) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.ch = tail call noalias ptr @malloc(i64 noundef %i.cf) #28
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.ae:                                            ; preds = %bb.z
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ci = icmp slt i32 %i.cb, 1073741823
  %spec.select.i.i.i = select i1 %i.ci, i32 %i.cc, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i = icmp slt i32 %i.cb, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.ag, label %Vec_IntGrow.exit.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.cj = load ptr, ptr %i.bq, align 8, !tbaa !35 ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.cj, null
  %i.ck = sext i32 %spec.select.i.i.i to i64
  %i.cl = shl nsw i64 %i.ck, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cm = tail call ptr @realloc(ptr noundef nonnull %i.cj, i64 noundef %i.cl) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.cn = tail call noalias ptr @malloc(i64 noundef %i.cl) #28
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.ah, %bb.ai, %bb.ac, %bb.ad
  %storemerge = phi ptr [ %i.ch, %bb.ad ], [ %i.cg, %bb.ac ], [ %i.cm, %bb.ah ], [ %i.cn, %bb.ai ]
  %spec.select.sink.i.i.i = phi i32 [ %i.bz, %bb.ad ], [ %i.bz, %bb.ac ], [ %spec.select.i.i.i, %bb.ah ], [ %spec.select.i.i.i, %bb.ai ]
  store ptr %storemerge, ptr %i.bq, align 8, !tbaa !35
  store i32 %spec.select.sink.i.i.i, ptr %i.ba, align 8, !tbaa !53
  %.pre.i.i = load i32, ptr %i.bo, align 4, !tbaa !52
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.af, %bb.ae, %bb.aa
  %i.co = phi i32 [ %.pre.i.i, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.ca, %bb.af ], [ %i.ca, %bb.ae ], [ %i.ca, %bb.aa ] ; 2 uses
  %.not4.i.i = icmp sgt i32 %i.co, %i.by
  br i1 %.not4.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.cp = load ptr, ptr %i.bq, align 8, !tbaa !35
  %i.cq = sext i32 %i.co to i64                   ; 2 uses
  %wide.trip.count.i.i.i = sext i32 %i.bz to i64
  %i.cr = shl nsw i64 %i.cq, 2
  %scevgep.i.i = getelementptr i8, ptr %i.cp, i64 %i.cr
  %i.cs = sub nsw i64 %wide.trip.count.i.i.i, %i.cq
  %i.ct = shl nsw i64 %i.cs, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i, i8 0, i64 %i.ct, i1 false), !tbaa !38
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  store i32 %i.bz, ptr %i.bo, align 4, !tbaa !52
  br label %Cba_ObjSetCopy.exit

Cba_ObjSetCopy.exit:                              ; preds = %bb.y, %._crit_edge.i.i.i
  %.val.i.i = load ptr, ptr %i.bq, align 8, !tbaa !35
  %i.cu = sext i32 %i.by to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.cu
  store i32 0, ptr %i.cv, align 4, !tbaa !38
  %indvars.iv.next217 = add nuw nsw i64 %indvars.iv216, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next217, %wide.trip.count
  br i1 %exitcond.not, label %.critedge4.preheader, label %bb.y, !llvm.loop !110

.critedge6.preheader:                             ; preds = %.critedge8, %.critedge4.preheader
  %.val117191261 = phi i32 [ %.val118182, %.critedge4.preheader ], [ %.val118, %.critedge8 ]
  %.val119188 = load i32, ptr %i.n, align 4, !tbaa !52 ; 2 uses
  %i.cw = icmp sgt i32 %.val119188, 0
  br i1 %i.cw, label %.lr.ph190, label %.critedge10.preheader

.lr.ph190:                                        ; preds = %.critedge6.preheader
  %i.cx = getelementptr i8, ptr %0, i64 80
  %i.cy = getelementptr i8, ptr %0, i64 112       ; 2 uses
  %i.cz = getelementptr i8, ptr %0, i64 144
  %i.da = getelementptr i8, ptr %0, i64 160
  %.val109.pre = load ptr, ptr %i.cy, align 8, !tbaa !35 ; 2 uses
  br label %bb.al

bb.aj:                                            ; preds = %.lr.ph184, %.critedge8
  %.val118250 = phi i32 [ %.val118182, %.lr.ph184 ], [ %.val118, %.critedge8 ]
  %.val110246 = phi ptr [ %.val111.pre, %.lr.ph184 ], [ %.val110247, %.critedge8 ] ; 2 uses
  %.val111 = phi ptr [ %.val111.pre, %.lr.ph184 ], [ %.val111244, %.critedge8 ] ; 2 uses
  %indvars.iv222 = phi i64 [ 0, %.lr.ph184 ], [ %indvars.iv.next223, %.critedge8 ] ; 2 uses
  %.val129 = load ptr, ptr %i.bt, align 8, !tbaa !35
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.val129, i64 %indvars.iv222
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !38
  %i.dd = sext i32 %i.dc to i64                   ; 2 uses
  %i.de = getelementptr [4 x i8], ptr %.val111, i64 %i.dd ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !38 ; 2 uses
  %i.dg = getelementptr i8, ptr %i.de, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !38
  %i.di = icmp slt i32 %i.df, %i.dh
  br i1 %i.di, label %.lr.ph181.preheader, label %.critedge8

.lr.ph181.preheader:                              ; preds = %bb.aj
  %i.dj = sext i32 %i.df to i64
  br label %.lr.ph181

.lr.ph181:                                        ; preds = %.lr.ph181.preheader, %Cba_FonObj.exit.thread
  %.val110248 = phi ptr [ %.val110246, %.lr.ph181.preheader ], [ %.val110, %Cba_FonObj.exit.thread ] ; 2 uses
  %indvars.iv219 = phi i64 [ %i.dj, %.lr.ph181.preheader ], [ %indvars.iv.next220, %Cba_FonObj.exit.thread ] ; 2 uses
  %.val113 = load ptr, ptr %i.bv, align 8, !tbaa !35
  %i.dk = getelementptr inbounds [4 x i8], ptr %.val113, i64 %indvars.iv219
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !38 ; 2 uses
  %i.dm = icmp slt i32 %i.dl, 1
  br i1 %i.dm, label %Cba_FonObj.exit.thread, label %Cba_FonObj.exit

Cba_FonObj.exit:                                  ; preds = %.lr.ph181
  %.val.i138 = load ptr, ptr %i.bw, align 8, !tbaa !35
  %i.dn = zext nneg i32 %i.dl to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.val.i138, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !38 ; 2 uses
  %.not103 = icmp eq i32 %i.dp, 0
  br i1 %.not103, label %Cba_FonObj.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %Cba_FonObj.exit
  tail call void @Cba_NtkCollectDfs_rec(ptr noundef nonnull %0, i32 noundef %i.dp, ptr noundef nonnull %i.c)
  %.val110.pre = load ptr, ptr %i.bu, align 8, !tbaa !35
  br label %Cba_FonObj.exit.thread

Cba_FonObj.exit.thread:                           ; preds = %.lr.ph181, %bb.ak, %Cba_FonObj.exit
  %.val110 = phi ptr [ %.val110248, %.lr.ph181 ], [ %.val110.pre, %bb.ak ], [ %.val110248, %Cba_FonObj.exit ] ; 4 uses
  %indvars.iv.next220 = add nsw i64 %indvars.iv219, 1 ; 2 uses
  %i.dq = getelementptr [4 x i8], ptr %.val110, i64 %i.dd
  %i.dr = getelementptr i8, ptr %i.dq, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !38
  %i.dt = sext i32 %i.ds to i64
  %i.du = icmp slt i64 %indvars.iv.next220, %i.dt
  br i1 %i.du, label %.lr.ph181, label %.critedge8.loopexit, !llvm.loop !111

.critedge8.loopexit:                              ; preds = %Cba_FonObj.exit.thread
  %.val118.pre = load i32, ptr %i.br, align 4, !tbaa !52
  br label %.critedge8

.critedge8:                                       ; preds = %.critedge8.loopexit, %bb.aj
  %.val118 = phi i32 [ %.val118.pre, %.critedge8.loopexit ], [ %.val118250, %bb.aj ] ; 3 uses
  %.val110247 = phi ptr [ %.val110, %.critedge8.loopexit ], [ %.val110246, %bb.aj ]
  %.val111244 = phi ptr [ %.val110, %.critedge8.loopexit ], [ %.val111, %bb.aj ]
  %indvars.iv.next223 = add nuw nsw i64 %indvars.iv222, 1 ; 2 uses
  %i.dv = sext i32 %.val118 to i64
  %i.dw = icmp slt i64 %indvars.iv.next223, %i.dv
  br i1 %i.dw, label %bb.aj, label %.critedge6.preheader, !llvm.loop !112

.critedge10.preheader.loopexit:                   ; preds = %.critedge12
  %.val117191.pre = load i32, ptr %i.br, align 4, !tbaa !52
  br label %.critedge10.preheader

.critedge10.preheader:                            ; preds = %.critedge10.preheader.loopexit, %.critedge6.preheader
  %.val117191 = phi i32 [ %.val117191.pre, %.critedge10.preheader.loopexit ], [ %.val117191261, %.critedge6.preheader ]
  %i.dx = icmp sgt i32 %.val117191, 0
  %.val104.pre = load i32, ptr %i.e, align 4, !tbaa !52 ; 2 uses
  br i1 %i.dx, label %.lr.ph193, label %.critedge14

.lr.ph193:                                        ; preds = %.critedge10.preheader
  %i.dy = getelementptr i8, ptr %0, i64 48
  %.promoted195 = load i32, ptr %i.c, align 8, !tbaa !53
  %.promoted198 = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.dz = sext i32 %.val104.pre to i64
  br label %bb.an

bb.al:                                            ; preds = %.lr.ph190, %.critedge12
  %.val119258 = phi i32 [ %.val119188, %.lr.ph190 ], [ %.val119, %.critedge12 ]
  %.val108254 = phi ptr [ %.val109.pre, %.lr.ph190 ], [ %.val108255, %.critedge12 ] ; 2 uses
  %.val109 = phi ptr [ %.val109.pre, %.lr.ph190 ], [ %.val109252, %.critedge12 ] ; 2 uses
  %indvars.iv228 = phi i64 [ 0, %.lr.ph190 ], [ %indvars.iv.next229, %.critedge12 ] ; 2 uses
  %.val125 = load ptr, ptr %i.cx, align 8, !tbaa !35
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.val125, i64 %indvars.iv228
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !38
  %i.ec = sext i32 %i.eb to i64                   ; 2 uses
  %i.ed = getelementptr [4 x i8], ptr %.val109, i64 %i.ec ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !38 ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ed, i64 4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !38
  %i.eh = icmp slt i32 %i.ee, %i.eg
  br i1 %i.eh, label %.lr.ph187.preheader, label %.critedge12

.lr.ph187.preheader:                              ; preds = %bb.al
  %i.ei = sext i32 %i.ee to i64
  br label %.lr.ph187

.lr.ph187:                                        ; preds = %.lr.ph187.preheader, %Cba_FonObj.exit140.thread
  %.val108256 = phi ptr [ %.val108254, %.lr.ph187.preheader ], [ %.val108, %Cba_FonObj.exit140.thread ] ; 2 uses
  %indvars.iv225 = phi i64 [ %i.ei, %.lr.ph187.preheader ], [ %indvars.iv.next226, %Cba_FonObj.exit140.thread ] ; 2 uses
  %.val112 = load ptr, ptr %i.cz, align 8, !tbaa !35
  %i.ej = getelementptr inbounds [4 x i8], ptr %.val112, i64 %indvars.iv225
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !38 ; 2 uses
  %i.el = icmp slt i32 %i.ek, 1
  br i1 %i.el, label %Cba_FonObj.exit140.thread, label %Cba_FonObj.exit140

Cba_FonObj.exit140:                               ; preds = %.lr.ph187
  %.val.i139 = load ptr, ptr %i.da, align 8, !tbaa !35
  %i.em = zext nneg i32 %i.ek to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.val.i139, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !38 ; 2 uses
  %.not102 = icmp eq i32 %i.eo, 0
  br i1 %.not102, label %Cba_FonObj.exit140.thread, label %bb.am

bb.am:                                            ; preds = %Cba_FonObj.exit140
  tail call void @Cba_NtkCollectDfs_rec(ptr noundef nonnull %0, i32 noundef %i.eo, ptr noundef nonnull %i.c)
  %.val108.pre = load ptr, ptr %i.cy, align 8, !tbaa !35
  br label %Cba_FonObj.exit140.thread

Cba_FonObj.exit140.thread:                        ; preds = %.lr.ph187, %bb.am, %Cba_FonObj.exit140
  %.val108 = phi ptr [ %.val108256, %.lr.ph187 ], [ %.val108.pre, %bb.am ], [ %.val108256, %Cba_FonObj.exit140 ] ; 4 uses
  %indvars.iv.next226 = add nsw i64 %indvars.iv225, 1 ; 2 uses
  %i.ep = getelementptr [4 x i8], ptr %.val108, i64 %i.ec
  %i.eq = getelementptr i8, ptr %i.ep, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !38
  %i.es = sext i32 %i.er to i64
  %i.et = icmp slt i64 %indvars.iv.next226, %i.es
  br i1 %i.et, label %.lr.ph187, label %.critedge12.loopexit, !llvm.loop !113

.critedge12.loopexit:                             ; preds = %Cba_FonObj.exit140.thread
  %.val119.pre = load i32, ptr %i.n, align 4, !tbaa !52
  br label %.critedge12

.critedge12:                                      ; preds = %.critedge12.loopexit, %bb.al
  %.val119 = phi i32 [ %.val119.pre, %.critedge12.loopexit ], [ %.val119258, %bb.al ] ; 2 uses
  %.val108255 = phi ptr [ %.val108, %.critedge12.loopexit ], [ %.val108254, %bb.al ]
  %.val109252 = phi ptr [ %.val108, %.critedge12.loopexit ], [ %.val109, %bb.al ]
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %i.eu = sext i32 %.val119 to i64
  %i.ev = icmp slt i64 %indvars.iv.next229, %i.eu
  br i1 %i.ev, label %bb.al, label %.critedge10.preheader.loopexit, !llvm.loop !114

bb.an:                                            ; preds = %.lr.ph193, %Vec_IntPush.exit148
  %indvars.iv233 = phi i64 [ 0, %.lr.ph193 ], [ %indvars.iv.next234, %Vec_IntPush.exit148 ] ; 2 uses
  %indvars.iv231 = phi i64 [ %i.dz, %.lr.ph193 ], [ %indvars.iv.next232, %Vec_IntPush.exit148 ] ; 7 uses
  %storemerge199 = phi ptr [ %.promoted198, %.lr.ph193 ], [ %storemerge200, %Vec_IntPush.exit148 ] ; 6 uses
  %spec.select.sink.i145197 = phi i32 [ %.promoted195, %.lr.ph193 ], [ %spec.select.sink.i145196, %Vec_IntPush.exit148 ] ; 3 uses
  %.val128 = load ptr, ptr %i.dy, align 8, !tbaa !35
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.val128, i64 %indvars.iv233
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !38
  %i.ey = trunc nsw i64 %indvars.iv231 to i32
  %i.ez = icmp eq i32 %spec.select.sink.i145197, %i.ey
  br i1 %i.ez, label %bb.ao, label %Vec_IntPush.exit148

bb.ao:                                            ; preds = %bb.an
  %i.fa = icmp slt i64 %indvars.iv231, 16
  br i1 %i.fa, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %.not9.i.i146 = icmp eq ptr %storemerge199, null
  br i1 %.not9.i.i146, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fb = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge199, i64 noundef 64) #29
  br label %Vec_IntPush.exit148

bb.ar:                                            ; preds = %bb.ap
  %i.fc = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntPush.exit148

bb.as:                                            ; preds = %bb.ao
  %i.fd = icmp samesign ult i64 %indvars.iv231, 1073741823
  %indvars.iv231.tr = trunc i64 %indvars.iv231 to i32
  %i.fe = shl i32 %indvars.iv231.tr, 1
  %spec.select.i141 = select i1 %i.fd, i32 %i.fe, i32 2147483647 ; 4 uses
  %i.ff = sext i32 %spec.select.i141 to i64
  %.not.i9.i142 = icmp samesign ult i64 %indvars.iv231, %i.ff
  br i1 %.not.i9.i142, label %bb.at, label %Vec_IntPush.exit148

bb.at:                                            ; preds = %bb.as
  %.not9.i10.i143 = icmp eq ptr %storemerge199, null
  %i.fg = zext nneg i32 %spec.select.i141 to i64
  %i.fh = shl nuw nsw i64 %i.fg, 2                ; 2 uses
  br i1 %.not9.i10.i143, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fi = tail call ptr @realloc(ptr noundef nonnull %storemerge199, i64 noundef %i.fh) #29
  br label %Vec_IntPush.exit148

bb.av:                                            ; preds = %bb.at
  %i.fj = tail call noalias ptr @malloc(i64 noundef %i.fh) #28
  br label %Vec_IntPush.exit148

Vec_IntPush.exit148:                              ; preds = %bb.ar, %bb.aq, %bb.av, %bb.au, %bb.an, %bb.as
  %storemerge200 = phi ptr [ %storemerge199, %bb.an ], [ %storemerge199, %bb.as ], [ %i.fc, %bb.ar ], [ %i.fb, %bb.aq ], [ %i.fi, %bb.au ], [ %i.fj, %bb.av ] ; 3 uses
  %spec.select.sink.i145196 = phi i32 [ %spec.select.sink.i145197, %bb.an ], [ %spec.select.sink.i145197, %bb.as ], [ 16, %bb.ar ], [ 16, %bb.aq ], [ %spec.select.i141, %bb.au ], [ %spec.select.i141, %bb.av ] ; 2 uses
  %indvars.iv.next232 = add nsw i64 %indvars.iv231, 1 ; 2 uses
  %i.fk = getelementptr inbounds [4 x i8], ptr %storemerge200, i64 %indvars.iv231
  store i32 %i.ex, ptr %i.fk, align 4, !tbaa !38
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1 ; 2 uses
  %.val117 = load i32, ptr %i.br, align 4, !tbaa !52
  %i.fl = sext i32 %.val117 to i64
  %i.fm = icmp slt i64 %indvars.iv.next234, %i.fl
  br i1 %i.fm, label %bb.an, label %.critedge10..critedge14_crit_edge, !llvm.loop !115

.critedge10..critedge14_crit_edge:                ; preds = %Vec_IntPush.exit148
  %i.fn = trunc nsw i64 %indvars.iv.next232 to i32 ; 2 uses
  store i32 %i.fn, ptr %i.e, align 4, !tbaa !52
  store i32 %spec.select.sink.i145196, ptr %i.c, align 8
  store ptr %storemerge200, ptr %i.i, align 8
  br label %.critedge14

.critedge14:                                      ; preds = %.critedge10..critedge14_crit_edge, %.critedge10.preheader
  %.val104 = phi i32 [ %i.fn, %.critedge10..critedge14_crit_edge ], [ %.val104.pre, %.critedge10.preheader ] ; 5 uses
  %.val123 = load i32, ptr %i.a, align 4, !tbaa !29
  %i.fo = add nsw i32 %.val123, -1
  %.not = icmp eq i32 %.val104, %i.fo
  br i1 %.not, label %bb.be, label %bb.aw

bb.aw:                                            ; preds = %.critedge14
  %i.fp = tail call ptr @Abc_FrameReadFlag(ptr noundef nonnull @.str.41) #27
  %.not101 = icmp eq ptr %i.fp, null
  br i1 %.not101, label %bb.ax, label %bb.be

bb.ax:                                            ; preds = %bb.aw
  %.val122 = load i32, ptr %i.a, align 4, !tbaa !29 ; 5 uses
  %i.fq = add nsw i32 %.val122, -1
  %or.cond.i.i.i = icmp ult i32 %i.fq, 15
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i32 16, i32 %.val122 ; 2 uses
  %.not.i.i.i149 = icmp eq i32 %spec.store.select.i.i.i, 0
  br i1 %.not.i.i.i149, label %Vec_IntStartFull.exit.i, label %Vec_IntAlloc.exit.i.i

Vec_IntAlloc.exit.i.i:                            ; preds = %bb.ax
  %i.fr = sext i32 %spec.store.select.i.i.i to i64
  %i.fs = shl nsw i64 %i.fr, 2
  %i.ft = tail call noalias ptr @malloc(i64 noundef %i.fs) #28 ; 3 uses
  %.not.i.i150 = icmp eq ptr %i.ft, null
  br i1 %.not.i.i150, label %Vec_IntStartFull.exit.i, label %bb.ay

bb.ay:                                            ; preds = %Vec_IntAlloc.exit.i.i
  %i.fu = sext i32 %.val122 to i64
  %i.fv = shl nsw i64 %i.fu, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ft, i8 -1, i64 %i.fv, i1 false)
  br label %Vec_IntStartFull.exit.i

Vec_IntStartFull.exit.i:                          ; preds = %bb.ay, %Vec_IntAlloc.exit.i.i, %bb.ax
  %i.fw = phi ptr [ %i.ft, %bb.ay ], [ null, %Vec_IntAlloc.exit.i.i ], [ null, %bb.ax ] ; 8 uses
  %i.fx = icmp sgt i32 %.val104, 0
  br i1 %i.fx, label %.lr.ph.i, label %.critedge.preheader.i

.lr.ph.i:                                         ; preds = %Vec_IntStartFull.exit.i
  %.val24.i = load ptr, ptr %i.i, align 8, !tbaa !35 ; 5 uses
  %i.fy = zext nneg i32 %.val104 to i64           ; 2 uses
  %xtraiter = and i64 %i.fy, 3                    ; 3 uses
  %i.fz = icmp ult i32 %.val104, 4
  br i1 %i.fz, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.fy, 2147483644
  br label %bb.ba

.critedge.preheader.i.loopexit.unr-lcssa:         ; preds = %bb.ba
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.preheader.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %.critedge.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod280 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod280)
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.az ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.az ]
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.val24.i, i64 %indvars.iv.i.epil
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !38
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.gc
  %i.ge = trunc nuw nsw i64 %indvars.iv.i.epil to i32
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !38
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge.preheader.i, label %bb.az, !llvm.loop !116

.critedge.preheader.i:                            ; preds = %.critedge.preheader.i.loopexit.unr-lcssa, %bb.az, %Vec_IntStartFull.exit.i
  %i.gf = icmp sgt i32 %.val122, 1
  br i1 %i.gf, label %.lr.ph33.i, label %.critedge2.i

.lr.ph33.i:                                       ; preds = %.critedge.preheader.i
  %wide.trip.count.i = zext nneg i32 %.val122 to i64
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ba, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.ba ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.ba ]
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %.val24.i, i64 %indvars.iv.i
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !38
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.gi
  %i.gk = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.gk, ptr %i.gj, align 4, !tbaa !38
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.val24.i, i64 %indvars.iv.next.i
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !38
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.gn
  %i.gp = trunc nuw nsw i64 %indvars.iv.next.i to i32
  store i32 %i.gp, ptr %i.go, align 4, !tbaa !38
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %.val24.i, i64 %indvars.iv.next.i.1
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !38
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.gs
  %i.gu = trunc nuw nsw i64 %indvars.iv.next.i.1 to i32
  store i32 %i.gu, ptr %i.gt, align 4, !tbaa !38
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %.val24.i, i64 %indvars.iv.next.i.2
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !38
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.gx
  %i.gz = trunc nuw nsw i64 %indvars.iv.next.i.2 to i32
  store i32 %i.gz, ptr %i.gy, align 4, !tbaa !38
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.critedge.preheader.i.loopexit.unr-lcssa, label %bb.ba, !llvm.loop !105

bb.bb:                                            ; preds = %.critedge.i, %.lr.ph33.i
  %indvars.iv36.i = phi i64 [ 1, %.lr.ph33.i ], [ %indvars.iv.next37.i, %.critedge.i ] ; 3 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %indvars.iv36.i
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !38
  %i.hc = icmp eq i32 %i.hb, -1
  br i1 %i.hc, label %Vec_IntFree.exit.i, label %.critedge.i

Vec_IntFree.exit.i:                               ; preds = %bb.bb
  %i.hd = trunc nuw nsw i64 %indvars.iv36.i to i32
  br label %Vec_IntFree.exit28.sink.split.i

.critedge.i:                                      ; preds = %bb.bb
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next37.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Vec_IntFree.exit28.sink.split.i, label %bb.bb, !llvm.loop !106

.critedge2.i:                                     ; preds = %.critedge.preheader.i
  %.not.i27.i = icmp eq ptr %i.fw, null
  br i1 %.not.i27.i, label %Cba_NtkFindMissing.exit, label %Vec_IntFree.exit28.sink.split.i

Vec_IntFree.exit28.sink.split.i:                  ; preds = %.critedge.i, %.critedge2.i, %Vec_IntFree.exit.i
  %.021.ph.i = phi i32 [ %i.hd, %Vec_IntFree.exit.i ], [ -1, %.critedge2.i ], [ -1, %.critedge.i ]
  tail call void @free(ptr noundef nonnull %i.fw) #27
  br label %Cba_NtkFindMissing.exit

Cba_NtkFindMissing.exit:                          ; preds = %.critedge2.i, %Vec_IntFree.exit28.sink.split.i
  %.021.i = phi i32 [ -1, %.critedge2.i ], [ %.021.ph.i, %Vec_IntFree.exit28.sink.split.i ] ; 3 uses
  %.val114 = load ptr, ptr %0, align 8, !tbaa !41
  %i.he = getelementptr i8, ptr %0, i64 12
  %.val115 = load i32, ptr %i.he, align 4, !tbaa !67
  %i.hf = getelementptr i8, ptr %.val114, i64 16
  %.val114.val = load ptr, ptr %i.hf, align 8, !tbaa !64
  %i.hg = tail call ptr @Abc_NamStr(ptr noundef %.val114.val, i32 noundef %.val115) #27
  %.val121 = load i32, ptr %i.a, align 4, !tbaa !29
  %i.hh = add nsw i32 %.val121, -1
  %i.hi = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, ptr noundef %i.hg, i32 noundef %.val104, i32 noundef %i.hh) ; 0 uses
  %i.hj = icmp sgt i32 %.021.i, 0
  br i1 %i.hj, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %Cba_NtkFindMissing.exit
  %i.hk = getelementptr i8, ptr %0, i64 128
  %.val107 = load ptr, ptr %i.hk, align 8, !tbaa !35
  %i.hl = zext nneg i32 %.021.i to i64
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.val107, i64 %i.hl
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !38
  %i.ho = tail call fastcc ptr @Cba_FonNameStr(ptr noundef nonnull %0, i32 noundef %i.hn)
end_hunk_0
begin_hunk_1_@Cba_ManInsertGroup:bb.a
bb.db:                                            ; preds = %bb.da
  %.val22.i115.i.i = load ptr, ptr %i.px, align 8, !tbaa !35
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %.val22.i115.i.i, i64 %indvars.iv.i110.i.i
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !38 ; 2 uses
  %.not.i116.i.i = icmp eq i32 %i.qg, 0
  br i1 %.not.i116.i.i, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %.val24.i117.i.i = load ptr, ptr %i.py, align 8, !tbaa !35
  %i.qh = zext nneg i32 %i.qa to i64
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %.val24.i117.i.i, i64 %i.qh
  store i32 %i.qg, ptr %i.qi, align 4, !tbaa !38
  %.val19.pre.i118.i.i = load i32, ptr %i.da, align 4, !tbaa !52
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db, %bb.da, %bb.cz
  %.val19.i112.i.i = phi i32 [ %.val1928.i109.i.i, %bb.cz ], [ %.val1928.i109.i.i, %bb.da ], [ %.val1928.i109.i.i, %bb.db ], [ %.val19.pre.i118.i.i, %bb.dc ] ; 2 uses
  %indvars.iv.next.i113.i.i = add nuw nsw i64 %indvars.iv.i110.i.i, 1 ; 2 uses
  %i.qj = sext i32 %.val19.i112.i.i to i64
  %i.qk = icmp slt i64 %indvars.iv.next.i113.i.i, %i.qj
  br i1 %i.qk, label %bb.cz, label %Vec_IntRemapArray.exit122.i.i, !llvm.loop !201

Vec_IntRemapArray.exit122.i.i:                    ; preds = %bb.dd, %Vec_IntFill.exit.i105.i.i, %Vec_IntRemapArray.exit101.i.i
  %i.ql = getelementptr inbounds nuw i8, ptr %i.bw, i64 232 ; 2 uses
  %i.qm = getelementptr i8, ptr %i.ap, i64 236    ; 2 uses
  %.val7.i.i.i = load i32, ptr %i.qm, align 4, !tbaa !52
  %i.qn = icmp sgt i32 %.val7.i.i.i, 0
  br i1 %i.qn, label %.lr.ph.i123.i.i, label %Vec_IntAppend.exit.i.i

.lr.ph.i123.i.i:                                  ; preds = %Vec_IntRemapArray.exit122.i.i
  %i.qo = getelementptr i8, ptr %i.ap, i64 240
  %i.qp = getelementptr inbounds nuw i8, ptr %i.bw, i64 236 ; 3 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.bw, i64 240 ; 4 uses
  br label %bb.de

bb.de:                                            ; preds = %Vec_IntPush.exit.i.i.i, %.lr.ph.i123.i.i
  %indvars.iv.i124.i.i = phi i64 [ 0, %.lr.ph.i123.i.i ], [ %indvars.iv.next.i125.i.i, %Vec_IntPush.exit.i.i.i ] ; 2 uses
  %.val6.i.i.i = load ptr, ptr %i.qo, align 8, !tbaa !35
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %.val6.i.i.i, i64 %indvars.iv.i124.i.i
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !38
  %i.qt = load i32, ptr %i.qp, align 4, !tbaa !52 ; 7 uses
  %i.qu = load i32, ptr %i.ql, align 8, !tbaa !53
  %i.qv = icmp eq i32 %i.qt, %i.qu
  br i1 %i.qv, label %bb.df, label %.Vec_IntPush.exit_crit_edge.i.i.i

.Vec_IntPush.exit_crit_edge.i.i.i:                ; preds = %bb.de
  %.pre.i.i.i = load ptr, ptr %i.qq, align 8, !tbaa !35
  br label %Vec_IntPush.exit.i.i.i

bb.df:                                            ; preds = %bb.de
  %i.qw = icmp slt i32 %i.qt, 16
  br i1 %i.qw, label %bb.dg, label %bb.dj

bb.dg:                                            ; preds = %bb.df
  %i.qx = load ptr, ptr %i.qq, align 8, !tbaa !35 ; 2 uses
  %.not9.i.i.i127.i.i = icmp eq ptr %i.qx, null
  br i1 %.not9.i.i.i127.i.i, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.qy = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.qx, i64 noundef 64) #29
  br label %Vec_IntGrow.exit11.sink.split.i.i.i.i

bb.di:                                            ; preds = %bb.dg
  %i.qz = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i.i.i.i

bb.dj:                                            ; preds = %bb.df
  %i.ra = icmp samesign ult i32 %i.qt, 1073741823
  %i.rb = shl nuw nsw i32 %i.qt, 1
  %spec.select.i.i.i.i = select i1 %i.ra, i32 %i.rb, i32 2147483647 ; 4 uses
  %.not.i9.i.i.i.i = icmp samesign ult i32 %i.qt, %spec.select.i.i.i.i
  %.pre10.i.i.i = load ptr, ptr %i.qq, align 8, !tbaa !35 ; 3 uses
  br i1 %.not.i9.i.i.i.i, label %bb.dk, label %Vec_IntPush.exit.i.i.i

bb.dk:                                            ; preds = %bb.dj
  %.not9.i10.i.i.i.i = icmp eq ptr %.pre10.i.i.i, null
  %i.rc = zext nneg i32 %spec.select.i.i.i.i to i64
  %i.rd = shl nuw nsw i64 %i.rc, 2                ; 2 uses
  br i1 %.not9.i10.i.i.i.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.re = call ptr @realloc(ptr noundef nonnull %.pre10.i.i.i, i64 noundef %i.rd) #29
  br label %Vec_IntGrow.exit11.sink.split.i.i.i.i

bb.dm:                                            ; preds = %bb.dk
  %i.rf = call noalias ptr @malloc(i64 noundef %i.rd) #28
  br label %Vec_IntGrow.exit11.sink.split.i.i.i.i

Vec_IntGrow.exit11.sink.split.i.i.i.i:            ; preds = %bb.dm, %bb.dl, %bb.di, %bb.dh
  %i.rg = phi ptr [ %i.qz, %bb.di ], [ %i.qy, %bb.dh ], [ %i.re, %bb.dl ], [ %i.rf, %bb.dm ] ; 2 uses
  %spec.select.sink.i.i.i.i = phi i32 [ 16, %bb.di ], [ 16, %bb.dh ], [ %spec.select.i.i.i.i, %bb.dl ], [ %spec.select.i.i.i.i, %bb.dm ]
  store ptr %i.rg, ptr %i.qq, align 8, !tbaa !35
  store i32 %spec.select.sink.i.i.i.i, ptr %i.ql, align 8, !tbaa !53
  %.pre11.i.i.i = load i32, ptr %i.qp, align 4, !tbaa !52
  br label %Vec_IntPush.exit.i.i.i

Vec_IntPush.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit11.sink.split.i.i.i.i, %bb.dj, %.Vec_IntPush.exit_crit_edge.i.i.i
  %i.rh = phi i32 [ %i.qt, %.Vec_IntPush.exit_crit_edge.i.i.i ], [ %i.qt, %bb.dj ], [ %.pre11.i.i.i, %Vec_IntGrow.exit11.sink.split.i.i.i.i ] ; 2 uses
  %i.ri = phi ptr [ %.pre.i.i.i, %.Vec_IntPush.exit_crit_edge.i.i.i ], [ %.pre10.i.i.i, %bb.dj ], [ %i.rg, %Vec_IntGrow.exit11.sink.split.i.i.i.i ]
  %i.rj = add nsw i32 %i.rh, 1
  store i32 %i.rj, ptr %i.qp, align 4, !tbaa !52
  %i.rk = sext i32 %i.rh to i64
  %i.rl = getelementptr inbounds [4 x i8], ptr %i.ri, i64 %i.rk
  store i32 %i.qs, ptr %i.rl, align 4, !tbaa !38
  %indvars.iv.next.i125.i.i = add nuw nsw i64 %indvars.iv.i124.i.i, 1 ; 2 uses
  %.val.i126.i.i = load i32, ptr %i.qm, align 4, !tbaa !52
  %i.rm = sext i32 %.val.i126.i.i to i64
  %i.rn = icmp slt i64 %indvars.iv.next.i125.i.i, %i.rm
  br i1 %i.rn, label %bb.de, label %Vec_IntAppend.exit.i.i, !llvm.loop !202

Vec_IntAppend.exit.i.i:                           ; preds = %Vec_IntPush.exit.i.i.i, %Vec_IntRemapArray.exit122.i.i
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ap, i64 392
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !203 ; 3 uses
  %.not.i28.i = icmp eq ptr %i.rp, null
  br i1 %.not.i28.i, label %Cba_NtkDupAttrs.exit.i, label %bb.dn

bb.dn:                                            ; preds = %Vec_IntAppend.exit.i.i
  %i.rq = getelementptr i8, ptr %i.rp, i64 4      ; 2 uses
  %.val8.i.i.i = load i32, ptr %i.rq, align 4, !tbaa !49 ; 3 uses
  %i.rr = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 6 uses
  %i.rs = add i32 %.val8.i.i.i, -1
  %or.cond.i.i.i.i = icmp ult i32 %i.rs, 7
  %spec.store.select.i.i.i.i = select i1 %or.cond.i.i.i.i, i32 8, i32 %.val8.i.i.i ; 4 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rr, i64 4 ; 2 uses
  store i32 0, ptr %i.rt, align 4, !tbaa !26
  store i32 %spec.store.select.i.i.i.i, ptr %i.rr, align 8, !tbaa !25
  %.not.i.i128.i.i = icmp eq i32 %spec.store.select.i.i.i.i, 0
  br i1 %.not.i.i128.i.i, label %Vec_PtrAlloc.exit.i.i.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ru = sext i32 %spec.store.select.i.i.i.i to i64
  %i.rv = shl nsw i64 %i.ru, 3
  %i.rw = call noalias ptr @malloc(i64 noundef %i.rv) #28
  br label %Vec_PtrAlloc.exit.i.i.i

Vec_PtrAlloc.exit.i.i.i:                          ; preds = %bb.do, %bb.dn
  %.promoted16.i.i.i = phi ptr [ %i.rw, %bb.do ], [ null, %bb.dn ] ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rr, i64 8 ; 2 uses
  store ptr %.promoted16.i.i.i, ptr %i.rx, align 8, !tbaa !8
  %i.ry = icmp sgt i32 %.val8.i.i.i, 0
  br i1 %i.ry, label %.lr.ph.i129.i.i, label %Cba_NtkDupAttrs.exit.i

.lr.ph.i129.i.i:                                  ; preds = %Vec_PtrAlloc.exit.i.i.i
  %i.rz = getelementptr i8, ptr %i.rp, i64 8
  br label %bb.dp

bb.dp:                                            ; preds = %Vec_PtrPush.exit.i.i.i, %.lr.ph.i129.i.i
  %indvars.iv19.i.i.i = phi i64 [ 0, %.lr.ph.i129.i.i ], [ %indvars.iv.next20.i.i.i, %Vec_PtrPush.exit.i.i.i ] ; 7 uses
  %storemerge17.i.i.i = phi ptr [ %.promoted16.i.i.i, %.lr.ph.i129.i.i ], [ %storemerge18.i.i.i, %Vec_PtrPush.exit.i.i.i ] ; 6 uses
  %spec.select.sink.i15.i.i.i = phi i32 [ %spec.store.select.i.i.i.i, %.lr.ph.i129.i.i ], [ %spec.select.sink.i14.i.i.i, %Vec_PtrPush.exit.i.i.i ] ; 4 uses
  %.val9.i.i.i = load ptr, ptr %i.rz, align 8, !tbaa !204
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %.val9.i.i.i, i64 %indvars.iv19.i.i.i
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !12 ; 3 uses
  %i.sc = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 4 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sb, i64 4
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !26 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sc, i64 4
  store i32 %i.se, ptr %i.sf, align 4, !tbaa !26
  %i.sg = load i32, ptr %i.sb, align 8, !tbaa !25 ; 3 uses
  store i32 %i.sg, ptr %i.sc, align 8, !tbaa !25
  %.not.i10.i.i.i = icmp eq i32 %i.sg, 0
  br i1 %.not.i10.i.i.i, label %Vec_PtrDup.exit.i.i.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.sh = sext i32 %i.sg to i64
  %i.si = shl nsw i64 %i.sh, 3
  %i.sj = call noalias ptr @malloc(i64 noundef %i.si) #28
  br label %Vec_PtrDup.exit.i.i.i

Vec_PtrDup.exit.i.i.i:                            ; preds = %bb.dq, %bb.dp
  %i.sk = phi ptr [ %i.sj, %bb.dq ], [ null, %bb.dp ] ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  store ptr %i.sk, ptr %i.sl, align 8, !tbaa !8
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !8
  %i.so = sext i32 %i.se to i64
  %i.sp = shl nsw i64 %i.so, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.sk, ptr align 8 %i.sn, i64 %i.sp, i1 false)
  %i.sq = trunc nsw i64 %indvars.iv19.i.i.i to i32
  %i.sr = icmp eq i32 %spec.select.sink.i15.i.i.i, %i.sq
  br i1 %i.sr, label %bb.dr, label %Vec_PtrPush.exit.i.i.i

bb.dr:                                            ; preds = %Vec_PtrDup.exit.i.i.i
  %i.ss = icmp samesign ult i64 %indvars.iv19.i.i.i, 16
  br i1 %i.ss, label %bb.ds, label %bb.dv

bb.ds:                                            ; preds = %bb.dr
  %.not9.i.i.i134.i.i = icmp eq ptr %storemerge17.i.i.i, null
  br i1 %.not9.i.i.i134.i.i, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.st = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge17.i.i.i, i64 noundef 128) #29
  br label %Vec_PtrPush.exit.i.i.i

bb.du:                                            ; preds = %bb.ds
  %i.su = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #28
  br label %Vec_PtrPush.exit.i.i.i

bb.dv:                                            ; preds = %bb.dr
  %i.sv = icmp samesign ult i64 %indvars.iv19.i.i.i, 1073741823
  %i.sw = shl i32 %spec.select.sink.i15.i.i.i, 1
  %spec.select.i.i133.i.i = select i1 %i.sv, i32 %i.sw, i32 2147483647 ; 4 uses
  %i.sx = sext i32 %spec.select.i.i133.i.i to i64
  %.not.i10.i.i.i.i = icmp samesign ult i64 %indvars.iv19.i.i.i, %i.sx
  br i1 %.not.i10.i.i.i.i, label %bb.dw, label %Vec_PtrPush.exit.i.i.i

bb.dw:                                            ; preds = %bb.dv
  %.not9.i11.i.i.i.i = icmp eq ptr %storemerge17.i.i.i, null
  %i.sy = zext nneg i32 %spec.select.i.i133.i.i to i64
  %i.sz = shl nuw nsw i64 %i.sy, 3                ; 2 uses
  br i1 %.not9.i11.i.i.i.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.ta = call ptr @realloc(ptr noundef nonnull %storemerge17.i.i.i, i64 noundef %i.sz) #29
  br label %Vec_PtrPush.exit.i.i.i

bb.dy:                                            ; preds = %bb.dw
  %i.tb = call noalias ptr @malloc(i64 noundef %i.sz) #28
  br label %Vec_PtrPush.exit.i.i.i

Vec_PtrPush.exit.i.i.i:                           ; preds = %bb.dy, %bb.dx, %bb.dv, %bb.du, %bb.dt, %Vec_PtrDup.exit.i.i.i
  %storemerge18.i.i.i = phi ptr [ %storemerge17.i.i.i, %Vec_PtrDup.exit.i.i.i ], [ %storemerge17.i.i.i, %bb.dv ], [ %i.su, %bb.du ], [ %i.st, %bb.dt ], [ %i.ta, %bb.dx ], [ %i.tb, %bb.dy ] ; 3 uses
  %spec.select.sink.i14.i.i.i = phi i32 [ %spec.select.sink.i15.i.i.i, %Vec_PtrDup.exit.i.i.i ], [ %spec.select.sink.i15.i.i.i, %bb.dv ], [ 16, %bb.du ], [ 16, %bb.dt ], [ %spec.select.i.i133.i.i, %bb.dx ], [ %spec.select.i.i133.i.i, %bb.dy ] ; 2 uses
  %indvars.iv.next20.i.i.i = add nuw nsw i64 %indvars.iv19.i.i.i, 1 ; 3 uses
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %storemerge18.i.i.i, i64 %indvars.iv19.i.i.i
  store ptr %i.sc, ptr %i.tc, align 8, !tbaa !12
  %.val.i132.i.i = load i32, ptr %i.rq, align 4, !tbaa !49
  %i.td = sext i32 %.val.i132.i.i to i64
  %i.te = icmp slt i64 %indvars.iv.next20.i.i.i, %i.td
  br i1 %i.te, label %bb.dp, label %..critedge_crit_edge.i.i.i, !llvm.loop !205

..critedge_crit_edge.i.i.i:                       ; preds = %Vec_PtrPush.exit.i.i.i
  %i.tf = trunc nsw i64 %indvars.iv.next20.i.i.i to i32
  store i32 %i.tf, ptr %i.rt, align 4, !tbaa !26
  store i32 %spec.select.sink.i14.i.i.i, ptr %i.rr, align 8
  store ptr %storemerge18.i.i.i, ptr %i.rx, align 8
  br label %Cba_NtkDupAttrs.exit.i

Cba_NtkDupAttrs.exit.i:                           ; preds = %..critedge_crit_edge.i.i.i, %Vec_PtrAlloc.exit.i.i.i, %Vec_IntAppend.exit.i.i
  %i.tg = phi ptr [ null, %Vec_IntAppend.exit.i.i ], [ %i.rr, %Vec_PtrAlloc.exit.i.i.i ], [ %i.rr, %..critedge_crit_edge.i.i.i ]
  %i.th = getelementptr inbounds nuw i8, ptr %i.bw, i64 392
  store ptr %i.tg, ptr %i.th, align 8, !tbaa !203
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val21.i = load i32, ptr %i.v, align 4, !tbaa !26
  %i.ti = sext i32 %.val21.i to i64
  %.not.not.i = icmp slt i64 %indvars.iv.next.i, %i.ti
  br i1 %.not.not.i, label %Cba_ManNtk.exit.i, label %Cba_ManDup.exit, !llvm.loop !206

Cba_ManDup.exit:                                  ; preds = %Cba_NtkDupAttrs.exit.i, %Cba_ManRoot.exit9
  %i.tj = getelementptr i8, ptr %i.aj, i64 1564
  %.val.i = load i32, ptr %i.tj, align 4, !tbaa !26
  %i.tk = add nsw i32 %.val.i, -1
  %i.tl = getelementptr inbounds nuw i8, ptr %i.aj, i64 1552
  store i32 %i.tk, ptr %i.tl, align 8, !tbaa !79
  ret ptr %i.aj
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @Cba_FonRangeSize(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #7 {
bb.a:
  %.not = icmp sgt i32 %1, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !41
  %i.a = getelementptr i8, ptr %.val, i64 24
  %.val.val = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.b = xor i32 %1, -1
  %i.c = tail call ptr @Abc_NamStr(ptr noundef %.val.val, i32 noundef range(i32 -2147483648, 2147483647) %i.b) #27
  %i.d = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.c, ptr noundef null, i32 noundef 10) #27, !inline_history !84
  %i.e = trunc i64 %i.d to i32
  br label %Cba_NtkRangeSize.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 284        ; 3 uses
  %.val.i.i = load i32, ptr %i.f, align 4, !tbaa !52 ; 4 uses
  %i.g = icmp slt i32 %.val.i.i, 1
  br i1 %i.g, label %Cba_NtkRangeSize.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.i = add nuw nsw i32 %1, 1                    ; 4 uses
  %.not.i.not.i.i.i = icmp samesign ult i32 %1, %.val.i.i
  br i1 %.not.i.not.i.i.i, label %Cba_FonRange.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.h, align 8, !tbaa !53   ; 4 uses
  %i.k = shl nsw i32 %i.j, 1                      ; 2 uses
  %.not.i.i.i = icmp slt i32 %1, %i.k
  br i1 %.not.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35   ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.m, null
  %i.n = zext nneg i32 %i.i to i64
  %i.o = shl nuw nsw i64 %i.n, 2                  ; 2 uses
  br i1 %.not9.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr @realloc(ptr noundef nonnull %i.m, i64 noundef %i.o) #29
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.o) #28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %i.p, %bb.g ], [ %i.q, %bb.h ]
  store ptr %i.r, ptr %i.l, align 8, !tbaa !35
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i

bb.j:                                             ; preds = %bb.e
  %.not.i.i.not.i.i.i = icmp sgt i32 %i.j, %1
  br i1 %.not.i.i.not.i.i.i, label %Vec_IntGrow.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = icmp slt i32 %i.j, 1073741823
  %spec.select.i.i.i.i = select i1 %i.s, i32 %i.k, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i.i = icmp slt i32 %i.j, %spec.select.i.i.i.i
  br i1 %.not.i22.i.i.i.i, label %bb.l, label %Vec_IntGrow.exit.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !35   ; 2 uses
  %.not9.i23.i.i.i.i = icmp eq ptr %i.u, null
  %i.v = zext nneg i32 %spec.select.i.i.i.i to i64
  %i.w = shl nuw nsw i64 %i.v, 2                  ; 2 uses
  br i1 %.not9.i23.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @realloc(ptr noundef nonnull %i.u, i64 noundef %i.w) #29
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.w) #28
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.z = phi ptr [ %i.x, %bb.m ], [ %i.y, %bb.n ]
  store ptr %i.z, ptr %i.t, align 8, !tbaa !35
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i.i:              ; preds = %bb.o, %bb.i
  %spec.select.sink.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %bb.o ], [ %i.i, %bb.i ]
  store i32 %spec.select.sink.i.i.i.i, ptr %i.h, align 8, !tbaa !53
  %.pre.i.i.i = load i32, ptr %i.f, align 4, !tbaa !52
  br label %Vec_IntGrow.exit.i.i.i.i

Vec_IntGrow.exit.i.i.i.i:                         ; preds = %Vec_IntGrow.exit.sink.split.i.i.i.i, %bb.k, %bb.j
  %i.aa = phi i32 [ %.pre.i.i.i, %Vec_IntGrow.exit.sink.split.i.i.i.i ], [ %.val.i.i, %bb.k ], [ %.val.i.i, %bb.j ] ; 2 uses
  %.not3.i.i.i = icmp sgt i32 %i.aa, %1
  br i1 %.not3.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %Vec_IntGrow.exit.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !35
  %i.ad = sext i32 %i.aa to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.i to i64
  %i.ae = shl nsw i64 %i.ad, 2
  %scevgep.i.i.i = getelementptr i8, ptr %i.ac, i64 %i.ae
  %i.af = sub nsw i64 %wide.trip.count.i.i.i.i, %i.ad
  %i.ag = shl nsw i64 %i.af, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i.i, i8 0, i64 %i.ag, i1 false), !tbaa !38
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %Vec_IntGrow.exit.i.i.i.i
  store i32 %i.i, ptr %i.f, align 4, !tbaa !52
  br label %Cba_FonRange.exit

Cba_FonRange.exit:                                ; preds = %bb.d, %._crit_edge.i.i.i.i
  %i.ah = getelementptr i8, ptr %0, i64 288
  %.val.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !35
  %i.ai = zext nneg i32 %1 to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !38
  %i.al = ashr i32 %i.ak, 1                       ; 2 uses
  %.not.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i, label %Cba_NtkRangeSize.exit, label %bb.p

bb.p:                                             ; preds = %Cba_FonRange.exit
  %i.am = load ptr, ptr %0, align 8, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !54
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !58
  %i.ar = shl nsw i32 %i.al, 2
  %i.as = getelementptr i8, ptr %i.aq, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.as, align 8, !tbaa !35
  %i.at = sext i32 %i.ar to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %.val.i.i.i.i, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !61
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !63
  %i.ay = sub nsw i32 %i.av, %i.ax
  %i.az = tail call i32 @llvm.abs.i32(i32 %i.ay, i1 true)
  %i.ba = add nuw nsw i32 %i.az, 1
  br label %Cba_NtkRangeSize.exit

Cba_NtkRangeSize.exit:                            ; preds = %bb.c, %bb.p, %Cba_FonRange.exit, %bb.b
  %i.bb = phi i32 [ %i.e, %bb.b ], [ %i.ba, %bb.p ], [ 1, %Cba_FonRange.exit ], [ 1, %bb.c ]
end_hunk_1
