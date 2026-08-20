inline.NumInlined: 193
inline.NumDeleted: 44
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
@.str.26 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"%d %d %c\0A\00", align 1
@.str.28 = private unnamed_addr constant [65 x i8] c"Result: %d pairs of seq equiv nodes are written into file \22%s\22.\0A\00", align 1
@enable_dbg_outs = external local_unnamed_addr global i32, align 4
@stdout = external local_unnamed_addr global ptr, align 8
@str = private unnamed_addr constant [56 x i8] c"Partitioning was disabled to allow implication writing.\00", align 1
@str.1 = private unnamed_addr constant [49 x i8] c"Fra_FraigInduction(): Computed CNF is not valid.\00", align 1
@str.2 = private unnamed_addr constant [69 x i8] c"Fra_FraigInduction(): Adding implicationsn to CNF led to a conflict.\00", align 1
@str.3 = private unnamed_addr constant [44 x i8] c"Fra_FraigInduction(): SAT solver timed out!\00", align 1
@str.4 = private unnamed_addr constant [65 x i8] c"Fra_FraigInduction(): Internal error. The result may not verify.\00", align 1
@str.6 = private unnamed_addr constant [46 x i8] c"Fra_FraigInduction(): Runtime limit exceeded.\00", align 1

; Function Attrs: nounwind uwtable
define void @Fra_FraigInductionRewrite(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #16
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8, !tbaa !8
  %.neg65 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11
  %.neg = sdiv i64 %i.e, -1000
  %.neg66 = add i64 %.neg, %.neg65
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg66, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.h = call ptr @Dar_ManRewriteDefault(ptr noundef %i.g) #16 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !27   ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 136
  %.val42 = load i32, ptr %i.k, align 8, !tbaa !28
  %i.l = getelementptr i8, ptr %i.j, i64 104
  %.val45 = load i32, ptr %i.l, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load i32, ptr %i.o, align 8, !tbaa !38
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 3
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !39
  %i.u = sext i32 %i.t to i64
  %i.v = mul i64 %i.r, %i.u
  call void @llvm.memset.p0.i64(ptr align 8 %i.n, i8 0, i64 %i.v, i1 false)
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !27   ; 5 uses
  %i.x = getelementptr i8, ptr %i.w, i64 48
  %.val47 = load ptr, ptr %i.x, align 8, !tbaa !40 ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !42  ; 6 uses
  %i.ab = getelementptr i8, ptr %i.h, i64 48
  %.val46 = load ptr, ptr %i.ab, align 8, !tbaa !40
  %i.ac = getelementptr i8, ptr %.val47, i64 36
  %.val52 = load i32, ptr %i.ac, align 4, !tbaa !45
  %i.ad = getelementptr i8, ptr %.val47, i64 40
  %.val53 = load ptr, ptr %i.ad, align 8, !tbaa !46 ; 2 uses
  %i.ae = getelementptr i8, ptr %.val53, i64 24
  %.val53.val = load i32, ptr %i.ae, align 8, !tbaa !39
  %i.af = getelementptr i8, ptr %.val53, i64 32
  %.val53.val54 = load ptr, ptr %i.af, align 8, !tbaa !37
  %i.ag = mul nsw i32 %.val53.val, %.val52
  %i.ah = add nsw i32 %i.ag, %i.aa
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %.val53.val54, i64 %i.ai
  store ptr %.val46, ptr %i.aj, align 8, !tbaa !47
  %i.ak = getelementptr i8, ptr %i.w, i64 136
  %.val41 = load i32, ptr %i.ak, align 8, !tbaa !28 ; 2 uses
  %i.al = getelementptr i8, ptr %i.w, i64 104
  %.val44 = load i32, ptr %i.al, align 8, !tbaa !29 ; 2 uses
  %i.am = sub nsw i32 %.val41, %.val44            ; 6 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph, label %Abc_Clock.exit..critedge.preheader_crit_edge

Abc_Clock.exit..critedge.preheader_crit_edge:     ; preds = %Abc_Clock.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !48
  br label %.critedge.preheader

.lr.ph:                                           ; preds = %Abc_Clock.exit
  %i.ao = sub nsw i32 %.val42, %.val45
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !48 ; 3 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %.val58 = load ptr, ptr %i.ar, align 8, !tbaa !49 ; 3 uses
  %i.as = mul nsw i32 %i.aa, %i.ao
  %i.at = getelementptr i8, ptr %i.h, i64 16
  %.val59 = load ptr, ptr %i.at, align 8, !tbaa !48
  %i.au = getelementptr i8, ptr %.val59, i64 8
  %.val59.val = load ptr, ptr %i.au, align 8, !tbaa !49
  %i.av = sext i32 %i.as to i64
  %wide.trip.count = zext nneg i32 %i.am to i64   ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.val59.val, i64 %i.av ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.aw = icmp eq i32 %i.am, 1
  br i1 %i.aw, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

.critedge.preheader.loopexit.unr-lcssa:           ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.critedge.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod83 = trunc i32 %i.am to i1
  call void @llvm.assume(i1 %lcmp.mod83)
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.val58, i64 %indvars.iv.epil.init
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !51 ; 2 uses
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init
  %i.az = load ptr, ptr %gep.epil, align 8, !tbaa !51
  %i.ba = getelementptr i8, ptr %i.ay, i64 36
  %.val50.epil = load i32, ptr %i.ba, align 4, !tbaa !45
  %i.bb = getelementptr i8, ptr %i.ay, i64 40
  %.val51.epil = load ptr, ptr %i.bb, align 8, !tbaa !46 ; 2 uses
  %i.bc = getelementptr i8, ptr %.val51.epil, i64 24
  %.val51.val.epil = load i32, ptr %i.bc, align 8, !tbaa !39
  %i.bd = getelementptr i8, ptr %.val51.epil, i64 32
  %.val51.val55.epil = load ptr, ptr %i.bd, align 8, !tbaa !37
  %i.be = mul nsw i32 %.val51.val.epil, %.val50.epil
  %i.bf = add nsw i32 %i.be, %i.aa
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %.val51.val55.epil, i64 %i.bg
  store ptr %i.az, ptr %i.bh, align 8, !tbaa !47
  br label %.critedge.preheader

.critedge.preheader:                              ; preds = %.epil.preheader, %.critedge.preheader.loopexit.unr-lcssa, %Abc_Clock.exit..critedge.preheader_crit_edge
  %i.bi = phi ptr [ %.pre, %Abc_Clock.exit..critedge.preheader_crit_edge ], [ %i.aq, %.critedge.preheader.loopexit.unr-lcssa ], [ %i.aq, %.epil.preheader ] ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 4
  %.val60 = load i32, ptr %i.bj, align 4, !tbaa !52 ; 2 uses
  %i.bk = icmp slt i32 %i.am, %.val60
  br i1 %i.bk, label %.lr.ph70, label %.critedge2

.lr.ph70:                                         ; preds = %.critedge.preheader
  %i.bl = getelementptr i8, ptr %i.bi, i64 8
  %.val57 = load ptr, ptr %i.bl, align 8, !tbaa !49
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 116
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !53
  %i.bo = getelementptr i8, ptr %i.h, i64 24
  %.val61 = load ptr, ptr %i.bo, align 8, !tbaa !54
  %i.bp = getelementptr i8, ptr %.val61, i64 8
  %.val61.val = load ptr, ptr %i.bp, align 8, !tbaa !49
  %i.bq = sext i32 %i.am to i64
  %i.br = sext i32 %i.bn to i64
  %i.bs = add i32 %.val44, %.val60
  %i.bt = sub i32 %i.bs, %.val41
  %wide.trip.count79 = zext i32 %i.bt to i64
  %invariant.gep81 = getelementptr [8 x i8], ptr %.val61.val, i64 %i.br
  br label %.critedge

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.val58, i64 %indvars.iv
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !51 ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bw = load ptr, ptr %gep, align 8, !tbaa !51
  %i.bx = getelementptr i8, ptr %i.bv, i64 36
  %.val50 = load i32, ptr %i.bx, align 4, !tbaa !45
  %i.by = getelementptr i8, ptr %i.bv, i64 40
  %.val51 = load ptr, ptr %i.by, align 8, !tbaa !46 ; 2 uses
  %i.bz = getelementptr i8, ptr %.val51, i64 24
  %.val51.val = load i32, ptr %i.bz, align 8, !tbaa !39
  %i.ca = getelementptr i8, ptr %.val51, i64 32
  %.val51.val55 = load ptr, ptr %i.ca, align 8, !tbaa !37
  %i.cb = mul nsw i32 %.val51.val, %.val50
  %i.cc = add nsw i32 %i.cb, %i.aa
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %.val51.val55, i64 %i.cd
  store ptr %i.bw, ptr %i.ce, align 8, !tbaa !47
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.val58, i64 %indvars.iv.next
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !51 ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.ch = load ptr, ptr %gep.1, align 8, !tbaa !51
  %i.ci = getelementptr i8, ptr %i.cg, i64 36
  %.val50.1 = load i32, ptr %i.ci, align 4, !tbaa !45
  %i.cj = getelementptr i8, ptr %i.cg, i64 40
  %.val51.1 = load ptr, ptr %i.cj, align 8, !tbaa !46 ; 2 uses
  %i.ck = getelementptr i8, ptr %.val51.1, i64 24
  %.val51.val.1 = load i32, ptr %i.ck, align 8, !tbaa !39
  %i.cl = getelementptr i8, ptr %.val51.1, i64 32
  %.val51.val55.1 = load ptr, ptr %i.cl, align 8, !tbaa !37
  %i.cm = mul nsw i32 %.val51.val.1, %.val50.1
  %i.cn = add nsw i32 %i.cm, %i.aa
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %.val51.val55.1, i64 %i.co
  store ptr %i.ch, ptr %i.cp, align 8, !tbaa !47
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge.preheader.loopexit.unr-lcssa, label %bb.c, !llvm.loop !55

.critedge:                                        ; preds = %.lr.ph70, %.critedge
  %indvars.iv74 = phi i64 [ 0, %.lr.ph70 ], [ %indvars.iv.next75, %.critedge ] ; 2 uses
  %indvars.iv72 = phi i64 [ %i.bq, %.lr.ph70 ], [ %indvars.iv.next73, %.critedge ] ; 2 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %.val57, i64 %indvars.iv72
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !51 ; 2 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %gep82 = getelementptr [8 x i8], ptr %invariant.gep81, i64 %indvars.iv74
  %i.cs = load ptr, ptr %gep82, align 8, !tbaa !51
  %i.ct = getelementptr i8, ptr %i.cs, i64 8
  %.val62 = load ptr, ptr %i.ct, align 8, !tbaa !57
  %i.cu = getelementptr i8, ptr %i.cr, i64 36
  %.val48 = load i32, ptr %i.cu, align 4, !tbaa !45
  %i.cv = getelementptr i8, ptr %i.cr, i64 40
  %.val49 = load ptr, ptr %i.cv, align 8, !tbaa !46 ; 2 uses
  %i.cw = getelementptr i8, ptr %.val49, i64 24
  %.val49.val = load i32, ptr %i.cw, align 8, !tbaa !39
  %i.cx = getelementptr i8, ptr %.val49, i64 32
  %.val49.val56 = load ptr, ptr %i.cx, align 8, !tbaa !37
  %i.cy = mul nsw i32 %.val49.val, %.val48
  %i.cz = add nsw i32 %i.cy, %i.aa
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %.val49.val56, i64 %i.da
  store ptr %.val62, ptr %i.db, align 8, !tbaa !47
  %indvars.iv.next73 = add nsw i64 %indvars.iv72, 1
  %exitcond80.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count79
  br i1 %exitcond80.not, label %.critedge2, label %.critedge, !llvm.loop !58

.critedge2:                                       ; preds = %.critedge, %.critedge.preheader
  %i.dc = load ptr, ptr %i.f, align 8, !tbaa !12
  call void @Aig_ManStop(ptr noundef %i.dc) #16
  store ptr %i.h, ptr %i.f, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.dd = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #16
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %Abc_Clock.exit64, label %bb.d

bb.d:                                             ; preds = %.critedge2
  %i.df = load i64, ptr %1, align 8, !tbaa !8
  %i.dg = mul nsw i64 %i.df, 1000000
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !11
  %i.dj = sdiv i64 %i.di, 1000
  %i.dk = add nsw i64 %i.dj, %i.dg
  br label %Abc_Clock.exit64

Abc_Clock.exit64:                                 ; preds = %.critedge2, %bb.d
  %.0.i63 = phi i64 [ %i.dk, %bb.d ], [ -1, %.critedge2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  %i.dl = add i64 %.0.i63, %.0.i.neg
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !59
  %i.do = add nsw i64 %i.dl, %i.dn
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !59
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @Dar_ManRewriteDefault(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @Aig_ManStop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define ptr @Fra_FramesWithClasses(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %.val139 = load ptr, ptr %i.c, align 8, !tbaa !60
  %i.d = getelementptr i8, ptr %.val139, i64 4
  %.val139.val = load i32, ptr %i.d, align 4, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !39
  %i.g = mul nsw i32 %i.f, %.val139.val
  %i.h = tail call ptr @Aig_ManStart(i32 noundef %i.g) #16 ; 16 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !27   ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !61   ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %Abc_UtilStrsav.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.j) #17
  %i.l = add i64 %i.k, 1
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #18 ; 2 uses
  %i.n = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull readonly dereferenceable(1) %i.j) #16 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %bb.a, %bb.b
  %i.o = phi ptr [ %i.m, %bb.b ], [ null, %bb.a ]
  store ptr %i.o, ptr %i.h, align 8, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !62   ; 3 uses
  %.not.i148 = icmp eq ptr %i.q, null
  br i1 %.not.i148, label %Abc_UtilStrsav.exit149, label %bb.c

bb.c:                                             ; preds = %Abc_UtilStrsav.exit
  %i.r = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.q) #17
  %i.s = add i64 %i.r, 1
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #18 ; 2 uses
  %i.u = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull readonly dereferenceable(1) %i.q) #16 ; 0 uses
  br label %Abc_UtilStrsav.exit149

Abc_UtilStrsav.exit149:                           ; preds = %Abc_UtilStrsav.exit, %bb.c
  %i.v = phi ptr [ %i.t, %bb.c ], [ null, %Abc_UtilStrsav.exit ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !62
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.y = load i32, ptr %i.x, align 8, !tbaa !29   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  store i32 %i.y, ptr %i.z, align 8, !tbaa !29
  %i.aa = load i32, ptr %i.e, align 8, !tbaa !39  ; 7 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Abc_UtilStrsav.exit149
  %i.ac = getelementptr i8, ptr %i.i, i64 48      ; 3 uses
  %i.ad = getelementptr i8, ptr %i.h, i64 48
  %.val113.pre = load ptr, ptr %i.ad, align 8, !tbaa !40 ; 3 uses
  %xtraiter = and i32 %i.aa, 1
  %i.ae = icmp eq i32 %i.aa, 1
  br i1 %i.ae, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %i.aa, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %.0181 = phi i32 [ 0, %.lr.ph.new ], [ %i.aw, %bb.d ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.d ]
  %.val114 = load ptr, ptr %i.ac, align 8, !tbaa !40 ; 2 uses
  %i.af = getelementptr i8, ptr %.val114, i64 36
  %.val123 = load i32, ptr %i.af, align 4, !tbaa !45
  %i.ag = getelementptr i8, ptr %.val114, i64 40
  %.val124 = load ptr, ptr %i.ag, align 8, !tbaa !46 ; 2 uses
  %i.ah = getelementptr i8, ptr %.val124, i64 24
  %.val124.val = load i32, ptr %i.ah, align 8, !tbaa !39
  %i.ai = getelementptr i8, ptr %.val124, i64 32
  %.val124.val125 = load ptr, ptr %i.ai, align 8, !tbaa !37
  %i.aj = mul nsw i32 %.val124.val, %.val123
  %i.ak = add nsw i32 %i.aj, %.0181
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %.val124.val125, i64 %i.al
  store ptr %.val113.pre, ptr %i.am, align 8, !tbaa !47
  %i.an = or disjoint i32 %.0181, 1
  %.val114.1 = load ptr, ptr %i.ac, align 8, !tbaa !40 ; 2 uses
  %i.ao = getelementptr i8, ptr %.val114.1, i64 36
  %.val123.1 = load i32, ptr %i.ao, align 4, !tbaa !45
  %i.ap = getelementptr i8, ptr %.val114.1, i64 40
  %.val124.1 = load ptr, ptr %i.ap, align 8, !tbaa !46 ; 2 uses
  %i.aq = getelementptr i8, ptr %.val124.1, i64 24
  %.val124.val.1 = load i32, ptr %i.aq, align 8, !tbaa !39
  %i.ar = getelementptr i8, ptr %.val124.1, i64 32
  %.val124.val125.1 = load ptr, ptr %i.ar, align 8, !tbaa !37
  %i.as = mul nsw i32 %.val124.val.1, %.val123.1
  %i.at = add nsw i32 %i.as, %i.an
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %.val124.val125.1, i64 %i.au
  store ptr %.val113.pre, ptr %i.av, align 8, !tbaa !47
  %i.aw = add nuw nsw i32 %.0181, 2               ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.preheader.unr-lcssa, label %bb.d, !llvm.loop !63

.preheader.preheader.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.preheader.unr-lcssa, %.lr.ph
  %.0181.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.aw, %.preheader.preheader.unr-lcssa ]
  %lcmp.mod268 = trunc i32 %i.aa to i1
  tail call void @llvm.assume(i1 %lcmp.mod268)
  %.val114.epil = load ptr, ptr %i.ac, align 8, !tbaa !40 ; 2 uses
  %i.ax = getelementptr i8, ptr %.val114.epil, i64 36
  %.val123.epil = load i32, ptr %i.ax, align 4, !tbaa !45
  %i.ay = getelementptr i8, ptr %.val114.epil, i64 40
  %.val124.epil = load ptr, ptr %i.ay, align 8, !tbaa !46 ; 2 uses
  %i.az = getelementptr i8, ptr %.val124.epil, i64 24
  %.val124.val.epil = load i32, ptr %i.az, align 8, !tbaa !39
  %i.ba = getelementptr i8, ptr %.val124.epil, i64 32
  %.val124.val125.epil = load ptr, ptr %i.ba, align 8, !tbaa !37
  %i.bb = mul nsw i32 %.val124.val.epil, %.val123.epil
  %i.bc = add nsw i32 %i.bb, %.0181.epil.init
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %.val124.val125.epil, i64 %i.bd
  store ptr %.val113.pre, ptr %i.be, align 8, !tbaa !47
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.preheader.unr-lcssa, %.epil.preheader
  br label %.preheader

end_hunk_0
begin_hunk_1_@Fra_FramesWithClasses:bb.a
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !54
  %i.gu = getelementptr i8, ptr %i.gp, i64 140
  %.val4.i = load i32, ptr %i.gu, align 4, !tbaa !28
  %invariant.op = sub i32 %.val4.i, %.val109
  %i.gv = getelementptr i8, ptr %i.gt, i64 8
  %.val3.i170 = load ptr, ptr %i.gv, align 8, !tbaa !49
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !48
  %i.gy = getelementptr i8, ptr %i.gp, i64 136
  %.val.i171 = load i32, ptr %i.gy, align 8, !tbaa !28
  %invariant.op199 = sub i32 %.val.i171, %.val109
  %i.gz = getelementptr i8, ptr %i.gx, i64 8
  %.val4.i173 = load ptr, ptr %i.gz, align 8, !tbaa !49
  %i.ha = add nuw nsw i32 %.2201, 1               ; 2 uses
  %wide.trip.count = zext nneg i32 %.val109 to i64
  br label %.critedge8

.lr.ph197:                                        ; preds = %.critedge4.preheader, %Fra_FramesConstrainNode.exit168
  %indvars.iv215 = phi i64 [ %indvars.iv.next216, %Fra_FramesConstrainNode.exit168 ], [ 0, %.critedge4.preheader ] ; 2 uses
  %i.hb = phi ptr [ %i.le, %Fra_FramesConstrainNode.exit168 ], [ %i.dx, %.critedge4.preheader ]
  %i.hc = getelementptr i8, ptr %i.hb, i64 8
  %.val131 = load ptr, ptr %i.hc, align 8, !tbaa !49
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %.val131, i64 %indvars.iv215
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !51 ; 6 uses
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %Fra_FramesConstrainNode.exit168, label %bb.h

bb.h:                                             ; preds = %.lr.ph197
  %i.hg = getelementptr i8, ptr %i.he, i64 24     ; 2 uses
  %.val143 = load i64, ptr %i.hg, align 8
  %i.hh = trunc i64 %.val143 to i32
  %i.hi = and i32 %i.hh, 7
  %i.hj = add nsw i32 %i.hi, -7
  %narrow.i = icmp ult i32 %i.hj, -2
  br i1 %narrow.i, label %Fra_FramesConstrainNode.exit168, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.hk = getelementptr i8, ptr %i.he, i64 8
  %.val145 = load ptr, ptr %i.hk, align 8, !tbaa !57
  %i.hl = ptrtoint ptr %.val145 to i64            ; 2 uses
  %i.hm = and i64 %i.hl, -2                       ; 2 uses
  %.not.i150 = icmp eq i64 %i.hm, 0
  br i1 %.not.i150, label %Fra_ObjChild0Fra.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.hn = inttoptr i64 %i.hm to ptr               ; 2 uses
  %i.ho = getelementptr i8, ptr %i.hn, i64 36
  %.val.i = load i32, ptr %i.ho, align 4, !tbaa !45
  %i.hp = getelementptr i8, ptr %i.hn, i64 40
  %.val3.i = load ptr, ptr %i.hp, align 8, !tbaa !46 ; 2 uses
  %i.hq = getelementptr i8, ptr %.val3.i, i64 24
  %.val3.val.i = load i32, ptr %i.hq, align 8, !tbaa !39
  %i.hr = getelementptr i8, ptr %.val3.i, i64 32
  %.val3.val4.i = load ptr, ptr %i.hr, align 8, !tbaa !37
  %i.hs = mul nsw i32 %.val3.val.i, %.val.i
  %i.ht = add nsw i32 %i.hs, %.2201
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds [8 x i8], ptr %.val3.val4.i, i64 %i.hu
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !47
  %i.hx = and i64 %i.hl, 1
  %i.hy = ptrtoint ptr %i.hw to i64
  %i.hz = xor i64 %i.hx, %i.hy
  %i.ia = inttoptr i64 %i.hz to ptr
  br label %Fra_ObjChild0Fra.exit

Fra_ObjChild0Fra.exit:                            ; preds = %bb.i, %bb.j
  %i.ib = phi ptr [ %i.ia, %bb.j ], [ null, %bb.i ]
  %i.ic = getelementptr i8, ptr %i.he, i64 16
  %.val146 = load ptr, ptr %i.ic, align 8, !tbaa !71
  %i.id = ptrtoint ptr %.val146 to i64            ; 2 uses
  %i.ie = and i64 %i.id, -2                       ; 2 uses
  %.not.i151 = icmp eq i64 %i.ie, 0
  br i1 %.not.i151, label %Fra_ObjChild1Fra.exit, label %bb.k

bb.k:                                             ; preds = %Fra_ObjChild0Fra.exit
  %i.if = inttoptr i64 %i.ie to ptr               ; 2 uses
  %i.ig = getelementptr i8, ptr %i.if, i64 36
  %.val.i152 = load i32, ptr %i.ig, align 4, !tbaa !45
  %i.ih = getelementptr i8, ptr %i.if, i64 40
  %.val3.i153 = load ptr, ptr %i.ih, align 8, !tbaa !46 ; 2 uses
  %i.ii = getelementptr i8, ptr %.val3.i153, i64 24
  %.val3.val.i154 = load i32, ptr %i.ii, align 8, !tbaa !39
  %i.ij = getelementptr i8, ptr %.val3.i153, i64 32
  %.val3.val4.i155 = load ptr, ptr %i.ij, align 8, !tbaa !37
  %i.ik = mul nsw i32 %.val3.val.i154, %.val.i152
  %i.il = add nsw i32 %i.ik, %.2201
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [8 x i8], ptr %.val3.val4.i155, i64 %i.im
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !47
  %i.ip = and i64 %i.id, 1
  %i.iq = ptrtoint ptr %i.io to i64
  %i.ir = xor i64 %i.ip, %i.iq
  %i.is = inttoptr i64 %i.ir to ptr
  br label %Fra_ObjChild1Fra.exit

Fra_ObjChild1Fra.exit:                            ; preds = %Fra_ObjChild0Fra.exit, %bb.k
  %i.it = phi ptr [ %i.is, %bb.k ], [ null, %Fra_ObjChild0Fra.exit ]
  %i.iu = tail call ptr @Aig_And(ptr noundef nonnull %i.h, ptr noundef %i.ib, ptr noundef %i.it) #16
  %i.iv = getelementptr i8, ptr %i.he, i64 36
  %.val117 = load i32, ptr %i.iv, align 4, !tbaa !45 ; 3 uses
  %i.iw = getelementptr i8, ptr %i.he, i64 40     ; 2 uses
  %.val118 = load ptr, ptr %i.iw, align 8, !tbaa !46 ; 2 uses
  %i.ix = getelementptr i8, ptr %.val118, i64 24
  %.val118.val = load i32, ptr %i.ix, align 8, !tbaa !39
  %i.iy = getelementptr i8, ptr %.val118, i64 32
  %.val118.val128 = load ptr, ptr %i.iy, align 8, !tbaa !37
  %i.iz = mul nsw i32 %.val118.val, %.val117
  %i.ja = add nsw i32 %i.iz, %.2201
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [8 x i8], ptr %.val118.val128, i64 %i.jb
  store ptr %i.iu, ptr %i.jc, align 8, !tbaa !47
  %.val22.i157 = load ptr, ptr %i.iw, align 8, !tbaa !46 ; 3 uses
  %i.jd = getelementptr i8, ptr %.val22.i157, i64 48
  %.val22.val.i158 = load ptr, ptr %i.jd, align 8, !tbaa !67
  %i.je = getelementptr i8, ptr %.val22.val.i158, i64 8
  %.val22.val.val.i159 = load ptr, ptr %i.je, align 8, !tbaa !68
  %i.jf = sext i32 %.val117 to i64
  %i.jg = getelementptr inbounds [8 x i8], ptr %.val22.val.val.i159, i64 %i.jf
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !47 ; 4 uses
  %i.ji = icmp eq ptr %i.jh, null
  br i1 %i.ji, label %Fra_FramesConstrainNode.exit168, label %bb.l

bb.l:                                             ; preds = %Fra_ObjChild1Fra.exit
  %i.jj = getelementptr i8, ptr %.val22.i157, i64 24
  %.val26.val.i160 = load i32, ptr %i.jj, align 8, !tbaa !39
  %i.jk = getelementptr i8, ptr %.val22.i157, i64 32
  %.val26.val27.i161 = load ptr, ptr %i.jk, align 8, !tbaa !37
  %i.jl = mul nsw i32 %.val26.val.i160, %.val117
  %i.jm = add nsw i32 %i.jl, %.2201
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds [8 x i8], ptr %.val26.val27.i161, i64 %i.jn ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !47 ; 2 uses
  %i.jq = getelementptr i8, ptr %i.jh, i64 36
  %.val23.i162 = load i32, ptr %i.jq, align 4, !tbaa !45
  %i.jr = getelementptr i8, ptr %i.jh, i64 40
  %.val24.i163 = load ptr, ptr %i.jr, align 8, !tbaa !46 ; 2 uses
  %i.js = getelementptr i8, ptr %.val24.i163, i64 24
  %.val24.val.i164 = load i32, ptr %i.js, align 8, !tbaa !39
  %i.jt = getelementptr i8, ptr %.val24.i163, i64 32
  %.val24.val28.i165 = load ptr, ptr %i.jt, align 8, !tbaa !37
  %i.ju = mul nsw i32 %.val24.val.i164, %.val23.i162
  %i.jv = add nsw i32 %i.ju, %.2201
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr inbounds [8 x i8], ptr %.val24.val28.i165, i64 %i.jw
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !47 ; 2 uses
  %i.jz = ptrtoint ptr %i.jp to i64
  %i.ka = ptrtoint ptr %i.jy to i64               ; 2 uses
  %i.kb = xor i64 %i.ka, %i.jz
  %i.kc = icmp ult i64 %i.kb, 2
  br i1 %i.kc, label %Fra_FramesConstrainNode.exit168, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.kd = load i64, ptr %i.hg, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jh, i64 24
  %i.kf = load i64, ptr %i.ke, align 8
  %i.kg = xor i64 %i.kf, %i.kd
  %i.kh = lshr i64 %i.kg, 3
  %i.ki = and i64 %i.kh, 1
  %i.kj = xor i64 %i.ki, %i.ka
  %i.kk = inttoptr i64 %i.kj to ptr
  store ptr %i.kk, ptr %i.jo, align 8, !tbaa !47
  %i.kl = tail call ptr @Aig_Exor(ptr noundef nonnull %i.h, ptr noundef %i.jp, ptr noundef %i.jy) #16 ; 2 uses
  %.not.i.i166 = icmp eq ptr %i.kl, null
  br i1 %.not.i.i166, label %Aig_ObjPhaseReal.exit.i167, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.km = ptrtoint ptr %i.kl to i64               ; 3 uses
  %i.kn = and i64 %i.km, -2
  %i.ko = inttoptr i64 %i.kn to ptr
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  %i.kq = load i64, ptr %i.kp, align 8
  %i.kr = trunc i64 %i.kq to i32
  %i.ks = lshr i32 %i.kr, 3
  %i.kt = trunc i64 %i.km to i32
  %i.ku = xor i32 %i.ks, %i.kt
  %i.kv = and i32 %i.ku, 1
  %i.kw = xor i32 %i.kv, 1
  %i.kx = zext nneg i32 %i.kw to i64
  %i.ky = xor i64 %i.kx, %i.km
  %i.kz = inttoptr i64 %i.ky to ptr
  br label %Aig_ObjPhaseReal.exit.i167

Aig_ObjPhaseReal.exit.i167:                       ; preds = %bb.n, %bb.m
  %i.la = phi ptr [ %i.kz, %bb.n ], [ null, %bb.m ]
  %i.lb = tail call ptr @Aig_ObjCreateCo(ptr noundef nonnull %i.h, ptr noundef %i.la) #16 ; 0 uses
  br label %Fra_FramesConstrainNode.exit168

Fra_FramesConstrainNode.exit168:                  ; preds = %Aig_ObjPhaseReal.exit.i167, %bb.l, %Fra_ObjChild1Fra.exit, %bb.h, %.lr.ph197
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 2 uses
  %i.lc = load ptr, ptr %i.a, align 8, !tbaa !27  ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 32
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !60 ; 2 uses
  %i.lf = getelementptr i8, ptr %i.le, i64 4
  %.val136 = load i32, ptr %i.lf, align 4, !tbaa !52
  %i.lg = sext i32 %.val136 to i64
  %i.lh = icmp slt i64 %indvars.iv.next216, %i.lg
  br i1 %i.lh, label %.lr.ph197, label %.critedge6.preheader, !llvm.loop !72

.critedge8:                                       ; preds = %.critedge8.lr.ph, %Fra_ObjChild0Fra.exit179
  %indvars.iv218 = phi i64 [ 0, %.critedge8.lr.ph ], [ %indvars.iv.next219, %Fra_ObjChild0Fra.exit179 ] ; 2 uses
  %i.li = trunc nuw nsw i64 %indvars.iv218 to i32 ; 2 uses
  %.reass = add i32 %invariant.op, %i.li
  %i.lj = sext i32 %.reass to i64
  %i.lk = getelementptr inbounds [8 x i8], ptr %.val3.i170, i64 %i.lj
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !51
  %.reass200 = add i32 %invariant.op199, %i.li
  %i.lm = sext i32 %.reass200 to i64
  %i.ln = getelementptr inbounds [8 x i8], ptr %.val4.i173, i64 %i.lm
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !51 ; 2 uses
  %i.lp = getelementptr i8, ptr %i.ll, i64 8
  %.val144 = load ptr, ptr %i.lp, align 8, !tbaa !57
  %i.lq = ptrtoint ptr %.val144 to i64            ; 2 uses
  %i.lr = and i64 %i.lq, -2                       ; 2 uses
  %.not.i174 = icmp eq i64 %i.lr, 0
  br i1 %.not.i174, label %Fra_ObjChild0Fra.exit179, label %bb.o

bb.o:                                             ; preds = %.critedge8
  %i.ls = inttoptr i64 %i.lr to ptr               ; 2 uses
  %i.lt = getelementptr i8, ptr %i.ls, i64 36
  %.val.i175 = load i32, ptr %i.lt, align 4, !tbaa !45
  %i.lu = getelementptr i8, ptr %i.ls, i64 40
  %.val3.i176 = load ptr, ptr %i.lu, align 8, !tbaa !46 ; 2 uses
  %i.lv = getelementptr i8, ptr %.val3.i176, i64 24
  %.val3.val.i177 = load i32, ptr %i.lv, align 8, !tbaa !39
  %i.lw = getelementptr i8, ptr %.val3.i176, i64 32
  %.val3.val4.i178 = load ptr, ptr %i.lw, align 8, !tbaa !37
  %i.lx = mul nsw i32 %.val3.val.i177, %.val.i175
  %i.ly = add nsw i32 %i.lx, %.2201
  %i.lz = sext i32 %i.ly to i64
  %i.ma = getelementptr inbounds [8 x i8], ptr %.val3.val4.i178, i64 %i.lz
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !47
  %i.mc = and i64 %i.lq, 1
  %i.md = ptrtoint ptr %i.mb to i64
  %i.me = xor i64 %i.mc, %i.md
  %i.mf = inttoptr i64 %i.me to ptr
  br label %Fra_ObjChild0Fra.exit179

Fra_ObjChild0Fra.exit179:                         ; preds = %.critedge8, %bb.o
  %i.mg = phi ptr [ %i.mf, %bb.o ], [ null, %.critedge8 ]
  %i.mh = getelementptr i8, ptr %i.lo, i64 36
  %.val115 = load i32, ptr %i.mh, align 4, !tbaa !45
  %i.mi = getelementptr i8, ptr %i.lo, i64 40
  %.val116 = load ptr, ptr %i.mi, align 8, !tbaa !46 ; 2 uses
  %i.mj = getelementptr i8, ptr %.val116, i64 24
  %.val116.val = load i32, ptr %i.mj, align 8, !tbaa !39
  %i.mk = getelementptr i8, ptr %.val116, i64 32
  %.val116.val129 = load ptr, ptr %i.mk, align 8, !tbaa !37
  %i.ml = mul nsw i32 %.val116.val, %.val115
  %i.mm = add nsw i32 %i.ha, %i.ml
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr inbounds [8 x i8], ptr %.val116.val129, i64 %i.mn
  store ptr %i.mg, ptr %i.mo, align 8, !tbaa !47
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %exitcond221.not = icmp eq i64 %indvars.iv.next219, %wide.trip.count
  br i1 %exitcond221.not, label %.critedge2, label %.critedge8, !llvm.loop !73

.critedge2:                                       ; preds = %Fra_ObjChild0Fra.exit179, %.critedge6.preheader..critedge2_crit_edge
  %.pre-phi = phi i32 [ %.pre233, %.critedge6.preheader..critedge2_crit_edge ], [ %i.ha, %Fra_ObjChild0Fra.exit179 ] ; 2 uses
  %i.mp = load i32, ptr %i.e, align 8, !tbaa !39
  %i.mq = add nsw i32 %i.mp, -1
  %i.mr = icmp slt i32 %.pre-phi, %i.mq
  br i1 %i.mr, label %.lr.ph202, label %.critedge2._crit_edge, !llvm.loop !74

.critedge2._crit_edge:                            ; preds = %.critedge2, %.critedge2.preheader
  %.val108 = phi i32 [ %.val110.pre, %.critedge2.preheader ], [ %.val109, %.critedge2 ]
  %i.ms = phi ptr [ %i.cs, %.critedge2.preheader ], [ %i.gp, %.critedge2 ] ; 2 uses
  %i.mt = getelementptr i8, ptr %i.h, i64 140
  %.val147 = load i32, ptr %i.mt, align 4, !tbaa !28
  %i.mu = getelementptr inbounds nuw i8, ptr %i.h, i64 116
  store i32 %.val147, ptr %i.mu, align 4, !tbaa !53
  %i.mv = getelementptr i8, ptr %i.ms, i64 136
  %.val = load i32, ptr %i.mv, align 8, !tbaa !28
  %i.mw = sub nsw i32 %.val, %.val108             ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !48 ; 2 uses
  %i.mz = getelementptr i8, ptr %i.my, i64 4
  %.val135203 = load i32, ptr %i.mz, align 4, !tbaa !52
  %i.na = icmp slt i32 %i.mw, %.val135203
  br i1 %i.na, label %.lr.ph206.preheader, label %.critedge10

.lr.ph206.preheader:                              ; preds = %.critedge2._crit_edge
  %i.nb = sext i32 %i.mw to i64
  br label %.lr.ph206

.lr.ph206:                                        ; preds = %.lr.ph206.preheader, %.lr.ph206
  %indvars.iv222 = phi i64 [ %i.nb, %.lr.ph206.preheader ], [ %indvars.iv.next223, %.lr.ph206 ] ; 2 uses
  %i.nc = phi ptr [ %i.my, %.lr.ph206.preheader ], [ %i.nu, %.lr.ph206 ]
  %i.nd = getelementptr i8, ptr %i.nc, i64 8
  %.val130 = load ptr, ptr %i.nd, align 8, !tbaa !49
  %i.ne = getelementptr inbounds [8 x i8], ptr %.val130, i64 %indvars.iv222
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !51 ; 2 uses
  %i.ng = load i32, ptr %i.e, align 8, !tbaa !39
  %i.nh = add nsw i32 %i.ng, -1
  %i.ni = getelementptr i8, ptr %i.nf, i64 36
  %.val140 = load i32, ptr %i.ni, align 4, !tbaa !45
  %i.nj = getelementptr i8, ptr %i.nf, i64 40
  %.val141 = load ptr, ptr %i.nj, align 8, !tbaa !46 ; 2 uses
  %i.nk = getelementptr i8, ptr %.val141, i64 24
  %.val141.val = load i32, ptr %i.nk, align 8, !tbaa !39
  %i.nl = getelementptr i8, ptr %.val141, i64 32
  %.val141.val142 = load ptr, ptr %i.nl, align 8, !tbaa !37
  %i.nm = mul nsw i32 %.val141.val, %.val140
  %i.nn = add nsw i32 %i.nh, %i.nm
  %i.no = sext i32 %i.nn to i64
  %i.np = getelementptr inbounds [8 x i8], ptr %.val141.val142, i64 %i.no
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !47
  %i.nr = tail call ptr @Aig_ObjCreateCo(ptr noundef nonnull %i.h, ptr noundef %i.nq) #16 ; 0 uses
  %indvars.iv.next223 = add nsw i64 %indvars.iv222, 1 ; 2 uses
  %i.ns = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !48 ; 2 uses
  %i.nv = getelementptr i8, ptr %i.nu, i64 4
  %.val135 = load i32, ptr %i.nv, align 4, !tbaa !52
  %i.nw = sext i32 %.val135 to i64
  %i.nx = icmp slt i64 %indvars.iv.next223, %i.nw
  br i1 %i.nx, label %.lr.ph206, label %.critedge10, !llvm.loop !75

.critedge10:                                      ; preds = %.lr.ph206, %.critedge2._crit_edge
  %i.ny = tail call i32 @Aig_ManCleanup(ptr noundef nonnull %i.h) #16 ; 0 uses
  ret ptr %i.h
}

declare ptr @Aig_ManStart(i32 noundef) local_unnamed_addr #2

declare ptr @Aig_ObjCreateCi(ptr noundef) local_unnamed_addr #2

declare ptr @Aig_And(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Aig_ObjCreateCo(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Aig_ManCleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @Fra_FramesAddMore(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val107123 = load i32, ptr %i.c, align 4, !tbaa !52 ; 2 uses
  %i.d = icmp sgt i32 %.val107123, 0
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.e = phi ptr [ %i.k, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val101 = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.val101, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51   ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr %i.h, ptr %i.j, align 8, !tbaa !46
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !60
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.k = phi ptr [ %.pre, %bb.b ], [ %i.e, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %.val107 = load i32, ptr %i.l, align 4, !tbaa !52 ; 2 uses
  %i.m = sext i32 %.val107 to i64
  %i.n = icmp slt i64 %indvars.iv.next, %i.m
  br i1 %i.n, label %.lr.ph, label %.critedge, !llvm.loop !76

.critedge:                                        ; preds = %bb.c, %bb.a
  %.val107.lcssa = phi i32 [ %.val107123, %bb.a ], [ %.val107, %bb.c ]
  %i.o = getelementptr i8, ptr %0, i64 104        ; 4 uses
  %.val95 = load i32, ptr %i.o, align 8, !tbaa !29
  %i.p = sext i32 %.val95 to i64
  %i.q = shl nsw i64 %i.p, 3
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.q) #18 ; 4 uses
  %i.s = icmp sgt i32 %1, 0
  br i1 %i.s, label %.lr.ph142, label %._crit_edge

.lr.ph142:                                        ; preds = %.critedge
  %i.t = getelementptr i8, ptr %0, i64 140        ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.v = getelementptr i8, ptr %0, i64 136        ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.x = sext i32 %.val107.lcssa to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph142, %.critedge10
  %.0141 = phi i32 [ 0, %.lr.ph142 ], [ %i.eb, %.critedge10 ]
  %.val114 = load i32, ptr %i.t, align 4, !tbaa !28
  %.val94 = load i32, ptr %i.o, align 8, !tbaa !29 ; 2 uses
  %i.y = sub nsw i32 %.val114, %.val94            ; 2 uses
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !54   ; 3 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 4
  %.val106125 = load i32, ptr %i.aa, align 4, !tbaa !52
  %i.ab = icmp slt i32 %i.y, %.val106125
  br i1 %i.ab, label %.lr.ph127.preheader, label %.critedge2

.lr.ph127.preheader:                              ; preds = %bb.d
  %i.ac = sext i32 %i.y to i64
  br label %.lr.ph127

.lr.ph127:                                        ; preds = %.lr.ph127.preheader, %.lr.ph127
  %indvars.iv145 = phi i64 [ %i.ac, %.lr.ph127.preheader ], [ %indvars.iv.next146, %.lr.ph127 ] ; 2 uses
  %i.ad = phi ptr [ %i.z, %.lr.ph127.preheader ], [ %i.ai, %.lr.ph127 ]
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %.val100 = load ptr, ptr %i.ae, align 8, !tbaa !49
  %i.af = getelementptr inbounds [8 x i8], ptr %.val100, i64 %indvars.iv145
end_hunk_1
