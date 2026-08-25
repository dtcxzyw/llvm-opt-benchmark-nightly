Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/dmstor?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumUnrolled: 1
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZL2vm = internal unnamed_addr constant [3 x double] [double f0x3F91DF46A2529D39, double f0x3F33104B57CF96A3, double f0x3ED455A5B2FF8F9D], align 16
@.str = private unnamed_addr constant [9 x i8] c"NnEeSsWw\00", align 1

; Function Attrs: mustprogress uwtable
define noundef double @_Z6dmstorPKcPPc(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_Z18pj_get_default_ctxv()
  %i.b = tail call noundef double @_Z10dmstor_ctxP6pj_ctxPKcPPc(ptr noundef %i.a, ptr noundef %0, ptr noundef %1)
  ret double %i.b
}

; Function Attrs: mustprogress uwtable
define hidden noundef double @_Z10dmstor_ctxP6pj_ctxPKcPPc(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca [64 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %2, align 8, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call ptr @__ctype_b_loc() #8        ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.050 = phi ptr [ %1, %bb.c ], [ %i.j, %bb.d ]  ; 4 uses
  %i.e = load i8, ptr %.050, align 1, !tbaa !13   ; 2 uses
  %i.f = sext i8 %i.e to i64
  %i.g = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !tbaa !14
  %i.i = and i16 %i.h, 8192
  %.not62 = icmp eq i16 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %.050, i64 1
  br i1 %.not62, label %bb.e, label %bb.d, !llvm.loop !16

bb.e:                                             ; preds = %bb.d, %bb.h
  %i.k = phi ptr [ %i.x, %bb.h ], [ %i.b, %bb.d ] ; 4 uses
  %i.l = phi ptr [ %.pre90.1, %bb.h ], [ %i.d, %bb.d ]
  %i.m = phi i8 [ %.pre.1, %bb.h ], [ %i.e, %bb.d ] ; 3 uses
  %.044 = phi i32 [ %i.v, %bb.h ], [ 64, %bb.d ]
  %.042 = phi ptr [ %i.w, %bb.h ], [ %.050, %bb.d ] ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2, !tbaa !14
  %.fr = freeze i16 %i.p
  %.not63 = icmp slt i16 %.fr, 0
  br i1 %.not63, label %bb.f, label %switch.early.test

switch.early.test:                                ; preds = %bb.e
  switch i8 %i.m, label %.critedge [
    i8 -62, label %bb.f
    i8 -80, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %switch.early.test, %switch.early.test
  %i.q = getelementptr inbounds nuw i8, ptr %.042, i64 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 4 uses
  store ptr %i.r, ptr %i.a, align 8, !tbaa !8
  store i8 %i.m, ptr %i.k, align 1, !tbaa !13
  %.pre = load i8, ptr %i.q, align 1, !tbaa !13   ; 3 uses
  %.pre90 = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.s = zext i8 %.pre to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.pre90, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !14
  %.fr.1 = freeze i16 %i.u
  %.not63.1 = icmp slt i16 %.fr.1, 0
  br i1 %.not63.1, label %bb.g, label %switch.early.test.1

switch.early.test.1:                              ; preds = %bb.f
  switch i8 %.pre, label %.critedge [
    i8 -62, label %bb.g
    i8 -80, label %bb.g
  ]

bb.g:                                             ; preds = %switch.early.test.1, %switch.early.test.1, %bb.f
  %i.v = add nsw i32 %.044, -2                    ; 2 uses
  %.not64.1 = icmp eq i32 %i.v, 0
  br i1 %.not64.1, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %.042, i64 2 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 2 ; 2 uses
  store ptr %i.x, ptr %i.a, align 8, !tbaa !8
  store i8 %.pre, ptr %i.r, align 1, !tbaa !13
  %.pre.1 = load i8, ptr %i.w, align 1, !tbaa !13
  %.pre90.1 = load ptr, ptr %i.c, align 8, !tbaa !11
  br label %bb.e, !llvm.loop !18

.critedge:                                        ; preds = %bb.g, %switch.early.test.1, %switch.early.test
  %.lcssa211 = phi ptr [ %i.k, %switch.early.test ], [ %i.r, %bb.g ], [ %i.r, %switch.early.test.1 ]
  store i8 0, ptr %.lcssa211, align 1, !tbaa !13
  store ptr %i.b, ptr %i.a, align 8, !tbaa !8
  %i.y = load i8, ptr %i.b, align 16, !tbaa !13   ; 2 uses
  switch i8 %i.y, label %bb.j [
    i8 45, label %bb.i
    i8 43, label %bb.i
  ]

bb.i:                                             ; preds = %.critedge, %.critedge
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %.critedge, %bb.i
  %i.ab = phi ptr [ %i.aa, %bb.i ], [ %i.b, %.critedge ]
  %.039 = phi i32 [ %i.z, %bb.i ], [ 43, %.critedge ] ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.x
  %i.ac = phi ptr [ %i.ab, %bb.j ], [ %i.bd, %bb.x ] ; 5 uses
  %.04085 = phi double [ 0.000000e+00, %bb.j ], [ %i.bc, %bb.x ] ; 3 uses
  %.04384 = phi i32 [ 0, %bb.j ], [ %i.be, %bb.x ] ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !13  ; 5 uses
  %i.ae = sext i8 %i.ad to i32
  %isdigittmp = add nsw i32 %i.ae, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  %i.af = icmp eq i8 %i.ad, 46
  %or.cond = or i1 %i.af, %isdigit
  br i1 %or.cond, label %bb.l, label %split

bb.l:                                             ; preds = %bb.k
  %.not19.i = icmp eq i8 %i.ad, 0
  br i1 %.not19.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %bb.n
  %i.ag = phi i8 [ %i.ak, %bb.n ], [ %i.ad, %bb.l ] ; 2 uses
  %.020.i = phi ptr [ %i.aj, %bb.n ], [ %i.ac, %bb.l ] ; 3 uses
  %i.ah = and i8 %i.ag, -33
  %or.cond.i = icmp eq i8 %i.ah, 68
  br i1 %or.cond.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i
  store i8 0, ptr %.020.i, align 1, !tbaa !13
  %i.ai = call double @strtod(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.a) #7
  store i8 %i.ag, ptr %.020.i, align 1, !tbaa !13
  br label %_ZL11proj_strtodPcPS_.exit

bb.n:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.020.i, i64 1 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !13  ; 2 uses
  %.not.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !19

._crit_edge.i:                                    ; preds = %bb.n, %bb.l
  %i.al = call noundef double @_Z9pj_strtodPKcPPc(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.a)
  br label %_ZL11proj_strtodPcPS_.exit

_ZL11proj_strtodPcPS_.exit:                       ; preds = %bb.m, %._crit_edge.i
  %.015.i = phi double [ %i.ai, %bb.m ], [ %i.al, %._crit_edge.i ] ; 4 uses
  %i.am = fcmp oeq double %.015.i, +inf
  br i1 %i.am, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %_ZL11proj_strtodPcPS_.exit
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !8   ; 5 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !13
  switch i8 %i.ao, label %.thread [
    i8 68, label %bb.v
    i8 100, label %bb.v
    i8 -80, label %bb.v
    i8 39, label %bb.p
    i8 34, label %bb.q
    i8 -62, label %bb.r
    i8 114, label %bb.s
    i8 82, label %bb.s
  ]

bb.p:                                             ; preds = %bb.o
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  br label %bb.v

bb.r:                                             ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !13
  %i.ar = icmp eq i8 %i.aq, -80
  br i1 %i.ar, label %bb.v, label %.thread

bb.s:                                             ; preds = %bb.o, %bb.o
  %.not67 = icmp eq i32 %.04384, 0
  br i1 %.not67, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %0, i32 noundef 1027)
  br label %.loopexit

bb.u:                                             ; preds = %bb.s
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 2 uses
  store ptr %i.as, ptr %i.a, align 8, !tbaa !8
  br label %._crit_edge

.thread:                                          ; preds = %bb.o, %bb.r
  %i.at = zext nneg i32 %.04384 to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr @_ZL2vm, i64 %i.at
  %i.av = load double, ptr %i.au, align 8, !tbaa !20
  %i.aw = call double @llvm.fmuladd.f64(double %.015.i, double %i.av, double %.04085)
  br label %._crit_edge

bb.v:                                             ; preds = %bb.o, %bb.o, %bb.o, %bb.r, %bb.p, %bb.q
  %i.ax = phi i1 [ true, %bb.o ], [ true, %bb.p ], [ false, %bb.q ], [ true, %bb.o ], [ true, %bb.o ], [ true, %bb.r ]
  %.3 = phi i32 [ 0, %bb.o ], [ 1, %bb.p ], [ 2, %bb.q ], [ 0, %bb.o ], [ 0, %bb.o ], [ 0, %bb.r ] ; 3 uses
  %.0 = phi i64 [ 1, %bb.o ], [ 1, %bb.p ], [ 1, %bb.q ], [ 1, %bb.o ], [ 1, %bb.o ], [ 2, %bb.r ]
  %i.ay = icmp samesign ult i32 %.3, %.04384
  br i1 %i.ay, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %0, i32 noundef 1027)
  br label %.loopexit

bb.x:                                             ; preds = %bb.v
  %i.az = zext nneg i32 %.3 to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr @_ZL2vm, i64 %i.az
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !20
  %i.bc = call double @llvm.fmuladd.f64(double %.015.i, double %i.bb, double %.04085) ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 %.0 ; 3 uses
  store ptr %i.bd, ptr %i.a, align 8, !tbaa !8
  %i.be = add nuw nsw i32 %.3, 1
  br i1 %i.ax, label %bb.k, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %bb.x, %bb.u, %.thread
  %.141.ph102 = phi double [ %i.aw, %.thread ], [ %.015.i, %bb.u ], [ %i.bc, %bb.x ]
  %i.bf = phi ptr [ %i.an, %.thread ], [ %i.as, %bb.u ], [ %i.bd, %bb.x ] ; 2 uses
  %.pre91 = load i8, ptr %i.bf, align 1, !tbaa !13
  br label %split, !llvm.loop !22

split:                                            ; preds = %bb.k, %._crit_edge
  %i.bg = phi i8 [ %.pre91, %._crit_edge ], [ %i.ad, %bb.k ] ; 2 uses
  %i.bh = phi ptr [ %i.bf, %._crit_edge ], [ %i.ac, %bb.k ] ; 3 uses
  %.040.lcssa = phi double [ %.141.ph102, %._crit_edge ], [ %.04085, %bb.k ] ; 2 uses
  %.not65 = icmp eq i8 %i.bg, 0
  br i1 %.not65, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %split
  %i.bi = sext i8 %i.bg to i32
  %memchr = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str, i32 %i.bi, i64 9) ; 2 uses
  %.not66 = icmp eq ptr %memchr, null
  br i1 %.not66, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bj = ptrtoint ptr %memchr to i64
  %i.bk = sub i64 %i.bj, ptrtoint (ptr @.str to i64)
  %i.bl = icmp sgt i64 %i.bk, 3
  %i.bm = select i1 %i.bl, i32 45, i32 43
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %split
  %i.bo = phi ptr [ %i.bn, %bb.z ], [ %i.bh, %bb.y ], [ %i.bh, %split ]
  %.1 = phi i32 [ %i.bm, %bb.z ], [ %.039, %bb.y ], [ %.039, %split ]
  %i.bp = icmp eq i32 %.1, 45
  %i.bq = fneg double %.040.lcssa
  %.2 = select i1 %i.bp, double %i.bq, double %.040.lcssa ; 2 uses
  br i1 %.not, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = ptrtoint ptr %i.b to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = getelementptr inbounds i8, ptr %.050, i64 %i.bt
  store ptr %i.bu, ptr %2, align 8, !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %_ZL11proj_strtodPcPS_.exit, %bb.t, %bb.w, %bb.aa, %bb.ab
  %.249 = phi double [ +inf, %bb.t ], [ %.2, %bb.aa ], [ %.2, %bb.ab ], [ +inf, %bb.w ], [ +inf, %_ZL11proj_strtodPcPS_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret double %.249
}

declare noundef ptr @_Z18pj_get_default_ctxv() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #5

declare noundef double @_Z9pj_strtodPKcPPc(ptr noundef, ptr noundef) local_unnamed_addr #1
end_hunk_0
