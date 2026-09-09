Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaCSat3?download=true
inline.NumInlined: 322
inline.NumDeleted: 99
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Cbs3_ManDeriveReason:bb.a
  %.pre11.pre.i.peel.i = load i32, ptr %i.g, align 4, !tbaa !55 ; 2 uses
  %.pre82.i = sext i32 %.pre11.pre.i.peel.i to i64
  store ptr %i.fg, ptr %i.es, align 8, !tbaa !57
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pre-phi.i = phi i64 [ %.pre82.i, %bb.ag ], [ %sext.i, %bb.af ]
  %i.fh = phi i32 [ %.pre11.pre.i.peel.i, %bb.ag ], [ %i.ev, %bb.af ]
  %i.fi = phi ptr [ %i.fg, %bb.ag ], [ %.val47.i, %bb.af ] ; 3 uses
  %i.fj = add nsw i32 %i.fh, 1
  store i32 %i.fj, ptr %i.g, align 4, !tbaa !55
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %.pre-phi.i
  store i32 %i.fa, ptr %i.fk, align 4, !tbaa !41
  %.pre.i88 = load i32, ptr %i.g, align 4, !tbaa !33 ; 3 uses
  %indvars.iv.next.peel.i = add nsw i64 %i.et, 1  ; 2 uses
  %i.fl = sext i32 %.pre.i88 to i64
  %i.fm = icmp slt i64 %indvars.iv.next.peel.i, %i.fl
  br i1 %i.fm, label %.peel.next.i, label %.critedge.i

.peel.next.i:                                     ; preds = %bb.ah, %bb.ak
  %i.fn = phi ptr [ %i.ge, %bb.ak ], [ %i.fi, %bb.ah ] ; 4 uses
  %i.fo = phi i32 [ %.pre74.i, %bb.ak ], [ %.pre.i88, %bb.ah ] ; 4 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ak ], [ %indvars.iv.next.peel.i, %bb.ah ] ; 3 uses
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %indvars.iv.i
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !41 ; 3 uses
  %.not.i89 = icmp eq i32 %i.fq, 0
  %i.fr = icmp eq i64 %indvars.iv.i, %sext.i
  %or.cond.i = select i1 %.not.i89, i1 true, i1 %i.fr
  br i1 %or.cond.i, label %.critedge.i, label %bb.ai

bb.ai:                                            ; preds = %.peel.next.i
  %.val.i = load ptr, ptr %i.ey, align 8, !tbaa !48
  %i.fs = sext i32 %i.fq to i64
  %i.ft = getelementptr inbounds i8, ptr %.val.i, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !50
  %i.fv = sext i8 %i.fu to i32
  %i.fw = shl nsw i32 %i.fq, 1
  %i.fx = add nsw i32 %i.fw, %i.fv
  %i.fy = load i32, ptr %i.ez, align 8, !tbaa !56
  %i.fz = icmp eq i32 %i.fo, %i.fy
  br i1 %i.fz, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ga = shl nsw i32 %i.fo, 1                    ; 2 uses
  store i32 %i.ga, ptr %i.ez, align 8, !tbaa !56
  %i.gb = sext i32 %i.ga to i64
  %i.gc = shl nsw i64 %i.gb, 2
  %i.gd = tail call ptr @realloc(ptr noundef nonnull %i.fn, i64 noundef %i.gc) #25 ; 2 uses
  %.pre11.pre.i52.i = load i32, ptr %i.g, align 4, !tbaa !55
  store ptr %i.gd, ptr %i.es, align 8, !tbaa !57
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ge = phi ptr [ %i.gd, %bb.aj ], [ %i.fn, %bb.ai ] ; 3 uses
  %i.gf = phi i32 [ %.pre11.pre.i52.i, %bb.aj ], [ %i.fo, %bb.ai ] ; 2 uses
  %i.gg = add nsw i32 %i.gf, 1
  store i32 %i.gg, ptr %i.g, align 4, !tbaa !55
  %i.gh = sext i32 %i.gf to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.ge, i64 %i.gh
  store i32 %i.fx, ptr %i.gi, align 4, !tbaa !41
  %.pre74.i = load i32, ptr %i.g, align 4, !tbaa !33 ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gj = sext i32 %.pre74.i to i64
  %i.gk = icmp slt i64 %indvars.iv.next.i, %i.gj
  br i1 %i.gk, label %.peel.next.i, label %.critedge.i, !llvm.loop !135

.critedge.i:                                      ; preds = %bb.ak, %.peel.next.i, %bb.ah, %.lr.ph.i, %bb.ae
  %i.gl = phi ptr [ %.val47.i, %bb.ae ], [ %.val47.i, %.lr.ph.i ], [ %i.fi, %bb.ah ], [ %i.fn, %.peel.next.i ], [ %i.ge, %bb.ak ] ; 2 uses
  %i.gm = phi i32 [ %i.ev, %bb.ae ], [ %i.ev, %.lr.ph.i ], [ %.pre.i88, %bb.ah ], [ %i.fo, %.peel.next.i ], [ %.pre74.i, %bb.ak ] ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !56
  %i.gp = icmp eq i32 %i.gm, %i.go
  br i1 %i.gp, label %bb.al, label %Cbs3_QuePush.exit61.i

bb.al:                                            ; preds = %.critedge.i
  %i.gq = shl nsw i32 %i.gm, 1                    ; 2 uses
  store i32 %i.gq, ptr %i.gn, align 8, !tbaa !56
  %i.gr = sext i32 %i.gq to i64
  %i.gs = shl nsw i64 %i.gr, 2
  %i.gt = tail call ptr @realloc(ptr noundef nonnull %i.gl, i64 noundef %i.gs) #25 ; 2 uses
  %.pre11.pre.i59.i = load i32, ptr %i.g, align 4, !tbaa !55
  store ptr %i.gt, ptr %i.es, align 8, !tbaa !57
  br label %Cbs3_QuePush.exit61.i

Cbs3_QuePush.exit61.i:                            ; preds = %bb.al, %.critedge.i
  %i.gu = phi i32 [ %.pre11.pre.i59.i, %bb.al ], [ %i.gm, %.critedge.i ] ; 2 uses
  %.val46.pre.i = phi ptr [ %i.gt, %bb.al ], [ %i.gl, %.critedge.i ] ; 3 uses
  %i.gv = add nsw i32 %i.gu, 1
  store i32 %i.gv, ptr %i.g, align 4, !tbaa !55
  %i.gw = sext i32 %i.gu to i64
  %i.gx = getelementptr inbounds [4 x i8], ptr %.val46.pre.i, i64 %i.gw
  store i32 0, ptr %i.gx, align 4, !tbaa !41
  %i.gy = load i32, ptr %i.g, align 4, !tbaa !55  ; 3 uses
  %i.gz = load i32, ptr %i.gn, align 8, !tbaa !56
  %i.ha = icmp eq i32 %i.gy, %i.gz
  br i1 %i.ha, label %bb.am, label %Cbs3_QuePush.exit68.i

bb.am:                                            ; preds = %Cbs3_QuePush.exit61.i
  %i.hb = shl nsw i32 %i.gy, 1                    ; 2 uses
  store i32 %i.hb, ptr %i.gn, align 8, !tbaa !56
  %i.hc = sext i32 %i.hb to i64
  %i.hd = shl nsw i64 %i.hc, 2
  %i.he = tail call ptr @realloc(ptr noundef nonnull %.val46.pre.i, i64 noundef %i.hd) #25 ; 2 uses
  %.pre11.pre.i66.i = load i32, ptr %i.g, align 4, !tbaa !55
  store ptr %i.he, ptr %i.es, align 8, !tbaa !57
  br label %Cbs3_QuePush.exit68.i

Cbs3_QuePush.exit68.i:                            ; preds = %Cbs3_QuePush.exit61.i, %bb.am
  %.val46.i = phi ptr [ %i.he, %bb.am ], [ %.val46.pre.i, %Cbs3_QuePush.exit61.i ] ; 2 uses
  %i.hf = phi i32 [ %.pre11.pre.i66.i, %bb.am ], [ %i.gy, %Cbs3_QuePush.exit61.i ] ; 2 uses
  %i.hg = add nsw i32 %i.hf, 1
  store i32 %i.hg, ptr %i.g, align 4, !tbaa !55
  %i.hh = sext i32 %i.hf to i64
  %i.hi = getelementptr inbounds [4 x i8], ptr %.val46.i, i64 %i.hh
  store i32 0, ptr %i.hi, align 4, !tbaa !41
  %i.hj = load i32, ptr %i.g, align 4, !tbaa !55
  store i32 %i.hj, ptr %i.a, align 8, !tbaa !54
  %i.hk = sext i32 %i.ev to i64                   ; 2 uses
  %i.hl = getelementptr [4 x i8], ptr %.val46.i, i64 %i.hk
  %i.hm = getelementptr i8, ptr %i.hl, i64 4
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !41
  tail call fastcc void @Cbs3_ManWatchClause(ptr noundef nonnull %0, i32 noundef %i.ev, i32 noundef %i.hn)
  %.val45.i = load ptr, ptr %i.es, align 8, !tbaa !32
  %i.ho = getelementptr [4 x i8], ptr %.val45.i, i64 %i.hk
  %i.hp = getelementptr i8, ptr %i.ho, i64 8
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !41
  tail call fastcc void @Cbs3_ManWatchClause(ptr noundef nonnull %0, i32 noundef %i.ev, i32 noundef %i.hq)
  br label %Cbs3_QueFinish.exit

Cbs3_QueFinish.exit:                              ; preds = %.critedge, %Cbs3_QuePush.exit68.i
  ret i32 %i.ep
}

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #15

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #18

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #18

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #20

declare void @Gia_ManIncrementTravId(ptr noundef) local_unnamed_addr #15

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @Cbs3_ManToSolver2_rec(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 32
  %.val = load ptr, ptr %i.a, align 8, !tbaa !92
  %i.b = sext i32 %2 to i64                       ; 2 uses
  %i.c = getelementptr inbounds [12 x i8], ptr %.val, i64 %i.b ; 6 uses
  %i.d = getelementptr i8, ptr %1, i64 176
  %.val34 = load i32, ptr %i.d, align 8, !tbaa !137 ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 624
  %.val35 = load ptr, ptr %i.e, align 8, !tbaa !138
  %i.f = getelementptr inbounds [4 x i8], ptr %.val35, i64 %i.b ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !41
  %.not.i = icmp eq i32 %i.g, %.val34
  br i1 %.not.i, label %Gia_ObjUpdateTravIdCurrentId.exit, label %bb.b

Gia_ObjUpdateTravIdCurrentId.exit:                ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !94
  br label %common.ret42

bb.b:                                             ; preds = %bb.a
  store i32 %.val34, ptr %i.f, align 4, !tbaa !41
  %.val36 = load i64, ptr %i.c, align 4           ; 2 uses
  %i.j = and i64 %.val36, 2684354559
  %narrow.i = icmp eq i64 %i.j, 2684354559
  %i.k = icmp eq i32 %3, 0
  %or.cond = or i1 %i.k, %narrow.i
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = tail call fastcc i32 @Cbs3_ManAddNode(ptr noundef %0, i32 noundef %2, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.l, ptr %i.m, align 4, !tbaa !94
  br label %common.ret42

common.ret42:                                     ; preds = %bb.c, %Gia_ObjUpdateTravIdCurrentId.exit, %bb.d
  %common.ret42.op = phi i32 [ %i.ae, %bb.d ], [ %i.l, %bb.c ], [ %i.i, %Gia_ObjUpdateTravIdCurrentId.exit ]
  ret i32 %common.ret42.op

bb.d:                                             ; preds = %bb.b
  %i.n = trunc i64 %.val36 to i32                 ; 2 uses
  %i.o = and i32 %i.n, 536870911
  %i.p = sub nsw i32 %2, %i.o
  %4 = lshr i32 %i.n, 29
  %5 = and i32 %4, 1
  %6 = sub nuw nsw i32 %3, %5
  %i.q = tail call fastcc i32 @Cbs3_ManToSolver2_rec(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.p, i32 noundef %6)
  %.val37 = load i64, ptr %i.c, align 4           ; 2 uses
  %i.r = lshr i64 %.val37, 32
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = and i32 %i.s, 536870911
  %i.u = sub nsw i32 %2, %i.t
  %7 = lshr i64 %.val37, 61
  %8 = trunc nuw nsw i64 %7 to i32
  %9 = and i32 %8, 1
  %10 = sub nuw nsw i32 %3, %9
  %i.v = tail call fastcc i32 @Cbs3_ManToSolver2_rec(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.u, i32 noundef %10)
  %.val31 = load i64, ptr %i.c, align 4           ; 2 uses
  %i.w = trunc i64 %.val31 to i32
  %i.x = lshr i32 %i.w, 29
  %i.y = and i32 %i.x, 1
  %i.z = xor i32 %i.y, %i.q
  %i.aa = lshr i64 %.val31, 61
  %i.ab = trunc nuw nsw i64 %i.aa to i32
  %i.ac = and i32 %i.ab, 1
  %i.ad = xor i32 %i.ac, %i.v
  %i.ae = tail call fastcc i32 @Cbs3_ManAddNode(ptr noundef %0, i32 noundef %2, i32 noundef %i.z, i32 noundef %i.ad) ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !94
  br label %common.ret42
}

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -2147483648, 2147483647) i32 @Cbs3_ManAddNode(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !35   ; 7 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !36
  %i.e = icmp eq i32 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %Vec_IntPush.exit

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i32 %i.c, 16
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.h, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.h, i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i

bb.e:                                             ; preds = %bb.c
  %i.j = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.e, %bb.d
  %i.k = phi ptr [ %i.i, %bb.d ], [ %i.j, %bb.e ]
  store ptr %i.k, ptr %i.g, align 8, !tbaa !37
  br label %Vec_IntGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.l = icmp samesign ult i32 %i.c, 1073741823
  %i.m = shl nuw nsw i32 %i.c, 1
  %spec.select.i = select i1 %i.l, i32 %i.m, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.c, %spec.select.i
  br i1 %.not.i9.i, label %bb.g, label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37   ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.o, null
  %i.p = zext nneg i32 %spec.select.i to i64
  %i.q = shl nuw nsw i64 %i.p, 2                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr @realloc(ptr noundef nonnull %i.o, i64 noundef %i.q) #25
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.q) #24
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.t = phi ptr [ %i.r, %bb.h ], [ %i.s, %bb.i ]
  store ptr %i.t, ptr %i.n, align 8, !tbaa !37
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.j, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.j ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.a, align 8, !tbaa !36
  %.pre = load i32, ptr %i.b, align 4, !tbaa !35
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.a, %bb.f, %Vec_IntGrow.exit11.sink.split.i
  %i.u = phi i32 [ %i.c, %bb.a ], [ %i.c, %bb.f ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !37
  %i.x = add nsw i32 %i.u, 1
  store i32 %i.x, ptr %i.b, align 4, !tbaa !35
  %i.y = sext i32 %i.u to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.y
  store i32 %1, ptr %i.z, align 4, !tbaa !41
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !40
  %i.ad = getelementptr i8, ptr %i.ac, i64 144
  %.val = load ptr, ptr %i.ad, align 8, !tbaa !139
  %i.ae = sext i32 %1 to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !41
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !35 ; 7 uses
  %i.aj = load i32, ptr %i.aa, align 8, !tbaa !36
  %i.ak = icmp eq i32 %i.ai, %i.aj
  br i1 %i.ak, label %bb.k, label %Vec_IntPush.exit15

bb.k:                                             ; preds = %Vec_IntPush.exit
  %i.al = icmp slt i32 %i.ai, 16
  br i1 %i.al, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !37 ; 2 uses
  %.not9.i.i13 = icmp eq ptr %i.an, null
  br i1 %.not9.i.i13, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.an, i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i14

bb.n:                                             ; preds = %bb.l
  %i.ap = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit.i14

Vec_IntGrow.exit.i14:                             ; preds = %bb.n, %bb.m
  %i.aq = phi ptr [ %i.ao, %bb.m ], [ %i.ap, %bb.n ]
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !37
  br label %Vec_IntGrow.exit11.sink.split.i11

bb.o:                                             ; preds = %bb.k
  %i.ar = icmp samesign ult i32 %i.ai, 1073741823
  %i.as = shl nuw nsw i32 %i.ai, 1
  %spec.select.i8 = select i1 %i.ar, i32 %i.as, i32 2147483647 ; 3 uses
  %.not.i9.i9 = icmp samesign ult i32 %i.ai, %spec.select.i8
  br i1 %.not.i9.i9, label %bb.p, label %Vec_IntPush.exit15

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !37 ; 2 uses
  %.not9.i10.i10 = icmp eq ptr %i.au, null
  %i.av = zext nneg i32 %spec.select.i8 to i64
  %i.aw = shl nuw nsw i64 %i.av, 2                ; 2 uses
  br i1 %.not9.i10.i10, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = tail call ptr @realloc(ptr noundef nonnull %i.au, i64 noundef %i.aw) #25
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ay = tail call noalias ptr @malloc(i64 noundef %i.aw) #24
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.az = phi ptr [ %i.ax, %bb.q ], [ %i.ay, %bb.r ]
  store ptr %i.az, ptr %i.at, align 8, !tbaa !37
  br label %Vec_IntGrow.exit11.sink.split.i11

Vec_IntGrow.exit11.sink.split.i11:                ; preds = %bb.s, %Vec_IntGrow.exit.i14
  %spec.select.sink.i12 = phi i32 [ %spec.select.i8, %bb.s ], [ 16, %Vec_IntGrow.exit.i14 ]
  store i32 %spec.select.sink.i12, ptr %i.aa, align 8, !tbaa !36
  %.pre16 = load i32, ptr %i.ah, align 4, !tbaa !35
  br label %Vec_IntPush.exit15

Vec_IntPush.exit15:                               ; preds = %Vec_IntPush.exit, %bb.o, %Vec_IntGrow.exit11.sink.split.i11
  %i.ba = phi i32 [ %i.ai, %Vec_IntPush.exit ], [ %i.ai, %bb.o ], [ %.pre16, %Vec_IntGrow.exit11.sink.split.i11 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !37
  %i.bd = add nsw i32 %i.ba, 1
  store i32 %i.bd, ptr %i.ah, align 4, !tbaa !35
  %i.be = sext i32 %i.ba to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.be
  store i32 %i.ag, ptr %i.bf, align 4, !tbaa !41
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call fastcc void @Vec_IntPushTwo(ptr noundef nonnull %i.bg, i32 noundef %2, i32 noundef %3)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !45 ; 2 uses
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 8, !tbaa !45
  %i.bk = shl nsw i32 %i.bi, 1
  ret i32 %i.bk
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x double> @llvm.fmuladd.v8f64(<8 x double>, <8 x double>, <8 x double>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
