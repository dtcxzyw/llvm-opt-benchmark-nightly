Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/bit_util?download=true
inline.NumInlined: 109
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 0, 128) i32 @_Z7msb_posj(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %0, 65535
  %i.b = select i1 %i.a, i32 16, i32 0            ; 2 uses
  %i.c = lshr i32 %0, %i.b                        ; 2 uses
  %i.d = icmp samesign ugt i32 %i.c, 255
  %i.e = select i1 %i.d, i32 8, i32 0             ; 2 uses
  %i.f = lshr i32 %i.c, %i.e                      ; 2 uses
  %i.g = icmp samesign ugt i32 %i.f, 15
  %i.h = select i1 %i.g, i32 4, i32 0             ; 2 uses
  %i.i = lshr i32 %i.f, %i.h                      ; 2 uses
  %i.j = icmp samesign ugt i32 %i.i, 3
  %i.k = select i1 %i.j, i32 2, i32 0             ; 2 uses
  %i.l = lshr i32 %i.i, %i.k
  %i.m = lshr i32 %i.l, 1
  %i.n = or i32 %i.b, %i.m
  %i.o = or i32 %i.n, %i.e
  %i.p = or i32 %i.o, %i.h
  %i.q = or i32 %i.p, %i.k
  ret i32 %i.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 0, 32) i32 @_Z8nlz_corej(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %0, i1 true)
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_Z3nlzSt4spanIKjLm18446744073709551615EE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #2 {
bb.a:
  %.not18 = icmp eq i64 %1, 0
  br i1 %.not18, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = trunc i64 %1 to i32
  %i.b = shl i32 %i.a, 5
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.01020 = phi i64 [ %i.c, %bb.b ], [ %1, %.lr.ph.preheader ]
  %.01119 = phi i32 [ %i.i, %bb.b ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.c = add i64 %.01020, -1                      ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !8    ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %.thread

.thread:                                          ; preds = %.lr.ph
  %i.g = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.e, i1 true)
  %i.h = or disjoint i32 %i.g, %.01119
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.i = add i32 %.01119, 32
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !13

.loopexit:                                        ; preds = %bb.b, %bb.a, %.thread
  %.2 = phi i32 [ %i.h, %.thread ], [ 0, %bb.a ], [ %i.b, %bb.b ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 0, 32) i32 @_Z8ntz_corej(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true)
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_Z3ntzSt4spanIKjLm18446744073709551615EE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #2 {
bb.a:
  %.not25.not = icmp eq i64 %1, 0
  br i1 %.not25.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.a = phi i64 [ %i.i, %bb.c ], [ 0, %bb.a ]
  %.01227 = phi i32 [ %i.h, %bb.c ], [ 0, %bb.a ]
  %.01326 = phi i32 [ %i.g, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !8    ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %i.c, i1 true)
  %i.f = or disjoint i32 %i.e, %.01326
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.g = add i32 %.01326, 32                      ; 2 uses
  %i.h = add i32 %.01227, 1                       ; 2 uses
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %.not = icmp ugt i64 %1, %i.i
  br i1 %.not, label %.lr.ph, label %.loopexit, !llvm.loop !14

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %spec.select = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ], [ %i.g, %bb.c ]
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Z4copySt4spanIKjLm18446744073709551615EES_IjLm18446744073709551615EE(ptr nofree readonly captures(none) %0, i64 %1, ptr nofree writeonly captures(none) %2, i64 %3) local_unnamed_addr #3 {
bb.a:
  %.not = icmp ult i64 %3, %1
  br i1 %.not, label %.preheader, label %.preheader27

.preheader27:                                     ; preds = %bb.a
  %.not33 = icmp eq i64 %1, 0
  br i1 %.not33, label %.preheader25, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader27
  %min.iters.check = icmp ult i64 %1, 8
  %4 = ptrtoaddr ptr %2 to i64
  %5 = ptrtoaddr ptr %0 to i64
  %i.a = sub i64 %5, %4
  %diff.check = icmp ugt i64 %i.a, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader55, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %wide.load = load <4 x i32>, ptr %i.b, align 4, !tbaa !8
  %wide.load38 = load <4 x i32>, ptr %i.c, align 4, !tbaa !8
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <4 x i32> %wide.load, ptr %i.d, align 4, !tbaa !8
  store <4 x i32> %wide.load38, ptr %i.e, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %.preheader25, label %.lr.ph.preheader55

.lr.ph.preheader55:                               ; preds = %.lr.ph.preheader, %middle.block
  %.01628.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader55, %.lr.ph.prol
  %.01628.prol = phi i64 [ %i.j, %.lr.ph.prol ], [ %.01628.ph, %.lr.ph.preheader55 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader55 ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01628.prol
  %i.h = load i32, ptr %i.g, align 4, !tbaa !8
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.01628.prol
  store i32 %i.h, ptr %i.i, align 4, !tbaa !8
  %i.j = add nuw i64 %.01628.prol, 1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !16

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader55
  %.01628.unr = phi i64 [ %.01628.ph, %.lr.ph.preheader55 ], [ %i.j, %.lr.ph.prol ]
  %i.k = sub i64 %.01628.ph, %1
  %i.l = icmp ugt i64 %i.k, -4
  br i1 %i.l, label %.preheader25, label %.lr.ph

.preheader:                                       ; preds = %bb.a
  %.not34 = icmp eq i64 %3, 0
  br i1 %.not34, label %.loopexit, label %.lr.ph32.preheader

.lr.ph32.preheader:                               ; preds = %.preheader
  %min.iters.check42 = icmp ult i64 %3, 16
  br i1 %min.iters.check42, label %.lr.ph32.preheader54, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph32.preheader
  %i.m = add i64 %3, -1                           ; 2 uses
  %i.n = and i64 %i.m, 4294967295
  %i.o = icmp eq i64 %i.n, 4294967295
  %i.p = icmp ugt i64 %i.m, 4294967295
  %i.q = or i1 %i.o, %i.p
  %6 = ptrtoaddr ptr %2 to i64
  %7 = ptrtoaddr ptr %0 to i64
  %i.r = sub i64 %7, %6
  %diff.check40 = icmp ugt i64 %i.r, -32
  %or.cond53 = select i1 %i.q, i1 true, i1 %diff.check40
  br i1 %or.cond53, label %.lr.ph32.preheader54, label %vector.ph43

vector.ph43:                                      ; preds = %vector.scevcheck
  %n.vec44 = and i64 %3, 8589934584               ; 3 uses
  br label %vector.body45

vector.body45:                                    ; preds = %vector.body45, %vector.ph43
  %index46 = phi i64 [ 0, %vector.ph43 ], [ %index.next49, %vector.body45 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index46 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load47 = load <4 x i32>, ptr %i.s, align 4, !tbaa !8
  %wide.load48 = load <4 x i32>, ptr %i.t, align 4, !tbaa !8
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index46 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x i32> %wide.load47, ptr %i.u, align 4, !tbaa !8
  store <4 x i32> %wide.load48, ptr %i.v, align 4, !tbaa !8
  %index.next49 = add nuw i64 %index46, 8         ; 2 uses
  %i.w = icmp eq i64 %index.next49, %n.vec44
  br i1 %i.w, label %middle.block50, label %vector.body45, !llvm.loop !17

middle.block50:                                   ; preds = %vector.body45
  %cmp.n51 = icmp eq i64 %3, %n.vec44
  br i1 %cmp.n51, label %.loopexit, label %.lr.ph32.preheader54

.lr.ph32.preheader54:                             ; preds = %vector.scevcheck, %.lr.ph32.preheader, %middle.block50
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph32.preheader ], [ %n.vec44, %middle.block50 ]
  br label %.lr.ph32

.preheader25:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader27
  %i.x = icmp ult i64 %1, %3
  br i1 %i.x, label %.lr.ph30.preheader, label %.loopexit

.lr.ph30.preheader:                               ; preds = %.preheader25
  %i.y = shl i64 %1, 2
  %scevgep = getelementptr i8, ptr %2, i64 %i.y
  %i.z = sub nuw i64 %3, %1
  %i.aa = shl i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.aa, i1 false), !tbaa !8
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.01628 = phi i64 [ %i.aq, %.lr.ph ], [ %.01628.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01628
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !8
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.01628
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !8
  %i.ae = add nuw i64 %.01628, 1                  ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !8
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ae
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !8
  %i.ai = add nuw i64 %.01628, 2                  ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !8
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ai
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !8
  %i.am = add nuw i64 %.01628, 3                  ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !8
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.am
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !8
  %i.aq = add nuw i64 %.01628, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.aq, %1
  br i1 %exitcond.not.3, label %.preheader25, label %.lr.ph, !llvm.loop !18

.lr.ph32:                                         ; preds = %.lr.ph32.preheader54, %.lr.ph32
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph32 ], [ %indvars.iv.ph, %.lr.ph32.preheader54 ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !8
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %i.as, ptr %i.at, align 4, !tbaa !8
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.au = and i64 %indvars.iv.next, 4294967295
  %i.av = icmp ugt i64 %3, %i.au
  br i1 %i.av, label %.lr.ph32, label %.loopexit, !llvm.loop !19

.loopexit:                                        ; preds = %.lr.ph32, %middle.block50, %.lr.ph30.preheader, %.preheader25, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_Z7is_zeroSt4spanIKjLm18446744073709551615EE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.b = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]
  %.047 = phi i32 [ %i.e, %.lr.ph ], [ 0, %bb.a ]
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !8
  %.not = icmp eq i32 %i.d, 0                     ; 2 uses
  %i.e = add i32 %.047, 1                         ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %.not10 = icmp ugt i64 %1, %i.f
  %or.cond = select i1 %.not, i1 %.not10, i1 false
  br i1 %or.cond, label %.lr.ph, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.not, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @_Z5resetSt4spanIjLm18446744073709551615EE(ptr nofree writeonly captures(none) %0, i64 %1) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %1, 16
  br i1 %min.iters.check, label %.lr.ph.preheader6, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.a = add i64 %1, -1                           ; 2 uses
  %i.b = and i64 %i.a, 4294967295
  %i.c = icmp eq i64 %i.b, 4294967295
  %i.d = icmp ugt i64 %i.a, 4294967295
  %i.e = or i1 %i.c, %i.d
  br i1 %i.e, label %.lr.ph.preheader6, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %1, 8589934584                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <4 x i32> zeroinitializer, ptr %i.f, align 4, !tbaa !8
  store <4 x i32> zeroinitializer, ptr %i.g, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader6

.lr.ph.preheader6:                                ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader6, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader6 ] ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 0, ptr %i.i, align 4, !tbaa !8
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.j = and i64 %indvars.iv.next, 4294967295
  %i.k = icmp ugt i64 %1, %i.j
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Z3shlSt4spanIKjLm18446744073709551615EEjS_IjLm18446744073709551615EE(ptr nofree readonly captures(none) %0, i64 %1, i32 noundef %2, ptr nofree captures(none) %3, i64 %4) local_unnamed_addr #3 {
bb.a:
  %i.a = lshr i32 %2, 5                           ; 6 uses
  %i.b = and i32 %2, 31                           ; 10 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64                ; 8 uses
  %i.d = add i64 %1, %i.c                         ; 7 uses
  %i.e = icmp ugt i64 %i.d, %4
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = sub nuw i64 %i.d, %4
  %.092 = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 %i.f)
  br label %.loopexit133

bb.d:                                             ; preds = %bb.b
  %i.g = icmp ult i64 %i.d, %4
  br i1 %i.g, label %.preheader132.preheader, label %.loopexit133

.preheader132.preheader:                          ; preds = %bb.d
  %i.h = shl i64 %i.d, 2
  %scevgep = getelementptr i8, ptr %3, i64 %i.h
  %i.i = sub nuw i64 %4, %i.d
  %i.j = shl i64 %i.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.j, i1 false), !tbaa !8
  br label %.loopexit133

.loopexit133:                                     ; preds = %.preheader132.preheader, %bb.d, %bb.c
  %.193 = phi i64 [ %.092, %bb.c ], [ %1, %bb.d ], [ %1, %.preheader132.preheader ] ; 9 uses
  %.090 = phi i64 [ %4, %bb.c ], [ %i.d, %bb.d ], [ %i.d, %.preheader132.preheader ] ; 6 uses
  %.not108135 = icmp eq i64 %.193, 0
  br i1 %.not108135, label %.preheader131, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.loopexit133
  %min.iters.check = icmp ult i64 %.193, 16
  br i1 %min.iters.check, label %.lr.ph.preheader236, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %5 = ptrtoaddr ptr %0 to i64
  %i.k = shl i64 %.193, 2
  %6 = ptrtoaddr ptr %3 to i64
  %i.l = shl i64 %.090, 2
  %7 = add i64 %i.k, %5
  %i.m = add i64 %i.l, %6
  %i.n = sub i64 %i.m, %7
  %diff.check = icmp ugt i64 %i.n, -32
  br i1 %diff.check, label %.lr.ph.preheader236, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.193, -8                      ; 3 uses
  %i.o = sub i64 %.090, %n.vec                    ; 2 uses
  %i.p = and i64 %.193, 7
  %i.q = getelementptr [4 x i8], ptr %0, i64 %.193
  %i.r = getelementptr [4 x i8], ptr %3, i64 %.090
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = xor i64 %index, -1
  %i.t = xor i64 %index, -1
  %i.u = getelementptr [4 x i8], ptr %i.q, i64 %i.s ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -12
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -28
  %wide.load = load <4 x i32>, ptr %i.v, align 4, !tbaa !8
  %wide.load178 = load <4 x i32>, ptr %i.w, align 4, !tbaa !8
  %i.x = getelementptr [4 x i8], ptr %i.r, i64 %i.t ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -12
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -28
  store <4 x i32> %wide.load, ptr %i.y, align 4, !tbaa !8
  store <4 x i32> %wide.load178, ptr %i.z, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.193, %n.vec
  br i1 %cmp.n, label %.preheader131, label %.lr.ph.preheader236

.lr.ph.preheader236:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.191137.ph = phi i64 [ %.090, %vector.memcheck ], [ %.090, %.lr.ph.preheader ], [ %i.o, %middle.block ] ; 2 uses
  %.294136.ph = phi i64 [ %.193, %vector.memcheck ], [ %.193, %.lr.ph.preheader ], [ %i.p, %middle.block ] ; 4 uses
  %i.ab = add i64 %.294136.ph, -1
  %xtraiter = and i64 %.294136.ph, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader236, %.lr.ph.prol
  %.191137.prol = phi i64 [ %i.ad, %.lr.ph.prol ], [ %.191137.ph, %.lr.ph.preheader236 ]
  %.294136.prol = phi i64 [ %i.ac, %.lr.ph.prol ], [ %.294136.ph, %.lr.ph.preheader236 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader236 ]
  %i.ac = add i64 %.294136.prol, -1               ; 3 uses
  %i.ad = add i64 %.191137.prol, -1               ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ac
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !8
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ad
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !8
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !24

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader236
  %.lcssa237.unr = phi i64 [ poison, %.lr.ph.preheader236 ], [ %i.ad, %.lr.ph.prol ]
  %.191137.unr = phi i64 [ %.191137.ph, %.lr.ph.preheader236 ], [ %i.ad, %.lr.ph.prol ]
  %.294136.unr = phi i64 [ %.294136.ph, %.lr.ph.preheader236 ], [ %i.ac, %.lr.ph.prol ]
  %i.ah = icmp ult i64 %i.ab, 3
  br i1 %i.ah, label %.preheader131, label %.lr.ph

.preheader131:                                    ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.loopexit133
  %.191.lcssa = phi i64 [ %.090, %.loopexit133 ], [ %i.o, %middle.block ], [ %.lcssa237.unr, %.lr.ph.prol.loopexit ], [ %i.az, %.lr.ph ] ; 2 uses
  %.not109138 = icmp eq i64 %.191.lcssa, 0
  br i1 %.not109138, label %._crit_edge, label %.lr.ph140.preheader

.lr.ph140.preheader:                              ; preds = %.preheader131
  %i.ai = shl nuw i64 %.191.lcssa, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 %i.ai, i1 false), !tbaa !8
  br label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.191137 = phi i64 [ %i.az, %.lr.ph ], [ %.191137.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.294136 = phi i64 [ %i.ay, %.lr.ph ], [ %.294136.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.aj = getelementptr [4 x i8], ptr %0, i64 %.294136
  %i.ak = getelementptr i8, ptr %i.aj, i64 -4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !8
  %i.am = getelementptr [4 x i8], ptr %3, i64 %.191137
  %i.an = getelementptr i8, ptr %i.am, i64 -4
  store i32 %i.al, ptr %i.an, align 4, !tbaa !8
  %i.ao = getelementptr [4 x i8], ptr %0, i64 %.294136
  %i.ap = getelementptr i8, ptr %i.ao, i64 -8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !8
  %i.ar = getelementptr [4 x i8], ptr %3, i64 %.191137
  %i.as = getelementptr i8, ptr %i.ar, i64 -8
  store i32 %i.aq, ptr %i.as, align 4, !tbaa !8
  %i.at = getelementptr [4 x i8], ptr %0, i64 %.294136
  %i.au = getelementptr i8, ptr %i.at, i64 -12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !8
  %i.aw = getelementptr [4 x i8], ptr %3, i64 %.191137
  %i.ax = getelementptr i8, ptr %i.aw, i64 -12
  store i32 %i.av, ptr %i.ax, align 4, !tbaa !8
  %i.ay = add i64 %.294136, -4                    ; 3 uses
  %i.az = add i64 %.191137, -4                    ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ay
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !8
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.az
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !8
  %.not108.3 = icmp eq i64 %i.ay, 0
  br i1 %.not108.3, label %.preheader131, label %.lr.ph, !llvm.loop !25

._crit_edge:                                      ; preds = %.lr.ph140.preheader, %.preheader131
  %.not110 = icmp eq i32 %i.b, 0
  br i1 %.not110, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %narrow111 = sub nuw nsw i32 32, %i.b           ; 2 uses
  %i.bd = icmp ugt i64 %4, %i.c
  br i1 %i.bd, label %.lr.ph144.preheader, label %.loopexit

.lr.ph144.preheader:                              ; preds = %bb.e
  %i.be = sub nuw i64 %4, %i.c                    ; 3 uses
  %min.iters.check181 = icmp ult i64 %i.be, 12
  br i1 %min.iters.check181, label %.lr.ph144.preheader234, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph144.preheader
  %i.bf = xor i64 %i.c, -1
  %i.bg = add i64 %4, %i.bf                       ; 2 uses
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = sub nuw nsw i32 -2, %i.a
  %i.bj = icmp ult i32 %i.bi, %i.bh
  %i.bk = icmp ugt i64 %i.bg, 4294967295
  %i.bl = or i1 %i.bj, %i.bk
  br i1 %i.bl, label %.lr.ph144.preheader234, label %vector.ph182

vector.ph182:                                     ; preds = %vector.scevcheck
  %n.vec183 = and i64 %i.be, -8                   ; 4 uses
  %i.bm = add i64 %n.vec183, %i.c
  %i.bn = trunc i64 %n.vec183 to i32
  %i.bo = add i32 %i.a, %i.bn
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %narrow111, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert184 = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat185 = shufflevector <4 x i32> %broadcast.splatinsert184, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %3, i64 %i.c
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph182
  %index187 = phi i64 [ 0, %vector.ph182 ], [ %index.next190, %vector.body186 ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph182 ], [ %i.br, %vector.body186 ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index187 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load188 = load <4 x i32>, ptr %gep, align 4, !tbaa !8 ; 2 uses
  %wide.load189 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !8 ; 2 uses
  %i.bq = lshr <4 x i32> %wide.load188, %broadcast.splat ; 2 uses
  %i.br = lshr <4 x i32> %wide.load189, %broadcast.splat ; 3 uses
  %i.bs = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.bq, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bt = shufflevector <4 x i32> %i.bq, <4 x i32> %i.br, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bu = shl <4 x i32> %wide.load188, %broadcast.splat185
  %i.bv = shl <4 x i32> %wide.load189, %broadcast.splat185
  %i.bw = or <4 x i32> %i.bu, %i.bs
  %i.bx = or <4 x i32> %i.bv, %i.bt
  store <4 x i32> %i.bw, ptr %gep, align 4, !tbaa !8
  store <4 x i32> %i.bx, ptr %i.bp, align 4, !tbaa !8
  %index.next190 = add nuw i64 %index187, 8       ; 2 uses
  %i.by = icmp eq i64 %index.next190, %n.vec183
  br i1 %i.by, label %middle.block191, label %vector.body186, !llvm.loop !26

middle.block191:                                  ; preds = %vector.body186
  %vector.recur.extract = extractelement <4 x i32> %i.br, i64 3
  %cmp.n192 = icmp eq i64 %i.be, %n.vec183
  br i1 %cmp.n192, label %.loopexit, label %.lr.ph144.preheader234

.lr.ph144.preheader234:                           ; preds = %vector.scevcheck, %.lr.ph144.preheader, %middle.block191
  %.ph = phi i64 [ %i.c, %vector.scevcheck ], [ %i.c, %.lr.ph144.preheader ], [ %i.bm, %middle.block191 ]
  %.087142.ph = phi i32 [ %i.a, %vector.scevcheck ], [ %i.a, %.lr.ph144.preheader ], [ %i.bo, %middle.block191 ]
  %.088141.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph144.preheader ], [ %vector.recur.extract, %middle.block191 ]
  br label %.lr.ph144

.lr.ph144:                                        ; preds = %.lr.ph144.preheader234, %.lr.ph144
  %i.bz = phi i64 [ %i.cg, %.lr.ph144 ], [ %.ph, %.lr.ph144.preheader234 ]
  %.087142 = phi i32 [ %i.cf, %.lr.ph144 ], [ %.087142.ph, %.lr.ph144.preheader234 ]
  %.088141 = phi i32 [ %i.cc, %.lr.ph144 ], [ %.088141.ph, %.lr.ph144.preheader234 ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bz ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !8  ; 2 uses
  %i.cc = lshr i32 %i.cb, %narrow111
  %i.cd = shl i32 %i.cb, %i.b
  %i.ce = or i32 %i.cd, %.088141
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !8
  %i.cf = add i32 %.087142, 1                     ; 2 uses
  %i.cg = zext i32 %i.cf to i64                   ; 2 uses
  %i.ch = icmp ugt i64 %4, %i.cg
  br i1 %i.ch, label %.lr.ph144, label %.loopexit, !llvm.loop !27

bb.f:                                             ; preds = %bb.a
  %i.ci = icmp eq i32 %i.b, 0
  br i1 %i.ci, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %spec.select = tail call i64 @llvm.umin.i64(i64 %1, i64 %4) ; 9 uses
  %.not161 = icmp eq i64 %spec.select, 0
  br i1 %.not161, label %.preheader, label %.lr.ph157.preheader

.lr.ph157.preheader:                              ; preds = %bb.g
  %min.iters.check219 = icmp ult i64 %spec.select, 8
  %8 = ptrtoaddr ptr %3 to i64
  %9 = ptrtoaddr ptr %0 to i64
  %i.cj = sub i64 %9, %8
  %diff.check217 = icmp ugt i64 %i.cj, -32
  %or.cond = select i1 %min.iters.check219, i1 true, i1 %diff.check217
  br i1 %or.cond, label %.lr.ph157.preheader231, label %vector.ph220

vector.ph220:                                     ; preds = %.lr.ph157.preheader
  %n.vec221 = and i64 %spec.select, -8            ; 3 uses
  br label %vector.body222

vector.body222:                                   ; preds = %vector.body222, %vector.ph220
  %index223 = phi i64 [ 0, %vector.ph220 ], [ %index.next226, %vector.body222 ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index223 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %wide.load224 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !8
  %wide.load225 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !8
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index223 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store <4 x i32> %wide.load224, ptr %i.cm, align 4, !tbaa !8
  store <4 x i32> %wide.load225, ptr %i.cn, align 4, !tbaa !8
  %index.next226 = add nuw i64 %index223, 8       ; 2 uses
  %i.co = icmp eq i64 %index.next226, %n.vec221
  br i1 %i.co, label %middle.block227, label %vector.body222, !llvm.loop !28

middle.block227:                                  ; preds = %vector.body222
  %cmp.n228 = icmp eq i64 %spec.select, %n.vec221
  br i1 %cmp.n228, label %.preheader, label %.lr.ph157.preheader231

.lr.ph157.preheader231:                           ; preds = %.lr.ph157.preheader, %middle.block227
  %.086155.ph = phi i64 [ 0, %.lr.ph157.preheader ], [ %n.vec221, %middle.block227 ] ; 3 uses
  %xtraiter241 = and i64 %spec.select, 3          ; 2 uses
  %lcmp.mod242.not = icmp eq i64 %xtraiter241, 0
  br i1 %lcmp.mod242.not, label %.lr.ph157.prol.loopexit, label %.lr.ph157.prol

.lr.ph157.prol:                                   ; preds = %.lr.ph157.preheader231, %.lr.ph157.prol
  %.086155.prol = phi i64 [ %i.cs, %.lr.ph157.prol ], [ %.086155.ph, %.lr.ph157.preheader231 ] ; 3 uses
  %prol.iter243 = phi i64 [ %prol.iter243.next, %.lr.ph157.prol ], [ 0, %.lr.ph157.preheader231 ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.086155.prol
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !8
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.086155.prol
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !8
  %i.cs = add nuw i64 %.086155.prol, 1            ; 2 uses
  %prol.iter243.next = add i64 %prol.iter243, 1   ; 2 uses
  %prol.iter243.cmp.not = icmp eq i64 %prol.iter243.next, %xtraiter241
  br i1 %prol.iter243.cmp.not, label %.lr.ph157.prol.loopexit, label %.lr.ph157.prol, !llvm.loop !29

.lr.ph157.prol.loopexit:                          ; preds = %.lr.ph157.prol, %.lr.ph157.preheader231
  %.086155.unr = phi i64 [ %.086155.ph, %.lr.ph157.preheader231 ], [ %i.cs, %.lr.ph157.prol ]
  %i.ct = sub i64 %.086155.ph, %spec.select
  %i.cu = icmp ugt i64 %i.ct, -4
  br i1 %i.cu, label %.preheader, label %.lr.ph157

.preheader:                                       ; preds = %.lr.ph157.prol.loopexit, %.lr.ph157, %middle.block227, %bb.g
  %i.cv = icmp ult i64 %1, %4
  br i1 %i.cv, label %.lr.ph159.preheader, label %.loopexit

.lr.ph159.preheader:                              ; preds = %.preheader
  %i.cw = shl i64 %spec.select, 2
  %scevgep168 = getelementptr i8, ptr %3, i64 %i.cw
  %i.cx = sub i64 %4, %spec.select
  br label %.loopexit.sink.split

.lr.ph157:                                        ; preds = %.lr.ph157.prol.loopexit, %.lr.ph157
  %.086155 = phi i64 [ %i.dn, %.lr.ph157 ], [ %.086155.unr, %.lr.ph157.prol.loopexit ] ; 6 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.086155
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !8
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.086155
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !8
  %i.db = add nuw i64 %.086155, 1                 ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !8
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.db
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !8
  %i.df = add nuw i64 %.086155, 2                 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !8
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.df
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !8
  %i.dj = add nuw i64 %.086155, 3                 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !8
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dj
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !8
  %i.dn = add nuw i64 %.086155, 4                 ; 2 uses
  %exitcond167.not.3 = icmp eq i64 %i.dn, %spec.select
  br i1 %exitcond167.not.3, label %.preheader, label %.lr.ph157, !llvm.loop !30

bb.h:                                             ; preds = %bb.f
  %narrow = sub nuw nsw i32 32, %i.b              ; 4 uses
  %spec.select112 = tail call i64 @llvm.umin.i64(i64 %1, i64 %4) ; 11 uses
  %.not160 = icmp eq i64 %spec.select112, 0
  br i1 %.not160, label %._crit_edge149, label %.lr.ph148.preheader

.lr.ph148.preheader:                              ; preds = %bb.h
  %min.iters.check198 = icmp ult i64 %spec.select112, 8
  %10 = ptrtoaddr ptr %3 to i64
  %11 = ptrtoaddr ptr %0 to i64
  %i.do = sub i64 %11, %10
  %diff.check196 = icmp ugt i64 %i.do, -32
  %or.cond230 = select i1 %min.iters.check198, i1 true, i1 %diff.check196
  br i1 %or.cond230, label %.lr.ph148.preheader232, label %vector.ph199

vector.ph199:                                     ; preds = %.lr.ph148.preheader
  %n.vec200 = and i64 %spec.select112, -8         ; 3 uses
  %broadcast.splatinsert201 = insertelement <4 x i32> poison, i32 %narrow, i64 0
  %broadcast.splat202 = shufflevector <4 x i32> %broadcast.splatinsert201, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert203 = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat204 = shufflevector <4 x i32> %broadcast.splatinsert203, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body205

vector.body205:                                   ; preds = %vector.body205, %vector.ph199
  %index206 = phi i64 [ 0, %vector.ph199 ], [ %index.next210, %vector.body205 ] ; 3 uses
  %vector.recur207 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph199 ], [ %i.ds, %vector.body205 ]
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index206 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %wide.load208 = load <4 x i32>, ptr %i.dp, align 4, !tbaa !8 ; 2 uses
  %wide.load209 = load <4 x i32>, ptr %i.dq, align 4, !tbaa !8 ; 2 uses
  %i.dr = lshr <4 x i32> %wide.load208, %broadcast.splat202 ; 2 uses
  %i.ds = lshr <4 x i32> %wide.load209, %broadcast.splat202 ; 3 uses
  %i.dt = shufflevector <4 x i32> %vector.recur207, <4 x i32> %i.dr, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.du = shufflevector <4 x i32> %i.dr, <4 x i32> %i.ds, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index206 ; 2 uses
  %i.dw = shl <4 x i32> %wide.load208, %broadcast.splat204
  %i.dx = shl <4 x i32> %wide.load209, %broadcast.splat204
  %i.dy = or <4 x i32> %i.dw, %i.dt
  %i.dz = or <4 x i32> %i.dx, %i.du
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store <4 x i32> %i.dy, ptr %i.dv, align 4, !tbaa !8
  store <4 x i32> %i.dz, ptr %i.ea, align 4, !tbaa !8
  %index.next210 = add nuw i64 %index206, 8       ; 2 uses
  %i.eb = icmp eq i64 %index.next210, %n.vec200
  br i1 %i.eb, label %middle.block211, label %vector.body205, !llvm.loop !31

middle.block211:                                  ; preds = %vector.body205
  %vector.recur.extract212 = extractelement <4 x i32> %i.ds, i64 3 ; 2 uses
  %cmp.n213 = icmp eq i64 %spec.select112, %n.vec200
  br i1 %cmp.n213, label %._crit_edge149, label %.lr.ph148.preheader232

.lr.ph148.preheader232:                           ; preds = %.lr.ph148.preheader, %middle.block211
  %.083146.ph = phi i64 [ 0, %.lr.ph148.preheader ], [ %n.vec200, %middle.block211 ] ; 5 uses
  %.084145.ph = phi i32 [ 0, %.lr.ph148.preheader ], [ %vector.recur.extract212, %middle.block211 ] ; 2 uses
  %.neg = or disjoint i64 %.083146.ph, 1
  %xtraiter238 = and i64 %spec.select112, 1
  %lcmp.mod239.not = icmp eq i64 %xtraiter238, 0
  br i1 %lcmp.mod239.not, label %.lr.ph148.prol.loopexit, label %.lr.ph148.prol

.lr.ph148.prol:                                   ; preds = %.lr.ph148.preheader232
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.083146.ph
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !8  ; 2 uses
  %i.ee = lshr i32 %i.ed, %narrow                 ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.083146.ph
  %i.eg = shl i32 %i.ed, %i.b
  %i.eh = or i32 %i.eg, %.084145.ph
  store i32 %i.eh, ptr %i.ef, align 4, !tbaa !8
  %i.ei = or disjoint i64 %.083146.ph, 1
  br label %.lr.ph148.prol.loopexit

.lr.ph148.prol.loopexit:                          ; preds = %.lr.ph148.prol, %.lr.ph148.preheader232
  %.lcssa.unr = phi i32 [ poison, %.lr.ph148.preheader232 ], [ %i.ee, %.lr.ph148.prol ]
  %.083146.unr = phi i64 [ %.083146.ph, %.lr.ph148.preheader232 ], [ %i.ei, %.lr.ph148.prol ]
  %.084145.unr = phi i32 [ %.084145.ph, %.lr.ph148.preheader232 ], [ %i.ee, %.lr.ph148.prol ]
  %i.ej = icmp eq i64 %spec.select112, %.neg
  br i1 %i.ej, label %._crit_edge149, label %.lr.ph148

._crit_edge149:                                   ; preds = %.lr.ph148.prol.loopexit, %.lr.ph148, %middle.block211, %bb.h
  %.084.lcssa = phi i32 [ 0, %bb.h ], [ %vector.recur.extract212, %middle.block211 ], [ %.lcssa.unr, %.lr.ph148.prol.loopexit ], [ %i.eu, %.lr.ph148 ]
  %i.ek = icmp ult i64 %1, %4
  br i1 %i.ek, label %bb.i, label %.loopexit

.lr.ph148:                                        ; preds = %.lr.ph148.prol.loopexit, %.lr.ph148
  %.083146 = phi i64 [ %i.ey, %.lr.ph148 ], [ %.083146.unr, %.lr.ph148.prol.loopexit ] ; 4 uses
  %.084145 = phi i32 [ %i.eu, %.lr.ph148 ], [ %.084145.unr, %.lr.ph148.prol.loopexit ]
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.083146
  %i.em = load i32, ptr %i.el, align 4, !tbaa !8  ; 2 uses
  %i.en = lshr i32 %i.em, %narrow
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.083146
  %i.ep = shl i32 %i.em, %i.b
  %i.eq = or i32 %i.ep, %.084145
  store i32 %i.eq, ptr %i.eo, align 4, !tbaa !8
  %i.er = add nuw i64 %.083146, 1                 ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !8  ; 2 uses
  %i.eu = lshr i32 %i.et, %narrow                 ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.er
  %i.ew = shl i32 %i.et, %i.b
  %i.ex = or disjoint i32 %i.ew, %i.en
  store i32 %i.ex, ptr %i.ev, align 4, !tbaa !8
  %i.ey = add nuw i64 %.083146, 2                 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ey, %spec.select112
  br i1 %exitcond.not.1, label %._crit_edge149, label %.lr.ph148, !llvm.loop !32

bb.i:                                             ; preds = %._crit_edge149
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %spec.select112
  store i32 %.084.lcssa, ptr %i.ez, align 4, !tbaa !8
  %.0151 = add i64 %spec.select112, 1
  %i.fa = icmp ult i64 %.0151, %4
  br i1 %i.fa, label %.lr.ph154.preheader, label %.loopexit

.lr.ph154.preheader:                              ; preds = %bb.i
  %i.fb = shl i64 %spec.select112, 2
  %i.fc = getelementptr i8, ptr %3, i64 %i.fb
  %scevgep166 = getelementptr i8, ptr %i.fc, i64 4
  %i.fd = xor i64 %spec.select112, -1
  %i.fe = add i64 %4, %i.fd
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.lr.ph159.preheader, %.lr.ph154.preheader
  %.sink176 = phi i64 [ %i.fe, %.lr.ph154.preheader ], [ %i.cx, %.lr.ph159.preheader ]
  %scevgep166.sink = phi ptr [ %scevgep166, %.lr.ph154.preheader ], [ %scevgep168, %.lr.ph159.preheader ]
  %i.ff = shl i64 %.sink176, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep166.sink, i8 0, i64 %i.ff, i1 false), !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph144, %middle.block191, %.loopexit.sink.split, %bb.e, %bb.i, %.preheader, %._crit_edge, %._crit_edge149
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Z3shrSt4spanIKjLm18446744073709551615EEjS_IjLm18446744073709551615EE(ptr nofree readonly captures(none) %0, i64 %1, i32 noundef %2, ptr nofree writeonly captures(none) %3, i64 %4) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i64 %1, %4
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %2, 5                           ; 14 uses
  %i.c = zext nneg i32 %i.b to i64                ; 14 uses
  %.not156 = icmp ugt i64 %1, %i.c
  br i1 %.not156, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_Z5resetSt4spanIjLm18446744073709551615EE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %min.iters.check423 = icmp ult i64 %1, 8
  br i1 %min.iters.check423, label %.lr.ph.i.preheader525, label %vector.ph424

vector.ph424:                                     ; preds = %.lr.ph.i.preheader
  %n.vec425 = and i64 %1, -8                      ; 3 uses
  br label %vector.body426

vector.body426:                                   ; preds = %vector.body426, %vector.ph424
  %index427 = phi i64 [ 0, %vector.ph424 ], [ %index.next428, %vector.body426 ] ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index427 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <4 x i32> zeroinitializer, ptr %i.d, align 4, !tbaa !8
  store <4 x i32> zeroinitializer, ptr %i.e, align 4, !tbaa !8
  %index.next428 = add nuw i64 %index427, 8       ; 2 uses
  %i.f = icmp eq i64 %index.next428, %n.vec425
  br i1 %i.f, label %middle.block429, label %vector.body426, !llvm.loop !33

middle.block429:                                  ; preds = %vector.body426
  %cmp.n430 = icmp eq i64 %1, %n.vec425
  br i1 %cmp.n430, label %_Z5resetSt4spanIjLm18446744073709551615EE.exit, label %.lr.ph.i.preheader525

.lr.ph.i.preheader525:                            ; preds = %.lr.ph.i.preheader, %middle.block429
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec425, %middle.block429 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader525, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader525 ] ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  store i32 0, ptr %i.g, align 4, !tbaa !8
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 2 uses
  %i.h = and i64 %indvars.iv.next.i, 4294967295
  %i.i = icmp samesign ugt i64 %1, %i.h
  br i1 %i.i, label %.lr.ph.i, label %_Z5resetSt4spanIjLm18446744073709551615EE.exit, !llvm.loop !34

bb.d:                                             ; preds = %bb.b
  %i.j = and i32 %2, 31                           ; 8 uses
  %narrow = sub nuw nsw i32 32, %i.j              ; 4 uses
  %i.k = sub nuw i64 %1, %i.c                     ; 6 uses
  %.not157 = icmp eq i32 %i.b, 0
  %i.l = icmp eq i32 %i.j, 0                      ; 2 uses
  br i1 %.not157, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.l, label %.lr.ph270.preheader, label %.preheader235

.lr.ph270.preheader:                              ; preds = %bb.e
  %min.iters.check465 = icmp ult i64 %i.k, 24
  br i1 %min.iters.check465, label %.lr.ph270.preheader522, label %vector.scevcheck461

vector.scevcheck461:                              ; preds = %.lr.ph270.preheader
  %i.m = xor i64 %i.c, -1
  %i.n = add i64 %1, %i.m                         ; 2 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = xor i32 %i.b, -1
  %i.q = icmp ult i32 %i.p, %i.o
  %i.r = icmp ugt i64 %i.n, 4294967295
  %i.s = or i1 %i.q, %i.r
  br i1 %i.s, label %.lr.ph270.preheader522, label %vector.memcheck462

vector.memcheck462:                               ; preds = %vector.scevcheck461
  %5 = ptrtoaddr ptr %3 to i64
  %6 = ptrtoaddr ptr %0 to i64
  %i.t = shl nuw nsw i64 %i.c, 2
  %i.u = add i64 %i.t, %6
  %i.v = sub i64 %i.u, %5
  %diff.check463 = icmp ugt i64 %i.v, -32
  br i1 %diff.check463, label %.lr.ph270.preheader522, label %vector.ph466

vector.ph466:                                     ; preds = %vector.memcheck462
  %n.vec467 = and i64 %i.k, -8                    ; 4 uses
  %i.w = trunc i64 %n.vec467 to i32
  %i.x = add i32 %i.b, %i.w
  br label %vector.body468

vector.body468:                                   ; preds = %vector.body468, %vector.ph466
  %index469 = phi i64 [ 0, %vector.ph466 ], [ %index.next472, %vector.body468 ] ; 3 uses
  %i.y = trunc i64 %index469 to i32
  %i.z = add i32 %i.b, %i.y
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %wide.load470 = load <4 x i32>, ptr %i.ab, align 4, !tbaa !8
  %wide.load471 = load <4 x i32>, ptr %i.ac, align 4, !tbaa !8
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index469 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <4 x i32> %wide.load470, ptr %i.ad, align 4, !tbaa !8
  store <4 x i32> %wide.load471, ptr %i.ae, align 4, !tbaa !8
  %index.next472 = add nuw i64 %index469, 8       ; 2 uses
  %i.af = icmp eq i64 %index.next472, %n.vec467
  br i1 %i.af, label %middle.block473, label %vector.body468, !llvm.loop !35

middle.block473:                                  ; preds = %vector.body468
  %cmp.n474 = icmp eq i64 %i.k, %n.vec467
  br i1 %cmp.n474, label %.lr.ph273.preheader, label %.lr.ph270.preheader522

.lr.ph270.preheader522:                           ; preds = %vector.memcheck462, %vector.scevcheck461, %.lr.ph270.preheader, %middle.block473
  %.1131269.ph = phi i32 [ %i.b, %vector.memcheck462 ], [ %i.b, %vector.scevcheck461 ], [ %i.b, %.lr.ph270.preheader ], [ %i.x, %middle.block473 ] ; 2 uses
  %.1133268.ph = phi i64 [ 0, %vector.memcheck462 ], [ 0, %vector.scevcheck461 ], [ 0, %.lr.ph270.preheader ], [ %n.vec467, %middle.block473 ] ; 3 uses
  %i.ag = sub i64 %1, %i.c
  %xtraiter536 = and i64 %i.ag, 3                 ; 2 uses
  %lcmp.mod537.not = icmp eq i64 %xtraiter536, 0
  br i1 %lcmp.mod537.not, label %.lr.ph270.prol.loopexit, label %.lr.ph270.prol

.lr.ph270.prol:                                   ; preds = %.lr.ph270.preheader522, %.lr.ph270.prol
  %.1131269.prol = phi i32 [ %i.am, %.lr.ph270.prol ], [ %.1131269.ph, %.lr.ph270.preheader522 ] ; 2 uses
  %.1133268.prol = phi i64 [ %i.al, %.lr.ph270.prol ], [ %.1133268.ph, %.lr.ph270.preheader522 ] ; 2 uses
  %prol.iter538 = phi i64 [ %prol.iter538.next, %.lr.ph270.prol ], [ 0, %.lr.ph270.preheader522 ]
  %i.ah = zext i32 %.1131269.prol to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.1133268.prol
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !8
  %i.al = add nuw i64 %.1133268.prol, 1           ; 2 uses
  %i.am = add i32 %.1131269.prol, 1               ; 2 uses
  %prol.iter538.next = add i64 %prol.iter538, 1   ; 2 uses
  %prol.iter538.cmp.not = icmp eq i64 %prol.iter538.next, %xtraiter536
  br i1 %prol.iter538.cmp.not, label %.lr.ph270.prol.loopexit, label %.lr.ph270.prol, !llvm.loop !36

.lr.ph270.prol.loopexit:                          ; preds = %.lr.ph270.prol, %.lr.ph270.preheader522
  %.1131269.unr = phi i32 [ %.1131269.ph, %.lr.ph270.preheader522 ], [ %i.am, %.lr.ph270.prol ]
  %.1133268.unr = phi i64 [ %.1133268.ph, %.lr.ph270.preheader522 ], [ %i.al, %.lr.ph270.prol ]
  %i.an = sub i64 %.1133268.ph, %1
  %i.ao = add i64 %i.an, %i.c
  %i.ap = icmp ugt i64 %i.ao, -4
  br i1 %i.ap, label %.lr.ph273.preheader, label %.lr.ph270

.preheader235:                                    ; preds = %bb.e
  %i.aq = add i64 %i.k, -1                        ; 6 uses
  %.not283 = icmp eq i64 %i.aq, 0
  br i1 %.not283, label %._crit_edge265, label %.lr.ph264.preheader

.lr.ph264.preheader:                              ; preds = %.preheader235
  %min.iters.check441 = icmp ult i64 %i.aq, 16
  br i1 %min.iters.check441, label %.lr.ph264.preheader523, label %vector.scevcheck432

vector.scevcheck432:                              ; preds = %.lr.ph264.preheader
  %i.ar = add i64 %1, -2
  %i.as = sub i64 %i.ar, %i.c                     ; 2 uses
  %i.at = trunc i64 %i.as to i32
  %i.au = sub nuw nsw i32 -2, %i.b
  %i.av = icmp ult i32 %i.au, %i.at
  %i.aw = icmp ugt i64 %i.as, 4294967295
  %i.ax = or i1 %i.av, %i.aw
  br i1 %i.ax, label %.lr.ph264.preheader523, label %vector.memcheck442

vector.memcheck442:                               ; preds = %vector.scevcheck432
  %i.ay = shl i64 %1, 2                           ; 2 uses
  %i.az = shl nuw nsw i64 %i.c, 2                 ; 2 uses
  %i.ba = add i64 %i.ay, -4
  %i.bb = sub i64 %i.ba, %i.az
  %i.bc = getelementptr i8, ptr %3, i64 %i.bb
  %i.bd = getelementptr i8, ptr %0, i64 %i.az
  %i.be = getelementptr i8, ptr %0, i64 %i.ay
  %bound0443 = icmp ult ptr %3, %i.be
  %bound1444 = icmp ult ptr %i.bd, %i.bc
  %found.conflict445 = and i1 %bound0443, %bound1444
  br i1 %found.conflict445, label %.lr.ph264.preheader523, label %vector.ph446

vector.ph446:                                     ; preds = %vector.memcheck442
  %n.vec447 = and i64 %i.aq, -4                   ; 5 uses
  %i.bf = trunc i64 %n.vec447 to i32
  %i.bg = add i32 %i.b, %i.bf
  %broadcast.splatinsert448 = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat449 = shufflevector <4 x i32> %broadcast.splatinsert448, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert450 = insertelement <4 x i32> poison, i32 %narrow, i64 0
  %broadcast.splat451 = shufflevector <4 x i32> %broadcast.splatinsert450, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body452

vector.body452:                                   ; preds = %vector.body452, %vector.ph446
  %index453 = phi i64 [ 0, %vector.ph446 ], [ %index.next456, %vector.body452 ] ; 3 uses
  %i.bh = trunc i64 %index453 to i32
  %i.bi = add i32 %i.b, %i.bh                     ; 2 uses
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bj
  %wide.load454 = load <4 x i32>, ptr %i.bk, align 4, !tbaa !8, !alias.scope !68
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index453 ; 2 uses
  %i.bm = lshr <4 x i32> %wide.load454, %broadcast.splat449 ; 2 uses
  store <4 x i32> %i.bm, ptr %i.bl, align 4, !tbaa !8, !alias.scope !69, !noalias !68
  %i.bn = add i32 %i.bi, 1
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bo
  %wide.load455 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !8, !alias.scope !68
  %i.bq = shl <4 x i32> %wide.load455, %broadcast.splat451
  %i.br = or disjoint <4 x i32> %i.bq, %i.bm
  store <4 x i32> %i.br, ptr %i.bl, align 4, !tbaa !8, !alias.scope !69, !noalias !68
  %index.next456 = add nuw i64 %index453, 4       ; 2 uses
  %i.bs = icmp eq i64 %index.next456, %n.vec447
  br i1 %i.bs, label %middle.block457, label %vector.body452, !llvm.loop !40

middle.block457:                                  ; preds = %vector.body452
  %i.bt = add i64 %n.vec447, %i.c
  %cmp.n458 = icmp eq i64 %i.aq, %n.vec447
  br i1 %cmp.n458, label %._crit_edge265, label %.lr.ph264.preheader523

.lr.ph264.preheader523:                           ; preds = %vector.memcheck442, %vector.scevcheck432, %.lr.ph264.preheader, %middle.block457
  %.0130263.ph = phi i32 [ %i.b, %vector.memcheck442 ], [ %i.b, %vector.scevcheck432 ], [ %i.b, %.lr.ph264.preheader ], [ %i.bg, %middle.block457 ]
  %.0132262.ph = phi i64 [ 0, %vector.memcheck442 ], [ 0, %vector.scevcheck432 ], [ 0, %.lr.ph264.preheader ], [ %n.vec447, %middle.block457 ]
  br label %.lr.ph264

.lr.ph264:                                        ; preds = %.lr.ph264.preheader523, %.lr.ph264
  %.0130263 = phi i32 [ %i.bz, %.lr.ph264 ], [ %.0130263.ph, %.lr.ph264.preheader523 ] ; 2 uses
  %.0132262 = phi i64 [ %i.cf, %.lr.ph264 ], [ %.0132262.ph, %.lr.ph264.preheader523 ] ; 2 uses
  %i.bu = zext i32 %.0130263 to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !8
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0132262 ; 2 uses
  %i.by = lshr i32 %i.bw, %i.j                    ; 2 uses
  store i32 %i.by, ptr %i.bx, align 4, !tbaa !8
  %i.bz = add i32 %.0130263, 1                    ; 2 uses
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !8
  %i.cd = shl i32 %i.cc, %narrow
  %i.ce = or disjoint i32 %i.cd, %i.by
  store i32 %i.ce, ptr %i.bx, align 4, !tbaa !8
  %i.cf = add nuw i64 %.0132262, 1                ; 2 uses
  %exitcond307.not = icmp eq i64 %i.cf, %i.aq
  br i1 %exitcond307.not, label %._crit_edge265, label %.lr.ph264, !llvm.loop !41

._crit_edge265:                                   ; preds = %.lr.ph264, %middle.block457, %.preheader235
  %.pre-phi = phi i64 [ %i.c, %.preheader235 ], [ %i.bt, %middle.block457 ], [ %i.ca, %.lr.ph264 ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.pre-phi
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !8
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aq
  %i.cj = lshr i32 %i.ch, %i.j
  store i32 %i.cj, ptr %i.ci, align 4, !tbaa !8
  br label %.lr.ph273.preheader

.lr.ph270:                                        ; preds = %.lr.ph270.prol.loopexit, %.lr.ph270
  %.1131269 = phi i32 [ %i.dh, %.lr.ph270 ], [ %.1131269.unr, %.lr.ph270.prol.loopexit ] ; 5 uses
  %.1133268 = phi i64 [ %i.dg, %.lr.ph270 ], [ %.1133268.unr, %.lr.ph270.prol.loopexit ] ; 5 uses
  %i.ck = zext i32 %.1131269 to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !8
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.1133268
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !8
  %i.co = add i32 %.1131269, 1
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !8
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.1133268
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store i32 %i.cr, ptr %i.ct, align 4, !tbaa !8
  %i.cu = add i32 %.1131269, 2
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !8
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.1133268
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i32 %i.cx, ptr %i.cz, align 4, !tbaa !8
  %i.da = add i32 %.1131269, 3
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !8
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.1133268
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  store i32 %i.dd, ptr %i.df, align 4, !tbaa !8
  %i.dg = add nuw i64 %.1133268, 4                ; 2 uses
  %i.dh = add i32 %.1131269, 4
  %exitcond308.not.3 = icmp eq i64 %i.dg, %i.k
  br i1 %exitcond308.not.3, label %.lr.ph273.preheader, label %.lr.ph270, !llvm.loop !42

.lr.ph273.preheader:                              ; preds = %.lr.ph270.prol.loopexit, %.lr.ph270, %middle.block473, %._crit_edge265
  %i.di = sub i64 %1, %i.c
  %i.dj = shl i64 %i.di, 2
  %scevgep309 = getelementptr i8, ptr %3, i64 %i.dj
  %i.dk = add i64 %1, 1
  %i.dl = sub i64 %i.dk, %i.c
  %umax = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.dl)
  %i.dm = add i64 %umax, %i.c
  %i.dn = sub i64 %i.dm, %1
  %i.do = shl nuw i64 %i.dn, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep309, i8 0, i64 %i.do, i1 false), !tbaa !8
  br label %_Z5resetSt4spanIjLm18446744073709551615EE.exit

bb.f:                                             ; preds = %bb.d
  br i1 %i.l, label %.preheader.preheader, label %.preheader232

.preheader.preheader:                             ; preds = %bb.f
  %min.iters.check507 = icmp ult i64 %1, 8
  %7 = ptrtoaddr ptr %3 to i64
  %8 = ptrtoaddr ptr %0 to i64
  %i.dp = sub i64 %8, %7
  %diff.check505 = icmp ugt i64 %i.dp, -32
  %or.cond = select i1 %min.iters.check507, i1 true, i1 %diff.check505
  br i1 %or.cond, label %.preheader.preheader519, label %vector.ph508

vector.ph508:                                     ; preds = %.preheader.preheader
  %n.vec509 = and i64 %1, -8                      ; 3 uses
  br label %vector.body510

vector.body510:                                   ; preds = %vector.body510, %vector.ph508
  %index511 = phi i64 [ 0, %vector.ph508 ], [ %index.next514, %vector.body510 ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index511 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load512 = load <4 x i32>, ptr %i.dq, align 4, !tbaa !8
  %wide.load513 = load <4 x i32>, ptr %i.dr, align 4, !tbaa !8
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index511 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store <4 x i32> %wide.load512, ptr %i.ds, align 4, !tbaa !8
  store <4 x i32> %wide.load513, ptr %i.dt, align 4, !tbaa !8
  %index.next514 = add nuw i64 %index511, 8       ; 2 uses
  %i.du = icmp eq i64 %index.next514, %n.vec509
  br i1 %i.du, label %middle.block515, label %vector.body510, !llvm.loop !43

middle.block515:                                  ; preds = %vector.body510
  %cmp.n516 = icmp eq i64 %1, %n.vec509
  br i1 %cmp.n516, label %_Z5resetSt4spanIjLm18446744073709551615EE.exit, label %.preheader.preheader519

.preheader.preheader519:                          ; preds = %.preheader.preheader, %middle.block515
  %.0128278.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec509, %middle.block515 ] ; 3 uses
  %xtraiter539 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod540.not = icmp eq i64 %xtraiter539, 0
  br i1 %lcmp.mod540.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader519, %.preheader.prol
  %.0128278.prol = phi i64 [ %i.dy, %.preheader.prol ], [ %.0128278.ph, %.preheader.preheader519 ] ; 3 uses
  %prol.iter541 = phi i64 [ %prol.iter541.next, %.preheader.prol ], [ 0, %.preheader.preheader519 ]
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0128278.prol
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !8
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0128278.prol
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !8
  %i.dy = add nuw i64 %.0128278.prol, 1           ; 2 uses
  %prol.iter541.next = add i64 %prol.iter541, 1   ; 2 uses
  %prol.iter541.cmp.not = icmp eq i64 %prol.iter541.next, %xtraiter539
  br i1 %prol.iter541.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !44

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader519
  %.0128278.unr = phi i64 [ %.0128278.ph, %.preheader.preheader519 ], [ %i.dy, %.preheader.prol ]
  %i.dz = sub i64 %.0128278.ph, %1
  %i.ea = icmp ugt i64 %i.dz, -4
  br i1 %i.ea, label %_Z5resetSt4spanIjLm18446744073709551615EE.exit, label %.preheader

.preheader232:                                    ; preds = %bb.f
  %i.eb = add i64 %i.k, -1                        ; 5 uses
  %.not285 = icmp eq i64 %i.eb, 0
  br i1 %.not285, label %._crit_edge276, label %.lr.ph275.preheader

.lr.ph275.preheader:                              ; preds = %.preheader232
  %min.iters.check485 = icmp ult i64 %i.eb, 16
  br i1 %min.iters.check485, label %.lr.ph275.preheader520, label %vector.scevcheck477

vector.scevcheck477:                              ; preds = %.lr.ph275.preheader
  %i.ec = add i64 %1, -2                          ; 2 uses
  %i.ed = sub nuw nsw i64 %i.ec, %i.c
  %i.ee = and i64 %i.ec, 4294967295
  %i.ef = icmp eq i64 %i.ee, 4294967295
  %i.eg = icmp ugt i64 %i.ed, 4294967295
  %i.eh = or i1 %i.ef, %i.eg
  br i1 %i.eh, label %.lr.ph275.preheader520, label %vector.memcheck486

vector.memcheck486:                               ; preds = %vector.scevcheck477
  %i.ei = shl i64 %1, 2                           ; 2 uses
  %i.ej = getelementptr i8, ptr %3, i64 %i.ei
  %i.ek = getelementptr i8, ptr %i.ej, i64 -4
  %i.el = getelementptr i8, ptr %0, i64 %i.ei
  %bound0487 = icmp ult ptr %3, %i.el
  %bound1488 = icmp ult ptr %0, %i.ek
  %found.conflict489 = and i1 %bound0487, %bound1488
  br i1 %found.conflict489, label %.lr.ph275.preheader520, label %vector.ph490

vector.ph490:                                     ; preds = %vector.memcheck486
  %n.vec491 = and i64 %i.eb, -4                   ; 4 uses
  %broadcast.splatinsert492 = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat493 = shufflevector <4 x i32> %broadcast.splatinsert492, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert494 = insertelement <4 x i32> poison, i32 %narrow, i64 0
  %broadcast.splat495 = shufflevector <4 x i32> %broadcast.splatinsert494, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body496

vector.body496:                                   ; preds = %vector.body496, %vector.ph490
  %index497 = phi i64 [ 0, %vector.ph490 ], [ %index.next500, %vector.body496 ] ; 4 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index497
  %wide.load498 = load <4 x i32>, ptr %i.em, align 4, !tbaa !8, !alias.scope !70
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index497 ; 2 uses
  %i.eo = lshr <4 x i32> %wide.load498, %broadcast.splat493 ; 2 uses
  store <4 x i32> %i.eo, ptr %i.en, align 4, !tbaa !8, !alias.scope !71, !noalias !70
  %i.ep = and i64 %index497, 4294967292
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %wide.load499 = load <4 x i32>, ptr %i.er, align 4, !tbaa !8, !alias.scope !70
  %i.es = shl <4 x i32> %wide.load499, %broadcast.splat495
  %i.et = or disjoint <4 x i32> %i.es, %i.eo
  store <4 x i32> %i.et, ptr %i.en, align 4, !tbaa !8, !alias.scope !71, !noalias !70
  %index.next500 = add nuw i64 %index497, 4       ; 2 uses
  %i.eu = icmp eq i64 %index.next500, %n.vec491
  br i1 %i.eu, label %middle.block501, label %vector.body496, !llvm.loop !48

middle.block501:                                  ; preds = %vector.body496
  %cmp.n502 = icmp eq i64 %i.eb, %n.vec491
  br i1 %cmp.n502, label %._crit_edge276, label %.lr.ph275.preheader520

.lr.ph275.preheader520:                           ; preds = %vector.memcheck486, %vector.scevcheck477, %.lr.ph275.preheader, %middle.block501
  %indvars.iv310.ph = phi i64 [ 0, %vector.memcheck486 ], [ 0, %vector.scevcheck477 ], [ 0, %.lr.ph275.preheader ], [ %n.vec491, %middle.block501 ]
  br label %.lr.ph275

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.0128278 = phi i64 [ %i.fk, %.preheader ], [ %.0128278.unr, %.preheader.prol.loopexit ] ; 6 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0128278
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !8
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0128278
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !8
  %i.ey = add nuw i64 %.0128278, 1                ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !8
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ey
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !8
  %i.fc = add nuw i64 %.0128278, 2                ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !8
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fc
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !8
  %i.fg = add nuw i64 %.0128278, 3                ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !8
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fg
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !8
  %i.fk = add nuw i64 %.0128278, 4                ; 2 uses
  %exitcond314.not.3 = icmp eq i64 %i.fk, %1
  br i1 %exitcond314.not.3, label %_Z5resetSt4spanIjLm18446744073709551615EE.exit, label %.preheader, !llvm.loop !49

.lr.ph275:                                        ; preds = %.lr.ph275.preheader520, %.lr.ph275
  %indvars.iv310 = phi i64 [ %indvars.iv.next311, %.lr.ph275 ], [ %indvars.iv310.ph, %.lr.ph275.preheader520 ] ; 3 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv310
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !8
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv310 ; 2 uses
  %i.fo = lshr i32 %i.fm, %i.j                    ; 2 uses
  store i32 %i.fo, ptr %i.fn, align 4, !tbaa !8
  %indvars.iv.next311 = add i64 %indvars.iv310, 1 ; 2 uses
  %i.fp = and i64 %indvars.iv.next311, 4294967295 ; 3 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !8
  %i.fs = shl i32 %i.fr, %narrow
  %i.ft = or disjoint i32 %i.fs, %i.fo
  store i32 %i.ft, ptr %i.fn, align 4, !tbaa !8
  %i.fu = icmp ugt i64 %i.eb, %i.fp
  br i1 %i.fu, label %.lr.ph275, label %._crit_edge276, !llvm.loop !50

._crit_edge276:                                   ; preds = %.lr.ph275, %middle.block501, %.preheader232
  %.lcssa = phi i64 [ 0, %.preheader232 ], [ %n.vec491, %middle.block501 ], [ %i.fp, %.lr.ph275 ] ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.lcssa
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !8
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.lcssa
  %i.fy = lshr i32 %i.fw, %i.j
  store i32 %i.fy, ptr %i.fx, align 4, !tbaa !8
  br label %_Z5resetSt4spanIjLm18446744073709551615EE.exit

bb.g:                                             ; preds = %bb.a
  %i.fz = zext i32 %2 to i64                      ; 2 uses
  %i.ga = lshr i64 %i.fz, 5                       ; 16 uses
  %.not = icmp ult i64 %i.ga, %1
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i160 = icmp eq i64 %4, 0
  br i1 %.not.i160, label %_Z5resetSt4spanIjLm18446744073709551615EE.exit, label %.lr.ph.i161.preheader

.lr.ph.i161.preheader:                            ; preds = %bb.h
  %min.iters.check = icmp ult i64 %4, 16
  br i1 %min.iters.check, label %.lr.ph.i161.preheader534, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i161.preheader
  %i.gb = add i64 %4, -1                          ; 2 uses
  %i.gc = and i64 %i.gb, 4294967295
  %i.gd = icmp eq i64 %i.gc, 4294967295
  %i.ge = icmp ugt i64 %i.gb, 4294967295
  %i.gf = or i1 %i.gd, %i.ge
  br i1 %i.gf, label %.lr.ph.i161.preheader534, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %4, 8589934584                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  store <4 x i32> zeroinitializer, ptr %i.gg, align 4, !tbaa !8
  store <4 x i32> zeroinitializer, ptr %i.gh, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %_Z5resetSt4spanIjLm18446744073709551615EE.exit, label %.lr.ph.i161.preheader534

.lr.ph.i161.preheader534:                         ; preds = %vector.scevcheck, %.lr.ph.i161.preheader, %middle.block
  %indvars.iv.i162.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i161.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i161

.lr.ph.i161:                                      ; preds = %.lr.ph.i161.preheader534, %.lr.ph.i161
  %indvars.iv.i162 = phi i64 [ %indvars.iv.next.i163, %.lr.ph.i161 ], [ %indvars.iv.i162.ph, %.lr.ph.i161.preheader534 ] ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i162
  store i32 0, ptr %i.gj, align 4, !tbaa !8
  %indvars.iv.next.i163 = add i64 %indvars.iv.i162, 1 ; 2 uses
  %i.gk = and i64 %indvars.iv.next.i163, 4294967295
  %i.gl = icmp ugt i64 %4, %i.gk
  br i1 %i.gl, label %.lr.ph.i161, label %_Z5resetSt4spanIjLm18446744073709551615EE.exit, !llvm.loop !52

bb.i:                                             ; preds = %bb.g
  %i.gm = and i64 %i.fz, 31                       ; 3 uses
  %i.gn = sub nuw nsw i64 32, %i.gm               ; 4 uses
  %i.go = sub nuw i64 %1, %i.ga                   ; 14 uses
  %.not154 = icmp eq i64 %i.ga, 0
  %i.gp = icmp eq i64 %i.gm, 0                    ; 2 uses
  br i1 %.not154, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.gp, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gq = icmp ugt i64 %i.go, %4
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.go, i64 %4) ; 3 uses
  %i.gr = add i64 %spec.select, -1                ; 5 uses
  %.not279 = icmp eq i64 %i.gr, 0
  %.pre = trunc nuw nsw i64 %i.gm to i32          ; 3 uses
  br i1 %.not279, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.gs = trunc nuw nsw i64 %i.gn to i32          ; 2 uses
  %min.iters.check353 = icmp ult i64 %i.gr, 12
  br i1 %min.iters.check353, label %scalar.ph352.preheader, label %vector.scevcheck348

vector.scevcheck348:                              ; preds = %.lr.ph
  %i.gt = add i64 %spec.select, -2                ; 2 uses
  %i.gu = and i64 %i.gt, 4294967295
  %i.gv = icmp eq i64 %i.gu, 4294967295
  %i.gw = icmp ugt i64 %i.gt, 4294967295
  %i.gx = or i1 %i.gv, %i.gw
  br i1 %i.gx, label %scalar.ph352.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck348
  %i.gy = shl nuw nsw i64 %spec.select, 2         ; 2 uses
  %i.gz = getelementptr i8, ptr %3, i64 %i.gy
  %i.ha = getelementptr i8, ptr %i.gz, i64 -4
  %i.hb = shl nuw nsw i64 %i.ga, 2                ; 2 uses
  %i.hc = getelementptr i8, ptr %0, i64 %i.hb
  %i.hd = getelementptr i8, ptr %0, i64 %i.gy
  %i.he = getelementptr i8, ptr %i.hd, i64 %i.hb
  %bound0 = icmp ult ptr %3, %i.he
  %bound1 = icmp ult ptr %i.hc, %i.ha
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph352.preheader, label %vector.ph354

vector.ph354:                                     ; preds = %vector.memcheck
  %n.vec355 = and i64 %i.gr, -4                   ; 5 uses
  %i.hf = add nsw i64 %i.ga, %n.vec355            ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.gs, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert356 = insertelement <4 x i32> poison, i32 %.pre, i64 0
  %broadcast.splat357 = shufflevector <4 x i32> %broadcast.splatinsert356, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body358

vector.body358:                                   ; preds = %vector.body358, %vector.ph354
  %index359 = phi i64 [ 0, %vector.ph354 ], [ %index.next361, %vector.body358 ] ; 3 uses
  %i.hg = add i64 %i.ga, %index359                ; 2 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.hg
  %wide.load = load <4 x i32>, ptr %i.hh, align 4, !tbaa !8, !alias.scope !72
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index359 ; 2 uses
  %i.hj = lshr <4 x i32> %wide.load, %broadcast.splat357 ; 2 uses
  store <4 x i32> %i.hj, ptr %i.hi, align 4, !tbaa !8, !alias.scope !73, !noalias !72
  %i.hk = getelementptr [4 x i8], ptr %0, i64 %i.hg
  %i.hl = getelementptr i8, ptr %i.hk, i64 4
  %wide.load360 = load <4 x i32>, ptr %i.hl, align 4, !tbaa !8, !alias.scope !72
  %i.hm = shl <4 x i32> %wide.load360, %broadcast.splat
  %i.hn = or <4 x i32> %i.hm, %i.hj
  store <4 x i32> %i.hn, ptr %i.hi, align 4, !tbaa !8, !alias.scope !73, !noalias !72
  %index.next361 = add nuw i64 %index359, 4       ; 2 uses
  %i.ho = icmp eq i64 %index.next361, %n.vec355
  br i1 %i.ho, label %middle.block362, label %vector.body358, !llvm.loop !56

middle.block362:                                  ; preds = %vector.body358
  %cmp.n363 = icmp eq i64 %i.gr, %n.vec355
  br i1 %cmp.n363, label %._crit_edge, label %scalar.ph352.preheader

scalar.ph352.preheader:                           ; preds = %vector.memcheck, %vector.scevcheck348, %.lr.ph, %middle.block362
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck348 ], [ 0, %.lr.ph ], [ %n.vec355, %middle.block362 ]
  %.0124244.ph = phi i64 [ %i.ga, %vector.memcheck ], [ %i.ga, %vector.scevcheck348 ], [ %i.ga, %.lr.ph ], [ %i.hf, %middle.block362 ]
  br label %scalar.ph352

scalar.ph352:                                     ; preds = %scalar.ph352.preheader, %scalar.ph352
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph352 ], [ %indvars.iv.ph, %scalar.ph352.preheader ] ; 2 uses
  %.0124244 = phi i64 [ %i.ht, %scalar.ph352 ], [ %.0124244.ph, %scalar.ph352.preheader ] ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0124244
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !8
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  %i.hs = lshr i32 %i.hq, %.pre                   ; 2 uses
  store i32 %i.hs, ptr %i.hr, align 4, !tbaa !8
  %i.ht = add i64 %.0124244, 1                    ; 3 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ht
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !8
  %i.hw = shl i32 %i.hv, %i.gs
  %i.hx = or i32 %i.hw, %i.hs
  store i32 %i.hx, ptr %i.hr, align 4, !tbaa !8
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.hy = and i64 %indvars.iv.next, 4294967295    ; 2 uses
  %i.hz = icmp ugt i64 %i.gr, %i.hy
  br i1 %i.hz, label %scalar.ph352, label %._crit_edge, !llvm.loop !57

._crit_edge:                                      ; preds = %scalar.ph352, %middle.block362, %bb.k
  %.0124.lcssa = phi i64 [ %i.ga, %bb.k ], [ %i.hf, %middle.block362 ], [ %i.ht, %scalar.ph352 ]
  %.lcssa242 = phi i64 [ 0, %bb.k ], [ %n.vec355, %middle.block362 ], [ %i.hy, %scalar.ph352 ]
  %i.ia = getelementptr [4 x i8], ptr %0, i64 %.0124.lcssa ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !8
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.lcssa242 ; 2 uses
  %i.id = lshr i32 %i.ib, %.pre                   ; 2 uses
  store i32 %i.id, ptr %i.ic, align 4, !tbaa !8
  br i1 %i.gq, label %bb.l, label %.loopexit238

bb.l:                                             ; preds = %._crit_edge
  %i.ie = getelementptr i8, ptr %i.ia, i64 4
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !8
  %i.ig = trunc nuw nsw i64 %i.gn to i32
  %i.ih = shl i32 %i.if, %i.ig
  %i.ii = or i32 %i.ih, %i.id
  store i32 %i.ii, ptr %i.ic, align 4, !tbaa !8
  br label %.loopexit238

bb.m:                                             ; preds = %bb.j
  %spec.select231 = tail call i64 @llvm.umin.i64(i64 %i.go, i64 %4) ; 8 uses
  %.not280 = icmp eq i64 %spec.select231, 0
  br i1 %.not280, label %.loopexit238, label %.lr.ph249.preheader

.lr.ph249.preheader:                              ; preds = %bb.m
  %min.iters.check369 = icmp ult i64 %spec.select231, 20
  br i1 %min.iters.check369, label %.lr.ph249.preheader530, label %vector.scevcheck366

vector.scevcheck366:                              ; preds = %.lr.ph249.preheader
  %i.ij = add i64 %spec.select231, -1             ; 2 uses
  %i.ik = and i64 %i.ij, 4294967295
  %i.il = icmp eq i64 %i.ik, 4294967295
  %i.im = icmp ugt i64 %i.ij, 4294967295
  %i.in = or i1 %i.il, %i.im
  br i1 %i.in, label %.lr.ph249.preheader530, label %vector.memcheck367

vector.memcheck367:                               ; preds = %vector.scevcheck366
  %9 = ptrtoaddr ptr %3 to i64
  %10 = ptrtoaddr ptr %0 to i64
  %i.io = shl nuw nsw i64 %i.ga, 2
  %i.ip = add i64 %i.io, %10
  %i.iq = sub i64 %i.ip, %9
  %diff.check = icmp ugt i64 %i.iq, -32
  br i1 %diff.check, label %.lr.ph249.preheader530, label %vector.ph370

vector.ph370:                                     ; preds = %vector.memcheck367
  %n.vec371 = and i64 %spec.select231, 8589934584 ; 4 uses
  %i.ir = add nuw nsw i64 %i.ga, %n.vec371
  %i.is = getelementptr [4 x i8], ptr %0, i64 %i.ga
  br label %vector.body372

vector.body372:                                   ; preds = %vector.body372, %vector.ph370
  %index373 = phi i64 [ 0, %vector.ph370 ], [ %index.next376, %vector.body372 ] ; 3 uses
  %i.it = getelementptr [4 x i8], ptr %i.is, i64 %index373 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %wide.load374 = load <4 x i32>, ptr %i.it, align 4, !tbaa !8
  %wide.load375 = load <4 x i32>, ptr %i.iu, align 4, !tbaa !8
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index373 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  store <4 x i32> %wide.load374, ptr %i.iv, align 4, !tbaa !8
  store <4 x i32> %wide.load375, ptr %i.iw, align 4, !tbaa !8
  %index.next376 = add nuw i64 %index373, 8       ; 2 uses
  %i.ix = icmp eq i64 %index.next376, %n.vec371
  br i1 %i.ix, label %middle.block377, label %vector.body372, !llvm.loop !58

middle.block377:                                  ; preds = %vector.body372
  %cmp.n378 = icmp eq i64 %spec.select231, %n.vec371
  br i1 %cmp.n378, label %.loopexit238, label %.lr.ph249.preheader530

.lr.ph249.preheader530:                           ; preds = %vector.memcheck367, %vector.scevcheck366, %.lr.ph249.preheader, %middle.block377
  %indvars.iv299.ph = phi i64 [ 0, %vector.memcheck367 ], [ 0, %vector.scevcheck366 ], [ 0, %.lr.ph249.preheader ], [ %n.vec371, %middle.block377 ]
  %.1247.ph = phi i64 [ %i.ga, %vector.memcheck367 ], [ %i.ga, %vector.scevcheck366 ], [ %i.ga, %.lr.ph249.preheader ], [ %i.ir, %middle.block377 ]
  br label %.lr.ph249

.lr.ph249:                                        ; preds = %.lr.ph249.preheader530, %.lr.ph249
  %indvars.iv299 = phi i64 [ %indvars.iv.next300, %.lr.ph249 ], [ %indvars.iv299.ph, %.lr.ph249.preheader530 ] ; 2 uses
  %.1247 = phi i64 [ %i.jb, %.lr.ph249 ], [ %.1247.ph, %.lr.ph249.preheader530 ] ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.1247
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !8
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv299
  store i32 %i.iz, ptr %i.ja, align 4, !tbaa !8
  %indvars.iv.next300 = add i64 %indvars.iv299, 1 ; 2 uses
  %i.jb = add i64 %.1247, 1
  %i.jc = and i64 %indvars.iv.next300, 4294967295
  %i.jd = icmp ugt i64 %spec.select231, %i.jc
  br i1 %i.jd, label %.lr.ph249, label %.loopexit238, !llvm.loop !59

bb.n:                                             ; preds = %bb.i
  br i1 %i.gp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.go) ; 7 uses
  %.not282 = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not282, label %.loopexit238, label %.lr.ph258.preheader

.lr.ph258.preheader:                              ; preds = %bb.o
  %min.iters.check411 = icmp ult i64 %.sroa.speculated, 8
  %11 = ptrtoaddr ptr %3 to i64
  %12 = ptrtoaddr ptr %0 to i64
  %i.je = sub i64 %12, %11
  %diff.check409 = icmp ugt i64 %i.je, -32
  %or.cond518 = select i1 %min.iters.check411, i1 true, i1 %diff.check409
  br i1 %or.cond518, label %.lr.ph258.preheader527, label %vector.ph412

vector.ph412:                                     ; preds = %.lr.ph258.preheader
  %n.vec413 = and i64 %.sroa.speculated, -8       ; 3 uses
  br label %vector.body414

vector.body414:                                   ; preds = %vector.body414, %vector.ph412
  %index415 = phi i64 [ 0, %vector.ph412 ], [ %index.next418, %vector.body414 ] ; 3 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index415 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %wide.load416 = load <4 x i32>, ptr %i.jf, align 4, !tbaa !8
  %wide.load417 = load <4 x i32>, ptr %i.jg, align 4, !tbaa !8
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index415 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  store <4 x i32> %wide.load416, ptr %i.jh, align 4, !tbaa !8
  store <4 x i32> %wide.load417, ptr %i.ji, align 4, !tbaa !8
  %index.next418 = add nuw i64 %index415, 8       ; 2 uses
  %i.jj = icmp eq i64 %index.next418, %n.vec413
  br i1 %i.jj, label %middle.block419, label %vector.body414, !llvm.loop !60

middle.block419:                                  ; preds = %vector.body414
  %cmp.n420 = icmp eq i64 %.sroa.speculated, %n.vec413
  br i1 %cmp.n420, label %.loopexit238, label %.lr.ph258.preheader527

.lr.ph258.preheader527:                           ; preds = %.lr.ph258.preheader, %middle.block419
  %.0122256.ph = phi i64 [ 0, %.lr.ph258.preheader ], [ %n.vec413, %middle.block419 ] ; 3 uses
  %xtraiter = and i64 %.sroa.speculated, 3        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph258.prol.loopexit, label %.lr.ph258.prol

.lr.ph258.prol:                                   ; preds = %.lr.ph258.preheader527, %.lr.ph258.prol
  %.0122256.prol = phi i64 [ %i.jn, %.lr.ph258.prol ], [ %.0122256.ph, %.lr.ph258.preheader527 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph258.prol ], [ 0, %.lr.ph258.preheader527 ]
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0122256.prol
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !8
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0122256.prol
  store i32 %i.jl, ptr %i.jm, align 4, !tbaa !8
  %i.jn = add nuw i64 %.0122256.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph258.prol.loopexit, label %.lr.ph258.prol, !llvm.loop !61

.lr.ph258.prol.loopexit:                          ; preds = %.lr.ph258.prol, %.lr.ph258.preheader527
  %.0122256.unr = phi i64 [ %.0122256.ph, %.lr.ph258.preheader527 ], [ %i.jn, %.lr.ph258.prol ]
  %i.jo = sub i64 %.0122256.ph, %.sroa.speculated
  %i.jp = icmp ugt i64 %i.jo, -4
  br i1 %i.jp, label %.loopexit238, label %.lr.ph258

.lr.ph258:                                        ; preds = %.lr.ph258.prol.loopexit, %.lr.ph258
  %.0122256 = phi i64 [ %i.kf, %.lr.ph258 ], [ %.0122256.unr, %.lr.ph258.prol.loopexit ] ; 6 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0122256
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !8
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0122256
  store i32 %i.jr, ptr %i.js, align 4, !tbaa !8
  %i.jt = add nuw i64 %.0122256, 1                ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jt
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !8
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.jt
  store i32 %i.jv, ptr %i.jw, align 4, !tbaa !8
  %i.jx = add nuw i64 %.0122256, 2                ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jx
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !8
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.jx
  store i32 %i.jz, ptr %i.ka, align 4, !tbaa !8
  %i.kb = add nuw i64 %.0122256, 3                ; 2 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !8
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.kb
  store i32 %i.kd, ptr %i.ke, align 4, !tbaa !8
  %i.kf = add nuw i64 %.0122256, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.kf, %.sroa.speculated
  br i1 %exitcond.not.3, label %.loopexit238, label %.lr.ph258, !llvm.loop !62

bb.p:                                             ; preds = %bb.n
  %i.kg = icmp ugt i64 %i.go, %4
  %spec.select159 = tail call i64 @llvm.umin.i64(i64 %i.go, i64 %4) ; 3 uses
  %i.kh = add i64 %spec.select159, -1             ; 5 uses
  %.not281 = icmp eq i64 %i.kh, 0
  br i1 %.not281, label %._crit_edge253, label %.lr.ph252

.lr.ph252:                                        ; preds = %bb.p
  %i.ki = trunc nuw nsw i64 %i.gn to i32          ; 2 uses
  %min.iters.check389 = icmp ult i64 %i.kh, 12
  br i1 %min.iters.check389, label %scalar.ph388.preheader, label %vector.scevcheck381

vector.scevcheck381:                              ; preds = %.lr.ph252
  %i.kj = add i64 %spec.select159, -2             ; 2 uses
  %i.kk = and i64 %i.kj, 4294967295
  %i.kl = icmp eq i64 %i.kk, 4294967295
  %i.km = icmp ugt i64 %i.kj, 4294967295
  %i.kn = or i1 %i.kl, %i.km
  br i1 %i.kn, label %scalar.ph388.preheader, label %vector.memcheck390

vector.memcheck390:                               ; preds = %vector.scevcheck381
  %i.ko = shl nuw nsw i64 %spec.select159, 2      ; 2 uses
  %i.kp = getelementptr i8, ptr %3, i64 %i.ko
  %i.kq = getelementptr i8, ptr %i.kp, i64 -4
  %i.kr = getelementptr i8, ptr %0, i64 %i.ko
  %bound0391 = icmp ult ptr %3, %i.kr
  %bound1392 = icmp ult ptr %0, %i.kq
  %found.conflict393 = and i1 %bound0391, %bound1392
  br i1 %found.conflict393, label %scalar.ph388.preheader, label %vector.ph394

vector.ph394:                                     ; preds = %vector.memcheck390
  %n.vec395 = and i64 %i.kh, -4                   ; 5 uses
  %broadcast.splatinsert396 = insertelement <4 x i32> poison, i32 %i.ki, i64 0
  %broadcast.splat397 = shufflevector <4 x i32> %broadcast.splatinsert396, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert398 = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat399 = shufflevector <4 x i32> %broadcast.splatinsert398, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body400

vector.body400:                                   ; preds = %vector.body400, %vector.ph394
  %index401 = phi i64 [ 0, %vector.ph394 ], [ %index.next404, %vector.body400 ] ; 4 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index401
  %wide.load402 = load <4 x i32>, ptr %i.ks, align 4, !tbaa !8, !alias.scope !74
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index401 ; 2 uses
  %i.ku = lshr <4 x i32> %wide.load402, %broadcast.splat399 ; 2 uses
  store <4 x i32> %i.ku, ptr %i.kt, align 4, !tbaa !8, !alias.scope !75, !noalias !74
  %i.kv = and i64 %index401, 4294967292
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.kv
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  %wide.load403 = load <4 x i32>, ptr %i.kx, align 4, !tbaa !8, !alias.scope !74
  %i.ky = shl <4 x i32> %wide.load403, %broadcast.splat397
  %i.kz = or <4 x i32> %i.ky, %i.ku
  store <4 x i32> %i.kz, ptr %i.kt, align 4, !tbaa !8, !alias.scope !75, !noalias !74
  %index.next404 = add nuw i64 %index401, 4       ; 2 uses
  %i.la = icmp eq i64 %index.next404, %n.vec395
  br i1 %i.la, label %middle.block405, label %vector.body400, !llvm.loop !66

middle.block405:                                  ; preds = %vector.body400
  %ind.escape = add nsw i64 %n.vec395, -1
  %cmp.n406 = icmp eq i64 %i.kh, %n.vec395
  br i1 %cmp.n406, label %._crit_edge253.loopexit, label %scalar.ph388.preheader

scalar.ph388.preheader:                           ; preds = %vector.memcheck390, %vector.scevcheck381, %.lr.ph252, %middle.block405
  %indvars.iv303.ph = phi i64 [ 0, %vector.memcheck390 ], [ 0, %vector.scevcheck381 ], [ 0, %.lr.ph252 ], [ %n.vec395, %middle.block405 ]
  br label %scalar.ph388

scalar.ph388:                                     ; preds = %scalar.ph388.preheader, %scalar.ph388
  %indvars.iv303 = phi i64 [ %indvars.iv.next304, %scalar.ph388 ], [ %indvars.iv303.ph, %scalar.ph388.preheader ] ; 4 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv303
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !8
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv303 ; 2 uses
  %i.le = lshr i32 %i.lc, %2                      ; 2 uses
  store i32 %i.le, ptr %i.ld, align 4, !tbaa !8
  %indvars.iv.next304 = add i64 %indvars.iv303, 1 ; 2 uses
  %i.lf = and i64 %indvars.iv.next304, 4294967295 ; 3 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !8
  %i.li = shl i32 %i.lh, %i.ki
  %i.lj = or i32 %i.li, %i.le
  store i32 %i.lj, ptr %i.ld, align 4, !tbaa !8
  %i.lk = icmp ugt i64 %i.kh, %i.lf
  br i1 %i.lk, label %scalar.ph388, label %._crit_edge253.loopexit, !llvm.loop !67

._crit_edge253.loopexit:                          ; preds = %scalar.ph388, %middle.block405
  %indvars.iv303.lcssa = phi i64 [ %ind.escape, %middle.block405 ], [ %indvars.iv303, %scalar.ph388 ]
  %.lcssa345 = phi i64 [ %n.vec395, %middle.block405 ], [ %i.lf, %scalar.ph388 ]
  %i.ll = add i64 %indvars.iv303.lcssa, 2
  %i.lm = and i64 %i.ll, 4294967295
  br label %._crit_edge253

._crit_edge253:                                   ; preds = %._crit_edge253.loopexit, %bb.p
  %.0120.lcssa = phi i64 [ 1, %bb.p ], [ %i.lm, %._crit_edge253.loopexit ]
  %.lcssa241 = phi i64 [ 0, %bb.p ], [ %.lcssa345, %._crit_edge253.loopexit ] ; 2 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.lcssa241
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !8
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.lcssa241 ; 2 uses
  %i.lq = lshr i32 %i.lo, %2                      ; 2 uses
  store i32 %i.lq, ptr %i.lp, align 4, !tbaa !8
  br i1 %i.kg, label %bb.q, label %.loopexit238

bb.q:                                             ; preds = %._crit_edge253
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0120.lcssa
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !8
  %i.lt = trunc nuw nsw i64 %i.gn to i32
  %i.lu = shl i32 %i.ls, %i.lt
  %i.lv = or i32 %i.lu, %i.lq
  store i32 %i.lv, ptr %i.lp, align 4, !tbaa !8
  br label %.loopexit238

.loopexit238:                                     ; preds = %.lr.ph249, %.lr.ph258.prol.loopexit, %.lr.ph258, %middle.block377, %middle.block419, %bb.m, %bb.o, %._crit_edge253, %bb.q, %bb.l, %._crit_edge
  %.1230 = phi i64 [ %i.go, %._crit_edge ], [ %i.go, %bb.q ], [ %i.go, %._crit_edge253 ], [ %i.go, %bb.o ], [ %i.go, %bb.l ], [ 0, %bb.m ], [ %i.go, %middle.block419 ], [ %spec.select231, %middle.block377 ], [ %i.go, %.lr.ph258.prol.loopexit ], [ %i.go, %.lr.ph258 ], [ %spec.select231, %.lr.ph249 ] ; 3 uses
  %i.lw = icmp ult i64 %.1230, %4
  br i1 %i.lw, label %.lr.ph261.preheader, label %_Z5resetSt4spanIjLm18446744073709551615EE.exit

.lr.ph261.preheader:                              ; preds = %.loopexit238
  %i.lx = shl i64 %.1230, 2
  %scevgep = getelementptr i8, ptr %3, i64 %i.lx
  %i.ly = sub nuw i64 %4, %.1230
  %i.lz = shl i64 %i.ly, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.lz, i1 false), !tbaa !8
  br label %_Z5resetSt4spanIjLm18446744073709551615EE.exit

_Z5resetSt4spanIjLm18446744073709551615EE.exit:   ; preds = %.lr.ph.i161, %.lr.ph.i, %.preheader.prol.loopexit, %.preheader, %middle.block, %middle.block429, %middle.block515, %.lr.ph261.preheader, %.lr.ph273.preheader, %.loopexit238, %bb.h, %bb.c, %._crit_edge276
  ret void
}

end_hunk_0
