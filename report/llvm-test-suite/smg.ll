loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"SMG\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Residual norm[%d] = %e   \00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Relative residual norm[%d] = %e\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @hypre_SMGCreate(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @hypre_CAlloc(i32 noundef 1, i32 noundef 232) #9 ; 11 uses
  store i32 %0, ptr %i.a, align 8, !tbaa !8
  %i.b = tail call i32 @hypre_InitializeTiming(ptr noundef nonnull @.str) #9
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 204
  store i32 %i.b, ptr %i.c, align 4, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double f0x3EB0C6F7A0B5ED8D, ptr %i.e, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <4 x i32> <i32 200, i32 0, i32 0, i32 0>, ptr %i.f, align 8, !tbaa !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <4 x i32> <i32 0, i32 0, i32 0, i32 1>, ptr %i.g, align 8, !tbaa !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 1, ptr %i.h, align 8, !tbaa !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  store i32 1, ptr %i.i, align 4, !tbaa !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store i32 0, ptr %i.j, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <4 x i32> <i32 -1, i32 1, i32 1, i32 2>, ptr %i.k, align 8, !tbaa !4
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @hypre_CAlloc(i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @hypre_InitializeTiming(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_SMGDestroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  tail call void @hypre_Free(ptr noundef %i.e) #9
  store ptr null, ptr %i.d, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22
  tail call void @hypre_Free(ptr noundef %i.g) #9
  store ptr null, ptr %i.f, align 8, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !23   ; 2 uses
  %i.j = icmp sgt i32 %i.i, -1
  br i1 %i.j, label %.preheader, label %bb.k

.preheader:                                       ; preds = %bb.d
  %i.k = icmp samesign ugt i32 %i.i, 1
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 5 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.s = tail call i32 @hypre_SMGRelaxDestroy(ptr noundef %i.r) #9 ; 0 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !25
  %i.w = tail call i32 @hypre_SMGResidualDestroy(ptr noundef %i.v) #9 ; 0 uses
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !25
  %i.aa = tail call i32 @hypre_SemiRestrictDestroy(ptr noundef %i.z) #9 ; 0 uses
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !25
  %i.ae = tail call i32 @hypre_SemiInterpDestroy(ptr noundef %i.ad) #9 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.af = load i32, ptr %i.h, align 8, !tbaa !23
  %i.ag = add nsw i32 %i.af, -1
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp slt i64 %indvars.iv.next, %i.ah
  br i1 %i.ai, label %bb.e, label %._crit_edge.loopexit, !llvm.loop !29

._crit_edge.loopexit:                             ; preds = %bb.e
  %i.aj = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.0.lcssa = phi i32 [ 0, %.preheader ], [ %i.aj, %._crit_edge.loopexit ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24
  %i.am = zext nneg i32 %.0.lcssa to i64          ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.ap = tail call i32 @hypre_SMGRelaxDestroy(ptr noundef %i.ao) #9 ; 0 uses
  %i.aq = icmp eq i32 %.0.lcssa, 0
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !26
  %1 = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.am
  %i.at = load ptr, ptr %1, align 8, !tbaa !25
  %i.au = tail call i32 @hypre_SMGResidualDestroy(ptr noundef %i.at) #9 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %i.av = load ptr, ptr %i.ak, align 8, !tbaa !24
  tail call void @hypre_Free(ptr noundef %i.av) #9
  store ptr null, ptr %i.ak, align 8, !tbaa !24
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !26
  tail call void @hypre_Free(ptr noundef %i.ax) #9
  store ptr null, ptr %i.aw, align 8, !tbaa !26
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !27
  tail call void @hypre_Free(ptr noundef %i.az) #9
  store ptr null, ptr %i.ay, align 8, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !28
  tail call void @hypre_Free(ptr noundef %i.bb) #9
  store ptr null, ptr %i.ba, align 8, !tbaa !28
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !31
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bf = tail call i32 @hypre_StructVectorDestroy(ptr noundef %i.be) #9 ; 0 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !34
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !32
  %i.bj = tail call i32 @hypre_StructVectorDestroy(ptr noundef %i.bi) #9 ; 0 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !35
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !36
  %i.bn = tail call i32 @hypre_StructGridDestroy(ptr noundef %i.bm) #9 ; 0 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !38
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !39
  %i.br = tail call i32 @hypre_StructMatrixDestroy(ptr noundef %i.bq) #9 ; 0 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !41
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !32
  %i.bv = tail call i32 @hypre_StructVectorDestroy(ptr noundef %i.bu) #9 ; 0 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !42
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !32
  %i.bz = tail call i32 @hypre_StructVectorDestroy(ptr noundef %i.by) #9 ; 0 uses
  %i.ca = load i32, ptr %i.h, align 8, !tbaa !23
  %i.cb = icmp sgt i32 %i.ca, 1
  br i1 %i.cb, label %.lr.ph93, label %._crit_edge94

.lr.ph93:                                         ; preds = %bb.g
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph93, %bb.j
  %indvars.iv96 = phi i64 [ 0, %.lr.ph93 ], [ %indvars.iv.next97, %bb.j ] ; 4 uses
  %i.cf = load ptr, ptr %i.bk, align 8, !tbaa !35
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 9 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next97
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !36
  %i.ci = tail call i32 @hypre_StructGridDestroy(ptr noundef %i.ch) #9 ; 0 uses
  %i.cj = load ptr, ptr %i.cc, align 8, !tbaa !43
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv.next97
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !36
  %i.cm = tail call i32 @hypre_StructGridDestroy(ptr noundef %i.cl) #9 ; 0 uses
  %i.cn = load ptr, ptr %i.bo, align 8, !tbaa !38
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv.next97
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !39
  %i.cq = tail call i32 @hypre_StructMatrixDestroy(ptr noundef %i.cp) #9 ; 0 uses
  %i.cr = load ptr, ptr %i.cd, align 8, !tbaa !44
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv96
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !39 ; 2 uses
  %i.cu = load ptr, ptr %i.ce, align 8, !tbaa !45
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv96
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !39
  %i.cx = icmp eq ptr %i.ct, %i.cw
  %i.cy = tail call i32 @hypre_StructMatrixDestroy(ptr noundef %i.ct) #9 ; 0 uses
  br i1 %i.cx, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cz = load ptr, ptr %i.ce, align 8, !tbaa !45
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv96
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !39
  %i.dc = tail call i32 @hypre_StructMatrixDestroy(ptr noundef %i.db) #9 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.dd = load ptr, ptr %i.bs, align 8, !tbaa !41
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.next97
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !32
  %i.dg = tail call i32 @hypre_StructVectorDestroy(ptr noundef %i.df) #9 ; 0 uses
  %i.dh = load ptr, ptr %i.bw, align 8, !tbaa !42
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv.next97
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !32
  %i.dk = tail call i32 @hypre_StructVectorDestroy(ptr noundef %i.dj) #9 ; 0 uses
  %i.dl = load ptr, ptr %i.bc, align 8, !tbaa !31
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv.next97
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !32
  %i.do = tail call i32 @hypre_StructVectorDestroy(ptr noundef %i.dn) #9 ; 0 uses
  %i.dp = load ptr, ptr %i.bg, align 8, !tbaa !34
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.next97
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !32
  %i.ds = tail call i32 @hypre_StructVectorDestroy(ptr noundef %i.dr) #9 ; 0 uses
  %i.dt = load i32, ptr %i.h, align 8, !tbaa !23
  %i.du = add nsw i32 %i.dt, -1
  %i.dv = sext i32 %i.du to i64
  %i.dw = icmp slt i64 %indvars.iv.next97, %i.dv
  br i1 %i.dw, label %bb.h, label %._crit_edge94, !llvm.loop !46

._crit_edge94:                                    ; preds = %bb.j, %bb.g
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !47
  tail call void @hypre_Free(ptr noundef %i.dy) #9
  store ptr null, ptr %i.dx, align 8, !tbaa !47
  %i.dz = load ptr, ptr %i.bk, align 8, !tbaa !35
  tail call void @hypre_Free(ptr noundef %i.dz) #9
  store ptr null, ptr %i.bk, align 8, !tbaa !35
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !43
  tail call void @hypre_Free(ptr noundef %i.eb) #9
  store ptr null, ptr %i.ea, align 8, !tbaa !43
  %i.ec = load ptr, ptr %i.bo, align 8, !tbaa !38
  tail call void @hypre_Free(ptr noundef %i.ec) #9
  store ptr null, ptr %i.bo, align 8, !tbaa !38
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !44
  tail call void @hypre_Free(ptr noundef %i.ee) #9
  store ptr null, ptr %i.ed, align 8, !tbaa !44
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !45
  tail call void @hypre_Free(ptr noundef %i.eg) #9
  store ptr null, ptr %i.ef, align 8, !tbaa !45
  %i.eh = load ptr, ptr %i.bs, align 8, !tbaa !41
  tail call void @hypre_Free(ptr noundef %i.eh) #9
  store ptr null, ptr %i.bs, align 8, !tbaa !41
  %i.ei = load ptr, ptr %i.bw, align 8, !tbaa !42
  tail call void @hypre_Free(ptr noundef %i.ei) #9
  store ptr null, ptr %i.bw, align 8, !tbaa !42
  %i.ej = load ptr, ptr %i.bc, align 8, !tbaa !31
  tail call void @hypre_Free(ptr noundef %i.ej) #9
  store ptr null, ptr %i.bc, align 8, !tbaa !31
  %i.ek = load ptr, ptr %i.bg, align 8, !tbaa !34
  tail call void @hypre_Free(ptr noundef %i.ek) #9
  store ptr null, ptr %i.bg, align 8, !tbaa !34
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge94, %bb.d
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.em = load i32, ptr %i.el, align 4, !tbaa !17
  %i.en = tail call i32 @hypre_FinalizeTiming(i32 noundef %i.em) #9 ; 0 uses
  tail call void @hypre_Free(ptr noundef nonnull %0) #9
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  ret i32 0
}

declare void @hypre_Free(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_SMGRelaxDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_SMGResidualDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_SemiRestrictDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_SemiInterpDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_StructVectorDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_StructGridDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_StructMatrixDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_FinalizeTiming(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @hypre_SMGSetMemoryUse(ptr nofree noundef writeonly captures(none) initializes((4, 8)) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %i.a, align 4, !tbaa !18
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @hypre_SMGSetTol(ptr nofree noundef writeonly captures(none) initializes((8, 16)) %0, double noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %1, ptr %i.a, align 8, !tbaa !19
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @hypre_SMGSetMaxIter(ptr nofree noundef writeonly captures(none) initializes((16, 20)) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.a, align 8, !tbaa !48
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @hypre_SMGSetRelChange(ptr nofree noundef writeonly captures(none) initializes((20, 24)) %0, i32 noundef %1) local_unnamed_addr #3 {
end_hunk_0
