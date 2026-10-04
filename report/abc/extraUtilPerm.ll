Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/extraUtilPerm?download=true
inline.NumInlined: 140
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 36
begin_hunk_0_@Abc_ZddGiaTest:bb.a
  %i.bc = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.bd = icmp sgt i32 %i.aq, 0
  br i1 %i.bd, label %.lr.ph73, label %Abc_ZddCountNodesArray.exit

.lr.ph73:                                         ; preds = %Vec_IntAlloc.exit, %bb.o
  %i.be = phi i32 [ %i.cr, %bb.o ], [ %i.aq, %Vec_IntAlloc.exit ] ; 2 uses
  %i.bf = phi ptr [ %i.cs, %bb.o ], [ %i.bb, %Vec_IntAlloc.exit ] ; 4 uses
  %i.bg = phi ptr [ %i.ct, %bb.o ], [ %i.bb, %Vec_IntAlloc.exit ] ; 5 uses
  %i.bh = phi i32 [ %i.cu, %bb.o ], [ %spec.store.select.i, %Vec_IntAlloc.exit ] ; 8 uses
  %i.bi = phi i32 [ %i.cv, %bb.o ], [ 0, %Vec_IntAlloc.exit ] ; 5 uses
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %bb.o ], [ 0, %Vec_IntAlloc.exit ] ; 3 uses
  %.val55 = load ptr, ptr %i.bc, align 8, !tbaa !92 ; 2 uses
  %i.bj = getelementptr inbounds nuw [12 x i8], ptr %.val55, i64 %indvars.iv82 ; 4 uses
  %.not49 = icmp eq ptr %.val55, null
  br i1 %.not49, label %.critedge2, label %bb.e

bb.e:                                             ; preds = %.lr.ph73
  %.val60 = load i64, ptr %i.bj, align 4          ; 3 uses
  %i.bk = and i64 %.val60, 2147483648
  %.not.i61 = icmp ne i64 %i.bk, 0
  %i.bl = and i64 %.val60, 536870911              ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 536870911
  %narrow.i.not = or i1 %.not.i61, %i.bm
  br i1 %narrow.i.not, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bn = sub nsw i64 0, %i.bl
  %i.bo = getelementptr inbounds [12 x i8], ptr %i.bj, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !94
  %i.br = lshr i64 %.val60, 32
  %i.bs = and i64 %i.br, 536870911
  %i.bt = sub nsw i64 0, %i.bs
  %i.bu = getelementptr inbounds [12 x i8], ptr %i.bj, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !94
  %i.bx = tail call i32 @Abc_ZddDotMinProduct6(ptr noundef %i.b, i32 noundef %i.bq, i32 noundef %i.bw)
  %i.by = trunc i64 %indvars.iv82 to i32
  %i.bz = add i32 %i.by, 2
  %i.ca = tail call i32 @Abc_ZddUnion(ptr noundef %i.b, i32 noundef %i.bx, i32 noundef %i.bz) ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !94
  %i.cc = icmp eq i32 %i.bi, %i.bh
  br i1 %i.cc, label %bb.g, label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.f
  %i.cd = icmp slt i32 %i.bh, 16
  br i1 %i.cd, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not9.i.i = icmp eq ptr %i.bg, null
  br i1 %.not9.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ce = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bg, i64 noundef 64) #25
  br label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.h
  %i.cf = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.g
  %i.cg = icmp samesign ult i32 %i.bh, 1073741823
  %i.ch = shl nuw nsw i32 %i.bh, 1
  %spec.select.i = select i1 %i.cg, i32 %i.ch, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.bh, %spec.select.i
  br i1 %.not.i9.i, label %bb.l, label %Vec_IntPush.exit

bb.l:                                             ; preds = %bb.k
  %.not9.i10.i = icmp eq ptr %i.bg, null
  %i.ci = zext nneg i32 %spec.select.i to i64
  %i.cj = shl nuw nsw i64 %i.ci, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = tail call ptr @realloc(ptr noundef nonnull %i.bg, i64 noundef %i.cj) #25
  br label %Vec_IntPush.exit

bb.n:                                             ; preds = %bb.l
  %i.cl = tail call noalias ptr @malloc(i64 noundef %i.cj) #23
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.j, %bb.i, %bb.n, %bb.m, %bb.f, %bb.k
  %i.cm = phi ptr [ %i.bf, %bb.f ], [ %i.bf, %bb.k ], [ %i.cf, %bb.j ], [ %i.ce, %bb.i ], [ %i.ck, %bb.m ], [ %i.cl, %bb.n ] ; 3 uses
  %i.cn = phi i32 [ %i.bh, %bb.f ], [ %i.bh, %bb.k ], [ 16, %bb.j ], [ 16, %bb.i ], [ %spec.select.i, %bb.m ], [ %spec.select.i, %bb.n ]
  %i.co = add nsw i32 %i.bi, 1
  %i.cp = sext i32 %i.bi to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.cp
  store i32 %i.ca, ptr %i.cq, align 4, !tbaa !17
  %.pre = load i32, ptr %i.a, align 8, !tbaa !90
  br label %bb.o

bb.o:                                             ; preds = %Vec_IntPush.exit, %bb.e
  %i.cr = phi i32 [ %.pre, %Vec_IntPush.exit ], [ %i.be, %bb.e ] ; 3 uses
  %i.cs = phi ptr [ %i.cm, %Vec_IntPush.exit ], [ %i.bf, %bb.e ] ; 2 uses
  %i.ct = phi ptr [ %i.cm, %Vec_IntPush.exit ], [ %i.bg, %bb.e ]
  %i.cu = phi i32 [ %i.cn, %Vec_IntPush.exit ], [ %i.bh, %bb.e ]
  %i.cv = phi i32 [ %i.co, %Vec_IntPush.exit ], [ %i.bi, %bb.e ] ; 2 uses
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %i.cw = sext i32 %i.cr to i64
  %i.cx = icmp slt i64 %indvars.iv.next83, %i.cw
  br i1 %i.cx, label %.lr.ph73, label %.critedge2, !llvm.loop !71

.critedge2:                                       ; preds = %.lr.ph73, %bb.o
  %i.cy = phi ptr [ %i.bf, %.lr.ph73 ], [ %i.cs, %bb.o ] ; 4 uses
  %.val1821.i = phi i32 [ %i.bi, %.lr.ph73 ], [ %i.cv, %bb.o ] ; 2 uses
  %i.cz = phi i32 [ %i.be, %.lr.ph73 ], [ %i.cr, %bb.o ] ; 2 uses
  %i.da = icmp sgt i32 %i.cz, 0
  br i1 %i.da, label %.lr.ph77, label %.critedge4

.lr.ph77:                                         ; preds = %.critedge2, %bb.r
  %i.db = phi i32 [ %i.dk, %bb.r ], [ %i.cz, %.critedge2 ]
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %bb.r ], [ 0, %.critedge2 ] ; 2 uses
  %.076 = phi i32 [ %.1, %bb.r ], [ 0, %.critedge2 ] ; 3 uses
  %.val54 = load ptr, ptr %i.bc, align 8, !tbaa !92 ; 2 uses
  %i.dc = getelementptr inbounds nuw [12 x i8], ptr %.val54, i64 %indvars.iv85 ; 2 uses
  %.not50 = icmp eq ptr %.val54, null
  br i1 %.not50, label %.critedge4, label %bb.p

bb.p:                                             ; preds = %.lr.ph77
  %.val59 = load i64, ptr %i.dc, align 4          ; 2 uses
  %i.dd = and i64 %.val59, 2147483648
  %.not.i62 = icmp ne i64 %i.dd, 0
  %i.de = and i64 %.val59, 536870911
  %i.df = icmp eq i64 %i.de, 536870911
  %narrow.i63.not = or i1 %.not.i62, %i.df
  br i1 %narrow.i63.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !94
  %i.di = tail call i32 @Abc_ZddCountPaths(ptr noundef %i.b, i32 noundef %i.dh)
  %i.dj = add nsw i32 %i.di, %.076
  %.pre90 = load i32, ptr %i.a, align 8, !tbaa !90
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dk = phi i32 [ %.pre90, %bb.q ], [ %i.db, %bb.p ] ; 2 uses
  %.1 = phi i32 [ %i.dj, %bb.q ], [ %.076, %bb.p ] ; 2 uses
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %i.dl = sext i32 %i.dk to i64
  %i.dm = icmp slt i64 %indvars.iv.next86, %i.dl
  br i1 %i.dm, label %.lr.ph77, label %.critedge4, !llvm.loop !72

.critedge4:                                       ; preds = %.lr.ph77, %bb.r, %.critedge2
  %.0.lcssa = phi i32 [ 0, %.critedge2 ], [ %.076, %.lr.ph77 ], [ %.1, %bb.r ] ; 2 uses
  %i.dn = icmp sgt i32 %.val1821.i, 0
  br i1 %i.dn, label %.lr.ph.i.preheader, label %Abc_ZddCountNodesArray.exit

.lr.ph.i.preheader:                               ; preds = %.critedge4
  %i.do = zext nneg i32 %.val1821.i to i64        ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %.023.i = phi i32 [ %i.ds, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.i
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !17
  %i.dr = tail call i32 @Abc_ZddCount_rec(ptr noundef readonly %i.b, i32 noundef %i.dq)
  %i.ds = add nsw i32 %i.dr, %.023.i              ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next.i, %i.do
  br i1 %exitcond88.not, label %.critedge.i, label %.lr.ph.i, !llvm.loop !2

.critedge.i:                                      ; preds = %.lr.ph.i, %.critedge.i
  %indvars.iv28.i = phi i64 [ %indvars.iv.next29.i, %.critedge.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv28.i
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !17
  tail call void @Abc_ZddUnmark_rec(ptr noundef readonly %i.b, i32 noundef %i.du)
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next29.i, %i.do
  br i1 %exitcond89.not, label %Abc_ZddCountNodesArray.exit.thread, label %.critedge.i, !llvm.loop !3

Abc_ZddCountNodesArray.exit.thread:               ; preds = %.critedge.i
  %i.dv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %.0.lcssa, i32 noundef %i.ds) ; 0 uses
  br label %bb.s

Abc_ZddCountNodesArray.exit:                      ; preds = %Vec_IntAlloc.exit, %.critedge4
  %.0.lcssa108 = phi i32 [ %.0.lcssa, %.critedge4 ], [ 0, %Vec_IntAlloc.exit ]
  %i.dw = phi ptr [ %i.cy, %.critedge4 ], [ %i.bb, %Vec_IntAlloc.exit ] ; 2 uses
  %i.dx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %.0.lcssa108, i32 noundef 0) ; 0 uses
  %.not.i65 = icmp eq ptr %i.dw, null
  br i1 %.not.i65, label %Vec_IntFree.exit, label %bb.s

bb.s:                                             ; preds = %Abc_ZddCountNodesArray.exit.thread, %Abc_ZddCountNodesArray.exit
  %i.dy = phi ptr [ %i.cy, %Abc_ZddCountNodesArray.exit.thread ], [ %i.dw, %Abc_ZddCountNodesArray.exit ]
  tail call void @free(ptr noundef nonnull %i.dy) #24
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Abc_ZddCountNodesArray.exit, %bb.s
  tail call void @Abc_ZddManFree(ptr noundef %i.b)
  ret void
}

declare void @Gia_ManFillValue(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define void @Abc_ZddPermTestInt(ptr noundef %0) local_unnamed_addr #7 {
.lr.ph.i:
  %i.a = alloca [3 x [5 x i32]], align 16         ; 4 uses
  %i.b = alloca [5 x i32], align 16               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(60) %i.a, ptr noundef nonnull align 16 dereferenceable(60) @__const.Abc_ZddPermTestInt.pPerms, i64 60, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %putchar.i = tail call i32 @putchar(i32 123)    ; 0 uses
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 1) ; 0 uses
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 0) ; 0 uses
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 2) ; 0 uses
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 4) ; 0 uses
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 3) ; 0 uses
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %putchar.i.1 = tail call i32 @putchar(i32 123)  ; 0 uses
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 1) ; 0 uses
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 2) ; 0 uses
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 4) ; 0 uses
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 0) ; 0 uses
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 3) ; 0 uses
  %puts.i.1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %putchar.i.2 = tail call i32 @putchar(i32 123)  ; 0 uses
  %i.m = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 0) ; 0 uses
  %i.n = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 3) ; 0 uses
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 2) ; 0 uses
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 1) ; 0 uses
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 4) ; 0 uses
  %puts.i.2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.r = getelementptr i8, ptr %0, i64 12         ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.lr.ph.i, %Abc_ZddPermPrint.exit73
  %indvars.iv87 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next88, %Abc_ZddPermPrint.exit73 ] ; 3 uses
  %.080 = phi i32 [ 0, %.lr.ph.i ], [ %i.de, %Abc_ZddPermPrint.exit73 ]
  %i.t = trunc nuw nsw i64 %indvars.iv87 to i32
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.t) ; 0 uses
  %i.v = getelementptr inbounds nuw [20 x i8], ptr %i.a, i64 %indvars.iv87 ; 12 uses
  %putchar.i49 = tail call i32 @putchar(i32 123)  ; 0 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !17   ; 3 uses
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.w) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !17   ; 3 uses
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.z) ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !17 ; 3 uses
  %i.ad = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.ac) ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 5 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !17 ; 2 uses
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.af) ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 6 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !17 ; 2 uses
  %i.aj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.ai) ; 0 uses
  %puts.i54 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %.lr.ph.i56.1, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.lr.ph.i50
  %i.ak = icmp eq i32 %i.z, 0
  br i1 %i.ak, label %._crit_edge37.i, label %.preheader.i.182

.preheader.i.182:                                 ; preds = %.preheader.i.preheader
  %i.al = icmp eq i32 %i.ac, 0
  br i1 %i.al, label %._crit_edge37.i, label %.preheader.i.283

.preheader.i.283:                                 ; preds = %.preheader.i.182
  %i.am = icmp eq i32 %i.af, 0
  br i1 %i.am, label %._crit_edge37.i, label %.preheader.i.384

.preheader.i.384:                                 ; preds = %.preheader.i.283
  %i.an = icmp eq i32 %i.ai, 0
  br i1 %i.an, label %._crit_edge37.i, label %split.i

._crit_edge37.i:                                  ; preds = %.preheader.i.384, %.preheader.i.283, %.preheader.i.182, %.preheader.i.preheader
  %indvars.iv.next32.i.lcssa = phi i64 [ 1, %.preheader.i.preheader ], [ 2, %.preheader.i.182 ], [ 3, %.preheader.i.283 ], [ 4, %.preheader.i.384 ] ; 2 uses
  %i.ao = trunc nuw nsw i64 %indvars.iv.next32.i.lcssa to i32
  br label %split.i, !llvm.loop !6

split.i:                                          ; preds = %.preheader.i.384, %._crit_edge37.i
  %.pre-phi.i = phi i64 [ %indvars.iv.next32.i.lcssa, %._crit_edge37.i ], [ 5, %.preheader.i.384 ]
  %.027.lcssa.i = phi i32 [ %i.ao, %._crit_edge37.i ], [ 5, %.preheader.i.384 ]
  store i32 %.027.lcssa.i, ptr %i.b, align 16, !tbaa !17
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.pre-phi.i ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !17
  store i32 %i.aq, ptr %i.v, align 4, !tbaa !17
  store i32 %i.w, ptr %i.ap, align 4, !tbaa !17
  %.pre = load i32, ptr %i.y, align 4, !tbaa !17
  %.pre92.pre = load i32, ptr %i.ab, align 4, !tbaa !17
  br label %.lr.ph.i56.1

.lr.ph.i56.1:                                     ; preds = %split.i, %.lr.ph.i50
  %.pre92 = phi i32 [ %.pre92.pre, %split.i ], [ %i.ac, %.lr.ph.i50 ] ; 2 uses
  %i.ar = phi i32 [ %.pre, %split.i ], [ %i.z, %.lr.ph.i50 ] ; 2 uses
  %.1.i = phi i32 [ 1, %split.i ], [ 0, %.lr.ph.i50 ] ; 3 uses
  %.not.i.1 = icmp eq i32 %i.ar, 1
  br i1 %.not.i.1, label %.lr.ph.i56.2, label %.preheader.i.preheader.1

.preheader.i.preheader.1:                         ; preds = %.lr.ph.i56.1
  %i.as = icmp eq i32 %.pre92, 1
  br i1 %i.as, label %._crit_edge37.i.1, label %.preheader.i.1.1

.preheader.i.1.1:                                 ; preds = %.preheader.i.preheader.1
  %i.at = load i32, ptr %i.ae, align 4, !tbaa !17
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %._crit_edge37.i.1, label %.preheader.i.1.2

.preheader.i.1.2:                                 ; preds = %.preheader.i.1.1
  %i.av = load i32, ptr %i.ah, align 4, !tbaa !17
  %i.aw = icmp eq i32 %i.av, 1
  br i1 %i.aw, label %._crit_edge37.i.1, label %split.i.1

._crit_edge37.i.1:                                ; preds = %.preheader.i.1.2, %.preheader.i.1.1, %.preheader.i.preheader.1
  %indvars.iv.next32.i.lcssa.1 = phi i64 [ 2, %.preheader.i.preheader.1 ], [ 3, %.preheader.i.1.1 ], [ 4, %.preheader.i.1.2 ] ; 2 uses
  %i.ax = trunc nuw nsw i64 %indvars.iv.next32.i.lcssa.1 to i32
  %i.ay = or disjoint i32 %i.ax, 65536
  br label %split.i.1, !llvm.loop !6

split.i.1:                                        ; preds = %.preheader.i.1.2, %._crit_edge37.i.1
  %.pre-phi.i.1 = phi i64 [ %indvars.iv.next32.i.lcssa.1, %._crit_edge37.i.1 ], [ 5, %.preheader.i.1.2 ]
  %.027.lcssa.i.1 = phi i32 [ %i.ay, %._crit_edge37.i.1 ], [ 65541, %.preheader.i.1.2 ]
  %i.az = add nuw nsw i32 %.1.i, 1
  %i.ba = zext nneg i32 %.1.i to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ba
  store i32 %.027.lcssa.i.1, ptr %i.bb, align 4, !tbaa !17
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.pre-phi.i.1 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !17
  store i32 %i.bd, ptr %i.y, align 4, !tbaa !17
  store i32 %i.ar, ptr %i.bc, align 4, !tbaa !17
  %.pre91 = load i32, ptr %i.ab, align 4, !tbaa !17
  br label %.lr.ph.i56.2

.lr.ph.i56.2:                                     ; preds = %split.i.1, %.lr.ph.i56.1
  %i.be = phi i32 [ %.pre91, %split.i.1 ], [ %.pre92, %.lr.ph.i56.1 ] ; 2 uses
  %.1.i.1 = phi i32 [ %i.az, %split.i.1 ], [ %.1.i, %.lr.ph.i56.1 ] ; 3 uses
  %.not.i.2 = icmp eq i32 %i.be, 2
  %.pre94 = load i32, ptr %i.ae, align 4, !tbaa !17 ; 2 uses
  br i1 %.not.i.2, label %.lr.ph.i56.3, label %.preheader.i.preheader.2

.preheader.i.preheader.2:                         ; preds = %.lr.ph.i56.2
  %i.bf = icmp eq i32 %.pre94, 2
  br i1 %i.bf, label %._crit_edge37.i.2, label %.preheader.i.2.1

.preheader.i.2.1:                                 ; preds = %.preheader.i.preheader.2
  %i.bg = load i32, ptr %i.ah, align 4, !tbaa !17
  %i.bh = icmp eq i32 %i.bg, 2
  br i1 %i.bh, label %._crit_edge37.i.2, label %split.i.2

._crit_edge37.i.2:                                ; preds = %.preheader.i.2.1, %.preheader.i.preheader.2
  %indvars.iv.next32.i.lcssa.2 = phi i64 [ 3, %.preheader.i.preheader.2 ], [ 4, %.preheader.i.2.1 ] ; 2 uses
  %i.bi = trunc nuw nsw i64 %indvars.iv.next32.i.lcssa.2 to i32
  %i.bj = or disjoint i32 %i.bi, 131072
  br label %split.i.2, !llvm.loop !6

split.i.2:                                        ; preds = %.preheader.i.2.1, %._crit_edge37.i.2
  %.pre-phi.i.2 = phi i64 [ %indvars.iv.next32.i.lcssa.2, %._crit_edge37.i.2 ], [ 5, %.preheader.i.2.1 ]
  %.027.lcssa.i.2 = phi i32 [ %i.bj, %._crit_edge37.i.2 ], [ 131077, %.preheader.i.2.1 ]
  %i.bk = add nuw nsw i32 %.1.i.1, 1
  %i.bl = zext nneg i32 %.1.i.1 to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bl
  store i32 %.027.lcssa.i.2, ptr %i.bm, align 4, !tbaa !17
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.pre-phi.i.2 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !17
  store i32 %i.bo, ptr %i.ab, align 4, !tbaa !17
  store i32 %i.be, ptr %i.bn, align 4, !tbaa !17
  %.pre93 = load i32, ptr %i.ae, align 4, !tbaa !17
  br label %.lr.ph.i56.3

.lr.ph.i56.3:                                     ; preds = %split.i.2, %.lr.ph.i56.2
  %i.bp = phi i32 [ %.pre93, %split.i.2 ], [ %.pre94, %.lr.ph.i56.2 ] ; 2 uses
  %.1.i.2 = phi i32 [ %i.bk, %split.i.2 ], [ %.1.i.1, %.lr.ph.i56.2 ] ; 3 uses
  %.not.i.3 = icmp eq i32 %i.bp, 3
  %.pre97 = load i32, ptr %i.ah, align 4, !tbaa !17 ; 2 uses
  br i1 %.not.i.3, label %.lr.ph.i56.4, label %.preheader.i.preheader.3

.preheader.i.preheader.3:                         ; preds = %.lr.ph.i56.3
  %i.bq = icmp eq i32 %.pre97, 3
  br i1 %i.bq, label %split.i.3, label %split.i.loopexit.3, !llvm.loop !6

split.i.loopexit.3:                               ; preds = %.preheader.i.preheader.3
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %.pre95 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !17
  br label %split.i.3

split.i.3:                                        ; preds = %.preheader.i.preheader.3, %split.i.loopexit.3
  %i.br = phi i32 [ %.pre95, %split.i.loopexit.3 ], [ 3, %.preheader.i.preheader.3 ]
  %.pre-phi.i.3 = phi i64 [ 5, %split.i.loopexit.3 ], [ 4, %.preheader.i.preheader.3 ]
  %.027.lcssa.i.3 = phi i32 [ 196613, %split.i.loopexit.3 ], [ 196612, %.preheader.i.preheader.3 ]
  %i.bs = add nuw nsw i32 %.1.i.2, 1
  %i.bt = zext nneg i32 %.1.i.2 to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bt
  store i32 %.027.lcssa.i.3, ptr %i.bu, align 4, !tbaa !17
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.pre-phi.i.3
  store i32 %i.br, ptr %i.ae, align 4, !tbaa !17
  store i32 %i.bp, ptr %i.bv, align 4, !tbaa !17
  %.pre96 = load i32, ptr %i.ah, align 4, !tbaa !17
  br label %.lr.ph.i56.4

.lr.ph.i56.4:                                     ; preds = %split.i.3, %.lr.ph.i56.3
  %i.bw = phi i32 [ %.pre96, %split.i.3 ], [ %.pre97, %.lr.ph.i56.3 ] ; 2 uses
  %.1.i.3 = phi i32 [ %i.bs, %split.i.3 ], [ %.1.i.2, %.lr.ph.i56.3 ] ; 4 uses
  %.not.i.4 = icmp eq i32 %i.bw, 4
  br i1 %.not.i.4, label %Abc_ZddPerm2Comb.exit, label %Abc_ZddPerm2Comb.exit.thread

Abc_ZddPerm2Comb.exit.thread:                     ; preds = %.lr.ph.i56.4
  %i.bx = add nuw nsw i32 %.1.i.3, 1
  %i.by = zext nneg i32 %.1.i.3 to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.by
  store i32 262149, ptr %i.bz, align 4, !tbaa !17
  %i.ca = getelementptr inbounds nuw i8, ptr %i.v, i64 20 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !17
  store i32 %i.cb, ptr %i.ah, align 4, !tbaa !17
  store i32 %i.bw, ptr %i.ca, align 4, !tbaa !17
  br label %.lr.ph.preheader.i

Abc_ZddPerm2Comb.exit:                            ; preds = %.lr.ph.i56.4
  %i.cc = icmp eq i32 %.1.i.3, 0
  br i1 %i.cc, label %._crit_edge.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %Abc_ZddPerm2Comb.exit, %Abc_ZddPerm2Comb.exit.thread
  %.1.i.4102 = phi i32 [ %i.bx, %Abc_ZddPerm2Comb.exit.thread ], [ %.1.i.3, %Abc_ZddPerm2Comb.exit ] ; 7 uses
  %wide.trip.count.i = zext nneg i32 %.1.i.4102 to i64
  br label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %.lr.ph.i61, %.lr.ph.preheader.i
  %indvars.iv.i62 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i63, %.lr.ph.i61 ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i62
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !17 ; 2 uses
  %i.cf = ashr i32 %i.ce, 16
  %i.cg = and i32 %i.ce, 65535
  %i.ch = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.cf, i32 noundef %i.cg) ; 0 uses
  %indvars.iv.next.i63 = add nuw nsw i64 %indvars.iv.i62, 1 ; 2 uses
  %exitcond.not.i64 = icmp eq i64 %indvars.iv.next.i63, %wide.trip.count.i
  br i1 %exitcond.not.i64, label %.lr.ph, label %.lr.ph.i61, !llvm.loop !5

._crit_edge.thread:                               ; preds = %Abc_ZddPerm2Comb.exit
  %i.ci = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5) ; 0 uses
  %putchar.i60 = tail call i32 @putchar(i32 10)   ; 0 uses
  %putchar.i65108 = tail call i32 @putchar(i32 123) ; 0 uses
  br label %Abc_ZddPermPrint.exit73

.lr.ph:                                           ; preds = %.lr.ph.i61
  %putchar.i60104 = tail call i32 @putchar(i32 10) ; 0 uses
  %.val47 = load i32, ptr %i.r, align 4, !tbaa !41 ; 5 uses
  %.val48 = load ptr, ptr %i.s, align 8, !tbaa !44 ; 5 uses
  %5 = load i32, ptr %i.b, align 16, !tbaa !17    ; 2 uses
  %6 = ashr i32 %5, 16
  %7 = and i32 %5, 65535
  %8 = mul nsw i32 %6, %.val47
  %9 = add nsw i32 %8, %7
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %.val48, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !17
  store i32 %12, ptr %i.b, align 16, !tbaa !17
  %i.cj = icmp eq i32 %.1.i.4102, 1
  br i1 %i.cj, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %13 = load i32, ptr %1, align 4, !tbaa !17      ; 2 uses
  %14 = ashr i32 %13, 16
  %15 = and i32 %13, 65535
  %16 = mul nsw i32 %14, %.val47
  %17 = add nsw i32 %16, %15
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8], ptr %.val48, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !17
  store i32 %20, ptr %1, align 4, !tbaa !17
  %exitcond.not.1 = icmp eq i32 %.1.i.4102, 2
  br i1 %exitcond.not.1, label %._crit_edge, label %bb.a

bb.a:                                             ; preds = %.lr.ph.new
  %i.ck = load i32, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.cl = ashr i32 %i.ck, 16
  %i.cm = and i32 %i.ck, 65535
  %i.cn = mul nsw i32 %i.cl, %.val47
  %i.co = add nsw i32 %i.cn, %i.cm
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %.val48, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !17
  store i32 %i.cr, ptr %2, align 8, !tbaa !17
  %niter.ncmp.1 = icmp eq i32 %.1.i.4102, 3
  br i1 %niter.ncmp.1, label %._crit_edge, label %._crit_edge.unr-lcssa

._crit_edge.unr-lcssa:                            ; preds = %bb.a
  %21 = load i32, ptr %3, align 4, !tbaa !17      ; 2 uses
  %22 = ashr i32 %21, 16
  %23 = and i32 %21, 65535
  %24 = mul nsw i32 %22, %.val47
  %25 = add nsw i32 %24, %23
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i8], ptr %.val48, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !17
  store i32 %28, ptr %3, align 4, !tbaa !17
  %lcmp.mod.not = icmp eq i32 %.1.i.4102, 4
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa
  %i.cs = load i32, ptr %4, align 16, !tbaa !17   ; 2 uses
  %i.ct = ashr i32 %i.cs, 16
  %i.cu = and i32 %i.cs, 65535
  %i.cv = mul nsw i32 %i.ct, %.val47
  %i.cw = add nsw i32 %i.cv, %i.cu
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %.val48, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !17
  store i32 %i.cz, ptr %4, align 16, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.unr-lcssa, %bb.a, %.lr.ph.new, %.lr.ph
  %putchar.i65 = tail call i32 @putchar(i32 123)  ; 0 uses
  %wide.trip.count.i68 = zext nneg i32 %.1.i.4102 to i64
  br label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %.lr.ph.i69, %._crit_edge
  %indvars.iv.i70 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next.i71, %.lr.ph.i69 ] ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i70
  %i.db = load i32, ptr %i.da, align 4, !tbaa !17
  %i.dc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.db) ; 0 uses
  %indvars.iv.next.i71 = add nuw nsw i64 %indvars.iv.i70, 1 ; 2 uses
  %exitcond.not.i72 = icmp eq i64 %indvars.iv.next.i71, %wide.trip.count.i68
  br i1 %exitcond.not.i72, label %Abc_ZddPermPrint.exit73, label %.lr.ph.i69, !llvm.loop !4

Abc_ZddPermPrint.exit73:                          ; preds = %.lr.ph.i69, %._crit_edge.thread
  %.1.i.4101105109 = phi i32 [ 0, %._crit_edge.thread ], [ %.1.i.4102, %.lr.ph.i69 ]
  %puts.i66 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.dd = call i32 @Abc_ZddBuildSet(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef %.1.i.4101105109)
  %i.de = tail call i32 @Abc_ZddUnion(ptr noundef %0, i32 noundef %.080, i32 noundef %i.dd) ; 6 uses
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next88, 3
  br i1 %exitcond90.not, label %bb.b, label %.lr.ph.i50, !llvm.loop !96

bb.b:                                             ; preds = %Abc_ZddPermPrint.exit73
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %i.df = load i32, ptr %0, align 8, !tbaa !37
  %i.dg = sext i32 %i.df to i64
  %i.dh = tail call noalias ptr @calloc(i64 noundef %i.dg, i64 noundef 4) #22 ; 3 uses
  tail call void @Abc_ZddPrint_rec(ptr noundef nonnull readonly %0, i32 noundef %i.de, ptr noundef %i.dh, i32 noundef 0)
  %.not.i74 = icmp eq ptr %i.dh, null
  br i1 %.not.i74, label %Abc_ZddPrint.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.dh) #24
  br label %Abc_ZddPrint.exit

Abc_ZddPrint.exit:                                ; preds = %bb.b, %bb.c
  %i.di = tail call i32 @Abc_ZddCount_rec(ptr noundef nonnull readonly %0, i32 noundef %i.de)
  tail call void @Abc_ZddUnmark_rec(ptr noundef nonnull readonly %0, i32 noundef %i.de)
  %i.dj = tail call i32 @Abc_ZddCountPaths(ptr noundef nonnull %0, i32 noundef %i.de)
  %i.dk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.di, i32 noundef %i.dj) ; 0 uses
  %.val = load i32, ptr %i.r, align 4, !tbaa !41
  %.val46 = load ptr, ptr %i.s, align 8, !tbaa !44
  %i.dl = mul nsw i32 %.val, 3
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr [4 x i8], ptr %.val46, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 16
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !17
  %i.dq = tail call i32 @Abc_ZddPerm(ptr noundef nonnull %0, i32 noundef %i.de, i32 noundef %i.dp) ; 4 uses
  %puts45 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %i.dr = load i32, ptr %0, align 8, !tbaa !37
  %i.ds = sext i32 %i.dr to i64
  %i.dt = tail call noalias ptr @calloc(i64 noundef %i.ds, i64 noundef 4) #22 ; 3 uses
  tail call void @Abc_ZddPrint_rec(ptr noundef nonnull readonly %0, i32 noundef %i.dq, ptr noundef %i.dt, i32 noundef 0)
  %.not.i75 = icmp eq ptr %i.dt, null
  br i1 %.not.i75, label %Abc_ZddPrint.exit76, label %bb.d

bb.d:                                             ; preds = %Abc_ZddPrint.exit
  tail call void @free(ptr noundef nonnull %i.dt) #24
  br label %Abc_ZddPrint.exit76

Abc_ZddPrint.exit76:                              ; preds = %Abc_ZddPrint.exit, %bb.d
  %i.du = tail call i32 @Abc_ZddCount_rec(ptr noundef nonnull readonly %0, i32 noundef %i.dq)
  tail call void @Abc_ZddUnmark_rec(ptr noundef nonnull readonly %0, i32 noundef %i.dq)
  %i.dv = tail call i32 @Abc_ZddCountPaths(ptr noundef nonnull %0, i32 noundef %i.dq)
  %i.dw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.du, i32 noundef %i.dv) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_ZddPermTest() local_unnamed_addr #7 {
.loopexit.i.4:
  %i.a = tail call ptr @Abc_ZddManAlloc(i32 noundef 10, i32 noundef 1048576) ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 5, ptr %i.b, align 4, !tbaa !41
  %i.c = load i32, ptr %i.a, align 8, !tbaa !37
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 2                      ; 4 uses
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #23 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.f, i8 -1, i64 %i.e, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.f, ptr %i.g, align 8, !tbaa !42
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.e) #23 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.h, i8 -1, i64 %i.e, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.h, ptr %i.i, align 8, !tbaa !43
  %i.j = tail call noalias dereferenceable_or_null(100) ptr @malloc(i64 noundef 100) #23 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(100) %i.j, i8 -1, i64 100, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.j, ptr %i.k, align 8, !tbaa !44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !tbaa !17
  %gep.i = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store <4 x i32> <i32 1, i32 2, i32 3, i32 4>, ptr %i.h, align 4, !tbaa !17
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %gep.i, align 4, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %gep.i.1 = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  store i32 4, ptr %gep.i.1, align 4, !tbaa !17
  %gep.i.1.1 = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i32 5, ptr %gep.i.1.1, align 4, !tbaa !17
  %gep.i.1.2 = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  store i32 6, ptr %gep.i.1.2, align 4, !tbaa !17
  store <4 x i32> <i32 1, i32 1, i32 1, i32 2>, ptr %i.l, align 4, !tbaa !17
  store <4 x i32> <i32 2, i32 3, i32 4, i32 3>, ptr %i.m, align 4, !tbaa !17
  %gep.i.2 = getelementptr inbounds nuw i8, ptr %i.j, i64 52
  store i32 7, ptr %gep.i.2, align 4, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i32 2, ptr %i.n, align 4, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i32 4, ptr %i.o, align 4, !tbaa !17
  %gep.i.2.1 = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i32 8, ptr %gep.i.2.1, align 4, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  store i32 3, ptr %i.p, align 4, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store i32 4, ptr %i.q, align 4, !tbaa !17
  %gep.i.3 = getelementptr inbounds nuw i8, ptr %i.j, i64 76
  store i32 9, ptr %gep.i.3, align 4, !tbaa !17
  tail call void @Abc_ZddPermTestInt(ptr noundef nonnull %i.a)
  tail call void @Abc_ZddManFree(ptr noundef nonnull %i.a)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_EnumerateCubeStatesZdd() local_unnamed_addr #7 {
bb.a:
  %0 = alloca %struct.timespec, align 8           ; 5 uses
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca [9 x i32], align 16               ; 14 uses
  %i.b = alloca [24 x i32], align 16              ; 30 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.c = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #24
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %3, align 8, !tbaa !102
  %i.f = mul nsw i64 %i.e, 1000000
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !103
  %i.i = sdiv i64 %i.h, 1000
  %i.j = add nsw i64 %i.i, %i.f
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.j, %bb.b ], [ -1, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %i.k = call ptr @Abc_ZddManAlloc(i32 noundef 276, i32 noundef 134217728) ; 20 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  store i32 24, ptr %i.l, align 4, !tbaa !41
  %i.m = load i32, ptr %i.k, align 8, !tbaa !37
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 2                      ; 4 uses
  %i.p = call noalias ptr @malloc(i64 noundef %i.o) #23 ; 4 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.p, i8 -1, i64 %i.o, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store ptr %i.p, ptr %i.q, align 8, !tbaa !42
  %i.r = call noalias ptr @malloc(i64 noundef %i.o) #23 ; 4 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.r, i8 -1, i64 %i.o, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store ptr %i.r, ptr %i.s, align 8, !tbaa !43
  %i.t = call noalias dereferenceable_or_null(2304) ptr @malloc(i64 noundef 2304) #23 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(2304) %i.t, i8 -1, i64 2304, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 88 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !44
  br label %.lr.ph37.i

.loopexit.loopexit.i:                             ; preds = %scalar.ph, %middle.block
  %indvars.iv.next.i.lcssa = phi i64 [ %i.ab, %middle.block ], [ %indvars.iv.next.i, %scalar.ph ]
  %i.v = trunc nsw i64 %indvars.iv.next.i.lcssa to i32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph37.i, %.loopexit.loopexit.i
  %.1.lcssa.i = phi i32 [ %.036.i, %.lr.ph37.i ], [ %i.v, %.loopexit.loopexit.i ]
  %indvars.iv.next39.i = add nuw nsw i64 %indvars.iv38.i, 1
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next, 24
  br i1 %exitcond45.not.i, label %Abc_ZddManCreatePerms.exit, label %.lr.ph37.i, !llvm.loop !1

.lr.ph37.i:                                       ; preds = %.loopexit.i, %Abc_Clock.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit.i ], [ 0, %Abc_Clock.exit ] ; 5 uses
  %indvars.iv38.i = phi i64 [ %indvars.iv.next39.i, %.loopexit.i ], [ 1, %Abc_Clock.exit ] ; 5 uses
  %.036.i = phi i32 [ %.1.lcssa.i, %.loopexit.i ], [ 0, %Abc_Clock.exit ] ; 3 uses
  %i.w = sub nsw i64 23, %indvars.iv              ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = icmp samesign ult i64 %indvars.iv, 23
  br i1 %i.x, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.lr.ph37.i
  %i.y = sext i32 %.036.i to i64                  ; 3 uses
  %invariant.gep.i.idx = mul nuw nsw i64 %indvars.iv, 96
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %i.t, i64 %invariant.gep.i.idx ; 2 uses
  %i.z = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.w, -8                       ; 4 uses
  %i.aa = add i64 %indvars.iv38.i, %n.vec
  %i.ab = add i64 %n.vec, %i.y                    ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ac = trunc i64 %indvars.iv38.i to i32
  %broadcast.splatinsert108 = insertelement <4 x i32> poison, i32 %i.ac, i64 0
  %broadcast.splat109 = shufflevector <4 x i32> %broadcast.splatinsert108, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat109, <i32 0, i32 1, i32 2, i32 3>
  %broadcast.splatinsert110 = insertelement <4 x i32> poison, i32 %.036.i, i64 0
  %broadcast.splat111 = shufflevector <4 x i32> %broadcast.splatinsert110, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction112 = add <4 x i32> %broadcast.splat111, <i32 0, i32 1, i32 2, i32 3>
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv38.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.ind113 = phi <4 x i32> [ %induction112, %vector.ph ], [ %vec.ind.next115, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %step.add114 = add <4 x i32> %vec.ind113, splat (i32 4)
  %i.ae = add i64 %index, %i.y                    ; 2 uses
  %i.af = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.af, align 4, !tbaa !17
  store <4 x i32> %broadcast.splat, ptr %i.ag, align 4, !tbaa !17
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ae ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store <4 x i32> %vec.ind, ptr %i.ah, align 4, !tbaa !17
  store <4 x i32> %step.add, ptr %i.ai, align 4, !tbaa !17
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <4 x i32> %vec.ind113, ptr %i.aj, align 4, !tbaa !17
  store <4 x i32> %step.add114, ptr %i.ak, align 4, !tbaa !17
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %vec.ind.next115 = add <4 x i32> %vec.ind113, splat (i32 8)
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv40.i.ph = phi i64 [ %indvars.iv38.i, %.lr.ph.i ], [ %i.aa, %middle.block ]
  %indvars.iv.i.ph = phi i64 [ %i.y, %.lr.ph.i ], [ %i.ab, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %scalar.ph ], [ %indvars.iv40.i.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.i
  store i32 %i.z, ptr %i.am, align 4, !tbaa !17
  %i.an = getelementptr inbounds [4 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.ao = trunc nuw nsw i64 %indvars.iv40.i to i32
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !17
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv40.i
  %i.ap = trunc nsw i64 %indvars.iv.i to i32
  store i32 %i.ap, ptr %gep.i, align 4, !tbaa !17
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next41.i, 24
  br i1 %exitcond.not.i, label %.loopexit.loopexit.i, label %scalar.ph, !llvm.loop !98

Abc_ZddManCreatePerms.exit:                       ; preds = %.loopexit.i
  %i.aq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 2) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.ar = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #24
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %Abc_Clock.exit72, label %bb.c

bb.c:                                             ; preds = %Abc_ZddManCreatePerms.exit
  %i.at = load i64, ptr %2, align 8, !tbaa !102
  %i.au = mul nsw i64 %i.at, 1000000
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !103
  %i.ax = sdiv i64 %i.aw, 1000
  %i.ay = add nsw i64 %i.ax, %i.au
  br label %Abc_Clock.exit72

Abc_Clock.exit72:                                 ; preds = %Abc_ZddManCreatePerms.exit, %bb.c
  %.0.i71 = phi i64 [ %i.ay, %bb.c ], [ -1, %Abc_ZddManCreatePerms.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.az = sub nsw i64 %.0.i71, %.0.i
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15)
  %i.ba = sitofp i64 %i.az to double
  %i.bb = fdiv double %i.ba, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.18, double noundef %i.bb)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  br label %.preheader81

.preheader81:                                     ; preds = %Abc_Clock.exit72, %Abc_ZddPerm2Comb.exit.preheader
  %indvars.iv99 = phi i64 [ 0, %Abc_Clock.exit72 ], [ %indvars.iv.next100, %Abc_ZddPerm2Comb.exit.preheader ] ; 2 uses
  %.06686 = phi i32 [ 1, %Abc_Clock.exit72 ], [ %i.ji, %Abc_ZddPerm2Comb.exit.preheader ]
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.b, align 16, !tbaa !17
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %i.bc, align 16, !tbaa !17
  store <4 x i32> <i32 8, i32 9, i32 10, i32 11>, ptr %i.bd, align 16, !tbaa !17
  store <4 x i32> <i32 12, i32 13, i32 14, i32 15>, ptr %i.be, align 16, !tbaa !17
  store <4 x i32> <i32 16, i32 17, i32 18, i32 19>, ptr %i.bf, align 16, !tbaa !17
  store <4 x i32> <i32 20, i32 21, i32 22, i32 23>, ptr %i.bg, align 16, !tbaa !17
  %i.bp = getelementptr inbounds nuw [72 x i8], ptr @__const.Abc_EnumerateCubeStatesZdd.pXYZ, i64 %indvars.iv99 ; 18 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !17
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr [4 x i8], ptr %i.b, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4     ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !17
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr [4 x i8], ptr %i.b, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.by, i64 -4     ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !17
  store i32 %i.ca, ptr %i.bt, align 4, !tbaa !17
  store i32 %i.bu, ptr %i.bz, align 4, !tbaa !17
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !17
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr [4 x i8], ptr %i.b, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 -4     ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !17
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !17
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr [4 x i8], ptr %i.b, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 -4     ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !17
  store i32 %i.cm, ptr %i.cf, align 4, !tbaa !17
  store i32 %i.cg, ptr %i.cl, align 4, !tbaa !17
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !17
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr [4 x i8], ptr %i.b, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 -4     ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !17
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bp, i64 20
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !17
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr [4 x i8], ptr %i.b, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 -4     ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !17
  store i32 %i.cy, ptr %i.cr, align 4, !tbaa !17
  store i32 %i.cs, ptr %i.cx, align 4, !tbaa !17
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !17
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr [4 x i8], ptr %i.b, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 -4     ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !17
  %i.df = getelementptr inbounds nuw i8, ptr %i.bp, i64 28
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !17
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr [4 x i8], ptr %i.b, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.di, i64 -4     ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !17
  store i32 %i.dk, ptr %i.dd, align 4, !tbaa !17
  store i32 %i.de, ptr %i.dj, align 4, !tbaa !17
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !17
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr [4 x i8], ptr %i.b, i64 %i.dn
  %i.dp = getelementptr i8, ptr %i.do, i64 -4     ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !17
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bp, i64 36
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !17
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr [4 x i8], ptr %i.b, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.du, i64 -4     ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !17
  store i32 %i.dw, ptr %i.dp, align 4, !tbaa !17
  store i32 %i.dq, ptr %i.dv, align 4, !tbaa !17
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !17
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr [4 x i8], ptr %i.b, i64 %i.dz
  %i.eb = getelementptr i8, ptr %i.ea, i64 -4     ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !17
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bp, i64 44
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !17
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr [4 x i8], ptr %i.b, i64 %i.ef
  %i.eh = getelementptr i8, ptr %i.eg, i64 -4     ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !17
  store i32 %i.ei, ptr %i.eb, align 4, !tbaa !17
  store i32 %i.ec, ptr %i.eh, align 4, !tbaa !17
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !17
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr [4 x i8], ptr %i.b, i64 %i.el
  %i.en = getelementptr i8, ptr %i.em, i64 -4     ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !17
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bp, i64 52
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !17
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr [4 x i8], ptr %i.b, i64 %i.er
  %i.et = getelementptr i8, ptr %i.es, i64 -4     ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !17
  store i32 %i.eu, ptr %i.en, align 4, !tbaa !17
  store i32 %i.eo, ptr %i.et, align 4, !tbaa !17
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !17
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr [4 x i8], ptr %i.b, i64 %i.ex
  %i.ez = getelementptr i8, ptr %i.ey, i64 -4     ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !17
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bp, i64 60
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !17
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr [4 x i8], ptr %i.b, i64 %i.fd
  %i.ff = getelementptr i8, ptr %i.fe, i64 -4     ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !17
  store i32 %i.fg, ptr %i.ez, align 4, !tbaa !17
  store i32 %i.fa, ptr %i.ff, align 4, !tbaa !17
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !17
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr [4 x i8], ptr %i.b, i64 %i.fj
  %i.fl = getelementptr i8, ptr %i.fk, i64 -4     ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !17
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bp, i64 68
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !17
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr [4 x i8], ptr %i.b, i64 %i.fp
  %i.fr = getelementptr i8, ptr %i.fq, i64 -4     ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !17
  store i32 %i.fs, ptr %i.fl, align 4, !tbaa !17
  store i32 %i.fm, ptr %i.fr, align 4, !tbaa !17
  br label %.lr.ph.i73

.lr.ph.i73:                                       ; preds = %.preheader81, %bb.d
  %indvars.iv.i74 = phi i64 [ %indvars.iv.next.i76, %bb.d ], [ 0, %.preheader81 ] ; 7 uses
  %.02629.i = phi i32 [ %.1.i, %bb.d ], [ 0, %.preheader81 ] ; 3 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i74 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !17 ; 2 uses
  %i.fv = zext i32 %i.fu to i64
  %.not.i = icmp eq i64 %indvars.iv.i74, %i.fv
  br i1 %.not.i, label %bb.d, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.lr.ph.i73
  %exitcond.not.i75106 = icmp eq i64 %indvars.iv.i74, 23
  br i1 %exitcond.not.i75106, label %split.i.loopexit, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  %exitcond.not.i75 = icmp eq i64 %indvars.iv.next32.i, 23
  br i1 %exitcond.not.i75, label %split.i.loopexit, label %.lr.ph, !llvm.loop !6

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv31.i107 = phi i64 [ %indvars.iv.next32.i, %.preheader.i ], [ %indvars.iv.i74, %.preheader.i.preheader ]
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i107, 1 ; 5 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next32.i
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !17 ; 2 uses
  %i.fy = zext i32 %i.fx to i64
  %i.fz = icmp eq i64 %indvars.iv.i74, %i.fy
  br i1 %i.fz, label %._crit_edge37.i, label %.preheader.i, !llvm.loop !6

._crit_edge37.i:                                  ; preds = %.lr.ph
  %i.ga = trunc nuw nsw i64 %indvars.iv.next32.i to i32
  br label %split.i, !llvm.loop !6

split.i.loopexit:                                 ; preds = %.preheader.i, %.preheader.i.preheader
  %.pre = load i32, ptr %.phi.trans.insert, align 16, !tbaa !17
  br label %split.i

split.i:                                          ; preds = %split.i.loopexit, %._crit_edge37.i
  %i.gb = phi i32 [ %i.fx, %._crit_edge37.i ], [ %.pre, %split.i.loopexit ]
  %.pre-phi.i = phi i64 [ %indvars.iv.next32.i, %._crit_edge37.i ], [ 24, %split.i.loopexit ]
  %.027.lcssa.i = phi i32 [ %i.ga, %._crit_edge37.i ], [ 24, %split.i.loopexit ]
  %i.gc = trunc nuw nsw i64 %indvars.iv.i74 to i32
  %i.gd = shl nuw nsw i32 %i.gc, 16
  %i.ge = or i32 %.027.lcssa.i, %i.gd
  %i.gf = add nsw i32 %.02629.i, 1
  %i.gg = sext i32 %.02629.i to i64
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.gg
  store i32 %i.ge, ptr %i.gh, align 4, !tbaa !17
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.pre-phi.i
  store i32 %i.gb, ptr %i.ft, align 4, !tbaa !17
  store i32 %i.fu, ptr %i.gi, align 4, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %split.i, %.lr.ph.i73
  %.1.i = phi i32 [ %i.gf, %split.i ], [ %.02629.i, %.lr.ph.i73 ]
  %indvars.iv.next.i76 = add nuw nsw i64 %indvars.iv.i74, 1 ; 2 uses
  %exitcond36.not.i = icmp eq i64 %indvars.iv.next.i76, 24
  br i1 %exitcond36.not.i, label %Abc_ZddPerm2Comb.exit.preheader, label %.lr.ph.i73, !llvm.loop !7

Abc_ZddPerm2Comb.exit.preheader:                  ; preds = %bb.d
  %.val = load i32, ptr %i.l, align 4, !tbaa !41  ; 9 uses
  %.val70 = load ptr, ptr %i.u, align 8, !tbaa !44 ; 9 uses
  %i.gj = load i32, ptr %i.a, align 16, !tbaa !17 ; 2 uses
  %i.gk = ashr i32 %i.gj, 16
  %i.gl = and i32 %i.gj, 65535
  %i.gm = mul nsw i32 %i.gk, %.val
  %i.gn = add nsw i32 %i.gm, %i.gl
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds [4 x i8], ptr %.val70, i64 %i.go
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !17
  store i32 %i.gq, ptr %i.a, align 16, !tbaa !17
  %i.gr = load i32, ptr %i.bh, align 4, !tbaa !17 ; 2 uses
  %i.gs = ashr i32 %i.gr, 16
  %i.gt = and i32 %i.gr, 65535
  %i.gu = mul nsw i32 %i.gs, %.val
  %i.gv = add nsw i32 %i.gu, %i.gt
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [4 x i8], ptr %.val70, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !17
  store i32 %i.gy, ptr %i.bh, align 4, !tbaa !17
  %i.gz = load i32, ptr %i.bi, align 8, !tbaa !17 ; 2 uses
  %i.ha = ashr i32 %i.gz, 16
  %i.hb = and i32 %i.gz, 65535
  %i.hc = mul nsw i32 %i.ha, %.val
  %i.hd = add nsw i32 %i.hc, %i.hb
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds [4 x i8], ptr %.val70, i64 %i.he
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !17
  store i32 %i.hg, ptr %i.bi, align 8, !tbaa !17
  %i.hh = load i32, ptr %i.bj, align 4, !tbaa !17 ; 2 uses
  %i.hi = ashr i32 %i.hh, 16
  %i.hj = and i32 %i.hh, 65535
  %i.hk = mul nsw i32 %i.hi, %.val
  %i.hl = add nsw i32 %i.hk, %i.hj
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %.val70, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !17
  store i32 %i.ho, ptr %i.bj, align 4, !tbaa !17
  %i.hp = load i32, ptr %i.bk, align 16, !tbaa !17 ; 2 uses
  %i.hq = ashr i32 %i.hp, 16
  %i.hr = and i32 %i.hp, 65535
  %i.hs = mul nsw i32 %i.hq, %.val
  %i.ht = add nsw i32 %i.hs, %i.hr
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds [4 x i8], ptr %.val70, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !17
  store i32 %i.hw, ptr %i.bk, align 16, !tbaa !17
  %i.hx = load i32, ptr %i.bl, align 4, !tbaa !17 ; 2 uses
  %i.hy = ashr i32 %i.hx, 16
  %i.hz = and i32 %i.hx, 65535
  %i.ia = mul nsw i32 %i.hy, %.val
  %i.ib = add nsw i32 %i.ia, %i.hz
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds [4 x i8], ptr %.val70, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !17
  store i32 %i.ie, ptr %i.bl, align 4, !tbaa !17
  %i.if = load i32, ptr %i.bm, align 8, !tbaa !17 ; 2 uses
  %i.ig = ashr i32 %i.if, 16
  %i.ih = and i32 %i.if, 65535
  %i.ii = mul nsw i32 %i.ig, %.val
  %i.ij = add nsw i32 %i.ii, %i.ih
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [4 x i8], ptr %.val70, i64 %i.ik
  %i.im = load i32, ptr %i.il, align 4, !tbaa !17
  store i32 %i.im, ptr %i.bm, align 8, !tbaa !17
  %i.in = load i32, ptr %i.bn, align 4, !tbaa !17 ; 2 uses
  %i.io = ashr i32 %i.in, 16
  %i.ip = and i32 %i.in, 65535
  %i.iq = mul nsw i32 %i.io, %.val
  %i.ir = add nsw i32 %i.iq, %i.ip
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds [4 x i8], ptr %.val70, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !17
  store i32 %i.iu, ptr %i.bn, align 4, !tbaa !17
  %i.iv = load i32, ptr %i.bo, align 16, !tbaa !17 ; 2 uses
  %i.iw = ashr i32 %i.iv, 16
  %i.ix = and i32 %i.iv, 65535
  %i.iy = mul nsw i32 %i.iw, %.val
  %i.iz = add nsw i32 %i.iy, %i.ix
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr inbounds [4 x i8], ptr %.val70, i64 %i.ja
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !17
  store i32 %i.jc, ptr %i.bo, align 16, !tbaa !17
  %i.jd = call i32 @Abc_ZddBuildSet(ptr noundef nonnull %i.k, ptr noundef nonnull %i.a, i32 noundef 9) ; 4 uses
  %i.je = call i32 @Abc_ZddUnion(ptr noundef nonnull %i.k, i32 noundef %.06686, i32 noundef %i.jd)
  %i.jf = call i32 @Abc_ZddPermProduct(ptr noundef nonnull %i.k, i32 noundef %i.jd, i32 noundef %i.jd) ; 2 uses
  %i.jg = call i32 @Abc_ZddUnion(ptr noundef nonnull %i.k, i32 noundef %i.je, i32 noundef %i.jf)
  %i.jh = call i32 @Abc_ZddPermProduct(ptr noundef nonnull %i.k, i32 noundef %i.jf, i32 noundef %i.jd)
  %i.ji = call i32 @Abc_ZddUnion(ptr noundef nonnull %i.k, i32 noundef %i.jg, i32 noundef %i.jh) ; 6 uses
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next100, 3
  br i1 %exitcond.not, label %bb.e, label %.preheader81, !llvm.loop !99

bb.e:                                             ; preds = %Abc_ZddPerm2Comb.exit.preheader
  %i.jj = call i32 @Abc_ZddCountPaths(ptr noundef nonnull %i.k, i32 noundef %i.ji)
  %i.jk = call i32 @Abc_ZddCount_rec(ptr noundef nonnull readonly %i.k, i32 noundef %i.ji)
  call void @Abc_ZddUnmark_rec(ptr noundef nonnull readonly %i.k, i32 noundef %i.ji)
  %i.jl = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !33
  %i.jn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef 1, i32 noundef %i.jj, i32 noundef %i.jk, i32 noundef %i.jm) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.jo = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #24
  %i.jp = icmp slt i32 %i.jo, 0
  br i1 %i.jp, label %Abc_Clock.exit78, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.jq = load i64, ptr %1, align 8, !tbaa !102
  %i.jr = mul nsw i64 %i.jq, 1000000
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !103
  %i.ju = sdiv i64 %i.jt, 1000
  %i.jv = add nsw i64 %i.ju, %i.jr
  br label %Abc_Clock.exit78

Abc_Clock.exit78:                                 ; preds = %bb.e, %bb.f
  %.0.i77 = phi i64 [ %i.jv, %bb.f ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %i.jw = sub nsw i64 %.0.i77, %.0.i
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15)
  %i.jx = sitofp i64 %i.jw to double
  %i.jy = fdiv double %i.jx, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.18, double noundef %i.jy)
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.g

bb.g:                                             ; preds = %Abc_Clock.exit80, %Abc_Clock.exit78
  %.06588 = phi i32 [ %i.ji, %Abc_Clock.exit78 ], [ %i.ka, %Abc_Clock.exit80 ] ; 2 uses
  %.16987 = phi i32 [ 2, %Abc_Clock.exit78 ], [ %i.kq, %Abc_Clock.exit80 ] ; 2 uses
  %i.ka = call i32 @Abc_ZddPermProduct(ptr noundef nonnull %i.k, i32 noundef %.06588, i32 noundef %i.ji) ; 5 uses
  %i.kb = call i32 @Abc_ZddCountPaths(ptr noundef nonnull %i.k, i32 noundef %i.ka)
  %i.kc = call i32 @Abc_ZddCount_rec(ptr noundef nonnull readonly %i.k, i32 noundef %i.ka)
  call void @Abc_ZddUnmark_rec(ptr noundef nonnull readonly %i.k, i32 noundef %i.ka)
  %i.kd = load i32, ptr %i.jl, align 4, !tbaa !33
  %i.ke = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %.16987, i32 noundef %i.kb, i32 noundef %i.kc, i32 noundef %i.kd) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #24
  %i.kf = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %0) #24
  %i.kg = icmp slt i32 %i.kf, 0
  br i1 %i.kg, label %Abc_Clock.exit80, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.kh = load i64, ptr %0, align 8, !tbaa !102
  %i.ki = mul nsw i64 %i.kh, 1000000
  %i.kj = load i64, ptr %i.jz, align 8, !tbaa !103
  %i.kk = sdiv i64 %i.kj, 1000
  %i.kl = add nsw i64 %i.kk, %i.ki
  br label %Abc_Clock.exit80

Abc_Clock.exit80:                                 ; preds = %bb.g, %bb.h
  %.0.i79 = phi i64 [ %i.kl, %bb.h ], [ -1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #24
  %i.km = sub nsw i64 %.0.i79, %.0.i
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15)
  %i.kn = sitofp i64 %i.km to double
  %i.ko = fdiv double %i.kn, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.18, double noundef %i.ko)
  %i.kp = icmp eq i32 %.06588, %i.ka
  %i.kq = add nuw nsw i32 %.16987, 1              ; 2 uses
  %exitcond102.not = icmp eq i32 %i.kq, 101
  %or.cond = select i1 %i.kp, i1 true, i1 %exitcond102.not
  br i1 %or.cond, label %bb.i, label %bb.g, !llvm.loop !100

bb.i:                                             ; preds = %Abc_Clock.exit80
  call void @Abc_ZddManFree(ptr noundef nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #15 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !17
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #24 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #24
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #24 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !36
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #26
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #24 ; 0 uses
  call void @free(ptr noundef %i.d) #24
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !36, !noalias !107
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #24, !inline_history !106 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #12

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #16

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #16

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nounwind allocsize(0,1) }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind }
attributes #25 = { nounwind allocsize(1) }
attributes #26 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{!0, !19}
!1 = distinct !{!1, !19}
!2 = distinct !{!2, !19}
!3 = distinct !{!3, !19}
!4 = distinct !{!4, !19}
!5 = distinct !{!5, !19}
!6 = distinct !{!6, !19}
!7 = distinct !{!7, !19}
!8 = distinct !{!8, !19}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!"__libc_errno", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!14, !14, i64 0}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"any pointer", !13, i64 0}
!21 = !{!"p1 int", !20, i64 0}
!22 = !{!"p1 _ZTS11Abc_ZddEnt_", !20, i64 0}
!23 = !{!"p1 _ZTS11Abc_ZddObj_", !20, i64 0}
!24 = !{!"long", !13, i64 0}
!25 = !{!"Abc_ZddMan_", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !21, i64 24, !21, i64 32, !22, i64 40, !23, i64 48, !14, i64 56, !14, i64 60, !24, i64 64, !21, i64 72, !21, i64 80, !21, i64 88}
!26 = !{!25, !21, i64 24}
!27 = !{!25, !14, i64 16}
!28 = !{!25, !23, i64 48}
!29 = !{!"Abc_ZddObj_", !14, i64 0, !14, i64 3, !14, i64 4, !14, i64 8}
!30 = !{!29, !14, i64 4}
!31 = !{!29, !14, i64 8}
!32 = !{!25, !21, i64 32}
!33 = !{!25, !14, i64 4}
!34 = !{!25, !14, i64 8}
!35 = !{!"p1 _ZTS8_IO_FILE", !20, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!25, !14, i64 0}
!38 = !{!25, !14, i64 20}
!39 = !{!25, !22, i64 40}
!40 = !{!25, !24, i64 64}
!41 = !{!25, !14, i64 12}
!42 = !{!25, !21, i64 72}
!43 = !{!25, !21, i64 80}
!44 = !{!25, !21, i64 88}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = !{!25, !14, i64 56}
!48 = !{!25, !14, i64 60}
!49 = !{!"Abc_ZddEnt_", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12}
!50 = !{!49, !14, i64 0}
!51 = !{!49, !14, i64 4}
!52 = !{!49, !14, i64 8}
!53 = !{!49, !14, i64 12}
!54 = !{!"Vec_Int_t_", !14, i64 0, !14, i64 4, !21, i64 8}
!55 = !{!54, !14, i64 4}
!56 = !{!54, !21, i64 8}
!57 = distinct !{!57, !18}
!58 = distinct !{!58, !19}
!59 = distinct !{!59, !19}
!60 = distinct !{!60, !19}
!61 = distinct !{!61, !19}
!62 = distinct !{!62, !19, !45, !46}
!63 = distinct !{!63, !19, !46, !45}
!64 = distinct !{!64, !19, !45, !46}
!65 = distinct !{!65, !19, !46, !45}
!66 = distinct !{!66, !19}
!67 = distinct !{!67, !19, !45, !46}
!68 = distinct !{!68, !19, !46, !45}
!69 = distinct !{!69, !19}
!70 = distinct !{!70, !18}
!71 = distinct !{!71, !19}
!72 = distinct !{!72, !19}
!73 = !{!"p1 omnipotent char", !20, i64 0}
!74 = !{!"p1 _ZTS10Gia_Obj_t_", !20, i64 0}
!75 = !{!"p1 _ZTS10Vec_Int_t_", !20, i64 0}
!76 = !{!"p1 _ZTS10Gia_Rpr_t_", !20, i64 0}
!77 = !{!"p1 _ZTS10Vec_Wec_t_", !20, i64 0}
!78 = !{!"p1 _ZTS10Vec_Str_t_", !20, i64 0}
!79 = !{!"p1 _ZTS10Abc_Cex_t_", !20, i64 0}
!80 = !{!"p1 _ZTS10Vec_Ptr_t_", !20, i64 0}
!81 = !{!"p1 _ZTS10Gia_Plc_t_", !20, i64 0}
!82 = !{!"p1 _ZTS10Gia_Man_t_", !20, i64 0}
!83 = !{!"p1 _ZTS10Vec_Flt_t_", !20, i64 0}
!84 = !{!"float", !13, i64 0}
!85 = !{!"p1 _ZTS10Vec_Vec_t_", !20, i64 0}
!86 = !{!"p1 _ZTS10Vec_Wrd_t_", !20, i64 0}
!87 = !{!"p1 _ZTS10Vec_Bit_t_", !20, i64 0}
!88 = !{!"p1 _ZTS10Gia_Dat_t_", !20, i64 0}
!89 = !{!"Gia_Man_t_", !73, i64 0, !73, i64 8, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !74, i64 32, !21, i64 40, !14, i64 48, !14, i64 52, !14, i64 56, !75, i64 64, !75, i64 72, !54, i64 80, !54, i64 96, !14, i64 112, !14, i64 116, !14, i64 120, !54, i64 128, !21, i64 144, !21, i64 152, !75, i64 160, !14, i64 168, !14, i64 172, !14, i64 176, !14, i64 180, !21, i64 184, !76, i64 192, !21, i64 200, !21, i64 208, !21, i64 216, !14, i64 224, !14, i64 228, !21, i64 232, !14, i64 240, !75, i64 248, !75, i64 256, !75, i64 264, !77, i64 272, !77, i64 280, !75, i64 288, !20, i64 296, !75, i64 304, !75, i64 312, !78, i64 320, !73, i64 328, !75, i64 336, !75, i64 344, !75, i64 352, !75, i64 360, !75, i64 368, !79, i64 376, !79, i64 384, !80, i64 392, !54, i64 400, !54, i64 416, !75, i64 432, !75, i64 440, !75, i64 448, !75, i64 456, !75, i64 464, !75, i64 472, !75, i64 480, !75, i64 488, !75, i64 496, !75, i64 504, !75, i64 512, !73, i64 520, !81, i64 528, !82, i64 536, !83, i64 544, !83, i64 552, !75, i64 560, !75, i64 568, !75, i64 576, !75, i64 584, !75, i64 592, !14, i64 600, !84, i64 604, !84, i64 608, !75, i64 616, !21, i64 624, !14, i64 632, !80, i64 640, !80, i64 648, !80, i64 656, !75, i64 664, !75, i64 672, !75, i64 680, !75, i64 688, !75, i64 696, !75, i64 704, !75, i64 712, !75, i64 720, !75, i64 728, !85, i64 736, !83, i64 744, !20, i64 752, !20, i64 760, !20, i64 768, !24, i64 776, !24, i64 784, !20, i64 792, !21, i64 800, !14, i64 808, !14, i64 812, !14, i64 816, !14, i64 820, !14, i64 824, !14, i64 828, !14, i64 832, !14, i64 836, !14, i64 840, !14, i64 844, !14, i64 848, !14, i64 852, !86, i64 856, !86, i64 864, !86, i64 872, !86, i64 880, !75, i64 888, !75, i64 896, !75, i64 904, !87, i64 912, !14, i64 920, !14, i64 924, !14, i64 928, !75, i64 936, !14, i64 944, !14, i64 948, !75, i64 952, !75, i64 960, !80, i64 968, !86, i64 976, !75, i64 984, !75, i64 992, !14, i64 1000, !14, i64 1004, !86, i64 1008, !54, i64 1016, !54, i64 1032, !54, i64 1048, !88, i64 1064, !78, i64 1072, !78, i64 1080, !14, i64 1088, !14, i64 1092, !14, i64 1096, !14, i64 1100, !78, i64 1104, !75, i64 1112, !75, i64 1120, !75, i64 1128, !80, i64 1136}
!90 = !{!89, !14, i64 24}
!91 = !{!89, !75, i64 64}
!92 = !{!89, !74, i64 32}
!93 = !{!"Gia_Obj_t_", !14, i64 0, !14, i64 3, !14, i64 3, !14, i64 3, !14, i64 4, !14, i64 7, !14, i64 7, !14, i64 7, !14, i64 8}
!94 = !{!93, !14, i64 8}
!95 = !{!89, !75, i64 72}
!96 = distinct !{!96, !19}
!97 = distinct !{!97, !19, !45, !46}
!98 = distinct !{!98, !19, !46, !45}
!99 = distinct !{!99, !19}
!100 = distinct !{!100, !19}
!101 = !{!"timespec", !24, i64 0, !24, i64 8}
!102 = !{!101, !24, i64 0}
!103 = !{!101, !24, i64 8}
!104 = distinct !{!104, i1 false, !"vprintf"}
!105 = distinct !{!105, !104, !"vprintf: argument 0"}
!106 = distinct !{null}
!107 = !{!105}
end_hunk_0
