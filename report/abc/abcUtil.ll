inline.NumInlined: 908
inline.NumDeleted: 119
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 29
begin_hunk_0_@Abc_NtkLogicMakeSimpleCos:bb.a
  %i.lq = icmp eq i32 %.val249, 4
  %i.lr = lshr i32 %.val246, 12
  %i.ls = icmp eq i32 %i.lr, %i.a
  %or.cond325 = select i1 %i.lq, i1 true, i1 %i.ls
  br i1 %or.cond325, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  %i.lt = tail call ptr @Abc_NtkDupObj(ptr noundef nonnull %0, ptr noundef nonnull %i.ln, i32 noundef 0) #35 ; 2 uses
  %i.lu = getelementptr i8, ptr %i.ln, i64 28     ; 2 uses
  %.val230371 = load i32, ptr %i.lu, align 4, !tbaa !48
  %i.lv = icmp sgt i32 %.val230371, 0
  br i1 %i.lv, label %.lr.ph373, label %.critedge21

.lr.ph373:                                        ; preds = %bb.cc
  %i.lw = getelementptr i8, ptr %i.ln, i64 32
  br label %bb.cd

bb.cd:                                            ; preds = %.lr.ph373, %bb.cd
  %indvars.iv406 = phi i64 [ 0, %.lr.ph373 ], [ %indvars.iv.next407, %bb.cd ] ; 2 uses
  %.val232 = load ptr, ptr %i.ln, align 8, !tbaa !52
  %.val233 = load ptr, ptr %i.lw, align 8, !tbaa !53
  %i.lx = getelementptr i8, ptr %.val232, i64 32
  %.val232.val = load ptr, ptr %i.lx, align 8, !tbaa !54
  %i.ly = getelementptr i8, ptr %.val232.val, i64 8
  %.val232.val.val = load ptr, ptr %i.ly, align 8, !tbaa !26
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %.val233, i64 %indvars.iv406
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !55
  %i.mb = sext i32 %i.ma to i64
  %i.mc = getelementptr inbounds [8 x i8], ptr %.val232.val.val, i64 %i.mb
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !29
  tail call void @Abc_ObjAddFanin(ptr noundef %i.lt, ptr noundef %i.md) #35
  %indvars.iv.next407 = add nuw nsw i64 %indvars.iv406, 1 ; 2 uses
  %.val230 = load i32, ptr %i.lu, align 4, !tbaa !48
  %i.me = sext i32 %.val230 to i64
  %i.mf = icmp slt i64 %indvars.iv.next407, %i.me
  br i1 %i.mf, label %bb.cd, label %.critedge21, !llvm.loop !135

.critedge21:                                      ; preds = %bb.cd, %bb.cc
  %i.mg = add nsw i32 %.0376, 1
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cb, %bb.ca, %bb.bz
  %i.mh = tail call ptr @Abc_NtkCreateNodeBuf(ptr noundef %0, ptr noundef %i.ln) #35 ; 2 uses
  %i.mi = tail call ptr @Abc_ObjName(ptr noundef %i.ln) #35
  %i.mj = tail call ptr @Abc_ObjAssignName(ptr noundef %i.mh, ptr noundef %i.mi, ptr noundef nonnull @.str.5) #35 ; 0 uses
  %i.mk = add nsw i32 %.0178375, 1
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.critedge21
  %.1202 = phi ptr [ %i.lt, %.critedge21 ], [ %i.mh, %bb.ce ]
  %.1179 = phi i32 [ %.0178375, %.critedge21 ], [ %i.mk, %bb.ce ] ; 2 uses
  %.1 = phi i32 [ %i.mg, %.critedge21 ], [ %.0376, %bb.ce ] ; 2 uses
  tail call void @Abc_ObjPatchFanin(ptr noundef nonnull %i.lh, ptr noundef %i.ln, ptr noundef %.1202) #35
  %indvars.iv.next410 = add nuw nsw i64 %indvars.iv409, 1 ; 2 uses
  %exitcond413.not = icmp eq i64 %indvars.iv.next410, %wide.trip.count412
  br i1 %exitcond413.not, label %.critedge19, label %bb.bz, !llvm.loop !136

.critedge19:                                      ; preds = %bb.cf
  %i.ml = add i32 %.1179, %.0191
  %i.mm = add i32 %i.ml, %.1
  br label %.critedge17.thread

.critedge17.thread:                               ; preds = %Abc_NtkIncrementTravId.exit303, %.critedge19, %.critedge17
  %i.mn = phi ptr [ %i.kv, %.critedge19 ], [ %i.kv, %.critedge17 ], [ %i.hv, %Abc_NtkIncrementTravId.exit303 ] ; 2 uses
  %.1192 = phi i32 [ %i.mm, %.critedge19 ], [ %.0191, %.critedge17 ], [ %.0191, %Abc_NtkIncrementTravId.exit303 ]
  %.not.i321 = icmp eq ptr %i.mn, null
  br i1 %.not.i321, label %Vec_PtrFree.exit322, label %bb.cg

bb.cg:                                            ; preds = %.critedge17.thread
  tail call void @free(ptr noundef nonnull %i.mn) #35
  br label %Vec_PtrFree.exit322

Vec_PtrFree.exit322:                              ; preds = %.critedge17.thread, %bb.cg
  ret i32 %.1192
}

declare i32 @Abc_NtkLevel(ptr noundef) local_unnamed_addr #3

declare i32 @Abc_NodeIsConst0(ptr noundef) local_unnamed_addr #3

declare ptr @Abc_NtkCreateNodeConst1(ptr noundef) local_unnamed_addr #3

declare ptr @Abc_NtkCreateNodeConst0(ptr noundef) local_unnamed_addr #3

declare void @Abc_NodeComplementInput(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @Abc_ObjAssignName(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Abc_VecObjPushUniqueOrderByLevel(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !40   ; 11 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26
  %wide.trip.count.i = zext nneg i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.c, !llvm.loop !137

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = icmp eq ptr %i.g, %1
  br i1 %i.h, label %Vec_PtrPushUnique.exit, label %bb.b

._crit_edge.i:                                    ; preds = %bb.b, %bb.a
  %i.i = load i32, ptr %0, align 8, !tbaa !44
  %i.j = icmp eq i32 %i.b, %i.i
  br i1 %i.j, label %bb.d, label %bb.m

bb.d:                                             ; preds = %._crit_edge.i
  %i.k = icmp slt i32 %i.b, 16
  br i1 %i.k, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26   ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not9.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.m, i64 noundef 128) #36
  br label %Vec_PtrGrow.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.o = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #37
  br label %Vec_PtrGrow.exit.i.i

Vec_PtrGrow.exit.i.i:                             ; preds = %bb.g, %bb.f
  %i.p = phi ptr [ %i.n, %bb.f ], [ %i.o, %bb.g ]
  store ptr %i.p, ptr %i.l, align 8, !tbaa !26
  br label %Vec_PtrGrow.exit12.sink.split.i.i

bb.h:                                             ; preds = %bb.d
  %i.q = icmp samesign ult i32 %i.b, 1073741823
  %i.r = shl nuw nsw i32 %i.b, 1
  %spec.select.i.i = select i1 %i.q, i32 %i.r, i32 2147483647 ; 3 uses
  %.not.i10.i.i = icmp samesign ult i32 %i.b, %spec.select.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26   ; 3 uses
  br i1 %.not.i10.i.i, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.h
  %i.u = add nuw i32 %i.b, 1                      ; 2 uses
  store i32 %i.u, ptr %i.a, align 4, !tbaa !40
  %i.v = zext nneg i32 %i.b to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.v
  store ptr %1, ptr %i.w, align 8, !tbaa !29
  br label %.lr.ph.preheader

bb.i:                                             ; preds = %bb.h
  %.not9.i11.i.i = icmp eq ptr %i.t, null
  %i.x = zext nneg i32 %spec.select.i.i to i64
  %i.y = shl nuw nsw i64 %i.x, 3                  ; 2 uses
  br i1 %.not9.i11.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = tail call ptr @realloc(ptr noundef nonnull %i.t, i64 noundef %i.y) #36
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.y) #37
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ab = phi ptr [ %i.z, %bb.j ], [ %i.aa, %bb.k ]
  store ptr %i.ab, ptr %i.s, align 8, !tbaa !26
  br label %Vec_PtrGrow.exit12.sink.split.i.i

Vec_PtrGrow.exit12.sink.split.i.i:                ; preds = %bb.l, %Vec_PtrGrow.exit.i.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.l ], [ 16, %Vec_PtrGrow.exit.i.i ]
  store i32 %spec.select.sink.i.i, ptr %0, align 8, !tbaa !44
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !40
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i, %Vec_PtrGrow.exit12.sink.split.i.i
  %i.ac = phi i32 [ %i.b, %._crit_edge.i ], [ %.pre.i, %Vec_PtrGrow.exit12.sink.split.i.i ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !26
  %i.af = add i32 %i.ac, 1                        ; 2 uses
  store i32 %i.af, ptr %i.a, align 4, !tbaa !40
  %i.ag = sext i32 %i.ac to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ag
  store ptr %1, ptr %i.ah, align 8, !tbaa !29
  %i.ai = icmp sgt i32 %i.ac, 0
  br i1 %i.ai, label %.lr.ph.preheader, label %Vec_PtrPushUnique.exit

.lr.ph.preheader:                                 ; preds = %.thread, %bb.m
  %i.aj = phi i32 [ %i.u, %.thread ], [ %i.af, %bb.m ]
  %i.ak = phi ptr [ %i.s, %.thread ], [ %i.ad, %bb.m ] ; 2 uses
  %i.al = phi i32 [ %i.b, %.thread ], [ %i.ac, %bb.m ]
  %2 = zext nneg i32 %i.al to i64
  %i.am = zext i32 %i.aj to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.n
  %indvars.iv.a = phi i64 [ %i.am, %.lr.ph.preheader ], [ %indvars.iv.next.a, %bb.n ] ; 2 uses
  %indvars.iv = phi i64 [ %2, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.n ] ; 3 uses
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !26 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !29 ; 2 uses
  %i.aq = add i64 %indvars.iv.a, 4294967294
  %3 = and i64 %i.aq, 4294967295                  ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %3
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !29 ; 2 uses
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = and i64 %i.at, -2
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = lshr i32 %i.ax, 12
  %i.az = ptrtoint ptr %i.as to i64
  %i.ba = and i64 %i.az, -2
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = lshr i32 %i.bd, 12
  %.not16 = icmp samesign ugt i32 %i.ay, %i.be
  br i1 %.not16, label %bb.n, label %Vec_PtrPushUnique.exit

bb.n:                                             ; preds = %.lr.ph
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !29
  %i.bf = load ptr, ptr %i.ak, align 8, !tbaa !26
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %3
  store ptr %i.ap, ptr %i.bg, align 8, !tbaa !29
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bh = icmp sgt i64 %indvars.iv, 1
  %indvars.iv.next.a = add nsw i64 %indvars.iv.a, -1
  br i1 %i.bh, label %.lr.ph, label %Vec_PtrPushUnique.exit, !llvm.loop !138

Vec_PtrPushUnique.exit:                           ; preds = %bb.c, %.lr.ph, %bb.n, %bb.m
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @Abc_NodeIsExorType(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 28
  %.val22 = load i32, ptr %i.a, align 4, !tbaa !48
  %.not = icmp eq i32 %.val22, 2
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 20
  %.val25 = load i32, ptr %i.b, align 4
  %i.c = and i32 %.val25, 3072
  %or.cond.not = icmp eq i32 %i.c, 3072
  br i1 %or.cond.not, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %.val29 = load ptr, ptr %0, align 8, !tbaa !52
  %i.d = getelementptr i8, ptr %0, i64 32
  %.val30 = load ptr, ptr %i.d, align 8, !tbaa !53 ; 2 uses
  %i.e = getelementptr i8, ptr %.val29, i64 32
  %.val29.val = load ptr, ptr %i.e, align 8, !tbaa !54
  %.val30.val = load i32, ptr %.val30, align 4, !tbaa !55
  %i.f = getelementptr i8, ptr %.val29.val, i64 8
  %.val29.val.val = load ptr, ptr %i.f, align 8, !tbaa !26 ; 2 uses
  %i.g = sext i32 %.val30.val to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %.val29.val.val, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29   ; 3 uses
  %i.j = getelementptr i8, ptr %.val30, i64 4
  %.val32.val = load i32, ptr %i.j, align 4, !tbaa !55
  %i.k = sext i32 %.val32.val to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %.val29.val.val, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !29   ; 3 uses
  %i.n = getelementptr i8, ptr %i.i, i64 28
  %.val21 = load i32, ptr %i.n, align 4, !tbaa !48
  %.not17 = icmp eq i32 %.val21, 2
  br i1 %.not17, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %i.m, i64 28
  %.val = load i32, ptr %i.o, align 4, !tbaa !48
  %.not18 = icmp eq i32 %.val, 2
  br i1 %.not18, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.i, i64 32
  %.val34 = load ptr, ptr %i.p, align 8, !tbaa !53 ; 2 uses
  %.val34.val = load i32, ptr %.val34, align 4, !tbaa !55
  %i.q = getelementptr i8, ptr %i.m, i64 32
  %.val33 = load ptr, ptr %i.q, align 8, !tbaa !53 ; 2 uses
  %.val33.val = load i32, ptr %.val33, align 4, !tbaa !55
  %.not19 = icmp eq i32 %.val34.val, %.val33.val
  br i1 %.not19, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr i8, ptr %.val34, i64 4
  %.val36.val = load i32, ptr %i.r, align 4, !tbaa !55
  %i.s = getelementptr i8, ptr %.val33, i64 4
  %.val35.val = load i32, ptr %i.s, align 4, !tbaa !55
  %.not20 = icmp eq i32 %.val36.val, %.val35.val
  br i1 %.not20, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr i8, ptr %i.i, i64 20
  %.val24 = load i32, ptr %i.t, align 4
  %i.u = getelementptr i8, ptr %i.m, i64 20
  %.val23 = load i32, ptr %i.u, align 4
  %i.v = xor i32 %.val23, %.val24                 ; 2 uses
  %i.w = and i32 %i.v, 1024
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = lshr i32 %i.v, 11
  %.lobit = and i32 %i.y, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.f, %bb.c, %bb.d, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.a ], [ %.lobit, %bb.h ], [ 0, %bb.d ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Abc_NtkCountMuxes(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val = load i32, ptr %i.c, align 4, !tbaa !40  ; 2 uses
  %i.d = icmp sgt i32 %.val, 0
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %.val11.val = load ptr, ptr %i.e, align 8, !tbaa !26
  %wide.trip.count = zext nneg i32 %.val to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.014 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.e ]  ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %.val11.val, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29   ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.g, i64 20
  %.val12 = load i32, ptr %i.i, align 4
  %i.j = and i32 %.val12, 15
  %.not = icmp eq i32 %i.j, 7
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i32 @Abc_NodeIsMuxType(ptr noundef nonnull %i.g)
  %i.l = add nsw i32 %i.k, %.014
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.1 = phi i32 [ %.014, %bb.b ], [ %i.l, %bb.d ], [ %.014, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !139

.critedge:                                        ; preds = %bb.e, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.e ]
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @Abc_NodeIsMuxControlType(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 44
  %.val10 = load i32, ptr %i.a, align 4, !tbaa !51
  %.not = icmp eq i32 %.val10, 2
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.val13 = load ptr, ptr %0, align 8, !tbaa !52
  %i.b = getelementptr i8, ptr %0, i64 48
  %.val14 = load ptr, ptr %i.b, align 8, !tbaa !57 ; 2 uses
  %i.c = getelementptr i8, ptr %.val13, i64 32
  %.val13.val = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.d = getelementptr i8, ptr %.val13.val, i64 8
  %.val13.val.val = load ptr, ptr %i.d, align 8, !tbaa !26 ; 2 uses
  %i.e = load i32, ptr %.val14, align 4, !tbaa !55
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %.val13.val.val, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val14, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !55
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %.val13.val.val, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !29   ; 3 uses
  %i.n = getelementptr i8, ptr %i.h, i64 44
  %.val9 = load i32, ptr %i.n, align 4, !tbaa !51
  %.not7 = icmp eq i32 %.val9, 1
  br i1 %.not7, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %i.m, i64 44
  %.val = load i32, ptr %i.o, align 4, !tbaa !51
  %.not8 = icmp eq i32 %.val, 1
  br i1 %.not8, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.val17 = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.p = getelementptr i8, ptr %i.h, i64 48
  %.val18 = load ptr, ptr %i.p, align 8, !tbaa !57
  %i.q = getelementptr i8, ptr %.val17, i64 32
  %.val17.val = load ptr, ptr %i.q, align 8, !tbaa !54
  %.val18.val = load i32, ptr %.val18, align 4, !tbaa !55
  %i.r = getelementptr i8, ptr %.val17.val, i64 8
  %.val17.val.val = load ptr, ptr %i.r, align 8, !tbaa !26
  %i.s = sext i32 %.val18.val to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %.val17.val.val, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !29
  %.val15 = load ptr, ptr %i.m, align 8, !tbaa !52
  %i.v = getelementptr i8, ptr %i.m, i64 48
  %.val16 = load ptr, ptr %i.v, align 8, !tbaa !57
  %i.w = getelementptr i8, ptr %.val15, i64 32
  %.val15.val = load ptr, ptr %i.w, align 8, !tbaa !54
  %.val16.val = load i32, ptr %.val16, align 4, !tbaa !55
  %i.x = getelementptr i8, ptr %.val15.val, i64 8
  %.val15.val.val = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.y = sext i32 %.val16.val to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %.val15.val.val, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !29
  %i.ab = icmp eq ptr %i.u, %i.aa
  %i.ac = zext i1 %i.ab to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.a, %bb.d
  %.0 = phi i32 [ %i.ac, %bb.d ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ]
end_hunk_0
