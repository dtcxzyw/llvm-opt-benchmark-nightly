Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bdcTable?download=true
inline.NumInlined: 19
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @Bdc_TableCheckContainment(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %i.e = icmp slt i32 %i.d, 6
  %i.f = add nsw i32 %i.d, -5
  %i.g = shl nuw i32 1, %i.f
  %spec.select.i = select i1 %i.e, i32 1, i32 %i.g ; 3 uses
  %i.h = zext i32 %spec.select.i to i64           ; 2 uses
  %i.i = icmp sgt i32 %spec.select.i, 0
  br i1 %i.i, label %.lr.ph, label %Kit_TruthIsImply.exit

select.unfold.i:                                  ; preds = %.lr.ph
  %i.j = trunc nuw i64 %i.l to i32
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %Kit_TruthIsImply.exit, !llvm.loop !0

.lr.ph:                                           ; preds = %bb.a, %select.unfold.i
  %indvars.iv.i17 = phi i64 [ %i.l, %select.unfold.i ], [ %i.h, %bb.a ]
  %i.l = add nsw i64 %indvars.iv.i17, -1          ; 4 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !25
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.l
  %i.p = load i32, ptr %i.o, align 4, !tbaa !25
  %i.q = xor i32 %i.p, -1
  %i.r = and i32 %i.n, %i.q
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %select.unfold.i, label %Kit_TruthIsDisjoint.exit, !llvm.loop !0

Kit_TruthIsImply.exit:                            ; preds = %select.unfold.i, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.u = icmp sgt i32 %spec.select.i, 0
  br i1 %i.u, label %.lr.ph19, label %Kit_TruthIsDisjoint.exit

select.unfold.i7:                                 ; preds = %.lr.ph19
  %i.v = trunc nuw i64 %i.x to i32
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph19, label %Kit_TruthIsDisjoint.exit, !llvm.loop !1

.lr.ph19:                                         ; preds = %Kit_TruthIsImply.exit, %select.unfold.i7
  %indvars.iv.i818 = phi i64 [ %i.x, %select.unfold.i7 ], [ %i.h, %Kit_TruthIsImply.exit ]
  %i.x = add nsw i64 %indvars.iv.i818, -1         ; 4 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !25
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.x
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !25
  %i.ac = and i32 %i.ab, %i.z
  %.not.i10 = icmp eq i32 %i.ac, 0
  br i1 %.not.i10, label %select.unfold.i7, label %.Kit_TruthIsDisjoint.exit.loopexit_crit_edge, !llvm.loop !1

.Kit_TruthIsDisjoint.exit.loopexit_crit_edge:     ; preds = %.lr.ph19
  br label %Kit_TruthIsDisjoint.exit, !llvm.loop !1

Kit_TruthIsDisjoint.exit:                         ; preds = %.lr.ph, %select.unfold.i7, %Kit_TruthIsImply.exit, %.Kit_TruthIsDisjoint.exit.loopexit_crit_edge
  %i.ad = phi i32 [ 1, %select.unfold.i7 ], [ 0, %.Kit_TruthIsDisjoint.exit.loopexit_crit_edge ], [ 1, %Kit_TruthIsImply.exit ], [ 0, %.lr.ph ]
  ret i32 %i.ad
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @Bdc_TableLookup(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !37     ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %i.g = icmp slt i32 %i.f, 6
  %i.h = add nsw i32 %i.f, -5
  %i.i = shl nuw i32 1, %i.h
  %spec.select.i = select i1 %i.g, i32 1, i32 %i.i ; 2 uses
  %i.j = icmp sgt i32 %spec.select.i, 0
  br i1 %i.j, label %.lr.ph87, label %Kit_TruthIsConst1.exit

.lr.ph87:                                         ; preds = %bb.b
  %i.k = zext nneg i32 %spec.select.i to i64
  br label %bb.c

select.unfold.i:                                  ; preds = %bb.c
  %i.l = trunc nuw i64 %i.n to i32
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %Kit_TruthIsConst1.exit, !llvm.loop !34

bb.c:                                             ; preds = %.lr.ph87, %select.unfold.i
  %indvars.iv.i85 = phi i64 [ %i.k, %.lr.ph87 ], [ %i.n, %select.unfold.i ]
  %i.n = add nsw i64 %indvars.iv.i85, -1          ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !25
  %.not.i = icmp eq i32 %i.p, -1
  br i1 %.not.i, label %select.unfold.i, label %bb.d, !llvm.loop !34

Kit_TruthIsConst1.exit:                           ; preds = %select.unfold.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !38
  br label %Bdc_TableCheckContainment.exit

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !38
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = xor i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %Bdc_TableCheckContainment.exit

bb.e:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !27
  %i.z = zext i32 %i.a to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z
  %.050 = load ptr, ptr %i.aa, align 8, !tbaa !28 ; 3 uses
  %.not51 = icmp eq ptr %.050, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !13 ; 3 uses
  br i1 %.not51, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !26
  br label %._crit_edge58

.lr.ph:                                           ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !23 ; 2 uses
  %i.af = icmp slt i32 %i.ae, 6
  %i.ag = add nsw i32 %i.ae, -5
  %i.ah = shl nuw i32 1, %i.ag
  %spec.select.i.i = select i1 %i.af, i32 1, i32 %i.ah ; 3 uses
  %i.ai = zext i32 %spec.select.i.i to i64        ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = icmp sgt i32 %spec.select.i.i, 0
  %i.al = icmp sgt i32 %spec.select.i.i, 0
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.loopexit46
  %.052 = phi ptr [ %.050, %.lr.ph ], [ %.0, %.loopexit46 ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.052, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !39 ; 2 uses
  br i1 %i.ak, label %.lr.ph74, label %Kit_TruthIsImply.exit.i

select.unfold.i.i:                                ; preds = %.lr.ph74
  %i.ao = trunc nuw i64 %i.aq to i32
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph74, label %Kit_TruthIsImply.exit.i, !llvm.loop !0

.lr.ph74:                                         ; preds = %bb.f, %select.unfold.i.i
  %indvars.iv.i.i72 = phi i64 [ %i.aq, %select.unfold.i.i ], [ %i.ai, %bb.f ]
  %i.aq = add nsw i64 %indvars.iv.i.i72, -1       ; 4 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !25
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.aq
  %i.au = load i32, ptr %i.at, align 4, !tbaa !25
  %i.av = xor i32 %i.au, -1
  %i.aw = and i32 %i.as, %i.av
  %.not.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i, label %select.unfold.i.i, label %.loopexit46, !llvm.loop !0

Kit_TruthIsImply.exit.i:                          ; preds = %select.unfold.i.i, %bb.f
  %i.ax = load ptr, ptr %i.aj, align 8, !tbaa !26
  br i1 %i.al, label %.lr.ph76, label %Bdc_TableCheckContainment.exit

select.unfold.i7.i:                               ; preds = %.lr.ph76
  %i.ay = trunc nuw i64 %i.ba to i32
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph76, label %Bdc_TableCheckContainment.exit, !llvm.loop !1

.lr.ph76:                                         ; preds = %Kit_TruthIsImply.exit.i, %select.unfold.i7.i
  %indvars.iv.i8.i75 = phi i64 [ %i.ba, %select.unfold.i7.i ], [ %i.ai, %Kit_TruthIsImply.exit.i ]
  %i.ba = add nsw i64 %indvars.iv.i8.i75, -1      ; 4 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !25
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ba
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !25
  %i.bf = and i32 %i.be, %i.bc
  %.not.i10.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i10.i, label %select.unfold.i7.i, label %.loopexit46, !llvm.loop !1

.loopexit46:                                      ; preds = %.lr.ph74, %.lr.ph76
  %i.bg = getelementptr inbounds nuw i8, ptr %.052, i64 40
  %.0 = load ptr, ptr %i.bg, align 8, !tbaa !28   ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %bb.f, !llvm.loop !35

._crit_edge:                                      ; preds = %.loopexit46
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !26 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !23 ; 2 uses
  %i.bl = icmp slt i32 %i.bk, 6
  %i.bm = add nsw i32 %i.bk, -5
  %i.bn = shl nuw i32 1, %i.bm
  %spec.select.i.i32 = select i1 %i.bl, i32 1, i32 %i.bn ; 3 uses
  %i.bo = zext i32 %spec.select.i.i32 to i64      ; 2 uses
  %i.bp = icmp sgt i32 %spec.select.i.i32, 0
  %i.bq = icmp sgt i32 %spec.select.i.i32, 0
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %.loopexit
  %.155 = phi ptr [ %.050, %._crit_edge ], [ %.1, %.loopexit ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.155, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !39 ; 2 uses
  br i1 %i.bp, label %.lr.ph80, label %select.unfold.i7.i36.preheader

select.unfold.i.i33:                              ; preds = %.lr.ph80
  %i.bt = trunc nuw i64 %i.bv to i32
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph80, label %select.unfold.i7.i36.preheader, !llvm.loop !0

select.unfold.i7.i36.preheader:                   ; preds = %select.unfold.i.i33, %bb.g
  br i1 %i.bq, label %.lr.ph82, label %Bdc_TableCheckContainment.exit40

.lr.ph80:                                         ; preds = %bb.g, %select.unfold.i.i33
  %indvars.iv.i.i3478 = phi i64 [ %i.bv, %select.unfold.i.i33 ], [ %i.bo, %bb.g ]
  %i.bv = add nsw i64 %indvars.iv.i.i3478, -1     ; 4 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !25
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bv
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !25
  %i.ca = xor i32 %i.bz, -1
  %i.cb = and i32 %i.bx, %i.ca
  %.not.i.i39 = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i39, label %select.unfold.i.i33, label %.loopexit, !llvm.loop !0

select.unfold.i7.i36:                             ; preds = %.lr.ph82
  %i.cc = trunc nuw i64 %i.ce to i32
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %.lr.ph82, label %Bdc_TableCheckContainment.exit40, !llvm.loop !1

.lr.ph82:                                         ; preds = %select.unfold.i7.i36.preheader, %select.unfold.i7.i36
  %indvars.iv.i8.i3781 = phi i64 [ %i.ce, %select.unfold.i7.i36 ], [ %i.bo, %select.unfold.i7.i36.preheader ]
  %i.ce = add nsw i64 %indvars.iv.i8.i3781, -1    ; 4 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !25
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ce
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !25
  %i.cj = and i32 %i.ci, %i.cg
  %.not.i10.i38 = icmp eq i32 %i.cj, 0
  br i1 %.not.i10.i38, label %select.unfold.i7.i36, label %.loopexit, !llvm.loop !1

Bdc_TableCheckContainment.exit40:                 ; preds = %select.unfold.i7.i36.preheader, %select.unfold.i7.i36
  %i.ck = ptrtoint ptr %.155 to i64
  %i.cl = xor i64 %i.ck, 1
  %i.cm = inttoptr i64 %i.cl to ptr
  br label %Bdc_TableCheckContainment.exit

.loopexit:                                        ; preds = %.lr.ph80, %.lr.ph82
  %i.cn = getelementptr inbounds nuw i8, ptr %.155, i64 40
  %.1 = load ptr, ptr %i.cn, align 8, !tbaa !28   ; 2 uses
  %.not28 = icmp eq ptr %.1, null
  br i1 %.not28, label %._crit_edge58, label %bb.g, !llvm.loop !36

._crit_edge58:                                    ; preds = %.loopexit, %._crit_edge.thread
  %i.co = phi ptr [ %i.ac, %._crit_edge.thread ], [ %i.bi, %.loopexit ]
  %i.cp = phi ptr [ %i.ab, %._crit_edge.thread ], [ %i.bh, %.loopexit ]
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.pre, ptr %2, align 8, !tbaa !13
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !26
  br label %Bdc_TableCheckContainment.exit

Bdc_TableCheckContainment.exit:                   ; preds = %Kit_TruthIsImply.exit.i, %select.unfold.i7.i, %._crit_edge58, %Bdc_TableCheckContainment.exit40, %bb.d, %Kit_TruthIsConst1.exit
  %.026 = phi ptr [ null, %._crit_edge58 ], [ %i.r, %Kit_TruthIsConst1.exit ], [ %i.w, %bb.d ], [ %i.cm, %Bdc_TableCheckContainment.exit40 ], [ %.052, %select.unfold.i7.i ], [ %.052, %Kit_TruthIsImply.exit.i ]
  ret ptr %.026
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @Bdc_TableAdd(ptr nofree noundef readonly captures(none) %0, ptr noundef initializes((40, 48)) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !32   ; 7 uses
  %i.m = load i32, ptr %i.j, align 8, !tbaa !41
  %i.n = icmp eq i32 %i.l, %i.m
  br i1 %i.n, label %bb.c, label %Vec_IntPush.exit

bb.c:                                             ; preds = %bb.b
  %i.o = icmp slt i32 %i.l, 16
  br i1 %i.o, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !33   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.q, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.q, i64 noundef 64) #6
  br label %Vec_IntGrow.exit.i

bb.f:                                             ; preds = %bb.d
  %i.s = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #7
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.f, %bb.e
  %i.t = phi ptr [ %i.r, %bb.e ], [ %i.s, %bb.f ]
  store ptr %i.t, ptr %i.p, align 8, !tbaa !33
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.u = icmp samesign ult i32 %i.l, 1073741823
  %i.v = shl nuw nsw i32 %i.l, 1
  %spec.select.i = select i1 %i.u, i32 %i.v, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.l, %spec.select.i
  br i1 %.not.i9.i, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !33   ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.x, null
  %i.y = zext nneg i32 %spec.select.i to i64
  %i.z = shl nuw nsw i64 %i.y, 2                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = tail call ptr @realloc(ptr noundef nonnull %i.x, i64 noundef %i.z) #6
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.z) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ac = phi ptr [ %i.aa, %bb.i ], [ %i.ab, %bb.j ]
  store ptr %i.ac, ptr %i.w, align 8, !tbaa !33
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.k, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.k ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.j, align 8, !tbaa !41
  %.pre = load i32, ptr %i.k, align 4, !tbaa !32
  %.pre10.pre = load ptr, ptr %i.a, align 8, !tbaa !27
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.b, %bb.g, %Vec_IntGrow.exit11.sink.split.i
  %.pre10 = phi ptr [ %i.b, %bb.b ], [ %i.b, %bb.g ], [ %.pre10.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ad = phi i32 [ %i.l, %bb.b ], [ %i.l, %bb.g ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !33
  %i.ag = add nsw i32 %i.ad, 1
  store i32 %i.ag, ptr %i.k, align 4, !tbaa !32
  %i.ah = sext i32 %i.ad to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ah
  store i32 %i.d, ptr %i.ai, align 4, !tbaa !25
  %.pre11 = load i32, ptr %i.c, align 8, !tbaa !40
  %.phi.trans.insert = zext i32 %.pre11 to i64    ; 2 uses
  %.phi.trans.insert12 = getelementptr inbounds nuw [8 x i8], ptr %.pre10, i64 %.phi.trans.insert
  %.pre13 = load ptr, ptr %.phi.trans.insert12, align 8, !tbaa !28
  br label %bb.l

bb.l:                                             ; preds = %Vec_IntPush.exit, %bb.a
  %.pre-phi = phi i64 [ %.phi.trans.insert, %Vec_IntPush.exit ], [ %i.e, %bb.a ]
  %i.aj = phi ptr [ %.pre13, %Vec_IntPush.exit ], [ %i.g, %bb.a ]
  %i.ak = phi ptr [ %.pre10, %Vec_IntPush.exit ], [ %i.b, %bb.a ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.pre-phi
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !42
  store ptr %1, ptr %i.al, align 8, !tbaa !28
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Bdc_TableClear(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 4        ; 2 uses
  %.val = load i32, ptr %i.c, align 4, !tbaa !32  ; 3 uses
  %i.d = icmp sgt i32 %.val, 0
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %.val7 = load ptr, ptr %i.e, align 8, !tbaa !33 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27   ; 5 uses
  %wide.trip.count = zext nneg i32 %.val to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.h = icmp ult i32 %.val, 4
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val7, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !25
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.k
  store ptr null, ptr %i.l, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.val7, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !25
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.p
  store ptr null, ptr %i.q, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.val7, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !25
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.u
  store ptr null, ptr %i.v, align 8, !tbaa !28
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.val7, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !25
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.z
  store ptr null, ptr %i.aa, align 8, !tbaa !28
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.critedge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !43

.critedge.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.critedge.loopexit.unr-lcssa ]
  %lcmp.mod11 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod11)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.val7, i64 %indvars.iv.epil
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !25
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ad
  store ptr null, ptr %i.ae, align 8, !tbaa !28
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge, label %bb.c, !llvm.loop !44

.critedge:                                        ; preds = %.critedge.loopexit.unr-lcssa, %bb.c, %bb.a
  store i32 0, ptr %i.c, align 4, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #3
end_hunk_0
