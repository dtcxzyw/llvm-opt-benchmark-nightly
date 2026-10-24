Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/absUtil?download=true
inline.NumInlined: 79
inline.NumDeleted: 27
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@Gia_VtaConvertFromGla:bb.a
  br i1 %.not38, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = trunc nuw nsw i64 %indvars.iv81 to i32
  %i.bi = or i32 %i.ba, %i.bh
  %i.bj = icmp eq i32 %i.be, %i.bd
  br i1 %i.bj, label %bb.h, label %Vec_IntPush.exit58

bb.h:                                             ; preds = %bb.g
  %i.bk = icmp slt i32 %i.bd, 16
  br i1 %i.bk, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %.not9.i.i56 = icmp eq ptr %i.bc, null
  br i1 %.not9.i.i56, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bc, i64 noundef 64) #14
  br label %Vec_IntGrow.exit11.sink.split.i54

bb.k:                                             ; preds = %bb.i
  %i.bm = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #13
  br label %Vec_IntGrow.exit11.sink.split.i54

bb.l:                                             ; preds = %bb.h
  %i.bn = icmp samesign ult i32 %i.bd, 1073741823
  %i.bo = shl nuw nsw i32 %i.bd, 1
  %spec.select.i51 = select i1 %i.bn, i32 %i.bo, i32 2147483647 ; 4 uses
  %.not.i9.i52 = icmp samesign ult i32 %i.bd, %spec.select.i51
  br i1 %.not.i9.i52, label %bb.m, label %Vec_IntPush.exit58

bb.m:                                             ; preds = %bb.l
  %.not9.i10.i53 = icmp eq ptr %i.bc, null
  %i.bp = zext nneg i32 %spec.select.i51 to i64
  %i.bq = shl nuw nsw i64 %i.bp, 2                ; 2 uses
  br i1 %.not9.i10.i53, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = tail call ptr @realloc(ptr noundef nonnull %i.bc, i64 noundef %i.bq) #14
  br label %Vec_IntGrow.exit11.sink.split.i54

bb.o:                                             ; preds = %bb.m
  %i.bs = tail call noalias ptr @malloc(i64 noundef %i.bq) #13
  br label %Vec_IntGrow.exit11.sink.split.i54

Vec_IntGrow.exit11.sink.split.i54:                ; preds = %bb.n, %bb.o, %bb.j, %bb.k
  %storemerge59 = phi ptr [ %i.bm, %bb.k ], [ %i.bl, %bb.j ], [ %i.br, %bb.n ], [ %i.bs, %bb.o ] ; 2 uses
  %spec.select.sink.i55 = phi i32 [ 16, %bb.k ], [ 16, %bb.j ], [ %spec.select.i51, %bb.n ], [ %spec.select.i51, %bb.o ] ; 2 uses
  store ptr %storemerge59, ptr %i.w, align 8, !tbaa !31
  store i32 %spec.select.sink.i55, ptr %i.t, align 8, !tbaa !32
  br label %Vec_IntPush.exit58

Vec_IntPush.exit58:                               ; preds = %bb.g, %bb.l, %Vec_IntGrow.exit11.sink.split.i54
  %i.bt = phi ptr [ %i.bb, %bb.g ], [ %i.bb, %bb.l ], [ %storemerge59, %Vec_IntGrow.exit11.sink.split.i54 ] ; 3 uses
  %i.bu = phi i32 [ %i.bd, %bb.g ], [ %i.bd, %bb.l ], [ %spec.select.sink.i55, %Vec_IntGrow.exit11.sink.split.i54 ]
  %i.bv = add nsw i32 %i.be, 1                    ; 2 uses
  store i32 %i.bv, ptr %i.u, align 4, !tbaa !33
  %i.bw = sext i32 %i.be to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.bw
  store i32 %i.bi, ptr %i.bx, align 4, !tbaa !10
  %.val41.pre = load i32, ptr %i.b, align 4, !tbaa !33
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %Vec_IntPush.exit58
  %.val41 = phi i32 [ %.val4196, %bb.f ], [ %.val41.pre, %Vec_IntPush.exit58 ] ; 4 uses
  %i.by = phi ptr [ %i.bb, %bb.f ], [ %i.bt, %Vec_IntPush.exit58 ] ; 2 uses
  %i.bz = phi ptr [ %i.bc, %bb.f ], [ %i.bt, %Vec_IntPush.exit58 ] ; 2 uses
  %i.ca = phi i32 [ %i.bd, %bb.f ], [ %i.bu, %Vec_IntPush.exit58 ] ; 2 uses
  %i.cb = phi i32 [ %i.be, %bb.f ], [ %i.bv, %Vec_IntPush.exit58 ] ; 2 uses
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %i.cc = sext i32 %.val41 to i64
  %i.cd = icmp slt i64 %indvars.iv.next82, %i.cc
  br i1 %i.cd, label %bb.f, label %.critedge, !llvm.loop !54

.critedge:                                        ; preds = %bb.p, %.preheader
  %.val4195 = phi i32 [ %.val4194, %.preheader ], [ %.val41, %bb.p ] ; 2 uses
  %i.ce = phi ptr [ %i.av, %.preheader ], [ %i.by, %bb.p ] ; 2 uses
  %i.cf = phi ptr [ %i.aw, %.preheader ], [ %i.bz, %bb.p ] ; 2 uses
  %i.cg = phi i32 [ %i.ax, %.preheader ], [ %i.ca, %bb.p ] ; 2 uses
  %i.ch = phi i32 [ %i.ay, %.preheader ], [ %i.cb, %bb.p ] ; 2 uses
  %.val417289 = phi i32 [ %.val4172, %.preheader ], [ %.val41, %bb.p ] ; 3 uses
  %i.ci = add nuw nsw i32 %.03475, 1              ; 2 uses
  %exitcond86.not = icmp eq i32 %i.ci, %indvars.iv84
  br i1 %exitcond86.not, label %.split.us, label %.preheader, !llvm.loop !55

.split.us:                                        ; preds = %.critedge, %.preheader60
  %.val4193 = phi i32 [ %.val4192, %.preheader60 ], [ %.val4195, %.critedge ]
  %i.cj = phi ptr [ %i.ap, %.preheader60 ], [ %i.ce, %.critedge ]
  %i.ck = phi ptr [ %i.aq, %.preheader60 ], [ %i.cf, %.critedge ]
  %i.cl = phi i32 [ %i.ar, %.preheader60 ], [ %i.cg, %.critedge ]
  %i.cm = phi i32 [ %i.as, %.preheader60 ], [ %i.ch, %.critedge ]
  %.val417288 = phi i32 [ %.val417291, %.preheader60 ], [ %.val417289, %.critedge ]
  %i.cn = phi i32 [ %i.at, %.preheader60 ], [ %.val417289, %.critedge ]
  %indvars.iv.next85 = add nuw i32 %indvars.iv84, 1
  %exitcond87.not = icmp eq i32 %indvars.iv84, %2
  br i1 %exitcond87.not, label %._crit_edge, label %.preheader60, !llvm.loop !56

._crit_edge:                                      ; preds = %.split.us, %Vec_IntPush.exit, %.preheader60.lr.ph, %.preheader61
  ret ptr %i.t
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Gia_FlaConvertToGla_rec(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !35
  %.val.i23 = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %.val.i23 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 12                  ; 2 uses
  %i.i = shl i64 %i.h, 32
  %i.j = ashr exact i64 %i.i, 30
  %i.k = getelementptr inbounds i8, ptr %i.d, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !10
  %i.m = load i32, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %.not24 = icmp eq i32 %i.l, %i.m
  br i1 %.not24, label %Gia_ObjIsRo.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr i8, ptr %2, i64 8
  %i.o = getelementptr i8, ptr %0, i64 16
  %i.p = getelementptr i8, ptr %0, i64 64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Gia_ObjIsRo.exit.thread
  %i.q = phi i32 [ %i.m, %.lr.ph ], [ %i.at, %Gia_ObjIsRo.exit.thread ]
  %i.r = phi ptr [ %i.k, %.lr.ph ], [ %i.ar, %Gia_ObjIsRo.exit.thread ]
  %i.s = phi i64 [ %i.h, %.lr.ph ], [ %i.ao, %Gia_ObjIsRo.exit.thread ]
  %.tr2125 = phi ptr [ %1, %.lr.ph ], [ %i.aj, %Gia_ObjIsRo.exit.thread ] ; 4 uses
  store i32 %i.q, ptr %i.r, align 4, !tbaa !10
  %.val = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.t = shl i64 %i.s, 32
  %i.u = ashr exact i64 %i.t, 30
  %i.v = getelementptr inbounds i8, ptr %.val, i64 %i.u
  store i32 1, ptr %i.v, align 4, !tbaa !10
  %.val17 = load i64, ptr %.tr2125, align 4       ; 3 uses
  %i.w = and i64 %.val17, 2684354559
  %narrow.i.not.i = icmp eq i64 %i.w, 2684354559
  br i1 %narrow.i.not.i, label %Gia_ObjIsRo.exit, label %Gia_ObjIsRo.exit.thread

Gia_ObjIsRo.exit:                                 ; preds = %bb.b
  %i.x = lshr i64 %.val17, 32
  %i.y = trunc nuw i64 %i.x to i32
  %i.z = and i32 %i.y, 536870911
  %.val4.i = load i32, ptr %i.o, align 8, !tbaa !38
  %.val5.i = load ptr, ptr %i.p, align 8, !tbaa !39
  %i.aa = getelementptr i8, ptr %.val5.i, i64 4
  %.val5.val.i = load i32, ptr %i.aa, align 4, !tbaa !33
  %i.ab = sub nsw i32 %.val5.val.i, %.val4.i
  %.not20 = icmp slt i32 %i.z, %i.ab
  br i1 %.not20, label %Gia_ObjIsRo.exit.thread, label %Gia_ObjIsRo.exit._crit_edge

Gia_ObjIsRo.exit.thread:                          ; preds = %bb.b, %Gia_ObjIsRo.exit
  %i.ac = and i64 %.val17, 536870911
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr inbounds [12 x i8], ptr %.tr2125, i64 %i.ad
  tail call void @Gia_FlaConvertToGla_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.ae, ptr noundef nonnull %2)
  %i.af = load i64, ptr %.tr2125, align 4
  %i.ag = lshr i64 %i.af, 32
  %i.ah = and i64 %i.ag, 536870911
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds [12 x i8], ptr %.tr2125, i64 %i.ai ; 2 uses
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !35
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %.val.i to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = sdiv exact i64 %i.an, 12                ; 2 uses
  %i.ap = shl i64 %i.ao, 32
  %i.aq = ashr exact i64 %i.ap, 30
  %i.ar = getelementptr inbounds i8, ptr %i.ak, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !10
  %i.at = load i32, ptr %i.c, align 8, !tbaa !37  ; 2 uses
  %.not = icmp eq i32 %i.as, %i.at
  br i1 %.not, label %Gia_ObjIsRo.exit._crit_edge, label %bb.b

Gia_ObjIsRo.exit._crit_edge:                      ; preds = %Gia_ObjIsRo.exit.thread, %Gia_ObjIsRo.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Gia_FlaConvertToGla(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  tail call void @Gia_ManIncrementTravId(ptr noundef %0) #15
  %i.a = getelementptr i8, ptr %0, i64 32         ; 5 uses
  %.val63 = load ptr, ptr %i.a, align 8, !tbaa !36
  %.val63.fr = freeze ptr %.val63
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = load i32, ptr %i.b, align 8, !tbaa !37   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 3 uses
  store i32 %i.c, ptr %i.e, align 4, !tbaa !10
  %i.f = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 64
  %.val62 = load ptr, ptr %i.g, align 8, !tbaa !39 ; 3 uses
  %i.h = getelementptr i8, ptr %.val62, i64 4     ; 3 uses
  %.not = icmp eq ptr %.val63.fr, null            ; 2 uses
  %.val6183 = load i32, ptr %i.f, align 8, !tbaa !38 ; 4 uses
  %.val62.val84 = load i32, ptr %i.h, align 4, !tbaa !33
  %i.i = icmp sle i32 %.val62.val84, %.val6183
  %or.cond85 = or i1 %i.i, %.not
  br i1 %or.cond85, label %.critedge.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %bb.a
  %i.j = getelementptr i8, ptr %.val62, i64 8
  %.val67.val = load ptr, ptr %i.j, align 8, !tbaa !31
  br label %.lr.ph.split

.critedge.preheader:                              ; preds = %bb.a
  %2 = icmp slt i32 %.val6183, 1
  %brmerge = or i1 %2, %.not
  br i1 %brmerge, label %.critedge2, label %.lr.ph92.split

.lr.ph92:                                         ; preds = %.lr.ph.split
  %3 = icmp sgt i32 %.val61, 0
  br i1 %3, label %.lr.ph92.split, label %.critedge2

.lr.ph92.split:                                   ; preds = %.critedge.preheader, %.lr.ph92
  %.val6989135138 = phi i32 [ %.val6183, %.critedge.preheader ], [ %.val61, %.lr.ph92 ]
  %.val65.val139.in = getelementptr i8, ptr %.val62, i64 8
  %.val65.val139 = load ptr, ptr %.val65.val139.in, align 8, !tbaa !31
  %i.k = getelementptr i8, ptr %1, i64 8
  %.val57 = load ptr, ptr %i.k, align 8, !tbaa !31
  br label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %.lr.ph.split ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.val67.val, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !10
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw i64 %i.n, 32
  %i.p = ashr exact i64 %i.o, 30
  %i.q = getelementptr inbounds i8, ptr %i.e, i64 %i.p
  store i32 %i.c, ptr %i.q, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val61 = load i32, ptr %i.f, align 8, !tbaa !38 ; 4 uses
  %.val62.val = load i32, ptr %i.h, align 4, !tbaa !33
  %i.r = sub nsw i32 %.val62.val, %.val61
  %i.s = sext i32 %i.r to i64
  %.not105 = icmp slt i64 %indvars.iv.next, %i.s
  br i1 %.not105, label %.lr.ph.split, label %.lr.ph92, !llvm.loop !60

bb.b:                                             ; preds = %.lr.ph92.split, %.critedge
  %.val69117 = phi i32 [ %.val6989135138, %.lr.ph92.split ], [ %.val69, %.critedge ] ; 2 uses
  %indvars.iv107 = phi i64 [ 0, %.lr.ph92.split ], [ %indvars.iv.next108, %.critedge ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.val57, i64 %indvars.iv107
  %i.u = load i32, ptr %i.t, align 4, !tbaa !10
  %.not55 = icmp eq i32 %i.u, 0
  br i1 %.not55, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.v = trunc nuw nsw i64 %indvars.iv107 to i32
  %i.w = sub i32 %i.v, %.val69117
  %.val60.val = load i32, ptr %i.h, align 4, !tbaa !33
  %i.x = add i32 %i.w, %.val60.val
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %.val65.val139, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !10
  %i.ab = zext i32 %i.aa to i64
  %i.ac = shl nuw i64 %i.ab, 32
  %i.ad = ashr exact i64 %i.ac, 30
  %i.ae = getelementptr inbounds i8, ptr %i.e, i64 %i.ad
  store i32 %i.c, ptr %i.ae, align 4, !tbaa !10
  %.val69.pre = load i32, ptr %i.f, align 8, !tbaa !38
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c
  %.val69 = phi i32 [ %.val69117, %bb.b ], [ %.val69.pre, %bb.c ] ; 3 uses
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %i.af = sext i32 %.val69 to i64
  %i.ag = icmp slt i64 %indvars.iv.next108, %i.af
  br i1 %i.ag, label %bb.b, label %.critedge2, !llvm.loop !61

.critedge2:                                       ; preds = %.critedge, %.critedge.preheader, %.lr.ph92
  %.val7293 = phi i32 [ %.val61, %.lr.ph92 ], [ %.val6183, %.critedge.preheader ], [ %.val69, %.critedge ] ; 3 uses
  %i.ah = getelementptr i8, ptr %0, i64 24
  %.val = load i32, ptr %i.ah, align 8, !tbaa !30 ; 4 uses
  %i.ai = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #13 ; 6 uses
  %i.aj = add i32 %.val, -1
  %or.cond.i.i = icmp ult i32 %i.aj, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 %spec.store.select.i.i, ptr %i.ai, align 8, !tbaa !32
  %.not.i.i = icmp ne i32 %spec.store.select.i.i, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.al = sext i32 %spec.store.select.i.i to i64
  %i.am = shl nsw i64 %i.al, 2
  %i.an = tail call noalias ptr @malloc(i64 noundef %i.am) #13 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !31
  store i32 %.val, ptr %i.ak, align 4, !tbaa !33
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  %i.ap = sext i32 %.val to i64
  %i.aq = shl nsw i64 %i.ap, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.an, i8 0, i64 %i.aq, i1 false)
  store i32 1, ptr %i.an, align 4, !tbaa !10
  %i.ar = getelementptr i8, ptr %0, i64 72        ; 3 uses
  %.val7394 = load ptr, ptr %i.ar, align 8, !tbaa !64 ; 4 uses
  %i.as = getelementptr i8, ptr %.val7394, i64 4
  %.val73.val95 = load i32, ptr %i.as, align 4, !tbaa !33
  %i.at = icmp sgt i32 %.val73.val95, %.val7293
  br i1 %i.at, label %.lr.ph98.preheader, label %.critedge4

.lr.ph98.preheader:                               ; preds = %.critedge2
  %.val76134 = load ptr, ptr %i.a, align 8, !tbaa !36 ; 2 uses
  %.not52135 = icmp eq ptr %.val76134, null
  br i1 %.not52135, label %.critedge4, label %.lr.ph

.lr.ph98:                                         ; preds = %.lr.ph
  %.val76 = load ptr, ptr %i.a, align 8, !tbaa !36 ; 2 uses
  %.not52 = icmp eq ptr %.val76, null
  br i1 %.not52, label %.critedge4, label %.lr.ph, !llvm.loop !62

.lr.ph:                                           ; preds = %.lr.ph98.preheader, %.lr.ph98
  %.val76138 = phi ptr [ %.val76, %.lr.ph98 ], [ %.val76134, %.lr.ph98.preheader ]
  %.val7397137 = phi ptr [ %.val73, %.lr.ph98 ], [ %.val7394, %.lr.ph98.preheader ]
  %indvars.iv110136 = phi i64 [ %indvars.iv.next111, %.lr.ph98 ], [ 0, %.lr.ph98.preheader ] ; 2 uses
  %i.au = getelementptr i8, ptr %.val7397137, i64 8
  %.val77.val = load ptr, ptr %i.au, align 8, !tbaa !31
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.val77.val, i64 %indvars.iv110136
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !10
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [12 x i8], ptr %.val76138, i64 %i.ax ; 2 uses
  %i.az = load i64, ptr %i.ay, align 4
  %i.ba = and i64 %i.az, 536870911
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = getelementptr inbounds [12 x i8], ptr %i.ay, i64 %i.bb
  tail call void @Gia_FlaConvertToGla_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.bc, ptr noundef nonnull %i.ai)
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110136, 1 ; 2 uses
  %.val72 = load i32, ptr %i.f, align 8, !tbaa !38 ; 3 uses
  %.val73 = load ptr, ptr %i.ar, align 8, !tbaa !64 ; 4 uses
  %i.bd = getelementptr i8, ptr %.val73, i64 4
  %.val73.val = load i32, ptr %i.bd, align 4, !tbaa !33
  %i.be = sub nsw i32 %.val73.val, %.val72
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp slt i64 %indvars.iv.next111, %i.bf
  br i1 %i.bg, label %.lr.ph98, label %..critedge4.loopexit_crit_edge, !llvm.loop !62

..critedge4.loopexit_crit_edge:                   ; preds = %.lr.ph
  br label %.critedge4, !llvm.loop !62

.critedge4:                                       ; preds = %.lr.ph98, %.lr.ph98.preheader, %..critedge4.loopexit_crit_edge, %.critedge2
  %.val71.pre124 = phi ptr [ %.val7394, %.critedge2 ], [ %.val73, %..critedge4.loopexit_crit_edge ], [ %.val7394, %.lr.ph98.preheader ], [ %.val73, %.lr.ph98 ]
  %.val68100 = phi i32 [ %.val7293, %.critedge2 ], [ %.val72, %..critedge4.loopexit_crit_edge ], [ %.val7293, %.lr.ph98.preheader ], [ %.val72, %.lr.ph98 ] ; 2 uses
  %i.bh = icmp sgt i32 %.val68100, 0
  br i1 %i.bh, label %.lr.ph103, label %.critedge6

.lr.ph103:                                        ; preds = %.critedge4
  %i.bi = getelementptr i8, ptr %1, i64 8
  %.val74.pre127 = load ptr, ptr %i.a, align 8, !tbaa !36
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph103, %bb.g
  %.val68130 = phi i32 [ %.val68100, %.lr.ph103 ], [ %.val68, %bb.g ] ; 2 uses
  %.val74 = phi ptr [ %.val74.pre127, %.lr.ph103 ], [ %.val74128, %bb.g ] ; 3 uses
  %.val71 = phi ptr [ %.val71.pre124, %.lr.ph103 ], [ %.val71125, %bb.g ] ; 3 uses
  %indvars.iv113 = phi i64 [ 0, %.lr.ph103 ], [ %indvars.iv.next114, %bb.g ] ; 3 uses
  %i.bj = getelementptr i8, ptr %.val71, i64 4
  %.val71.val = load i32, ptr %i.bj, align 4, !tbaa !33
  %i.bk = trunc nuw nsw i64 %indvars.iv113 to i32
  %i.bl = sub i32 %i.bk, %.val68130
  %i.bm = add i32 %i.bl, %.val71.val
  %i.bn = getelementptr i8, ptr %.val71, i64 8
  %.val75.val = load ptr, ptr %i.bn, align 8, !tbaa !31
  %i.bo = sext i32 %i.bm to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %.val75.val, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !10
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [12 x i8], ptr %.val74, i64 %i.br ; 2 uses
  %.not53 = icmp eq ptr %.val74, null
  br i1 %.not53, label %.critedge6, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val56 = load ptr, ptr %i.bi, align 8, !tbaa !31
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.val56, i64 %indvars.iv113
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !10
  %.not54 = icmp eq i32 %i.bu, 0
  br i1 %.not54, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bv = load i64, ptr %i.bs, align 4
  %i.bw = and i64 %i.bv, 536870911
  %i.bx = sub nsw i64 0, %i.bw
  %i.by = getelementptr inbounds [12 x i8], ptr %i.bs, i64 %i.bx
  tail call void @Gia_FlaConvertToGla_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.by, ptr noundef nonnull %i.ai)
  %.val71.pre = load ptr, ptr %i.ar, align 8, !tbaa !64
  %.val74.pre = load ptr, ptr %i.a, align 8, !tbaa !36
  %.val68.pre = load i32, ptr %i.f, align 8, !tbaa !38
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.val68 = phi i32 [ %.val68130, %bb.e ], [ %.val68.pre, %bb.f ] ; 2 uses
  %.val74128 = phi ptr [ %.val74, %bb.e ], [ %.val74.pre, %bb.f ]
  %.val71125 = phi ptr [ %.val71, %bb.e ], [ %.val71.pre, %bb.f ]
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %i.bz = sext i32 %.val68 to i64
  %i.ca = icmp slt i64 %indvars.iv.next114, %i.bz
  br i1 %i.ca, label %bb.d, label %.critedge6, !llvm.loop !63

.critedge6:                                       ; preds = %bb.d, %bb.g, %.critedge4
  ret ptr %i.ai
}

declare void @Gia_ManIncrementTravId(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Gia_GlaConvertToFla(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val21 = load i32, ptr %i.a, align 8, !tbaa !38 ; 12 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #13 ; 5 uses
  %i.c = add i32 %.val21, -1
  %or.cond.i.i = icmp ult i32 %i.c, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val21 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.b, align 8, !tbaa !32
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.e, align 8, !tbaa !31
  store i32 %.val21, ptr %i.d, align 4, !tbaa !33
  br label %Vec_IntStart.exit

Vec_IntAlloc.exit.i:                              ; preds = %bb.a
  %i.f = sext i32 %spec.store.select.i.i to i64
  %i.g = shl nsw i64 %i.f, 2
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #13 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !31
  store i32 %.val21, ptr %i.d, align 4, !tbaa !33
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %Vec_IntStart.exit, label %bb.b

bb.b:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.j = sext i32 %.val21 to i64
  %i.k = shl nsw i64 %i.j, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.h, i8 0, i64 %i.k, i1 false)
  br label %Vec_IntStart.exit

Vec_IntStart.exit:                                ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.b
  %.val14 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i ], [ null, %Vec_IntAlloc.exit.i ], [ %i.h, %bb.b ] ; 3 uses
  %i.l = icmp sgt i32 %.val21, 0
  br i1 %i.l, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_IntStart.exit
  %i.m = getelementptr i8, ptr %0, i64 32
  %.val18 = load ptr, ptr %i.m, align 8, !tbaa !36
  %.not = icmp eq ptr %.val18, null
  br i1 %.not, label %.critedge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.n = getelementptr i8, ptr %1, i64 8
  %i.o = getelementptr i8, ptr %0, i64 64
  %.val17 = load ptr, ptr %i.o, align 8, !tbaa !39 ; 2 uses
  %i.p = getelementptr i8, ptr %.val17, i64 8
  %.val19.val = load ptr, ptr %i.p, align 8, !tbaa !31 ; 3 uses
  %i.q = getelementptr i8, ptr %.val17, i64 4     ; 3 uses
  %.val = load ptr, ptr %i.n, align 8, !tbaa !31  ; 3 uses
  %.val17.val.pre27 = load i32, ptr %i.q, align 4, !tbaa !33 ; 2 uses
  %i.r = zext nneg i32 %.val21 to i64             ; 2 uses
  %xtraiter = and i64 %i.r, 1
  %i.s = icmp eq i32 %.val21, 1
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.split.new

.lr.ph.split.new:                                 ; preds = %.lr.ph.split
  %unroll_iter = and i64 %i.r, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.split.new
  %.val17.val = phi i32 [ %.val17.val.pre27, %.lr.ph.split.new ], [ %.val17.val28.1, %bb.g ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.new ], [ %indvars.iv.next.1, %bb.g ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.new ], [ %niter.next.1, %bb.g ]
  %i.t = trunc nuw nsw i64 %indvars.iv to i32
end_hunk_0
