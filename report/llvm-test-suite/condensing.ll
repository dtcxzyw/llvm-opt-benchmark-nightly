Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/condensing?download=true
inline.NumInlined: 41
inline.NumDeleted: 30
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@vec_MAX = external local_unnamed_addr global i32, align 4
@vec_VECTOR = external local_unnamed_addr global [10000 x ptr], align 16
@cont_BINDINGS = external local_unnamed_addr global i32, align 4
@cont_STACK = external local_unnamed_addr global [1000 x i32], align 16
@cont_STACKPOINTER = external local_unnamed_addr global i32, align 4
@cont_LEFTCONTEXT = external local_unnamed_addr global ptr, align 8
@cont_CURRENTBINDING = external local_unnamed_addr global ptr, align 8
@cont_LASTBINDING = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local ptr @cond_CondFast(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @vec_MAX, align 4          ; 8 uses
  %i.b = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 68         ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %.val.i48 = load i32, ptr %i.b, align 8
  %.val3.i49 = load i32, ptr %i.c, align 4
  %i.e = add nsw i32 %.val3.i49, %.val.i48
  %.val4.i50 = load i32, ptr %i.d, align 8
  %i.f = add nsw i32 %i.e, %.val4.i50
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge62

.preheader46:                                     ; preds = %.lr.ph
  %i.h = icmp sgt i32 %i.q, 0
  br i1 %i.h, label %.preheader.lr.ph, label %._crit_edge62

.preheader.lr.ph:                                 ; preds = %.preheader46
  %i.i = getelementptr i8, ptr %0, i64 56
  %.not87 = icmp sgt i32 %i.a, %i.k
  br i1 %.not87, label %._crit_edge62, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.j = zext nneg i32 %i.q to i64
  br label %.preheader

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.k = phi i32 [ %i.m, %.lr.ph ], [ %i.a, %bb.a ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.l = inttoptr i64 %indvars.iv to ptr
  %i.m = add nsw i32 %i.k, 1                      ; 3 uses
  store i32 %i.m, ptr @vec_MAX, align 4
  %i.n = sext i32 %i.k to i64
  %i.o = getelementptr inbounds [8 x i8], ptr @vec_VECTOR, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val.i = load i32, ptr %i.b, align 8
  %.val3.i = load i32, ptr %i.c, align 4
  %i.p = add nsw i32 %.val3.i, %.val.i
  %.val4.i = load i32, ptr %i.d, align 8
  %i.q = add nsw i32 %i.p, %.val4.i               ; 3 uses
  %i.r = sext i32 %i.q to i64
  %i.s = icmp slt i64 %indvars.iv.next, %i.r
  br i1 %i.s, label %.lr.ph, label %.preheader46, !llvm.loop !4

.loopexit:                                        ; preds = %cont_BackTrack.exit45, %.preheader
  %i.t = phi i32 [ %i.v, %.preheader ], [ %i.do, %cont_BackTrack.exit45 ]
  %.1.lcssa = phi ptr [ %.060, %.preheader ], [ %.3, %cont_BackTrack.exit45 ] ; 2 uses
  %i.u = icmp sgt i64 %indvars.iv68.in, 1
  br i1 %i.u, label %.preheader, label %._crit_edge62, !llvm.loop !5

.preheader:                                       ; preds = %.preheader.preheader, %.loopexit
  %i.v = phi i32 [ %i.m, %.preheader.preheader ], [ %i.t, %.loopexit ] ; 2 uses
  %indvars.iv68.in = phi i64 [ %i.j, %.preheader.preheader ], [ %indvars.iv68, %.loopexit ] ; 2 uses
  %.060 = phi ptr [ null, %.preheader.preheader ], [ %.1.lcssa, %.loopexit ] ; 2 uses
  %indvars.iv68 = add nsw i64 %indvars.iv68.in, -1 ; 5 uses
  %i.w = icmp slt i32 %i.a, %i.v
  br i1 %i.w, label %.lr.ph57, label %.loopexit

.lr.ph57:                                         ; preds = %.preheader
  %i.x = inttoptr i64 %indvars.iv68 to ptr
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph57, %cont_BackTrack.exit45
  %.156 = phi ptr [ %.060, %.lr.ph57 ], [ %.3, %cont_BackTrack.exit45 ] ; 5 uses
  %.13155 = phi i32 [ %i.a, %.lr.ph57 ], [ %i.dn, %cont_BackTrack.exit45 ] ; 4 uses
  %i.y = zext i32 %.13155 to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @vec_VECTOR, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ac = and i64 %i.ab, 4294967295
  %.not = icmp eq i64 %indvars.iv68, %i.ac
  br i1 %.not, label %cont_BackTrack.exit45, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = load i32, ptr @cont_BINDINGS, align 4
  %i.ae = load i32, ptr @cont_STACKPOINTER, align 4 ; 2 uses
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr @cont_STACKPOINTER, align 4
  %i.ag = sext i32 %i.ae to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr @cont_STACK, i64 %i.ag
  store i32 %i.ad, ptr %i.ah, align 4
  store i32 0, ptr @cont_BINDINGS, align 4
  %i.ai = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %.val35 = load ptr, ptr %i.i, align 8           ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %.val35, i64 %indvars.iv68
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr i8, ptr %i.ak, i64 24
  %.val1.i = load ptr, ptr %i.al, align 8
  %sext = shl i64 %i.ab, 32
  %i.am = ashr exact i64 %sext, 29
  %i.an = getelementptr inbounds i8, ptr %.val35, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr i8, ptr %i.ao, i64 24
  %.val1.i39 = load ptr, ptr %i.ap, align 8
  %i.aq = tail call i32 @unify_Match(ptr noundef %i.ai, ptr noundef %.val1.i, ptr noundef %.val1.i39) #3
  %.not33 = icmp eq i32 %i.aq, 0
  %.pr.i40 = load i32, ptr @cont_BINDINGS, align 4 ; 9 uses
  %i.ar = icmp sgt i32 %.pr.i40, 0                ; 2 uses
  br i1 %.not33, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.ar, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.d
  %xtraiter = and i32 %.pr.i40, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.as = load ptr, ptr @cont_LASTBINDING, align 8 ; 3 uses
  store ptr %i.as, ptr @cont_CURRENTBINDING, align 8
  %i.at = getelementptr i8, ptr %i.as, i64 24
  %.val.i.i.i.prol = load ptr, ptr %i.at, align 8
  store ptr %.val.i.i.i.prol, ptr @cont_LASTBINDING, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.au, i8 0, i64 20, i1 false)
  %i.av = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr null, ptr %i.aw, align 8
  %i.ax = add nsw i32 %.pr.i40, -1                ; 2 uses
  store i32 %i.ax, ptr @cont_BINDINGS, align 4
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.unr = phi i32 [ %.pr.i40, %.lr.ph.i.preheader ], [ %i.ax, %.lr.ph.i.prol ]
  %i.ay = icmp eq i32 %.pr.i40, 1
  br i1 %i.ay, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.az = phi i32 [ %i.bl, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.ba = load ptr, ptr @cont_LASTBINDING, align 8 ; 3 uses
  store ptr %i.ba, ptr @cont_CURRENTBINDING, align 8
  %i.bb = getelementptr i8, ptr %i.ba, i64 24
  %.val.i.i.i = load ptr, ptr %i.bb, align 8
  store ptr %.val.i.i.i, ptr @cont_LASTBINDING, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bc, i8 0, i64 20, i1 false)
  %i.bd = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store ptr null, ptr %i.be, align 8
  %i.bf = add nsw i32 %i.az, -1
  store i32 %i.bf, ptr @cont_BINDINGS, align 4
  %i.bg = load ptr, ptr @cont_LASTBINDING, align 8 ; 3 uses
  store ptr %i.bg, ptr @cont_CURRENTBINDING, align 8
  %i.bh = getelementptr i8, ptr %i.bg, i64 24
  %.val.i.i.i.1 = load ptr, ptr %i.bh, align 8
  store ptr %.val.i.i.i.1, ptr @cont_LASTBINDING, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bi, i8 0, i64 20, i1 false)
  %i.bj = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store ptr null, ptr %i.bk, align 8
  %i.bl = add nsw i32 %i.az, -2                   ; 2 uses
  store i32 %i.bl, ptr @cont_BINDINGS, align 4
  %i.bm = icmp sgt i32 %i.az, 2
  br i1 %i.bm, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !6

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.d
  %i.bn = load i32, ptr @cont_STACKPOINTER, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i, label %cont_BackTrack.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.bo = add nsw i32 %i.bn, -1                   ; 2 uses
  store i32 %i.bo, ptr @cont_STACKPOINTER, align 4
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr @cont_STACK, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4
  store i32 %i.br, ptr @cont_BINDINGS, align 4
  br label %cont_BackTrack.exit

cont_BackTrack.exit:                              ; preds = %._crit_edge.i, %bb.e
  %i.bs = load i32, ptr @vec_MAX, align 4         ; 3 uses
  %i.bt = icmp slt i32 %i.a, %i.bs
  br i1 %i.bt, label %.lr.ph53, label %._crit_edge

.lr.ph53:                                         ; preds = %cont_BackTrack.exit, %bb.g
  %i.bu = phi i32 [ %i.cd, %bb.g ], [ %i.bs, %cont_BackTrack.exit ] ; 2 uses
  %.02852 = phi i32 [ %i.ce, %bb.g ], [ %i.a, %cont_BackTrack.exit ] ; 3 uses
  %i.bv = zext i32 %.02852 to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr @vec_VECTOR, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = and i64 %i.by, 4294967295
  %i.ca = icmp eq i64 %indvars.iv68, %i.bz
  br i1 %i.ca, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph53
  %i.cb = add nsw i32 %i.bu, -1
  tail call void @vec_Swap(i32 noundef %i.cb, i32 noundef %.02852) #3
  %i.cc = load i32, ptr @vec_MAX, align 4         ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph53, %bb.f
  %i.cd = phi i32 [ %i.cc, %bb.f ], [ %i.bu, %.lr.ph53 ] ; 3 uses
  %.129 = phi i32 [ %i.cc, %bb.f ], [ %.02852, %.lr.ph53 ]
  %i.ce = add nsw i32 %.129, 1                    ; 2 uses
  %i.cf = icmp slt i32 %i.ce, %i.cd
  br i1 %i.cf, label %.lr.ph53, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %bb.g, %cont_BackTrack.exit
  %.lcssa = phi i32 [ %i.bs, %cont_BackTrack.exit ], [ %i.cd, %bb.g ]
  %i.cg = add nsw i32 %.lcssa, -1
  %i.ch = tail call i32 @subs_IdcRes(ptr noundef %0, i32 noundef %i.a, i32 noundef %i.cg) #3
  %.not34 = icmp eq i32 %i.ch, 0
  br i1 %.not34, label %._crit_edge._crit_edge, label %bb.h

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre = load i32, ptr @vec_MAX, align 4
  %i.ci = add nsw i32 %.pre, 1
  br label %cont_BackTrack.exit45

bb.h:                                             ; preds = %._crit_edge
  %i.cj = tail call noundef ptr @memory_Malloc(i32 noundef 16) #3 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.x, ptr %i.ck, align 8
  store ptr %.156, ptr %i.cj, align 8
  %i.cl = load i32, ptr @vec_MAX, align 4         ; 2 uses
  %i.cm = add nsw i32 %i.cl, -1
  store i32 %i.cm, ptr @vec_MAX, align 4
  br label %cont_BackTrack.exit45

bb.i:                                             ; preds = %bb.c
  br i1 %i.ar, label %.lr.ph.i43.preheader, label %._crit_edge.i41

.lr.ph.i43.preheader:                             ; preds = %bb.i
  %xtraiter98 = and i32 %.pr.i40, 1
  %lcmp.mod99.not = icmp eq i32 %xtraiter98, 0
  br i1 %lcmp.mod99.not, label %.lr.ph.i43.prol.loopexit, label %.lr.ph.i43.prol

.lr.ph.i43.prol:                                  ; preds = %.lr.ph.i43.preheader
  %i.cn = load ptr, ptr @cont_LASTBINDING, align 8 ; 3 uses
  store ptr %i.cn, ptr @cont_CURRENTBINDING, align 8
  %i.co = getelementptr i8, ptr %i.cn, i64 24
  %.val.i.i.i44.prol = load ptr, ptr %i.co, align 8
  store ptr %.val.i.i.i44.prol, ptr @cont_LASTBINDING, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cp, i8 0, i64 20, i1 false)
  %i.cq = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  store ptr null, ptr %i.cr, align 8
  %i.cs = add nsw i32 %.pr.i40, -1                ; 2 uses
  store i32 %i.cs, ptr @cont_BINDINGS, align 4
  br label %.lr.ph.i43.prol.loopexit

.lr.ph.i43.prol.loopexit:                         ; preds = %.lr.ph.i43.prol, %.lr.ph.i43.preheader
  %.unr100 = phi i32 [ %.pr.i40, %.lr.ph.i43.preheader ], [ %i.cs, %.lr.ph.i43.prol ]
  %i.ct = icmp eq i32 %.pr.i40, 1
  br i1 %i.ct, label %._crit_edge.i41, label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %.lr.ph.i43.prol.loopexit, %.lr.ph.i43
  %i.cu = phi i32 [ %i.dg, %.lr.ph.i43 ], [ %.unr100, %.lr.ph.i43.prol.loopexit ] ; 3 uses
  %i.cv = load ptr, ptr @cont_LASTBINDING, align 8 ; 3 uses
  store ptr %i.cv, ptr @cont_CURRENTBINDING, align 8
  %i.cw = getelementptr i8, ptr %i.cv, i64 24
  %.val.i.i.i44 = load ptr, ptr %i.cw, align 8
  store ptr %.val.i.i.i44, ptr @cont_LASTBINDING, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cx, i8 0, i64 20, i1 false)
  %i.cy = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  store ptr null, ptr %i.cz, align 8
  %i.da = add nsw i32 %i.cu, -1
  store i32 %i.da, ptr @cont_BINDINGS, align 4
  %i.db = load ptr, ptr @cont_LASTBINDING, align 8 ; 3 uses
  store ptr %i.db, ptr @cont_CURRENTBINDING, align 8
  %i.dc = getelementptr i8, ptr %i.db, i64 24
  %.val.i.i.i44.1 = load ptr, ptr %i.dc, align 8
  store ptr %.val.i.i.i44.1, ptr @cont_LASTBINDING, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.dd, i8 0, i64 20, i1 false)
  %i.de = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  store ptr null, ptr %i.df, align 8
  %i.dg = add nsw i32 %i.cu, -2                   ; 2 uses
  store i32 %i.dg, ptr @cont_BINDINGS, align 4
  %i.dh = icmp sgt i32 %i.cu, 2
  br i1 %i.dh, label %.lr.ph.i43, label %._crit_edge.i41, !llvm.loop !6

._crit_edge.i41:                                  ; preds = %.lr.ph.i43.prol.loopexit, %.lr.ph.i43, %bb.i
  %i.di = load i32, ptr @cont_STACKPOINTER, align 4 ; 2 uses
  %.not.i42 = icmp eq i32 %i.di, 0
  br i1 %.not.i42, label %cont_BackTrack.exit45, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i41
  %i.dj = add nsw i32 %i.di, -1                   ; 2 uses
  store i32 %i.dj, ptr @cont_STACKPOINTER, align 4
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr @cont_STACK, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4
  store i32 %i.dm, ptr @cont_BINDINGS, align 4
  br label %cont_BackTrack.exit45

cont_BackTrack.exit45:                            ; preds = %bb.h, %._crit_edge._crit_edge, %bb.j, %._crit_edge.i41, %bb.b
  %.232 = phi i32 [ %.13155, %bb.j ], [ %.13155, %bb.b ], [ %.13155, %._crit_edge.i41 ], [ %i.cl, %bb.h ], [ %i.ci, %._crit_edge._crit_edge ]
  %.3 = phi ptr [ %.156, %bb.j ], [ %.156, %bb.b ], [ %.156, %._crit_edge.i41 ], [ %i.cj, %bb.h ], [ %.156, %._crit_edge._crit_edge ] ; 2 uses
  %i.dn = add nsw i32 %.232, 1                    ; 2 uses
  %i.do = load i32, ptr @vec_MAX, align 4         ; 2 uses
  %i.dp = icmp slt i32 %i.dn, %i.do
  br i1 %i.dp, label %bb.b, label %.loopexit, !llvm.loop !8

._crit_edge62:                                    ; preds = %.loopexit, %bb.a, %.preheader.lr.ph, %.preheader46
  %.0.lcssa = phi ptr [ null, %.preheader46 ], [ null, %.preheader.lr.ph ], [ null, %bb.a ], [ %.1.lcssa, %.loopexit ]
  store i32 %i.a, ptr @vec_MAX, align 4
  ret ptr %.0.lcssa
}

declare i32 @unify_Match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @vec_Swap(i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @subs_IdcRes(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @memory_Malloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = distinct !{!4, !9}
!5 = distinct !{!5, !9, !10}
!6 = distinct !{!6, !9}
!7 = distinct !{!7, !9}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unswitch.partial.disable"}
end_hunk_0
