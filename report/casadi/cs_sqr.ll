Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/cs_sqr?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define ptr @cs_sqr(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.t

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !13   ; 6 uses
  %i.f = tail call ptr @cs_calloc(i32 noundef 1, i64 noundef 64) #4 ; 13 uses
  %.not56 = icmp eq ptr %i.f, null
  br i1 %.not56, label %bb.t, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @cs_amd(i32 noundef %0, ptr noundef nonnull %1) #4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !14
  %.not57 = icmp ne i32 %0, 0                     ; 3 uses
  %.not58 = icmp eq ptr %i.g, null
  %or.cond = select i1 %.not57, i1 %.not58, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @cs_sfree(ptr noundef nonnull %i.f) #4
  br label %bb.t

bb.f:                                             ; preds = %bb.d
  %.not59 = icmp eq i32 %2, 0
  br i1 %.not59, label %.critedge65, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not57, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = tail call ptr @cs_permute(ptr noundef nonnull %1, ptr noundef null, ptr noundef %i.g, i32 noundef 0) #4
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.k = phi ptr [ %i.j, %bb.h ], [ %1, %bb.g ]   ; 5 uses
  %i.l = tail call ptr @cs_etree(ptr noundef %i.k, i32 noundef 1) #4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !17
  %i.n = tail call ptr @cs_post(ptr noundef %i.l, i32 noundef %i.e) #4 ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.p = tail call ptr @cs_counts(ptr noundef %i.k, ptr noundef %i.o, ptr noundef %i.n, i32 noundef 1) #4
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !18
  %i.r = tail call ptr @cs_free(ptr noundef %i.n) #4 ; 0 uses
  %.not60 = icmp eq ptr %i.k, null
  br i1 %.not60, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !17
  %.not61 = icmp eq ptr %i.s, null
  br i1 %.not61, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !18
  %.not62 = icmp eq ptr %i.t, null
  br i1 %.not62, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = tail call fastcc i32 @cs_vcount(ptr noundef %i.k, ptr noundef %i.f)
  %.not67 = icmp eq i32 %i.u, 0
  br i1 %.not67, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  store double 0.000000e+00, ptr %i.v, align 8, !tbaa !19
  %i.w = icmp sgt i32 %i.e, 0
  br i1 %i.w, label %.lr.ph, label %bb.p

.lr.ph:                                           ; preds = %bb.m
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !18   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.y = icmp ult i32 %i.e, 4
  br i1 %i.y, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.n ] ; 5 uses
  %i.z = phi double [ 0.000000e+00, %.lr.ph.new ], [ %i.as, %bb.n ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.n ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !20
  %i.ac = sitofp i32 %i.ab to double
  %i.ad = fadd double %i.z, %i.ac
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !20
  %i.ah = sitofp i32 %i.ag to double
  %i.ai = fadd double %i.ad, %i.ah
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !20
  %i.am = sitofp i32 %i.al to double
  %i.an = fadd double %i.ai, %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !20
  %i.ar = sitofp i32 %i.aq to double
  %i.as = fadd double %i.an, %i.ar                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %bb.n, !llvm.loop !21

._crit_edge.unr-lcssa:                            ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.as, %._crit_edge.unr-lcssa ]
  %lcmp.mod74 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod74)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.o ] ; 2 uses
  %i.at = phi double [ %.epil.init, %.epil.preheader ], [ %i.ax, %bb.o ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.epil
  %i.av = load i32, ptr %i.au, align 4, !tbaa !20
  %i.aw = sitofp i32 %i.av to double
  %i.ax = fadd double %i.at, %i.aw                ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.o, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.o, %._crit_edge.unr-lcssa
  %.lcssa = phi double [ %i.as, %._crit_edge.unr-lcssa ], [ %i.ax, %bb.o ] ; 2 uses
  store double %.lcssa, ptr %i.v, align 8, !tbaa !19
  %i.ay = fcmp ult double %.lcssa, 0.000000e+00
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %bb.m
  %i.az = phi i1 [ %i.ay, %._crit_edge ], [ false, %bb.m ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !25
  %i.bc = fcmp ult double %i.bb, 0.000000e+00
  %spec.select = select i1 %i.bc, i1 true, i1 %i.az
  br label %.critedge

.critedge:                                        ; preds = %bb.p, %bb.k, %bb.j, %bb.i, %bb.l
  %3 = phi i1 [ %spec.select, %bb.p ], [ true, %bb.k ], [ true, %bb.j ], [ true, %bb.l ], [ true, %bb.i ]
  br i1 %.not57, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.critedge
  %i.bd = tail call ptr @cs_spfree(ptr noundef %i.k) #4 ; 0 uses
  br label %bb.r

.critedge65:                                      ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !26
  %i.bg = sext i32 %i.e to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !20
  %i.bj = shl nsw i32 %i.bi, 2
  %i.bk = add nsw i32 %i.bj, %i.e
  %i.bl = sitofp i32 %i.bk to double              ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store double %i.bl, ptr %i.bm, align 8, !tbaa !19
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store double %i.bl, ptr %i.bn, align 8, !tbaa !25
  br label %bb.t

bb.r:                                             ; preds = %.critedge, %bb.q
  br i1 %3, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bo = tail call ptr @cs_sfree(ptr noundef nonnull %i.f) #4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.critedge65, %bb.r, %bb.c, %bb.a, %bb.b, %bb.e
  %.052 = phi ptr [ null, %bb.c ], [ %i.i, %bb.e ], [ null, %bb.a ], [ null, %bb.b ], [ %i.bo, %bb.s ], [ %i.f, %.critedge65 ], [ %i.f, %bb.r ]
  ret ptr %.052
}

declare ptr @cs_calloc(i32 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @cs_amd(i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @cs_sfree(ptr noundef) local_unnamed_addr #1

declare ptr @cs_permute(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @cs_etree(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @cs_post(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @cs_counts(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @cs_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @cs_vcount(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull captures(none) initializes((0, 8), (32, 40)) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !27   ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.k = add nsw i32 %i.d, %i.b
  %i.l = tail call ptr @cs_malloc(i32 noundef %i.k, i64 noundef 4) #4 ; 7 uses
  store ptr %i.l, ptr %1, align 8, !tbaa !29
  %i.m = tail call ptr @cs_malloc(i32 noundef %i.d, i64 noundef 4) #4 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.m, ptr %i.n, align 8, !tbaa !30
  %i.o = mul nsw i32 %i.b, 3
  %i.p = add nsw i32 %i.d, %i.o
  %i.q = tail call ptr @cs_malloc(i32 noundef %i.p, i64 noundef 4) #4 ; 6 uses
  %i.r = icmp ne ptr %i.l, null
  %i.s = icmp ne ptr %i.q, null
  %or.cond = select i1 %i.r, i1 %i.s, i1 false
  %i.t = icmp ne ptr %i.m, null
  %or.cond3 = select i1 %or.cond, i1 %i.t, i1 false
  br i1 %or.cond3, label %bb.b, label %._crit_edge172

bb.b:                                             ; preds = %bb.a
  %i.u = sext i32 %i.d to i64
  %i.v = getelementptr [4 x i8], ptr %i.q, i64 %i.u ; 6 uses
  %i.w = sext i32 %i.b to i64
  %i.x = getelementptr [4 x i8], ptr %i.v, i64 %i.w ; 4 uses
  %i.y = shl i32 %i.b, 1
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr [4 x i8], ptr %i.v, i64 %i.z ; 4 uses
  %i.ab = icmp sgt i32 %i.b, 0                    ; 3 uses
  br i1 %i.ab, label %.lr.ph154.preheader, label %.preheader147

.lr.ph154.preheader:                              ; preds = %bb.b
  %i.ac = zext nneg i32 %i.b to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.v, i8 -1, i64 %i.ad, i1 false), !tbaa !20
  %i.ae = zext nneg i32 %i.b to i64
  %i.af = shl nuw nsw i64 %i.ae, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.x, i8 -1, i64 %i.af, i1 false), !tbaa !20
  %i.ag = zext nneg i32 %i.b to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aa, i8 0, i64 %i.ah, i1 false), !tbaa !20
  br label %.preheader147

.preheader147:                                    ; preds = %bb.b, %.lr.ph154.preheader
  %i.ai = icmp sgt i32 %i.d, 0                    ; 3 uses
  br i1 %i.ai, label %.lr.ph156.preheader, label %.preheader146

.lr.ph156.preheader:                              ; preds = %.preheader147
  %i.aj = zext nneg i32 %i.d to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.m, i8 -1, i64 %i.ak, i1 false), !tbaa !20
  br label %.preheader146

.preheader146:                                    ; preds = %.lr.ph156.preheader, %.preheader147
  br i1 %i.ab, label %.lr.ph162.preheader, label %.preheader145

.lr.ph162.preheader:                              ; preds = %.preheader146
  %i.al = zext nneg i32 %i.b to i64
  br label %.lr.ph162

.loopexit:                                        ; preds = %.lr.ph158, %.lr.ph162
  %i.am = icmp samesign ugt i64 %indvars.iv178, 1
  br i1 %i.am, label %.lr.ph162, label %.preheader145, !llvm.loop !31

.preheader145:                                    ; preds = %.loopexit, %.preheader146
  br i1 %i.ai, label %.lr.ph165.preheader, label %._crit_edge

.lr.ph165.preheader:                              ; preds = %.preheader145
  %i.an = zext nneg i32 %i.d to i64
  br label %.lr.ph165

.lr.ph162:                                        ; preds = %.lr.ph162.preheader, %.loopexit
  %indvars.iv178 = phi i64 [ %i.al, %.lr.ph162.preheader ], [ %indvars.iv.next179, %.loopexit ] ; 3 uses
  %indvars.iv.next179 = add nsw i64 %indvars.iv178, -1 ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next179
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !20 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv178 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !20
  %i.as = icmp slt i32 %i.ap, %i.ar
  br i1 %i.as, label %.lr.ph158.preheader, label %.loopexit

.lr.ph158.preheader:                              ; preds = %.lr.ph162
  %i.at = sext i32 %i.ap to i64
  %i.au = trunc nuw nsw i64 %indvars.iv.next179 to i32
  br label %.lr.ph158

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %.lr.ph158
  %indvars.iv = phi i64 [ %i.at, %.lr.ph158.preheader ], [ %indvars.iv.next, %.lr.ph158 ] ; 2 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !20
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.ax
  store i32 %i.au, ptr %i.ay, align 4, !tbaa !20
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.az = load i32, ptr %i.aq, align 4, !tbaa !20
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp slt i64 %indvars.iv.next, %i.ba
  br i1 %i.bb, label %.lr.ph158, label %.loopexit, !llvm.loop !32

.lr.ph165:                                        ; preds = %.lr.ph165.preheader, %bb.f
  %indvars.iv181 = phi i64 [ %i.an, %.lr.ph165.preheader ], [ %indvars.iv.next182, %bb.f ] ; 2 uses
  %indvars.iv.next182 = add nsw i64 %indvars.iv181, -1 ; 6 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next182
  store i32 -1, ptr %i.bc, align 4, !tbaa !20
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next182
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !20 ; 2 uses
  %i.bf = icmp eq i32 %i.be, -1
  br i1 %i.bf, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.lr.ph165
  %i.bg = sext i32 %i.be to i64                   ; 3 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !20 ; 2 uses
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !20
  %i.bk = icmp eq i32 %i.bi, 0
  br i1 %i.bk, label %bb.d, label %._crit_edge193

._crit_edge193:                                   ; preds = %bb.c
  %.pre194 = trunc nuw nsw i64 %indvars.iv.next182 to i32
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.bg
  %i.bm = trunc nuw nsw i64 %indvars.iv.next182 to i32 ; 2 uses
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge193, %bb.d
  %.pre-phi = phi i32 [ %.pre194, %._crit_edge193 ], [ %i.bm, %bb.d ]
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.bg ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !20
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next182
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !20
  store i32 %.pre-phi, ptr %i.bn, align 4, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph165, %bb.e
  %i.bq = icmp samesign ugt i64 %indvars.iv181, 1
  br i1 %i.bq, label %.lr.ph165, label %._crit_edge, !llvm.loop !33

._crit_edge:                                      ; preds = %bb.f, %.preheader145
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store double 0.000000e+00, ptr %i.br, align 8, !tbaa !25
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  store i32 %i.d, ptr %i.bs, align 8, !tbaa !34
  br i1 %i.ab, label %.lr.ph168.preheader, label %.preheader

.lr.ph168.preheader:                              ; preds = %._crit_edge
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.lr.ph168

.preheader:                                       ; preds = %bb.l, %._crit_edge
  %.4.lcssa = phi i32 [ 0, %._crit_edge ], [ %i.b, %bb.l ] ; 2 uses
  br i1 %i.ai, label %.lr.ph171.preheader, label %._crit_edge172

.lr.ph171.preheader:                              ; preds = %.preheader
  %wide.trip.count190 = zext nneg i32 %i.d to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count190, 1
  %i.bt = icmp eq i32 %i.d, 1
  br i1 %i.bt, label %.lr.ph171.epil.preheader, label %.lr.ph171.preheader.new

.lr.ph171.preheader.new:                          ; preds = %.lr.ph171.preheader
  %unroll_iter = and i64 %wide.trip.count190, 2147483646
  br label %.lr.ph171
end_hunk_0
