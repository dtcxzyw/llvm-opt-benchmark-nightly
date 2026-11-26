Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcSweep?download=true
inline.NumInlined: 171
inline.NumDeleted: 52
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Abc_NodeSetTravIdCurrent:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 232 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47   ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.r, null
  %i.s = sext i32 %spec.select.i.i.i to i64
  %i.t = shl nuw nsw i64 %i.s, 2                  ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = tail call ptr @realloc(ptr noundef nonnull %i.r, i64 noundef %i.t) #14
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.t) #13
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.w = phi ptr [ %i.u, %bb.k ], [ %i.v, %bb.l ]
  store ptr %i.w, ptr %i.q, align 8, !tbaa !47
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.m, %bb.g
  %spec.select.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.m ], [ %i.d, %bb.g ]
  store i32 %spec.select.sink.i.i.i, ptr %i.c, align 8, !tbaa !48
  %.pre.i.i = load i32, ptr %i.e, align 4, !tbaa !46
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.i, %bb.h, %bb.c
  %i.x = phi i32 [ %.pre.i.i, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.f, %bb.i ], [ %i.f, %bb.h ], [ %i.f, %bb.c ] ; 3 uses
  %.not4.i.i = icmp sgt i32 %i.x, %.16.val
  br i1 %.not4.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0.val, i64 232
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !47
  %i.aa = sext i32 %i.x to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %scevgep.i.i.i = getelementptr i8, ptr %i.z, i64 %i.ab
  %i.ac = sub i32 %.16.val, %i.x
  %i.ad = zext i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2
  %i.af = add nuw nsw i64 %i.ae, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i, i8 0, i64 %i.af, i1 false), !tbaa !38
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  store i32 %i.d, ptr %i.e, align 4, !tbaa !46
  br label %Abc_NodeSetTravId.exit

Abc_NodeSetTravId.exit:                           ; preds = %bb.a, %._crit_edge.i.i.i
  %i.ag = getelementptr i8, ptr %.0.val, i64 232
  %.val.i.i = load ptr, ptr %i.ag, align 8, !tbaa !47
  %i.ah = sext i32 %.16.val to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.ah
  store i32 %i.b, ptr %i.ai, align 4, !tbaa !38
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @Abc_NtkCheckConstant_rec(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 28
  %.val2332 = load i32, ptr %i.a, align 4, !tbaa !37 ; 2 uses
  %i.b = icmp eq i32 %.val2332, 0
  br i1 %i.b, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.q, %tailrecurse ] ; 3 uses
  %i.c = getelementptr i8, ptr %.tr.lcssa, i64 20
  %.val21 = load i32, ptr %i.c, align 4
  %i.d = and i32 %.val21, 15
  %.not29 = icmp eq i32 %i.d, 7
  br i1 %.not29, label %bb.b, label %common.ret

bb.b:                                             ; preds = %tailrecurse._crit_edge
  %i.e = tail call i32 @Abc_NodeIsConst0(ptr noundef nonnull %.tr.lcssa) #12
  %.not19 = icmp eq i32 %i.e, 0
  br i1 %.not19, label %bb.c, label %common.ret

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @Abc_NodeIsConst1(ptr noundef nonnull %.tr.lcssa) #12
  %.not20 = icmp eq i32 %i.f, 0
  %. = select i1 %.not20, i32 -1, i32 1
  br label %common.ret

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.val2334 = phi i32 [ %.val23, %tailrecurse ], [ %.val2332, %bb.a ]
  %.tr33 = phi ptr [ %i.q, %tailrecurse ], [ %0, %bb.a ] ; 7 uses
  %i.g = getelementptr i8, ptr %.tr33, i64 20
  %.val28 = load i32, ptr %i.g, align 4
  %i.h = and i32 %.val28, 15                      ; 2 uses
  %i.i = icmp eq i32 %i.h, 8
  %i.j = icmp sgt i32 %.val2334, 1
  %or.cond = or i1 %i.j, %i.i
  br i1 %or.cond, label %common.ret, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %.not = icmp eq i32 %i.h, 7
  br i1 %.not, label %bb.e, label %tailrecurse

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 @Abc_NodeIsBuf(ptr noundef nonnull %.tr33) #12
  %.not16 = icmp eq i32 %i.k, 0
  br i1 %.not16, label %bb.f, label %tailrecurse

tailrecurse:                                      ; preds = %bb.e, %bb.d
  %.val26 = load ptr, ptr %.tr33, align 8, !tbaa !41
  %i.l = getelementptr i8, ptr %.tr33, i64 32
  %.val27 = load ptr, ptr %i.l, align 8, !tbaa !42
  %i.m = getelementptr i8, ptr %.val26, i64 32
  %.val26.val = load ptr, ptr %i.m, align 8, !tbaa !26
  %.val27.val = load i32, ptr %.val27, align 4, !tbaa !38
  %i.n = getelementptr i8, ptr %.val26.val, i64 8
  %.val26.val.val = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.o = sext i32 %.val27.val to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %.val26.val.val, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !31   ; 3 uses
  %i.r = getelementptr i8, ptr %i.q, i64 28
  %.val23 = load i32, ptr %i.r, align 4, !tbaa !37 ; 2 uses
  %i.s = icmp eq i32 %.val23, 0
  br i1 %i.s, label %tailrecurse._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %bb.e
  %i.t = tail call i32 @Abc_NodeIsInv(ptr noundef nonnull %.tr33) #12
  %.not17 = icmp eq i32 %i.t, 0
  br i1 %.not17, label %common.ret, label %bb.g

common.ret:                                       ; preds = %tailrecurse._crit_edge, %bb.b, %bb.c, %bb.f, %.lr.ph, %bb.g
  %common.ret.op = phi i32 [ %switch.select40, %bb.g ], [ -1, %tailrecurse._crit_edge ], [ %., %bb.c ], [ 0, %bb.b ], [ -1, %bb.f ], [ -1, %.lr.ph ]
  ret i32 %common.ret.op

bb.g:                                             ; preds = %bb.f
  %.val24 = load ptr, ptr %.tr33, align 8, !tbaa !41
  %i.u = getelementptr i8, ptr %.tr33, i64 32
  %.val25 = load ptr, ptr %i.u, align 8, !tbaa !42
  %i.v = getelementptr i8, ptr %.val24, i64 32
  %.val24.val = load ptr, ptr %i.v, align 8, !tbaa !26
  %.val25.val = load i32, ptr %.val25, align 4, !tbaa !38
  %i.w = getelementptr i8, ptr %.val24.val, i64 8
  %.val24.val.val = load ptr, ptr %i.w, align 8, !tbaa !30
  %i.x = sext i32 %.val25.val to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %.val24.val.val, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31
  %i.aa = tail call i32 @Abc_NtkCheckConstant_rec(ptr noundef %i.z) ; 2 uses
  %switch.selectcmp = icmp ne i32 %i.aa, 1
  %switch.select = sext i1 %switch.selectcmp to i32
  %switch.selectcmp39 = icmp eq i32 %i.aa, 0
  %switch.select40 = select i1 %switch.selectcmp39, i32 1, i32 %switch.select
  br label %common.ret
}

declare i32 @Abc_NodeIsConst1(ptr noundef) local_unnamed_addr #2

declare i32 @Abc_NodeIsBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @Abc_NtkLatchSweep(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val54 = load i32, ptr %i.c, align 4, !tbaa !29
  %i.d = icmp sgt i32 %.val54, 0
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %bb.a ] ; 2 uses
  %i.e = phi ptr [ %i.bb, %bb.j ], [ %i.b, %bb.a ]
  %.02457 = phi i32 [ %.1, %bb.j ], [ 0, %bb.a ]  ; 4 uses
  %.02555 = phi ptr [ %.126, %bb.j ], [ null, %bb.a ] ; 7 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val39.val = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.val39.val, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31   ; 10 uses
  %i.i = getelementptr i8, ptr %i.h, i64 20
  %.val38 = load i32, ptr %i.i, align 4
  %i.j = and i32 %.val38, 15
  %.not = icmp eq i32 %i.j, 8
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %.lr.ph
  %.val36 = load ptr, ptr %i.h, align 8, !tbaa !41
  %i.k = getelementptr i8, ptr %i.h, i64 32       ; 2 uses
  %.val37 = load ptr, ptr %i.k, align 8, !tbaa !42
  %i.l = getelementptr i8, ptr %.val36, i64 32
  %.val36.val = load ptr, ptr %i.l, align 8, !tbaa !26
  %.val37.val = load i32, ptr %.val37, align 4, !tbaa !38
  %i.m = getelementptr i8, ptr %.val36.val, i64 8
  %.val36.val.val = load ptr, ptr %i.m, align 8, !tbaa !30
  %i.n = sext i32 %.val37.val to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %.val36.val.val, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31
  %i.q = tail call i32 @Abc_NtkCheckConstant_rec(ptr noundef %i.p)
  switch i32 %i.q, label %default.unreachable62 [
    i32 -1, label %bb.j
    i32 1, label %bb.c
    i32 0, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %i.h, i64 64
  %.val40 = load ptr, ptr %i.r, align 8, !tbaa !32
  %.not52 = icmp eq ptr %.val40, inttoptr (i64 1 to ptr)
  br i1 %.not52, label %bb.e, label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr i8, ptr %i.h, i64 64
  %.val41 = load ptr, ptr %i.s, align 8, !tbaa !32
  %.not51 = icmp eq ptr %.val41, inttoptr (i64 2 to ptr)
  br i1 %.not51, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %.val42 = phi i32 [ 2, %bb.d ], [ 1, %bb.c ]
  %i.t = icmp eq ptr %.02555, null
  br i1 %i.t, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr i8, ptr %.02555, i64 64
  %.025.val = load ptr, ptr %i.u, align 8, !tbaa !32
  %i.v = ptrtoint ptr %.025.val to i64
  %i.w = trunc i64 %i.v to i32
  %.not31 = icmp eq i32 %.val42, %i.w
  %.025.val47 = load ptr, ptr %.02555, align 8, !tbaa !41
  %i.x = getelementptr i8, ptr %.02555, i64 48
  %.025.val48 = load ptr, ptr %i.x, align 8, !tbaa !93
  %i.y = getelementptr i8, ptr %.025.val47, i64 32
  %.025.val47.val = load ptr, ptr %i.y, align 8, !tbaa !26
  %.025.val48.val = load i32, ptr %.025.val48, align 4, !tbaa !38
  %i.z = getelementptr i8, ptr %.025.val47.val, i64 8
  %.025.val47.val.val = load ptr, ptr %i.z, align 8, !tbaa !30
  %i.aa = sext i32 %.025.val48.val to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %.025.val47.val.val, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !31 ; 2 uses
  br i1 %.not31, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call ptr @Abc_NtkCreateNodeInv(ptr noundef nonnull %0, ptr noundef %i.ac) #12
  br label %bb.i

default.unreachable62:                            ; preds = %bb.b
  unreachable

bb.h:                                             ; preds = %bb.c, %bb.d
  %.val34 = load ptr, ptr %i.h, align 8, !tbaa !41
  %.val35 = load ptr, ptr %i.k, align 8, !tbaa !42
  %i.ae = getelementptr i8, ptr %.val34, i64 32
  %.val34.val = load ptr, ptr %i.ae, align 8, !tbaa !26
  %.val35.val = load i32, ptr %.val35, align 4, !tbaa !38
  %i.af = getelementptr i8, ptr %.val34.val, i64 8
  %.val34.val.val = load ptr, ptr %i.af, align 8, !tbaa !30
  %i.ag = sext i32 %.val35.val to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %.val34.val.val, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !31 ; 2 uses
  %.val32 = load ptr, ptr %i.ai, align 8, !tbaa !41
  %i.aj = getelementptr i8, ptr %i.ai, i64 32
  %.val33 = load ptr, ptr %i.aj, align 8, !tbaa !42
  %i.ak = getelementptr i8, ptr %.val32, i64 32
  %.val32.val = load ptr, ptr %i.ak, align 8, !tbaa !26
  %.val33.val = load i32, ptr %.val33, align 4, !tbaa !38
  %i.al = getelementptr i8, ptr %.val32.val, i64 8
  %.val32.val.val = load ptr, ptr %i.al, align 8, !tbaa !30
  %i.am = sext i32 %.val33.val to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %.val32.val.val, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !31
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h
  %.027 = phi ptr [ %i.ad, %bb.g ], [ %i.ao, %bb.h ], [ %i.ac, %bb.f ]
  %.val45 = load ptr, ptr %i.h, align 8, !tbaa !41
  %i.ap = getelementptr i8, ptr %i.h, i64 48      ; 2 uses
  %.val46 = load ptr, ptr %i.ap, align 8, !tbaa !93
  %i.aq = getelementptr i8, ptr %.val45, i64 32
  %.val45.val = load ptr, ptr %i.aq, align 8, !tbaa !26
  %.val46.val = load i32, ptr %.val46, align 4, !tbaa !38
  %i.ar = getelementptr i8, ptr %.val45.val, i64 8
  %.val45.val.val = load ptr, ptr %i.ar, align 8, !tbaa !30
  %i.as = sext i32 %.val46.val to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %.val45.val.val, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !31
  tail call void @Abc_ObjTransferFanout(ptr noundef %i.au, ptr noundef %.027) #12
  %.val43 = load ptr, ptr %i.h, align 8, !tbaa !41
  %.val44 = load ptr, ptr %i.ap, align 8, !tbaa !93
  %i.av = getelementptr i8, ptr %.val43, i64 32
  %.val43.val = load ptr, ptr %i.av, align 8, !tbaa !26
  %.val44.val = load i32, ptr %.val44, align 4, !tbaa !38
  %i.aw = getelementptr i8, ptr %.val43.val, i64 8
  %.val43.val.val = load ptr, ptr %i.aw, align 8, !tbaa !30
  %i.ax = sext i32 %.val44.val to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %.val43.val.val, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !31
  tail call void @Abc_NtkDeleteObj_rec(ptr noundef %i.az, i32 noundef 0) #12
  %i.ba = add nsw i32 %.02457, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.b, %bb.i, %.lr.ph
  %.126 = phi ptr [ %.02555, %bb.b ], [ %.02555, %.lr.ph ], [ %.02555, %bb.i ], [ %i.h, %bb.e ]
  %.1 = phi i32 [ %.02457, %bb.b ], [ %.02457, %.lr.ph ], [ %i.ba, %bb.i ], [ %.02457, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !92  ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 4
  %.val = load i32, ptr %i.bc, align 4, !tbaa !29
  %i.bd = sext i32 %.val to i64
  %i.be = icmp slt i64 %indvars.iv.next, %i.bd
  br i1 %i.be, label %.lr.ph, label %.critedge, !llvm.loop !91

.critedge:                                        ; preds = %bb.j, %bb.a
  %.024.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.j ]
  ret i32 %.024.lcssa
}

declare ptr @Abc_NtkCreateNodeInv(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Abc_ObjTransferFanout(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @Abc_NtkReplaceAutonomousLogic(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #13 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 4
  %.val4395 = load i32, ptr %i.d, align 4, !tbaa !29
  %i.e = icmp sgt i32 %.val4395, 0
  br i1 %i.e, label %.lr.ph97, label %.critedge4

.critedge.preheader:                              ; preds = %.critedge2
  %i.f = icmp sgt i32 %i.gk, 0
  br i1 %i.f, label %.lr.ph99, label %.critedge4

.lr.ph99:                                         ; preds = %.critedge.preheader
  %wide.trip.count = zext nneg i32 %i.gk to i64
  br label %.critedge

.lr.ph97:                                         ; preds = %bb.a, %.critedge2
  %i.g = phi ptr [ %i.gh, %.critedge2 ], [ %i.a, %bb.a ] ; 4 uses
  %i.h = phi i32 [ %i.gi, %.critedge2 ], [ 100, %bb.a ] ; 4 uses
  %i.i = phi ptr [ %i.gj, %.critedge2 ], [ %i.a, %bb.a ] ; 4 uses
  %i.j = phi i32 [ %i.gk, %.critedge2 ], [ 0, %bb.a ] ; 4 uses
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %.critedge2 ], [ 0, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %i.gl, %.critedge2 ], [ %i.c, %bb.a ]
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %.val45.val = load ptr, ptr %i.l, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.val45.val, i64 %indvars.iv102
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31   ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.critedge2, label %bb.b

bb.b:                                             ; preds = %.lr.ph97
  %i.p = tail call fastcc i32 @Abc_NodeIsTravIdCurrent(ptr noundef nonnull %i.n)
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %.critedge2, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.q = getelementptr i8, ptr %i.n, i64 28       ; 2 uses
  %.val4693 = load i32, ptr %i.q, align 4, !tbaa !37
  %i.r = icmp sgt i32 %.val4693, 0
  br i1 %i.r, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %.preheader
  %i.s = getelementptr i8, ptr %i.n, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %Abc_NtkSetTravId_rec.exit
  %i.t = phi ptr [ %i.g, %.lr.ph ], [ %i.gb, %Abc_NtkSetTravId_rec.exit ] ; 6 uses
  %i.u = phi i32 [ %i.h, %.lr.ph ], [ %i.gc, %Abc_NtkSetTravId_rec.exit ] ; 11 uses
  %i.v = phi ptr [ %i.i, %.lr.ph ], [ %i.gd, %Abc_NtkSetTravId_rec.exit ] ; 9 uses
  %i.w = phi i32 [ %i.j, %.lr.ph ], [ %i.ge, %Abc_NtkSetTravId_rec.exit ] ; 9 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Abc_NtkSetTravId_rec.exit ] ; 2 uses
  %.val53 = load ptr, ptr %i.n, align 8, !tbaa !41
  %.val54 = load ptr, ptr %i.s, align 8, !tbaa !42
  %i.x = getelementptr i8, ptr %.val53, i64 32
  %.val53.val = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.y = getelementptr i8, ptr %.val53.val, i64 8
  %.val53.val.val = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.val54, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !38
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %.val53.val.val, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !31 ; 12 uses
  %.val2.i = load ptr, ptr %i.ad, align 8, !tbaa !41 ; 7 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16     ; 2 uses
  %.val3.i = load i32, ptr %i.ae, align 8, !tbaa !45 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val2.i, i64 224 ; 2 uses
  %i.ag = add nsw i32 %.val3.i, 1                 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val2.i, i64 228 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !46 ; 4 uses
  %.not.i.not.i.i.i = icmp slt i32 %.val3.i, %i.ai
  br i1 %.not.i.not.i.i.i, label %Abc_NodeIsTravIdCurrent.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = load i32, ptr %i.af, align 8, !tbaa !48 ; 4 uses
  %i.ak = shl nsw i32 %i.aj, 1                    ; 2 uses
  %.not.i.i.i = icmp slt i32 %.val3.i, %i.ak
  %.not.i.i.not.i.i.i = icmp sgt i32 %i.aj, %.val3.i ; 2 uses
  br i1 %.not.i.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i.i.not.i.i.i, label %Vec_IntGrow.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %.val2.i, i64 232 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !47 ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.am, null
  %i.an = sext i32 %i.ag to i64
  %i.ao = shl nsw i64 %i.an, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = tail call ptr @realloc(ptr noundef nonnull %i.am, i64 noundef %i.ao) #14
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aq = tail call noalias ptr @malloc(i64 noundef %i.ao) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ar = phi ptr [ %i.ap, %bb.g ], [ %i.aq, %bb.h ]
  store ptr %i.ar, ptr %i.al, align 8, !tbaa !47
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i

bb.j:                                             ; preds = %bb.d
  br i1 %.not.i.i.not.i.i.i, label %Vec_IntGrow.exit.i.i.i.i, label %bb.k
end_hunk_0
