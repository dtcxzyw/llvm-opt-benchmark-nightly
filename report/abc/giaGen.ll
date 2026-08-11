inline.NumInlined: 491
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 39
begin_hunk_0_@Gia_ManGenCompact:bb.a
bb.z:                                             ; preds = %bb.y
  %i.bu = call ptr @realloc(ptr noundef nonnull %.pre42, i64 noundef %i.bt) #24
  br label %Vec_IntGrow.exit11.sink.split.i30

bb.aa:                                            ; preds = %bb.y
  %i.bv = call noalias ptr @malloc(i64 noundef %i.bt) #25
  br label %Vec_IntGrow.exit11.sink.split.i30

Vec_IntGrow.exit11.sink.split.i30:                ; preds = %bb.z, %bb.aa, %bb.v, %bb.w
  %storemerge = phi ptr [ %i.bp, %bb.w ], [ %i.bo, %bb.v ], [ %i.bu, %bb.z ], [ %i.bv, %bb.aa ] ; 2 uses
  %spec.select.sink.i31 = phi i32 [ 16, %bb.w ], [ 16, %bb.v ], [ %spec.select.i27, %bb.z ], [ %spec.select.i27, %bb.aa ]
  store ptr %storemerge, ptr %i.w, align 8, !tbaa !45
  store i32 %spec.select.sink.i31, ptr %5, align 8, !tbaa !44
  %.pre43 = load i32, ptr %i.c, align 4, !tbaa !42
  br label %Vec_IntPush.exit34

Vec_IntPush.exit34:                               ; preds = %Vec_IntPush.exit26.Vec_IntPush.exit34_crit_edge, %bb.x, %Vec_IntGrow.exit11.sink.split.i30
  %i.bw = phi i32 [ %i.bj, %Vec_IntPush.exit26.Vec_IntPush.exit34_crit_edge ], [ %i.bj, %bb.x ], [ %.pre43, %Vec_IntGrow.exit11.sink.split.i30 ] ; 2 uses
  %i.bx = phi ptr [ %.pre41, %Vec_IntPush.exit26.Vec_IntPush.exit34_crit_edge ], [ %.pre42, %bb.x ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i30 ]
  %i.by = add nsw i32 %i.bw, 1
  store i32 %i.by, ptr %i.c, align 4, !tbaa !42
  %i.bz = sext i32 %i.bw to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.bz
  store i32 %i.bi, ptr %i.ca, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load i32, ptr %i.ab, align 4, !tbaa !42
  %i.cb = sext i32 %.val to i64
  %i.cc = icmp slt i64 %indvars.iv.next, %i.cb
  br i1 %i.cc, label %bb.k, label %.critedge, !llvm.loop !174

.critedge:                                        ; preds = %Vec_IntPush.exit34, %Vec_IntPush.exit
  %i.cd = load i32, ptr %i.c, align 4, !tbaa !42
  %i.ce = add nsw i32 %i.cd, -1
  store i32 %i.ce, ptr %i.c, align 4, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Gia_ManGenNeuronCreateArgs(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4          ; 3 uses
  %.val45 = load i32, ptr %i.a, align 4, !tbaa !51 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val46 = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.c = sext i32 %.val45 to i64
  %i.d = getelementptr [8 x i8], ptr %.val46, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18   ; 3 uses
  %i.g = mul nsw i32 %.val45, %1                  ; 2 uses
  %i.h = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 7 uses
  %i.i = add i32 %i.g, -1
  %or.cond.i = icmp ult i32 %i.i, 7
  %spec.store.select.i = select i1 %or.cond.i, i32 8, i32 %i.g ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  store i32 %spec.store.select.i, ptr %i.h, align 8, !tbaa !175
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_WecGrow.exit.i, label %.Vec_WecGrow.exit12_crit_edge.i

.Vec_WecGrow.exit12_crit_edge.i:                  ; preds = %bb.a
  %i.k = sext i32 %spec.store.select.i to i64
  %i.l = tail call noalias ptr @calloc(i64 noundef %i.k, i64 noundef 16) #26 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !177
  br label %Vec_WecPushLevel.exit

Vec_WecGrow.exit.i:                               ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %calloc = tail call dereferenceable_or_null(256) ptr @calloc(i64 1, i64 256) ; 2 uses
  store ptr %calloc, ptr %i.n, align 8, !tbaa !177
  store i32 16, ptr %i.h, align 8, !tbaa !175
  br label %Vec_WecPushLevel.exit

Vec_WecPushLevel.exit:                            ; preds = %.Vec_WecGrow.exit12_crit_edge.i, %Vec_WecGrow.exit.i
  %.promoted73102 = phi i32 [ %spec.store.select.i, %.Vec_WecGrow.exit12_crit_edge.i ], [ 16, %Vec_WecGrow.exit.i ]
  %i.o = phi ptr [ %i.m, %.Vec_WecGrow.exit12_crit_edge.i ], [ %i.n, %Vec_WecGrow.exit.i ] ; 2 uses
  %.val8.i = phi ptr [ %i.l, %.Vec_WecGrow.exit12_crit_edge.i ], [ %calloc, %Vec_WecGrow.exit.i ] ; 6 uses
  store i32 1, ptr %i.j, align 4, !tbaa !178
  %.not.i.i = icmp sgt i32 %2, 0                  ; 2 uses
  br i1 %.not.i.i, label %bb.b, label %Vec_IntFill.exit

bb.b:                                             ; preds = %Vec_WecPushLevel.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.val8.i, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !45   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.q, null
  %i.r = zext nneg i32 %2 to i64
  %i.s = shl nuw nsw i64 %i.r, 2                  ; 2 uses
  br i1 %.not9.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = tail call ptr @realloc(ptr noundef nonnull %i.q, i64 noundef %i.s) #24
  br label %.lr.ph

bb.d:                                             ; preds = %bb.b
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.s) #25
  br label %.lr.ph

Vec_IntFill.exit:                                 ; preds = %Vec_WecPushLevel.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.val8.i, i64 4
  store i32 %2, ptr %i.v, align 4, !tbaa !42
  br label %.preheader

.lr.ph:                                           ; preds = %bb.d, %bb.c
  %i.w = phi ptr [ %i.t, %bb.c ], [ %i.u, %bb.d ] ; 2 uses
  store ptr %i.w, ptr %i.p, align 8, !tbaa !45
  store i32 %2, ptr %.val8.i, align 8, !tbaa !44
  %i.x = zext nneg i32 %2 to i64
  %i.y = shl nuw nsw i64 %i.x, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.w, i8 0, i64 %i.y, i1 false), !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %.val8.i, i64 4
  store i32 %2, ptr %i.z, align 4, !tbaa !42
  %i.aa = getelementptr i8, ptr %.val8.i, i64 8   ; 3 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ab = icmp eq i32 %2, 1
  br i1 %i.ab, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.f

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod116 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod116)
  %i.ac = shl nuw i64 1, %indvars.iv.epil.init
  %i.ad = and i64 %i.ac, %i.f
  %.not43.epil = icmp eq i64 %i.ad, 0
  br i1 %.not43.epil, label %.preheader, label %bb.e

bb.e:                                             ; preds = %.epil.preheader
  %.val49.epil = load ptr, ptr %i.aa, align 8, !tbaa !45
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.val49.epil, i64 %indvars.iv.epil.init
  store i32 1, ptr %i.ae, align 4, !tbaa !21
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.e, %.epil.preheader, %Vec_IntFill.exit
  %.val75 = load i32, ptr %i.a, align 4, !tbaa !51
  %i.af = icmp sgt i32 %.val75, 1
  br i1 %i.af, label %.lr.ph78, label %.critedge

.lr.ph78:                                         ; preds = %.preheader
  %i.ag = icmp sgt i32 %1, 0
  %i.ah = sext i32 %2 to i64
  %i.ai = shl nsw i64 %i.ah, 2                    ; 2 uses
  %i.aj = zext i32 %2 to i64                      ; 3 uses
  %i.ak = shl nuw nsw i64 %i.aj, 2
  br i1 %i.ag, label %.lr.ph78.split, label %.critedge

.lr.ph78.split:                                   ; preds = %.lr.ph78
  %wide.trip.count96 = zext nneg i32 %1 to i64
  %xtraiter118 = and i64 %i.aj, 1
  %i.al = icmp eq i32 %2, 1
  %unroll_iter121 = and i64 %i.aj, 2147483646
  %lcmp.mod119.not = icmp eq i64 %xtraiter118, 0
  %lcmp.mod120 = trunc i32 %2 to i1
  br label %.lr.ph71

bb.f:                                             ; preds = %bb.j, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.j ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.j ]
  %i.am = shl nuw i64 1, %indvars.iv
  %i.an = and i64 %i.am, %i.f
  %.not43 = icmp eq i64 %i.an, 0
  br i1 %.not43, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val49 = load ptr, ptr %i.aa, align 8, !tbaa !45
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.val49, i64 %indvars.iv
  store i32 1, ptr %i.ao, align 4, !tbaa !21
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ap = shl nuw i64 2, %indvars.iv
  %i.aq = and i64 %i.ap, %i.f
  %.not43.1 = icmp eq i64 %i.aq, 0
  br i1 %.not43.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val49.1 = load ptr, ptr %i.aa, align 8, !tbaa !45
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.val49.1, i64 %indvars.iv
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 1, ptr %i.as, align 4, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.f, !llvm.loop !179

.lr.ph71:                                         ; preds = %.lr.ph78.split, %._crit_edge72
  %.val8.pre.i52103 = phi ptr [ %.val8.i, %.lr.ph78.split ], [ %.val8.pre.i52105, %._crit_edge72 ]
  %.promoted73 = phi i32 [ %.promoted73102, %.lr.ph78.split ], [ %i.bs, %._crit_edge72 ]
  %indvars.iv98 = phi i64 [ 0, %.lr.ph78.split ], [ %indvars.iv.next99, %._crit_edge72 ] ; 2 uses
  %indvars.iv89 = phi i32 [ 1, %.lr.ph78.split ], [ %indvars.iv.next90, %._crit_edge72 ] ; 2 uses
  %.03876 = phi i32 [ 2, %.lr.ph78.split ], [ %i.cy, %._crit_edge72 ]
  %3 = sext i32 %indvars.iv89 to i64
  %.val47 = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.val47, i64 %indvars.iv98
  %i.au = load i64, ptr %i.at, align 8, !tbaa !18 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph71, %._crit_edge
  %i.av = phi ptr [ %.val8.pre.i52103, %.lr.ph71 ], [ %.val8.pre.i52105, %._crit_edge ] ; 5 uses
  %indvars.iv91.a = phi i64 [ 0, %.lr.ph71 ], [ %indvars.iv.next92, %._crit_edge ] ; 4 uses
  %indvars.iv89.a = phi i64 [ %3, %.lr.ph71 ], [ %indvars.iv.next90.a, %._crit_edge ] ; 5 uses
  %i.aw = phi i32 [ %.promoted73, %.lr.ph71 ], [ %i.bs, %._crit_edge ] ; 5 uses
  %.13969 = phi i32 [ %.03876, %.lr.ph71 ], [ %i.cy, %._crit_edge ] ; 4 uses
  %i.ax = trunc nsw i64 %indvars.iv89.a to i32
  %i.ay = icmp eq i32 %i.aw, %i.ax
  br i1 %i.ay, label %bb.l, label %Vec_WecPushLevel.exit59

bb.l:                                             ; preds = %bb.k
  %i.az = icmp slt i64 %indvars.iv89.a, 16
  br i1 %i.az, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %.not13.i.i56 = icmp eq ptr %i.av, null
  br i1 %.not13.i.i56, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = tail call dereferenceable_or_null(256) ptr @realloc(ptr noundef nonnull %i.av, i64 noundef 256) #24
  br label %Vec_WecGrow.exit.i58

bb.o:                                             ; preds = %bb.m
  %i.bb = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #25
  br label %Vec_WecGrow.exit.i58

Vec_WecGrow.exit.i58:                             ; preds = %bb.o, %bb.n
  %i.bc = phi ptr [ %i.ba, %bb.n ], [ %i.bb, %bb.o ] ; 3 uses
  store ptr %i.bc, ptr %i.o, align 8, !tbaa !177
  %i.bd = sext i32 %i.aw to i64
  %i.be = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = sub nsw i32 16, %i.aw
  %i.bg = sext i32 %i.bf to i64
  %i.bh = shl nsw i64 %i.bg, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.be, i8 0, i64 %i.bh, i1 false)
  br label %Vec_WecPushLevel.exit59

bb.p:                                             ; preds = %bb.l
  %i.bi = shl nuw nsw i64 %indvars.iv89.a, 1      ; 2 uses
  %.not13.i10.i54 = icmp eq ptr %i.av, null
  %i.bj = shl nuw nsw i64 %indvars.iv89.a, 5      ; 2 uses
  br i1 %.not13.i10.i54, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = tail call ptr @realloc(ptr noundef nonnull %i.av, i64 noundef %i.bj) #24
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bl = tail call noalias ptr @malloc(i64 noundef %i.bj) #25
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bm = phi ptr [ %i.bk, %bb.q ], [ %i.bl, %bb.r ] ; 3 uses
  store ptr %i.bm, ptr %i.o, align 8, !tbaa !177
  %i.bn = sext i32 %i.aw to i64                   ; 2 uses
  %i.bo = getelementptr inbounds [16 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = sub nsw i64 %i.bi, %i.bn
  %i.bq = shl nsw i64 %i.bp, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bo, i8 0, i64 %i.bq, i1 false)
  %i.br = trunc nsw i64 %i.bi to i32
  br label %Vec_WecPushLevel.exit59

Vec_WecPushLevel.exit59:                          ; preds = %bb.k, %Vec_WecGrow.exit.i58, %bb.s
  %.val8.pre.i52105 = phi ptr [ %i.bc, %Vec_WecGrow.exit.i58 ], [ %i.bm, %bb.s ], [ %i.av, %bb.k ] ; 3 uses
  %i.bs = phi i32 [ 16, %Vec_WecGrow.exit.i58 ], [ %i.br, %bb.s ], [ %i.aw, %bb.k ] ; 3 uses
  %indvars.iv.next90.a = add nsw i64 %indvars.iv89.a, 1 ; 3 uses
  %i.bt = getelementptr inbounds [16 x i8], ptr %.val8.pre.i52105, i64 %indvars.iv.next90.a ; 6 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -16 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !44
  %.not.i.i60 = icmp slt i32 %i.bv, %2
  br i1 %.not.i.i60, label %bb.t, label %Vec_IntGrow.exit.i61

bb.t:                                             ; preds = %Vec_WecPushLevel.exit59
  %i.bw = getelementptr inbounds i8, ptr %i.bt, i64 -8 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !45 ; 2 uses
  %.not9.i.i63 = icmp eq ptr %i.bx, null
  br i1 %.not9.i.i63, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.by = tail call ptr @realloc(ptr noundef nonnull %i.bx, i64 noundef %i.ai) #24
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bz = tail call noalias ptr @malloc(i64 noundef %i.ai) #25
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ca = phi ptr [ %i.by, %bb.u ], [ %i.bz, %bb.v ]
  store ptr %i.ca, ptr %i.bw, align 8, !tbaa !45
  store i32 %2, ptr %i.bu, align 8, !tbaa !44
  br label %Vec_IntGrow.exit.i61

Vec_IntGrow.exit.i61:                             ; preds = %bb.w, %Vec_WecPushLevel.exit59
  br i1 %.not.i.i, label %.lr.ph67, label %Vec_IntFill.exit64

Vec_IntFill.exit64:                               ; preds = %Vec_IntGrow.exit.i61
  %i.cb = getelementptr inbounds i8, ptr %i.bt, i64 -12
  store i32 %2, ptr %i.cb, align 4, !tbaa !42
  br label %._crit_edge

.lr.ph67:                                         ; preds = %Vec_IntGrow.exit.i61
  %i.cc = getelementptr inbounds i8, ptr %i.bt, i64 -8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cd, i8 0, i64 %i.ak, i1 false), !tbaa !21
  %i.ce = getelementptr inbounds i8, ptr %i.bt, i64 -12
  store i32 %2, ptr %i.ce, align 4, !tbaa !42
  %i.cf = getelementptr i8, ptr %i.bt, i64 -8     ; 3 uses
  br i1 %i.al, label %.epil.preheader117, label %.lr.ph67.new

.lr.ph67.new:                                     ; preds = %.lr.ph67, %bb.ac
  %indvars.iv84 = phi i64 [ %indvars.iv.next85.1, %bb.ac ], [ 0, %.lr.ph67 ] ; 5 uses
  %niter122 = phi i64 [ %niter122.next.1, %bb.ac ], [ 0, %.lr.ph67 ]
  %i.cg = shl nuw i64 1, %indvars.iv84
  %i.ch = and i64 %i.cg, %i.au
  %.not = icmp eq i64 %i.ch, 0
  br i1 %.not, label %bb.z, label %bb.x

bb.x:                                             ; preds = %.lr.ph67.new
  %i.ci = add nuw nsw i64 %indvars.iv84, %indvars.iv91.a ; 2 uses
  %i.cj = trunc nuw i64 %i.ci to i32
  %i.ck = icmp sgt i32 %2, %i.cj
  br i1 %i.ck, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %.val48 = load ptr, ptr %i.cf, align 8, !tbaa !45
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.val48, i64 %i.ci
  store i32 %.13969, ptr %i.cl, align 4, !tbaa !21
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph67.new, %bb.x, %bb.y
  %i.cm = shl nuw i64 2, %indvars.iv84
  %i.cn = and i64 %i.cm, %i.au
  %.not.1 = icmp eq i64 %i.cn, 0
  br i1 %.not.1, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %indvars.iv.next85 = or disjoint i64 %indvars.iv84, 1
  %i.co = add nuw nsw i64 %indvars.iv.next85, %indvars.iv91.a ; 2 uses
  %i.cp = trunc nuw i64 %i.co to i32
  %i.cq = icmp sgt i32 %2, %i.cp
  br i1 %i.cq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %.val48.1 = load ptr, ptr %i.cf, align 8, !tbaa !45
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.val48.1, i64 %i.co
  store i32 %.13969, ptr %i.cr, align 4, !tbaa !21
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %indvars.iv.next85.1 = add nuw nsw i64 %indvars.iv84, 2 ; 2 uses
  %niter122.next.1 = add i64 %niter122, 2         ; 2 uses
  %niter122.ncmp.1 = icmp eq i64 %niter122.next.1, %unroll_iter121
  br i1 %niter122.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph67.new, !llvm.loop !180

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ac
  br i1 %lcmp.mod119.not, label %._crit_edge, label %.epil.preheader117

.epil.preheader117:                               ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph67
  %indvars.iv84.epil.init = phi i64 [ 0, %.lr.ph67 ], [ %indvars.iv.next85.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod120)
  %i.cs = shl nuw i64 1, %indvars.iv84.epil.init
  %i.ct = and i64 %i.cs, %i.au
  %.not.epil = icmp eq i64 %i.ct, 0
  br i1 %.not.epil, label %._crit_edge, label %bb.ad

bb.ad:                                            ; preds = %.epil.preheader117
  %i.cu = add nuw nsw i64 %indvars.iv84.epil.init, %indvars.iv91.a ; 2 uses
  %i.cv = trunc nuw i64 %i.cu to i32
  %i.cw = icmp sgt i32 %2, %i.cv
  br i1 %i.cw, label %bb.ae, label %._crit_edge

bb.ae:                                            ; preds = %bb.ad
  %.val48.epil = load ptr, ptr %i.cf, align 8, !tbaa !45
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.val48.epil, i64 %i.cu
  store i32 %.13969, ptr %i.cx, align 4, !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.ae, %bb.ad, %.epil.preheader117, %Vec_IntFill.exit64
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91.a, 1 ; 2 uses
  %i.cy = add nsw i32 %.13969, 2                  ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next92, %wide.trip.count96
  br i1 %exitcond97.not, label %._crit_edge72, label %bb.k, !llvm.loop !181

._crit_edge72:                                    ; preds = %._crit_edge
  store i32 %i.bs, ptr %i.h, align 8
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %.val = load i32, ptr %i.a, align 4, !tbaa !51
  %i.cz = add nsw i32 %.val, -1
  %i.da = sext i32 %i.cz to i64
  %i.db = icmp slt i64 %indvars.iv.next99, %i.da
  %indvars.iv.next90 = add i32 %indvars.iv89, %1
  br i1 %i.db, label %.lr.ph71, label %..critedge_crit_edge, !llvm.loop !182

..critedge_crit_edge:                             ; preds = %._crit_edge72
  %i.dc = trunc nsw i64 %indvars.iv.next90.a to i32
  store i32 %i.dc, ptr %i.j, align 4, !tbaa !178
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %.lr.ph78, %.preheader
  ret ptr %i.h
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Gia_ManGenNeuronTransformArgs(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4          ; 7 uses
  %.val33 = load i32, ptr %i.a, align 4, !tbaa !178 ; 4 uses
  %i.b = add i32 %2, -2
  %i.c = add i32 %i.b, %.val33
  %i.d = sdiv i32 %i.c, %2                        ; 3 uses
  %i.e = mul nsw i32 %i.d, %2                     ; 2 uses
  %.not63 = icmp sgt i32 %.val33, %i.e
  br i1 %.not63, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr i8, ptr %1, i64 8 ; 5 uses
  %i.f = sext i32 %3 to i64
  %i.g = shl nsw i64 %i.f, 2                      ; 2 uses
  %i.h = icmp sgt i32 %3, 0
  %i.i = zext nneg i32 %3 to i64
  %i.j = shl nuw nsw i64 %i.i, 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Vec_IntFill.exit
  %.val3264 = phi i32 [ %.val33, %.lr.ph ], [ %.val32.pr, %Vec_IntFill.exit ] ; 5 uses
  %i.k = load i32, ptr %1, align 8, !tbaa !175
  %i.l = icmp eq i32 %.val3264, %i.k
  br i1 %i.l, label %bb.c, label %.Vec_WecGrow.exit12_crit_edge.i

.Vec_WecGrow.exit12_crit_edge.i:                  ; preds = %bb.b
  %.val8.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !177
  br label %Vec_WecPushLevel.exit

bb.c:                                             ; preds = %bb.b
  %i.m = icmp slt i32 %.val3264, 16
  br i1 %i.m, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !177 ; 2 uses
  %.not13.i.i = icmp eq ptr %i.n, null
  br i1 %.not13.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call dereferenceable_or_null(256) ptr @realloc(ptr noundef nonnull %i.n, i64 noundef 256) #24
  %.pre.i.i = load i32, ptr %1, align 8, !tbaa !175
  br label %Vec_WecGrow.exit.i

bb.f:                                             ; preds = %bb.d
  %i.p = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #25
  br label %Vec_WecGrow.exit.i

Vec_WecGrow.exit.i:                               ; preds = %bb.f, %bb.e
  %i.q = phi i32 [ %.pre.i.i, %bb.e ], [ %.val3264, %bb.f ] ; 2 uses
  %i.r = phi ptr [ %i.o, %bb.e ], [ %i.p, %bb.f ] ; 3 uses
  store ptr %i.r, ptr %.phi.trans.insert.i, align 8, !tbaa !177
  %i.s = sext i32 %i.q to i64
  %i.t = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.s
  %i.u = sub nsw i32 16, %i.q
  %i.v = sext i32 %i.u to i64
  %i.w = shl nsw i64 %i.v, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.t, i8 0, i64 %i.w, i1 false)
  store i32 16, ptr %1, align 8, !tbaa !175
  br label %Vec_WecPushLevel.exit

bb.g:                                             ; preds = %bb.c
  %i.x = shl nuw nsw i32 %.val3264, 1             ; 3 uses
  %i.y = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !177 ; 2 uses
  %.not13.i10.i = icmp eq ptr %i.y, null
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = shl nuw nsw i64 %i.z, 4                 ; 2 uses
  br i1 %.not13.i10.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = tail call ptr @realloc(ptr noundef nonnull %i.y, i64 noundef %i.aa) #24
  %.pre.i11.i = load i32, ptr %1, align 8, !tbaa !175
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ac = tail call noalias ptr @malloc(i64 noundef %i.aa) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ad = phi i32 [ %.pre.i11.i, %bb.h ], [ %.val3264, %bb.i ] ; 2 uses
  %i.ae = phi ptr [ %i.ab, %bb.h ], [ %i.ac, %bb.i ] ; 3 uses
  store ptr %i.ae, ptr %.phi.trans.insert.i, align 8, !tbaa !177
  %i.af = sext i32 %i.ad to i64
  %i.ag = getelementptr inbounds [16 x i8], ptr %i.ae, i64 %i.af
  %i.ah = sub nsw i32 %i.x, %i.ad
  %i.ai = sext i32 %i.ah to i64
  %i.aj = shl nsw i64 %i.ai, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ag, i8 0, i64 %i.aj, i1 false)
  store i32 %i.x, ptr %1, align 8, !tbaa !175
  br label %Vec_WecPushLevel.exit

Vec_WecPushLevel.exit:                            ; preds = %.Vec_WecGrow.exit12_crit_edge.i, %Vec_WecGrow.exit.i, %bb.j
  %.val8.i = phi ptr [ %.val8.pre.i, %.Vec_WecGrow.exit12_crit_edge.i ], [ %i.ae, %bb.j ], [ %i.r, %Vec_WecGrow.exit.i ]
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !178
  %i.al = add nsw i32 %i.ak, 1                    ; 2 uses
  store i32 %i.al, ptr %i.a, align 4, !tbaa !178
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [16 x i8], ptr %.val8.i, i64 %i.am ; 4 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -16 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !44
  %.not.i.i = icmp slt i32 %i.ap, %3
  br i1 %.not.i.i, label %bb.k, label %Vec_IntGrow.exit.i

bb.k:                                             ; preds = %Vec_WecPushLevel.exit
  %i.aq = getelementptr inbounds i8, ptr %i.an, i64 -8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !45 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ar, null
  br i1 %.not9.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = tail call ptr @realloc(ptr noundef nonnull %i.ar, i64 noundef %i.g) #24
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.at = tail call noalias ptr @malloc(i64 noundef %i.g) #25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.au = phi ptr [ %i.as, %bb.l ], [ %i.at, %bb.m ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !45
  store i32 %3, ptr %i.ao, align 8, !tbaa !44
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.n, %Vec_WecPushLevel.exit
  br i1 %i.h, label %.lr.ph.i, label %Vec_IntFill.exit

.lr.ph.i:                                         ; preds = %Vec_IntGrow.exit.i
  %i.av = getelementptr inbounds i8, ptr %i.an, i64 -8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aw, i8 0, i64 %i.j, i1 false), !tbaa !21
  br label %Vec_IntFill.exit

Vec_IntFill.exit:                                 ; preds = %Vec_IntGrow.exit.i, %.lr.ph.i
  %i.ax = getelementptr inbounds i8, ptr %i.an, i64 -12
  store i32 %3, ptr %i.ax, align 4, !tbaa !42
  %.val32.pr = load i32, ptr %i.a, align 4, !tbaa !178 ; 3 uses
  %.not = icmp sgt i32 %.val32.pr, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !183

._crit_edge:                                      ; preds = %Vec_IntFill.exit, %bb.a
  %.val316571 = phi i32 [ %.val33, %bb.a ], [ %.val32.pr, %Vec_IntFill.exit ]
  %i.ay = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 9 uses
  %i.az = add i32 %i.d, -1
  %or.cond.i = icmp ult i32 %i.az, 7
  %spec.store.select.i = select i1 %or.cond.i, i32 8, i32 %i.d ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 3 uses
  store i32 %spec.store.select.i, ptr %i.ay, align 8, !tbaa !175
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_WecGrow.exit.i45, label %.Vec_WecGrow.exit12_crit_edge.i37

.Vec_WecGrow.exit12_crit_edge.i37:                ; preds = %._crit_edge
  %i.bb = sext i32 %spec.store.select.i to i64
  %i.bc = tail call noalias ptr @calloc(i64 noundef %i.bb, i64 noundef 16) #26 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !177
  br label %Vec_WecPushLevel.exit46

Vec_WecGrow.exit.i45:                             ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %calloc = tail call dereferenceable_or_null(256) ptr @calloc(i64 1, i64 256) ; 2 uses
  store ptr %calloc, ptr %i.be, align 8, !tbaa !177
  store i32 16, ptr %i.ay, align 8, !tbaa !175
  br label %Vec_WecPushLevel.exit46

Vec_WecPushLevel.exit46:                          ; preds = %.Vec_WecGrow.exit12_crit_edge.i37, %Vec_WecGrow.exit.i45
  %i.bf = phi ptr [ %i.bd, %.Vec_WecGrow.exit12_crit_edge.i37 ], [ %i.be, %Vec_WecGrow.exit.i45 ] ; 5 uses
  %.val8.i40 = phi ptr [ %i.bc, %.Vec_WecGrow.exit12_crit_edge.i37 ], [ %calloc, %Vec_WecGrow.exit.i45 ] ; 5 uses
  store i32 1, ptr %i.ba, align 4, !tbaa !178
  %i.bg = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %.val35 = load ptr, ptr %i.bg, align 8, !tbaa !177 ; 2 uses
  %i.bh = getelementptr i8, ptr %.val35, i64 4    ; 2 uses
  %.val7.i = load i32, ptr %i.bh, align 4, !tbaa !42
  %i.bi = icmp sgt i32 %.val7.i, 0
  br i1 %i.bi, label %.lr.ph.i47, label %Vec_IntAppend.exit

.lr.ph.i47:                                       ; preds = %Vec_WecPushLevel.exit46
  %i.bj = getelementptr i8, ptr %.val35, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.val8.i40, i64 4 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.val8.i40, i64 8 ; 4 uses
  br label %bb.o

bb.o:                                             ; preds = %Vec_IntPush.exit.i, %.lr.ph.i47
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i47 ], [ %indvars.iv.next.i, %Vec_IntPush.exit.i ] ; 2 uses
  %.val6.i = load ptr, ptr %i.bj, align 8, !tbaa !45
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.val6.i, i64 %indvars.iv.i
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !21
  %i.bo = load i32, ptr %i.bk, align 4, !tbaa !42 ; 7 uses
  %i.bp = load i32, ptr %.val8.i40, align 8, !tbaa !44
end_hunk_0
