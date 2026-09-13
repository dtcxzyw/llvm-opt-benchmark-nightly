Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcRec3?download=true
inline.NumInlined: 568
inline.NumDeleted: 117
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 31
begin_hunk_0_@Lms_ManStop:bb.a
  %i.cz = phi ptr [ %.pre23.i, %._crit_edge.i ], [ %i.cx, %bb.z ]
  tail call void @free(ptr noundef nonnull %i.cz) #27
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.i, %._crit_edge.thread.i
  tail call void @free(ptr noundef nonnull %i.cn) #27
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @Gia_ManStopP(ptr noundef nonnull %i.da) #27
  tail call void @free(ptr noundef %0) #27
  ret void
}

declare void @Gia_ManStopP(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Lms_ManPrepare(ptr nofree noundef captures(none) initializes((48, 56)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val25 = load i32, ptr %i.c, align 4, !tbaa !90 ; 3 uses
  %i.d = add nsw i32 %.val25, 1                   ; 4 uses
  %i.e = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 5 uses
  %or.cond.i.i = icmp ult i32 %.val25, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.d ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.e, align 8, !tbaa !74
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !50
  store i32 %i.d, ptr %i.f, align 4, !tbaa !45
  br label %Vec_IntStartFull.exit

Vec_IntAlloc.exit.i:                              ; preds = %bb.a
  %i.h = sext i32 %spec.store.select.i.i to i64
  %i.i = shl nsw i64 %i.h, 2
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #25 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !50
  store i32 %i.d, ptr %i.f, align 4, !tbaa !45
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %Vec_IntStartFull.exit, label %bb.b

bb.b:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.l = sext i32 %i.d to i64
  %i.m = shl nsw i64 %i.l, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.j, i8 -1, i64 %i.m, i1 false)
  br label %Vec_IntStartFull.exit

Vec_IntStartFull.exit:                            ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.b
  %.val26 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i ], [ null, %Vec_IntAlloc.exit.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.e, ptr %i.n, align 8, !tbaa !95
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !77   ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 4        ; 2 uses
  %.val34 = load i32, ptr %i.q, align 4, !tbaa !45 ; 2 uses
  %i.r = icmp sgt i32 %.val34, 0
  br i1 %i.r, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_IntStartFull.exit
  %i.s = getelementptr i8, ptr %i.p, i64 8
  %.val23 = load ptr, ptr %i.s, align 8, !tbaa !50
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.val38 = phi i32 [ %.val34, %.lr.ph ], [ %.val, %bb.e ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.val23, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !51
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %.val26, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !51
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.z, ptr %i.w, align 4, !tbaa !51
  %.val.pre = load i32, ptr %i.q, align 4, !tbaa !45
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.val = phi i32 [ %.val38, %bb.c ], [ %.val.pre, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aa = sext i32 %.val to i64
  %i.ab = icmp slt i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %bb.c, label %.critedge, !llvm.loop !157

.critedge:                                        ; preds = %bb.e, %Vec_IntStartFull.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !78 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 72
  %.val21 = load ptr, ptr %i.ae, align 8, !tbaa !49
  %i.af = getelementptr i8, ptr %.val21, i64 4
  %.val21.val = load i32, ptr %i.af, align 4, !tbaa !45
  %i.ag = sext i32 %.val25 to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %.val26, i64 %i.ag
  store i32 %.val21.val, ptr %i.ah, align 4, !tbaa !51
  %i.ai = tail call ptr @Lms_GiaDelays(ptr noundef %i.ad)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !96
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !78
  %i.al = tail call ptr @Lms_GiaAreas(ptr noundef %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.al, ptr %i.am, align 8, !tbaa !97
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !78
  %i.ao = getelementptr i8, ptr %i.an, i64 72
  %.val20 = load ptr, ptr %i.ao, align 8, !tbaa !49
  %i.ap = getelementptr i8, ptr %.val20, i64 4
  %.val20.val = load i32, ptr %i.ap, align 4, !tbaa !45 ; 5 uses
  %i.aq = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 5 uses
  %i.ar = add i32 %.val20.val, -1
  %or.cond.i.i28 = icmp ult i32 %i.ar, 15
  %spec.store.select.i.i29 = select i1 %or.cond.i.i28, i32 16, i32 %.val20.val ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i29, ptr %i.aq, align 8, !tbaa !74
  %.not.i.i30 = icmp eq i32 %spec.store.select.i.i29, 0
  br i1 %.not.i.i30, label %Vec_IntAlloc.exit.thread.i33, label %Vec_IntAlloc.exit.i31

Vec_IntAlloc.exit.thread.i33:                     ; preds = %.critedge
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr null, ptr %i.at, align 8, !tbaa !50
  store i32 %.val20.val, ptr %i.as, align 4, !tbaa !45
  br label %Vec_IntStart.exit

Vec_IntAlloc.exit.i31:                            ; preds = %.critedge
  %i.au = sext i32 %spec.store.select.i.i29 to i64
  %i.av = shl nsw i64 %i.au, 2
  %i.aw = tail call noalias ptr @malloc(i64 noundef %i.av) #25 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !50
  store i32 %.val20.val, ptr %i.as, align 4, !tbaa !45
  %.not.i32 = icmp eq ptr %i.aw, null
  br i1 %.not.i32, label %Vec_IntStart.exit, label %bb.f

bb.f:                                             ; preds = %Vec_IntAlloc.exit.i31
  %i.ay = sext i32 %.val20.val to i64
  %i.az = shl nsw i64 %i.ay, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aw, i8 0, i64 %i.az, i1 false)
  br label %Vec_IntStart.exit

Vec_IntStart.exit:                                ; preds = %Vec_IntAlloc.exit.thread.i33, %Vec_IntAlloc.exit.i31, %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.aq, ptr %i.ba, align 8, !tbaa !158
  ret void
}

; Function Attrs: nounwind uwtable
define void @Lms_ManPrintFuncStats(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [17 x i32], align 16              ; 23 uses
  %i.b = alloca [17 x i32], align 16              ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.a, i8 0, i64 68, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.b, i8 0, i64 68, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !98
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.y

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !95
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @Lms_ManPrepare(ptr noundef nonnull %0)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !78
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = phi ptr [ %.pre, %bb.d ], [ %i.d, %bb.c ]
  %i.l = tail call ptr @Lms_GiaSuppSizes(ptr noundef %i.k) ; 3 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !95   ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 4
  %.val30 = load i32, ptr %i.n, align 4, !tbaa !45 ; 3 uses
  %or.cond36 = icmp slt i32 %.val30, 2
  br i1 %or.cond36, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.o = getelementptr i8, ptr %i.m, i64 8
  %.val32 = load ptr, ptr %i.o, align 8, !tbaa !50 ; 4 uses
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %.val34 = load ptr, ptr %i.p, align 8, !tbaa !55 ; 3 uses
  %i.q = add nsw i32 %.val30, -1
  %i.r = add nsw i32 %.val30, -2
  %umin = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.r) ; 2 uses
  %i.s = add nuw nsw i32 %umin, 1                 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.s to i64    ; 2 uses
  %.pre44 = load i32, ptr %.val32, align 4, !tbaa !51 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.t = icmp eq i32 %umin, 0
  br i1 %i.t, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.f

.critedge.preheader.unr-lcssa:                    ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.preheader.unr-lcssa, %.lr.ph
  %.epil.init = phi i32 [ %.pre44, %.lr.ph ], [ %i.ay, %.critedge.preheader.unr-lcssa ] ; 2 uses
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.critedge.preheader.unr-lcssa ]
  %lcmp.mod65 = trunc i32 %i.s to i1
  tail call void @llvm.assume(i1 %lcmp.mod65)
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.val32, i64 %indvars.iv.epil.init
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !51
  %i.x = sext i32 %.epil.init to i64
  %i.y = getelementptr inbounds i8, ptr %.val34, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !56
  %i.aa = sext i8 %i.z to i64                     ; 2 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !51
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !51
  %i.ae = sub i32 %i.w, %.epil.init
  %i.af = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aa ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !51
  %i.ah = add nsw i32 %i.ae, %i.ag
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !51
  br label %.critedge.preheader

.critedge.preheader:                              ; preds = %.critedge.preheader.unr-lcssa, %.epil.preheader
  %.pre45 = load i32, ptr %i.a, align 16, !tbaa !51 ; 3 uses
  %.not29 = icmp eq i32 %.pre45, 0
  br i1 %.not29, label %.critedge, label %bb.g

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %i.ai = phi i32 [ %.pre44, %.lr.ph.new ], [ %i.ay, %bb.f ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.f ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.val32, i64 %indvars.iv
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !51 ; 3 uses
  %i.am = sext i32 %i.ai to i64
  %i.an = getelementptr inbounds i8, ptr %.val34, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !56
  %i.ap = sext i8 %i.ao to i64                    ; 2 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !51
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !51
  %i.at = sub i32 %i.al, %i.ai
  %i.au = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ap ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !51
  %i.aw = add nsw i32 %i.at, %i.av
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !51
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.val32, i64 %indvars.iv.next.1
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !51 ; 3 uses
  %i.az = sext i32 %i.al to i64
  %i.ba = getelementptr inbounds i8, ptr %.val34, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !56
  %i.bc = sext i8 %i.bb to i64                    ; 2 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !51
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !51
  %i.bg = sub i32 %i.ay, %i.al
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bc ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !51
  %i.bj = add nsw i32 %i.bg, %i.bi
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !51
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge.preheader.unr-lcssa, label %bb.f, !llvm.loop !159

bb.g:                                             ; preds = %.critedge.preheader
  %i.bk = load i32, ptr %i.b, align 16, !tbaa !51 ; 2 uses
  %i.bl = sitofp i32 %i.bk to double
  %i.bm = sitofp i32 %.pre45 to double
  %i.bn = fdiv double %i.bl, %i.bm
  %i.bo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 0, i32 noundef %.pre45, i32 noundef %i.bk, double noundef %i.bn) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %.critedge.preheader, %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !51 ; 3 uses
  %.not29.1 = icmp eq i32 %i.bq, 0
  br i1 %.not29.1, label %.critedge.1, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !51 ; 2 uses
  %i.bt = sitofp i32 %i.bs to double
  %i.bu = sitofp i32 %i.bq to double
  %i.bv = fdiv double %i.bt, %i.bu
  %i.bw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 1, i32 noundef %i.bq, i32 noundef %i.bs, double noundef %i.bv) ; 0 uses
  br label %.critedge.1

.critedge.1:                                      ; preds = %bb.h, %.critedge
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !51 ; 3 uses
  %.not29.2 = icmp eq i32 %i.by, 0
  br i1 %.not29.2, label %.critedge.2, label %bb.i

bb.i:                                             ; preds = %.critedge.1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !51 ; 2 uses
  %i.cb = sitofp i32 %i.ca to double
  %i.cc = sitofp i32 %i.by to double
  %i.cd = fdiv double %i.cb, %i.cc
  %i.ce = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 2, i32 noundef %i.by, i32 noundef %i.ca, double noundef %i.cd) ; 0 uses
  br label %.critedge.2

.critedge.2:                                      ; preds = %bb.i, %.critedge.1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !51 ; 3 uses
  %.not29.3 = icmp eq i32 %i.cg, 0
  br i1 %.not29.3, label %.critedge.3, label %bb.j

bb.j:                                             ; preds = %.critedge.2
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !51 ; 2 uses
  %i.cj = sitofp i32 %i.ci to double
  %i.ck = sitofp i32 %i.cg to double
  %i.cl = fdiv double %i.cj, %i.ck
  %i.cm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 3, i32 noundef %i.cg, i32 noundef %i.ci, double noundef %i.cl) ; 0 uses
  br label %.critedge.3

.critedge.3:                                      ; preds = %bb.j, %.critedge.2
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.co = load i32, ptr %i.cn, align 16, !tbaa !51 ; 3 uses
  %.not29.4 = icmp eq i32 %i.co, 0
  br i1 %.not29.4, label %.critedge.4, label %bb.k

bb.k:                                             ; preds = %.critedge.3
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cq = load i32, ptr %i.cp, align 16, !tbaa !51 ; 2 uses
  %i.cr = sitofp i32 %i.cq to double
  %i.cs = sitofp i32 %i.co to double
  %i.ct = fdiv double %i.cr, %i.cs
  %i.cu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 4, i32 noundef %i.co, i32 noundef %i.cq, double noundef %i.ct) ; 0 uses
  br label %.critedge.4

.critedge.4:                                      ; preds = %bb.k, %.critedge.3
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !51 ; 3 uses
  %.not29.5 = icmp eq i32 %i.cw, 0
  br i1 %.not29.5, label %.critedge.5, label %bb.l

bb.l:                                             ; preds = %.critedge.4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !51 ; 2 uses
  %i.cz = sitofp i32 %i.cy to double
  %i.da = sitofp i32 %i.cw to double
  %i.db = fdiv double %i.cz, %i.da
  %i.dc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 5, i32 noundef %i.cw, i32 noundef %i.cy, double noundef %i.db) ; 0 uses
  br label %.critedge.5

.critedge.5:                                      ; preds = %bb.l, %.critedge.4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !51 ; 3 uses
  %.not29.6 = icmp eq i32 %i.de, 0
  br i1 %.not29.6, label %.critedge.6, label %bb.m

bb.m:                                             ; preds = %.critedge.5
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !51 ; 2 uses
  %i.dh = sitofp i32 %i.dg to double
  %i.di = sitofp i32 %i.de to double
  %i.dj = fdiv double %i.dh, %i.di
  %i.dk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 6, i32 noundef %i.de, i32 noundef %i.dg, double noundef %i.dj) ; 0 uses
  br label %.critedge.6

.critedge.6:                                      ; preds = %bb.m, %.critedge.5
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !51 ; 3 uses
  %.not29.7 = icmp eq i32 %i.dm, 0
  br i1 %.not29.7, label %.critedge.7, label %bb.n

bb.n:                                             ; preds = %.critedge.6
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !51 ; 2 uses
  %i.dp = sitofp i32 %i.do to double
  %i.dq = sitofp i32 %i.dm to double
  %i.dr = fdiv double %i.dp, %i.dq
  %i.ds = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 7, i32 noundef %i.dm, i32 noundef %i.do, double noundef %i.dr) ; 0 uses
  br label %.critedge.7

.critedge.7:                                      ; preds = %bb.n, %.critedge.6
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.du = load i32, ptr %i.dt, align 16, !tbaa !51 ; 3 uses
  %.not29.8 = icmp eq i32 %i.du, 0
  br i1 %.not29.8, label %.critedge.8, label %bb.o

bb.o:                                             ; preds = %.critedge.7
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.dw = load i32, ptr %i.dv, align 16, !tbaa !51 ; 2 uses
end_hunk_0
