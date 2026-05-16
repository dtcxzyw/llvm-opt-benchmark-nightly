inline.NumInlined: 15
inline.NumDeleted: 8
begin_hunk_0_@ExtractAlpha_C:bb.a
  %i.fv = shl i64 %index37, 2
  %i.fw = shl i64 %index37, 2
  %i.fx = shl i64 %index37, 2
  %i.fy = shl i64 %index37, 2
  %i.fz = shl i64 %index37, 2
  %i.ga = shl i64 %index37, 2
  %i.gb = getelementptr inbounds nuw i8, ptr %.026.us, i64 %i.ft
  %i.gc = getelementptr i8, ptr %.026.us, i64 %i.fu
  %i.gd = getelementptr i8, ptr %i.gc, i64 4
  %i.ge = getelementptr i8, ptr %.026.us, i64 %i.fv
  %i.gf = getelementptr i8, ptr %i.ge, i64 8
  %i.gg = getelementptr i8, ptr %.026.us, i64 %i.fw
  %i.gh = getelementptr i8, ptr %i.gg, i64 12
  %i.gi = getelementptr i8, ptr %.026.us, i64 %i.fx
  %i.gj = getelementptr i8, ptr %i.gi, i64 16
  %i.gk = getelementptr i8, ptr %.026.us, i64 %i.fy
  %i.gl = getelementptr i8, ptr %i.gk, i64 20
  %i.gm = getelementptr i8, ptr %.026.us, i64 %i.fz
  %i.gn = getelementptr i8, ptr %i.gm, i64 24
  %i.go = getelementptr i8, ptr %.026.us, i64 %i.ga
  %i.gp = getelementptr i8, ptr %i.go, i64 28
  %i.gq = load i8, ptr %i.gb, align 1, !tbaa !9
  %i.gr = load i8, ptr %i.gd, align 1, !tbaa !9
  %i.gs = load i8, ptr %i.gf, align 1, !tbaa !9
  %i.gt = load i8, ptr %i.gh, align 1, !tbaa !9
  %i.gu = load i8, ptr %i.gj, align 1, !tbaa !9
  %i.gv = load i8, ptr %i.gl, align 1, !tbaa !9
  %i.gw = load i8, ptr %i.gn, align 1, !tbaa !9
  %i.gx = load i8, ptr %i.gp, align 1, !tbaa !9
  %i.gy = insertelement <8 x i8> poison, i8 %i.gq, i64 0
  %i.gz = insertelement <8 x i8> %i.gy, i8 %i.gr, i64 1
  %i.ha = insertelement <8 x i8> %i.gz, i8 %i.gs, i64 2
  %i.hb = insertelement <8 x i8> %i.ha, i8 %i.gt, i64 3
  %i.hc = insertelement <8 x i8> %i.hb, i8 %i.gu, i64 4
  %i.hd = insertelement <8 x i8> %i.hc, i8 %i.gv, i64 5
  %i.he = insertelement <8 x i8> %i.hd, i8 %i.gw, i64 6
  %i.hf = insertelement <8 x i8> %i.he, i8 %i.gx, i64 7 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.02023.us, i64 %index37
  store <8 x i8> %i.hf, ptr %i.hg, align 1, !tbaa !9
  %i.hh = and <8 x i8> %i.hf, %vec.phi38          ; 2 uses
  %index.next39 = add nuw i64 %index37, 8         ; 2 uses
  %i.hi = icmp eq i64 %index.next39, %n.vec36
  br i1 %i.hi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !34

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.hj = tail call i8 @llvm.vector.reduce.and.v8i8(<8 x i8> %i.hh)
  br label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec36, %vec.epilog.middle.block ]
  %.121.us.ph = phi i8 [ %.01924.us, %iter.check ], [ %i.fr, %vec.epilog.iter.check ], [ %i.hj, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %.121.us = phi i8 [ %i.ho, %vec.epilog.scalar.ph ], [ %.121.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.hk = shl nsw i64 %indvars.iv, 2
  %i.hl = getelementptr inbounds nuw i8, ptr %.026.us, i64 %i.hk
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !9   ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.02023.us, i64 %indvars.iv
  store i8 %i.hm, ptr %i.hn, align 1, !tbaa !9
  %i.ho = and i8 %i.hm, %.121.us                  ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !35

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph
  %i.hp = getelementptr inbounds i8, ptr %.026.us, i64 %i.c
  %i.hq = getelementptr inbounds i8, ptr %.02023.us, i64 %i.d
  %i.hr = add nuw nsw i32 %.01725.us, 1           ; 2 uses
  %exitcond30.not = icmp eq i32 %i.hr, %3
  br i1 %exitcond30.not, label %._crit_edge27.loopexit, label %iter.check, !llvm.loop !36

._crit_edge27.loopexit:                           ; preds = %._crit_edge.us
  %i.hs = icmp eq i8 %i.ho, -1
  %i.ht = zext i1 %i.hs to i32
  br label %._crit_edge27

._crit_edge27:                                    ; preds = %.preheader.lr.ph, %._crit_edge27.loopexit, %bb.a
  %.019.lcssa = phi i32 [ 1, %bb.a ], [ %i.ht, %._crit_edge27.loopexit ], [ 1, %.preheader.lr.ph ]
  ret i32 %.019.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ExtractGreen_C(ptr noalias noundef readonly captures(none) %0, ptr noalias noundef writeonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader9, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load = load <4 x i32>, ptr %i.b, align 4, !tbaa !3
  %wide.load8 = load <4 x i32>, ptr %i.c, align 4, !tbaa !3
  %i.d = lshr <4 x i32> %wide.load, splat (i32 8)
  %i.e = lshr <4 x i32> %wide.load8, splat (i32 8)
  %i.f = trunc <4 x i32> %i.d to <4 x i8>
  %i.g = trunc <4 x i32> %i.e to <4 x i8>
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store <4 x i8> %i.f, ptr %i.h, align 1, !tbaa !9
  store <4 x i8> %i.g, ptr %i.i, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader9

.lr.ph.preheader9:                                ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader9, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader9 ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %i.m = lshr i32 %i.l, 8
  %i.n = trunc i32 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.n, ptr %i.o, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !38

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @HasAlpha8b_C(ptr noundef readonly captures(none) %0, i32 noundef %1) #3 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.b = add nsw i32 %.05, -1
  %i.c = getelementptr inbounds nuw i8, ptr %.024, i64 1
  %i.d = icmp sgt i32 %.05, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge, !llvm.loop !39

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.05 = phi i32 [ %i.b, %bb.b ], [ %1, %bb.a ]   ; 2 uses
  %.024 = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ]  ; 2 uses
  %i.e = load i8, ptr %.024, align 1, !tbaa !9
  %.not = icmp eq i8 %i.e, -1
  br i1 %.not, label %bb.b, label %._crit_edge6, !llvm.loop !39

._crit_edge6:                                     ; preds = %.lr.ph
  br label %._crit_edge, !llvm.loop !39

._crit_edge:                                      ; preds = %bb.b, %._crit_edge6, %bb.a
  %.03 = phi i32 [ 1, %._crit_edge6 ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.03
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @HasAlpha32b_C(ptr noundef readonly captures(none) %0, i32 noundef %1) #3 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %i.b = add nsw i32 %.in, -1
  %i.c = icmp sgt i32 %.in, 1
  br i1 %i.c, label %.lr.ph, label %._crit_edge, !llvm.loop !40

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.in = phi i32 [ %i.b, %bb.b ], [ %1, %bb.a ]   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1, !tbaa !9
  %.not = icmp eq i8 %i.e, -1
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.05 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %.lr.ph ]
  ret i32 %.05
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @AlphaReplace_C(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 9
  br i1 %min.iters.check, label %.lr.ph.preheader24, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec.a = and i64 %wide.trip.count, 7          ; 2 uses
  %3 = icmp eq i64 %n.vec.a, 0
  %4 = select i1 %3, i64 8, i64 %n.vec.a
  %n.vec = sub nsw i64 %wide.trip.count, %4       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue23, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue23 ] ; 9 uses
  %5 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %6 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %8 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %10 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 12
  %12 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %14 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 20
  %16 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %19 = getelementptr inbounds nuw i8, ptr %5, i64 3
  %20 = getelementptr inbounds nuw i8, ptr %6, i64 7
  %21 = getelementptr inbounds nuw i8, ptr %8, i64 11
  %22 = getelementptr inbounds nuw i8, ptr %10, i64 15
  %23 = getelementptr inbounds nuw i8, ptr %12, i64 19
  %24 = getelementptr inbounds nuw i8, ptr %14, i64 23
  %25 = getelementptr inbounds nuw i8, ptr %16, i64 27
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 31
  %26 = load i8, ptr %19, align 1, !tbaa !3
  %27 = load i8, ptr %20, align 1, !tbaa !3
  %28 = load i8, ptr %21, align 1, !tbaa !3
  %29 = load i8, ptr %22, align 1, !tbaa !3
  %30 = insertelement <4 x i8> poison, i8 %26, i64 0
  %31 = insertelement <4 x i8> %30, i8 %27, i64 1
  %32 = insertelement <4 x i8> %31, i8 %28, i64 2
  %33 = insertelement <4 x i8> %32, i8 %29, i64 3
  %34 = load i8, ptr %23, align 1, !tbaa !3
  %35 = load i8, ptr %24, align 1, !tbaa !3
  %36 = load i8, ptr %25, align 1, !tbaa !3
  %37 = load i8, ptr %i.c, align 1, !tbaa !3
  %38 = insertelement <4 x i8> poison, i8 %34, i64 0
  %39 = insertelement <4 x i8> %38, i8 %35, i64 1
  %40 = insertelement <4 x i8> %39, i8 %36, i64 2
  %41 = insertelement <4 x i8> %40, i8 %37, i64 3
  %42 = icmp eq <4 x i8> %33, zeroinitializer     ; 4 uses
  %43 = icmp eq <4 x i8> %41, zeroinitializer     ; 4 uses
  %i.d = extractelement <4 x i1> %42, i64 0
  br i1 %i.d, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i32 %2, ptr %5, align 4, !tbaa !3
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.e = extractelement <4 x i1> %42, i64 1
  br i1 %i.e, label %pred.store.if10, label %pred.store.continue11

pred.store.if10:                                  ; preds = %pred.store.continue
  store i32 %2, ptr %7, align 4, !tbaa !3
  br label %pred.store.continue11

pred.store.continue11:                            ; preds = %pred.store.if10, %pred.store.continue
  %i.f = extractelement <4 x i1> %42, i64 2
  br i1 %i.f, label %pred.store.if12, label %pred.store.continue13

pred.store.if12:                                  ; preds = %pred.store.continue11
  store i32 %2, ptr %9, align 4, !tbaa !3
  br label %pred.store.continue13

pred.store.continue13:                            ; preds = %pred.store.if12, %pred.store.continue11
  %i.g = extractelement <4 x i1> %42, i64 3
  br i1 %i.g, label %pred.store.if14, label %pred.store.continue15

pred.store.if14:                                  ; preds = %pred.store.continue13
  store i32 %2, ptr %11, align 4, !tbaa !3
  br label %pred.store.continue15

pred.store.continue15:                            ; preds = %pred.store.if14, %pred.store.continue13
  %i.h = extractelement <4 x i1> %43, i64 0
  br i1 %i.h, label %pred.store.if16, label %pred.store.continue17

pred.store.if16:                                  ; preds = %pred.store.continue15
  store i32 %2, ptr %13, align 4, !tbaa !3
  br label %pred.store.continue17

pred.store.continue17:                            ; preds = %pred.store.if16, %pred.store.continue15
  %i.i = extractelement <4 x i1> %43, i64 1
  br i1 %i.i, label %pred.store.if18, label %pred.store.continue19

pred.store.if18:                                  ; preds = %pred.store.continue17
  store i32 %2, ptr %15, align 4, !tbaa !3
  br label %pred.store.continue19

pred.store.continue19:                            ; preds = %pred.store.if18, %pred.store.continue17
  %i.j = extractelement <4 x i1> %43, i64 2
  br i1 %i.j, label %pred.store.if20, label %pred.store.continue21

pred.store.if20:                                  ; preds = %pred.store.continue19
  store i32 %2, ptr %17, align 4, !tbaa !3
  br label %pred.store.continue21

pred.store.continue21:                            ; preds = %pred.store.if20, %pred.store.continue19
  %i.k = extractelement <4 x i1> %43, i64 3
  br i1 %i.k, label %pred.store.if22, label %pred.store.continue23

pred.store.if22:                                  ; preds = %pred.store.continue21
  store i32 %2, ptr %18, align 4, !tbaa !3
  br label %pred.store.continue23

pred.store.continue23:                            ; preds = %pred.store.if22, %pred.store.continue21
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %.lr.ph.preheader24, label %vector.body, !llvm.loop !41

.lr.ph.preheader24:                               ; preds = %pred.store.continue23, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %pred.store.continue23 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader24, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv.ph, %.lr.ph.preheader24 ] ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %.shift = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %44 = load i8, ptr %.shift, align 1, !tbaa !3
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  store i32 %2, ptr %i.m, align 4, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !42

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void
}

declare void @WebPInitAlphaProcessingSSE2() local_unnamed_addr #4

declare void @WebPInitAlphaProcessingSSE41() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.and.v16i8(<16 x i8>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.and.v8i8(<8 x i8>) #6

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!5, !5, i64 0}
!10 = distinct !{!10, !8}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{null}
!16 = distinct !{!16, !8, !17, !18}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{!19, !8, !18, !17}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8, !17, !18}
!22 = distinct !{!22, !8, !17}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !8, !17, !18}
!30 = distinct !{!30, !8, !18, !17}
!31 = distinct !{!31, !8}
!32 = distinct !{!32, !8, !17, !18}
!33 = !{!"branch_weights", i32 8, i32 24}
!34 = distinct !{!34, !8, !17, !18}
!35 = distinct !{!35, !8, !18, !17}
!36 = distinct !{!36, !8}
!37 = distinct !{!37, !8, !17, !18}
!38 = distinct !{!38, !8, !18, !17}
!39 = distinct !{!39, !8}
!40 = distinct !{!40, !8}
!41 = distinct !{!41, !8, !17, !18}
!42 = distinct !{!42, !8, !18, !17}
end_hunk_0
