Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaEquiv?download=true
inline.NumInlined: 1043
inline.NumDeleted: 101
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 31
begin_hunk_0_@Gia_ManSpecReduceInitFrames:bb.a
  %.025.i = phi i32 [ %i.as, %._crit_edge.i ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %cond = icmp eq i32 %5, 0
  %i.at = tail call ptr @Gia_ManSpecReduceInit(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, i32 noundef %4) ; 6 uses
  %i.au = getelementptr i8, ptr %i.at, i64 16
  %.val31.us51 = load i32, ptr %i.au, align 8, !tbaa !111
  %i.av = getelementptr i8, ptr %i.at, i64 72
  %.val32.us52 = load ptr, ptr %i.av, align 8, !tbaa !52
  %i.aw = getelementptr i8, ptr %.val32.us52, i64 4
  %.val32.val.us53 = load i32, ptr %i.aw, align 4, !tbaa !33 ; 3 uses
  %i.ax = sub nsw i32 %.val32.val.us53, %.val31.us51 ; 2 uses
  %.old.us55 = icmp eq i32 %2, 1                  ; 2 uses
  br i1 %cond, label %Gia_ManEquivCountLits.exit.split.us, label %Gia_ManEquivCountLits.exit.split

Gia_ManEquivCountLits.exit.split.us:              ; preds = %Gia_ManEquivCountLits.exit
  %.not.not.us54 = icmp sgt i32 %i.ax, %.025.i
  %or.cond34.us56 = or i1 %.old.us55, %.not.not.us54
  br i1 %or.cond34.us56, label %.split.us, label %.lr.ph58

.lr.ph58:                                         ; preds = %Gia_ManEquivCountLits.exit.split.us, %bb.f
  %.val.i33.us = phi i32 [ %.val32.val.us, %bb.f ], [ %.val32.val.us53, %Gia_ManEquivCountLits.exit.split.us ]
  %i.ay = phi ptr [ %i.bi, %bb.f ], [ %i.at, %Gia_ManEquivCountLits.exit.split.us ] ; 4 uses
  %.0.us57 = phi i32 [ %i.bh, %bb.f ], [ 1, %Gia_ManEquivCountLits.exit.split.us ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !49
  %i.bd = getelementptr i8, ptr %i.bc, i64 4
  %.val3.i.us = load i32, ptr %i.bd, align 4, !tbaa !33
  %i.be = sub i32 %.val3.i.us, %i.ba
  %i.bf = add i32 %i.be, %.val.i33.us
  %i.bg = icmp slt i32 %i.bf, -500001
  br i1 %i.bg, label %.split40.us, label %bb.f

bb.f:                                             ; preds = %.lr.ph58
  tail call void @Gia_ManStop(ptr noundef nonnull %i.ay) #32
  %i.bh = add nuw nsw i32 %.0.us57, 1             ; 4 uses
  %i.bi = tail call ptr @Gia_ManSpecReduceInit(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.bh, i32 noundef %4) ; 4 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 16
  %.val31.us = load i32, ptr %i.bj, align 8, !tbaa !111
  %i.bk = getelementptr i8, ptr %i.bi, i64 72
  %.val32.us = load ptr, ptr %i.bk, align 8, !tbaa !52
  %i.bl = getelementptr i8, ptr %.val32.us, i64 4
  %.val32.val.us = load i32, ptr %i.bl, align 4, !tbaa !33 ; 2 uses
  %i.bm = sub nsw i32 %.val32.val.us, %.val31.us
  %.not.not.us = icmp sgt i32 %i.bm, %.025.i
  %.old.us = icmp eq i32 %i.bh, %2
  %or.cond34.us = or i1 %.old.us, %.not.not.us
  br i1 %or.cond34.us, label %.split.us, label %.lr.ph58

Gia_ManEquivCountLits.exit.split:                 ; preds = %Gia_ManEquivCountLits.exit
  %.not2847 = icmp sge i32 %i.ax, %5
  %or.cond48 = or i1 %.old.us55, %.not2847
  br i1 %or.cond48, label %.split.us, label %.lr.ph

.lr.ph:                                           ; preds = %Gia_ManEquivCountLits.exit.split, %bb.g
  %.val.i33 = phi i32 [ %.val30.val, %bb.g ], [ %.val32.val.us53, %Gia_ManEquivCountLits.exit.split ]
  %i.bn = phi ptr [ %i.bx, %bb.g ], [ %i.at, %Gia_ManEquivCountLits.exit.split ] ; 4 uses
  %.049 = phi i32 [ %i.bw, %bb.g ], [ 1, %Gia_ManEquivCountLits.exit.split ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !49
  %i.bs = getelementptr i8, ptr %i.br, i64 4
  %.val3.i = load i32, ptr %i.bs, align 4, !tbaa !33
  %i.bt = sub i32 %.val3.i, %i.bp
  %i.bu = add i32 %i.bt, %.val.i33
  %i.bv = icmp slt i32 %i.bu, -500001
  br i1 %i.bv, label %.split40.us, label %bb.g

.split40.us:                                      ; preds = %.lr.ph, %.lr.ph58
  %.us-phi41 = phi ptr [ %i.ay, %.lr.ph58 ], [ %i.bn, %.lr.ph ]
  tail call void @Gia_ManStop(ptr noundef nonnull %.us-phi41) #32
  br label %bb.k

bb.g:                                             ; preds = %.lr.ph
  tail call void @Gia_ManStop(ptr noundef nonnull %i.bn) #32
  %i.bw = add nuw nsw i32 %.049, 1                ; 4 uses
  %i.bx = tail call ptr @Gia_ManSpecReduceInit(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.bw, i32 noundef %4) ; 4 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 16
  %.val = load i32, ptr %i.by, align 8, !tbaa !111
  %i.bz = getelementptr i8, ptr %i.bx, i64 72
  %.val30 = load ptr, ptr %i.bz, align 8, !tbaa !52
  %i.ca = getelementptr i8, ptr %.val30, i64 4
  %.val30.val = load i32, ptr %i.ca, align 4, !tbaa !33 ; 2 uses
  %i.cb = sub nsw i32 %.val30.val, %.val
  %.not28 = icmp sge i32 %i.cb, %5
  %i.cc = icmp eq i32 %i.bw, %2
  %or.cond = or i1 %i.cc, %.not28
  br i1 %or.cond, label %.split.us, label %.lr.ph

.split.us:                                        ; preds = %bb.g, %bb.f, %Gia_ManEquivCountLits.exit.split, %Gia_ManEquivCountLits.exit.split.us
  %.us-phi = phi i32 [ %i.bh, %bb.f ], [ 1, %Gia_ManEquivCountLits.exit.split.us ], [ 1, %Gia_ManEquivCountLits.exit.split ], [ %i.bw, %bb.g ] ; 2 uses
  %.us-phi38 = phi ptr [ %i.bi, %bb.f ], [ %i.at, %Gia_ManEquivCountLits.exit.split.us ], [ %i.at, %Gia_ManEquivCountLits.exit.split ], [ %i.bx, %bb.g ] ; 2 uses
  %i.cd = icmp eq i32 %.us-phi, %2
  br i1 %i.cd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.split.us
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.20, i32 noundef %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.split.us
  %.not29 = icmp eq ptr %3, null
  br i1 %.not29, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %.us-phi, ptr %3, align 4, !tbaa !34
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %.split40.us
  %.024 = phi ptr [ null, %.split40.us ], [ %.us-phi38, %bb.j ], [ %.us-phi38, %bb.i ]
  ret ptr %.024
}

; Function Attrs: nounwind uwtable
define void @Gia_ManEquivTransform(ptr noundef %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #33 ; 3 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 6 uses
  store i32 0, ptr %i.c, align 4, !tbaa !33
  store i32 100, ptr %i.b, align 8, !tbaa !32
  %i.d = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #33
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 6 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !14   ; 2 uses
  %or.cond = icmp sgt i32 %i.g, 1
  br i1 %or.cond, label %.lr.ph114, label %._crit_edge

.lr.ph114:                                        ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 192        ; 5 uses
  %i.i = getelementptr i8, ptr %0, i64 200        ; 3 uses
  %i.j = zext nneg i32 %i.g to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph114, %Gia_ObjIsHead.exit.thread
  %.val69138 = phi ptr [ %i.a, %.lr.ph114 ], [ %.val69139, %Gia_ObjIsHead.exit.thread ] ; 2 uses
  %.promoted103 = phi ptr [ %i.a, %.lr.ph114 ], [ %.promoted103132, %Gia_ObjIsHead.exit.thread ] ; 3 uses
  %.promoted100 = phi i32 [ 100, %.lr.ph114 ], [ %.promoted100129, %Gia_ObjIsHead.exit.thread ] ; 3 uses
  %indvars.iv124 = phi i64 [ %i.j, %.lr.ph114 ], [ %indvars.iv.next125, %Gia_ObjIsHead.exit.thread ] ; 2 uses
  %.052112 = phi i32 [ 0, %.lr.ph114 ], [ %.1, %Gia_ObjIsHead.exit.thread ] ; 3 uses
  %.053111 = phi i32 [ 0, %.lr.ph114 ], [ %.2, %Gia_ObjIsHead.exit.thread ] ; 3 uses
  %.055110 = phi i32 [ 0, %.lr.ph114 ], [ %.156, %Gia_ObjIsHead.exit.thread ] ; 4 uses
  %.057109 = phi i32 [ 0, %.lr.ph114 ], [ %.3, %Gia_ObjIsHead.exit.thread ] ; 3 uses
  %indvars.iv.next125 = add nsw i64 %indvars.iv124, -1 ; 4 uses
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %indvars.iv.next125
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 268435455
  %i.n = icmp eq i32 %i.m, 268435455
  br i1 %i.n, label %Gia_ObjIsHead.exit, label %Gia_ObjIsHead.exit.thread

Gia_ObjIsHead.exit:                               ; preds = %bb.b
  %.val3.i = load ptr, ptr %i.i, align 8, !tbaa !60
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.val3.i, i64 %indvars.iv.next125
  %i.p = load i32, ptr %i.o, align 4, !tbaa !34
  %i.q = icmp slt i32 %i.p, 1
  br i1 %i.q, label %Gia_ObjIsHead.exit.thread, label %.lr.ph96

.lr.ph96:                                         ; preds = %Gia_ObjIsHead.exit
  %i.r = add nsw i32 %.052112, 1                  ; 2 uses
  store i32 0, ptr %i.c, align 4, !tbaa !33
  %i.s = trunc nuw nsw i64 %indvars.iv.next125 to i32
  br label %bb.c

.lr.ph107:                                        ; preds = %bb.v
  %wide.trip.count = and i64 %indvars.iv.next, 4294967295
  br label %bb.w

bb.c:                                             ; preds = %.lr.ph96, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph96 ], [ %indvars.iv.next, %bb.v ] ; 7 uses
  %storemerge104 = phi ptr [ %.promoted103, %.lr.ph96 ], [ %storemerge105, %bb.v ] ; 6 uses
  %spec.select.sink.i102 = phi i32 [ %.promoted100, %.lr.ph96 ], [ %spec.select.sink.i101, %bb.v ] ; 3 uses
  %.15495 = phi i32 [ %.053111, %.lr.ph96 ], [ %i.t, %bb.v ]
  %.15894 = phi i32 [ %.057109, %.lr.ph96 ], [ %.259, %bb.v ] ; 2 uses
  %.06193 = phi i32 [ %i.s, %.lr.ph96 ], [ %i.be, %bb.v ] ; 3 uses
  %i.t = add nsw i32 %.15495, 1                   ; 3 uses
  %i.u = trunc nsw i64 %indvars.iv to i32
  %i.v = icmp eq i32 %spec.select.sink.i102, %i.u
  br i1 %i.v, label %bb.d, label %Vec_IntPush.exit

bb.d:                                             ; preds = %bb.c
  %i.w = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.w, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not9.i.i = icmp eq ptr %storemerge104, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge104, i64 noundef 64) #36
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
  %.not9.i10.i = icmp eq ptr %storemerge104, null
  %i.ac = zext nneg i32 %spec.select.i to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call ptr @realloc(ptr noundef nonnull %storemerge104, i64 noundef %i.ad) #36
  br label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.i
  %i.af = tail call noalias ptr @malloc(i64 noundef %i.ad) #33
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.g, %bb.f, %bb.k, %bb.j, %bb.c, %bb.h
  %storemerge105 = phi ptr [ %storemerge104, %bb.c ], [ %storemerge104, %bb.h ], [ %i.y, %bb.g ], [ %i.x, %bb.f ], [ %i.ae, %bb.j ], [ %i.af, %bb.k ] ; 7 uses
  %spec.select.sink.i101 = phi i32 [ %spec.select.sink.i102, %bb.c ], [ %spec.select.sink.i102, %bb.h ], [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %storemerge105, i64 %indvars.iv
  store i32 %.06193, ptr %i.ag, align 4, !tbaa !34
  %.val75 = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.ah = zext nneg i32 %.06193 to i64            ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.val75, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4
  %.not66 = icmp ugt i32 %i.aj, -1073741825
  br i1 %.not66, label %bb.u, label %bb.l

bb.l:                                             ; preds = %Vec_IntPush.exit
  %i.ak = load i32, ptr %i.c, align 4, !tbaa !33  ; 7 uses
  %i.al = load i32, ptr %i.b, align 8, !tbaa !32
  %i.am = icmp eq i32 %i.ak, %i.al
  br i1 %i.am, label %bb.m, label %.Vec_IntPush.exit84_crit_edge

.Vec_IntPush.exit84_crit_edge:                    ; preds = %bb.l
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !11
  br label %Vec_IntPush.exit84

bb.m:                                             ; preds = %bb.l
  %i.an = icmp slt i32 %i.ak, 16
  br i1 %i.an, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !11  ; 2 uses
  %.not9.i.i82 = icmp eq ptr %i.ao, null
  br i1 %.not9.i.i82, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ao, i64 noundef 64) #36
  br label %Vec_IntGrow.exit11.sink.split.i80

bb.p:                                             ; preds = %bb.n
  %i.aq = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit11.sink.split.i80

bb.q:                                             ; preds = %bb.m
  %i.ar = icmp samesign ult i32 %i.ak, 1073741823
  %i.as = shl nuw nsw i32 %i.ak, 1
  %spec.select.i77 = select i1 %i.ar, i32 %i.as, i32 2147483647 ; 4 uses
  %.not.i9.i78 = icmp samesign ult i32 %i.ak, %spec.select.i77
  %.pre135 = load ptr, ptr %i.e, align 8, !tbaa !11 ; 3 uses
  br i1 %.not.i9.i78, label %bb.r, label %Vec_IntPush.exit84

bb.r:                                             ; preds = %bb.q
  %.not9.i10.i79 = icmp eq ptr %.pre135, null
  %i.at = zext nneg i32 %spec.select.i77 to i64
  %i.au = shl nuw nsw i64 %i.at, 2                ; 2 uses
  br i1 %.not9.i10.i79, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = tail call ptr @realloc(ptr noundef nonnull %.pre135, i64 noundef %i.au) #36
  br label %Vec_IntGrow.exit11.sink.split.i80

bb.t:                                             ; preds = %bb.r
  %i.aw = tail call noalias ptr @malloc(i64 noundef %i.au) #33
  br label %Vec_IntGrow.exit11.sink.split.i80

Vec_IntGrow.exit11.sink.split.i80:                ; preds = %bb.s, %bb.t, %bb.o, %bb.p
  %storemerge89 = phi ptr [ %i.aq, %bb.p ], [ %i.ap, %bb.o ], [ %i.av, %bb.s ], [ %i.aw, %bb.t ] ; 2 uses
  %spec.select.sink.i81 = phi i32 [ 16, %bb.p ], [ 16, %bb.o ], [ %spec.select.i77, %bb.s ], [ %spec.select.i77, %bb.t ]
  store ptr %storemerge89, ptr %i.e, align 8, !tbaa !11
  store i32 %spec.select.sink.i81, ptr %i.b, align 8, !tbaa !32
  %.pre136 = load i32, ptr %i.c, align 4, !tbaa !33
  br label %Vec_IntPush.exit84

Vec_IntPush.exit84:                               ; preds = %.Vec_IntPush.exit84_crit_edge, %bb.q, %Vec_IntGrow.exit11.sink.split.i80
  %i.ax = phi i32 [ %i.ak, %.Vec_IntPush.exit84_crit_edge ], [ %i.ak, %bb.q ], [ %.pre136, %Vec_IntGrow.exit11.sink.split.i80 ] ; 2 uses
  %i.ay = phi ptr [ %.pre, %.Vec_IntPush.exit84_crit_edge ], [ %.pre135, %bb.q ], [ %storemerge89, %Vec_IntGrow.exit11.sink.split.i80 ]
  %i.az = add nsw i32 %i.ax, 1
  store i32 %i.az, ptr %i.c, align 4, !tbaa !33
  %i.ba = sext i32 %i.ax to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.ba
  store i32 %.06193, ptr %i.bb, align 4, !tbaa !34
  br label %bb.v

bb.u:                                             ; preds = %Vec_IntPush.exit
  %i.bc = add nsw i32 %.15894, 1
  br label %bb.v

bb.v:                                             ; preds = %Vec_IntPush.exit84, %bb.u
  %.259 = phi i32 [ %.15894, %Vec_IntPush.exit84 ], [ %i.bc, %bb.u ] ; 3 uses
  %.val73 = load ptr, ptr %i.i, align 8, !tbaa !60
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.val73, i64 %i.ah
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !34 ; 2 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %bb.c, label %.lr.ph107, !llvm.loop !167

bb.w:                                             ; preds = %.lr.ph107, %bb.w
  %indvars.iv121 = phi i64 [ 0, %.lr.ph107 ], [ %indvars.iv.next122, %bb.w ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %storemerge105, i64 %indvars.iv121
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !34
  %i.bi = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.bj = sext i32 %i.bh to i64                   ; 4 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.bj ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = and i32 %i.bl, -268435457
  store i32 %i.bm, ptr %i.bk, align 4
  %i.bn = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bj ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = and i32 %i.bp, -536870913
  store i32 %i.bq, ptr %i.bo, align 4
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bj ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = or i32 %i.bt, 268435455
  store i32 %i.bu, ptr %i.bs, align 4
  %i.bv = load ptr, ptr %i.i, align 8, !tbaa !60
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.bj
  store i32 0, ptr %i.bw, align 4, !tbaa !34
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next122, %wide.trip.count
  br i1 %exitcond.not, label %.critedge2, label %bb.w, !llvm.loop !168

.critedge2:                                       ; preds = %bb.w
  %.val70 = load i32, ptr %i.c, align 4, !tbaa !33
  %i.bx = icmp slt i32 %.val70, 2
  br i1 %i.bx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.critedge2
  %i.by = add nsw i32 %.055110, 1
  br label %Gia_ObjIsHead.exit.thread

bb.y:                                             ; preds = %.critedge2
  tail call void @Cec_ManSimClassCreate(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #32
  br label %Gia_ObjIsHead.exit.thread

Gia_ObjIsHead.exit.thread:                        ; preds = %bb.b, %bb.y, %Gia_ObjIsHead.exit, %bb.x
  %.val69139 = phi ptr [ %storemerge105, %bb.x ], [ %storemerge105, %bb.y ], [ %.val69138, %Gia_ObjIsHead.exit ], [ %.val69138, %bb.b ] ; 2 uses
  %.promoted103132 = phi ptr [ %storemerge105, %bb.x ], [ %storemerge105, %bb.y ], [ %.promoted103, %Gia_ObjIsHead.exit ], [ %.promoted103, %bb.b ]
  %.promoted100129 = phi i32 [ %spec.select.sink.i101, %bb.x ], [ %spec.select.sink.i101, %bb.y ], [ %.promoted100, %Gia_ObjIsHead.exit ], [ %.promoted100, %bb.b ]
  %.3 = phi i32 [ %.259, %bb.x ], [ %.259, %bb.y ], [ %.057109, %Gia_ObjIsHead.exit ], [ %.057109, %bb.b ] ; 2 uses
  %.156 = phi i32 [ %i.by, %bb.x ], [ %.055110, %bb.y ], [ %.055110, %Gia_ObjIsHead.exit ], [ %.055110, %bb.b ] ; 2 uses
  %.2 = phi i32 [ %i.t, %bb.x ], [ %i.t, %bb.y ], [ %.053111, %Gia_ObjIsHead.exit ], [ %.053111, %bb.b ] ; 2 uses
  %.1 = phi i32 [ %i.r, %bb.x ], [ %i.r, %bb.y ], [ %.052112, %Gia_ObjIsHead.exit ], [ %.052112, %bb.b ] ; 2 uses
  %i.bz = icmp sgt i64 %indvars.iv124, 2
  br i1 %i.bz, label %bb.b, label %._crit_edge, !llvm.loop !169

._crit_edge:                                      ; preds = %Gia_ObjIsHead.exit.thread, %bb.a
  %i.ca = phi ptr [ %i.a, %bb.a ], [ %.val69139, %Gia_ObjIsHead.exit.thread ] ; 2 uses
  %.057.lcssa = phi i32 [ 0, %bb.a ], [ %.3, %Gia_ObjIsHead.exit.thread ]
  %.055.lcssa = phi i32 [ 0, %bb.a ], [ %.156, %Gia_ObjIsHead.exit.thread ]
  %.053.lcssa = phi i32 [ 0, %bb.a ], [ %.2, %Gia_ObjIsHead.exit.thread ]
  %.052.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %Gia_ObjIsHead.exit.thread ]
  %.not.i85 = icmp eq ptr %i.ca, null
  br i1 %.not.i85, label %Vec_IntFree.exit, label %bb.z

bb.z:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.ca) #32
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge, %bb.z
  %i.cb = load ptr, ptr %i.e, align 8, !tbaa !11  ; 2 uses
  %.not.i86 = icmp eq ptr %i.cb, null
  br i1 %.not.i86, label %Vec_IntFree.exit87, label %bb.aa

bb.aa:                                            ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.cb) #32
  br label %Vec_IntFree.exit87

Vec_IntFree.exit87:                               ; preds = %Vec_IntFree.exit, %bb.aa
  tail call void @free(ptr noundef nonnull %i.b) #32
  %.not64 = icmp eq i32 %1, 0
  br i1 %.not64, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %Vec_IntFree.exit87
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.21, i32 noundef %.055.lcssa, i32 noundef %.052.lcssa, i32 noundef %.057.lcssa, i32 noundef %.053.lcssa)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %Vec_IntFree.exit87
  ret void
}

declare void @Cec_ManSimClassCreate(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
end_hunk_0
begin_hunk_1_@Gia_ManEquivFilter:bb.a
  %i.bq = getelementptr i8, ptr %0, i64 24
  %.val31.i = load i32, ptr %i.bq, align 8, !tbaa !14 ; 6 uses
  %i.br = sext i32 %.val31.i to i64               ; 2 uses
  %i.bs = tail call noalias ptr @calloc(i64 noundef %i.br, i64 noundef 4) #35 ; 4 uses
  %i.bt = shl nsw i64 %i.br, 2
  %i.bu = tail call noalias ptr @malloc(i64 noundef %i.bt) #33 ; 7 uses
  %i.bv = icmp sgt i32 %.val31.i, 0
  br i1 %i.bv, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.y
  %wide.trip.count.i = zext nneg i32 %.val31.i to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.val31.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %index ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store <4 x i32> %vec.ind, ptr %i.bw, align 4, !tbaa !34
  store <4 x i32> %step.add, ptr %i.bx, align 4, !tbaa !34
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !178

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.lr.ph34.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph34.i:                                       ; preds = %.lr.ph.i, %middle.block
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !54  ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ca = icmp eq i32 %.val31.i, 1
  br i1 %i.ca, label %.epil.preheader, label %.lr.ph34.i.new

.lr.ph34.i.new:                                   ; preds = %.lr.ph34.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.z

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.i
  %i.cc = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !34
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph34.i, label %.lr.ph.i, !llvm.loop !179

bb.z:                                             ; preds = %bb.ad, %.lr.ph34.i.new
  %indvars.iv36.i = phi i64 [ 0, %.lr.ph34.i.new ], [ %indvars.iv.next37.i.1, %bb.ad ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph34.i.new ], [ %niter.next.1, %bb.ad ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv36.i
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = and i32 %i.ce, 268435455                ; 2 uses
  %.off.i = add nsw i32 %i.cf, -1
  %switch.i = icmp ult i32 %.off.i, 268435454
  br i1 %switch.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.cg ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !34
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.cj
  %i.cl = trunc nuw nsw i64 %indvars.iv36.i to i32 ; 2 uses
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !34
  store i32 %i.cl, ptr %i.ch, align 4, !tbaa !34
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %indvars.iv.next37.i = or disjoint i64 %indvars.iv36.i, 1 ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.next37.i
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = and i32 %i.cn, 268435455                ; 2 uses
  %.off.i.1 = add nsw i32 %i.co, -1
  %switch.i.1 = icmp ult i32 %.off.i.1, 268435454
  br i1 %switch.i.1, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.cp ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !34
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.cs
  %i.cu = trunc nuw nsw i64 %indvars.iv.next37.i to i32 ; 2 uses
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !34
  store i32 %i.cu, ptr %i.cq, align 4, !tbaa !34
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %indvars.iv.next37.i.1 = add nuw nsw i64 %indvars.iv36.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.z, !llvm.loop !59

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.ad
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph34.i
  %indvars.iv36.i.epil.init = phi i64 [ 0, %.lr.ph34.i ], [ %indvars.iv.next37.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod133 = trunc i32 %.val31.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod133)
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv36.i.epil.init
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = and i32 %i.cw, 268435455                ; 2 uses
  %.off.i.epil = add nsw i32 %i.cx, -1
  %switch.i.epil = icmp ult i32 %.off.i.epil, 268435454
  br i1 %switch.i.epil, label %bb.ae, label %._crit_edge.i

bb.ae:                                            ; preds = %.epil.preheader
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.cy ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !34
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.db
  %i.dd = trunc nuw nsw i64 %indvars.iv36.i.epil.init to i32 ; 2 uses
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !34
  store i32 %i.dd, ptr %i.cz, align 4, !tbaa !34
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.ae, %.epil.preheader, %bb.y
  %.not.i94 = icmp eq ptr %i.bu, null
  br i1 %.not.i94, label %Gia_ManDeriveNexts.exit, label %bb.af

bb.af:                                            ; preds = %._crit_edge.i
  tail call void @free(ptr noundef nonnull %i.bu) #32
  br label %Gia_ManDeriveNexts.exit

Gia_ManDeriveNexts.exit:                          ; preds = %._crit_edge.i, %bb.af
  store ptr %i.bs, ptr %i.d, align 8, !tbaa !60
  br label %bb.ag

bb.ag:                                            ; preds = %bb.f, %Gia_ManDeriveNexts.exit, %Vec_IntFree.exit91, %Vec_IntFree.exit89, %bb.e, %bb.c
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define void @Gia_ManEquivFilterTest(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !33
  store i32 1000, ptr %i.a, align 8, !tbaa !32
  %i.c = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #33 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !11
  %i.e = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 72         ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %Vec_IntPush.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 7 uses
  %.020 = phi i32 [ 0, %bb.a ], [ %i.ac, %Vec_IntPush.exit ] ; 2 uses
  %spec.select.sink.i1419 = phi i32 [ 1000, %bb.a ], [ %spec.select.sink.i13, %Vec_IntPush.exit ] ; 3 uses
  %storemerge1618 = phi ptr [ %i.c, %bb.a ], [ %storemerge17, %Vec_IntPush.exit ] ; 6 uses
  %.val10 = load i32, ptr %i.e, align 8, !tbaa !111
  %.val11 = load ptr, ptr %i.f, align 8, !tbaa !52
  %i.g = getelementptr i8, ptr %.val11, i64 4
  %.val11.val = load i32, ptr %i.g, align 4, !tbaa !33
  %i.h = shl nuw nsw i32 %.020, 1
  %i.i = add nuw nsw i32 %i.h, 2                  ; 2 uses
  %i.j = sub i32 %i.i, %.val10
  %i.k = add i32 %i.j, %.val11.val
  %i.l = trunc nsw i64 %indvars.iv to i32
  %i.m = icmp eq i32 %spec.select.sink.i1419, %i.l
  br i1 %i.m, label %bb.c, label %Vec_IntPush.exit

bb.c:                                             ; preds = %bb.b
  %i.n = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not9.i.i = icmp eq ptr %storemerge1618, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge1618, i64 noundef 64) #36
  br label %Vec_IntPush.exit

bb.f:                                             ; preds = %bb.d
  %i.p = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.c
  %i.q = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.r = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.q, i32 %i.r, i32 2147483647 ; 4 uses
  %i.s = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.s
  br i1 %.not.i9.i, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %.not9.i10.i = icmp eq ptr %storemerge1618, null
  %i.t = zext nneg i32 %spec.select.i to i64
  %i.u = shl nuw nsw i64 %i.t, 2                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = tail call ptr @realloc(ptr noundef nonnull %storemerge1618, i64 noundef %i.u) #36
  br label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.h
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.u) #33
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.f, %bb.e, %bb.j, %bb.i, %bb.b, %bb.g
  %storemerge17 = phi ptr [ %storemerge1618, %bb.b ], [ %storemerge1618, %bb.g ], [ %i.p, %bb.f ], [ %i.o, %bb.e ], [ %i.v, %bb.i ], [ %i.w, %bb.j ] ; 4 uses
  %spec.select.sink.i13 = phi i32 [ %spec.select.sink.i1419, %bb.b ], [ %spec.select.sink.i1419, %bb.g ], [ 16, %bb.f ], [ 16, %bb.e ], [ %spec.select.i, %bb.i ], [ %spec.select.i, %bb.j ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %storemerge17, i64 %indvars.iv
  store i32 %i.k, ptr %i.x, align 4, !tbaa !34
  %.val = load i32, ptr %i.e, align 8, !tbaa !111
  %.val9 = load ptr, ptr %i.f, align 8, !tbaa !52
  %i.y = getelementptr i8, ptr %.val9, i64 4
  %.val9.val = load i32, ptr %i.y, align 4, !tbaa !33
  %i.z = sub i32 %i.i, %.val
  %i.aa = add i32 %i.z, %.val9.val
  %i.ab = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.aa) ; 0 uses
  %i.ac = add nuw nsw i32 %.020, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ac, 10
  br i1 %exitcond.not, label %Vec_IntFree.exit, label %bb.b, !llvm.loop !180

Vec_IntFree.exit:                                 ; preds = %Vec_IntPush.exit
  %i.ad = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.ad, ptr %i.b, align 4, !tbaa !33
  store i32 %spec.select.sink.i13, ptr %i.a, align 8
  store ptr %storemerge17, ptr %i.d, align 8
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  tail call void @Gia_ManEquivFilter(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 1)
  tail call void @free(ptr noundef nonnull %storemerge17) #32
  tail call void @free(ptr noundef nonnull %i.a) #32
  ret void
}

; Function Attrs: nounwind uwtable
define void @Gia_ManEquivImprove(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @Gia_ManLevelNum(ptr noundef %0) #32 ; 0 uses
  tail call void @Gia_ManCreateRefs(ptr noundef %0) #32
  %i.b = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #33 ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %.val81 = load i32, ptr %i.c, align 8, !tbaa !14
  %i.d = icmp sgt i32 %.val81, 1
  br i1 %i.d, label %.lr.ph83, label %._crit_edge

.lr.ph83:                                         ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 192        ; 7 uses
  %i.f = getelementptr i8, ptr %0, i64 200        ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 32
  %i.h = getelementptr i8, ptr %0, i64 160
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph83, %.critedge
  %.val6588 = phi ptr [ %i.b, %.lr.ph83 ], [ %.val6589, %.critedge ] ; 3 uses
  %i.i = phi ptr [ %i.b, %.lr.ph83 ], [ %i.dl, %.critedge ] ; 3 uses
  %i.j = phi ptr [ %i.b, %.lr.ph83 ], [ %i.dm, %.critedge ] ; 3 uses
  %i.k = phi i32 [ 100, %.lr.ph83 ], [ %i.dn, %.critedge ] ; 3 uses
  %indvars.iv85 = phi i64 [ 1, %.lr.ph83 ], [ %indvars.iv.next86, %.critedge ] ; 6 uses
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %indvars.iv85
  %i.m = load i32, ptr %i.l, align 4
  %i.n = and i32 %i.m, 268435455
  %i.o = icmp eq i32 %i.n, 268435455
  br i1 %i.o, label %Gia_ObjIsHead.exit, label %.critedge

Gia_ObjIsHead.exit:                               ; preds = %bb.b
  %.val3.i = load ptr, ptr %i.f, align 8, !tbaa !60
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.val3.i, i64 %indvars.iv85
  %i.q = load i32, ptr %i.p, align 4, !tbaa !34
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %.critedge, label %bb.c

bb.c:                                             ; preds = %Gia_ObjIsHead.exit
  %i.s = trunc nuw nsw i64 %indvars.iv85 to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %Vec_IntPush.exit
  %indvar = phi i64 [ 0, %bb.c ], [ %indvar.next, %Vec_IntPush.exit ] ; 2 uses
  %.val6590 = phi ptr [ %.val6588, %bb.c ], [ %.val65, %Vec_IntPush.exit ] ; 2 uses
  %i.t = phi ptr [ %i.i, %bb.c ], [ %i.bt, %Vec_IntPush.exit ] ; 2 uses
  %i.u = phi ptr [ %i.j, %bb.c ], [ %i.bt, %Vec_IntPush.exit ] ; 4 uses
  %i.v = phi i32 [ %i.k, %bb.c ], [ %i.bu, %Vec_IntPush.exit ] ; 7 uses
  %i.w = phi i32 [ 0, %bb.c ], [ %i.bv, %Vec_IntPush.exit ] ; 3 uses
  %.079 = phi i32 [ 1000000000, %bb.c ], [ %.1, %Vec_IntPush.exit ] ; 2 uses
  %.05178 = phi i32 [ 1000000000, %bb.c ], [ %.152, %Vec_IntPush.exit ] ; 3 uses
  %.05377 = phi i32 [ -1, %bb.c ], [ %.154, %Vec_IntPush.exit ]
  %.05575 = phi i32 [ %i.s, %bb.c ], [ %i.bz, %Vec_IntPush.exit ] ; 9 uses
  %i.x = zext nneg i32 %.05575 to i64             ; 3 uses
  %.val71 = load ptr, ptr %i.h, align 8, !tbaa !102 ; 7 uses
  %i.y = add nuw nsw i32 %.05575, 1               ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val71, i64 4 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !33  ; 3 uses
  %.not.i.not.i.i.i = icmp sgt i32 %i.aa, %.05575
  br i1 %.not.i.not.i.i.i, label %Gia_ObjLevel.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load i32, ptr %.val71, align 8, !tbaa !32 ; 4 uses
  %i.ac = shl nsw i32 %i.ab, 1                    ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.ac, %.05575
  br i1 %.not.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.val71, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.ae, null
  %i.af = zext nneg i32 %i.y to i64
  %i.ag = shl nuw nsw i64 %i.af, 2                ; 2 uses
  br i1 %.not9.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = tail call ptr @realloc(ptr noundef nonnull %i.ae, i64 noundef %i.ag) #36
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ai = tail call noalias ptr @malloc(i64 noundef %i.ag) #33
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aj = phi ptr [ %i.ah, %bb.g ], [ %i.ai, %bb.h ]
  store ptr %i.aj, ptr %i.ad, align 8, !tbaa !11
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i

bb.j:                                             ; preds = %bb.e
  %.not.i.i.not.i.i.i = icmp sgt i32 %i.ab, %.05575
  br i1 %.not.i.i.not.i.i.i, label %Vec_IntGrow.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = icmp slt i32 %i.ab, 1073741823
  %spec.select.i.i.i.i = select i1 %i.ak, i32 %i.ac, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i.i = icmp slt i32 %i.ab, %spec.select.i.i.i.i
  br i1 %.not.i22.i.i.i.i, label %bb.l, label %Vec_IntGrow.exit.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %.val71, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !11 ; 2 uses
  %.not9.i23.i.i.i.i = icmp eq ptr %i.am, null
  %i.an = sext i32 %spec.select.i.i.i.i to i64
  %i.ao = shl nsw i64 %i.an, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = tail call ptr @realloc(ptr noundef nonnull %i.am, i64 noundef %i.ao) #36
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.aq = tail call noalias ptr @malloc(i64 noundef %i.ao) #33
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ar = phi ptr [ %i.ap, %bb.m ], [ %i.aq, %bb.n ]
  store ptr %i.ar, ptr %i.al, align 8, !tbaa !11
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i.i:              ; preds = %bb.o, %bb.i
  %spec.select.sink.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %bb.o ], [ %i.y, %bb.i ]
  store i32 %spec.select.sink.i.i.i.i, ptr %.val71, align 8, !tbaa !32
  %.pre.i.i.i = load i32, ptr %i.z, align 4, !tbaa !33
  br label %Vec_IntGrow.exit.i.i.i.i

Vec_IntGrow.exit.i.i.i.i:                         ; preds = %Vec_IntGrow.exit.sink.split.i.i.i.i, %bb.k, %bb.j
  %i.as = phi i32 [ %.pre.i.i.i, %Vec_IntGrow.exit.sink.split.i.i.i.i ], [ %i.aa, %bb.k ], [ %i.aa, %bb.j ] ; 3 uses
  %.not3.i.i.i = icmp sgt i32 %i.as, %.05575
  br i1 %.not3.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %Vec_IntGrow.exit.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.val71, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !11
  %i.av = sext i32 %i.as to i64
  %i.aw = shl nsw i64 %i.av, 2
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.au, i64 %i.aw
  %i.ax = sub i32 %.05575, %i.as
  %i.ay = zext i32 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 2
  %i.ba = add nuw nsw i64 %i.az, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i, i8 0, i64 %i.ba, i1 false), !tbaa !34
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %Vec_IntGrow.exit.i.i.i.i
  store i32 %i.y, ptr %i.z, align 4, !tbaa !33
  br label %Gia_ObjLevel.exit

Gia_ObjLevel.exit:                                ; preds = %bb.d, %._crit_edge.i.i.i.i
  %i.bb = getelementptr i8, ptr %.val71, i64 8
  %.val.i.i.i = load ptr, ptr %i.bb, align 8, !tbaa !11
  %sext.i = shl nuw nsw i64 %i.x, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %sext.i
end_hunk_1
begin_hunk_2_@Gia_ManTransferEquivs:bb.a
  %i.dk = icmp slt i64 %indvars.iv.next87, %i.dj
  br i1 %i.dk, label %bb.e, label %._crit_edge77, !llvm.loop !250

._crit_edge77:                                    ; preds = %.critedge, %._crit_edge.thread, %._crit_edge
  %i.dl = phi ptr [ %i.h, %._crit_edge.thread ], [ %i.ad, %._crit_edge ], [ %i.dg, %.critedge ] ; 2 uses
  %.not.i = icmp eq ptr %i.dl, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge77
  tail call void @free(ptr noundef nonnull %i.dl) #32
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge77, %bb.t
  %.val31.i = load i32, ptr %i.a, align 8, !tbaa !14 ; 6 uses
  %i.dm = sext i32 %.val31.i to i64               ; 2 uses
  %i.dn = tail call noalias ptr @calloc(i64 noundef %i.dm, i64 noundef 4) #35 ; 4 uses
  %i.do = shl nsw i64 %i.dm, 2
  %i.dp = tail call noalias ptr @malloc(i64 noundef %i.do) #33 ; 7 uses
  %i.dq = icmp sgt i32 %.val31.i, 0
  br i1 %i.dq, label %.lr.ph.preheader.i, label %._crit_edge.i56

.lr.ph.preheader.i:                               ; preds = %Vec_IntFree.exit
  %wide.trip.count.i58 = zext nneg i32 %.val31.i to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.val31.i, 8
  br i1 %min.iters.check, label %.lr.ph.i59.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i58, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %index ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store <4 x i32> %vec.ind, ptr %i.dr, align 4, !tbaa !34
  store <4 x i32> %step.add, ptr %i.ds, align 4, !tbaa !34
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !251

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i58
  br i1 %cmp.n, label %.lr.ph34.i, label %.lr.ph.i59.preheader

.lr.ph.i59.preheader:                             ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i60.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i59

.lr.ph34.i:                                       ; preds = %.lr.ph.i59, %middle.block
  %i.du = load ptr, ptr %i.d, align 8, !tbaa !54  ; 3 uses
  %xtraiter116 = and i64 %wide.trip.count.i58, 1
  %i.dv = icmp eq i32 %.val31.i, 1
  br i1 %i.dv, label %.epil.preheader115, label %.lr.ph34.i.new

.lr.ph34.i.new:                                   ; preds = %.lr.ph34.i
  %unroll_iter119 = and i64 %wide.trip.count.i58, 2147483646
  br label %bb.u

.lr.ph.i59:                                       ; preds = %.lr.ph.i59.preheader, %.lr.ph.i59
  %indvars.iv.i60 = phi i64 [ %indvars.iv.next.i61, %.lr.ph.i59 ], [ %indvars.iv.i60.ph, %.lr.ph.i59.preheader ] ; 3 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv.i60
  %i.dx = trunc nuw nsw i64 %indvars.iv.i60 to i32
  store i32 %i.dx, ptr %i.dw, align 4, !tbaa !34
  %indvars.iv.next.i61 = add nuw nsw i64 %indvars.iv.i60, 1 ; 2 uses
  %exitcond.not.i62 = icmp eq i64 %indvars.iv.next.i61, %wide.trip.count.i58
  br i1 %exitcond.not.i62, label %.lr.ph34.i, label %.lr.ph.i59, !llvm.loop !252

bb.u:                                             ; preds = %bb.y, %.lr.ph34.i.new
  %indvars.iv36.i = phi i64 [ 0, %.lr.ph34.i.new ], [ %indvars.iv.next37.i.1, %bb.y ] ; 4 uses
  %niter120 = phi i64 [ 0, %.lr.ph34.i.new ], [ %niter120.next.1, %bb.y ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv36.i
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = and i32 %i.dz, 268435455                ; 2 uses
  %.off.i = add nsw i32 %i.ea, -1
  %switch.i = icmp ult i32 %.off.i, 268435454
  br i1 %switch.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.eb ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !34
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.ee
  %i.eg = trunc nuw nsw i64 %indvars.iv36.i to i32 ; 2 uses
  store i32 %i.eg, ptr %i.ef, align 4, !tbaa !34
  store i32 %i.eg, ptr %i.ec, align 4, !tbaa !34
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %indvars.iv.next37.i = or disjoint i64 %indvars.iv36.i, 1 ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.next37.i
  %i.ei = load i32, ptr %i.eh, align 4
  %i.ej = and i32 %i.ei, 268435455                ; 2 uses
  %.off.i.1 = add nsw i32 %i.ej, -1
  %switch.i.1 = icmp ult i32 %.off.i.1, 268435454
  br i1 %switch.i.1, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.ek ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !34
  %i.en = zext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.en
  %i.ep = trunc nuw nsw i64 %indvars.iv.next37.i to i32 ; 2 uses
  store i32 %i.ep, ptr %i.eo, align 4, !tbaa !34
  store i32 %i.ep, ptr %i.el, align 4, !tbaa !34
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %indvars.iv.next37.i.1 = add nuw nsw i64 %indvars.iv36.i, 2 ; 2 uses
  %niter120.next.1 = add i64 %niter120, 2         ; 2 uses
  %niter120.ncmp.1 = icmp eq i64 %niter120.next.1, %unroll_iter119
  br i1 %niter120.ncmp.1, label %._crit_edge.i56.loopexit.unr-lcssa, label %bb.u, !llvm.loop !59

._crit_edge.i56.loopexit.unr-lcssa:               ; preds = %bb.y
  %lcmp.mod117.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod117.not, label %._crit_edge.i56, label %.epil.preheader115

.epil.preheader115:                               ; preds = %._crit_edge.i56.loopexit.unr-lcssa, %.lr.ph34.i
  %indvars.iv36.i.epil.init = phi i64 [ 0, %.lr.ph34.i ], [ %indvars.iv.next37.i.1, %._crit_edge.i56.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod118 = trunc i32 %.val31.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod118)
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv36.i.epil.init
  %i.er = load i32, ptr %i.eq, align 4
  %i.es = and i32 %i.er, 268435455                ; 2 uses
  %.off.i.epil = add nsw i32 %i.es, -1
  %switch.i.epil = icmp ult i32 %.off.i.epil, 268435454
  br i1 %switch.i.epil, label %bb.z, label %._crit_edge.i56

bb.z:                                             ; preds = %.epil.preheader115
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.et ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !34
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.ew
  %i.ey = trunc nuw nsw i64 %indvars.iv36.i.epil.init to i32 ; 2 uses
  store i32 %i.ey, ptr %i.ex, align 4, !tbaa !34
  store i32 %i.ey, ptr %i.eu, align 4, !tbaa !34
  br label %._crit_edge.i56

._crit_edge.i56:                                  ; preds = %._crit_edge.i56.loopexit.unr-lcssa, %bb.z, %.epil.preheader115, %Vec_IntFree.exit
  %.not.i57 = icmp eq ptr %i.dp, null
  br i1 %.not.i57, label %Gia_ManDeriveNexts.exit, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.i56
  tail call void @free(ptr noundef nonnull %i.dp) #32
  br label %Gia_ManDeriveNexts.exit

Gia_ManDeriveNexts.exit:                          ; preds = %._crit_edge.i56, %bb.aa
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 200
  store ptr %i.dn, ptr %i.ez, align 8, !tbaa !60
  ret void
}

; Function Attrs: nounwind uwtable
define void @Gia_ManTransferTest(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60   ; 3 uses
  %i.e = tail call ptr @Gia_ManChangeOrder(ptr noundef %0) ; 6 uses
  tail call void @Gia_ManTransferEquivs(ptr noundef %0, ptr noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.g = load i32, ptr %i.f, align 8, !tbaa !14   ; 4 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 32
  %.val56 = load ptr, ptr %i.i, align 8, !tbaa !41 ; 4 uses
  %.not = icmp eq ptr %.val56, null
  br i1 %.not, label %.critedge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.j = getelementptr i8, ptr %i.e, i64 32
  %.val55 = load ptr, ptr %i.j, align 8, !tbaa !41 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.g to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.k = icmp eq i32 %i.g, 1
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.split.new

.lr.ph.split.new:                                 ; preds = %.lr.ph.split
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.split.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.new ], [ %niter.next.1, %bb.b ]
  %i.l = getelementptr inbounds nuw [12 x i8], ptr %.val56, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !42
  %i.o = ashr i32 %i.n, 1
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [12 x i8], ptr %.val55, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.s = shl nuw i32 %indvars.iv.tr, 1
  store i32 %i.s, ptr %i.r, align 4, !tbaa !42
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [12 x i8], ptr %.val56, i64 %indvars.iv.next
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !42
  %i.w = ashr i32 %i.v, 1
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [12 x i8], ptr %.val55, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %indvars.iv.tr.1 = trunc nuw i64 %indvars.iv.next to i32
  %i.aa = shl nuw i32 %indvars.iv.tr.1, 1
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !42
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !253

.critedge.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph.split
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next.1, %.critedge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod72 = trunc i32 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod72)
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %.val56, i64 %indvars.iv.epil.init
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !42
  %i.ae = ashr i32 %i.ad, 1
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [12 x i8], ptr %.val55, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.ai = shl nuw i32 %indvars.iv.tr.epil, 1
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !42
  br label %.critedge

.critedge:                                        ; preds = %.epil.preheader, %.critedge.loopexit.unr-lcssa, %.lr.ph, %bb.a
  tail call void @Gia_ManTransferEquivs(ptr noundef %i.e, ptr noundef nonnull %0)
  %.val5459 = load i32, ptr %i.f, align 8, !tbaa !14 ; 2 uses
  %i.aj = icmp sgt i32 %.val5459, 0
  br i1 %i.aj, label %.lr.ph61, label %.critedge.._crit_edge_crit_edge

.critedge.._crit_edge_crit_edge:                  ; preds = %.critedge
  %.pre = sext i32 %.val5459 to i64
  br label %._crit_edge

.lr.ph61:                                         ; preds = %.critedge, %.lr.ph61
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %.lr.ph61 ], [ 0, %.critedge ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv64 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = and i32 %i.al, -268435457
  store i32 %i.am, ptr %i.ak, align 4
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %.val54 = load i32, ptr %i.f, align 8, !tbaa !14
  %i.an = sext i32 %.val54 to i64                 ; 2 uses
  %i.ao = icmp slt i64 %indvars.iv.next65, %i.an
  br i1 %i.ao, label %.lr.ph61, label %._crit_edge, !llvm.loop !254

._crit_edge:                                      ; preds = %.lr.ph61, %.critedge.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.critedge.._crit_edge_crit_edge ], [ %i.an, %.lr.ph61 ]
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.aq = shl nsw i64 %.pre-phi, 2
  %bcmp = tail call i32 @bcmp(ptr %i.ap, ptr %i.b, i64 %i.aq)
  %.not43 = icmp eq i32 %bcmp, 0
  %str.str.1 = select i1 %.not43, ptr @str, ptr @str.1
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.str.1) ; 0 uses
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !60
  %.val = load i32, ptr %i.f, align 8, !tbaa !14
  %i.as = sext i32 %.val to i64
  %i.at = shl nsw i64 %i.as, 2
  %bcmp45 = tail call i32 @bcmp(ptr %i.ar, ptr %i.d, i64 %i.at)
  %.not46 = icmp eq i32 %bcmp45, 0
  %str.2.sink = select i1 %.not46, ptr @str.2, ptr @str.3
  %puts47 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.2.sink) ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !54 ; 2 uses
  %.not49 = icmp eq ptr %i.av, null
  br i1 %.not49, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.av) #32
  store ptr null, ptr %i.au, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 200 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !60 ; 2 uses
  %.not50 = icmp eq ptr %i.ax, null
  br i1 %.not50, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.ax) #32
  store ptr null, ptr %i.aw, align 8, !tbaa !60
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.not51 = icmp eq ptr %i.b, null
  br i1 %.not51, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.b) #32
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.not52 = icmp eq ptr %i.d, null
  br i1 %.not52, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.d) #32
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  tail call void @Gia_ManStop(ptr noundef nonnull %i.e) #32
  ret void
}

; Function Attrs: nounwind uwtable
define void @Gia_ManTransferEquivs2(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #6 {
bb.a:
  tail call void @Gia_ManFillValue(ptr noundef %0) #32
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14   ; 6 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.critedge.thread142

.critedge.thread142:                              ; preds = %bb.a
  %i.d = sext i32 %i.b to i64
  %i.e = tail call noalias ptr @calloc(i64 noundef %i.d, i64 noundef 4) #35
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !54
  br label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr i8, ptr %1, i64 32
  %.val72 = load ptr, ptr %i.g, align 8, !tbaa !41 ; 4 uses
  %.not = icmp eq ptr %.val72, null
  %i.h = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.i = zext nneg i32 %i.b to i64                ; 3 uses
  br i1 %.not, label %.lr.ph98.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %xtraiter = and i64 %i.i, 1
  %i.j = icmp eq i32 %i.b, 1
  br i1 %i.j, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i64 %i.i, 2147483646
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %bb.d, %.lr.ph.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %indvars.iv.next.1, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.1, %bb.d ]
  %i.k = getelementptr inbounds nuw [12 x i8], ptr %.val72, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !42   ; 2 uses
  %.not63 = icmp eq i32 %i.m, -1
  br i1 %.not63, label %.lr.ph.split.1, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split
  %i.n = ashr i32 %i.m, 1
  %.val71 = load ptr, ptr %i.h, align 8, !tbaa !41
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [12 x i8], ptr %.val71, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.r = shl nuw i32 %indvars.iv.tr, 1
  store i32 %i.r, ptr %i.q, align 4, !tbaa !42
  br label %.lr.ph.split.1

.lr.ph.split.1:                                   ; preds = %.lr.ph.split, %bb.b
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.s = getelementptr inbounds nuw [12 x i8], ptr %.val72, i64 %indvars.iv.next
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !42   ; 2 uses
  %.not63.1 = icmp eq i32 %i.u, -1
  br i1 %.not63.1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.1
  %i.v = ashr i32 %i.u, 1
  %.val71.1 = load ptr, ptr %i.h, align 8, !tbaa !41
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [12 x i8], ptr %.val71.1, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %indvars.iv.tr.1 = trunc nuw i64 %indvars.iv.next to i32
  %i.z = shl nuw i32 %indvars.iv.tr.1, 1
  store i32 %i.z, ptr %i.y, align 4, !tbaa !42
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.split.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge.unr-lcssa, label %.lr.ph.split, !llvm.loop !255

.critedge.unr-lcssa:                              ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %.critedge.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next.1, %.critedge.unr-lcssa ] ; 2 uses
  %lcmp.mod158 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod158)
  %i.aa = getelementptr inbounds nuw [12 x i8], ptr %.val72, i64 %indvars.iv.epil.init
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !42 ; 2 uses
  %.not63.epil = icmp eq i32 %i.ac, -1
  br i1 %.not63.epil, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.epil.preheader
  %i.ad = ashr i32 %i.ac, 1
  %.val71.epil = load ptr, ptr %i.h, align 8, !tbaa !41
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [12 x i8], ptr %.val71.epil, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.ah = shl nuw i32 %indvars.iv.tr.epil, 1
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !42
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.split.epil.preheader, %bb.e, %.critedge.unr-lcssa
  %i.ai = zext nneg i32 %i.b to i64
  br label %.lr.ph98.preheader

.lr.ph98.preheader:                               ; preds = %.lr.ph, %.critedge
  %.sink153 = phi i64 [ %i.ai, %.critedge ], [ %i.i, %.lr.ph ]
  %i.aj = tail call noalias ptr @calloc(i64 noundef %.sink153, i64 noundef 4) #35
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !54
  br label %.lr.ph98

.preheader:                                       ; preds = %.lr.ph98, %.critedge.thread142
  %i.al = phi ptr [ %i.f, %.critedge.thread142 ], [ %i.ak, %.lr.ph98 ] ; 5 uses
  %i.am = getelementptr i8, ptr %0, i64 24        ; 3 uses
  %.val6499 = load i32, ptr %i.am, align 8, !tbaa !14 ; 2 uses
  %i.an = icmp sgt i32 %.val6499, 1
  br i1 %i.an, label %.lr.ph101, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader
  %i.ao = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #33
  br label %._crit_edge108

.lr.ph101:                                        ; preds = %.preheader
  %i.ap = getelementptr i8, ptr %0, i64 192
  %i.aq = getelementptr i8, ptr %0, i64 32
  br label %bb.f

.lr.ph98:                                         ; preds = %.lr.ph98.preheader, %.lr.ph98
  %indvars.iv110 = phi i64 [ 0, %.lr.ph98.preheader ], [ %indvars.iv.next111, %.lr.ph98 ] ; 2 uses
  %.val79 = load ptr, ptr %i.ak, align 8, !tbaa !54
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.val79, i64 %indvars.iv110 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = or i32 %i.as, 268435455
  store i32 %i.at, ptr %i.ar, align 4
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %.val65 = load i32, ptr %i.a, align 8, !tbaa !14
  %i.au = sext i32 %.val65 to i64
  %i.av = icmp slt i64 %indvars.iv.next111, %i.au
  br i1 %i.av, label %.lr.ph98, label %.preheader, !llvm.loop !256

bb.f:                                             ; preds = %.lr.ph101, %bb.i
  %.val64124 = phi i32 [ %.val6499, %.lr.ph101 ], [ %.val64, %bb.i ] ; 2 uses
  %indvars.iv113 = phi i64 [ 1, %.lr.ph101 ], [ %indvars.iv.next114, %bb.i ] ; 3 uses
  %.val81 = load ptr, ptr %i.ap, align 8, !tbaa !54
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.val81, i64 %indvars.iv113
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = and i32 %i.ax, 268435455
  %.not90 = icmp eq i32 %i.ay, 0
  br i1 %.not90, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %.val70 = load ptr, ptr %i.aq, align 8, !tbaa !41
  %i.az = getelementptr inbounds nuw [12 x i8], ptr %.val70, i64 %indvars.iv113
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !42 ; 2 uses
  %.not62 = icmp eq i32 %i.bb, -1
  br i1 %.not62, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = ashr i32 %i.bb, 1
  %.val78 = load ptr, ptr %i.al, align 8, !tbaa !54
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %.val78, i64 %i.bd ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = and i32 %i.bf, -268435456
  store i32 %i.bg, ptr %i.be, align 4
  %.val64.pre = load i32, ptr %i.am, align 8, !tbaa !14
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g
  %.val64 = phi i32 [ %.val64124, %bb.f ], [ %.val64.pre, %bb.h ], [ %.val64124, %bb.g ] ; 3 uses
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %i.bh = sext i32 %.val64 to i64
  %i.bi = icmp slt i64 %indvars.iv.next114, %i.bh
  br i1 %i.bi, label %bb.f, label %._crit_edge, !llvm.loop !257

._crit_edge:                                      ; preds = %bb.i
  %i.bj = icmp sgt i32 %.val64, 1
  %i.bk = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #33 ; 4 uses
  br i1 %i.bj, label %.lr.ph107, label %._crit_edge108

.lr.ph107:                                        ; preds = %._crit_edge
  %i.bl = getelementptr i8, ptr %0, i64 192
  %i.bm = getelementptr i8, ptr %0, i64 200       ; 2 uses
  %i.bn = getelementptr i8, ptr %0, i64 32
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph107, %.critedge2
  %i.bo = phi ptr [ %i.bk, %.lr.ph107 ], [ %i.eo, %.critedge2 ] ; 3 uses
  %i.bp = phi ptr [ %i.bk, %.lr.ph107 ], [ %i.ep, %.critedge2 ] ; 3 uses
  %i.bq = phi i32 [ 100, %.lr.ph107 ], [ %i.eq, %.critedge2 ] ; 3 uses
  %i.br = phi ptr [ %i.bk, %.lr.ph107 ], [ %i.er, %.critedge2 ] ; 3 uses
  %indvars.iv121 = phi i64 [ 1, %.lr.ph107 ], [ %indvars.iv.next122, %.critedge2 ] ; 4 uses
  %.val.i = load ptr, ptr %i.bl, align 8, !tbaa !54
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %indvars.iv121
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = and i32 %i.bt, 268435455
  %i.bv = icmp eq i32 %i.bu, 268435455
  br i1 %i.bv, label %Gia_ObjIsHead.exit, label %.critedge2

Gia_ObjIsHead.exit:                               ; preds = %bb.j
  %.val3.i = load ptr, ptr %i.bm, align 8, !tbaa !60 ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.val3.i, i64 %indvars.iv121
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !34
  %i.by = icmp slt i32 %i.bx, 1
  br i1 %i.by, label %.critedge2, label %bb.k

bb.k:                                             ; preds = %Gia_ObjIsHead.exit
  %i.bz = trunc nuw nsw i64 %indvars.iv121 to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %Vec_IntPushUnique.exit
  %.val80.pre129 = phi ptr [ %.val3.i, %bb.k ], [ %.val80.pre130, %Vec_IntPushUnique.exit ] ; 4 uses
  %i.ca = phi ptr [ %i.bo, %bb.k ], [ %i.df, %Vec_IntPushUnique.exit ] ; 4 uses
  %.val80127 = phi ptr [ %.val3.i, %bb.k ], [ %.val80, %Vec_IntPushUnique.exit ] ; 2 uses
  %i.cb = phi ptr [ %i.bp, %bb.k ], [ %i.dg, %Vec_IntPushUnique.exit ] ; 4 uses
  %i.cc = phi i32 [ %i.bq, %bb.k ], [ %i.dh, %Vec_IntPushUnique.exit ] ; 9 uses
  %i.cd = phi ptr [ %i.br, %bb.k ], [ %i.di, %Vec_IntPushUnique.exit ] ; 7 uses
  %i.ce = phi i32 [ 0, %bb.k ], [ %.val76, %Vec_IntPushUnique.exit ] ; 7 uses
  %.0102 = phi i32 [ %i.bz, %bb.k ], [ %i.dk, %Vec_IntPushUnique.exit ]
  %.val68 = load ptr, ptr %i.bn, align 8, !tbaa !41
  %i.cf = zext nneg i32 %.0102 to i64             ; 2 uses
  %i.cg = getelementptr inbounds nuw [12 x i8], ptr %.val68, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !42 ; 2 uses
  %i.cj = icmp sgt i32 %i.ci, -1
  br i1 %i.cj, label %bb.m, label %Vec_IntPushUnique.exit

bb.m:                                             ; preds = %bb.l
  %i.ck = lshr i32 %i.ci, 1                       ; 2 uses
  %i.cl = icmp sgt i32 %i.ce, 0
  br i1 %i.cl, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.m
  %wide.trip.count.i = zext nneg i32 %i.ce to i64
  br label %bb.o

bb.n:                                             ; preds = %bb.o
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.o, !llvm.loop !134

bb.o:                                             ; preds = %bb.n, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.n ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.i
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !34
  %i.co = icmp eq i32 %i.cn, %i.ck
  br i1 %i.co, label %Vec_IntPushUnique.exit, label %bb.n

._crit_edge.i:                                    ; preds = %bb.n, %bb.m
  %i.cp = icmp eq i32 %i.ce, %i.cc
  br i1 %i.cp, label %bb.p, label %Vec_IntPush.exit.i

bb.p:                                             ; preds = %._crit_edge.i
  %i.cq = icmp slt i32 %i.cc, 16
  br i1 %i.cq, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %.not9.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not9.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cr = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.cd, i64 noundef 64) #36
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.s:                                             ; preds = %bb.q
  %i.cs = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.t:                                             ; preds = %bb.p
  %i.ct = icmp samesign ult i32 %i.cc, 1073741823
  %i.cu = shl nuw nsw i32 %i.cc, 1
  %spec.select.i.i = select i1 %i.ct, i32 %i.cu, i32 2147483647 ; 4 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.cc, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.u, label %Vec_IntPush.exit.i

bb.u:                                             ; preds = %bb.t
  %.not9.i10.i.i = icmp eq ptr %i.cd, null
  %i.cv = zext nneg i32 %spec.select.i.i to i64
  %i.cw = shl nuw nsw i64 %i.cv, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = tail call ptr @realloc(ptr noundef nonnull %i.cd, i64 noundef %i.cw) #36
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.w:                                             ; preds = %bb.u
  %i.cy = tail call noalias ptr @malloc(i64 noundef %i.cw) #33
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.v, %bb.w, %bb.r, %bb.s
  %storemerge = phi ptr [ %i.cs, %bb.s ], [ %i.cr, %bb.r ], [ %i.cx, %bb.v ], [ %i.cy, %bb.w ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.s ], [ 16, %bb.r ], [ %spec.select.i.i, %bb.v ], [ %spec.select.i.i, %bb.w ]
  %.val80.pre.pre = load ptr, ptr %i.bm, align 8, !tbaa !60
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.t, %._crit_edge.i
end_hunk_2
