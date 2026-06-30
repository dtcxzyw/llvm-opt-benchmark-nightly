inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@penalty = external local_unnamed_addr global i32, align 4
@penalty_OP = external local_unnamed_addr global i32, align 4
@penalty_ex = external local_unnamed_addr global i32, align 4
@genG__align11.m = internal unnamed_addr global ptr null, align 8
@genG__align11.largeM = internal unnamed_addr global ptr null, align 8
@genG__align11.ijpi = internal unnamed_addr global ptr null, align 8
@genG__align11.ijpj = internal unnamed_addr global ptr null, align 8
@genG__align11.mp = internal unnamed_addr global ptr null, align 8
@genG__align11.Mp = internal unnamed_addr global ptr null, align 8
@genG__align11.w1 = internal unnamed_addr global ptr null, align 8
@genG__align11.w2 = internal unnamed_addr global ptr null, align 8
@genG__align11.match = internal unnamed_addr global ptr null, align 8
@genG__align11.initverticalw = internal unnamed_addr global ptr null, align 8
@genG__align11.lastverticalw = internal unnamed_addr global ptr null, align 8
@genG__align11.mseq1 = internal unnamed_addr global ptr null, align 8
@genG__align11.mseq2 = internal unnamed_addr global ptr null, align 8
@genG__align11.mseq = internal unnamed_addr global ptr null, align 8
@genG__align11.cpmx1 = internal unnamed_addr global ptr null, align 8
@genG__align11.cpmx2 = internal unnamed_addr global ptr null, align 8
@genG__align11.intwork = internal unnamed_addr global ptr null, align 8
@genG__align11.floatwork = internal unnamed_addr global ptr null, align 8
@genG__align11.orlgth1 = internal unnamed_addr global i32 0, align 4
@genG__align11.orlgth2 = internal unnamed_addr global i32 0, align 4
@njob = external local_unnamed_addr global i32, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [35 x i8] c"WARNING (g11): lgth1=%d, lgth2=%d\0A\00", align 1
@commonAlloc1 = external local_unnamed_addr global i32, align 4
@commonAlloc2 = external local_unnamed_addr global i32, align 4
@commonIP = external local_unnamed_addr global ptr, align 8
@commonJP = external local_unnamed_addr global ptr, align 8
@outgap = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"alloclen=%d, resultlen=%d, N=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"LENGTH OVER!\0A\00", align 1
@amino_dis = external local_unnamed_addr global [128 x [128 x i32]], align 16

; Function Attrs: nounwind uwtable
define dso_local float @genG__align11(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @penalty, align 4, !tbaa !4
  %i.b = sitofp i32 %i.a to float                 ; 6 uses
  %i.c = load i32, ptr @penalty_OP, align 4, !tbaa !4
  %i.d = sitofp i32 %i.c to float
  %i.e = load i32, ptr @penalty_ex, align 4, !tbaa !4
  %i.f = sitofp i32 %i.e to float                 ; 2 uses
  %i.g = load i32, ptr @genG__align11.orlgth1, align 4, !tbaa !4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr @njob, align 4, !tbaa !4
  %i.j = tail call ptr @AllocateCharMtx(i32 noundef %i.i, i32 noundef 0) #8
  store ptr %i.j, ptr @genG__align11.mseq1, align 8, !tbaa !8
  %i.k = load i32, ptr @njob, align 4, !tbaa !4
  %i.l = tail call ptr @AllocateCharMtx(i32 noundef %i.k, i32 noundef 0) #8
  store ptr %i.l, ptr @genG__align11.mseq2, align 8, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = load ptr, ptr %0, align 8, !tbaa !12
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #9 ; 2 uses
  %i.o = trunc i64 %i.n to i32                    ; 10 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !12
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #9 ; 7 uses
  %i.r = trunc i64 %i.q to i32                    ; 13 uses
  %i.s = icmp slt i32 %i.o, 1                     ; 2 uses
  %i.t = icmp slt i32 %i.r, 1                     ; 4 uses
  %or.cond = select i1 %i.s, i1 true, i1 %i.t
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str, i32 noundef %i.o, i32 noundef %i.r) #10 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.w = load i32, ptr @genG__align11.orlgth1, align 4, !tbaa !4 ; 4 uses
  %i.x = icmp slt i32 %i.w, %i.o
  %i.y = load i32, ptr @genG__align11.orlgth2, align 4 ; 4 uses
  %i.z = icmp slt i32 %i.y, %i.r
  %or.cond234 = select i1 %i.x, i1 true, i1 %i.z
  br i1 %or.cond234, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.aa = icmp sgt i32 %i.w, 0
  %i.ab = icmp sgt i32 %i.y, 0
  %or.cond3 = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %or.cond3, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr @genG__align11.w1, align 8, !tbaa !16
  tail call void @FreeFloatVec(ptr noundef %i.ac) #8
  %i.ad = load ptr, ptr @genG__align11.w2, align 8, !tbaa !16
  tail call void @FreeFloatVec(ptr noundef %i.ad) #8
  %i.ae = load ptr, ptr @genG__align11.match, align 8, !tbaa !16
  tail call void @FreeFloatVec(ptr noundef %i.ae) #8
  %i.af = load ptr, ptr @genG__align11.initverticalw, align 8, !tbaa !16
  tail call void @FreeFloatVec(ptr noundef %i.af) #8
  %i.ag = load ptr, ptr @genG__align11.lastverticalw, align 8, !tbaa !16
  tail call void @FreeFloatVec(ptr noundef %i.ag) #8
  %i.ah = load ptr, ptr @genG__align11.m, align 8, !tbaa !16
  tail call void @FreeFloatVec(ptr noundef %i.ah) #8
  %i.ai = load ptr, ptr @genG__align11.mp, align 8, !tbaa !18
  tail call void @FreeIntVec(ptr noundef %i.ai) #8
  %i.aj = load ptr, ptr @genG__align11.largeM, align 8, !tbaa !16
  tail call void @FreeFloatVec(ptr noundef %i.aj) #8
  %i.ak = load ptr, ptr @genG__align11.Mp, align 8, !tbaa !18
  tail call void @FreeIntVec(ptr noundef %i.ak) #8
  %i.al = load ptr, ptr @genG__align11.mseq, align 8, !tbaa !8
  tail call void @FreeCharMtx(ptr noundef %i.al) #8
  %i.am = load ptr, ptr @genG__align11.cpmx1, align 8, !tbaa !20
  tail call void @FreeFloatMtx(ptr noundef %i.am) #8
  %i.an = load ptr, ptr @genG__align11.cpmx2, align 8, !tbaa !20
  tail call void @FreeFloatMtx(ptr noundef %i.an) #8
  %i.ao = load ptr, ptr @genG__align11.floatwork, align 8, !tbaa !20
  tail call void @FreeFloatMtx(ptr noundef %i.ao) #8
  %i.ap = load ptr, ptr @genG__align11.intwork, align 8, !tbaa !22
  tail call void @FreeIntMtx(ptr noundef %i.ap) #8
  %.pre = load i32, ptr @genG__align11.orlgth1, align 4, !tbaa !4
  %.pre334 = load i32, ptr @genG__align11.orlgth2, align 4, !tbaa !4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aq = phi i32 [ %.pre334, %bb.g ], [ %i.y, %bb.f ]
  %i.ar = phi i32 [ %.pre, %bb.g ], [ %i.w, %bb.f ]
  %i.as = sitofp i32 %i.o to double
  %i.at = fmul nnan double %i.as, 1.300000e+00
  %i.au = fptosi double %i.at to i32
  %. = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 %i.au) ; 4 uses
  %i.av = add nuw nsw i32 %., 100                 ; 2 uses
  %i.aw = sitofp i32 %i.r to double
  %i.ax = fmul nnan double %i.aw, 1.300000e+00
  %i.ay = fptosi double %i.ax to i32
  %i.az = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 %i.ay) ; 4 uses
  %i.ba = add nuw nsw i32 %i.az, 100              ; 2 uses
  %i.bb = add nuw nsw i32 %i.az, 102              ; 8 uses
  %i.bc = tail call ptr @AllocateFloatVec(i32 noundef %i.bb) #8
  store ptr %i.bc, ptr @genG__align11.w1, align 8, !tbaa !16
  %i.bd = tail call ptr @AllocateFloatVec(i32 noundef %i.bb) #8
  store ptr %i.bd, ptr @genG__align11.w2, align 8, !tbaa !16
  %i.be = tail call ptr @AllocateFloatVec(i32 noundef %i.bb) #8
  store ptr %i.be, ptr @genG__align11.match, align 8, !tbaa !16
  %i.bf = add nuw nsw i32 %., 102                 ; 3 uses
  %i.bg = tail call ptr @AllocateFloatVec(i32 noundef %i.bf) #8
  store ptr %i.bg, ptr @genG__align11.initverticalw, align 8, !tbaa !16
  %i.bh = tail call ptr @AllocateFloatVec(i32 noundef %i.bf) #8
  store ptr %i.bh, ptr @genG__align11.lastverticalw, align 8, !tbaa !16
  %i.bi = tail call ptr @AllocateFloatVec(i32 noundef %i.bb) #8
  store ptr %i.bi, ptr @genG__align11.m, align 8, !tbaa !16
  %i.bj = tail call ptr @AllocateIntVec(i32 noundef %i.bb) #8
  store ptr %i.bj, ptr @genG__align11.mp, align 8, !tbaa !18
  %i.bk = tail call ptr @AllocateFloatVec(i32 noundef %i.bb) #8
  store ptr %i.bk, ptr @genG__align11.largeM, align 8, !tbaa !16
  %i.bl = tail call ptr @AllocateIntVec(i32 noundef %i.bb) #8
  store ptr %i.bl, ptr @genG__align11.Mp, align 8, !tbaa !18
  %i.bm = load i32, ptr @njob, align 4, !tbaa !4
  %i.bn = add nuw nsw i32 %i.ba, %i.av
  %i.bo = tail call ptr @AllocateCharMtx(i32 noundef %i.bm, i32 noundef %i.bn) #8
  store ptr %i.bo, ptr @genG__align11.mseq, align 8, !tbaa !8
  %i.bp = tail call ptr @AllocateFloatMtx(i32 noundef 26, i32 noundef %i.bf) #8
  store ptr %i.bp, ptr @genG__align11.cpmx1, align 8, !tbaa !20
  %i.bq = tail call ptr @AllocateFloatMtx(i32 noundef 26, i32 noundef %i.bb) #8
  store ptr %i.bq, ptr @genG__align11.cpmx2, align 8, !tbaa !20
  %i.br = tail call i32 @llvm.smax.i32(i32 %i.av, i32 %i.ba)
  %i.bs = add nuw nsw i32 %i.br, 2                ; 2 uses
  %i.bt = tail call ptr @AllocateFloatMtx(i32 noundef 26, i32 noundef %i.bs) #8
  store ptr %i.bt, ptr @genG__align11.floatwork, align 8, !tbaa !20
  %i.bu = tail call ptr @AllocateIntMtx(i32 noundef 26, i32 noundef %i.bs) #8
  store ptr %i.bu, ptr @genG__align11.intwork, align 8, !tbaa !22
  store i32 %., ptr @genG__align11.orlgth1, align 4, !tbaa !4
  store i32 %i.az, ptr @genG__align11.orlgth2, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h
  %i.bv = phi i32 [ %i.y, %bb.e ], [ %i.az, %bb.h ] ; 2 uses
  %i.bw = phi i32 [ %i.w, %bb.e ], [ %., %bb.h ]  ; 2 uses
  %i.bx = load ptr, ptr @genG__align11.mseq, align 8, !tbaa !8 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !12
  %i.bz = load ptr, ptr @genG__align11.mseq1, align 8, !tbaa !8
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !12
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !12
  %i.cc = load ptr, ptr @genG__align11.mseq2, align 8, !tbaa !8
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !12
  %i.cd = load i32, ptr @commonAlloc1, align 4, !tbaa !4 ; 3 uses
  %i.ce = icmp sgt i32 %i.bw, %i.cd
  %.pre335 = load i32, ptr @commonAlloc2, align 4 ; 3 uses
  %i.cf = icmp sgt i32 %i.bv, %.pre335
  %or.cond371 = select i1 %i.ce, i1 true, i1 %i.cf
  br i1 %or.cond371, label %bb.j, label %._crit_edge340

._crit_edge340:                                   ; preds = %bb.i
  %.pre341 = load ptr, ptr @commonJP, align 8, !tbaa !22
  br label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.cg = icmp ne i32 %i.cd, 0
  %i.ch = icmp ne i32 %.pre335, 0
  %or.cond5 = select i1 %i.cg, i1 %i.ch, i1 false
  br i1 %or.cond5, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ci = load ptr, ptr @commonIP, align 8, !tbaa !22
  tail call void @FreeIntMtx(ptr noundef %i.ci) #8
  %i.cj = load ptr, ptr @commonJP, align 8, !tbaa !22
  tail call void @FreeIntMtx(ptr noundef %i.cj) #8
  %.pre336 = load i32, ptr @genG__align11.orlgth1, align 4, !tbaa !4
  %.pre337 = load i32, ptr @commonAlloc1, align 4, !tbaa !4
  %.pre338 = load i32, ptr @genG__align11.orlgth2, align 4, !tbaa !4
  %.pre339 = load i32, ptr @commonAlloc2, align 4, !tbaa !4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ck = phi i32 [ %.pre339, %bb.k ], [ %.pre335, %bb.j ]
  %i.cl = phi i32 [ %.pre338, %bb.k ], [ %i.bv, %bb.j ]
  %i.cm = phi i32 [ %.pre337, %bb.k ], [ %i.cd, %bb.j ]
  %i.cn = phi i32 [ %.pre336, %bb.k ], [ %i.bw, %bb.j ]
  %i.co = tail call i32 @llvm.smax.i32(i32 %i.cn, i32 %i.cm) ; 2 uses
  %i.cp = tail call i32 @llvm.smax.i32(i32 %i.cl, i32 %i.ck) ; 2 uses
  %i.cq = add nsw i32 %i.co, 10                   ; 2 uses
  %i.cr = add nsw i32 %i.cp, 10                   ; 2 uses
  %i.cs = tail call ptr @AllocateIntMtx(i32 noundef %i.cq, i32 noundef %i.cr) #8
  store ptr %i.cs, ptr @commonIP, align 8, !tbaa !22
  %i.ct = tail call ptr @AllocateIntMtx(i32 noundef %i.cq, i32 noundef %i.cr) #8 ; 2 uses
  store ptr %i.ct, ptr @commonJP, align 8, !tbaa !22
  store i32 %i.co, ptr @commonAlloc1, align 4, !tbaa !4
  store i32 %i.cp, ptr @commonAlloc2, align 4, !tbaa !4
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge340, %bb.l
  %i.cu = phi ptr [ %.pre341, %._crit_edge340 ], [ %i.ct, %bb.l ] ; 9 uses
  %i.cv = load ptr, ptr @commonIP, align 8, !tbaa !22 ; 9 uses
  store ptr %i.cv, ptr @genG__align11.ijpi, align 8, !tbaa !22
  store ptr %i.cu, ptr @genG__align11.ijpj, align 8, !tbaa !22
  %i.cw = load ptr, ptr @genG__align11.w1, align 8, !tbaa !16 ; 11 uses
  %i.cx = ptrtoaddr ptr %i.cw to i64              ; 2 uses
  %i.cy = load ptr, ptr @genG__align11.w2, align 8, !tbaa !16
  %i.cz = load ptr, ptr @genG__align11.initverticalw, align 8, !tbaa !16 ; 7 uses
  %.val238 = load ptr, ptr %1, align 8, !tbaa !12 ; 6 uses
  %.val239 = load ptr, ptr %0, align 8, !tbaa !12 ; 5 uses
  %i.da = load i8, ptr %.val238, align 1, !tbaa !24
  %i.db = sext i8 %i.da to i64
  %i.dc = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.db ; 5 uses
  %.not3.i = icmp eq i32 %i.o, 0
  br i1 %.not3.i, label %match_calc.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.m
  %xtraiter = and i32 %i.o, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.08.i.prol = phi ptr [ %i.dk, %.lr.ph.i.prol ], [ %i.cz, %.lr.ph.i.preheader ] ; 2 uses
  %.065.i.prol = phi ptr [ %i.de, %.lr.ph.i.prol ], [ %.val239, %.lr.ph.i.preheader ] ; 2 uses
  %.074.i.prol = phi i32 [ %i.dd, %.lr.ph.i.prol ], [ %i.o, %.lr.ph.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.dd = add nsw i32 %.074.i.prol, -1            ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.065.i.prol, i64 1 ; 2 uses
  %i.df = load i8, ptr %.065.i.prol, align 1, !tbaa !24
  %i.dg = sext i8 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !4
  %i.dj = sitofp i32 %i.di to float
  %i.dk = getelementptr inbounds nuw i8, ptr %.08.i.prol, i64 4 ; 2 uses
  store float %i.dj, ptr %.08.i.prol, align 4, !tbaa !25
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !27

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.08.i.unr = phi ptr [ %i.cz, %.lr.ph.i.preheader ], [ %i.dk, %.lr.ph.i.prol ]
  %.065.i.unr = phi ptr [ %.val239, %.lr.ph.i.preheader ], [ %i.de, %.lr.ph.i.prol ]
  %.074.i.unr = phi i32 [ %i.o, %.lr.ph.i.preheader ], [ %i.dd, %.lr.ph.i.prol ]
  %i.dl = icmp ult i32 %i.o, 4
  br i1 %i.dl, label %match_calc.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.08.i = phi ptr [ %i.eo, %.lr.ph.i ], [ %.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.065.i = phi ptr [ %i.ei, %.lr.ph.i ], [ %.065.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.074.i = phi i32 [ %i.eh, %.lr.ph.i ], [ %.074.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.065.i, i64 1
  %i.dn = load i8, ptr %.065.i, align 1, !tbaa !24
  %i.do = sext i8 %i.dn to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !4
  %i.dr = sitofp i32 %i.dq to float
  %i.ds = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  store float %i.dr, ptr %.08.i, align 4, !tbaa !25
  %i.dt = getelementptr inbounds nuw i8, ptr %.065.i, i64 2
  %i.du = load i8, ptr %i.dm, align 1, !tbaa !24
  %i.dv = sext i8 %i.du to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !4
  %i.dy = sitofp i32 %i.dx to float
  %i.dz = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  store float %i.dy, ptr %i.ds, align 4, !tbaa !25
  %i.ea = getelementptr inbounds nuw i8, ptr %.065.i, i64 3
  %i.eb = load i8, ptr %i.dt, align 1, !tbaa !24
  %i.ec = sext i8 %i.eb to i64
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !4
  %i.ef = sitofp i32 %i.ee to float
  %i.eg = getelementptr inbounds nuw i8, ptr %.08.i, i64 12
  store float %i.ef, ptr %i.dz, align 4, !tbaa !25
  %i.eh = add nsw i32 %.074.i, -4                 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.065.i, i64 4
  %i.ej = load i8, ptr %i.ea, align 1, !tbaa !24
  %i.ek = sext i8 %i.ej to i64
  %i.el = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !4
  %i.en = sitofp i32 %i.em to float
  %i.eo = getelementptr inbounds nuw i8, ptr %.08.i, i64 16
  store float %i.en, ptr %i.eg, align 4, !tbaa !25
  %.not.i.3 = icmp eq i32 %i.eh, 0
  br i1 %.not.i.3, label %match_calc.exit, label %.lr.ph.i, !llvm.loop !29

match_calc.exit:                                  ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.m
  %i.ep = load i8, ptr %.val239, align 1, !tbaa !24
  %i.eq = sext i8 %i.ep to i64
  %i.er = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.eq ; 5 uses
  %.not3.i240 = icmp eq i32 %i.r, 0               ; 3 uses
  br i1 %.not3.i240, label %match_calc.exit246, label %.lr.ph.i241.preheader

.lr.ph.i241.preheader:                            ; preds = %match_calc.exit
  %xtraiter425 = and i32 %i.r, 3                  ; 2 uses
  %lcmp.mod426.not = icmp eq i32 %xtraiter425, 0
  br i1 %lcmp.mod426.not, label %.lr.ph.i241.prol.loopexit, label %.lr.ph.i241.prol

.lr.ph.i241.prol:                                 ; preds = %.lr.ph.i241.preheader, %.lr.ph.i241.prol
  %.08.i242.prol = phi ptr [ %i.ez, %.lr.ph.i241.prol ], [ %i.cw, %.lr.ph.i241.preheader ] ; 2 uses
  %.065.i243.prol = phi ptr [ %i.et, %.lr.ph.i241.prol ], [ %.val238, %.lr.ph.i241.preheader ] ; 2 uses
  %.074.i244.prol = phi i32 [ %i.es, %.lr.ph.i241.prol ], [ %i.r, %.lr.ph.i241.preheader ]
  %prol.iter427 = phi i32 [ %prol.iter427.next, %.lr.ph.i241.prol ], [ 0, %.lr.ph.i241.preheader ]
  %i.es = add nsw i32 %.074.i244.prol, -1         ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.065.i243.prol, i64 1 ; 2 uses
  %i.eu = load i8, ptr %.065.i243.prol, align 1, !tbaa !24
  %i.ev = sext i8 %i.eu to i64
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !4
  %i.ey = sitofp i32 %i.ex to float
  %i.ez = getelementptr inbounds nuw i8, ptr %.08.i242.prol, i64 4 ; 2 uses
  store float %i.ey, ptr %.08.i242.prol, align 4, !tbaa !25
  %prol.iter427.next = add i32 %prol.iter427, 1   ; 2 uses
  %prol.iter427.cmp.not = icmp eq i32 %prol.iter427.next, %xtraiter425
  br i1 %prol.iter427.cmp.not, label %.lr.ph.i241.prol.loopexit, label %.lr.ph.i241.prol, !llvm.loop !31

.lr.ph.i241.prol.loopexit:                        ; preds = %.lr.ph.i241.prol, %.lr.ph.i241.preheader
  %.08.i242.unr = phi ptr [ %i.cw, %.lr.ph.i241.preheader ], [ %i.ez, %.lr.ph.i241.prol ]
  %.065.i243.unr = phi ptr [ %.val238, %.lr.ph.i241.preheader ], [ %i.et, %.lr.ph.i241.prol ]
  %.074.i244.unr = phi i32 [ %i.r, %.lr.ph.i241.preheader ], [ %i.es, %.lr.ph.i241.prol ]
  %i.fa = icmp ult i32 %i.r, 4
  br i1 %i.fa, label %match_calc.exit246, label %.lr.ph.i241

.lr.ph.i241:                                      ; preds = %.lr.ph.i241.prol.loopexit, %.lr.ph.i241
  %.08.i242 = phi ptr [ %i.gd, %.lr.ph.i241 ], [ %.08.i242.unr, %.lr.ph.i241.prol.loopexit ] ; 5 uses
  %.065.i243 = phi ptr [ %i.fx, %.lr.ph.i241 ], [ %.065.i243.unr, %.lr.ph.i241.prol.loopexit ] ; 5 uses
  %.074.i244 = phi i32 [ %i.fw, %.lr.ph.i241 ], [ %.074.i244.unr, %.lr.ph.i241.prol.loopexit ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.065.i243, i64 1
  %i.fc = load i8, ptr %.065.i243, align 1, !tbaa !24
  %i.fd = sext i8 %i.fc to i64
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !4
  %i.fg = sitofp i32 %i.ff to float
  %i.fh = getelementptr inbounds nuw i8, ptr %.08.i242, i64 4
  store float %i.fg, ptr %.08.i242, align 4, !tbaa !25
  %i.fi = getelementptr inbounds nuw i8, ptr %.065.i243, i64 2
  %i.fj = load i8, ptr %i.fb, align 1, !tbaa !24
  %i.fk = sext i8 %i.fj to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !4
  %i.fn = sitofp i32 %i.fm to float
  %i.fo = getelementptr inbounds nuw i8, ptr %.08.i242, i64 8
  store float %i.fn, ptr %i.fh, align 4, !tbaa !25
  %i.fp = getelementptr inbounds nuw i8, ptr %.065.i243, i64 3
  %i.fq = load i8, ptr %i.fi, align 1, !tbaa !24
  %i.fr = sext i8 %i.fq to i64
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.fr
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !4
  %i.fu = sitofp i32 %i.ft to float
  %i.fv = getelementptr inbounds nuw i8, ptr %.08.i242, i64 12
  store float %i.fu, ptr %i.fo, align 4, !tbaa !25
  %i.fw = add nsw i32 %.074.i244, -4              ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.065.i243, i64 4
  %i.fy = load i8, ptr %i.fp, align 1, !tbaa !24
  %i.fz = sext i8 %i.fy to i64
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !4
  %i.gc = sitofp i32 %i.gb to float
  %i.gd = getelementptr inbounds nuw i8, ptr %.08.i242, i64 16
  store float %i.gc, ptr %i.fv, align 4, !tbaa !25
  %.not.i245.3 = icmp eq i32 %i.fw, 0
  br i1 %.not.i245.3, label %match_calc.exit246, label %.lr.ph.i241, !llvm.loop !29

match_calc.exit246:                               ; preds = %.lr.ph.i241.prol.loopexit, %.lr.ph.i241, %match_calc.exit
  %i.ge = load i32, ptr @outgap, align 4, !tbaa !4
  %i.gf = icmp eq i32 %i.ge, 1
  br i1 %i.gf, label %.preheader255, label %.loopexit

.preheader255:                                    ; preds = %match_calc.exit246
  br i1 %i.s, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader255
  %i.gg = add nuw nsw i64 %i.n, 1
  %wide.trip.count = and i64 %i.gg, 4294967295    ; 2 uses
  %i.gh = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %min.iters.check = icmp ult i64 %i.gh, 8
  br i1 %min.iters.check, label %.lr.ph.preheader424, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.gh, -8                      ; 3 uses
  %i.gi = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.b, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %index ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 4 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 20 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.gk, align 4, !tbaa !25
  %wide.load373 = load <4 x float>, ptr %i.gl, align 4, !tbaa !25
  %i.gm = fadd <4 x float> %wide.load, %broadcast.splat
  %i.gn = fadd <4 x float> %wide.load373, %broadcast.splat
end_hunk_0
begin_hunk_1_@genG__align11:bb.a
  %i.ki = getelementptr inbounds nuw i8, ptr %.08.i249.prol, i64 4 ; 2 uses
  store float %i.kh, ptr %.08.i249.prol, align 4, !tbaa !25
  %prol.iter433.next = add i32 %prol.iter433, 1   ; 2 uses
  %prol.iter433.cmp.not = icmp eq i32 %prol.iter433.next, %xtraiter431
  br i1 %prol.iter433.cmp.not, label %.lr.ph.i248.prol.loopexit, label %.lr.ph.i248.prol, !llvm.loop !40

.lr.ph.i248.prol.loopexit:                        ; preds = %.lr.ph.i248.prol, %.lr.ph.i248.preheader
  %.08.i249.unr = phi ptr [ %.0206291, %.lr.ph.i248.preheader ], [ %i.ki, %.lr.ph.i248.prol ]
  %.065.i250.unr = phi ptr [ %.val238, %.lr.ph.i248.preheader ], [ %i.kc, %.lr.ph.i248.prol ]
  %.074.i251.unr = phi i32 [ %i.r, %.lr.ph.i248.preheader ], [ %i.kb, %.lr.ph.i248.prol ]
  br i1 %i.jt, label %match_calc.exit253, label %.lr.ph.i248

match_calc.exit253.thread:                        ; preds = %bb.o
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv329
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !25
  store float %i.kk, ptr %.0206291, align 4, !tbaa !25
  br label %._crit_edge285

.lr.ph.i248:                                      ; preds = %.lr.ph.i248.prol.loopexit, %.lr.ph.i248
  %.08.i249 = phi ptr [ %i.ln, %.lr.ph.i248 ], [ %.08.i249.unr, %.lr.ph.i248.prol.loopexit ] ; 5 uses
  %.065.i250 = phi ptr [ %i.lh, %.lr.ph.i248 ], [ %.065.i250.unr, %.lr.ph.i248.prol.loopexit ] ; 5 uses
  %.074.i251 = phi i32 [ %i.lg, %.lr.ph.i248 ], [ %.074.i251.unr, %.lr.ph.i248.prol.loopexit ]
  %i.kl = getelementptr inbounds nuw i8, ptr %.065.i250, i64 1
  %i.km = load i8, ptr %.065.i250, align 1, !tbaa !24
  %i.kn = sext i8 %i.km to i64
  %i.ko = getelementptr inbounds [4 x i8], ptr %i.ka, i64 %i.kn
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !4
  %i.kq = sitofp i32 %i.kp to float
  %i.kr = getelementptr inbounds nuw i8, ptr %.08.i249, i64 4
  store float %i.kq, ptr %.08.i249, align 4, !tbaa !25
  %i.ks = getelementptr inbounds nuw i8, ptr %.065.i250, i64 2
  %i.kt = load i8, ptr %i.kl, align 1, !tbaa !24
  %i.ku = sext i8 %i.kt to i64
  %i.kv = getelementptr inbounds [4 x i8], ptr %i.ka, i64 %i.ku
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !4
  %i.kx = sitofp i32 %i.kw to float
  %i.ky = getelementptr inbounds nuw i8, ptr %.08.i249, i64 8
  store float %i.kx, ptr %i.kr, align 4, !tbaa !25
  %i.kz = getelementptr inbounds nuw i8, ptr %.065.i250, i64 3
  %i.la = load i8, ptr %i.ks, align 1, !tbaa !24
  %i.lb = sext i8 %i.la to i64
  %i.lc = getelementptr inbounds [4 x i8], ptr %i.ka, i64 %i.lb
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !4
  %i.le = sitofp i32 %i.ld to float
  %i.lf = getelementptr inbounds nuw i8, ptr %.08.i249, i64 12
  store float %i.le, ptr %i.ky, align 4, !tbaa !25
  %i.lg = add nsw i32 %.074.i251, -4              ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.065.i250, i64 4
  %i.li = load i8, ptr %i.kz, align 1, !tbaa !24
  %i.lj = sext i8 %i.li to i64
  %i.lk = getelementptr inbounds [4 x i8], ptr %i.ka, i64 %i.lj
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !4
  %i.lm = sitofp i32 %i.ll to float
  %i.ln = getelementptr inbounds nuw i8, ptr %.08.i249, i64 16
  store float %i.lm, ptr %i.lf, align 4, !tbaa !25
  %.not.i252.3 = icmp eq i32 %i.lg, 0
  br i1 %.not.i252.3, label %match_calc.exit253, label %.lr.ph.i248, !llvm.loop !29

match_calc.exit253:                               ; preds = %.lr.ph.i248, %.lr.ph.i248.prol.loopexit
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv329
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !25
  store float %i.lp, ptr %.0206291, align 4, !tbaa !25
  br i1 %i.t, label %._crit_edge285, label %.lr.ph284.preheader

.lr.ph284.preheader:                              ; preds = %match_calc.exit253
  %i.lq = load float, ptr %.0205292, align 4, !tbaa !25 ; 2 uses
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv329
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !18
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv329
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !18
  %i.lv = trunc nuw nsw i64 %i.ju to i32          ; 4 uses
  br label %.lr.ph284

.lr.ph284:                                        ; preds = %.lr.ph284.preheader, %bb.y
  %indvars.iv324 = phi i64 [ 1, %.lr.ph284.preheader ], [ %indvars.iv.next325, %bb.y ] ; 3 uses
  %.0199283.pn = phi ptr [ %.0206291, %.lr.ph284.preheader ], [ %.0199283, %bb.y ]
  %.0204282.pn = phi ptr [ %i.lu, %.lr.ph284.preheader ], [ %.0204282, %bb.y ]
  %.0203281.pn = phi ptr [ %i.ls, %.lr.ph284.preheader ], [ %.0203281, %bb.y ]
  %.0202280.pn = phi ptr [ %i.jm, %.lr.ph284.preheader ], [ %.0202280, %bb.y ]
  %.0201279.pn = phi ptr [ %i.jn, %.lr.ph284.preheader ], [ %.0201279, %bb.y ]
  %.0198278.pn = phi ptr [ %i.jo, %.lr.ph284.preheader ], [ %.0198278, %bb.y ]
  %.0197277.pn = phi ptr [ %i.jp, %.lr.ph284.preheader ], [ %.0197277, %bb.y ]
  %.0188275 = phi i32 [ 0, %.lr.ph284.preheader ], [ %.2190, %bb.y ] ; 2 uses
  %.0191274 = phi i32 [ 0, %.lr.ph284.preheader ], [ %.2193, %bb.y ] ; 2 uses
  %.0194273 = phi float [ -1.000000e+07, %.lr.ph284.preheader ], [ %.2196, %bb.y ] ; 3 uses
  %.0200272 = phi ptr [ %.0205292, %.lr.ph284.preheader ], [ %i.nf, %bb.y ] ; 4 uses
  %i.lw = phi float [ %i.lq, %.lr.ph284.preheader ], [ %i.mi, %bb.y ] ; 3 uses
  %i.lx = phi i32 [ 0, %.lr.ph284.preheader ], [ %i.mg, %bb.y ] ; 2 uses
  %i.ly = phi float [ %i.lq, %.lr.ph284.preheader ], [ %i.nc, %bb.y ] ; 4 uses
  %i.lz = phi i32 [ 0, %.lr.ph284.preheader ], [ %i.nb, %bb.y ] ; 2 uses
  %.0197277 = getelementptr inbounds nuw i8, ptr %.0197277.pn, i64 4 ; 3 uses
  %.0198278 = getelementptr inbounds nuw i8, ptr %.0198278.pn, i64 4 ; 3 uses
  %.0201279 = getelementptr inbounds nuw i8, ptr %.0201279.pn, i64 4 ; 3 uses
  %.0202280 = getelementptr inbounds nuw i8, ptr %.0202280.pn, i64 4 ; 3 uses
  %.0203281 = getelementptr inbounds nuw i8, ptr %.0203281.pn, i64 4 ; 4 uses
  %.0204282 = getelementptr inbounds nuw i8, ptr %.0204282.pn, i64 4 ; 4 uses
  %.0199283 = getelementptr inbounds nuw i8, ptr %.0199283.pn, i64 4 ; 3 uses
  %i.ma = load float, ptr %.0200272, align 4, !tbaa !25 ; 6 uses
  store i32 %i.lv, ptr %.0204282, align 4, !tbaa !4
  %i.mb = fadd float %i.lw, %i.b                  ; 2 uses
  %i.mc = fcmp ogt float %i.mb, %i.ma             ; 2 uses
  %i.md = trunc i64 %indvars.iv324 to i32
  %i.me = add i32 %i.md, -1                       ; 5 uses
  %storemerge = select i1 %i.mc, i32 %i.lx, i32 %i.me
  %.2187 = select i1 %i.mc, float %i.mb, float %i.ma ; 2 uses
  store i32 %storemerge, ptr %.0203281, align 4, !tbaa !4
  %i.mf = fcmp ult float %i.ma, %i.lw             ; 2 uses
  %i.mg = select i1 %i.mf, i32 %i.lx, i32 %i.me
  %i.mh = select i1 %i.mf, float %i.lw, float %i.ma
  %i.mi = fadd float %i.mh, %i.f
  %i.mj = load float, ptr %.0202280, align 4, !tbaa !25 ; 2 uses
  %i.mk = fadd float %i.mj, %i.b                  ; 2 uses
  %i.ml = fcmp ogt float %i.mk, %.2187
  br i1 %i.ml, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph284
  %i.mm = load i32, ptr %.0198278, align 4, !tbaa !4
  store i32 %i.mm, ptr %.0204282, align 4, !tbaa !4
  store i32 %i.me, ptr %.0203281, align 4, !tbaa !4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph284
  %.3 = phi float [ %i.mk, %bb.p ], [ %.2187, %.lr.ph284 ] ; 2 uses
  %i.mn = fcmp ult float %i.ma, %i.mj
  br i1 %i.mn, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store float %i.ma, ptr %.0202280, align 4, !tbaa !25
  store i32 %i.lv, ptr %.0198278, align 4, !tbaa !4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv324 ; 2 uses
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !25
  %i.mq = fadd float %i.mp, %i.f
  store float %i.mq, ptr %i.mo, align 4, !tbaa !25
  %i.mr = fadd float %.0194273, %i.d              ; 2 uses
  %i.ms = fcmp ogt float %i.mr, %.3
  br i1 %i.ms, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 %.0191274, ptr %.0204282, align 4, !tbaa !4
  store i32 %.0188275, ptr %.0203281, align 4, !tbaa !4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.4 = phi float [ %i.mr, %bb.t ], [ %.3, %bb.s ] ; 2 uses
  %i.mt = fcmp ogt float %i.ly, %.0194273         ; 3 uses
  %.1195 = select i1 %i.mt, float %i.ly, float %.0194273 ; 2 uses
  %.1192 = select i1 %i.mt, i32 %i.lv, i32 %.0191274
  %.1189 = select i1 %i.mt, i32 %i.lz, i32 %.0188275
  %i.mu = load float, ptr %.0201279, align 4, !tbaa !25 ; 3 uses
  %i.mv = fcmp ogt float %i.mu, %.1195
  br i1 %i.mv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.mw = load i32, ptr %.0197277, align 4, !tbaa !4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.2196 = phi float [ %i.mu, %bb.v ], [ %.1195, %bb.u ]
  %.2193 = phi i32 [ %i.mw, %bb.v ], [ %.1192, %bb.u ]
  %.2190 = phi i32 [ %i.me, %bb.v ], [ %.1189, %bb.u ]
  %i.mx = load float, ptr %.0200272, align 4, !tbaa !25 ; 3 uses
  %i.my = fcmp ogt float %i.mx, %i.mu
  br i1 %i.my, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store float %i.mx, ptr %.0201279, align 4, !tbaa !25
  store i32 %i.lv, ptr %.0197277, align 4, !tbaa !4
  %.pre342 = load float, ptr %.0200272, align 4, !tbaa !25
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.mz = phi float [ %.pre342, %bb.x ], [ %i.mx, %bb.w ] ; 2 uses
  %i.na = fcmp ogt float %i.mz, %i.ly             ; 2 uses
  %i.nb = select i1 %i.na, i32 %i.me, i32 %i.lz
  %i.nc = select i1 %i.na, float %i.mz, float %i.ly
  %i.nd = load float, ptr %.0199283, align 4, !tbaa !25
  %i.ne = fadd float %.4, %i.nd
  store float %i.ne, ptr %.0199283, align 4, !tbaa !25
  %i.nf = getelementptr inbounds nuw i8, ptr %.0200272, i64 4
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 1 ; 2 uses
  %exitcond328.not = icmp eq i64 %indvars.iv.next325, %wide.trip.count327
  br i1 %exitcond328.not, label %._crit_edge285, label %.lr.ph284, !llvm.loop !41

._crit_edge285:                                   ; preds = %bb.y, %match_calc.exit253.thread, %match_calc.exit253
  %.1186.lcssa = phi float [ %.0185293, %match_calc.exit253 ], [ %.0185293, %match_calc.exit253.thread ], [ %.4, %bb.y ] ; 2 uses
  %i.ng = getelementptr inbounds i8, ptr %.0206291, i64 %i.jr
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !25
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %indvars.iv329
  store float %i.nh, ptr %i.ni, align 4, !tbaa !25
  %indvars.iv.next330 = add nuw nsw i64 %indvars.iv329, 1 ; 2 uses
  %exitcond333.not = icmp eq i64 %indvars.iv.next330, %wide.trip.count332
  br i1 %exitcond333.not, label %._crit_edge297, label %bb.o, !llvm.loop !42

._crit_edge297:                                   ; preds = %._crit_edge285, %bb.n
  %.0185.lcssa = phi float [ 0.000000e+00, %bb.n ], [ %.1186.lcssa, %._crit_edge285 ]
  %i.nj = load ptr, ptr @genG__align11.mseq1, align 8, !tbaa !8 ; 17 uses
  %i.nk = load ptr, ptr @genG__align11.mseq2, align 8, !tbaa !8 ; 17 uses
  %i.nl = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.val239) #9 ; 2 uses
  %i.nm = trunc i64 %i.nl to i32                  ; 3 uses
  %i.nn = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.val238) #9 ; 2 uses
  %i.no = trunc i64 %i.nn to i32                  ; 3 uses
  %.not1.i = icmp slt i32 %i.nm, 0
  br i1 %.not1.i, label %.preheader.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge297
  %i.np = add nuw nsw i64 %i.nl, 1                ; 3 uses
  %wide.trip.count.i = and i64 %i.np, 4294967295
  %i.nq = add nsw i64 %wide.trip.count.i, -1
  %xtraiter434 = and i64 %i.np, 3                 ; 3 uses
  %i.nr = icmp ult i64 %i.nq, 3
  br i1 %i.nr, label %.lr.ph.i254.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.np, 4294967292
  br label %.lr.ph.i254

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i254
  %lcmp.mod435.not = icmp eq i64 %xtraiter434, 0
  br i1 %lcmp.mod435.not, label %.preheader.i, label %.lr.ph.i254.epil.preheader

.lr.ph.i254.epil.preheader:                       ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod436 = icmp ne i64 %xtraiter434, 0
  tail call void @llvm.assume(i1 %lcmp.mod436)
  br label %.lr.ph.i254.epil

.lr.ph.i254.epil:                                 ; preds = %.lr.ph.i254.epil, %.lr.ph.i254.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i254.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i254.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i254.epil.preheader ], [ %epil.iter.next, %.lr.ph.i254.epil ]
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.i.epil
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !18
  store i32 -1, ptr %i.nt, align 4, !tbaa !4
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.i.epil
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !18
  store i32 -1, ptr %i.nv, align 4, !tbaa !4
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter434
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %.lr.ph.i254.epil, !llvm.loop !43

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.i254.epil, %._crit_edge297
  %.not753.i = icmp slt i32 %i.no, 0
  br i1 %.not753.i, label %._crit_edge.i, label %.lr.ph5.i

.lr.ph5.i:                                        ; preds = %.preheader.i
  %i.nw = load ptr, ptr %i.cv, align 8, !tbaa !18
  %i.nx = load ptr, ptr %i.cu, align 8, !tbaa !18
  %3 = shl i64 %i.nn, 2
  %4 = add nuw nsw i64 %3, 4
  %5 = and i64 %4, 17179869180                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.nw, i8 -1, i64 %5, i1 false), !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.nx, i8 -1, i64 %5, i1 false), !tbaa !4
  br label %._crit_edge.i

.lr.ph.i254:                                      ; preds = %.lr.ph.i254, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i254 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i254 ]
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.i
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !18
  store i32 -1, ptr %i.nz, align 4, !tbaa !4
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.i
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !18
  store i32 -1, ptr %i.ob, align 4, !tbaa !4
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.next.i
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !18
  store i32 -1, ptr %i.od, align 4, !tbaa !4
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.next.i
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !18
  store i32 -1, ptr %i.of, align 4, !tbaa !4
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.next.i.1
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !18
  store i32 -1, ptr %i.oh, align 4, !tbaa !4
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.next.i.1
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !18
  store i32 -1, ptr %i.oj, align 4, !tbaa !4
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.next.i.2
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !18
  store i32 -1, ptr %i.ol, align 4, !tbaa !4
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.next.i.2
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !18
  store i32 -1, ptr %i.on, align 4, !tbaa !4
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph.i254, !llvm.loop !44

._crit_edge.i:                                    ; preds = %.lr.ph5.i, %.preheader.i
  %i.oo = add nsw i32 %i.no, %i.nm                ; 3 uses
  %i.op = load ptr, ptr %i.nj, align 8, !tbaa !12
  %i.oq = sext i32 %i.oo to i64                   ; 2 uses
  %i.or = getelementptr inbounds i8, ptr %i.op, i64 %i.oq ; 2 uses
  store ptr %i.or, ptr %i.nj, align 8, !tbaa !12
  store i8 0, ptr %i.or, align 1, !tbaa !24
  %i.os = load ptr, ptr %i.nk, align 8, !tbaa !12
  %i.ot = getelementptr inbounds i8, ptr %i.os, i64 %i.oq ; 2 uses
  store ptr %i.ot, ptr %i.nk, align 8, !tbaa !12
  store i8 0, ptr %i.ot, align 1, !tbaa !24
  %.not7617.i = icmp slt i32 %i.oo, 0
  br i1 %.not7617.i, label %genGtracking.exit, label %.lr.ph22.i

.lr.ph22.i:                                       ; preds = %._crit_edge.i, %bb.z
  %.06920.i = phi i32 [ %i.sh, %bb.z ], [ 0, %._crit_edge.i ] ; 2 uses
  %.07119.i = phi i32 [ %i.oz, %bb.z ], [ %i.nm, %._crit_edge.i ] ; 4 uses
  %.07218.i = phi i32 [ %i.pd, %bb.z ], [ %i.no, %._crit_edge.i ] ; 3 uses
  %i.ou = sext i32 %.07119.i to i64               ; 2 uses
  %i.ov = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.ou
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !18
  %i.ox = sext i32 %.07218.i to i64               ; 2 uses
  %i.oy = getelementptr inbounds [4 x i8], ptr %i.ow, i64 %i.ox
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !4  ; 5 uses
  %i.pa = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.ou
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !18
  %i.pc = getelementptr inbounds [4 x i8], ptr %i.pb, i64 %i.ox
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !4  ; 4 uses
  %i.pe = xor i32 %i.oz, -1
  %i.pf = add i32 %.07119.i, %i.pe                ; 4 uses
  %.not776.i = icmp eq i32 %i.pf, 0
  br i1 %.not776.i, label %._crit_edge10.i, label %.lr.ph9.preheader.i

.lr.ph9.preheader.i:                              ; preds = %.lr.ph22.i
  %i.pg = sext i32 %i.pf to i64                   ; 3 uses
  %i.ph = sext i32 %i.oz to i64                   ; 3 uses
  %i.pi = and i32 %i.pf, 1
  %lcmp.mod441.not = icmp eq i32 %i.pi, 0
  br i1 %lcmp.mod441.not, label %.lr.ph9.i.prol.loopexit, label %.lr.ph9.i.prol

.lr.ph9.i.prol:                                   ; preds = %.lr.ph9.preheader.i
  %i.pj = load ptr, ptr %0, align 8, !tbaa !12
  %i.pk = getelementptr i8, ptr %i.pj, i64 %i.pg
  %i.pl = getelementptr i8, ptr %i.pk, i64 %i.ph
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !24
  %i.pn = load ptr, ptr %i.nj, align 8, !tbaa !12
  %i.po = getelementptr inbounds i8, ptr %i.pn, i64 -1 ; 2 uses
  store ptr %i.po, ptr %i.nj, align 8, !tbaa !12
  store i8 %i.pm, ptr %i.po, align 1, !tbaa !24
  %i.pp = load ptr, ptr %i.nk, align 8, !tbaa !12
  %i.pq = getelementptr inbounds i8, ptr %i.pp, i64 -1 ; 2 uses
  store ptr %i.pq, ptr %i.nk, align 8, !tbaa !12
  store i8 45, ptr %i.pq, align 1, !tbaa !24
  %indvars.iv.next33.i.prol = add nsw i64 %i.pg, -1
  br label %.lr.ph9.i.prol.loopexit

.lr.ph9.i.prol.loopexit:                          ; preds = %.lr.ph9.i.prol, %.lr.ph9.preheader.i
  %indvars.iv32.i.unr = phi i64 [ %i.pg, %.lr.ph9.preheader.i ], [ %indvars.iv.next33.i.prol, %.lr.ph9.i.prol ]
  %i.pr = icmp eq i32 %i.pf, 1
  br i1 %i.pr, label %._crit_edge10.loopexit.i, label %.lr.ph9.i

.lr.ph9.i:                                        ; preds = %.lr.ph9.i.prol.loopexit, %.lr.ph9.i
  %indvars.iv32.i = phi i64 [ %indvars.iv.next33.i.1, %.lr.ph9.i ], [ %indvars.iv32.i.unr, %.lr.ph9.i.prol.loopexit ] ; 3 uses
  %i.ps = load ptr, ptr %0, align 8, !tbaa !12
  %i.pt = getelementptr i8, ptr %i.ps, i64 %indvars.iv32.i
  %i.pu = getelementptr i8, ptr %i.pt, i64 %i.ph
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !24
  %i.pw = load ptr, ptr %i.nj, align 8, !tbaa !12
  %i.px = getelementptr inbounds i8, ptr %i.pw, i64 -1 ; 2 uses
  store ptr %i.px, ptr %i.nj, align 8, !tbaa !12
  store i8 %i.pv, ptr %i.px, align 1, !tbaa !24
  %i.py = load ptr, ptr %i.nk, align 8, !tbaa !12
  %i.pz = getelementptr inbounds i8, ptr %i.py, i64 -1 ; 2 uses
  store ptr %i.pz, ptr %i.nk, align 8, !tbaa !12
  store i8 45, ptr %i.pz, align 1, !tbaa !24
  %i.qa = load ptr, ptr %0, align 8, !tbaa !12
  %i.qb = getelementptr i8, ptr %i.qa, i64 %indvars.iv32.i
  %i.qc = getelementptr i8, ptr %i.qb, i64 -1
  %i.qd = getelementptr i8, ptr %i.qc, i64 %i.ph
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !24
  %i.qf = load ptr, ptr %i.nj, align 8, !tbaa !12
  %i.qg = getelementptr inbounds i8, ptr %i.qf, i64 -1 ; 2 uses
  store ptr %i.qg, ptr %i.nj, align 8, !tbaa !12
  store i8 %i.qe, ptr %i.qg, align 1, !tbaa !24
  %i.qh = load ptr, ptr %i.nk, align 8, !tbaa !12
  %i.qi = getelementptr inbounds i8, ptr %i.qh, i64 -1 ; 2 uses
  store ptr %i.qi, ptr %i.nk, align 8, !tbaa !12
  store i8 45, ptr %i.qi, align 1, !tbaa !24
  %indvars.iv.next33.i.1 = add nsw i64 %indvars.iv32.i, -2 ; 2 uses
  %.not77.i.1 = icmp eq i64 %indvars.iv.next33.i.1, 0
  br i1 %.not77.i.1, label %._crit_edge10.loopexit.i, label %.lr.ph9.i, !llvm.loop !45

._crit_edge10.loopexit.i:                         ; preds = %.lr.ph9.i, %.lr.ph9.i.prol.loopexit
  %i.qj = add nsw i32 %.06920.i, -1
  %i.qk = add i32 %i.qj, %.07119.i
  %i.ql = sub i32 %i.qk, %i.oz
  br label %._crit_edge10.i

._crit_edge10.i:                                  ; preds = %._crit_edge10.loopexit.i, %.lr.ph22.i
  %.170.lcssa.i = phi i32 [ %.06920.i, %.lr.ph22.i ], [ %i.ql, %._crit_edge10.loopexit.i ] ; 3 uses
  %i.qm = xor i32 %i.pd, -1
  %i.qn = add i32 %.07218.i, %i.qm                ; 4 uses
  %.not7811.i = icmp eq i32 %i.qn, 0
  br i1 %.not7811.i, label %._crit_edge15.i, label %.lr.ph14.preheader.i

.lr.ph14.preheader.i:                             ; preds = %._crit_edge10.i
  %i.qo = sext i32 %i.qn to i64                   ; 3 uses
  %i.qp = sext i32 %i.pd to i64                   ; 3 uses
  %i.qq = and i32 %i.qn, 1
  %lcmp.mod444.not = icmp eq i32 %i.qq, 0
  br i1 %lcmp.mod444.not, label %.lr.ph14.i.prol.loopexit, label %.lr.ph14.i.prol

.lr.ph14.i.prol:                                  ; preds = %.lr.ph14.preheader.i
  %i.qr = load ptr, ptr %i.nj, align 8, !tbaa !12
  %i.qs = getelementptr inbounds i8, ptr %i.qr, i64 -1 ; 2 uses
  store ptr %i.qs, ptr %i.nj, align 8, !tbaa !12
  store i8 45, ptr %i.qs, align 1, !tbaa !24
  %i.qt = load ptr, ptr %1, align 8, !tbaa !12
  %i.qu = getelementptr i8, ptr %i.qt, i64 %i.qo
  %i.qv = getelementptr i8, ptr %i.qu, i64 %i.qp
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !24
  %i.qx = load ptr, ptr %i.nk, align 8, !tbaa !12
  %i.qy = getelementptr inbounds i8, ptr %i.qx, i64 -1 ; 2 uses
  store ptr %i.qy, ptr %i.nk, align 8, !tbaa !12
  store i8 %i.qw, ptr %i.qy, align 1, !tbaa !24
  %i.qz = add nsw i32 %.170.lcssa.i, 1            ; 2 uses
  %indvars.iv.next36.i.prol = add nsw i64 %i.qo, -1
  br label %.lr.ph14.i.prol.loopexit

.lr.ph14.i.prol.loopexit:                         ; preds = %.lr.ph14.i.prol, %.lr.ph14.preheader.i
  %.lcssa.unr = phi i32 [ poison, %.lr.ph14.preheader.i ], [ %i.qz, %.lr.ph14.i.prol ]
  %indvars.iv35.i.unr = phi i64 [ %i.qo, %.lr.ph14.preheader.i ], [ %indvars.iv.next36.i.prol, %.lr.ph14.i.prol ]
  %.212.i.unr = phi i32 [ %.170.lcssa.i, %.lr.ph14.preheader.i ], [ %i.qz, %.lr.ph14.i.prol ]
  %i.ra = icmp eq i32 %i.qn, 1
  br i1 %i.ra, label %._crit_edge15.i, label %.lr.ph14.i

.lr.ph14.i:                                       ; preds = %.lr.ph14.i.prol.loopexit, %.lr.ph14.i
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i.1, %.lr.ph14.i ], [ %indvars.iv35.i.unr, %.lr.ph14.i.prol.loopexit ] ; 3 uses
  %.212.i = phi i32 [ %i.rs, %.lr.ph14.i ], [ %.212.i.unr, %.lr.ph14.i.prol.loopexit ]
  %i.rb = load ptr, ptr %i.nj, align 8, !tbaa !12
  %i.rc = getelementptr inbounds i8, ptr %i.rb, i64 -1 ; 2 uses
  store ptr %i.rc, ptr %i.nj, align 8, !tbaa !12
  store i8 45, ptr %i.rc, align 1, !tbaa !24
  %i.rd = load ptr, ptr %1, align 8, !tbaa !12
  %i.re = getelementptr i8, ptr %i.rd, i64 %indvars.iv35.i
  %i.rf = getelementptr i8, ptr %i.re, i64 %i.qp
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !24
  %i.rh = load ptr, ptr %i.nk, align 8, !tbaa !12
  %i.ri = getelementptr inbounds i8, ptr %i.rh, i64 -1 ; 2 uses
  store ptr %i.ri, ptr %i.nk, align 8, !tbaa !12
  store i8 %i.rg, ptr %i.ri, align 1, !tbaa !24
  %i.rj = load ptr, ptr %i.nj, align 8, !tbaa !12
  %i.rk = getelementptr inbounds i8, ptr %i.rj, i64 -1 ; 2 uses
  store ptr %i.rk, ptr %i.nj, align 8, !tbaa !12
  store i8 45, ptr %i.rk, align 1, !tbaa !24
  %i.rl = load ptr, ptr %1, align 8, !tbaa !12
  %i.rm = getelementptr i8, ptr %i.rl, i64 %indvars.iv35.i
  %i.rn = getelementptr i8, ptr %i.rm, i64 -1
  %i.ro = getelementptr i8, ptr %i.rn, i64 %i.qp
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !24
  %i.rq = load ptr, ptr %i.nk, align 8, !tbaa !12
  %i.rr = getelementptr inbounds i8, ptr %i.rq, i64 -1 ; 2 uses
  store ptr %i.rr, ptr %i.nk, align 8, !tbaa !12
  store i8 %i.rp, ptr %i.rr, align 1, !tbaa !24
  %i.rs = add nsw i32 %.212.i, 2                  ; 2 uses
  %indvars.iv.next36.i.1 = add nsw i64 %indvars.iv35.i, -2 ; 2 uses
  %.not78.i.1 = icmp eq i64 %indvars.iv.next36.i.1, 0
  br i1 %.not78.i.1, label %._crit_edge15.i, label %.lr.ph14.i, !llvm.loop !46

._crit_edge15.i:                                  ; preds = %.lr.ph14.i.prol.loopexit, %.lr.ph14.i, %._crit_edge10.i
  %.2.lcssa.i = phi i32 [ %.170.lcssa.i, %._crit_edge10.i ], [ %.lcssa.unr, %.lr.ph14.i.prol.loopexit ], [ %i.rs, %.lr.ph14.i ]
  %i.rt = icmp slt i32 %.07119.i, 1
  %i.ru = icmp slt i32 %.07218.i, 1
  %or.cond.i = or i1 %i.rt, %i.ru
  br i1 %or.cond.i, label %genGtracking.exit, label %bb.z

bb.z:                                             ; preds = %._crit_edge15.i
  %i.rv = load ptr, ptr %0, align 8, !tbaa !12
  %i.rw = sext i32 %i.oz to i64
  %i.rx = getelementptr inbounds i8, ptr %i.rv, i64 %i.rw
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !24
  %i.rz = load ptr, ptr %i.nj, align 8, !tbaa !12
  %i.sa = getelementptr inbounds i8, ptr %i.rz, i64 -1 ; 2 uses
  store ptr %i.sa, ptr %i.nj, align 8, !tbaa !12
  store i8 %i.ry, ptr %i.sa, align 1, !tbaa !24
  %i.sb = load ptr, ptr %1, align 8, !tbaa !12
  %i.sc = sext i32 %i.pd to i64
  %i.sd = getelementptr inbounds i8, ptr %i.sb, i64 %i.sc
  %i.se = load i8, ptr %i.sd, align 1, !tbaa !24
  %i.sf = load ptr, ptr %i.nk, align 8, !tbaa !12
  %i.sg = getelementptr inbounds i8, ptr %i.sf, i64 -1 ; 2 uses
  store ptr %i.sg, ptr %i.nk, align 8, !tbaa !12
  store i8 %i.se, ptr %i.sg, align 1, !tbaa !24
  %i.sh = add nsw i32 %.2.lcssa.i, 2              ; 2 uses
  %.not76.i = icmp sgt i32 %i.sh, %i.oo
  br i1 %.not76.i, label %genGtracking.exit, label %.lr.ph22.i, !llvm.loop !47

genGtracking.exit:                                ; preds = %._crit_edge15.i, %bb.z, %._crit_edge.i
  %i.si = load ptr, ptr %i.nj, align 8, !tbaa !12 ; 2 uses
  %i.sj = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.si) #9
  %i.sk = trunc i64 %i.sj to i32                  ; 3 uses
  %i.sl = icmp slt i32 %2, %i.sk
  %i.sm = icmp sgt i32 %i.sk, 5000000
  %or.cond7 = or i1 %i.sl, %i.sm
  br i1 %or.cond7, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %genGtracking.exit
  %i.sn = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.so = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.sn, ptr noundef nonnull @.str.1, i32 noundef %2, i32 noundef %i.sk, i32 noundef 5000000) #10 ; 0 uses
  tail call void @ErrorExit(ptr noundef nonnull @.str.2) #8
  %.pre343 = load ptr, ptr @genG__align11.mseq1, align 8, !tbaa !8
  %.pre344 = load ptr, ptr %.pre343, align 8, !tbaa !12
  %.pre345 = load ptr, ptr @genG__align11.mseq2, align 8, !tbaa !8
  br label %bb.ab

bb.ab:                                            ; preds = %genGtracking.exit, %bb.aa
  %i.sp = phi ptr [ %i.nk, %genGtracking.exit ], [ %.pre345, %bb.aa ]
  %i.sq = phi ptr [ %i.si, %genGtracking.exit ], [ %.pre344, %bb.aa ]
  %i.sr = load ptr, ptr %0, align 8, !tbaa !12
  %i.ss = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.sr, ptr noundef nonnull dereferenceable(1) %i.sq) #8 ; 0 uses
  %i.st = load ptr, ptr %1, align 8, !tbaa !12
  %i.su = load ptr, ptr %i.sp, align 8, !tbaa !12
  %i.sv = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.st, ptr noundef nonnull dereferenceable(1) %i.su) #8 ; 0 uses
  ret float %.0185.lcssa
}

declare ptr @AllocateCharMtx(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare void @FreeFloatVec(ptr noundef) local_unnamed_addr #1

declare void @FreeIntVec(ptr noundef) local_unnamed_addr #1

declare void @FreeCharMtx(ptr noundef) local_unnamed_addr #1

declare void @FreeFloatMtx(ptr noundef) local_unnamed_addr #1

declare void @FreeIntMtx(ptr noundef) local_unnamed_addr #1

declare ptr @AllocateFloatVec(i32 noundef) local_unnamed_addr #1

declare ptr @AllocateIntVec(i32 noundef) local_unnamed_addr #1

declare ptr @AllocateFloatMtx(i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @AllocateIntMtx(i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @ErrorExit(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p2 omnipotent char", !10, i64 0}
!10 = !{!"any p2 pointer", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 omnipotent char", !11, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 float", !11, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 int", !11, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"p2 float", !10, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"p2 int", !10, i64 0}
!24 = !{!6, !6, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"float", !6, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = distinct !{!31, !28}
!32 = distinct !{!32, !30, !33, !34}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !{!"llvm.loop.unroll.runtime.disable"}
!35 = distinct !{!35, !30, !33, !34}
!36 = distinct !{!36, !30, !34, !33}
!37 = distinct !{!37, !30, !34, !33}
!38 = distinct !{!38, !30, !33, !34}
!39 = distinct !{!39, !30, !33}
!40 = distinct !{!40, !28}
!41 = distinct !{!41, !30}
!42 = distinct !{!42, !30}
!43 = distinct !{!43, !28}
!44 = distinct !{!44, !30}
!45 = distinct !{!45, !30}
!46 = distinct !{!46, !30}
!47 = distinct !{!47, !30}
end_hunk_1
