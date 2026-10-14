Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtext?download=true
inline.NumInlined: 306
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 46
begin_hunk_0_@UnloadTextLines:bb.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #26

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #26

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @TextToInteger(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #16 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1                 ; 3 uses
  switch i8 %i.a, label %bb.d [
    i8 43, label %bb.c
    i8 45, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.b = icmp eq i8 %i.a, 45
  %spec.select = select i1 %i.b, i32 -1, i32 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.c, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = phi i8 [ %.pre, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %.017 = phi ptr [ %i.c, %bb.c ], [ %0, %bb.b ]
  %.1 = phi i32 [ %spec.select, %bb.c ], [ 1, %bb.b ]
  %i.e = add i8 %i.d, -48
  %or.cond21 = icmp ult i8 %i.e, 10
  br i1 %or.cond21, label %.lr.ph, label %.critedge

.critedge.loopexit:                               ; preds = %.lr.ph
  %i.f = mul nsw i32 %i.j, %.1
  br label %.critedge

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.d ]
  %i.g = phi i8 [ %i.l, %.lr.ph ], [ %i.d, %bb.d ]
  %.01522 = phi i32 [ %i.j, %.lr.ph ], [ 0, %bb.d ]
  %i.h = mul nsw i32 %.01522, 10
  %narrow = add nsw i8 %i.g, -48
  %i.i = zext nneg i8 %narrow to i32
  %i.j = add nsw i32 %i.h, %i.i                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.017, i64 %indvars.iv.next
  %i.l = load i8, ptr %i.k, align 1               ; 2 uses
  %i.m = add i8 %i.l, -48
  %or.cond = icmp ult i8 %i.m, 10
  br i1 %or.cond, label %.lr.ph, label %.critedge.loopexit

.critedge:                                        ; preds = %bb.d, %.critedge.loopexit, %bb.a
  %i.n = phi i32 [ 0, %bb.a ], [ 0, %bb.d ], [ %i.f, %.critedge.loopexit ]
  ret i32 %i.n
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define float @TextToFloat(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #16 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1                 ; 3 uses
  switch i8 %i.a, label %bb.d [
    i8 43, label %bb.c
    i8 45, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.b = icmp eq i8 %i.a, 45
  %.029 = select i1 %i.b, float -1.000000e+00, float 1.000000e+00
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.c, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = phi i8 [ %.pre, %bb.c ], [ %i.a, %bb.b ] ; 3 uses
  %.034 = phi ptr [ %i.c, %bb.c ], [ %0, %bb.b ]  ; 3 uses
  %.130 = phi float [ %.029, %bb.c ], [ 1.000000e+00, %bb.b ]
  %i.e = add i8 %i.d, -48
  %or.cond41 = icmp ult i8 %i.e, 10
  br i1 %or.cond41, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.d ]
  %i.f = phi i8 [ %i.j, %.lr.ph ], [ %i.d, %bb.d ]
  %.03142 = phi float [ %i.h, %.lr.ph ], [ 0.000000e+00, %bb.d ]
  %narrow39 = add nsw i8 %i.f, -48
  %i.g = uitofp nneg i8 %narrow39 to float
  %i.h = tail call float @llvm.fmuladd.f32(float %.03142, float 1.000000e+01, float %i.g) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.034, i64 %indvars.iv.next
  %i.j = load i8, ptr %i.i, align 1               ; 3 uses
  %i.k = add i8 %i.j, -48
  %or.cond = icmp ult i8 %i.k, 10
  br i1 %or.cond, label %.lr.ph, label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %.lr.ph
  %i.l = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.d
  %.031.lcssa = phi float [ 0.000000e+00, %bb.d ], [ %i.h, %.critedge.loopexit ] ; 3 uses
  %.028.lcssa = phi i32 [ 0, %bb.d ], [ %i.l, %.critedge.loopexit ] ; 2 uses
  %.lcssa = phi i8 [ %i.d, %bb.d ], [ %i.j, %.critedge.loopexit ]
  %i.m = icmp eq i8 %.lcssa, 46
  br i1 %i.m, label %.preheader, label %.critedge2

.preheader:                                       ; preds = %.critedge
  %i.n = sext i32 %.028.lcssa to i64
  %i.o = getelementptr inbounds nuw i8, ptr %.034, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.p, align 1               ; 2 uses
  %i.r = add i8 %i.q, -48
  %or.cond4047 = icmp ult i8 %i.r, 10
  br i1 %or.cond4047, label %.lr.ph51.preheader, label %.critedge2

.lr.ph51.preheader:                               ; preds = %.preheader
  %i.s = zext nneg i32 %.028.lcssa to i64
  %i.t = add nuw nsw i64 %i.s, 1
  br label %.lr.ph51

.lr.ph51:                                         ; preds = %.lr.ph51.preheader, %.lr.ph51
  %indvars.iv57 = phi i64 [ %i.t, %.lr.ph51.preheader ], [ %indvars.iv.next58, %.lr.ph51 ]
  %i.u = phi i8 [ %i.q, %.lr.ph51.preheader ], [ %i.aa, %.lr.ph51 ]
  %.049 = phi float [ 1.000000e+01, %.lr.ph51.preheader ], [ %i.y, %.lr.ph51 ] ; 2 uses
  %.13248 = phi float [ %.031.lcssa, %.lr.ph51.preheader ], [ %i.x, %.lr.ph51 ]
  %narrow = add nsw i8 %i.u, -48
  %i.v = uitofp nneg i8 %narrow to float
  %i.w = fdiv float %i.v, %.049
  %i.x = fadd float %.13248, %i.w                 ; 2 uses
  %i.y = fmul float %.049, 1.000000e+01
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.034, i64 %indvars.iv.next58
  %i.aa = load i8, ptr %i.z, align 1              ; 2 uses
  %i.ab = add i8 %i.aa, -48
  %or.cond40 = icmp ult i8 %i.ab, 10
  br i1 %or.cond40, label %.lr.ph51, label %.critedge2

.critedge2:                                       ; preds = %.lr.ph51, %.preheader, %.critedge
  %.233 = phi float [ %.031.lcssa, %.critedge ], [ %.031.lcssa, %.preheader ], [ %i.x, %.lr.ph51 ]
  %i.ac = fmul float %.130, %.233
  br label %bb.e

bb.e:                                             ; preds = %.critedge2, %bb.a
  %i.ad = phi float [ %i.ac, %.critedge2 ], [ 0.000000e+00, %bb.a ]
  ret float %i.ad
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i32 @TextCopy(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #27 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %0, null
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1                 ; 2 uses
  %.not14 = icmp eq i8 %i.c, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.d = phi i8 [ %i.h, %.lr.ph ], [ %i.c, %.preheader ]
  %.017 = phi i32 [ %i.g, %.lr.ph ], [ 0, %.preheader ]
  %.01016 = phi ptr [ %i.f, %.lr.ph ], [ %1, %.preheader ]
  %.01115 = phi ptr [ %i.e, %.lr.ph ], [ %0, %.preheader ] ; 2 uses
  store i8 %i.d, ptr %.01115, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %.01115, i64 1 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01016, i64 1 ; 2 uses
  %i.g = add nuw nsw i32 %.017, 1                 ; 2 uses
  %i.h = load i8, ptr %i.f, align 1               ; 2 uses
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.011.lcssa = phi ptr [ %0, %.preheader ], [ %i.e, %.lr.ph ]
  %.0.lcssa = phi i32 [ 0, %.preheader ], [ %i.g, %.lr.ph ]
  store i8 0, ptr %.011.lcssa, align 1
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.1 = phi i32 [ %.0.lcssa, %._crit_edge ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #28

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull ptr @TextSubtext(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #15 {
bb.a:
  %3 = ptrtoaddr ptr %0 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) @TextSubtext.buffer, i8 0, i64 1024, i1 false)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.0.i = phi i32 [ %i.d, %.preheader.i ], [ 0, %bb.a ] ; 4 uses
  %i.a = zext i32 %.0.i to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1
  %.not4.i = icmp eq i8 %i.c, 0
  %i.d = add i32 %.0.i, 1
  br i1 %.not4.i, label %TextLength.exit, label %.preheader.i

TextLength.exit:                                  ; preds = %.preheader.i
  %i.e = icmp slt i32 %1, %.0.i
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %TextLength.exit
  %i.f = sub nsw i32 %.0.i, %1
  %spec.select = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.f) ; 4 uses
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %spec.select, i32 1023) ; 2 uses
  %i.g = icmp sgt i32 %spec.select, 0
  br i1 %i.g, label %iter.check, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.b
  %.pre = sext i32 %spec.store.select to i64
  br label %._crit_edge

iter.check:                                       ; preds = %bb.b
  %i.h = sext i32 %1 to i64                       ; 2 uses
  %i.i = zext nneg i32 %spec.store.select to i64  ; 9 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.h ; 3 uses
  %min.iters.check = icmp slt i32 %spec.select, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.j = add i64 %3, %i.h
  %i.k = sub i64 add (i64 ptrtoaddr (ptr @TextSubtext.buffer to i64), i64 -1), %i.j
  %diff.check = icmp ult i64 %i.k, 31
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check27 = icmp slt i32 %spec.select, 32
  br i1 %min.iters.check27, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.l = and i64 %i.i, 28
  %n.vec = and i64 %i.i, 992                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %wide.load = load <16 x i8>, ptr %i.m, align 1
  %wide.load28 = load <16 x i8>, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr @TextSubtext.buffer, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <16 x i8> %wide.load, ptr %i.o, align 16
  store <16 x i8> %wide.load28, ptr %i.p, align 16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !8

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec29 = and i64 %i.i, 1020                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index30 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next32, %vec.epilog.vector.body ] ; 3 uses
  %i.r = getelementptr i8, ptr %invariant.gep, i64 %index30
  %wide.load31 = load <4 x i8>, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr @TextSubtext.buffer, i64 %index30
  store <4 x i8> %wide.load31, ptr %i.s, align 4
  %index.next32 = add nuw i64 %index30, 4         ; 2 uses
  %i.t = icmp eq i64 %index.next32, %n.vec29
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !64

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n33 = icmp eq i64 %n.vec29, %i.i
  br i1 %cmp.n33, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec29, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.i, %middle.block ], [ %i.i, %vec.epilog.middle.block ], [ %i.i, %.lr.ph ]
  %i.u = getelementptr inbounds i8, ptr @TextSubtext.buffer, i64 %.pre-phi
  store i8 0, ptr %i.u, align 1
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.v = load i8, ptr %gep, align 1
  %i.w = getelementptr inbounds nuw i8, ptr @TextSubtext.buffer, i64 %indvars.iv
  store i8 %i.v, ptr %i.w, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.x, label %.lr.ph, label %._crit_edge, !llvm.loop !65

bb.c:                                             ; preds = %TextLength.exit, %._crit_edge, %bb.a
  ret ptr @TextSubtext.buffer
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull ptr @TextRemoveSpaces(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #15 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) @TextRemoveSpaces.buffer, i8 0, i64 1024, i1 false)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.g ], [ 0, %bb.a ] ; 4 uses
  %.015 = phi i32 [ %.1.1, %bb.g ], [ 0, %bb.a ]  ; 3 uses
  %i.a = sext i32 %.015 to i64                    ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1
  %.not12 = icmp eq i8 %i.c, 0
  br i1 %.not12, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %.not13 = icmp eq i8 %i.e, 32
  br i1 %.not13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr @TextRemoveSpaces.buffer, i64 %i.a
  store i8 %i.e, ptr %i.f, align 1
  %i.g = add nsw i32 %.015, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %i.g, %bb.c ], [ %.015, %bb.b ] ; 3 uses
  %exitcond.not = icmp eq i64 %indvars.iv, 1022
  br i1 %exitcond.not, label %.critedge, label %.preheader.1

.preheader.1:                                     ; preds = %bb.d
  %i.h = sext i32 %.1 to i64                      ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %0, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %.not12.1 = icmp eq i8 %i.j, 0
  br i1 %.not12.1, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.preheader.1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1               ; 2 uses
  %.not13.1 = icmp eq i8 %i.m, 32
  br i1 %.not13.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds i8, ptr @TextRemoveSpaces.buffer, i64 %i.h
  store i8 %i.m, ptr %i.n, align 1
  %i.o = add nsw i32 %.1, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.1 = phi i32 [ %i.o, %bb.f ], [ %.1, %bb.e ]
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  br label %.preheader

.critedge:                                        ; preds = %.preheader, %bb.d, %.preheader.1, %bb.a
  ret ptr @TextRemoveSpaces.buffer
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull ptr @GetTextBetween(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #23 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) @GetTextBetween.buffer, i8 0, i64 1024, i1 false)
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %TextFindIndex.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull readonly dereferenceable(1) %1) #41 ; 2 uses
  %.not8.i = icmp ne ptr %i.a, null
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = and i64 %i.d, 2147483648
  %i.f = icmp eq i64 %i.e, 0
  %or.cond = and i1 %.not8.i, %i.f
  br i1 %or.cond, label %.preheader.i, label %TextFindIndex.exit.thread

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %.0.i25 = phi i32 [ %i.j, %.preheader.i ], [ 0, %bb.b ] ; 3 uses
  %i.g = zext i32 %.0.i25 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  %.not4.i = icmp eq i8 %i.i, 0
  %i.j = add i32 %.0.i25, 1
  br i1 %.not4.i, label %TextLength.exit, label %.preheader.i

TextLength.exit:                                  ; preds = %.preheader.i
  %i.k = and i64 %i.d, 2147483647
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = sext i32 %.0.i25 to i64
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m ; 3 uses
  %i.o = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.n, ptr noundef nonnull readonly dereferenceable(1) %2) #41 ; 2 uses
  %.not8.i28 = icmp ne ptr %i.o, null
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = icmp sgt i32 %i.s, -1
  %or.cond35 = and i1 %.not8.i28, %i.t
  br i1 %or.cond35, label %TextFindIndex.exit.thread.sink.split, label %TextFindIndex.exit.thread

TextFindIndex.exit.thread.sink.split:             ; preds = %TextLength.exit
  %i.u = icmp samesign ult i32 %i.s, 1023
  %i.v = and i64 %i.r, 1023
  %.sink = select i1 %i.u, i64 %i.v, i64 1023
  %i.w = tail call ptr @strncpy(ptr noundef nonnull @GetTextBetween.buffer, ptr noundef nonnull %i.n, i64 noundef %.sink) #39 ; 0 uses
  br label %TextFindIndex.exit.thread

TextFindIndex.exit.thread:                        ; preds = %TextFindIndex.exit.thread.sink.split, %TextLength.exit, %bb.b, %bb.a
  ret ptr @GetTextBetween.buffer
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @TextFindIndex(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

end_hunk_0
begin_hunk_1_@TextReplaceBetween:bb.a
TextFindIndex.exit:                               ; preds = %bb.a
  %i.d = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull readonly dereferenceable(1) %1) #41 ; 2 uses
  %.not8.i = icmp eq ptr %i.d, null
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %.0.i = select i1 %.not8.i, i32 -1, i32 %i.h    ; 3 uses
  %i.i = icmp sgt i32 %.0.i, -1
  br i1 %i.i, label %.preheader.i, label %bb.d

.preheader.i:                                     ; preds = %TextFindIndex.exit, %.preheader.i
  %.0.i41 = phi i32 [ %i.m, %.preheader.i ], [ 0, %TextFindIndex.exit ] ; 4 uses
  %i.j = zext i32 %.0.i41 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1
  %.not4.i = icmp eq i8 %i.l, 0
  %i.m = add i32 %.0.i41, 1
  br i1 %.not4.i, label %TextFindIndex.exit47, label %.preheader.i

TextFindIndex.exit47:                             ; preds = %.preheader.i
  %i.n = zext nneg i32 %.0.i to i64               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n
  %i.p = sext i32 %.0.i41 to i64                  ; 3 uses
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 %i.p ; 2 uses
  %i.r = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull readonly dereferenceable(1) %2) #41 ; 2 uses
  %.not8.i44 = icmp eq ptr %i.r, null
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = trunc i64 %i.u to i32
  %.0.i45 = select i1 %.not8.i44, i32 -1, i32 %i.v ; 2 uses
  %i.w = icmp sgt i32 %.0.i45, -1
  br i1 %i.w, label %.preheader.i49, label %bb.d

.preheader.i49:                                   ; preds = %TextFindIndex.exit47, %.preheader.i49
  %.0.i50 = phi i32 [ %i.aa, %.preheader.i49 ], [ 0, %TextFindIndex.exit47 ] ; 3 uses
  %i.x = zext i32 %.0.i50 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1
  %.not4.i51 = icmp eq i8 %i.z, 0
  %i.aa = add i32 %.0.i50, 1
  br i1 %.not4.i51, label %TextLength.exit53, label %.preheader.i49

TextLength.exit53:                                ; preds = %.preheader.i49
  %i.ab = add nsw i32 %.0.i41, %.0.i              ; 3 uses
  %i.ac = add nsw i32 %.0.i45, %i.ab              ; 2 uses
  %i.ad = icmp eq ptr %3, null
  br i1 %i.ad, label %.thread, label %.preheader.i55

.thread:                                          ; preds = %TextLength.exit53
  %i.ae = sext i32 %i.ab to i64
  %i.af = tail call ptr @strncpy(ptr noundef nonnull @TextReplaceBetween.buffer, ptr noundef nonnull %0, i64 noundef %i.ae) #39 ; 0 uses
  br label %bb.c

.preheader.i55:                                   ; preds = %TextLength.exit53, %.preheader.i55
  %.0.i56 = phi i32 [ %i.aj, %.preheader.i55 ], [ 0, %TextLength.exit53 ] ; 3 uses
  %i.ag = zext i32 %.0.i56 to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1
  %.not4.i57 = icmp eq i8 %i.ai, 0
  %i.aj = add i32 %.0.i56, 1
  br i1 %.not4.i57, label %bb.b, label %.preheader.i55

bb.b:                                             ; preds = %.preheader.i55
  %i.ak = sext i32 %.0.i56 to i64                 ; 2 uses
  %i.al = sext i32 %i.ab to i64
  %i.am = tail call ptr @strncpy(ptr noundef nonnull @TextReplaceBetween.buffer, ptr noundef nonnull %0, i64 noundef %i.al) #39 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr @TextReplaceBetween.buffer, i64 %i.n
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %i.p
  %i.ap = tail call ptr @strncpy(ptr noundef nonnull %i.ao, ptr noundef nonnull %3, i64 noundef %i.ak) #39 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.aq = phi i64 [ 0, %.thread ], [ %i.ak, %bb.b ]
  %i.ar = getelementptr inbounds nuw i8, ptr @TextReplaceBetween.buffer, i64 %i.n
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.p
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %i.aq
  %i.au = sext i32 %i.ac to i64
  %i.av = getelementptr inbounds i8, ptr %0, i64 %i.au
  %i.aw = sub nsw i32 %.0.i50, %i.ac
  %i.ax = sext i32 %i.aw to i64
  %i.ay = tail call ptr @strncpy(ptr noundef nonnull %i.at, ptr noundef nonnull %i.av, i64 noundef %i.ax) #39 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %TextFindIndex.exit, %bb.c, %TextFindIndex.exit47, %bb.a
  ret ptr @TextReplaceBetween.buffer
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @TextReplaceBetweenAlloc(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #24 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %2, null
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %TextFindIndex.exit, label %bb.d

TextFindIndex.exit:                               ; preds = %bb.a
  %i.d = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull readonly dereferenceable(1) %1) #41 ; 2 uses
  %.not8.i = icmp eq ptr %i.d, null
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %.0.i = select i1 %.not8.i, i32 -1, i32 %i.h    ; 3 uses
  %i.i = icmp sgt i32 %.0.i, -1
  br i1 %i.i, label %.preheader.i, label %bb.d

.preheader.i:                                     ; preds = %TextFindIndex.exit, %.preheader.i
  %.0.i53 = phi i32 [ %i.m, %.preheader.i ], [ 0, %TextFindIndex.exit ] ; 4 uses
  %i.j = zext i32 %.0.i53 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1
  %.not4.i = icmp eq i8 %i.l, 0
  %i.m = add i32 %.0.i53, 1
  br i1 %.not4.i, label %TextFindIndex.exit59, label %.preheader.i

TextFindIndex.exit59:                             ; preds = %.preheader.i
  %i.n = zext nneg i32 %.0.i to i64               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n
  %i.p = sext i32 %.0.i53 to i64                  ; 3 uses
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 %i.p ; 2 uses
  %i.r = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull readonly dereferenceable(1) %2) #41 ; 2 uses
  %.not8.i56 = icmp eq ptr %i.r, null
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = trunc i64 %i.u to i32
  %.0.i57 = select i1 %.not8.i56, i32 -1, i32 %i.v ; 3 uses
  %i.w = icmp sgt i32 %.0.i57, -1
  br i1 %i.w, label %.preheader.i61, label %bb.d

.preheader.i61:                                   ; preds = %TextFindIndex.exit59, %.preheader.i61
  %.0.i62 = phi i32 [ %i.aa, %.preheader.i61 ], [ 0, %TextFindIndex.exit59 ] ; 4 uses
  %i.x = zext i32 %.0.i62 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1
  %.not4.i63 = icmp eq i8 %i.z, 0
  %i.aa = add i32 %.0.i62, 1
  br i1 %.not4.i63, label %TextLength.exit65, label %.preheader.i61

TextLength.exit65:                                ; preds = %.preheader.i61
  %i.ab = add nsw i32 %.0.i53, %.0.i              ; 2 uses
  %i.ac = add nsw i32 %.0.i57, %i.ab              ; 2 uses
  %i.ad = icmp eq ptr %3, null                    ; 2 uses
  br i1 %i.ad, label %TextLength.exit71, label %.preheader.i67

.preheader.i67:                                   ; preds = %TextLength.exit65, %.preheader.i67
  %.0.i68 = phi i32 [ %i.ah, %.preheader.i67 ], [ 0, %TextLength.exit65 ] ; 3 uses
  %i.ae = zext i32 %.0.i68 to i64
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1
  %.not4.i69 = icmp eq i8 %i.ag, 0
  %i.ah = add i32 %.0.i68, 1
  br i1 %.not4.i69, label %TextLength.exit71, label %.preheader.i67

TextLength.exit71:                                ; preds = %.preheader.i67, %TextLength.exit65
  %i.ai = phi i32 [ 0, %TextLength.exit65 ], [ %.0.i68, %.preheader.i67 ] ; 3 uses
  %reass.sub = sub i32 %.0.i62, %.0.i57
  %i.aj = add i32 %reass.sub, 1
  %i.ak = add i32 %i.aj, %i.ai
  %i.al = sext i32 %i.ak to i64
  %i.am = tail call noalias ptr @calloc(i64 noundef %i.al, i64 noundef 1) #40 ; 4 uses
  %i.an = sext i32 %i.ab to i64
  %i.ao = tail call ptr @strncpy(ptr noundef %i.am, ptr noundef nonnull %0, i64 noundef %i.an) #39 ; 0 uses
  br i1 %i.ad, label %TextLength.exit71._crit_edge, label %bb.b

TextLength.exit71._crit_edge:                     ; preds = %TextLength.exit71
  %.pre = sext i32 %i.ai to i64
  br label %bb.c

bb.b:                                             ; preds = %TextLength.exit71
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.n
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.p
  %i.ar = sext i32 %i.ai to i64                   ; 2 uses
  %i.as = tail call ptr @strncpy(ptr noundef %i.aq, ptr noundef nonnull %3, i64 noundef %i.ar) #39 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %TextLength.exit71._crit_edge, %bb.b
  %.pre-phi = phi i64 [ %.pre, %TextLength.exit71._crit_edge ], [ %i.ar, %bb.b ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.n
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.p
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %.pre-phi
  %i.aw = sext i32 %i.ac to i64
  %i.ax = getelementptr inbounds i8, ptr %0, i64 %i.aw
  %i.ay = sub nsw i32 %.0.i62, %i.ac
  %i.az = sext i32 %i.ay to i64
  %i.ba = tail call ptr @strncpy(ptr noundef %i.av, ptr noundef nonnull %i.ax, i64 noundef %i.az) #39 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %TextFindIndex.exit, %bb.c, %TextFindIndex.exit59, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ null, %TextFindIndex.exit ], [ %i.am, %bb.c ], [ null, %TextFindIndex.exit59 ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @TextInsert(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #9 {
bb.a:
  %3 = ptrtoaddr ptr %1 to i64
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) @TextInsert.buffer, i8 0, i64 1024, i1 false)
  %i.b = icmp ne ptr %0, null
  %i.c = icmp ne ptr %1, null
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %.preheader.i, label %bb.c

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.0.i = phi i32 [ %i.g, %.preheader.i ], [ 0, %bb.a ] ; 4 uses
  %i.d = zext i32 %.0.i to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1
  %.not4.i = icmp eq i8 %i.f, 0
  %i.g = add i32 %.0.i, 1
  br i1 %.not4.i, label %.preheader.i40, label %.preheader.i

.preheader.i40:                                   ; preds = %.preheader.i, %.preheader.i40
  %indvars.iv57 = phi i32 [ %indvars.iv.next58, %.preheader.i40 ], [ %2, %.preheader.i ] ; 2 uses
  %.0.i41 = phi i32 [ %i.k, %.preheader.i40 ], [ 0, %.preheader.i ] ; 5 uses
  %i.h = zext i32 %.0.i41 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %.not4.i42 = icmp eq i8 %i.j, 0
  %i.k = add i32 %.0.i41, 1
  %indvars.iv.next58 = add i32 %indvars.iv57, 1
  br i1 %.not4.i42, label %TextLength.exit44, label %.preheader.i40

TextLength.exit44:                                ; preds = %.preheader.i40
  %i.l = add nsw i32 %.0.i41, %.0.i               ; 3 uses
  %i.m = icmp slt i32 %i.l, 1023
  br i1 %i.m, label %.preheader46, label %bb.b

.preheader46:                                     ; preds = %TextLength.exit44
  %i.n = icmp sgt i32 %2, 0
  br i1 %i.n, label %iter.check, label %.preheader45

iter.check:                                       ; preds = %.preheader46
  %wide.trip.count = zext nneg i32 %2 to i64      ; 8 uses
  %min.iters.check = icmp ult i32 %2, 4
  %i.o = sub i64 add (i64 ptrtoaddr (ptr @TextInsert.buffer to i64), i64 -1), %i.a
  %diff.check = icmp ult i64 %i.o, 31
  %or.cond132 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond132, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check66 = icmp ult i32 %2, 32
  br i1 %min.iters.check66, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <16 x i8>, ptr %i.q, align 1
  %wide.load67 = load <16 x i8>, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr @TextInsert.buffer, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <16 x i8> %wide.load, ptr %i.s, align 16
  store <16 x i8> %wide.load67, ptr %i.t, align 16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader45, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !8

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec68 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index69 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next71, %vec.epilog.vector.body ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %index69
  %wide.load70 = load <4 x i8>, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr @TextInsert.buffer, i64 %index69
  store <4 x i8> %wide.load70, ptr %i.w, align 4
  %index.next71 = add nuw i64 %index69, 4         ; 2 uses
  %i.x = icmp eq i64 %index.next71, %n.vec68
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !67

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n72 = icmp eq i64 %n.vec68, %wide.trip.count
  br i1 %cmp.n72, label %.preheader45, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec68, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.prol
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr @TextInsert.buffer, i64 %indvars.iv.prol
  store i8 %i.z, ptr %i.aa, align 1
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !68

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ab = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %.preheader45, label %.lr.ph

.preheader45:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader46
  %i.ad = icmp sgt i32 %.0.i41, 0
  br i1 %i.ad, label %iter.check89, label %.preheader

iter.check89:                                     ; preds = %.preheader45
  %i.ae = add nsw i32 %.0.i41, %2
  %i.af = sext i32 %2 to i64                      ; 10 uses
  %i.ag = sext i32 %i.ae to i64                   ; 2 uses
  %i.ah = add nsw i64 %i.af, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.ah, i64 %i.ag)
  %i.ai = sub i64 %smax, %i.af                    ; 7 uses
  %min.iters.check75 = icmp ult i64 %i.ai, 8
  br i1 %min.iters.check75, label %.lr.ph49.preheader, label %vector.memcheck73

vector.memcheck73:                                ; preds = %iter.check89
  %i.aj = add i64 %i.af, ptrtoaddr (ptr @TextInsert.buffer to i64)
  %i.ak = sub i64 %3, %i.aj
  %diff.check74 = icmp ugt i64 %i.ak, -32
  br i1 %diff.check74, label %.lr.ph49.preheader, label %vector.main.loop.iter.check76

vector.main.loop.iter.check76:                    ; preds = %vector.memcheck73
  %min.iters.check77 = icmp ult i64 %i.ai, 32
  br i1 %min.iters.check77, label %vec.epilog.ph93, label %vector.ph78

vector.ph78:                                      ; preds = %vector.main.loop.iter.check76
  %i.al = and i64 %i.ai, 24
  %n.vec79 = and i64 %i.ai, -32                   ; 4 uses
  %i.am = add i64 %n.vec79, %i.af
  %invariant.gep = getelementptr i8, ptr @TextInsert.buffer, i64 %i.af
  br label %vector.body80

vector.body80:                                    ; preds = %vector.ph78, %vector.body80
  %index81 = phi i64 [ 0, %vector.ph78 ], [ %index.next84, %vector.body80 ] ; 3 uses
  %i.an = getelementptr inbounds i8, ptr %1, i64 %index81 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load82 = load <16 x i8>, ptr %i.an, align 1
  %wide.load83 = load <16 x i8>, ptr %i.ao, align 1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index81 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <16 x i8> %wide.load82, ptr %gep, align 1
  store <16 x i8> %wide.load83, ptr %i.ap, align 1
  %index.next84 = add nuw i64 %index81, 32        ; 2 uses
  %i.aq = icmp eq i64 %index.next84, %n.vec79
  br i1 %i.aq, label %middle.block85, label %vector.body80, !llvm.loop !69

middle.block85:                                   ; preds = %vector.body80
  %cmp.n86 = icmp eq i64 %i.ai, %n.vec79
  br i1 %cmp.n86, label %.preheader, label %vec.epilog.iter.check91

vec.epilog.iter.check91:                          ; preds = %middle.block85
  %min.epilog.iters.check92 = icmp eq i64 %i.al, 0
  br i1 %min.epilog.iters.check92, label %.lr.ph49.preheader, label %vec.epilog.ph93, !prof !7

vec.epilog.ph93:                                  ; preds = %vector.main.loop.iter.check76, %vec.epilog.iter.check91
  %vec.epilog.resume.val87 = phi i64 [ %n.vec79, %vec.epilog.iter.check91 ], [ 0, %vector.main.loop.iter.check76 ]
  %n.vec94 = and i64 %i.ai, -8                    ; 3 uses
  %i.ar = add i64 %n.vec94, %i.af
  %invariant.gep134 = getelementptr i8, ptr @TextInsert.buffer, i64 %i.af
  br label %vec.epilog.vector.body95

vec.epilog.vector.body95:                         ; preds = %vec.epilog.vector.body95, %vec.epilog.ph93
  %index96 = phi i64 [ %vec.epilog.resume.val87, %vec.epilog.ph93 ], [ %index.next98, %vec.epilog.vector.body95 ] ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %1, i64 %index96
  %wide.load97 = load <8 x i8>, ptr %i.as, align 1
  %gep135 = getelementptr i8, ptr %invariant.gep134, i64 %index96
  store <8 x i8> %wide.load97, ptr %gep135, align 1
  %index.next98 = add nuw i64 %index96, 8         ; 2 uses
  %i.at = icmp eq i64 %index.next98, %n.vec94
  br i1 %i.at, label %vec.epilog.middle.block99, label %vec.epilog.vector.body95, !llvm.loop !70

vec.epilog.middle.block99:                        ; preds = %vec.epilog.vector.body95
  %cmp.n100 = icmp eq i64 %i.ai, %n.vec94
  br i1 %cmp.n100, label %.preheader, label %.lr.ph49.preheader

.lr.ph49.preheader:                               ; preds = %iter.check89, %vector.memcheck73, %vec.epilog.iter.check91, %vec.epilog.middle.block99
  %indvars.iv53.ph = phi i64 [ %i.af, %iter.check89 ], [ %i.af, %vector.memcheck73 ], [ %i.am, %vec.epilog.iter.check91 ], [ %i.ar, %vec.epilog.middle.block99 ]
  br label %.lr.ph49

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr @TextInsert.buffer, i64 %indvars.iv
  store i8 %i.av, ptr %i.aw, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = getelementptr inbounds nuw i8, ptr @TextInsert.buffer, i64 %indvars.iv.next
  store i8 %i.ay, ptr %i.az, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.1
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr @TextInsert.buffer, i64 %indvars.iv.next.1
  store i8 %i.bb, ptr %i.bc, align 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.2
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr @TextInsert.buffer, i64 %indvars.iv.next.2
  store i8 %i.be, ptr %i.bf, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader45, label %.lr.ph, !llvm.loop !71

.preheader:                                       ; preds = %.lr.ph49, %middle.block85, %vec.epilog.middle.block99, %.preheader45
  %i.bg = icmp slt i32 %2, %.0.i
  br i1 %i.bg, label %iter.check119, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre = sext i32 %i.l to i64
  br label %._crit_edge

iter.check119:                                    ; preds = %.preheader
  %i.bh = sext i32 %indvars.iv57 to i64           ; 7 uses
  %i.bi = sext i32 %i.l to i64                    ; 5 uses
  %i.bj = add nsw i64 %i.bh, 1
  %smax104 = tail call i64 @llvm.smax.i64(i64 %i.bj, i64 %i.bi)
  %i.bk = sub i64 %smax104, %i.bh                 ; 7 uses
  %min.iters.check105 = icmp ult i64 %i.bk, 8
  %i.bl = sub i64 add (i64 ptrtoaddr (ptr @TextInsert.buffer to i64), i64 -1), %i.a
  %diff.check103 = icmp ult i64 %i.bl, 31
  %or.cond133 = or i1 %min.iters.check105, %diff.check103
  br i1 %or.cond133, label %.lr.ph51.preheader, label %vector.main.loop.iter.check106

vector.main.loop.iter.check106:                   ; preds = %iter.check119
  %min.iters.check107 = icmp ult i64 %i.bk, 32
  br i1 %min.iters.check107, label %vec.epilog.ph123, label %vector.ph108

vector.ph108:                                     ; preds = %vector.main.loop.iter.check106
  %i.bm = and i64 %i.bk, 24
  %n.vec109 = and i64 %i.bk, -32                  ; 4 uses
  %i.bn = add i64 %n.vec109, %i.bh
  br label %vector.body110

vector.body110:                                   ; preds = %vector.ph108, %vector.body110
  %index111 = phi i64 [ 0, %vector.ph108 ], [ %index.next114, %vector.body110 ] ; 2 uses
  %i.bo = add i64 %index111, %i.bh                ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %0, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load112 = load <16 x i8>, ptr %i.bp, align 1
  %wide.load113 = load <16 x i8>, ptr %i.bq, align 1
  %i.br = getelementptr inbounds i8, ptr @TextInsert.buffer, i64 %i.bo ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store <16 x i8> %wide.load112, ptr %i.br, align 1
  store <16 x i8> %wide.load113, ptr %i.bs, align 1
  %index.next114 = add nuw i64 %index111, 32      ; 2 uses
  %i.bt = icmp eq i64 %index.next114, %n.vec109
  br i1 %i.bt, label %middle.block115, label %vector.body110, !llvm.loop !72

middle.block115:                                  ; preds = %vector.body110
  %cmp.n116 = icmp eq i64 %i.bk, %n.vec109
  br i1 %cmp.n116, label %._crit_edge, label %vec.epilog.iter.check121

vec.epilog.iter.check121:                         ; preds = %middle.block115
  %min.epilog.iters.check122 = icmp eq i64 %i.bm, 0
  br i1 %min.epilog.iters.check122, label %.lr.ph51.preheader, label %vec.epilog.ph123, !prof !7

vec.epilog.ph123:                                 ; preds = %vector.main.loop.iter.check106, %vec.epilog.iter.check121
  %vec.epilog.resume.val117 = phi i64 [ %n.vec109, %vec.epilog.iter.check121 ], [ 0, %vector.main.loop.iter.check106 ]
  %n.vec124 = and i64 %i.bk, -8                   ; 3 uses
  %i.bu = add i64 %n.vec124, %i.bh
  br label %vec.epilog.vector.body125

vec.epilog.vector.body125:                        ; preds = %vec.epilog.vector.body125, %vec.epilog.ph123
  %index126 = phi i64 [ %vec.epilog.resume.val117, %vec.epilog.ph123 ], [ %index.next128, %vec.epilog.vector.body125 ] ; 2 uses
  %i.bv = add i64 %index126, %i.bh                ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %0, i64 %i.bv
  %wide.load127 = load <8 x i8>, ptr %i.bw, align 1
  %i.bx = getelementptr inbounds i8, ptr @TextInsert.buffer, i64 %i.bv
  store <8 x i8> %wide.load127, ptr %i.bx, align 1
  %index.next128 = add nuw i64 %index126, 8       ; 2 uses
  %i.by = icmp eq i64 %index.next128, %n.vec124
  br i1 %i.by, label %vec.epilog.middle.block129, label %vec.epilog.vector.body125, !llvm.loop !73

vec.epilog.middle.block129:                       ; preds = %vec.epilog.vector.body125
  %cmp.n130 = icmp eq i64 %i.bk, %n.vec124
  br i1 %cmp.n130, label %._crit_edge, label %.lr.ph51.preheader

.lr.ph51.preheader:                               ; preds = %iter.check119, %vec.epilog.iter.check121, %vec.epilog.middle.block129
  %indvars.iv59.ph = phi i64 [ %i.bh, %iter.check119 ], [ %i.bn, %vec.epilog.iter.check121 ], [ %i.bu, %vec.epilog.middle.block129 ]
  br label %.lr.ph51

.lr.ph49:                                         ; preds = %.lr.ph49.preheader, %.lr.ph49
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %.lr.ph49 ], [ %indvars.iv53.ph, %.lr.ph49.preheader ] ; 3 uses
  %i.bz = sub nsw i64 %indvars.iv53, %i.af
  %i.ca = getelementptr inbounds i8, ptr %1, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = getelementptr inbounds i8, ptr @TextInsert.buffer, i64 %indvars.iv53
  store i8 %i.cb, ptr %i.cc, align 1
  %indvars.iv.next54 = add nsw i64 %indvars.iv53, 1 ; 2 uses
  %i.cd = icmp slt i64 %indvars.iv.next54, %i.ag
  br i1 %i.cd, label %.lr.ph49, label %.preheader, !llvm.loop !74

._crit_edge:                                      ; preds = %.lr.ph51, %middle.block115, %vec.epilog.middle.block129, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %i.bi, %middle.block115 ], [ %i.bi, %vec.epilog.middle.block129 ], [ %i.bi, %.lr.ph51 ]
  %i.ce = getelementptr inbounds i8, ptr @TextInsert.buffer, i64 %.pre-phi
  store i8 0, ptr %i.ce, align 1
  br label %bb.c

.lr.ph51:                                         ; preds = %.lr.ph51.preheader, %.lr.ph51
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %.lr.ph51 ], [ %indvars.iv59.ph, %.lr.ph51.preheader ] ; 3 uses
  %i.cf = getelementptr inbounds i8, ptr %0, i64 %indvars.iv59
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = getelementptr inbounds i8, ptr @TextInsert.buffer, i64 %indvars.iv59
  store i8 %i.cg, ptr %i.ch, align 1
  %indvars.iv.next60 = add nsw i64 %indvars.iv59, 1 ; 2 uses
  %i.ci = icmp slt i64 %indvars.iv.next60, %i.bi
  br i1 %i.ci, label %.lr.ph51, label %._crit_edge, !llvm.loop !75

bb.b:                                             ; preds = %TextLength.exit44
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.67) #39
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  ret ptr @TextInsert.buffer
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
end_hunk_1
