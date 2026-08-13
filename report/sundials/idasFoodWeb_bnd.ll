inline.NumInlined: 28
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@main:bb.a
check_retval.exit74:                              ; preds = %bb.f
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.au = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.at, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.3, i32 noundef %i.ar) #13 ; 0 uses
  br label %bb.v

bb.g:                                             ; preds = %bb.f
  %i.av = call i32 @IDASetId(ptr noundef nonnull %i.an, ptr noundef nonnull %i.ai) #12 ; 2 uses
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %check_retval.exit76, label %bb.h

check_retval.exit76:                              ; preds = %bb.g
  %i.ax = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.ay = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ax, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.4, i32 noundef %i.av) #13 ; 0 uses
  br label %bb.v

bb.h:                                             ; preds = %bb.g
  %i.az = call i32 @IDAInit(ptr noundef nonnull %i.an, ptr noundef nonnull @resweb, double noundef 0.000000e+00, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ae) #12 ; 2 uses
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %check_retval.exit78, label %bb.i

check_retval.exit78:                              ; preds = %bb.h
  %i.bb = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.bc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bb, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.5, i32 noundef %i.az) #13 ; 0 uses
  br label %bb.v

bb.i:                                             ; preds = %bb.h
  %i.bd = call i32 @IDASStolerances(ptr noundef nonnull %i.an, double noundef 1.000000e-05, double noundef 1.000000e-05) #12 ; 2 uses
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %check_retval.exit80, label %bb.j

check_retval.exit80:                              ; preds = %bb.i
  %i.bf = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.bg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bf, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.6, i32 noundef %i.bd) #13 ; 0 uses
  br label %bb.v

bb.j:                                             ; preds = %bb.i
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.bi = call ptr @SUNBandMatrix(i64 noundef 800, i64 noundef 40, i64 noundef 40, ptr noundef %i.bh) #12 ; 4 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %check_retval.exit82, label %bb.k

check_retval.exit82:                              ; preds = %bb.j
  %i.bk = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.bl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bk, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.7) #13 ; 0 uses
  br label %bb.v

bb.k:                                             ; preds = %bb.j
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.bn = call ptr @SUNLinSol_Band(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.bi, ptr noundef %i.bm) #12 ; 3 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %check_retval.exit84, label %bb.l

check_retval.exit84:                              ; preds = %bb.k
  %i.bp = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.bq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bp, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.8) #13 ; 0 uses
  br label %bb.v

bb.l:                                             ; preds = %bb.k
  %i.br = call i32 @IDASetLinearSolver(ptr noundef nonnull %i.an, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.bi) #12 ; 2 uses
  %i.bs = icmp slt i32 %i.br, 0
  br i1 %i.bs, label %check_retval.exit86, label %bb.m

check_retval.exit86:                              ; preds = %bb.l
  %i.bt = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.bu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bt, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.9, i32 noundef %i.br) #13 ; 0 uses
  br label %bb.v

bb.m:                                             ; preds = %bb.l
  %i.bv = call i32 @IDACalcIC(ptr noundef nonnull %i.an, i32 noundef 1, double noundef 1.000000e-03) #12 ; 2 uses
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %check_retval.exit88, label %bb.n

check_retval.exit88:                              ; preds = %bb.m
  %i.bx = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.by = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bx, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.10, i32 noundef %i.bv) #13 ; 0 uses
  br label %bb.v

bb.n:                                             ; preds = %bb.m
  call fastcc void @PrintHeader()
  call fastcc void @PrintOutput(ptr noundef nonnull %i.an, ptr noundef nonnull %i.aa, double noundef 0.000000e+00)
  %i.bz = call i32 @IDASolve(ptr noundef nonnull %i.an, double noundef 1.000000e-03, ptr noundef nonnull %i.b, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ae, i32 noundef 1) #12 ; 2 uses
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.n
  %.lcssa = phi i32 [ %i.bz, %bb.n ], [ %i.ce, %bb.p ], [ %i.ch, %bb.q ], [ %i.ck, %bb.r ], [ %i.cn, %bb.s ], [ %i.cq, %bb.t ] ; 2 uses
  %i.cb = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.cc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cb, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.11, i32 noundef %.lcssa) #13 ; 0 uses
  br label %bb.v

bb.p:                                             ; preds = %bb.n
  %i.cd = load double, ptr %i.b, align 8, !tbaa !26
  call fastcc void @PrintOutput(ptr noundef nonnull %i.an, ptr noundef nonnull %i.aa, double noundef %i.cd)
  %i.ce = call i32 @IDASolve(ptr noundef nonnull %i.an, double noundef 1.000000e-02, ptr noundef nonnull %i.b, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ae, i32 noundef 1) #12 ; 2 uses
  %i.cf = icmp slt i32 %i.ce, 0
  br i1 %i.cf, label %bb.o, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = load double, ptr %i.b, align 8, !tbaa !26
  call fastcc void @PrintOutput(ptr noundef nonnull %i.an, ptr noundef nonnull %i.aa, double noundef %i.cg)
  %i.ch = call i32 @IDASolve(ptr noundef nonnull %i.an, double noundef 1.000000e-01, ptr noundef nonnull %i.b, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ae, i32 noundef 1) #12 ; 2 uses
  %i.ci = icmp slt i32 %i.ch, 0
  br i1 %i.ci, label %bb.o, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = load double, ptr %i.b, align 8, !tbaa !26
  call fastcc void @PrintOutput(ptr noundef nonnull %i.an, ptr noundef nonnull %i.aa, double noundef %i.cj)
  %i.ck = call i32 @IDASolve(ptr noundef nonnull %i.an, double noundef 4.000000e-01, ptr noundef nonnull %i.b, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ae, i32 noundef 1) #12 ; 2 uses
  %i.cl = icmp slt i32 %i.ck, 0
  br i1 %i.cl, label %bb.o, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cm = load double, ptr %i.b, align 8, !tbaa !26
  call fastcc void @PrintOutput(ptr noundef nonnull %i.an, ptr noundef nonnull %i.aa, double noundef %i.cm)
  %i.cn = call i32 @IDASolve(ptr noundef nonnull %i.an, double noundef f0x3FE6666666666666, ptr noundef nonnull %i.b, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ae, i32 noundef 1) #12 ; 2 uses
  %i.co = icmp slt i32 %i.cn, 0
  br i1 %i.co, label %bb.o, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cp = load double, ptr %i.b, align 8, !tbaa !26
  call fastcc void @PrintOutput(ptr noundef nonnull %i.an, ptr noundef nonnull %i.aa, double noundef %i.cp)
  %i.cq = call i32 @IDASolve(ptr noundef nonnull %i.an, double noundef 1.000000e+00, ptr noundef nonnull %i.b, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ae, i32 noundef 1) #12 ; 2 uses
  %i.cr = icmp slt i32 %i.cq, 0
  br i1 %i.cr, label %bb.o, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cs = load double, ptr %i.b, align 8, !tbaa !26
  call fastcc void @PrintOutput(ptr noundef nonnull %i.an, ptr noundef nonnull %i.aa, double noundef %i.cs)
  call fastcc void @PrintFinalStats(ptr noundef nonnull %i.an)
  call void @IDAFree(ptr noundef nonnull %i.a) #12
  %i.ct = call i32 @SUNLinSolFree(ptr noundef nonnull %i.bn) #12 ; 0 uses
  call void @SUNMatDestroy(ptr noundef nonnull %i.bi) #12
  call void @N_VDestroy(ptr noundef nonnull %i.aa) #12
  call void @N_VDestroy(ptr noundef nonnull %i.ae) #12
  call void @N_VDestroy(ptr noundef nonnull %i.ai) #12
  %i.cu = load ptr, ptr %i.m, align 8, !tbaa !21
  call void @SUNDlsMat_destroyMat(ptr noundef %i.cu) #12
  %i.cv = load ptr, ptr %i.k, align 8, !tbaa !14
  call void @N_VDestroy(ptr noundef %i.cv) #12
  call void @free(ptr noundef nonnull %i.h) #12
  %i.cw = call i32 @SUNContext_Free(ptr noundef nonnull %i.c) #12 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %check_retval.exit88, %check_retval.exit86, %check_retval.exit84, %check_retval.exit82, %check_retval.exit80, %check_retval.exit78, %check_retval.exit76, %check_retval.exit74, %check_retval.exit72, %check_retval.exit70, %check_retval.exit68, %check_retval.exit66, %check_retval.exit, %bb.u, %bb.o
  %.050 = phi i32 [ 0, %bb.u ], [ 1, %check_retval.exit ], [ 1, %check_retval.exit66 ], [ 1, %check_retval.exit68 ], [ 1, %check_retval.exit70 ], [ 1, %check_retval.exit72 ], [ 1, %check_retval.exit74 ], [ 1, %check_retval.exit76 ], [ 1, %check_retval.exit78 ], [ 1, %check_retval.exit80 ], [ 1, %check_retval.exit82 ], [ 1, %check_retval.exit84 ], [ 1, %check_retval.exit86 ], [ %.lcssa, %bb.o ], [ 1, %check_retval.exit88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.050
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @SUNContext_Create(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare ptr @N_VNew_Serial(i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SUNDlsMat_newDenseMat(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @N_VClone(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @SetInitialProfiles(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %0) #12 ; 3 uses
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #12 ; 20 uses
  %i.c = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #12 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !25   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.h = icmp sgt i64 %i.e, 0
  %i.i = icmp samesign ugt i64 %i.e, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.g
  %.05662 = phi i64 [ 0, %bb.a ], [ %i.ah, %bb.g ] ; 3 uses
  %i.j = uitofp nneg i64 %.05662 to double
  %i.k = load double, ptr %i.f, align 8, !tbaa !31
  %i.l = fmul double %i.k, %i.j                   ; 2 uses
  %i.m = mul nuw nsw i64 %.05662, 40
  %i.n = fsub double 1.000000e+00, %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.05461 = phi i64 [ 0, %bb.b ], [ %i.ag, %bb.f ] ; 3 uses
  %i.o = uitofp nneg i64 %.05461 to double
  %i.p = load double, ptr %i.g, align 8, !tbaa !32
  %i.q = fmul double %i.p, %i.o                   ; 2 uses
  %i.r = fmul double %i.q, 1.600000e+01
  %i.s = fsub double 1.000000e+00, %i.q
  %i.t = fmul double %i.r, %i.s
  %i.u = fmul double %i.l, %i.t
  %i.v = fmul double %i.n, %i.u                   ; 2 uses
  %i.w = fmul double %i.v, %i.v                   ; 2 uses
  %i.x = shl nuw nsw i64 %.05461, 1
  %i.y = add nuw nsw i64 %i.x, %i.m               ; 5 uses
  br i1 %i.h, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.y
  store double 1.000000e+05, ptr %i.z, align 8, !tbaa !26
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.y
  store double 0.000000e+00, ptr %i.aa, align 8, !tbaa !26
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ab = fadd double %i.w, 1.000000e+01
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.y
  store double %i.ab, ptr %i.ac, align 8, !tbaa !26
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.y
  store double 1.000000e+00, ptr %i.ad, align 8, !tbaa !26
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.w, double 2.000000e+00, double 1.000000e+01)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %.thread, %bb.e
  %.sink78 = phi double [ %i.ae, %bb.e ], [ 1.000000e+05, %.thread ], [ 1.000000e+05, %bb.d ]
  %.sink = phi double [ 1.000000e+00, %bb.e ], [ 0.000000e+00, %.thread ], [ 0.000000e+00, %bb.d ]
  %4 = or disjoint i64 %i.y, 1                    ; 2 uses
  %5 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %4
  store double %.sink78, ptr %5, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %4
  store double %.sink, ptr %i.af, align 8, !tbaa !26
  %i.ag = add nuw nsw i64 %.05461, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, 20
  br i1 %exitcond.not, label %bb.g, label %bb.c

bb.g:                                             ; preds = %bb.f
  %i.ah = add nuw nsw i64 %.05662, 1              ; 2 uses
  %exitcond68.not = icmp eq i64 %i.ah, 20
  br i1 %exitcond68.not, label %bb.h, label %bb.b

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @Fweb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  %i.ai = icmp slt i64 %i.e, 2
  br i1 %i.ai, label %.preheader59.preheader, label %.split67

.preheader59.preheader:                           ; preds = %bb.h
  %i.aj = shl i64 %i.e, 3                         ; 2 uses
  %i.ak = sub i64 16, %i.aj                       ; 20 uses
  br label %.preheader59

.preheader59:                                     ; preds = %.preheader59.preheader, %.preheader59
  %.15765 = phi i64 [ %i.bg, %.preheader59 ], [ 0, %.preheader59.preheader ] ; 2 uses
  %i.al = mul nuw nsw i64 %.15765, 320
  %i.am = add i64 %i.aj, %i.al                    ; 20 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.am
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.ak, i1 false), !tbaa !26
  %i.an = getelementptr i8, ptr %i.b, i64 %i.am
  %scevgep.1 = getelementptr i8, ptr %i.an, i64 16
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.1, i8 0, i64 %i.ak, i1 false), !tbaa !26
  %i.ao = getelementptr i8, ptr %i.b, i64 %i.am
  %scevgep.2 = getelementptr i8, ptr %i.ao, i64 32
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.2, i8 0, i64 %i.ak, i1 false), !tbaa !26
  %i.ap = getelementptr i8, ptr %i.b, i64 %i.am
  %scevgep.3 = getelementptr i8, ptr %i.ap, i64 48
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.3, i8 0, i64 %i.ak, i1 false), !tbaa !26
  %i.aq = getelementptr i8, ptr %i.b, i64 %i.am
  %scevgep.4 = getelementptr i8, ptr %i.aq, i64 64
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.4, i8 0, i64 %i.ak, i1 false), !tbaa !26
  %i.ar = getelementptr i8, ptr %i.b, i64 %i.am
  %scevgep.5 = getelementptr i8, ptr %i.ar, i64 80
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.5, i8 0, i64 %i.ak, i1 false), !tbaa !26
  %i.as = getelementptr i8, ptr %i.b, i64 %i.am
  %scevgep.6 = getelementptr i8, ptr %i.as, i64 96
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.6, i8 0, i64 %i.ak, i1 false), !tbaa !26
  %i.at = getelementptr i8, ptr %i.b, i64 %i.am
  %scevgep.7 = getelementptr i8, ptr %i.at, i64 112
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.7, i8 0, i64 %i.ak, i1 false), !tbaa !26
  %i.au = getelementptr i8, ptr %i.b, i64 %i.am
  %scevgep.8 = getelementptr i8, ptr %i.au, i64 128
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.8, i8 0, i64 %i.ak, i1 false), !tbaa !26
  %i.av = getelementptr i8, ptr %i.b, i64 %i.am
  %scevgep.9 = getelementptr i8, ptr %i.av, i64 144
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.9, i8 0, i64 %i.ak, i1 false), !tbaa !26
  %i.aw = getelementptr i8, ptr %i.b, i64 %i.am
  %scevgep.10 = getelementptr i8, ptr %i.aw, i64 160
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.10, i8 0, i64 %i.ak, i1 false), !tbaa !26
  %i.ax = getelementptr i8, ptr %i.b, i64 %i.am
  %scevgep.11 = getelementptr i8, ptr %i.ax, i64 176
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.11, i8 0, i64 %i.ak, i1 false), !tbaa !26
  %i.ay = getelementptr i8, ptr %i.b, i64 %i.am
  %scevgep.12 = getelementptr i8, ptr %i.ay, i64 192
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.12, i8 0, i64 %i.ak, i1 false), !tbaa !26
  %i.az = getelementptr i8, ptr %i.b, i64 %i.am
  %scevgep.13 = getelementptr i8, ptr %i.az, i64 208
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.13, i8 0, i64 %i.ak, i1 false), !tbaa !26
  %i.ba = getelementptr i8, ptr %i.b, i64 %i.am
  %scevgep.14 = getelementptr i8, ptr %i.ba, i64 224
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.14, i8 0, i64 %i.ak, i1 false), !tbaa !26
  %i.bb = getelementptr i8, ptr %i.b, i64 %i.am
  %scevgep.15 = getelementptr i8, ptr %i.bb, i64 240
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.15, i8 0, i64 %i.ak, i1 false), !tbaa !26
  %i.bc = getelementptr i8, ptr %i.b, i64 %i.am
  %scevgep.16 = getelementptr i8, ptr %i.bc, i64 256
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.16, i8 0, i64 %i.ak, i1 false), !tbaa !26
  %i.bd = getelementptr i8, ptr %i.b, i64 %i.am
  %scevgep.17 = getelementptr i8, ptr %i.bd, i64 272
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.17, i8 0, i64 %i.ak, i1 false), !tbaa !26
  %i.be = getelementptr i8, ptr %i.b, i64 %i.am
  %scevgep.18 = getelementptr i8, ptr %i.be, i64 288
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.18, i8 0, i64 %i.ak, i1 false), !tbaa !26
  %i.bf = getelementptr i8, ptr %i.b, i64 %i.am
  %scevgep.19 = getelementptr i8, ptr %i.bf, i64 304
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.19, i8 0, i64 %i.ak, i1 false), !tbaa !26
  %i.bg = add nuw nsw i64 %.15765, 1              ; 2 uses
  %exitcond70.not = icmp eq i64 %i.bg, 20
  br i1 %exitcond70.not, label %.split67, label %.preheader59

.split67:                                         ; preds = %.preheader59, %bb.h
  ret void
}

declare ptr @IDACreate(ptr noundef) local_unnamed_addr #2

declare i32 @IDASetUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDASetId(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAInit(ptr noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @resweb(double %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #12 ; 2 uses
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %3) #12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  tail call fastcc void @Fweb(ptr noundef %1, ptr noundef %3, ptr noundef %4)
  %i.e = icmp sgt i64 %i.d, 0
  %i.f = icmp samesign ugt i64 %i.d, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.h
  %.03337 = phi i64 [ 0, %bb.a ], [ %i.y, %bb.h ] ; 2 uses
  %i.g = mul nuw nsw i64 %.03337, 40
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.g
  %.036 = phi i64 [ 0, %bb.b ], [ %i.x, %bb.g ]   ; 2 uses
  %i.h = shl nuw nsw i64 %.036, 1
  %i.i = add nuw nsw i64 %i.h, %i.g               ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.i ; 5 uses
  br i1 %i.e, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %i.k = load double, ptr %i.j, align 8, !tbaa !26
  %i.l = fneg double %i.k
  store double %i.l, ptr %i.j, align 8, !tbaa !26
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.i
  %i.n = load double, ptr %i.m, align 8, !tbaa !26
  %i.o = load double, ptr %i.j, align 8, !tbaa !26
  %i.p = fsub double %i.n, %i.o
  store double %i.p, ptr %i.j, align 8, !tbaa !26
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !26
  %i.s = fneg double %i.r
  store double %i.s, ptr %i.q, align 8, !tbaa !26
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %5 = or disjoint i64 %i.i, 1                    ; 2 uses
  %6 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %5
  %i.t = load double, ptr %6, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %5 ; 2 uses
  %i.v = load double, ptr %i.u, align 8, !tbaa !26
  %i.w = fsub double %i.t, %i.v
  store double %i.w, ptr %i.u, align 8, !tbaa !26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = add nuw nsw i64 %.036, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, 20
  br i1 %exitcond.not, label %bb.h, label %bb.c

bb.h:                                             ; preds = %bb.g
  %i.y = add nuw nsw i64 %.03337, 1               ; 2 uses
  %exitcond38.not = icmp eq i64 %i.y, 20
  br i1 %exitcond38.not, label %bb.i, label %bb.b

bb.i:                                             ; preds = %bb.h
  ret i32 0
}

declare i32 @IDASStolerances(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare ptr @SUNBandMatrix(i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SUNLinSol_Band(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDASetLinearSolver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDACalcIC(ptr noundef, i32 noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @PrintHeader() unnamed_addr #4 {
bb.a:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef 2) ; 0 uses
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef 20, i32 noundef 20) ; 0 uses
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef 800) ; 0 uses
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef 1.000000e-05, double noundef 1.000000e-05) ; 0 uses
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i64 noundef 40, i64 noundef 40) ; 0 uses
  %puts3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %puts4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20) ; 0 uses
  %puts5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %puts6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @PrintOutput(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, double noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.d = call i32 @IDAGetLastOrder(ptr noundef %0, ptr noundef nonnull %i.a) #12 ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %check_retval.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.g = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.23, i32 noundef %i.d) #13 ; 0 uses
  br label %check_retval.exit

check_retval.exit:                                ; preds = %bb.a, %bb.b
  %i.h = call i32 @IDAGetNumSteps(ptr noundef %0, ptr noundef nonnull %i.b) #12 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %check_retval.exit14

bb.c:                                             ; preds = %check_retval.exit
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.k = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.24, i32 noundef %i.h) #13 ; 0 uses
  br label %check_retval.exit14

check_retval.exit14:                              ; preds = %check_retval.exit, %bb.c
  %i.l = call i32 @IDAGetLastStep(ptr noundef %0, ptr noundef nonnull %i.c) #12 ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %check_retval.exit16

bb.d:                                             ; preds = %check_retval.exit14
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.o = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.25, i32 noundef %i.l) #13 ; 0 uses
  br label %check_retval.exit16

check_retval.exit16:                              ; preds = %check_retval.exit14, %bb.d
  %i.p = load ptr, ptr %1, align 8, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !36   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 6384
  %i.t = load double, ptr %i.r, align 8, !tbaa !26
  %i.u = load double, ptr %i.s, align 8, !tbaa !26
  %i.v = load i64, ptr %i.b, align 8, !tbaa !38
  %i.w = load i32, ptr %i.a, align 4, !tbaa !39
  %i.x = load double, ptr %i.c, align 8, !tbaa !26
  %i.y = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, double noundef %2, double noundef %i.t, double noundef %i.u, i64 noundef %i.v, i32 noundef %i.w, double noundef %i.x) ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 6392
  %i.ab = load double, ptr %i.z, align 8, !tbaa !26
  %i.ac = load double, ptr %i.aa, align 8, !tbaa !26
  %i.ad = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, double noundef %i.ab, double noundef %i.ac) ; 0 uses
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare i32 @IDASolve(ptr noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @PrintFinalStats(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %i.i = call i32 @IDAGetNumSteps(ptr noundef %0, ptr noundef nonnull %i.a) #12 ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %check_retval.exit

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.l = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.24, i32 noundef %i.i) #13 ; 0 uses
  br label %check_retval.exit

check_retval.exit:                                ; preds = %bb.a, %bb.b
  %i.m = call i32 @IDAGetNumNonlinSolvIters(ptr noundef %0, ptr noundef nonnull %i.d) #12 ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %check_retval.exit10

bb.c:                                             ; preds = %check_retval.exit
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.p = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.29, i32 noundef %i.m) #13 ; 0 uses
  br label %check_retval.exit10

check_retval.exit10:                              ; preds = %check_retval.exit, %bb.c
  %i.q = call i32 @IDAGetNumResEvals(ptr noundef %0, ptr noundef nonnull %i.b) #12 ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %check_retval.exit12

bb.d:                                             ; preds = %check_retval.exit10
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.t = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.30, i32 noundef %i.q) #13 ; 0 uses
  br label %check_retval.exit12

check_retval.exit12:                              ; preds = %check_retval.exit10, %bb.d
  %i.u = call i32 @IDAGetNumErrTestFails(ptr noundef %0, ptr noundef nonnull %i.g) #12 ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %check_retval.exit14

bb.e:                                             ; preds = %check_retval.exit12
  %i.w = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.x = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.w, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.31, i32 noundef %i.u) #13 ; 0 uses
  br label %check_retval.exit14

check_retval.exit14:                              ; preds = %check_retval.exit12, %bb.e
  %i.y = call i32 @IDAGetNumNonlinSolvConvFails(ptr noundef %0, ptr noundef nonnull %i.e) #12 ; 2 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.f, label %check_retval.exit16

bb.f:                                             ; preds = %check_retval.exit14
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.ab = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aa, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.32, i32 noundef %i.y) #13 ; 0 uses
  br label %check_retval.exit16

check_retval.exit16:                              ; preds = %check_retval.exit14, %bb.f
  %i.ac = call i32 @IDAGetNumStepSolveFails(ptr noundef %0, ptr noundef nonnull %i.h) #12 ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %check_retval.exit18

bb.g:                                             ; preds = %check_retval.exit16
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.af = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.33, i32 noundef %i.ac) #13 ; 0 uses
  br label %check_retval.exit18

check_retval.exit18:                              ; preds = %check_retval.exit16, %bb.g
  %i.ag = call i32 @IDAGetNumJacEvals(ptr noundef %0, ptr noundef nonnull %i.f) #12 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.h, label %check_retval.exit20

bb.h:                                             ; preds = %check_retval.exit18
  %i.ai = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.aj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ai, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.34, i32 noundef %i.ag) #13 ; 0 uses
  br label %check_retval.exit20

check_retval.exit20:                              ; preds = %check_retval.exit18, %bb.h
  %i.ak = call i32 @IDAGetNumLinResEvals(ptr noundef %0, ptr noundef nonnull %i.c) #12 ; 2 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.i, label %check_retval.exit22

bb.i:                                             ; preds = %check_retval.exit20
  %i.am = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.an = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.am, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.35, i32 noundef %i.ak) #13 ; 0 uses
  br label %check_retval.exit22

check_retval.exit22:                              ; preds = %check_retval.exit20, %bb.i
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %puts8 = call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !38
  %i.ap = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i64 noundef %i.ao) ; 0 uses
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !38
  %i.ar = load i64, ptr %i.c, align 8, !tbaa !38
  %i.as = add nsw i64 %i.ar, %i.aq
  %i.at = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, i64 noundef %i.as) ; 0 uses
  %i.au = load i64, ptr %i.f, align 8, !tbaa !38
  %i.av = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i64 noundef %i.au) ; 0 uses
  %i.aw = load i64, ptr %i.d, align 8, !tbaa !38
  %i.ax = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, i64 noundef %i.aw) ; 0 uses
  %i.ay = load i64, ptr %i.g, align 8, !tbaa !38
  %i.az = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i64 noundef %i.ay) ; 0 uses
  %i.ba = load i64, ptr %i.e, align 8, !tbaa !38
  %i.bb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i64 noundef %i.ba) ; 0 uses
  %i.bc = load i64, ptr %i.h, align 8, !tbaa !38
  %i.bd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, i64 noundef %i.bc) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare void @IDAFree(ptr noundef) local_unnamed_addr #2

declare i32 @SUNLinSolFree(ptr noundef) local_unnamed_addr #2

declare void @SUNMatDestroy(ptr noundef) local_unnamed_addr #2

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #2

declare void @SUNDlsMat_destroyMat(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare i32 @SUNContext_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @N_VGetArrayPointer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @Fweb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36   ; 3 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21   ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !28   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  br label %.peel.next

.peel.next:                                       ; preds = %.loopexit.peel.begin, %bb.a
  %.05967 = phi i64 [ 0, %bb.a ], [ %i.ji, %.loopexit.peel.begin ] ; 5 uses
  %i.z = uitofp nneg i64 %.05967 to double
  %.not = icmp eq i64 %.05967, 19
  %i.aa = select i1 %.not, i64 -40, i64 40        ; 3 uses
  %.not61 = icmp eq i64 %.05967, 0
  %.neg = select i1 %.not61, i64 40, i64 -40      ; 3 uses
  %i.ab = mul nuw nsw i64 %.05967, 40             ; 5 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ab ; 9 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ab ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ab ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ag = load double, ptr %i.ac, align 8, !tbaa !26
  %i.ah = load double, ptr %i.o, align 8, !tbaa !26
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ah, double 0.000000e+00)
  %i.aj = load double, ptr %i.af, align 8, !tbaa !26
  %i.ak = load double, ptr %i.p, align 8, !tbaa !26
  %i.al = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.ak, double %i.ai) ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.an = load <2 x double>, ptr %i.a, align 8, !tbaa !26
  %i.ao = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.z, i64 1
  %i.ap = fmul <2 x double> %i.an, %i.ao          ; 5 uses
  store double %i.al, ptr %i.ad, align 8, !tbaa !26
  %i.aq = load double, ptr %i.ac, align 8, !tbaa !26
  %i.ar = load double, ptr %i.r, align 8, !tbaa !26
  %i.as = load double, ptr %i.af, align 8, !tbaa !26
  %i.at = load double, ptr %i.s, align 8, !tbaa !26
  %i.au = extractelement <2 x double> %i.ap, i64 0
  %i.av = fmul ninf double %i.au, 5.000000e+01
  %i.aw = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %i.av, i64 1
  %i.ay = insertelement <2 x double> %i.ap, double %i.ar, i64 0
  %i.az = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.ay, <2 x double> <double 0.000000e+00, double 1.000000e+00>) ; 2 uses
  %i.ba = extractelement <2 x double> %i.az, i64 0
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.as, double %i.at, double %i.ba) ; 2 uses
  store double %i.bb, ptr %i.am, align 8, !tbaa !26
  %i.bc = fmul <2 x double> %i.ap, splat (double f0x402921FB54442D28) ; 2 uses
  %i.bd = extractelement <2 x double> %i.bc, i64 0
  %i.be = tail call double @sin(double noundef %i.bd) #12
  %i.bf = fmul double %i.be, 1.000000e+03
  %i.bg = extractelement <2 x double> %i.bc, i64 1 ; 3 uses
  %i.bh = tail call double @sin(double noundef %i.bg) #12
  %i.bi = extractelement <2 x double> %i.az, i64 1
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.bh, double %i.bi) ; 2 uses
  %i.bk = load double, ptr %i.ac, align 8, !tbaa !26
  %i.bl = load double, ptr %i.t, align 8, !tbaa !26
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.bj, double %i.al)
  %i.bn = fmul double %i.bk, %i.bm                ; 2 uses
  store double %i.bn, ptr %i.ad, align 8, !tbaa !26
  %i.bo = load double, ptr %i.af, align 8, !tbaa !26
  %i.bp = load double, ptr %i.u, align 8, !tbaa !26
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.bj, double %i.bb)
  %i.br = fmul double %i.bo, %i.bq
  store double %i.br, ptr %i.am, align 8, !tbaa !26
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %.neg ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.aa ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.bv = load double, ptr %i.ac, align 8, !tbaa !26 ; 4 uses
  %i.bw = load double, ptr %i.bs, align 8, !tbaa !26
  %i.bx = fsub double %i.bv, %i.bw
  %i.by = load double, ptr %i.bt, align 8, !tbaa !26
  %i.bz = fsub double %i.by, %i.bv
  %i.ca = load double, ptr %i.bu, align 8, !tbaa !26 ; 2 uses
  %i.cb = fsub double %i.bv, %i.ca
  %i.cc = fsub double %i.ca, %i.bv
  %i.cd = load double, ptr %i.v, align 8, !tbaa !26
  %i.ce = fsub double %i.bz, %i.bx
  %i.cf = load double, ptr %i.w, align 8, !tbaa !26
  %i.cg = fsub double %i.cc, %i.cb
  %i.ch = fmul double %i.cf, %i.cg
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.ce, double %i.ch)
  %i.cj = fadd double %i.bn, %i.ci
  store double %i.cj, ptr %i.ae, align 8, !tbaa !26
  %i.ck = load double, ptr %i.af, align 8, !tbaa !26 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !26
  %i.cn = fsub double %i.ck, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.cp = load double, ptr %i.co, align 8, !tbaa !26
  %i.cq = fsub double %i.cp, %i.ck
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !26 ; 2 uses
  %i.ct = fsub double %i.ck, %i.cs
  %i.cu = fsub double %i.cs, %i.ck
  %i.cv = load double, ptr %i.x, align 8, !tbaa !26
  %i.cw = fsub double %i.cq, %i.cn
  %i.cx = load double, ptr %i.y, align 8, !tbaa !26
  %i.cy = fsub double %i.cu, %i.ct
  %i.cz = fmul double %i.cx, %i.cy
  %i.da = tail call double @llvm.fmuladd.f64(double %i.cv, double %i.cw, double %i.cz)
  %i.db = load double, ptr %i.am, align 8, !tbaa !26
  %i.dc = fadd double %i.db, %i.da
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store double %i.dc, ptr %i.dd, align 8, !tbaa !26
  br label %bb.b

bb.b:                                             ; preds = %.peel.next, %bb.b
  %.066 = phi i64 [ 1, %.peel.next ], [ %i.gj, %bb.b ] ; 3 uses
  %i.de = load double, ptr %i.a, align 8, !tbaa !32
  %i.df = uitofp nneg i64 %.066 to double
  %i.dg = fmul double %i.de, %i.df                ; 2 uses
  %i.dh = shl nuw nsw i64 %.066, 1
  %i.di = add nuw nsw i64 %i.dh, %i.ab            ; 3 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.di ; 11 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.di ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.di ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 4 uses
  %i.dn = load double, ptr %i.dj, align 8, !tbaa !26
  %i.do = load double, ptr %i.o, align 8, !tbaa !26
  %i.dp = tail call double @llvm.fmuladd.f64(double %i.dn, double %i.do, double 0.000000e+00)
  %i.dq = load double, ptr %i.dm, align 8, !tbaa !26
  %i.dr = load double, ptr %i.p, align 8, !tbaa !26
  %i.ds = tail call double @llvm.fmuladd.f64(double %i.dq, double %i.dr, double %i.dp) ; 2 uses
  store double %i.ds, ptr %i.dk, align 8, !tbaa !26
  %i.dt = load double, ptr %i.dj, align 8, !tbaa !26
  %i.du = load double, ptr %i.r, align 8, !tbaa !26
  %i.dv = load double, ptr %i.dm, align 8, !tbaa !26
  %i.dw = load double, ptr %i.s, align 8, !tbaa !26
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 3 uses
  %i.dy = fmul double %i.dg, 5.000000e+01
  %i.dz = insertelement <2 x double> poison, double %i.dt, i64 0
  %i.ea = insertelement <2 x double> %i.dz, double %i.dy, i64 1
  %i.eb = insertelement <2 x double> %i.ap, double %i.du, i64 0
  %i.ec = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ea, <2 x double> %i.eb, <2 x double> <double 0.000000e+00, double 1.000000e+00>) ; 2 uses
  %i.ed = extractelement <2 x double> %i.ec, i64 0
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.dv, double %i.dw, double %i.ed) ; 2 uses
  store double %i.ee, ptr %i.dx, align 8, !tbaa !26
  %i.ef = fmul double %i.dg, f0x402921FB54442D28
  %i.eg = tail call double @sin(double noundef %i.ef) #12
  %i.eh = fmul double %i.eg, 1.000000e+03
  %i.ei = tail call double @sin(double noundef %i.bg) #12
  %i.ej = extractelement <2 x double> %i.ec, i64 1
  %i.ek = tail call double @llvm.fmuladd.f64(double %i.eh, double %i.ei, double %i.ej) ; 2 uses
  %i.el = load double, ptr %i.dj, align 8, !tbaa !26
  %i.em = load double, ptr %i.t, align 8, !tbaa !26
  %i.en = tail call double @llvm.fmuladd.f64(double %i.em, double %i.ek, double %i.ds)
  %i.eo = fmul double %i.el, %i.en                ; 2 uses
  store double %i.eo, ptr %i.dk, align 8, !tbaa !26
  %i.ep = load double, ptr %i.dm, align 8, !tbaa !26
  %i.eq = load double, ptr %i.u, align 8, !tbaa !26
  %i.er = tail call double @llvm.fmuladd.f64(double %i.eq, double %i.ek, double %i.ee)
  %i.es = fmul double %i.ep, %i.er
  store double %i.es, ptr %i.dx, align 8, !tbaa !26
  %i.et = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %.neg ; 2 uses
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.aa ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %i.dj, i64 -16
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.ex = load double, ptr %i.dj, align 8, !tbaa !26 ; 4 uses
  %i.ey = load double, ptr %i.et, align 8, !tbaa !26
  %i.ez = fsub double %i.ex, %i.ey
  %i.fa = load double, ptr %i.eu, align 8, !tbaa !26
  %i.fb = fsub double %i.fa, %i.ex
  %i.fc = load double, ptr %i.ev, align 8, !tbaa !26
  %i.fd = fsub double %i.ex, %i.fc
  %i.fe = load double, ptr %i.ew, align 8, !tbaa !26
  %i.ff = fsub double %i.fe, %i.ex
  %i.fg = load double, ptr %i.v, align 8, !tbaa !26
  %i.fh = fsub double %i.fb, %i.ez
  %i.fi = load double, ptr %i.w, align 8, !tbaa !26
  %i.fj = fsub double %i.ff, %i.fd
  %i.fk = fmul double %i.fi, %i.fj
  %i.fl = tail call double @llvm.fmuladd.f64(double %i.fg, double %i.fh, double %i.fk)
  %i.fm = fadd double %i.eo, %i.fl
  store double %i.fm, ptr %i.dl, align 8, !tbaa !26
  %i.fn = load double, ptr %i.dm, align 8, !tbaa !26 ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !26
  %i.fq = fsub double %i.fn, %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !26
  %i.ft = fsub double %i.fs, %i.fn
  %i.fu = getelementptr inbounds i8, ptr %i.dj, i64 -8
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !26
  %i.fw = fsub double %i.fn, %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !26
  %i.fz = fsub double %i.fy, %i.fn
  %i.ga = load double, ptr %i.x, align 8, !tbaa !26
  %i.gb = fsub double %i.ft, %i.fq
  %i.gc = load double, ptr %i.y, align 8, !tbaa !26
  %i.gd = fsub double %i.fz, %i.fw
  %i.ge = fmul double %i.gc, %i.gd
  %i.gf = tail call double @llvm.fmuladd.f64(double %i.ga, double %i.gb, double %i.ge)
  %i.gg = load double, ptr %i.dx, align 8, !tbaa !26
  %i.gh = fadd double %i.gg, %i.gf
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store double %i.gh, ptr %i.gi, align 8, !tbaa !26
  %i.gj = add nuw nsw i64 %.066, 1                ; 3 uses
  %exitcond.not = icmp eq i64 %i.gj, 19
  br i1 %exitcond.not, label %.loopexit.peel.begin, label %bb.b, !llvm.loop !40

.loopexit.peel.begin:                             ; preds = %bb.b
  %i.gk = load double, ptr %i.a, align 8, !tbaa !32
  %i.gl = uitofp nneg i64 %i.gj to double
  %i.gm = fmul double %i.gk, %i.gl                ; 2 uses
  %3 = add nuw nsw i64 %i.ab, 38                  ; 3 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %3 ; 9 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %3 ; 3 uses
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %3 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 4 uses
  %i.gq = load double, ptr %i.gn, align 8, !tbaa !26
  %i.gr = load double, ptr %i.o, align 8, !tbaa !26
  %i.gs = tail call double @llvm.fmuladd.f64(double %i.gq, double %i.gr, double 0.000000e+00)
  %i.gt = load double, ptr %i.gp, align 8, !tbaa !26
  %i.gu = load double, ptr %i.p, align 8, !tbaa !26
  %i.gv = tail call double @llvm.fmuladd.f64(double %i.gt, double %i.gu, double %i.gs) ; 2 uses
  store double %i.gv, ptr %i.go, align 8, !tbaa !26
  %i.gw = load double, ptr %i.gn, align 8, !tbaa !26
  %i.gx = load double, ptr %i.r, align 8, !tbaa !26
  %i.gy = load double, ptr %i.gp, align 8, !tbaa !26
  %i.gz = load double, ptr %i.s, align 8, !tbaa !26
  %i.ha = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 3 uses
  %i.hb = fmul double %i.gm, 5.000000e+01
  %i.hc = insertelement <2 x double> poison, double %i.gw, i64 0
  %i.hd = insertelement <2 x double> %i.hc, double %i.hb, i64 1
  %i.he = insertelement <2 x double> %i.ap, double %i.gx, i64 0
  %i.hf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hd, <2 x double> %i.he, <2 x double> <double 0.000000e+00, double 1.000000e+00>) ; 2 uses
  %i.hg = extractelement <2 x double> %i.hf, i64 0
  %i.hh = tail call double @llvm.fmuladd.f64(double %i.gy, double %i.gz, double %i.hg) ; 2 uses
  store double %i.hh, ptr %i.ha, align 8, !tbaa !26
  %i.hi = fmul double %i.gm, f0x402921FB54442D28
  %i.hj = tail call double @sin(double noundef %i.hi) #12
  %i.hk = fmul double %i.hj, 1.000000e+03
  %i.hl = tail call double @sin(double noundef %i.bg) #12
  %i.hm = extractelement <2 x double> %i.hf, i64 1
  %i.hn = tail call double @llvm.fmuladd.f64(double %i.hk, double %i.hl, double %i.hm) ; 2 uses
  %i.ho = load double, ptr %i.gn, align 8, !tbaa !26
  %i.hp = load double, ptr %i.t, align 8, !tbaa !26
  %i.hq = tail call double @llvm.fmuladd.f64(double %i.hp, double %i.hn, double %i.gv)
  %i.hr = fmul double %i.ho, %i.hq                ; 2 uses
  store double %i.hr, ptr %i.go, align 8, !tbaa !26
  %i.hs = load double, ptr %i.gp, align 8, !tbaa !26
  %i.ht = load double, ptr %i.u, align 8, !tbaa !26
  %i.hu = tail call double @llvm.fmuladd.f64(double %i.ht, double %i.hn, double %i.hh)
  %i.hv = fmul double %i.hs, %i.hu
  store double %i.hv, ptr %i.ha, align 8, !tbaa !26
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.gn, i64 %.neg ; 2 uses
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.gn, i64 %i.aa ; 2 uses
  %i.hy = getelementptr inbounds i8, ptr %i.gn, i64 -16
  %i.hz = load double, ptr %i.gn, align 8, !tbaa !26 ; 4 uses
  %i.ia = load double, ptr %i.hw, align 8, !tbaa !26
  %i.ib = fsub double %i.hz, %i.ia
  %i.ic = load double, ptr %i.hx, align 8, !tbaa !26
  %i.id = fsub double %i.ic, %i.hz
  %i.ie = load double, ptr %i.hy, align 8, !tbaa !26 ; 2 uses
  %i.if = fsub double %i.hz, %i.ie
  %i.ig = fsub double %i.ie, %i.hz
  %i.ih = load double, ptr %i.v, align 8, !tbaa !26
  %i.ii = fsub double %i.id, %i.ib
  %i.ij = load double, ptr %i.w, align 8, !tbaa !26
  %i.ik = fsub double %i.ig, %i.if
  %i.il = fmul double %i.ij, %i.ik
  %i.im = tail call double @llvm.fmuladd.f64(double %i.ih, double %i.ii, double %i.il)
  %i.in = fadd double %i.hr, %i.im
  store double %i.in, ptr %4, align 8, !tbaa !26
  %i.io = load double, ptr %i.gp, align 8, !tbaa !26 ; 4 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !26
  %i.ir = fsub double %i.io, %i.iq
  %i.is = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.it = load double, ptr %i.is, align 8, !tbaa !26
  %i.iu = fsub double %i.it, %i.io
  %i.iv = getelementptr inbounds i8, ptr %i.gn, i64 -8
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !26 ; 2 uses
  %i.ix = fsub double %i.io, %i.iw
  %i.iy = fsub double %i.iw, %i.io
  %i.iz = load double, ptr %i.x, align 8, !tbaa !26
  %i.ja = fsub double %i.iu, %i.ir
  %i.jb = load double, ptr %i.y, align 8, !tbaa !26
  %i.jc = fsub double %i.iy, %i.ix
  %i.jd = fmul double %i.jb, %i.jc
  %i.je = tail call double @llvm.fmuladd.f64(double %i.iz, double %i.ja, double %i.jd)
  %i.jf = load double, ptr %i.ha, align 8, !tbaa !26
  %i.jg = fadd double %i.jf, %i.je
  %i.jh = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double %i.jg, ptr %i.jh, align 8, !tbaa !26
  %i.ji = add nuw nsw i64 %.05967, 1              ; 2 uses
  %exitcond69.not = icmp eq i64 %i.ji, 20
  br i1 %exitcond69.not, label %bb.c, label %.peel.next

bb.c:                                             ; preds = %.loopexit.peel.begin
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #9

declare i32 @IDAGetLastOrder(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetNumSteps(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetLastStep(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetNumNonlinSolvIters(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetNumResEvals(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetNumErrTestFails(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetNumNonlinSolvConvFails(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetNumStepSolveFails(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetNumJacEvals(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetNumLinResEvals(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTS11SUNContext_", !11, i64 0}
!14 = !{!15, !20, i64 112}
!15 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !17, i64 40, !17, i64 48, !18, i64 56, !7, i64 64, !7, i64 80, !7, i64 96, !20, i64 112}
!16 = !{!"long", !7, i64 0}
!17 = !{!"double", !7, i64 0}
!18 = !{!"p2 double", !19, i64 0}
!19 = !{!"any p2 pointer", !11, i64 0}
!20 = !{!"p1 _ZTS17_generic_N_Vector", !11, i64 0}
!21 = !{!15, !18, i64 56}
!22 = !{!15, !16, i64 24}
!23 = !{!15, !16, i64 32}
!24 = !{!15, !16, i64 8}
!25 = !{!15, !16, i64 16}
!26 = !{!17, !17, i64 0}
!27 = !{!15, !16, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"p1 double", !11, i64 0}
!30 = !{!11, !11, i64 0}
!31 = !{!15, !17, i64 48}
!32 = !{!15, !17, i64 40}
!33 = !{!34, !11, i64 0}
!34 = !{!"_generic_N_Vector", !11, i64 0, !35, i64 8, !13, i64 16}
!35 = !{!"p1 _ZTS21_generic_N_Vector_Ops", !11, i64 0}
!36 = !{!37, !29, i64 16}
!37 = !{!"_N_VectorContent_Serial", !16, i64 0, !6, i64 8, !29, i64 16}
!38 = !{!16, !16, i64 0}
!39 = !{!6, !6, i64 0}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.peeled.count", i32 2}
end_hunk_0
