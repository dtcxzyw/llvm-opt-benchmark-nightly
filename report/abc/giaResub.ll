Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaResub?download=true
inline.NumInlined: 1135
inline.NumDeleted: 151
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 60
begin_hunk_0_@Gia_ManInsertFromGates:bb.a
  %i.ex = getelementptr i8, ptr %i.ew, i64 8
  %.val148.val = load ptr, ptr %i.ex, align 8, !tbaa !32
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.val148.val, i64 %indvars.iv208
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !33
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [12 x i8], ptr %.val147, i64 %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !157
  tail call fastcc void @Gia_ManAppendCo(ptr noundef %i.aw, i32 noundef %i.fd)
  %indvars.iv.next209 = add nuw nsw i64 %indvars.iv208, 1 ; 2 uses
  %i.fe = load ptr, ptr %i.aj, align 8, !tbaa !54 ; 2 uses
  %i.ff = getelementptr i8, ptr %i.fe, i64 4
  %.val123 = load i32, ptr %i.ff, align 4, !tbaa !30
  %i.fg = sext i32 %.val123 to i64
  %i.fh = icmp slt i64 %indvars.iv.next209, %i.fg
  br i1 %i.fh, label %.lr.ph189, label %.critedge10, !llvm.loop !163

.critedge10:                                      ; preds = %.lr.ph189, %bb.u, %.critedge4
  %.val122191 = load i32, ptr %i.r, align 4, !tbaa !30
  %i.fi = icmp sgt i32 %.val122191, 0
  br i1 %i.fi, label %.lr.ph193, label %.critedge12

.lr.ph193:                                        ; preds = %.critedge10
  %i.fj = getelementptr i8, ptr %1, i64 8
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph193, %bb.w
  %indvars.iv211 = phi i64 [ 0, %.lr.ph193 ], [ %indvars.iv.next212, %bb.w ] ; 2 uses
  %.val129 = load ptr, ptr %i.q, align 8, !tbaa !8 ; 2 uses
  %.not118 = icmp eq ptr %.val129, null
  br i1 %.not118, label %.critedge12, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val134 = load ptr, ptr %i.fj, align 8, !tbaa !32
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.val134, i64 %indvars.iv211
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !33
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [12 x i8], ptr %.val129, i64 %i.fm ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 4
  %i.fp = and i64 %i.fo, 9223372036854775807
  store i64 %i.fp, ptr %i.fn, align 4
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %.val122 = load i32, ptr %i.r, align 4, !tbaa !30
  %i.fq = sext i32 %.val122 to i64
  %i.fr = icmp slt i64 %indvars.iv.next212, %i.fq
  br i1 %i.fr, label %bb.v, label %.critedge12, !llvm.loop !164

.critedge12:                                      ; preds = %bb.v, %bb.w, %.critedge10
  tail call void @Gia_ManHashStop(ptr noundef %i.aw) #34
  %i.fs = tail call ptr @Gia_ManCleanup(ptr noundef %i.aw) #34 ; 2 uses
  tail call void @Gia_ManStop(ptr noundef %i.aw) #34
  %i.ft = load ptr, ptr %i.ai, align 8, !tbaa !32 ; 2 uses
  %.not.i165 = icmp eq ptr %i.ft, null
  br i1 %.not.i165, label %Vec_IntFree.exit, label %bb.x

bb.x:                                             ; preds = %.critedge12
  tail call void @free(ptr noundef nonnull %i.ft) #34
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge12, %bb.x
  tail call void @free(ptr noundef nonnull %i.ac) #34
  %.not.i166 = icmp eq ptr %i.l, null
  br i1 %.not.i166, label %Vec_IntFree.exit167, label %bb.y

bb.y:                                             ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.l) #34
  br label %Vec_IntFree.exit167

Vec_IntFree.exit167:                              ; preds = %Vec_IntFree.exit, %bb.y
  tail call void @free(ptr noundef nonnull %i.b) #34
  %i.fu = load ptr, ptr %i.p, align 8, !tbaa !32  ; 2 uses
  %.not.i168 = icmp eq ptr %i.fu, null
  br i1 %.not.i168, label %Vec_IntFree.exit169, label %bb.z

bb.z:                                             ; preds = %Vec_IntFree.exit167
  tail call void @free(ptr noundef nonnull %i.fu) #34
  br label %Vec_IntFree.exit169

Vec_IntFree.exit169:                              ; preds = %Vec_IntFree.exit167, %bb.z
  tail call void @free(ptr noundef nonnull %i.m) #34
  %i.fv = getelementptr i8, ptr %0, i64 16
  %.val153 = load i32, ptr %i.fv, align 8, !tbaa !165
  tail call void @Gia_ManSetRegNum(ptr noundef %i.fs, i32 noundef %.val153) #34
  ret ptr %i.fs
}

declare void @Gia_ManHashStart(ptr noundef) local_unnamed_addr #3

declare void @Gia_ManHashStop(ptr noundef) local_unnamed_addr #3

declare ptr @Gia_ManCleanup(ptr noundef) local_unnamed_addr #3

declare void @Gia_ManSetRegNum(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Gia_ManFindOneUnateInt(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef captures(none) initializes((4, 8)) %4, ptr nofree noundef captures(none) initializes((4, 8)) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 7 uses
  store i32 0, ptr %i.a, align 4, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 4 uses
  store i32 0, ptr %i.b, align 4, !tbaa !30
  %i.c = getelementptr i8, ptr %2, i64 4          ; 2 uses
  %.val1942 = load i32, ptr %i.c, align 4, !tbaa !84
  %i.d = icmp sgt i32 %.val1942, 2
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %2, i64 8
  %i.f = icmp sgt i32 %3, 0
  %wide.trip.count51.i = zext nneg i32 %3 to i64  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ad
  %indvars.iv = phi i64 [ 2, %.lr.ph ], [ %indvars.iv.next, %bb.ad ] ; 5 uses
  %.val = load ptr, ptr %i.e, align 8, !tbaa !88
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !105  ; 2 uses
  br i1 %i.f, label %.lr.ph41.i, label %.loopexit

bb.c:                                             ; preds = %.lr.ph41.i
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next49.i, %wide.trip.count51.i
  br i1 %exitcond52.not.i, label %.loopexit, label %.lr.ph41.i, !llvm.loop !129

.lr.ph41.i:                                       ; preds = %bb.b, %bb.c
  %indvars.iv48.i = phi i64 [ %indvars.iv.next49.i, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv48.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !106
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv48.i
  %i.n = load i64, ptr %i.m, align 8, !tbaa !106
  %i.o = and i64 %i.n, %i.l
  %.not32.i = icmp eq i64 %i.o, 0
  br i1 %.not32.i, label %bb.c, label %.lr.ph.i

.loopexit:                                        ; preds = %bb.c, %bb.b
  %i.p = load i32, ptr %i.a, align 4, !tbaa !30   ; 7 uses
  %i.q = load i32, ptr %4, align 8, !tbaa !31
  %i.r = icmp eq i32 %i.p, %i.q
  br i1 %i.r, label %bb.d, label %.loopexit.Vec_IntPush.exit_crit_edge

.loopexit.Vec_IntPush.exit_crit_edge:             ; preds = %.loopexit
  %.pre50 = load ptr, ptr %i.h, align 8, !tbaa !32
  br label %Vec_IntPush.exit

bb.d:                                             ; preds = %.loopexit
  %i.s = icmp slt i32 %i.p, 16
  br i1 %i.s, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !32   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.t, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.t, i64 noundef 64) #32
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.v = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit11.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.w = icmp samesign ult i32 %i.p, 1073741823
  %i.x = shl nuw nsw i32 %i.p, 1
  %spec.select.i = select i1 %i.w, i32 %i.x, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.p, %spec.select.i
  %.pre51 = load ptr, ptr %i.h, align 8, !tbaa !32 ; 3 uses
  br i1 %.not.i9.i, label %bb.i, label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i10.i = icmp eq ptr %.pre51, null
  %i.y = zext nneg i32 %spec.select.i to i64
  %i.z = shl nuw nsw i64 %i.y, 2                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = tail call ptr @realloc(ptr noundef nonnull %.pre51, i64 noundef %i.z) #32
  br label %Vec_IntGrow.exit11.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.z) #33
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.j, %bb.k, %bb.f, %bb.g
  %i.ac = phi ptr [ %i.v, %bb.g ], [ %i.u, %bb.f ], [ %i.aa, %bb.j ], [ %i.ab, %bb.k ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ]
  store ptr %i.ac, ptr %i.h, align 8, !tbaa !32
  store i32 %spec.select.sink.i, ptr %4, align 8, !tbaa !31
  %.pre52 = load i32, ptr %i.a, align 4, !tbaa !30
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.loopexit.Vec_IntPush.exit_crit_edge, %bb.h, %Vec_IntGrow.exit11.sink.split.i
  %i.ad = phi i32 [ %i.p, %.loopexit.Vec_IntPush.exit_crit_edge ], [ %i.p, %bb.h ], [ %.pre52, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ae = phi ptr [ %.pre50, %.loopexit.Vec_IntPush.exit_crit_edge ], [ %.pre51, %bb.h ], [ %i.ac, %Vec_IntGrow.exit11.sink.split.i ]
  %i.af = add nsw i32 %i.ad, 1
  store i32 %i.af, ptr %i.a, align 4, !tbaa !30
  %i.ag = sext i32 %i.ad to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ag
  %indvars.iv.tr60 = trunc nuw i64 %indvars.iv to i32
  %i.ai = shl nuw i32 %indvars.iv.tr60, 1
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !33
  br label %bb.ad

bb.l:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count51.i
  br i1 %exitcond.not.i, label %bb.m, label %.lr.ph.i, !llvm.loop !130

.lr.ph.i:                                         ; preds = %.lr.ph41.i, %bb.l
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.l ], [ 0, %.lr.ph41.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !106
  %i.al = xor i64 %i.ak, -1
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.an = load i64, ptr %i.am, align 8, !tbaa !106
  %i.ao = and i64 %i.an, %i.al
  %.not33.i = icmp eq i64 %i.ao, 0
  br i1 %.not33.i, label %bb.l, label %Abc_TtIntersectOne.exit21

bb.m:                                             ; preds = %bb.l
  %i.ap = load i32, ptr %i.a, align 4, !tbaa !30  ; 7 uses
  %i.aq = load i32, ptr %4, align 8, !tbaa !31
  %i.ar = icmp eq i32 %i.ap, %i.aq
  br i1 %i.ar, label %bb.n, label %.Vec_IntPush.exit29_crit_edge

.Vec_IntPush.exit29_crit_edge:                    ; preds = %bb.m
  %.pre47 = load ptr, ptr %i.h, align 8, !tbaa !32
  br label %Vec_IntPush.exit29

bb.n:                                             ; preds = %bb.m
  %i.as = icmp slt i32 %i.ap, 16
  br i1 %i.as, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !32  ; 2 uses
  %.not9.i.i27 = icmp eq ptr %i.at, null
  br i1 %.not9.i.i27, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.at, i64 noundef 64) #32
  br label %Vec_IntGrow.exit11.sink.split.i25

bb.q:                                             ; preds = %bb.o
  %i.av = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit11.sink.split.i25

bb.r:                                             ; preds = %bb.n
  %i.aw = icmp samesign ult i32 %i.ap, 1073741823
  %i.ax = shl nuw nsw i32 %i.ap, 1
  %spec.select.i22 = select i1 %i.aw, i32 %i.ax, i32 2147483647 ; 4 uses
  %.not.i9.i23 = icmp samesign ult i32 %i.ap, %spec.select.i22
  %.pre48 = load ptr, ptr %i.h, align 8, !tbaa !32 ; 3 uses
  br i1 %.not.i9.i23, label %bb.s, label %Vec_IntPush.exit29

bb.s:                                             ; preds = %bb.r
  %.not9.i10.i24 = icmp eq ptr %.pre48, null
  %i.ay = zext nneg i32 %spec.select.i22 to i64
  %i.az = shl nuw nsw i64 %i.ay, 2                ; 2 uses
  br i1 %.not9.i10.i24, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = tail call ptr @realloc(ptr noundef nonnull %.pre48, i64 noundef %i.az) #32
  br label %Vec_IntGrow.exit11.sink.split.i25

bb.u:                                             ; preds = %bb.s
  %i.bb = tail call noalias ptr @malloc(i64 noundef %i.az) #33
  br label %Vec_IntGrow.exit11.sink.split.i25

Vec_IntGrow.exit11.sink.split.i25:                ; preds = %bb.t, %bb.u, %bb.p, %bb.q
  %i.bc = phi ptr [ %i.av, %bb.q ], [ %i.au, %bb.p ], [ %i.ba, %bb.t ], [ %i.bb, %bb.u ] ; 2 uses
  %spec.select.sink.i26 = phi i32 [ 16, %bb.q ], [ 16, %bb.p ], [ %spec.select.i22, %bb.t ], [ %spec.select.i22, %bb.u ]
  store ptr %i.bc, ptr %i.h, align 8, !tbaa !32
  store i32 %spec.select.sink.i26, ptr %4, align 8, !tbaa !31
  %.pre49 = load i32, ptr %i.a, align 4, !tbaa !30
  br label %Vec_IntPush.exit29

Vec_IntPush.exit29:                               ; preds = %.Vec_IntPush.exit29_crit_edge, %bb.r, %Vec_IntGrow.exit11.sink.split.i25
  %i.bd = phi i32 [ %i.ap, %.Vec_IntPush.exit29_crit_edge ], [ %i.ap, %bb.r ], [ %.pre49, %Vec_IntGrow.exit11.sink.split.i25 ] ; 2 uses
  %i.be = phi ptr [ %.pre47, %.Vec_IntPush.exit29_crit_edge ], [ %.pre48, %bb.r ], [ %i.bc, %Vec_IntGrow.exit11.sink.split.i25 ]
  %i.bf = add nsw i32 %i.bd, 1
  store i32 %i.bf, ptr %i.a, align 4, !tbaa !30
  %i.bg = sext i32 %i.bd to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bg
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.bi = shl i32 %indvars.iv.tr, 1
  %i.bj = or disjoint i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !33
  br label %bb.ad

Abc_TtIntersectOne.exit21:                        ; preds = %.lr.ph.i
  %i.bk = load i32, ptr %i.b, align 4, !tbaa !30  ; 7 uses
  %i.bl = load i32, ptr %5, align 8, !tbaa !31
  %i.bm = icmp eq i32 %i.bk, %i.bl
  br i1 %i.bm, label %bb.v, label %Abc_TtIntersectOne.exit21.Vec_IntPush.exit37_crit_edge

Abc_TtIntersectOne.exit21.Vec_IntPush.exit37_crit_edge: ; preds = %Abc_TtIntersectOne.exit21
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !32
  br label %Vec_IntPush.exit37

bb.v:                                             ; preds = %Abc_TtIntersectOne.exit21
  %i.bn = icmp slt i32 %i.bk, 16
  br i1 %i.bn, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.bo = load ptr, ptr %i.g, align 8, !tbaa !32  ; 2 uses
  %.not9.i.i35 = icmp eq ptr %i.bo, null
  br i1 %.not9.i.i35, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bp = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bo, i64 noundef 64) #32
  br label %Vec_IntGrow.exit11.sink.split.i33

bb.y:                                             ; preds = %bb.w
  %i.bq = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit11.sink.split.i33

bb.z:                                             ; preds = %bb.v
  %i.br = icmp samesign ult i32 %i.bk, 1073741823
  %i.bs = shl nuw nsw i32 %i.bk, 1
  %spec.select.i30 = select i1 %i.br, i32 %i.bs, i32 2147483647 ; 4 uses
  %.not.i9.i31 = icmp samesign ult i32 %i.bk, %spec.select.i30
  %.pre45 = load ptr, ptr %i.g, align 8, !tbaa !32 ; 3 uses
  br i1 %.not.i9.i31, label %bb.aa, label %Vec_IntPush.exit37

bb.aa:                                            ; preds = %bb.z
  %.not9.i10.i32 = icmp eq ptr %.pre45, null
  %i.bt = zext nneg i32 %spec.select.i30 to i64
  %i.bu = shl nuw nsw i64 %i.bt, 2                ; 2 uses
  br i1 %.not9.i10.i32, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bv = tail call ptr @realloc(ptr noundef nonnull %.pre45, i64 noundef %i.bu) #32
  br label %Vec_IntGrow.exit11.sink.split.i33

bb.ac:                                            ; preds = %bb.aa
  %i.bw = tail call noalias ptr @malloc(i64 noundef %i.bu) #33
  br label %Vec_IntGrow.exit11.sink.split.i33

Vec_IntGrow.exit11.sink.split.i33:                ; preds = %bb.ab, %bb.ac, %bb.x, %bb.y
  %i.bx = phi ptr [ %i.bq, %bb.y ], [ %i.bp, %bb.x ], [ %i.bv, %bb.ab ], [ %i.bw, %bb.ac ] ; 2 uses
  %spec.select.sink.i34 = phi i32 [ 16, %bb.y ], [ 16, %bb.x ], [ %spec.select.i30, %bb.ab ], [ %spec.select.i30, %bb.ac ]
  store ptr %i.bx, ptr %i.g, align 8, !tbaa !32
  store i32 %spec.select.sink.i34, ptr %5, align 8, !tbaa !31
  %.pre46 = load i32, ptr %i.b, align 4, !tbaa !30
  br label %Vec_IntPush.exit37

Vec_IntPush.exit37:                               ; preds = %Abc_TtIntersectOne.exit21.Vec_IntPush.exit37_crit_edge, %bb.z, %Vec_IntGrow.exit11.sink.split.i33
  %i.by = phi i32 [ %i.bk, %Abc_TtIntersectOne.exit21.Vec_IntPush.exit37_crit_edge ], [ %i.bk, %bb.z ], [ %.pre46, %Vec_IntGrow.exit11.sink.split.i33 ] ; 2 uses
  %i.bz = phi ptr [ %.pre, %Abc_TtIntersectOne.exit21.Vec_IntPush.exit37_crit_edge ], [ %.pre45, %bb.z ], [ %i.bx, %Vec_IntGrow.exit11.sink.split.i33 ]
  %i.ca = add nsw i32 %i.by, 1
  store i32 %i.ca, ptr %i.b, align 4, !tbaa !30
  %i.cb = sext i32 %i.by to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.cb
  %i.cd = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !33
  br label %bb.ad

bb.ad:                                            ; preds = %Vec_IntPush.exit, %Vec_IntPush.exit37, %Vec_IntPush.exit29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val19 = load i32, ptr %i.c, align 4, !tbaa !84
  %i.ce = sext i32 %.val19 to i64
  %i.cf = icmp slt i64 %indvars.iv.next, %i.ce
  br i1 %i.cf, label %bb.b, label %.critedge, !llvm.loop !166

.critedge:                                        ; preds = %bb.ad, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Gia_ManFindOneUnate(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !90
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %3, align 8, !tbaa !80
  %i.d = load ptr, ptr %4, align 8, !tbaa !80
  tail call void @Gia_ManFindOneUnateInt(ptr noundef %i.a, ptr poison, ptr noundef %1, i32 noundef %2, ptr noundef %i.c, ptr noundef %i.d)
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !80
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !80
  tail call void @Gia_ManFindOneUnateInt(ptr noundef %i.e, ptr poison, ptr noundef %1, i32 noundef %2, ptr noundef %i.g, ptr noundef %i.i)
  br label %.split25.us

.split:                                           ; preds = %bb.a
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19) ; 0 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !90
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %3, align 8, !tbaa !80
  %i.n = load ptr, ptr %4, align 8, !tbaa !80
  tail call void @Gia_ManFindOneUnateInt(ptr noundef %i.k, ptr poison, ptr noundef %1, i32 noundef %2, ptr noundef %i.m, ptr noundef %i.n)
  %i.o = load ptr, ptr %3, align 8, !tbaa !80
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %.val = load i32, ptr %i.p, align 4, !tbaa !30
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef 0, i32 noundef %.val) ; 0 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !90
end_hunk_0
begin_hunk_1_@Gia_ManResubOne:bb.a
  br i1 %i.b, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread, %bb.f
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !83   ; 2 uses
  %i.p = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !30   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %i.r, ptr %i.s, align 4, !tbaa !30
  store i32 %i.r, ptr %i.p, align 8, !tbaa !31
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %Vec_IntDup.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = sext i32 %i.r to i64
  %i.u = shl nsw i64 %i.t, 2                      ; 2 uses
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.u) #33
  br label %Vec_IntDup.exit

Vec_IntDup.exit:                                  ; preds = %bb.h, %bb.i
  %.pre-phi12.i = phi i64 [ %i.u, %bb.i ], [ 0, %bb.h ]
  %i.w = phi ptr [ %i.v, %bb.i ], [ null, %bb.h ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.w, ptr align 4 %i.z, i64 %.pre-phi12.i, i1 false)
  tail call void @Gia_ResbFree(ptr noundef nonnull %i.a)
  ret ptr %i.p
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Abc_ResubPrepareManager(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @s_pResbMan, align 8, !tbaa !262 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @Gia_ResbFree(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr @s_pResbMan, align 8, !tbaa !262
  %i.b = icmp sgt i32 %0, 0
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = tail call ptr @Gia_ResbAlloc(i32 noundef %0)
  store ptr %i.c, ptr @s_pResbMan, align 8, !tbaa !262
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Abc_ResubComputeFunction(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %9) local_unnamed_addr #2 {
bb.a:
  %10 = alloca %struct.Vec_Ptr_t_, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  store i32 %1, ptr %10, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %1, ptr %i.a, align 4, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !88
  %i.c = load ptr, ptr @s_pResbMan, align 8, !tbaa !262
  %i.d = icmp eq i32 %8, 2
  %i.e = zext i1 %i.d to i32
  call void @Gia_ManResubPerform(ptr noundef %i.c, ptr noundef nonnull %10, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %i.e, i32 noundef 0)
  %.not = icmp eq i32 %8, 0
  %.pre24.pre25 = load ptr, ptr @s_pResbMan, align 8, !tbaa !262 ; 3 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.pre24.pre25, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.h = getelementptr i8, ptr %i.g, i64 4
  %.val21 = load i32, ptr %i.h, align 4, !tbaa !30 ; 2 uses
  %.off = add i32 %.val21, 1
  %.not18 = icmp ult i32 %.off, 3
  br i1 %.not18, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = sdiv i32 %.val21, 2                      ; 2 uses
  %i.j = add nsw i32 %3, 1
  %i.k = sub i32 %i.j, %i.i
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %i.k, i32 noundef %i.i) ; 0 uses
  %i.m = load ptr, ptr @s_pResbMan, align 8, !tbaa !262
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !83
  %i.p = tail call i32 @Gia_ManResubPrint(ptr noundef %i.o, i32 noundef %1) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %.pre24.pre = load ptr, ptr @s_pResbMan, align 8, !tbaa !262
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.pre24 = phi ptr [ %.pre24.pre25, %bb.b ], [ %.pre24.pre, %bb.c ], [ %.pre24.pre25, %bb.a ] ; 2 uses
  %.not19 = icmp eq i32 %7, 0
  br i1 %.not19, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call i32 @Gia_ManResubVerify(ptr noundef %.pre24, ptr noundef null)
  %.not20 = icmp eq i32 %i.q, 0
  %.pre23 = load ptr, ptr @s_pResbMan, align 8, !tbaa !262 ; 2 uses
  br i1 %.not20, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.pre23, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !83
  %i.t = tail call i32 @Gia_ManResubPrint(ptr noundef %i.s, i32 noundef %1) ; 0 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %.pre = load ptr, ptr @s_pResbMan, align 8, !tbaa !262
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %i.u = phi ptr [ %.pre23, %bb.e ], [ %.pre, %bb.f ], [ %.pre24, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !83   ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val22 = load ptr, ptr %i.x, align 8, !tbaa !32
  store ptr %.val22, ptr %9, align 8, !tbaa !69
  %i.y = getelementptr i8, ptr %i.w, i64 4
  %.val = load i32, ptr %i.y, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  ret i32 %.val
}

; Function Attrs: nounwind uwtable
define void @Abc_ResubDumpProblem(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = mul nsw i32 %3, %2                       ; 2 uses
  %i.b = add i32 %i.a, -1
  %or.cond.i = icmp ult i32 %i.b, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %i.a ; 3 uses
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_WrdAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %spec.store.select.i to i64
  %i.d = shl nsw i64 %i.c, 3
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #33
  br label %Vec_WrdAlloc.exit

Vec_WrdAlloc.exit:                                ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.g = icmp sgt i32 %2, 0
  %i.h = icmp sgt i32 %3, 0                       ; 2 uses
  %or.cond = and i1 %i.g, %i.h
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge27.split

.preheader.preheader:                             ; preds = %Vec_WrdAlloc.exit
  %wide.trip.count37 = zext nneg i32 %2 to i64
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.promoted23 = phi ptr [ %i.f, %.preheader.preheader ], [ %storemerge25, %._crit_edge ]
  %.promoted20 = phi i32 [ %spec.store.select.i, %.preheader.preheader ], [ %spec.select.sink.i21, %._crit_edge ]
  %.promoted = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge ]
  %indvars.iv34 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next35, %._crit_edge ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv34
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %Vec_WrdPush.exit
  %indvars.iv29 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next30, %Vec_WrdPush.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %.promoted, %.preheader ], [ %indvars.iv.next, %Vec_WrdPush.exit ] ; 7 uses
  %storemerge24 = phi ptr [ %.promoted23, %.preheader ], [ %storemerge25, %Vec_WrdPush.exit ] ; 6 uses
  %spec.select.sink.i22 = phi i32 [ %.promoted20, %.preheader ], [ %spec.select.sink.i21, %Vec_WrdPush.exit ] ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !90
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv29
  %i.l = load i64, ptr %i.k, align 8, !tbaa !106
  %i.m = trunc nsw i64 %indvars.iv to i32
  %i.n = icmp eq i32 %spec.select.sink.i22, %i.m
  br i1 %i.n, label %bb.d, label %Vec_WrdPush.exit

bb.d:                                             ; preds = %bb.c
  %i.o = icmp slt i64 %indvars.iv, 16
  br i1 %i.o, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not9.i.i = icmp eq ptr %storemerge24, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge24, i64 noundef 128) #32
  br label %Vec_WrdPush.exit

bb.g:                                             ; preds = %bb.e
  %i.q = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #33
  br label %Vec_WrdPush.exit

bb.h:                                             ; preds = %bb.d
  %i.r = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.s = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.r, i32 %i.s, i32 2147483647 ; 4 uses
  %i.t = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.t
  br i1 %.not.i9.i, label %bb.i, label %Vec_WrdPush.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i10.i = icmp eq ptr %storemerge24, null
  %i.u = zext nneg i32 %spec.select.i to i64
  %i.v = shl nuw nsw i64 %i.u, 3                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = tail call ptr @realloc(ptr noundef nonnull %storemerge24, i64 noundef %i.v) #32
  br label %Vec_WrdPush.exit

bb.k:                                             ; preds = %bb.i
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.v) #33
  br label %Vec_WrdPush.exit

Vec_WrdPush.exit:                                 ; preds = %bb.g, %bb.f, %bb.k, %bb.j, %bb.c, %bb.h
  %storemerge25 = phi ptr [ %storemerge24, %bb.c ], [ %storemerge24, %bb.h ], [ %i.q, %bb.g ], [ %i.p, %bb.f ], [ %i.w, %bb.j ], [ %i.x, %bb.k ] ; 4 uses
  %spec.select.sink.i21 = phi i32 [ %spec.select.sink.i22, %bb.c ], [ %spec.select.sink.i22, %bb.h ], [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %storemerge25, i64 %indvars.iv
  store i64 %i.l, ptr %i.y, align 8, !tbaa !106
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next30, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !264

._crit_edge:                                      ; preds = %Vec_WrdPush.exit
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1 ; 2 uses
  %exitcond38.not = icmp eq i64 %indvars.iv.next35, %wide.trip.count37
  br i1 %exitcond38.not, label %._crit_edge27.split.loopexit, label %.preheader, !llvm.loop !265

._crit_edge27.split.loopexit:                     ; preds = %._crit_edge
  %i.z = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge27.split

._crit_edge27.split:                              ; preds = %._crit_edge27.split.loopexit, %Vec_WrdAlloc.exit
  %i.aa = phi ptr [ %storemerge25, %._crit_edge27.split.loopexit ], [ %i.f, %Vec_WrdAlloc.exit ] ; 3 uses
  %.val20.i = phi i32 [ %i.z, %._crit_edge27.split.loopexit ], [ 0, %Vec_WrdAlloc.exit ]
  %i.ab = sdiv i32 %.val20.i, %3                  ; 4 uses
  %i.ac = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.59) ; 6 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.o, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge27.split
  %i.ae = icmp sgt i32 %i.ab, 0
  br i1 %i.ae, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.af = shl i32 %3, 4
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.af, i32 1)
  br i1 %i.h, label %.lr.ph.preheader.i.us.preheader.i, label %Vec_WrdDumpHexOne.exit.i

.lr.ph.preheader.i.us.preheader.i:                ; preds = %.lr.ph.i
  %i.ag = zext nneg i32 %3 to i64
  %wide.trip.count.i = zext nneg i32 %i.ab to i64
  br label %.lr.ph.preheader.i.us.i

.lr.ph.preheader.i.us.i:                          ; preds = %Vec_WrdDumpHexOne.exit.loopexit.us.i, %.lr.ph.preheader.i.us.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.us.preheader.i ], [ %indvars.iv.next.i, %Vec_WrdDumpHexOne.exit.loopexit.us.i ] ; 2 uses
  %i.ah = mul nuw nsw i64 %indvars.iv.i, %i.ag
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ah
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %bb.n, %.lr.ph.preheader.i.us.i
  %.014.i.us.i = phi i32 [ %i.aw, %bb.n ], [ 0, %.lr.ph.preheader.i.us.i ] ; 3 uses
  %i.aj = lshr i32 %.014.i.us.i, 4
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !106
  %i.an = shl i32 %.014.i.us.i, 2
  %i.ao = and i32 %i.an, 60
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = lshr i64 %i.am, %i.ap
  %i.ar = trunc i64 %i.aq to i32
  %i.as = and i32 %i.ar, 15                       ; 3 uses
  %i.at = icmp samesign ult i32 %i.as, 10
  br i1 %i.at, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.us.i
  %i.au = add nuw nsw i32 %i.as, 55
  %fputc13.i.us.i = tail call i32 @fputc(i32 %i.au, ptr nonnull %i.ac) ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.us.i
  %i.av = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.ac, ptr noundef nonnull @.str.61, i32 noundef %i.as) #34 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aw = add nuw nsw i32 %.014.i.us.i, 1         ; 2 uses
  %exitcond.not.i.us.i = icmp eq i32 %i.aw, %smax.i.i
  br i1 %exitcond.not.i.us.i, label %Vec_WrdDumpHexOne.exit.loopexit.us.i, label %.lr.ph.i.us.i, !llvm.loop !266

Vec_WrdDumpHexOne.exit.loopexit.us.i:             ; preds = %bb.n
  %fputc.i.us.i = tail call i32 @fputc(i32 10, ptr nonnull %i.ac) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond24.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond24.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i.us.i, !llvm.loop !267

bb.o:                                             ; preds = %._crit_edge27.split
  %i.ax = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, ptr noundef %0) ; 0 uses
  br label %Vec_WrdDumpHex.exit

Vec_WrdDumpHexOne.exit.i:                         ; preds = %.lr.ph.i, %Vec_WrdDumpHexOne.exit.i
  %.021.i = phi i32 [ %i.ay, %Vec_WrdDumpHexOne.exit.i ], [ 0, %.lr.ph.i ]
  %fputc.i.i = tail call i32 @fputc(i32 10, ptr nonnull %i.ac) ; 0 uses
  %i.ay = add nuw nsw i32 %.021.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ay, %i.ab
  br i1 %exitcond.not.i, label %._crit_edge.i, label %Vec_WrdDumpHexOne.exit.i, !llvm.loop !267

._crit_edge.i:                                    ; preds = %Vec_WrdDumpHexOne.exit.i, %Vec_WrdDumpHexOne.exit.loopexit.us.i, %.preheader.i
  %i.az = tail call i32 @fclose(ptr noundef nonnull %i.ac) ; 0 uses
  %i.ba = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, i32 noundef %3, i32 noundef %i.ab, ptr noundef %0) ; 0 uses
  br label %Vec_WrdDumpHex.exit

Vec_WrdDumpHex.exit:                              ; preds = %bb.o, %._crit_edge.i
  %.not.i17 = icmp eq ptr %i.aa, null
  br i1 %.not.i17, label %Vec_WrdFree.exit, label %bb.p

bb.p:                                             ; preds = %Vec_WrdDumpHex.exit
  tail call void @free(ptr noundef nonnull %i.aa) #34
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %Vec_WrdDumpHex.exit, %bb.p
  ret void
}

; Function Attrs: nounwind uwtable
define void @Gia_ManResubTest3() local_unnamed_addr #2 {
Vec_PtrPush.exit.5:
  %i.a = alloca [6 x i64], align 16               ; 10 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 -6148914691236517206, ptr %i.d, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store i64 -3689348814741910324, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 -1085102592571150096, ptr %i.f, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 -71777214294589696, ptr %i.g, align 8
  %i.h = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.j = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.l = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store ptr %i.a, ptr %i.j, align 8, !tbaa !105
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !105
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.d, ptr %i.o, align 8, !tbaa !105
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.e, ptr %i.p, align 8, !tbaa !105
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.f, ptr %i.q, align 8, !tbaa !105
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr %i.g, ptr %i.r, align 8, !tbaa !105
  store i32 6, ptr %i.i, align 4, !tbaa !84
  store i32 8, ptr %i.h, align 8
  store ptr %i.j, ptr %i.k, align 8
  %i.s = load ptr, ptr @s_pResbMan, align 8, !tbaa !262 ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %Abc_ResubPrepareManager.exit, label %bb.a

bb.a:                                             ; preds = %Vec_PtrPush.exit.5
  call void @Gia_ResbFree(ptr noundef nonnull %i.s)
  br label %Abc_ResubPrepareManager.exit

Abc_ResubPrepareManager.exit:                     ; preds = %Vec_PtrPush.exit.5, %bb.a
  %i.t = call ptr @Gia_ResbAlloc(i32 noundef 1)
  store ptr %i.t, ptr @s_pResbMan, align 8, !tbaa !262
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %Abc_ResubPrepareManager.exit
  %.promoted51 = phi ptr [ %i.l, %Abc_ResubPrepareManager.exit ], [ %i.as, %._crit_edge ] ; 2 uses
  %.promoted48 = phi i32 [ 100, %Abc_ResubPrepareManager.exit ], [ %.promoted4870, %._crit_edge ] ; 2 uses
  %indvars.iv66 = phi i64 [ 0, %Abc_ResubPrepareManager.exit ], [ %indvars.iv.next67, %._crit_edge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.u = mul nuw nsw i64 %indvars.iv66, 281479271743489 ; 3 uses
  store i64 %i.u, ptr %i.c, align 8, !tbaa !106
  %i.v = xor i64 %i.u, -1
  store i64 %i.v, ptr %i.a, align 16, !tbaa !106
  store i64 %i.u, ptr %i.m, align 8, !tbaa !106
  %i.w = trunc nuw nsw i64 %indvars.iv66 to i32
  %i.x = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %i.w) ; 0 uses
  %i.y = load ptr, ptr @stdout, align 8, !tbaa !268
  call void @Extra_PrintHex(ptr noundef %i.y, ptr noundef nonnull %i.c, i32 noundef 4) #34
  %putchar = call i32 @putchar(i32 32)            ; 0 uses
  call void @Dau_DsdPrintFromTruth2(ptr noundef nonnull %i.c, i32 noundef 4) #34
  %i.z = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34) ; 0 uses
  %.val27 = load ptr, ptr %i.k, align 8, !tbaa !88
  %.val = load i32, ptr %i.i, align 4, !tbaa !84
  %i.aa = call i32 @Abc_ResubComputeFunction(ptr noundef %.val27, i32 noundef %.val, i32 noundef 1, i32 noundef 16, i32 noundef 50, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %i.b) ; 2 uses
  %putchar26 = call i32 @putchar(i32 10)          ; 0 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !69
  %wide.trip.count = zext nneg i32 %i.aa to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %Vec_IntPush.exit
  %indvars.iv61 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next62, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 7 uses
  %storemerge52 = phi ptr [ %.promoted51, %.lr.ph ], [ %storemerge53, %Vec_IntPush.exit ] ; 6 uses
  %spec.select.sink.i2950 = phi i32 [ %.promoted48, %.lr.ph ], [ %spec.select.sink.i2949, %Vec_IntPush.exit ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv61
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !33
  %i.af = trunc nsw i64 %indvars.iv to i32
  %i.ag = icmp eq i32 %spec.select.sink.i2950, %i.af
  br i1 %i.ag, label %bb.d, label %Vec_IntPush.exit

bb.d:                                             ; preds = %bb.c
  %i.ah = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.ah, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not9.i.i30 = icmp eq ptr %storemerge52, null
  br i1 %.not9.i.i30, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge52, i64 noundef 64) #32
  br label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.e
  %i.aj = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.d
  %i.ak = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.al = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i28 = select i1 %i.ak, i32 %i.al, i32 2147483647 ; 4 uses
  %i.am = sext i32 %spec.select.i28 to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.am
  br i1 %.not.i9.i, label %bb.i, label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i10.i = icmp eq ptr %storemerge52, null
  %i.an = zext nneg i32 %spec.select.i28 to i64
  %i.ao = shl nuw nsw i64 %i.an, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = call ptr @realloc(ptr noundef nonnull %storemerge52, i64 noundef %i.ao) #32
  br label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.i
  %i.aq = call noalias ptr @malloc(i64 noundef %i.ao) #33
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.g, %bb.f, %bb.k, %bb.j, %bb.c, %bb.h
  %storemerge53 = phi ptr [ %storemerge52, %bb.c ], [ %storemerge52, %bb.h ], [ %i.aj, %bb.g ], [ %i.ai, %bb.f ], [ %i.ap, %bb.j ], [ %i.aq, %bb.k ] ; 3 uses
  %spec.select.sink.i2949 = phi i32 [ %spec.select.sink.i2950, %bb.c ], [ %spec.select.sink.i2950, %bb.h ], [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i28, %bb.j ], [ %spec.select.i28, %bb.k ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %storemerge53, i64 %indvars.iv
  store i32 %i.ae, ptr %i.ar, align 4, !tbaa !33
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !270

._crit_edge:                                      ; preds = %Vec_IntPush.exit, %bb.b
  %i.as = phi ptr [ %.promoted51, %bb.b ], [ %storemerge53, %Vec_IntPush.exit ] ; 3 uses
  %.promoted4870 = phi i32 [ %.promoted48, %bb.b ], [ %spec.select.sink.i2949, %Vec_IntPush.exit ]
  %i.at = icmp eq i64 %indvars.iv66, 1000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  br i1 %i.at, label %split, label %bb.b

split:                                            ; preds = %._crit_edge
  %i.au = load ptr, ptr @s_pResbMan, align 8, !tbaa !262 ; 2 uses
  %.not.i31 = icmp eq ptr %i.au, null
  br i1 %.not.i31, label %Abc_ResubPrepareManager.exit32, label %bb.l

bb.l:                                             ; preds = %split
  call void @Gia_ResbFree(ptr noundef nonnull %i.au)
  br label %Abc_ResubPrepareManager.exit32

Abc_ResubPrepareManager.exit32:                   ; preds = %split, %bb.l
  store ptr null, ptr @s_pResbMan, align 8, !tbaa !262
  %.not.i33 = icmp eq ptr %i.as, null
  br i1 %.not.i33, label %Vec_IntFree.exit, label %bb.m

bb.m:                                             ; preds = %Abc_ResubPrepareManager.exit32
  call void @free(ptr noundef nonnull %i.as) #34
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Abc_ResubPrepareManager.exit32, %bb.m
  %i.av = load ptr, ptr %i.k, align 8, !tbaa !88  ; 2 uses
  %.not.i34 = icmp eq ptr %i.av, null
  br i1 %.not.i34, label %Vec_PtrFree.exit, label %bb.n

bb.n:                                             ; preds = %Vec_IntFree.exit
  call void @free(ptr noundef nonnull %i.av) #34
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %Vec_IntFree.exit, %bb.n
  call void @free(ptr noundef nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret void
}

declare void @Extra_PrintHex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @Dau_DsdPrintFromTruth2(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @Gia_ManResubTest3_() local_unnamed_addr #2 {
Vec_PtrFree.exit:
  %i.a = alloca [6 x i64], align 16               ; 9 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = tail call ptr @Gia_ResbAlloc(i32 noundef 1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 -6148914691236517206, ptr %i.d, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store i64 -3689348814741910324, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 -1085102592571150096, ptr %i.f, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 -71777214294589696, ptr %i.g, align 8
  %i.h = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.a, ptr %i.j, align 8, !tbaa !105
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.l, ptr %i.m, align 8, !tbaa !105
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.d, ptr %i.n, align 8, !tbaa !105
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.e, ptr %i.o, align 8, !tbaa !105
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.f, ptr %i.p, align 8, !tbaa !105
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr %i.g, ptr %i.q, align 8, !tbaa !105
  store i32 6, ptr %i.i, align 4, !tbaa !84
  store i32 8, ptr %i.h, align 8
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store i64 -2305596714850918400, ptr %i.b, align 8, !tbaa !106
  store i64 2305596714850918399, ptr %i.a, align 16, !tbaa !106
  store i64 -2305596714850918400, ptr %i.l, align 8, !tbaa !106
  %i.r = load ptr, ptr @stdout, align 8, !tbaa !268
  call void @Extra_PrintHex(ptr noundef %i.r, ptr noundef nonnull %i.b, i32 noundef 6) #34
  %putchar = call i32 @putchar(i32 32)            ; 0 uses
  call void @Dau_DsdPrintFromTruth2(ptr noundef nonnull %i.b, i32 noundef 6) #34
  %i.s = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35) ; 0 uses
  call void @Gia_ManResubPerform(ptr noundef %i.c, ptr noundef nonnull %i.h, i32 noundef 1, i32 noundef 100, i32 noundef 0, i32 noundef 50, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @Gia_ResbFree(ptr noundef %i.c)
  call void @free(ptr noundef nonnull %i.j) #34
  call void @free(ptr noundef nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret void
}

; Function Attrs: nounwind uwtable
define void @Gia_ManResubPair(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = shl nsw i32 %2, 1                        ; 3 uses
  %i.b = tail call ptr @Gia_ResbAlloc(i32 noundef %i.a) ; 3 uses
  %i.c = add nsw i32 %3, 2                        ; 6 uses
  %i.d = sext i32 %i.a to i64                     ; 6 uses
  %i.e = shl nsw i64 %i.d, 2
  %i.f = add nsw i64 %i.e, 8
  %i.g = sext i32 %i.c to i64                     ; 2 uses
  %i.h = mul i64 %i.f, %i.g
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #33 ; 8 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.g ; 5 uses
  %i.k = icmp sgt i32 %3, -2                      ; 2 uses
  br i1 %i.k, label %.lr.ph.preheader.i, label %Vec_PtrAllocSimInfo.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.c to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.l = add i32 %3, 1
  %i.m = icmp ult i32 %i.l, 3
  br i1 %i.m, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.n = mul nsw i64 %indvars.iv.i, %i.d
  %i.o = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.n
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  store ptr %i.o, ptr %i.p, align 8, !tbaa !105
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.q = mul nsw i64 %indvars.iv.next.i, %i.d
  %i.r = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.q
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i
  store ptr %i.r, ptr %i.s, align 8, !tbaa !105
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.t = mul nsw i64 %indvars.iv.next.i.1, %i.d
  %i.u = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.t
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i.1
  store ptr %i.u, ptr %i.v, align 8, !tbaa !105
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.w = mul nsw i64 %indvars.iv.next.i.2, %i.d
  %i.x = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.w
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i.2
  store ptr %i.x, ptr %i.y, align 8, !tbaa !105
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %Vec_PtrAllocSimInfo.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !271

Vec_PtrAllocSimInfo.exit.loopexit.unr-lcssa:      ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Vec_PtrAllocSimInfo.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %Vec_PtrAllocSimInfo.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %Vec_PtrAllocSimInfo.exit.loopexit.unr-lcssa ]
  %lcmp.mod42 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod42)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.z = mul nsw i64 %indvars.iv.i.epil, %i.d
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.z
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.epil
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !105
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
end_hunk_1
begin_hunk_2_@Gia_ManResubPair:bb.a
bb.e:                                             ; preds = %bb.b
  %i.ao = add nsw i64 %indvars.iv, -2
  %i.ap = mul nsw i64 %i.ao, %i.af                ; 2 uses
  %.val39 = load ptr, ptr %i.ah, align 8, !tbaa !96
  %i.aq = getelementptr inbounds [8 x i8], ptr %.val39, i64 %i.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ak, ptr align 8 %i.aq, i64 %i.ag, i1 false)
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.af
  %.val38 = load ptr, ptr %i.ai, align 8, !tbaa !96
  %i.as = getelementptr inbounds [8 x i8], ptr %.val38, i64 %i.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ar, ptr align 8 %i.as, i64 %i.ag, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !273

.critedge:                                        ; preds = %bb.f, %Vec_PtrAllocSimInfo.exit
  tail call void @Gia_ManResubPerform(ptr noundef %i.b, ptr noundef nonnull %i.ac, i32 noundef %i.a, i32 noundef 100, i32 noundef 0, i32 noundef 50, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0)
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !83
  %i.av = tail call i32 @Gia_ManResubPrint(ptr noundef %i.au, i32 noundef %i.c) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  tail call void @Gia_ResbFree(ptr noundef %i.b)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define void @Gia_ManCheckResub(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val36 = load ptr, ptr %i.a, align 8, !tbaa !88 ; 2 uses
  %i.b = load ptr, ptr %.val36, align 8, !tbaa !105
  %i.c = getelementptr inbounds nuw i8, ptr %.val36, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !105
  %i.e = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #33 ; 4 uses
  %.not.i = icmp eq ptr %i.e, null                ; 2 uses
  br i1 %.not.i, label %Vec_IntStartFull.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.e, i8 -1, i64 256, i1 false)
  br label %Vec_IntStartFull.exit

Vec_IntStartFull.exit:                            ; preds = %bb.a, %bb.b
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.f = icmp sgt i32 %1, 0
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %Vec_IntStartFull.exit
  %i.g = shl i32 %1, 6
  %smax = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.02940 = phi i32 [ %i.au, %bb.f ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.h = lshr i32 %.02940, 6
  %i.i = zext nneg i32 %i.h to i64                ; 5 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !106
  %i.l = and i32 %.02940, 63
  %i.m = zext nneg i32 %i.l to i64                ; 4 uses
  %i.n = lshr i64 %i.k, %i.m                      ; 2 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.o, 1                          ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.i
  %i.r = load i64, ptr %i.q, align 8, !tbaa !106
  %i.s = lshr i64 %i.r, %i.m
  %i.t = trunc i64 %i.s to i1
  %i.u = trunc i64 %i.n to i1
  %or.cond = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond, label %.preheader, label %bb.f

.preheader:                                       ; preds = %.lr.ph
  %.val34 = load ptr, ptr %i.a, align 8, !tbaa !88 ; 3 uses
  %i.v = shl nuw i64 1, %i.m                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val34, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !105
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  %i.z = load i64, ptr %i.y, align 8, !tbaa !106
  %i.aa = lshr i64 %i.z, %i.m
  %i.ab = and i64 %i.aa, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.val34, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !105
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.i
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !106
  %i.ag = and i64 %i.af, %i.v
  %.not31.1 = icmp eq i64 %i.ag, 0
  %i.ah = select i1 %.not31.1, i64 0, i64 2
  %i.ai = getelementptr inbounds nuw i8, ptr %.val34, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !105
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.i
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !106
  %i.am = and i64 %i.al, %i.v
  %.not31.2 = icmp eq i64 %i.am, 0
  %i.an = select i1 %.not31.2, i64 0, i64 4
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.an
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ah
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ab ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !33 ; 2 uses
  %i.as = icmp eq i32 %i.ar, -1
  br i1 %i.as, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader
  store i32 %i.p, ptr %i.aq, align 4, !tbaa !33
  br label %bb.f

bb.d:                                             ; preds = %.preheader
  %.not = icmp eq i32 %i.ar, %i.p
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %.02940) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %.lr.ph
  %i.au = add nuw nsw i32 %.02940, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.au, %smax
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !274

._crit_edge:                                      ; preds = %bb.f, %Vec_IntStartFull.exit
  %puts30 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.e) #34
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge, %bb.g
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Gia_ManDeriveDivs(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %.val10 = load i32, ptr %i.a, align 4, !tbaa !93
  %i.b = sdiv i32 %.val10, %1                     ; 4 uses
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 5 uses
  %i.d = add i32 %i.b, -1
  %or.cond.i = icmp ult i32 %i.d, 7
  %spec.store.select.i = select i1 %or.cond.i, i32 8, i32 %i.b ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  store i32 0, ptr %i.e, align 4, !tbaa !84
  store i32 %spec.store.select.i, ptr %i.c, align 8, !tbaa !87
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_PtrAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sext i32 %spec.store.select.i to i64
  %i.g = shl nsw i64 %i.f, 3
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #33
  br label %Vec_PtrAlloc.exit

Vec_PtrAlloc.exit:                                ; preds = %bb.a, %bb.b
  %.promoted15 = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.promoted15, ptr %i.i, align 8, !tbaa !88
  %i.j = icmp sgt i32 %i.b, 0
  br i1 %i.j, label %.lr.ph, label %bb.l

.lr.ph:                                           ; preds = %Vec_PtrAlloc.exit
  %i.k = getelementptr i8, ptr %0, i64 8
  %i.l = sext i32 %1 to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %Vec_PtrPush.exit
  %indvars.iv18 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next19, %Vec_PtrPush.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_PtrPush.exit ] ; 7 uses
  %storemerge16 = phi ptr [ %.promoted15, %.lr.ph ], [ %storemerge17, %Vec_PtrPush.exit ] ; 6 uses
  %spec.select.sink.i14 = phi i32 [ %spec.store.select.i, %.lr.ph ], [ %spec.select.sink.i13, %Vec_PtrPush.exit ] ; 3 uses
  %i.m = mul nsw i64 %indvars.iv18, %i.l
  %.val = load ptr, ptr %i.k, align 8, !tbaa !96
  %i.n = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.m
  %i.o = trunc nsw i64 %indvars.iv to i32
  %i.p = icmp eq i32 %spec.select.sink.i14, %i.o
  br i1 %i.p, label %bb.d, label %Vec_PtrPush.exit

bb.d:                                             ; preds = %bb.c
  %i.q = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.q, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not9.i.i = icmp eq ptr %storemerge16, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge16, i64 noundef 128) #32
  br label %Vec_PtrPush.exit

bb.g:                                             ; preds = %bb.e
  %i.s = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #33
  br label %Vec_PtrPush.exit

bb.h:                                             ; preds = %bb.d
  %i.t = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.u = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.t, i32 %i.u, i32 2147483647 ; 4 uses
  %i.v = sext i32 %spec.select.i to i64
  %.not.i10.i = icmp samesign ult i64 %indvars.iv, %i.v
  br i1 %.not.i10.i, label %bb.i, label %Vec_PtrPush.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i11.i = icmp eq ptr %storemerge16, null
  %i.w = zext nneg i32 %spec.select.i to i64
  %i.x = shl nuw nsw i64 %i.w, 3                  ; 2 uses
  br i1 %.not9.i11.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = tail call ptr @realloc(ptr noundef nonnull %storemerge16, i64 noundef %i.x) #32
  br label %Vec_PtrPush.exit

bb.k:                                             ; preds = %bb.i
  %i.z = tail call noalias ptr @malloc(i64 noundef %i.x) #33
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.g, %bb.f, %bb.k, %bb.j, %bb.c, %bb.h
  %storemerge17 = phi ptr [ %storemerge16, %bb.c ], [ %storemerge16, %bb.h ], [ %i.s, %bb.g ], [ %i.r, %bb.f ], [ %i.y, %bb.j ], [ %i.z, %bb.k ] ; 3 uses
  %spec.select.sink.i13 = phi i32 [ %spec.select.sink.i14, %bb.c ], [ %spec.select.sink.i14, %bb.h ], [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %storemerge17, i64 %indvars.iv
  store ptr %i.n, ptr %i.aa, align 8, !tbaa !105
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next19, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !275

._crit_edge:                                      ; preds = %Vec_PtrPush.exit
  %i.ab = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.ab, ptr %i.e, align 4, !tbaa !84
  store i32 %spec.select.sink.i13, ptr %i.c, align 8
  store ptr %storemerge17, ptr %i.i, align 8
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %Vec_PtrAlloc.exit
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noalias noundef ptr @Gia_ManResub2(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #18 {
bb.a:
  ret ptr null
}

; Function Attrs: nounwind uwtable
define noundef ptr @Gia_ManResub1(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.63) ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Vec_WrdReadHex.exit.thread, label %bb.b

Vec_WrdReadHex.exit.thread:                       ; preds = %bb.a
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.64, ptr noundef %0) ; 0 uses
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 3 uses
  store i32 0, ptr %i.e, align 4, !tbaa !93
  store i32 1000, ptr %i.d, align 8, !tbaa !95
  %i.f = tail call noalias dereferenceable_or_null(8000) ptr @malloc(i64 noundef 8000) #33 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !96
  br label %.outer.i

.outer.i:                                         ; preds = %bb.m, %bb.b
  %i.h = phi ptr [ %i.ag, %bb.m ], [ %i.f, %bb.b ]
  %i.i = phi i32 [ %i.ah, %bb.m ], [ 1000, %bb.b ]
  %.val4266.i = phi i32 [ %.val42.i, %bb.m ], [ 0, %bb.b ]
  %i.j = phi ptr [ %i.ai, %bb.m ], [ %i.f, %bb.b ]
  %i.k = phi ptr [ %i.aj, %bb.m ], [ %i.f, %bb.b ]
  %i.l = phi i32 [ %i.ak, %bb.m ], [ 1000, %bb.b ]
  %i.m = phi i32 [ %i.ao, %bb.m ], [ 0, %bb.b ]
  %.034.ph.i = phi i32 [ %.135.i, %bb.m ], [ -1, %bb.b ] ; 7 uses
  %.032.ph.i = phi i32 [ %.133.i, %bb.m ], [ 0, %bb.b ]
  %.0.ph.i = phi i64 [ %.1.i, %bb.m ], [ 0, %bb.b ]
  br label %.outer53.i.outer

.outer53.i.outer:                                 ; preds = %Vec_WrdPush.exit51.i, %.outer.i
  %.ph = phi ptr [ %i.bo, %Vec_WrdPush.exit51.i ], [ %i.h, %.outer.i ] ; 5 uses
  %.ph132 = phi i32 [ %i.bp, %Vec_WrdPush.exit51.i ], [ %i.i, %.outer.i ] ; 10 uses
  %.ph133 = phi i32 [ %i.bq, %Vec_WrdPush.exit51.i ], [ %.val4266.i, %.outer.i ] ; 5 uses
  %.ph134 = phi ptr [ %i.bo, %Vec_WrdPush.exit51.i ], [ %i.j, %.outer.i ] ; 7 uses
  %.ph135 = phi ptr [ %i.bo, %Vec_WrdPush.exit51.i ], [ %i.k, %.outer.i ] ; 5 uses
  %.ph136 = phi i32 [ %i.bp, %Vec_WrdPush.exit51.i ], [ %i.l, %.outer.i ] ; 8 uses
  %.ph137 = phi i32 [ %i.bq, %Vec_WrdPush.exit51.i ], [ %i.m, %.outer.i ] ; 4 uses
  %.032.ph54.i.ph = phi i32 [ 0, %Vec_WrdPush.exit51.i ], [ %.032.ph.i, %.outer.i ]
  %.0.ph55.i.ph = phi i64 [ 0, %Vec_WrdPush.exit51.i ], [ %.0.ph.i, %.outer.i ]
  br label %.outer53.i

.outer53.i:                                       ; preds = %.outer53.i.outer, %Vec_WrdReadHexOne.exit.i
  %.032.ph54.i = phi i32 [ %i.bc, %Vec_WrdReadHexOne.exit.i ], [ %.032.ph54.i.ph, %.outer53.i.outer ] ; 5 uses
  %.0.ph55.i = phi i64 [ %i.bb, %Vec_WrdReadHexOne.exit.i ], [ %.0.ph55.i.ph, %.outer53.i.outer ] ; 3 uses
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %.outer53.i
  %i.n = tail call i32 @fgetc(ptr noundef nonnull %i.a) ; 3 uses
  switch i32 %i.n, label %bb.n [
    i32 -1, label %Vec_WrdReadHex.exit
    i32 32, label %.backedge.i.backedge
    i32 13, label %.backedge.i.backedge
    i32 9, label %.backedge.i.backedge
    i32 10, label %bb.c
  ]

.backedge.i.backedge:                             ; preds = %.backedge.i, %.backedge.i, %.backedge.i
  br label %.backedge.i

bb.c:                                             ; preds = %.backedge.i
  %i.o = icmp sgt i32 %.032.ph54.i, 0
  br i1 %i.o, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.p = icmp eq i32 %.ph137, %.ph136
  br i1 %i.p, label %bb.e, label %Vec_WrdPush.exit.i

bb.e:                                             ; preds = %bb.d
  %i.q = icmp slt i32 %.ph136, 16
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not9.i.i.i = icmp eq ptr %.ph135, null
  br i1 %.not9.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %.ph135, i64 noundef 128) #32
  br label %Vec_WrdGrow.exit11.sink.split.i.i

bb.h:                                             ; preds = %bb.f
  %i.s = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #33
  br label %Vec_WrdGrow.exit11.sink.split.i.i

bb.i:                                             ; preds = %bb.e
  %i.t = icmp samesign ult i32 %.ph136, 1073741823
  %i.u = shl nuw nsw i32 %.ph136, 1
  %spec.select.i.i = select i1 %i.t, i32 %i.u, i32 2147483647 ; 4 uses
  %.not.i9.i.i = icmp samesign ult i32 %.ph136, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.j, label %Vec_WrdPush.exit.i

bb.j:                                             ; preds = %bb.i
  %.not9.i10.i.i = icmp eq ptr %.ph135, null
  %i.v = zext nneg i32 %spec.select.i.i to i64
  %i.w = shl nuw nsw i64 %i.v, 3                  ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = tail call ptr @realloc(ptr noundef nonnull %.ph135, i64 noundef %i.w) #32
  br label %Vec_WrdGrow.exit11.sink.split.i.i

bb.l:                                             ; preds = %bb.j
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.w) #33
  br label %Vec_WrdGrow.exit11.sink.split.i.i

Vec_WrdGrow.exit11.sink.split.i.i:                ; preds = %bb.l, %bb.k, %bb.h, %bb.g
  %storemerge.i = phi ptr [ %i.s, %bb.h ], [ %i.r, %bb.g ], [ %i.x, %bb.k ], [ %i.y, %bb.l ] ; 3 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.h ], [ 16, %bb.g ], [ %spec.select.i.i, %bb.k ], [ %spec.select.i.i, %bb.l ] ; 3 uses
  store ptr %storemerge.i, ptr %i.g, align 8, !tbaa !96
  store i32 %spec.select.sink.i.i, ptr %i.d, align 8, !tbaa !95
  br label %Vec_WrdPush.exit.i

Vec_WrdPush.exit.i:                               ; preds = %Vec_WrdGrow.exit11.sink.split.i.i, %bb.i, %bb.d
  %i.z = phi ptr [ %.ph, %bb.d ], [ %.ph, %bb.i ], [ %storemerge.i, %Vec_WrdGrow.exit11.sink.split.i.i ]
  %i.aa = phi i32 [ %.ph132, %bb.d ], [ %.ph132, %bb.i ], [ %spec.select.sink.i.i, %Vec_WrdGrow.exit11.sink.split.i.i ]
  %i.ab = phi ptr [ %.ph134, %bb.d ], [ %.ph134, %bb.i ], [ %storemerge.i, %Vec_WrdGrow.exit11.sink.split.i.i ] ; 3 uses
  %i.ac = phi i32 [ %.ph136, %bb.d ], [ %.ph136, %bb.i ], [ %spec.select.sink.i.i, %Vec_WrdGrow.exit11.sink.split.i.i ]
  %i.ad = add nsw i32 %.ph137, 1                  ; 3 uses
  store i32 %i.ad, ptr %i.e, align 4, !tbaa !93
  %i.ae = sext i32 %.ph137 to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ae
  store i64 %.0.ph55.i, ptr %i.af, align 8, !tbaa !106
  br label %bb.m

bb.m:                                             ; preds = %Vec_WrdPush.exit.i, %bb.c
  %i.ag = phi ptr [ %i.z, %Vec_WrdPush.exit.i ], [ %.ph, %bb.c ]
  %i.ah = phi i32 [ %i.aa, %Vec_WrdPush.exit.i ], [ %.ph132, %bb.c ]
  %.val42.i = phi i32 [ %i.ad, %Vec_WrdPush.exit.i ], [ %.ph133, %bb.c ] ; 4 uses
  %i.ai = phi ptr [ %i.ab, %Vec_WrdPush.exit.i ], [ %.ph134, %bb.c ]
  %i.aj = phi ptr [ %i.ab, %Vec_WrdPush.exit.i ], [ %.ph135, %bb.c ]
  %i.ak = phi i32 [ %i.ac, %Vec_WrdPush.exit.i ], [ %.ph136, %bb.c ]
  %i.al = phi i32 [ %i.ad, %Vec_WrdPush.exit.i ], [ %.ph137, %bb.c ]
  %.133.i = phi i32 [ 0, %Vec_WrdPush.exit.i ], [ %.032.ph54.i, %bb.c ]
  %.1.i = phi i64 [ 0, %Vec_WrdPush.exit.i ], [ %.0.ph55.i, %bb.c ]
  %i.am = icmp eq i32 %.034.ph.i, -1              ; 2 uses
  %i.an = icmp sgt i32 %.val42.i, 0
  %spec.select.i = select i1 %i.an, i32 %.val42.i, i32 -1
  %i.ao = select i1 %i.am, i32 %.val42.i, i32 %i.al
  %.135.i = select i1 %i.am, i32 %spec.select.i, i32 %.034.ph.i
  br label %.outer.i, !llvm.loop !276

bb.n:                                             ; preds = %.backedge.i
  %i.ap = trunc i32 %i.n to i8                    ; 3 uses
  %sext.i = shl i32 %i.n, 24
  %i.aq = ashr exact i32 %sext.i, 24              ; 3 uses
  %i.ar = add i8 %i.ap, -48
  %or.cond.i.i = icmp ult i8 %i.ar, 10
  br i1 %or.cond.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
end_hunk_2
begin_hunk_3_@Gia_ManResubFindUsed:bb.a

Vec_IntAlloc.exit.thread.i:                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !32
  store i32 %1, ptr %i.c, align 4, !tbaa !30
  br label %Vec_IntStartFull.exit

Vec_IntAlloc.exit.i:                              ; preds = %bb.a
  %i.e = sext i32 %spec.store.select.i.i to i64
  %i.f = shl nsw i64 %i.e, 2
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #33 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !32
  store i32 %1, ptr %i.c, align 4, !tbaa !30
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %Vec_IntStartFull.exit, label %bb.b

bb.b:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.i = sext i32 %1 to i64
  %i.j = shl nsw i64 %i.i, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.g, i8 -1, i64 %i.j, i1 false)
  br label %Vec_IntStartFull.exit

Vec_IntStartFull.exit:                            ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.b
  %.promoted55 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i ], [ null, %Vec_IntAlloc.exit.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !30   ; 4 uses
  %.not.i37 = icmp eq i32 %i.l, 0
  br i1 %.not.i37, label %Vec_IntDup.exit, label %bb.c

bb.c:                                             ; preds = %Vec_IntStartFull.exit
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = shl nsw i64 %i.m, 2                      ; 2 uses
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #33
  br label %Vec_IntDup.exit

Vec_IntDup.exit:                                  ; preds = %Vec_IntStartFull.exit, %bb.c
  %.pre-phi = phi i64 [ %i.m, %bb.c ], [ 0, %Vec_IntStartFull.exit ]
  %.pre-phi12.i = phi i64 [ %i.n, %bb.c ], [ 0, %Vec_IntStartFull.exit ]
  %i.p = phi ptr [ %i.o, %bb.c ], [ null, %Vec_IntStartFull.exit ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.p, ptr align 4 %i.r, i64 %.pre-phi12.i, i1 false)
  %i.s = getelementptr i8, ptr %i.a, i64 8
  store i32 0, ptr %.promoted55, align 4, !tbaa !33
  tail call void @qsort(ptr noundef %i.p, i64 noundef %.pre-phi, i64 noundef 4, ptr noundef nonnull @Vec_IntSortCompare1) #34
  %i.t = icmp sgt i32 %i.l, 0
  br i1 %i.t, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_IntDup.exit
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %wide.trip.count = zext nneg i32 %i.l to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 2 uses
  %.048 = phi i32 [ 1, %.lr.ph ], [ %.1, %bb.o ]  ; 4 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4, !tbaa !33
  %i.y = ashr i32 %i.x, 1                         ; 4 uses
  %i.z = icmp sgt i32 %i.y, 0
  %i.aa = icmp slt i32 %i.y, %1
  %or.cond = and i1 %i.z, %i.aa
  br i1 %or.cond, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.ab = zext nneg i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.promoted55, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !33
  %i.ae = icmp eq i32 %i.ad, -1
  br i1 %i.ae, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.af = add nsw i32 %.048, 1
  store i32 %.048, ptr %i.ac, align 4, !tbaa !33
  %i.ag = add nsw i32 %i.y, -2
  %i.ah = load i32, ptr %i.u, align 4, !tbaa !30  ; 7 uses
  %i.ai = load i32, ptr %3, align 8, !tbaa !31
  %i.aj = icmp eq i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.g, label %.Vec_IntPush.exit_crit_edge

.Vec_IntPush.exit_crit_edge:                      ; preds = %bb.f
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !32
  br label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.f
  %i.ak = icmp slt i32 %i.ah, 16
  br i1 %i.ak, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %i.v, align 8, !tbaa !32  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.al, null
  br i1 %.not9.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.al, i64 noundef 64) #32
  br label %Vec_IntGrow.exit11.sink.split.i

bb.j:                                             ; preds = %bb.h
  %i.an = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit11.sink.split.i

bb.k:                                             ; preds = %bb.g
  %i.ao = icmp samesign ult i32 %i.ah, 1073741823
  %i.ap = shl nuw nsw i32 %i.ah, 1
  %spec.select.i = select i1 %i.ao, i32 %i.ap, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.ah, %spec.select.i
  %.pre63 = load ptr, ptr %i.v, align 8, !tbaa !32 ; 3 uses
  br i1 %.not.i9.i, label %bb.l, label %Vec_IntPush.exit

bb.l:                                             ; preds = %bb.k
  %.not9.i10.i = icmp eq ptr %.pre63, null
  %i.aq = zext nneg i32 %spec.select.i to i64
  %i.ar = shl nuw nsw i64 %i.aq, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = tail call ptr @realloc(ptr noundef nonnull %.pre63, i64 noundef %i.ar) #32
  br label %Vec_IntGrow.exit11.sink.split.i

bb.n:                                             ; preds = %bb.l
  %i.at = tail call noalias ptr @malloc(i64 noundef %i.ar) #33
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.m, %bb.n, %bb.i, %bb.j
  %i.au = phi ptr [ %i.an, %bb.j ], [ %i.am, %bb.i ], [ %i.as, %bb.m ], [ %i.at, %bb.n ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.j ], [ 16, %bb.i ], [ %spec.select.i, %bb.m ], [ %spec.select.i, %bb.n ]
  store ptr %i.au, ptr %i.v, align 8, !tbaa !32
  store i32 %spec.select.sink.i, ptr %3, align 8, !tbaa !31
  %.pre64 = load i32, ptr %i.u, align 4, !tbaa !30
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.Vec_IntPush.exit_crit_edge, %bb.k, %Vec_IntGrow.exit11.sink.split.i
  %i.av = phi i32 [ %i.ah, %.Vec_IntPush.exit_crit_edge ], [ %i.ah, %bb.k ], [ %.pre64, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.aw = phi ptr [ %.pre, %.Vec_IntPush.exit_crit_edge ], [ %.pre63, %bb.k ], [ %i.au, %Vec_IntGrow.exit11.sink.split.i ]
  %i.ax = add nsw i32 %i.av, 1
  store i32 %i.ax, ptr %i.u, align 4, !tbaa !30
  %i.ay = sext i32 %i.av to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ay
  store i32 %i.ag, ptr %i.az, align 4, !tbaa !33
  br label %bb.o

bb.o:                                             ; preds = %Vec_IntPush.exit, %bb.e, %bb.d
  %.1 = phi i32 [ %i.af, %Vec_IntPush.exit ], [ %.048, %bb.e ], [ %.048, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.thread, label %bb.d, !llvm.loop !353

.critedge:                                        ; preds = %Vec_IntDup.exit
  %.not.i38 = icmp eq ptr %i.p, null
  br i1 %.not.i38, label %Vec_IntFree.exit, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.o, %.critedge
  %.0.lcssa76 = phi i32 [ 1, %.critedge ], [ %.1, %bb.o ]
  tail call void @free(ptr noundef nonnull %i.p) #34
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge, %.critedge.thread
  %.0.lcssa77 = phi i32 [ 1, %.critedge ], [ %.0.lcssa76, %.critedge.thread ]
  %i.ba = add nsw i32 %2, %1
  %i.bb = icmp sgt i32 %2, 0
  br i1 %i.bb, label %.lr.ph51, label %bb.y

.lr.ph51:                                         ; preds = %Vec_IntFree.exit
  %.promoted = load i32, ptr %i.c, align 4, !tbaa !30
  %.promoted52 = load i32, ptr %i.a, align 8, !tbaa !31
  %i.bc = sext i32 %.promoted to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph51, %Vec_IntPush.exit46
  %indvars.iv59 = phi i64 [ %i.bc, %.lr.ph51 ], [ %indvars.iv.next60, %Vec_IntPush.exit46 ] ; 7 uses
  %storemerge56 = phi ptr [ %.promoted55, %.lr.ph51 ], [ %storemerge57, %Vec_IntPush.exit46 ] ; 6 uses
  %spec.select.sink.i4354 = phi i32 [ %.promoted52, %.lr.ph51 ], [ %spec.select.sink.i4353, %Vec_IntPush.exit46 ] ; 3 uses
  %.250 = phi i32 [ %.0.lcssa77, %.lr.ph51 ], [ %i.bd, %Vec_IntPush.exit46 ] ; 2 uses
  %.02949 = phi i32 [ %1, %.lr.ph51 ], [ %i.br, %Vec_IntPush.exit46 ]
  %i.bd = add nsw i32 %.250, 1
  %i.be = trunc nsw i64 %indvars.iv59 to i32
  %i.bf = icmp eq i32 %spec.select.sink.i4354, %i.be
  br i1 %i.bf, label %bb.q, label %Vec_IntPush.exit46

bb.q:                                             ; preds = %bb.p
  %i.bg = icmp slt i64 %indvars.iv59, 16
  br i1 %i.bg, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %.not9.i.i44 = icmp eq ptr %storemerge56, null
  br i1 %.not9.i.i44, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge56, i64 noundef 64) #32
  br label %Vec_IntPush.exit46

bb.t:                                             ; preds = %bb.r
  %i.bi = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntPush.exit46

bb.u:                                             ; preds = %bb.q
  %i.bj = icmp samesign ult i64 %indvars.iv59, 1073741823
  %indvars.iv59.tr = trunc i64 %indvars.iv59 to i32
  %i.bk = shl nsw i32 %indvars.iv59.tr, 1
  %spec.select.i39 = select i1 %i.bj, i32 %i.bk, i32 2147483647 ; 4 uses
  %i.bl = sext i32 %spec.select.i39 to i64
  %.not.i9.i40 = icmp samesign ult i64 %indvars.iv59, %i.bl
  br i1 %.not.i9.i40, label %bb.v, label %Vec_IntPush.exit46

bb.v:                                             ; preds = %bb.u
  %.not9.i10.i41 = icmp eq ptr %storemerge56, null
  %i.bm = zext nneg i32 %spec.select.i39 to i64
  %i.bn = shl nuw nsw i64 %i.bm, 2                ; 2 uses
  br i1 %.not9.i10.i41, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bo = tail call ptr @realloc(ptr noundef nonnull %storemerge56, i64 noundef %i.bn) #32
  br label %Vec_IntPush.exit46

bb.x:                                             ; preds = %bb.v
  %i.bp = tail call noalias ptr @malloc(i64 noundef %i.bn) #33
  br label %Vec_IntPush.exit46

Vec_IntPush.exit46:                               ; preds = %bb.t, %bb.s, %bb.x, %bb.w, %bb.p, %bb.u
  %storemerge57 = phi ptr [ %storemerge56, %bb.p ], [ %storemerge56, %bb.u ], [ %i.bi, %bb.t ], [ %i.bh, %bb.s ], [ %i.bo, %bb.w ], [ %i.bp, %bb.x ] ; 3 uses
  %spec.select.sink.i4353 = phi i32 [ %spec.select.sink.i4354, %bb.p ], [ %spec.select.sink.i4354, %bb.u ], [ 16, %bb.t ], [ 16, %bb.s ], [ %spec.select.i39, %bb.w ], [ %spec.select.i39, %bb.x ] ; 2 uses
  %indvars.iv.next60 = add nsw i64 %indvars.iv59, 1 ; 2 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %storemerge57, i64 %indvars.iv59
  store i32 %.250, ptr %i.bq, align 4, !tbaa !33
  %i.br = add nsw i32 %.02949, 1                  ; 2 uses
  %i.bs = icmp slt i32 %i.br, %i.ba
  br i1 %i.bs, label %bb.p, label %._crit_edge, !llvm.loop !354

._crit_edge:                                      ; preds = %Vec_IntPush.exit46
  %i.bt = trunc nsw i64 %indvars.iv.next60 to i32
  store i32 %i.bt, ptr %i.c, align 4, !tbaa !30
  store i32 %spec.select.sink.i4353, ptr %i.a, align 8
  store ptr %storemerge57, ptr %i.s, align 8
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge, %Vec_IntFree.exit
  ret ptr %i.a
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Gia_ManResubRemapSolution(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %.val9 = load i32, ptr %i.a, align 4, !tbaa !30 ; 3 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 5 uses
  %i.c = add i32 %.val9, -1
  %or.cond.i = icmp ult i32 %i.c, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %.val9 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 0, ptr %i.d, align 4, !tbaa !30
  store i32 %spec.store.select.i, ptr %i.b, align 8, !tbaa !31
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %spec.store.select.i to i64
  %i.f = shl nsw i64 %i.e, 2
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #33
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a, %bb.b
  %.promoted17 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.promoted17, ptr %i.h, align 8, !tbaa !32
  %i.i = icmp sgt i32 %.val9, 0
  br i1 %i.i, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_IntAlloc.exit
  %i.j = getelementptr i8, ptr %0, i64 8
  %i.k = getelementptr i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %Vec_IntPush.exit
  %indvars.iv20 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next21, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 7 uses
  %storemerge18 = phi ptr [ %.promoted17, %.lr.ph ], [ %storemerge19, %Vec_IntPush.exit ] ; 6 uses
  %spec.select.sink.i16 = phi i32 [ %spec.store.select.i, %.lr.ph ], [ %spec.select.sink.i15, %Vec_IntPush.exit ] ; 3 uses
  %.val10 = load ptr, ptr %i.j, align 8, !tbaa !32
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.val10, i64 %indvars.iv20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !33   ; 2 uses
  %.val11 = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.n = ashr i32 %i.m, 1
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %.val11, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !33
  %i.r = and i32 %i.m, 1
  %i.s = shl nsw i32 %i.q, 1
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = trunc nsw i64 %indvars.iv to i32
  %i.v = icmp eq i32 %spec.select.sink.i16, %i.u
  br i1 %i.v, label %bb.d, label %Vec_IntPush.exit

bb.d:                                             ; preds = %bb.c
  %i.w = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.w, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not9.i.i = icmp eq ptr %storemerge18, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge18, i64 noundef 64) #32
  br label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.e
  %i.y = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.d
  %i.z = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.aa = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.z, i32 %i.aa, i32 2147483647 ; 4 uses
  %i.ab = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.ab
  br i1 %.not.i9.i, label %bb.i, label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i10.i = icmp eq ptr %storemerge18, null
  %i.ac = zext nneg i32 %spec.select.i to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call ptr @realloc(ptr noundef nonnull %storemerge18, i64 noundef %i.ad) #32
  br label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.i
  %i.af = tail call noalias ptr @malloc(i64 noundef %i.ad) #33
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.g, %bb.f, %bb.k, %bb.j, %bb.c, %bb.h
  %storemerge19 = phi ptr [ %storemerge18, %bb.c ], [ %storemerge18, %bb.h ], [ %i.y, %bb.g ], [ %i.x, %bb.f ], [ %i.ae, %bb.j ], [ %i.af, %bb.k ] ; 3 uses
  %spec.select.sink.i15 = phi i32 [ %spec.select.sink.i16, %bb.c ], [ %spec.select.sink.i16, %bb.h ], [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %storemerge19, i64 %indvars.iv
  store i32 %i.t, ptr %i.ag, align 4, !tbaa !33
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1 ; 2 uses
  %.val = load i32, ptr %i.a, align 4, !tbaa !30
  %i.ah = sext i32 %.val to i64
  %i.ai = icmp slt i64 %indvars.iv.next21, %i.ah
  br i1 %i.ai, label %bb.c, label %..critedge_crit_edge, !llvm.loop !355

..critedge_crit_edge:                             ; preds = %Vec_IntPush.exit
  %i.aj = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.aj, ptr %i.d, align 4, !tbaa !30
  store i32 %spec.select.sink.i15, ptr %i.b, align 8
  store ptr %storemerge19, ptr %i.h, align 8
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %Vec_IntAlloc.exit
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define void @Gia_ManResubRecordSolution(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.46) ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, ptr noundef %0) ; 0 uses
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  store i32 0, ptr %i.e, align 4, !tbaa !30
  store i32 100, ptr %i.d, align 8, !tbaa !31
  %i.f = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #33
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !32
  %i.h = getelementptr i8, ptr %1, i64 4
  %.val33 = load i32, ptr %i.h, align 4, !tbaa !30
  %i.i = sdiv i32 %.val33, 2
  %i.j = tail call ptr @Gia_ManResubFindUsed(ptr noundef %1, i32 noundef %2, i32 noundef %i.i, ptr noundef nonnull %i.d) ; 3 uses
  %i.k = tail call ptr @Gia_ManResubRemapSolution(ptr noundef %1, ptr noundef %i.j) ; 4 uses
  %i.l = tail call i64 @fwrite(ptr nonnull @.str.48, i64 3, i64 1, ptr nonnull %i.a) ; 0 uses
  %.val32 = load i32, ptr %i.e, align 4, !tbaa !30 ; 2 uses
  %i.m = icmp sgt i32 %.val32, 0
  br i1 %i.m, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c
  %.val35 = load ptr, ptr %i.g, align 8, !tbaa !32
  %wide.trip.count = zext nneg i32 %.val32 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.val35, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !33
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.49, i32 noundef %i.o) #34 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.d, !llvm.loop !356

.critedge:                                        ; preds = %bb.d, %bb.c
  %i.q = tail call i64 @fwrite(ptr nonnull @.str.50, i64 3, i64 1, ptr nonnull %i.a) ; 0 uses
  %i.r = getelementptr i8, ptr %i.k, i64 4
  %.val = load i32, ptr %i.r, align 4, !tbaa !30  ; 2 uses
  %i.s = icmp sgt i32 %.val, 0
  br i1 %i.s, label %.lr.ph42, label %.critedge2

.lr.ph42:                                         ; preds = %.critedge
  %i.t = getelementptr i8, ptr %i.k, i64 8
  %.val34 = load ptr, ptr %i.t, align 8, !tbaa !32
  %wide.trip.count47 = zext nneg i32 %.val to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph42, %bb.e
  %indvars.iv44 = phi i64 [ 0, %.lr.ph42 ], [ %indvars.iv.next45, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.val34, i64 %indvars.iv44
  %i.v = load i32, ptr %i.u, align 4, !tbaa !33
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.49, i32 noundef %i.v) #34 ; 0 uses
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %exitcond48.not = icmp eq i64 %indvars.iv.next45, %wide.trip.count47
  br i1 %exitcond48.not, label %.critedge2, label %bb.e, !llvm.loop !357

.critedge2:                                       ; preds = %bb.e, %.critedge
  %fputc = tail call i32 @fputc(i32 10, ptr nonnull %i.a) ; 0 uses
  %i.x = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !32   ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.f

bb.f:                                             ; preds = %.critedge2
  tail call void @free(ptr noundef nonnull %i.z) #34
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge2, %bb.f
  tail call void @free(ptr noundef nonnull %i.j) #34
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !32  ; 2 uses
  %.not.i36 = icmp eq ptr %i.aa, null
  br i1 %.not.i36, label %Vec_IntFree.exit37, label %bb.g

bb.g:                                             ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.aa) #34
  br label %Vec_IntFree.exit37

Vec_IntFree.exit37:                               ; preds = %Vec_IntFree.exit, %bb.g
  tail call void @free(ptr noundef nonnull %i.d) #34
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !32 ; 2 uses
  %.not.i38 = icmp eq ptr %i.ac, null
  br i1 %.not.i38, label %Vec_IntFree.exit39, label %bb.h

bb.h:                                             ; preds = %Vec_IntFree.exit37
  tail call void @free(ptr noundef nonnull %i.ac) #34
  br label %Vec_IntFree.exit39

Vec_IntFree.exit39:                               ; preds = %Vec_IntFree.exit37, %bb.h
  tail call void @free(ptr noundef nonnull %i.k) #34
  br label %bb.i

bb.i:                                             ; preds = %Vec_IntFree.exit39, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define noundef ptr @Gia_ManResubUnateOne(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.63) ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %Abc_ReadPla.exit.thread, label %bb.b

Abc_ReadPla.exit.thread:                          ; preds = %bb.a
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.64, ptr noundef %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.cc

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noalias dereferenceable_or_null(1000000) ptr @malloc(i64 noundef 1000000) #33 ; 6 uses
  store i32 0, ptr %i.c, align 4, !tbaa !33
  store i32 0, ptr %i.b, align 4, !tbaa !33
  store i32 0, ptr %i.a, align 4, !tbaa !33
  %i.i = tail call ptr @fgets(ptr noundef %i.h, i32 noundef 1000000, ptr noundef nonnull %i.e)
  %.not41.i.i = icmp eq ptr %i.i, null
  br i1 %.not41.i.i, label %._crit_edge.i.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  br label %bb.c

bb.c:                                             ; preds = %.backedge.i.i, %.lr.ph.i.i
  %.042.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.p, %.backedge.i.i ]
  %i.l = load i8, ptr %i.h, align 1, !tbaa !358   ; 3 uses
  %i.m = and i8 %i.l, -2
  %switch.i.i = icmp eq i8 %i.m, 48
  %i.n = icmp eq i8 %i.l, 45
  %narrow.i.i = or i1 %i.n, %switch.i.i
  %i.o = zext i1 %narrow.i.i to i32
end_hunk_3
begin_hunk_4_@Gia_ManResubUnateOne:bb.a
bb.z:                                             ; preds = %bb.y
  %i.ea = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.dz, i64 noundef 64) #32
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.eb = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.ab:                                            ; preds = %bb.x
  %i.ec = icmp samesign ult i32 %i.dv, 1073741823
  %i.ed = shl nuw nsw i32 %i.dv, 1
  %spec.select.i.i.i = select i1 %i.ec, i32 %i.ed, i32 2147483647 ; 4 uses
  %.not.i9.i.i.i = icmp samesign ult i32 %i.dv, %spec.select.i.i.i
  %.pre93.i.i = load ptr, ptr %i.ds, align 8, !tbaa !32 ; 3 uses
  br i1 %.not.i9.i.i.i, label %bb.ac, label %Vec_IntPush.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  %.not9.i10.i.i.i = icmp eq ptr %.pre93.i.i, null
  %i.ee = zext nneg i32 %spec.select.i.i.i to i64
  %i.ef = shl nuw nsw i64 %i.ee, 2                ; 2 uses
  br i1 %.not9.i10.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eg = tail call ptr @realloc(ptr noundef nonnull %.pre93.i.i, i64 noundef %i.ef) #32
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.eh = tail call noalias ptr @malloc(i64 noundef %i.ef) #33
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

Vec_IntGrow.exit11.sink.split.i.i.i:              ; preds = %bb.ae, %bb.ad, %bb.aa, %bb.z
  %i.ei = phi ptr [ %i.eb, %bb.aa ], [ %i.ea, %bb.z ], [ %i.eg, %bb.ad ], [ %i.eh, %bb.ae ] ; 2 uses
  %spec.select.sink.i.i.i = phi i32 [ 16, %bb.aa ], [ 16, %bb.z ], [ %spec.select.i.i.i, %bb.ad ], [ %spec.select.i.i.i, %bb.ae ]
  store ptr %i.ei, ptr %i.ds, align 8, !tbaa !32
  store i32 %spec.select.sink.i.i.i, ptr %i.do, align 8, !tbaa !31
  %.pre94.i.i = load i32, ptr %i.dp, align 4, !tbaa !30
  br label %Vec_IntPush.exit.i.i

Vec_IntPush.exit.i.i:                             ; preds = %Vec_IntGrow.exit11.sink.split.i.i.i, %bb.ab, %.Vec_IntPush.exit_crit_edge.i.i
  %i.ej = phi i32 [ %i.dv, %.Vec_IntPush.exit_crit_edge.i.i ], [ %i.dv, %bb.ab ], [ %.pre94.i.i, %Vec_IntGrow.exit11.sink.split.i.i.i ] ; 2 uses
  %i.ek = phi ptr [ %.pre.i.i, %.Vec_IntPush.exit_crit_edge.i.i ], [ %.pre93.i.i, %bb.ab ], [ %i.ei, %Vec_IntGrow.exit11.sink.split.i.i.i ]
  %i.el = add nsw i32 %i.ej, 1
  store i32 %i.el, ptr %i.dp, align 4, !tbaa !30
  %i.em = sext i32 %i.ej to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.em
  store i32 %i.du, ptr %i.en, align 4, !tbaa !33
  %i.eo = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.67) #34 ; 2 uses
  %.not76.i.i = icmp eq ptr %i.eo, null
  br i1 %.not76.i.i, label %.backedge.i9.i, label %bb.w, !llvm.loop !371

.backedge.i9.i:                                   ; preds = %Vec_IntPush.exit.i.i, %bb.u, %bb.t, %bb.s
  %i.ep = tail call ptr @fgets(ptr noundef nonnull %i.bv, i32 noundef %i.bt, ptr noundef nonnull %i.bp)
  %.not.i10.i = icmp eq ptr %i.ep, null
  br i1 %.not.i10.i, label %._crit_edge90.i.i, label %bb.k, !llvm.loop !372

._crit_edge90.i.i:                                ; preds = %.backedge.i9.i
  %.not73.i.i = icmp eq i32 %.3.i.i, 0
  br i1 %.not73.i.i, label %Abc_ReadPla.exit._crit_edge, label %bb.af

bb.af:                                            ; preds = %._crit_edge90.i.i
  %i.eq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.68, i32 noundef %.3.i.i, ptr noundef %0) ; 0 uses
  br label %Abc_ReadPla.exit._crit_edge

bb.ag:                                            ; preds = %bb.j
  %.not74.i.i = icmp eq ptr %i.bv, null
  br i1 %.not74.i.i, label %Abc_ReadPla.exit.thread101, label %Abc_ReadPla.exit._crit_edge

Abc_ReadPla.exit.thread101:                       ; preds = %bb.ag
  %i.er = tail call i32 @fclose(ptr noundef nonnull %i.bp) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ah

Abc_ReadPla.exit._crit_edge:                      ; preds = %bb.ag, %bb.af, %._crit_edge90.i.i
  tail call void @free(ptr noundef nonnull %i.bv) #34
  %i.es = tail call i32 @fclose(ptr noundef nonnull %i.bp) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre = load i32, ptr %i.x, align 8, !tbaa !360
  br label %bb.ah

bb.ah:                                            ; preds = %Abc_ReadPla.exit._crit_edge, %Abc_ReadPla.exit.thread101, %Abc_ReadPla.exit.thread98
  %i.et = phi i32 [ %.pre, %Abc_ReadPla.exit._crit_edge ], [ %.0..0..0..0..0.13.i, %Abc_ReadPla.exit.thread101 ], [ %.0..0..0..0..0.13.i, %Abc_ReadPla.exit.thread98 ] ; 4 uses
  %i.eu = add nsw i32 %i.et, 2
  %i.ev = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 7 uses
  %i.ew = add nsw i32 %i.et, 1
  %or.cond.i63 = icmp ult i32 %i.ew, 7
  %spec.store.select.i = select i1 %or.cond.i63, i32 8, i32 %i.eu ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 4 ; 4 uses
  store i32 0, ptr %i.ex, align 4, !tbaa !84
  store i32 %spec.store.select.i, ptr %i.ev, align 8, !tbaa !87
  %.not.i = icmp eq i32 %spec.store.select.i, 0   ; 2 uses
  br i1 %.not.i, label %Vec_PtrAlloc.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ey = sext i32 %spec.store.select.i to i64
  %i.ez = shl nsw i64 %i.ey, 3
  %i.fa = tail call noalias ptr @malloc(i64 noundef %i.ez) #33
  br label %Vec_PtrAlloc.exit

Vec_PtrAlloc.exit:                                ; preds = %bb.ah, %bb.ai
  %i.fb = phi ptr [ %i.fa, %bb.ai ], [ null, %bb.ah ] ; 5 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 6 uses
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !88
  %i.fd = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 7 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 4 ; 5 uses
  store i32 0, ptr %i.fe, align 4, !tbaa !30
  store i32 100, ptr %i.fd, align 8, !tbaa !31
  %i.ff = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #33
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 5 uses
  store ptr %i.ff, ptr %i.fg, align 8, !tbaa !32
  %.val60 = load ptr, ptr %i.bb, align 8, !tbaa !96 ; 2 uses
  br i1 %.not.i, label %bb.aj, label %Vec_PtrPush.exit

bb.aj:                                            ; preds = %Vec_PtrAlloc.exit
  %.not9.i.i = icmp eq ptr %i.fb, null
  br i1 %.not9.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fh = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.fb, i64 noundef 128) #32
  br label %Vec_PtrPush.exit.thread

bb.al:                                            ; preds = %bb.aj
  %i.fi = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #33
  br label %Vec_PtrPush.exit.thread

Vec_PtrPush.exit.thread:                          ; preds = %bb.al, %bb.ak
  %i.fj = phi ptr [ %i.fh, %bb.ak ], [ %i.fi, %bb.al ] ; 2 uses
  store ptr %i.fj, ptr %i.fc, align 8, !tbaa !88
  store i32 16, ptr %i.ev, align 8, !tbaa !87
  store ptr %.val60, ptr %i.fj, align 8, !tbaa !105
  %i.fk = load i32, ptr %i.af, align 4, !tbaa !364 ; 2 uses
  %.val59180 = load ptr, ptr %i.bb, align 8, !tbaa !96
  %i.fl = sext i32 %i.fk to i64                   ; 2 uses
  %i.fm = getelementptr inbounds [8 x i8], ptr %.val59180, i64 %i.fl
  br label %Vec_PtrPush.exit.Vec_PtrPush.exit72_crit_edge

Vec_PtrPush.exit:                                 ; preds = %Vec_PtrAlloc.exit
  store ptr %.val60, ptr %i.fb, align 8, !tbaa !105
  %i.fn = load i32, ptr %i.af, align 4, !tbaa !364 ; 3 uses
  %.val59 = load ptr, ptr %i.bb, align 8, !tbaa !96
  %i.fo = sext i32 %i.fn to i64                   ; 3 uses
  %i.fp = getelementptr inbounds [8 x i8], ptr %.val59, i64 %i.fo ; 2 uses
  %i.fq = icmp eq i32 %spec.store.select.i, 1
  br i1 %i.fq, label %Vec_PtrGrow.exit12.sink.split.i68, label %Vec_PtrPush.exit.Vec_PtrPush.exit72_crit_edge

Vec_PtrPush.exit.Vec_PtrPush.exit72_crit_edge:    ; preds = %Vec_PtrPush.exit.thread, %Vec_PtrPush.exit
  %i.fr = phi ptr [ %i.fm, %Vec_PtrPush.exit.thread ], [ %i.fp, %Vec_PtrPush.exit ]
  %i.fs = phi i64 [ %i.fl, %Vec_PtrPush.exit.thread ], [ %i.fo, %Vec_PtrPush.exit ]
  %i.ft = phi i32 [ %i.fk, %Vec_PtrPush.exit.thread ], [ %i.fn, %Vec_PtrPush.exit ]
  %i.fu = phi i32 [ 16, %Vec_PtrPush.exit.thread ], [ %spec.store.select.i, %Vec_PtrPush.exit ]
  %.pre145 = load ptr, ptr %i.fc, align 8, !tbaa !88
  br label %Vec_PtrPush.exit72

Vec_PtrGrow.exit12.sink.split.i68:                ; preds = %Vec_PtrPush.exit
  %i.fv = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.fb, i64 noundef 128) #32 ; 2 uses
  store ptr %i.fv, ptr %i.fc, align 8, !tbaa !88
  store i32 16, ptr %i.ev, align 8, !tbaa !87
  br label %Vec_PtrPush.exit72

Vec_PtrPush.exit72:                               ; preds = %Vec_PtrPush.exit.Vec_PtrPush.exit72_crit_edge, %Vec_PtrGrow.exit12.sink.split.i68
  %i.fw = phi ptr [ %i.fr, %Vec_PtrPush.exit.Vec_PtrPush.exit72_crit_edge ], [ %i.fp, %Vec_PtrGrow.exit12.sink.split.i68 ]
  %i.fx = phi i64 [ %i.fs, %Vec_PtrPush.exit.Vec_PtrPush.exit72_crit_edge ], [ %i.fo, %Vec_PtrGrow.exit12.sink.split.i68 ]
  %i.fy = phi i32 [ %i.ft, %Vec_PtrPush.exit.Vec_PtrPush.exit72_crit_edge ], [ %i.fn, %Vec_PtrGrow.exit12.sink.split.i68 ] ; 2 uses
  %.promoted110 = phi i32 [ %i.fu, %Vec_PtrPush.exit.Vec_PtrPush.exit72_crit_edge ], [ 16, %Vec_PtrGrow.exit12.sink.split.i68 ]
  %.promoted113 = phi ptr [ %.pre145, %Vec_PtrPush.exit.Vec_PtrPush.exit72_crit_edge ], [ %i.fv, %Vec_PtrGrow.exit12.sink.split.i68 ] ; 3 uses
  store i32 2, ptr %i.ex, align 4, !tbaa !84
  %i.fz = getelementptr inbounds nuw i8, ptr %.promoted113, i64 8
  store ptr %i.fw, ptr %i.fz, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.ga = icmp sgt i32 %i.et, 0
  br i1 %i.ga, label %.lr.ph, label %bb.aq

.lr.ph:                                           ; preds = %Vec_PtrPush.exit72
  %i.gb = load ptr, ptr %i.ar, align 8, !tbaa !365
  %i.gc = getelementptr i8, ptr %i.gb, i64 8
  %wide.trip.count = zext nneg i32 %i.et to i64
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph, %Vec_PtrPush.exit80
  %indvars.iv130 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next131, %Vec_PtrPush.exit80 ] ; 2 uses
  %indvars.iv = phi i64 [ 2, %.lr.ph ], [ %indvars.iv.next, %Vec_PtrPush.exit80 ] ; 7 uses
  %storemerge107114 = phi ptr [ %.promoted113, %.lr.ph ], [ %storemerge107115, %Vec_PtrPush.exit80 ] ; 3 uses
  %spec.select.sink.i77112 = phi i32 [ %.promoted110, %.lr.ph ], [ %spec.select.sink.i77111, %Vec_PtrPush.exit80 ] ; 3 uses
  %i.gd = mul nsw i64 %indvars.iv130, %i.fx
  %.val58 = load ptr, ptr %i.gc, align 8, !tbaa !96
  %i.ge = getelementptr inbounds [8 x i8], ptr %.val58, i64 %i.gd
  %i.gf = trunc nsw i64 %indvars.iv to i32
  %i.gg = icmp eq i32 %spec.select.sink.i77112, %i.gf
  br i1 %i.gg, label %bb.an, label %Vec_PtrPush.exit80

bb.an:                                            ; preds = %bb.am
  %i.gh = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.gh, label %Vec_PtrPush.exit80.sink.split, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gi = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.gj = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i73 = select i1 %i.gi, i32 %i.gj, i32 2147483647 ; 3 uses
  %i.gk = sext i32 %spec.select.i73 to i64
  %.not.i10.i74 = icmp samesign ult i64 %indvars.iv, %i.gk
  br i1 %.not.i10.i74, label %bb.ap, label %Vec_PtrPush.exit80

bb.ap:                                            ; preds = %bb.ao
  %i.gl = zext nneg i32 %spec.select.i73 to i64
  %i.gm = shl nuw nsw i64 %i.gl, 3
  br label %Vec_PtrPush.exit80.sink.split

Vec_PtrPush.exit80.sink.split:                    ; preds = %bb.an, %bb.ap
  %.sink = phi i64 [ %i.gm, %bb.ap ], [ 128, %bb.an ]
  %spec.select.sink.i77111.ph = phi i32 [ %spec.select.i73, %bb.ap ], [ 16, %bb.an ]
  %i.gn = tail call ptr @realloc(ptr noundef nonnull %storemerge107114, i64 noundef %.sink) #32
  br label %Vec_PtrPush.exit80

Vec_PtrPush.exit80:                               ; preds = %Vec_PtrPush.exit80.sink.split, %bb.am, %bb.ao
  %storemerge107115 = phi ptr [ %storemerge107114, %bb.am ], [ %storemerge107114, %bb.ao ], [ %i.gn, %Vec_PtrPush.exit80.sink.split ] ; 4 uses
  %spec.select.sink.i77111 = phi i32 [ %spec.select.sink.i77112, %bb.am ], [ %spec.select.sink.i77112, %bb.ao ], [ %spec.select.sink.i77111.ph, %Vec_PtrPush.exit80.sink.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %storemerge107115, i64 %indvars.iv
  store ptr %i.ge, ptr %i.go, align 8, !tbaa !105
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next131, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.am, !llvm.loop !373

._crit_edge:                                      ; preds = %Vec_PtrPush.exit80
  %i.gp = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  store i32 %i.gp, ptr %i.ex, align 4, !tbaa !84
  store i32 %spec.select.sink.i77111, ptr %i.ev, align 8
  store ptr %storemerge107115, ptr %i.fc, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge, %Vec_PtrPush.exit72
  %.val57 = phi i32 [ %i.gp, %._crit_edge ], [ 2, %Vec_PtrPush.exit72 ]
  %.val62 = phi ptr [ %storemerge107115, %._crit_edge ], [ %.promoted113, %Vec_PtrPush.exit72 ]
  %i.gq = load ptr, ptr @s_pResbMan, align 8, !tbaa !262 ; 2 uses
  %.not.i81 = icmp eq ptr %i.gq, null
  br i1 %.not.i81, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @Gia_ResbFree(ptr noundef nonnull %i.gq)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  store ptr null, ptr @s_pResbMan, align 8, !tbaa !262
  %i.gr = icmp sgt i32 %i.fy, 0
  br i1 %i.gr, label %bb.at, label %Abc_ResubPrepareManager.exit

bb.at:                                            ; preds = %bb.as
  %i.gs = tail call ptr @Gia_ResbAlloc(i32 noundef %i.fy)
  store ptr %i.gs, ptr @s_pResbMan, align 8, !tbaa !262
  br label %Abc_ResubPrepareManager.exit

Abc_ResubPrepareManager.exit:                     ; preds = %bb.as, %bb.at
  %.not = icmp eq i32 %4, 0                       ; 2 uses
  br i1 %.not, label %bb.av, label %bb.au

bb.au:                                            ; preds = %Abc_ResubPrepareManager.exit
  %i.gt = load i32, ptr %i.x, align 8, !tbaa !360
  %i.gu = load i32, ptr %i.y, align 4, !tbaa !362
  %i.gv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.gt, i32 noundef %i.gu) ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %Abc_ResubPrepareManager.exit
  %i.gw = load i32, ptr %i.af, align 4, !tbaa !364
  %i.gx = call i32 @Abc_ResubComputeFunction(ptr noundef nonnull %.val62, i32 noundef %.val57, i32 noundef %i.gw, i32 noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef %4, ptr noundef nonnull %i.d) ; 3 uses
  %i.gy = icmp sgt i32 %i.gx, 0
  br i1 %i.gy, label %.lr.ph118, label %bb.bf

.lr.ph118:                                        ; preds = %bb.av
  %i.gz = load ptr, ptr %i.d, align 8, !tbaa !69
  %.promoted120 = load i32, ptr %i.fe, align 4, !tbaa !30
  %.promoted122 = load i32, ptr %i.fd, align 8, !tbaa !31
  %.promoted125 = load ptr, ptr %i.fg, align 8, !tbaa !32
  %i.ha = sext i32 %.promoted120 to i64
  %wide.trip.count142 = zext nneg i32 %i.gx to i64
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph118, %Vec_IntPush.exit
  %indvars.iv137 = phi i64 [ 0, %.lr.ph118 ], [ %indvars.iv.next138, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv135 = phi i64 [ %i.ha, %.lr.ph118 ], [ %indvars.iv.next136, %Vec_IntPush.exit ] ; 7 uses
  %storemerge126 = phi ptr [ %.promoted125, %.lr.ph118 ], [ %storemerge127, %Vec_IntPush.exit ] ; 6 uses
  %spec.select.sink.i83124 = phi i32 [ %.promoted122, %.lr.ph118 ], [ %spec.select.sink.i83123, %Vec_IntPush.exit ] ; 3 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv137
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !33
  %i.hd = trunc nsw i64 %indvars.iv135 to i32
  %i.he = icmp eq i32 %spec.select.sink.i83124, %i.hd
  br i1 %i.he, label %bb.ax, label %Vec_IntPush.exit

bb.ax:                                            ; preds = %bb.aw
  %i.hf = icmp slt i64 %indvars.iv135, 16
  br i1 %i.hf, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %.not9.i.i84 = icmp eq ptr %storemerge126, null
  br i1 %.not9.i.i84, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hg = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge126, i64 noundef 64) #32
  br label %Vec_IntPush.exit

bb.ba:                                            ; preds = %bb.ay
  %i.hh = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntPush.exit

bb.bb:                                            ; preds = %bb.ax
  %i.hi = icmp samesign ult i64 %indvars.iv135, 1073741823
  %indvars.iv135.tr = trunc i64 %indvars.iv135 to i32
  %i.hj = shl nsw i32 %indvars.iv135.tr, 1
  %spec.select.i82 = select i1 %i.hi, i32 %i.hj, i32 2147483647 ; 4 uses
  %i.hk = sext i32 %spec.select.i82 to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv135, %i.hk
  br i1 %.not.i9.i, label %bb.bc, label %Vec_IntPush.exit

bb.bc:                                            ; preds = %bb.bb
  %.not9.i10.i = icmp eq ptr %storemerge126, null
  %i.hl = zext nneg i32 %spec.select.i82 to i64
  %i.hm = shl nuw nsw i64 %i.hl, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hn = tail call ptr @realloc(ptr noundef nonnull %storemerge126, i64 noundef %i.hm) #32
  br label %Vec_IntPush.exit

bb.be:                                            ; preds = %bb.bc
  %i.ho = tail call noalias ptr @malloc(i64 noundef %i.hm) #33
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.ba, %bb.az, %bb.be, %bb.bd, %bb.aw, %bb.bb
  %storemerge127 = phi ptr [ %storemerge126, %bb.aw ], [ %storemerge126, %bb.bb ], [ %i.hh, %bb.ba ], [ %i.hg, %bb.az ], [ %i.hn, %bb.bd ], [ %i.ho, %bb.be ] ; 3 uses
  %spec.select.sink.i83123 = phi i32 [ %spec.select.sink.i83124, %bb.aw ], [ %spec.select.sink.i83124, %bb.bb ], [ 16, %bb.ba ], [ 16, %bb.az ], [ %spec.select.i82, %bb.bd ], [ %spec.select.i82, %bb.be ] ; 2 uses
  %indvars.iv.next136 = add nsw i64 %indvars.iv135, 1 ; 2 uses
  %i.hp = getelementptr inbounds [4 x i8], ptr %storemerge127, i64 %indvars.iv135
  store i32 %i.hc, ptr %i.hp, align 4, !tbaa !33
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %exitcond143.not = icmp eq i64 %indvars.iv.next138, %wide.trip.count142
  br i1 %exitcond143.not, label %._crit_edge119, label %bb.aw, !llvm.loop !374

._crit_edge119:                                   ; preds = %Vec_IntPush.exit
  %i.hq = trunc nsw i64 %indvars.iv.next136 to i32
  store i32 %i.hq, ptr %i.fe, align 4, !tbaa !30
  store i32 %spec.select.sink.i83123, ptr %i.fd, align 8
  store ptr %storemerge127, ptr %i.fg, align 8
  br label %bb.bf

bb.bf:                                            ; preds = %._crit_edge119, %bb.av
  %.not105 = icmp eq i32 %i.gx, 0
  br i1 %.not105, label %.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hr = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 6 uses
  store i32 8, ptr %i.hr, align 8, !tbaa !41
  %i.hs = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 8, i64 noundef 16) #35 ; 8 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store ptr %i.hs, ptr %i.hu, align 8, !tbaa !42
  store i32 1, ptr %i.ht, align 4, !tbaa !39
  %.val7.i = load i32, ptr %i.fe, align 4, !tbaa !30
  %i.hv = icmp sgt i32 %.val7.i, 0
  br i1 %i.hv, label %.lr.ph.i, label %Vec_IntAppend.exit

.lr.ph.i:                                         ; preds = %bb.bg
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 4 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %.val6.i = load ptr, ptr %i.fg, align 8, !tbaa !32
  br label %bb.bh

bb.bh:                                            ; preds = %Vec_IntPush.exit.i, %.lr.ph.i
  %i.hy = phi ptr [ null, %.lr.ph.i ], [ %.pre10.i152, %Vec_IntPush.exit.i ] ; 7 uses
  %.pre.i85 = phi ptr [ null, %.lr.ph.i ], [ %.pre.i85150, %Vec_IntPush.exit.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %Vec_IntPush.exit.i ] ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %.val6.i, i64 %indvars.iv.i
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !33
  %i.ib = load i32, ptr %i.hw, align 4, !tbaa !30 ; 7 uses
  %i.ic = load i32, ptr %i.hs, align 8, !tbaa !31
  %i.id = icmp eq i32 %i.ib, %i.ic
  br i1 %i.id, label %bb.bi, label %Vec_IntPush.exit.i

bb.bi:                                            ; preds = %bb.bh
  %i.ie = icmp slt i32 %i.ib, 16
  br i1 %i.ie, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %.not9.i.i.i = icmp eq ptr %i.hy, null
  br i1 %.not9.i.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.if = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.hy, i64 noundef 64) #32
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.ig = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.bm:                                            ; preds = %bb.bi
  %i.ih = icmp samesign ult i32 %i.ib, 1073741823
  %i.ii = shl nuw nsw i32 %i.ib, 1
  %spec.select.i.i = select i1 %i.ih, i32 %i.ii, i32 2147483647 ; 4 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.ib, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.bn, label %Vec_IntPush.exit.i

bb.bn:                                            ; preds = %bb.bm
  %.not9.i10.i.i = icmp eq ptr %i.hy, null
  %i.ij = zext nneg i32 %spec.select.i.i to i64
  %i.ik = shl nuw nsw i64 %i.ij, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.il = tail call ptr @realloc(ptr noundef nonnull %i.hy, i64 noundef %i.ik) #32
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.bp:                                            ; preds = %bb.bn
  %i.im = tail call noalias ptr @malloc(i64 noundef %i.ik) #33
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.bp, %bb.bo, %bb.bl, %bb.bk
  %i.in = phi ptr [ %i.ig, %bb.bl ], [ %i.if, %bb.bk ], [ %i.il, %bb.bo ], [ %i.im, %bb.bp ] ; 3 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.bl ], [ 16, %bb.bk ], [ %spec.select.i.i, %bb.bo ], [ %spec.select.i.i, %bb.bp ]
  store ptr %i.in, ptr %i.hx, align 8, !tbaa !32
  store i32 %spec.select.sink.i.i, ptr %i.hs, align 8, !tbaa !31
  %.pre11.i = load i32, ptr %i.hw, align 4, !tbaa !30
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %bb.bh, %Vec_IntGrow.exit11.sink.split.i.i, %bb.bm
  %.pre10.i152 = phi ptr [ %i.in, %Vec_IntGrow.exit11.sink.split.i.i ], [ %i.hy, %bb.bm ], [ %i.hy, %bb.bh ]
  %.pre.i85150 = phi ptr [ %i.in, %Vec_IntGrow.exit11.sink.split.i.i ], [ %i.hy, %bb.bm ], [ %.pre.i85, %bb.bh ] ; 2 uses
  %i.io = phi i32 [ %.pre11.i, %Vec_IntGrow.exit11.sink.split.i.i ], [ %i.ib, %bb.bm ], [ %i.ib, %bb.bh ] ; 2 uses
  %i.ip = add nsw i32 %i.io, 1
  store i32 %i.ip, ptr %i.hw, align 4, !tbaa !30
  %i.iq = sext i32 %i.io to i64
  %i.ir = getelementptr inbounds [4 x i8], ptr %.pre.i85150, i64 %i.iq
  store i32 %i.ia, ptr %i.ir, align 4, !tbaa !33
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val.i = load i32, ptr %i.fe, align 4, !tbaa !30
  %i.is = sext i32 %.val.i to i64
  %i.it = icmp slt i64 %indvars.iv.next.i, %i.is
  br i1 %i.it, label %bb.bh, label %Vec_IntAppend.exit, !llvm.loop !44

Vec_IntAppend.exit:                               ; preds = %Vec_IntPush.exit.i, %bb.bg
  %.val56 = load i32, ptr %i.ex, align 4, !tbaa !84 ; 2 uses
  %i.iu = tail call ptr @Gia_ManConstructFromGates(ptr noundef nonnull %i.hr, i32 noundef %.val56) ; 5 uses
  %i.iv = load i32, ptr %i.hr, align 8, !tbaa !41 ; 2 uses
  %i.iw = icmp sgt i32 %i.iv, 0
  br i1 %i.iw, label %.lr.ph.i.i89.preheader, label %._crit_edge.i.i87

.lr.ph.i.i89.preheader:                           ; preds = %Vec_IntAppend.exit
  %i.ix = zext nneg i32 %i.iv to i64
  br label %.lr.ph.i.i89

.lr.ph.i.i89:                                     ; preds = %.lr.ph.i.i89.preheader, %bb.br
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.br ], [ 0, %.lr.ph.i.i89.preheader ] ; 2 uses
  %i.iy = getelementptr inbounds nuw [16 x i8], ptr %i.hs, i64 %indvars.iv.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8 ; 2 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !32 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.ja, null
  br i1 %.not15.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.i.i89
  tail call void @free(ptr noundef nonnull %i.ja) #34
  store ptr null, ptr %i.iz, align 8, !tbaa !32
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %.lr.ph.i.i89
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond144.not = icmp eq i64 %indvars.iv.next.i.i, %i.ix
  br i1 %exitcond144.not, label %._crit_edge.thread.i.i, label %.lr.ph.i.i89, !llvm.loop !72

._crit_edge.i.i87:                                ; preds = %Vec_IntAppend.exit
  %.not.i.i88 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i88, label %Vec_WecFree.exit, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.br, %._crit_edge.i.i87
  tail call void @free(ptr noundef nonnull %i.hs) #34
  br label %Vec_WecFree.exit

Vec_WecFree.exit:                                 ; preds = %._crit_edge.i.i87, %._crit_edge.thread.i.i
  tail call void @free(ptr noundef nonnull %i.hr) #34
  br i1 %.not, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %Vec_WecFree.exit
  %i.jb = getelementptr i8, ptr %i.iu, i64 64
  %.val61 = load ptr, ptr %i.jb, align 8, !tbaa !53
  %i.jc = getelementptr i8, ptr %.val61, i64 4
  %.val61.val = load i32, ptr %i.jc, align 4, !tbaa !30 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !43
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iu, i64 72
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !54
  %i.jh = getelementptr i8, ptr %i.jg, i64 4
  %.val.i90 = load i32, ptr %i.jh, align 4, !tbaa !30
  %i.ji = add i32 %.val.i90, %.val61.val
  %i.jj = xor i32 %i.ji, -1
  %i.jk = add i32 %i.je, %i.jj
  %i.jl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %.val61.val, i32 noundef %i.jk) ; 0 uses
  br label %bb.bt

bb.bt:                                            ; preds = %Vec_WecFree.exit, %bb.bs
  %.not106 = icmp eq i32 %3, 0
  br i1 %.not106, label %.thread, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  tail call void @Gia_ManResubRecordSolution(ptr noundef %0, ptr noundef nonnull %i.fd, i32 noundef %.val56)
  br label %.thread

.thread:                                          ; preds = %bb.bf, %bb.bu, %bb.bt
  %.051104 = phi ptr [ %i.iu, %bb.bt ], [ %i.iu, %bb.bu ], [ null, %bb.bf ]
  %i.jm = load ptr, ptr @s_pResbMan, align 8, !tbaa !262 ; 2 uses
  %.not.i91 = icmp eq ptr %i.jm, null
  br i1 %.not.i91, label %Abc_ResubPrepareManager.exit92, label %bb.bv
end_hunk_4
