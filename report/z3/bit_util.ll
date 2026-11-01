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
  %i.i = add nuw nsw i32 %.01119, 32
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
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %.not = icmp ult i64 %3, %1
  br i1 %.not, label %.preheader, label %.preheader27

.preheader27:                                     ; preds = %bb.a
  %.not33 = icmp eq i64 %1, 0
  br i1 %.not33, label %.preheader25, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader27
  %min.iters.check = icmp ult i64 %1, 8
  %i.c = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.c, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader57, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <4 x i32>, ptr %i.d, align 4, !tbaa !8
  %wide.load38 = load <4 x i32>, ptr %i.e, align 4, !tbaa !8
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <4 x i32> %wide.load, ptr %i.f, align 4, !tbaa !8
  store <4 x i32> %wide.load38, ptr %i.g, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %.preheader25, label %.lr.ph.preheader57

.lr.ph.preheader57:                               ; preds = %.lr.ph.preheader, %middle.block
  %.01628.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader57, %.lr.ph.prol
  %.01628.prol = phi i64 [ %i.l, %.lr.ph.prol ], [ %.01628.ph, %.lr.ph.preheader57 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader57 ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01628.prol
  %i.j = load i32, ptr %i.i, align 4, !tbaa !8
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.01628.prol
  store i32 %i.j, ptr %i.k, align 4, !tbaa !8
  %i.l = add nuw i64 %.01628.prol, 1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !16

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader57
  %.01628.unr = phi i64 [ %.01628.ph, %.lr.ph.preheader57 ], [ %i.l, %.lr.ph.prol ]
  %i.m = sub i64 %.01628.ph, %1
  %i.n = icmp ugt i64 %i.m, -4
  br i1 %i.n, label %.preheader25, label %.lr.ph

.preheader:                                       ; preds = %bb.a
  %.not34 = icmp eq i64 %3, 0
  br i1 %.not34, label %.loopexit, label %.lr.ph32.preheader

.lr.ph32.preheader:                               ; preds = %.preheader
  %min.iters.check42 = icmp ult i64 %3, 16
  br i1 %min.iters.check42, label %.lr.ph32.preheader56, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph32.preheader
  %i.o = add i64 %3, -1                           ; 2 uses
  %i.p = and i64 %i.o, 4294967295
  %i.q = icmp eq i64 %i.p, 4294967295
  %i.r = icmp ugt i64 %i.o, 4294967295
  %i.s = or i1 %i.q, %i.r
  %i.t = sub i64 %i.a, %i.b
  %diff.check44 = icmp ugt i64 %i.t, -32
  %or.cond55 = select i1 %i.s, i1 true, i1 %diff.check44
  br i1 %or.cond55, label %.lr.ph32.preheader56, label %vector.ph45

vector.ph45:                                      ; preds = %vector.scevcheck
  %n.vec46 = and i64 %3, 8589934584               ; 3 uses
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph45
  %index48 = phi i64 [ 0, %vector.ph45 ], [ %index.next51, %vector.body47 ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index48 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load49 = load <4 x i32>, ptr %i.u, align 4, !tbaa !8
  %wide.load50 = load <4 x i32>, ptr %i.v, align 4, !tbaa !8
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index48 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> %wide.load49, ptr %i.w, align 4, !tbaa !8
  store <4 x i32> %wide.load50, ptr %i.x, align 4, !tbaa !8
  %index.next51 = add nuw i64 %index48, 8         ; 2 uses
  %i.y = icmp eq i64 %index.next51, %n.vec46
  br i1 %i.y, label %middle.block52, label %vector.body47, !llvm.loop !17

middle.block52:                                   ; preds = %vector.body47
  %cmp.n53 = icmp eq i64 %3, %n.vec46
  br i1 %cmp.n53, label %.loopexit, label %.lr.ph32.preheader56

.lr.ph32.preheader56:                             ; preds = %vector.scevcheck, %.lr.ph32.preheader, %middle.block52
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph32.preheader ], [ %n.vec46, %middle.block52 ]
  br label %.lr.ph32

.preheader25:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader27
  %i.z = icmp ult i64 %1, %3
  br i1 %i.z, label %.lr.ph30.preheader, label %.loopexit

.lr.ph30.preheader:                               ; preds = %.preheader25
  %i.aa = shl i64 %1, 2
  %scevgep = getelementptr i8, ptr %2, i64 %i.aa
  %i.ab = sub nuw i64 %3, %1
  %i.ac = shl i64 %i.ab, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.ac, i1 false), !tbaa !8
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.01628 = phi i64 [ %i.as, %.lr.ph ], [ %.01628.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01628
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !8
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.01628
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !8
  %i.ag = add nuw i64 %.01628, 1                  ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !8
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ag
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !8
  %i.ak = add nuw i64 %.01628, 2                  ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !8
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ak
  store i32 %i.am, ptr %i.an, align 4, !tbaa !8
  %i.ao = add nuw i64 %.01628, 3                  ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !8
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ao
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !8
  %i.as = add nuw i64 %.01628, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.as, %1
  br i1 %exitcond.not.3, label %.preheader25, label %.lr.ph, !llvm.loop !18

.lr.ph32:                                         ; preds = %.lr.ph32.preheader56, %.lr.ph32
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph32 ], [ %indvars.iv.ph, %.lr.ph32.preheader56 ] ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
end_hunk_0
begin_hunk_1_@_Z3shlSt4spanIKjLm18446744073709551615EEjS_IjLm18446744073709551615EE:bb.a
middle.block231:                                  ; preds = %vector.body226
  %cmp.n232 = icmp eq i64 %spec.select, %n.vec225
  br i1 %cmp.n232, label %.preheader, label %.lr.ph157.preheader235

.lr.ph157.preheader235:                           ; preds = %.lr.ph157.preheader, %middle.block231
  %.086155.ph = phi i64 [ 0, %.lr.ph157.preheader ], [ %n.vec225, %middle.block231 ] ; 3 uses
  %xtraiter245 = and i64 %spec.select, 3          ; 2 uses
  %lcmp.mod246.not = icmp eq i64 %xtraiter245, 0
  br i1 %lcmp.mod246.not, label %.lr.ph157.prol.loopexit, label %.lr.ph157.prol

.lr.ph157.prol:                                   ; preds = %.lr.ph157.preheader235, %.lr.ph157.prol
  %.086155.prol = phi i64 [ %i.cv, %.lr.ph157.prol ], [ %.086155.ph, %.lr.ph157.preheader235 ] ; 3 uses
  %prol.iter247 = phi i64 [ %prol.iter247.next, %.lr.ph157.prol ], [ 0, %.lr.ph157.preheader235 ]
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.086155.prol
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !8
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.086155.prol
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !8
  %i.cv = add nuw i64 %.086155.prol, 1            ; 2 uses
  %prol.iter247.next = add i64 %prol.iter247, 1   ; 2 uses
  %prol.iter247.cmp.not = icmp eq i64 %prol.iter247.next, %xtraiter245
  br i1 %prol.iter247.cmp.not, label %.lr.ph157.prol.loopexit, label %.lr.ph157.prol, !llvm.loop !29

.lr.ph157.prol.loopexit:                          ; preds = %.lr.ph157.prol, %.lr.ph157.preheader235
  %.086155.unr = phi i64 [ %.086155.ph, %.lr.ph157.preheader235 ], [ %i.cv, %.lr.ph157.prol ]
  %i.cw = sub i64 %.086155.ph, %spec.select
  %i.cx = icmp ugt i64 %i.cw, -4
  br i1 %i.cx, label %.preheader, label %.lr.ph157

.preheader:                                       ; preds = %.lr.ph157.prol.loopexit, %.lr.ph157, %middle.block231, %bb.g
  %i.cy = icmp ult i64 %1, %4
  br i1 %i.cy, label %.lr.ph159.preheader, label %.loopexit

.lr.ph159.preheader:                              ; preds = %.preheader
  %i.cz = shl i64 %spec.select, 2
  %scevgep168 = getelementptr i8, ptr %3, i64 %i.cz
  %i.da = sub i64 %4, %spec.select
  br label %.loopexit.sink.split

.lr.ph157:                                        ; preds = %.lr.ph157.prol.loopexit, %.lr.ph157
  %.086155 = phi i64 [ %i.dq, %.lr.ph157 ], [ %.086155.unr, %.lr.ph157.prol.loopexit ] ; 6 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.086155
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !8
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.086155
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !8
  %i.de = add nuw i64 %.086155, 1                 ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !8
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.de
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !8
  %i.di = add nuw i64 %.086155, 2                 ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !8
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.di
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !8
  %i.dm = add nuw i64 %.086155, 3                 ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !8
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dm
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !8
  %i.dq = add nuw i64 %.086155, 4                 ; 2 uses
  %exitcond167.not.3 = icmp eq i64 %i.dq, %spec.select
  br i1 %exitcond167.not.3, label %.preheader, label %.lr.ph157, !llvm.loop !30

bb.h:                                             ; preds = %bb.f
  %narrow = sub nuw nsw i32 32, %i.d              ; 4 uses
  %spec.select112 = tail call i64 @llvm.umin.i64(i64 %1, i64 %4) ; 11 uses
  %.not160 = icmp eq i64 %spec.select112, 0
  br i1 %.not160, label %._crit_edge149, label %.lr.ph148.preheader

.lr.ph148.preheader:                              ; preds = %bb.h
  %min.iters.check198 = icmp ult i64 %spec.select112, 8
  %i.dr = sub i64 %i.b, %i.a
  %diff.check200 = icmp ugt i64 %i.dr, -32
  %or.cond234 = select i1 %min.iters.check198, i1 true, i1 %diff.check200
  br i1 %or.cond234, label %.lr.ph148.preheader236, label %vector.ph201

vector.ph201:                                     ; preds = %.lr.ph148.preheader
  %n.vec202 = and i64 %spec.select112, -8         ; 3 uses
  %broadcast.splatinsert203 = insertelement <4 x i32> poison, i32 %narrow, i64 0
  %broadcast.splat204 = shufflevector <4 x i32> %broadcast.splatinsert203, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert205 = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat206 = shufflevector <4 x i32> %broadcast.splatinsert205, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body207

vector.body207:                                   ; preds = %vector.body207, %vector.ph201
  %index208 = phi i64 [ 0, %vector.ph201 ], [ %index.next212, %vector.body207 ] ; 3 uses
  %vector.recur209 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph201 ], [ %i.dv, %vector.body207 ]
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index208 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %wide.load210 = load <4 x i32>, ptr %i.ds, align 4, !tbaa !8 ; 2 uses
  %wide.load211 = load <4 x i32>, ptr %i.dt, align 4, !tbaa !8 ; 2 uses
  %i.du = lshr <4 x i32> %wide.load210, %broadcast.splat204 ; 2 uses
  %i.dv = lshr <4 x i32> %wide.load211, %broadcast.splat204 ; 3 uses
  %i.dw = shufflevector <4 x i32> %vector.recur209, <4 x i32> %i.du, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dx = shufflevector <4 x i32> %i.du, <4 x i32> %i.dv, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index208 ; 2 uses
  %i.dz = shl <4 x i32> %wide.load210, %broadcast.splat206
  %i.ea = shl <4 x i32> %wide.load211, %broadcast.splat206
  %i.eb = or <4 x i32> %i.dz, %i.dw
  %i.ec = or <4 x i32> %i.ea, %i.dx
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store <4 x i32> %i.eb, ptr %i.dy, align 4, !tbaa !8
  store <4 x i32> %i.ec, ptr %i.ed, align 4, !tbaa !8
  %index.next212 = add nuw i64 %index208, 8       ; 2 uses
  %i.ee = icmp eq i64 %index.next212, %n.vec202
  br i1 %i.ee, label %middle.block213, label %vector.body207, !llvm.loop !31

middle.block213:                                  ; preds = %vector.body207
  %vector.recur.extract214 = extractelement <4 x i32> %i.dv, i64 3 ; 2 uses
  %cmp.n215 = icmp eq i64 %spec.select112, %n.vec202
  br i1 %cmp.n215, label %._crit_edge149, label %.lr.ph148.preheader236

.lr.ph148.preheader236:                           ; preds = %.lr.ph148.preheader, %middle.block213
  %.083146.ph = phi i64 [ 0, %.lr.ph148.preheader ], [ %n.vec202, %middle.block213 ] ; 5 uses
  %.084145.ph = phi i32 [ 0, %.lr.ph148.preheader ], [ %vector.recur.extract214, %middle.block213 ] ; 2 uses
  %.neg = or disjoint i64 %.083146.ph, 1
  %xtraiter242 = and i64 %spec.select112, 1
  %lcmp.mod243.not = icmp eq i64 %xtraiter242, 0
  br i1 %lcmp.mod243.not, label %.lr.ph148.prol.loopexit, label %.lr.ph148.prol

.lr.ph148.prol:                                   ; preds = %.lr.ph148.preheader236
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.083146.ph
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !8  ; 2 uses
  %i.eh = lshr i32 %i.eg, %narrow                 ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.083146.ph
  %i.ej = shl i32 %i.eg, %i.d
  %i.ek = or i32 %i.ej, %.084145.ph
  store i32 %i.ek, ptr %i.ei, align 4, !tbaa !8
  %i.el = or disjoint i64 %.083146.ph, 1
  br label %.lr.ph148.prol.loopexit

.lr.ph148.prol.loopexit:                          ; preds = %.lr.ph148.prol, %.lr.ph148.preheader236
  %.lcssa.unr = phi i32 [ poison, %.lr.ph148.preheader236 ], [ %i.eh, %.lr.ph148.prol ]
  %.083146.unr = phi i64 [ %.083146.ph, %.lr.ph148.preheader236 ], [ %i.el, %.lr.ph148.prol ]
  %.084145.unr = phi i32 [ %.084145.ph, %.lr.ph148.preheader236 ], [ %i.eh, %.lr.ph148.prol ]
  %i.em = icmp eq i64 %spec.select112, %.neg
  br i1 %i.em, label %._crit_edge149, label %.lr.ph148

._crit_edge149:                                   ; preds = %.lr.ph148.prol.loopexit, %.lr.ph148, %middle.block213, %bb.h
  %.084.lcssa = phi i32 [ 0, %bb.h ], [ %vector.recur.extract214, %middle.block213 ], [ %.lcssa.unr, %.lr.ph148.prol.loopexit ], [ %i.ex, %.lr.ph148 ]
  %i.en = icmp ult i64 %1, %4
  br i1 %i.en, label %bb.i, label %.loopexit

.lr.ph148:                                        ; preds = %.lr.ph148.prol.loopexit, %.lr.ph148
  %.083146 = phi i64 [ %i.fb, %.lr.ph148 ], [ %.083146.unr, %.lr.ph148.prol.loopexit ] ; 4 uses
  %.084145 = phi i32 [ %i.ex, %.lr.ph148 ], [ %.084145.unr, %.lr.ph148.prol.loopexit ]
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.083146
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !8  ; 2 uses
  %i.eq = lshr i32 %i.ep, %narrow
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.083146
  %i.es = shl i32 %i.ep, %i.d
  %i.et = or i32 %i.es, %.084145
  store i32 %i.et, ptr %i.er, align 4, !tbaa !8
  %i.eu = add nuw i64 %.083146, 1                 ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !8  ; 2 uses
  %i.ex = lshr i32 %i.ew, %narrow                 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.eu
  %i.ez = shl i32 %i.ew, %i.d
  %i.fa = or disjoint i32 %i.ez, %i.eq
  store i32 %i.fa, ptr %i.ey, align 4, !tbaa !8
  %i.fb = add nuw i64 %.083146, 2                 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.fb, %spec.select112
  br i1 %exitcond.not.1, label %._crit_edge149, label %.lr.ph148, !llvm.loop !32

bb.i:                                             ; preds = %._crit_edge149
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %spec.select112
  store i32 %.084.lcssa, ptr %i.fc, align 4, !tbaa !8
  %.0151 = add nuw i64 %spec.select112, 1
  %i.fd = icmp ult i64 %.0151, %4
  br i1 %i.fd, label %.lr.ph154.preheader, label %.loopexit

.lr.ph154.preheader:                              ; preds = %bb.i
  %i.fe = shl i64 %spec.select112, 2
  %i.ff = getelementptr i8, ptr %3, i64 %i.fe
  %scevgep166 = getelementptr i8, ptr %i.ff, i64 4
  %i.fg = xor i64 %spec.select112, -1
  %i.fh = add i64 %4, %i.fg
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.lr.ph159.preheader, %.lr.ph154.preheader
  %.sink176 = phi i64 [ %i.fh, %.lr.ph154.preheader ], [ %i.da, %.lr.ph159.preheader ]
  %scevgep166.sink = phi ptr [ %scevgep166, %.lr.ph154.preheader ], [ %scevgep168, %.lr.ph159.preheader ]
  %i.fi = shl i64 %.sink176, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep166.sink, i8 0, i64 %i.fi, i1 false), !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph144, %middle.block191, %.loopexit.sink.split, %bb.e, %bb.i, %.preheader, %._crit_edge, %._crit_edge149
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Z3shrSt4spanIKjLm18446744073709551615EEjS_IjLm18446744073709551615EE(ptr nofree readonly captures(none) %0, i64 %1, i32 noundef %2, ptr nofree writeonly captures(none) %3, i64 %4) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %i.b = ptrtoaddr ptr %3 to i64                  ; 4 uses
  %i.c = icmp eq i64 %1, %4
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i32 %2, 5                           ; 10 uses
  %i.e = zext nneg i32 %i.d to i64                ; 12 uses
  %.not156 = icmp ugt i64 %1, %i.e
  br i1 %.not156, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_Z5resetSt4spanIjLm18446744073709551615EE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %min.iters.check426 = icmp ult i64 %1, 8
  br i1 %min.iters.check426, label %.lr.ph.i.preheader532, label %vector.ph427

vector.ph427:                                     ; preds = %.lr.ph.i.preheader
  %n.vec428 = and i64 %1, -8                      ; 3 uses
  br label %vector.body429

vector.body429:                                   ; preds = %vector.body429, %vector.ph427
  %index430 = phi i64 [ 0, %vector.ph427 ], [ %index.next431, %vector.body429 ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index430 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <4 x i32> zeroinitializer, ptr %i.f, align 4, !tbaa !8
  store <4 x i32> zeroinitializer, ptr %i.g, align 4, !tbaa !8
  %index.next431 = add nuw i64 %index430, 8       ; 2 uses
  %i.h = icmp eq i64 %index.next431, %n.vec428
  br i1 %i.h, label %middle.block432, label %vector.body429, !llvm.loop !33

middle.block432:                                  ; preds = %vector.body429
  %cmp.n433 = icmp eq i64 %1, %n.vec428
  br i1 %cmp.n433, label %_Z5resetSt4spanIjLm18446744073709551615EE.exit, label %.lr.ph.i.preheader532

.lr.ph.i.preheader532:                            ; preds = %.lr.ph.i.preheader, %middle.block432
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec428, %middle.block432 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader532, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader532 ] ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  store i32 0, ptr %i.i, align 4, !tbaa !8
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 2 uses
  %i.j = and i64 %indvars.iv.next.i, 4294967295
  %i.k = icmp samesign ugt i64 %1, %i.j
  br i1 %i.k, label %.lr.ph.i, label %_Z5resetSt4spanIjLm18446744073709551615EE.exit, !llvm.loop !34

bb.d:                                             ; preds = %bb.b
  %i.l = and i32 %2, 31                           ; 8 uses
  %narrow = sub nuw nsw i32 32, %i.l              ; 4 uses
  %i.m = sub nuw i64 %1, %i.e                     ; 6 uses
  %.not157 = icmp eq i32 %i.d, 0
  %i.n = icmp eq i32 %i.l, 0                      ; 2 uses
  br i1 %.not157, label %bb.e, label %.lr.ph270.preheader.a

.lr.ph270.preheader.a:                            ; preds = %bb.d
  br i1 %i.n, label %vector.scevcheck464, label %.preheader235

vector.scevcheck464:                              ; preds = %.lr.ph270.preheader.a
  %i.o = icmp ult i64 %i.m, 12
  br i1 %i.o, label %.lr.ph270.preheader529, label %vector.memcheck469

vector.memcheck469:                               ; preds = %vector.scevcheck464
  %i.p = shl nuw nsw i64 %i.e, 2
  %i.q = add i64 %i.p, %i.a
  %i.r = sub i64 %i.q, %i.b
  %diff.check470 = icmp ugt i64 %i.r, -32
  br i1 %diff.check470, label %.lr.ph270.preheader529, label %vector.ph471

vector.ph471:                                     ; preds = %vector.memcheck469
  %n.vec472 = and i64 %i.m, -8                    ; 4 uses
  %i.s = trunc i64 %n.vec472 to i32
  %i.t = add i32 %i.d, %i.s
  br label %vector.body473

vector.body473:                                   ; preds = %vector.body473, %vector.ph471
  %index474 = phi i64 [ 0, %vector.ph471 ], [ %index.next477, %vector.body473 ] ; 3 uses
  %i.u = trunc i64 %index474 to i32
  %i.v = add nuw i32 %i.d, %i.u
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load475 = load <4 x i32>, ptr %i.x, align 4, !tbaa !8
  %wide.load476 = load <4 x i32>, ptr %i.y, align 4, !tbaa !8
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index474 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <4 x i32> %wide.load475, ptr %i.z, align 4, !tbaa !8
  store <4 x i32> %wide.load476, ptr %i.aa, align 4, !tbaa !8
  %index.next477 = add nuw i64 %index474, 8       ; 2 uses
  %i.ab = icmp eq i64 %index.next477, %n.vec472
  br i1 %i.ab, label %middle.block478, label %vector.body473, !llvm.loop !35

middle.block478:                                  ; preds = %vector.body473
  %cmp.n479 = icmp eq i64 %i.m, %n.vec472
  br i1 %cmp.n479, label %.lr.ph273.preheader, label %.lr.ph270.preheader529

.lr.ph270.preheader529:                           ; preds = %vector.memcheck469, %vector.scevcheck464, %middle.block478
  %.1131269.ph = phi i32 [ %i.d, %vector.memcheck469 ], [ %i.d, %vector.scevcheck464 ], [ %i.t, %middle.block478 ] ; 2 uses
  %.1133268.ph = phi i64 [ 0, %vector.memcheck469 ], [ 0, %vector.scevcheck464 ], [ %n.vec472, %middle.block478 ] ; 3 uses
  %i.ac = sub i64 %1, %i.e
  %xtraiter543 = and i64 %i.ac, 3                 ; 2 uses
  %lcmp.mod544.not = icmp eq i64 %xtraiter543, 0
  br i1 %lcmp.mod544.not, label %.lr.ph270.prol.loopexit, label %.lr.ph270.prol

.lr.ph270.prol:                                   ; preds = %.lr.ph270.preheader529, %.lr.ph270.prol
  %.1131269.prol = phi i32 [ %i.ai, %.lr.ph270.prol ], [ %.1131269.ph, %.lr.ph270.preheader529 ] ; 2 uses
  %.1133268.prol = phi i64 [ %i.ah, %.lr.ph270.prol ], [ %.1133268.ph, %.lr.ph270.preheader529 ] ; 2 uses
  %prol.iter545 = phi i64 [ %prol.iter545.next, %.lr.ph270.prol ], [ 0, %.lr.ph270.preheader529 ]
  %i.ad = zext nneg i32 %.1131269.prol to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !8
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.1133268.prol
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !8
  %i.ah = add nuw i64 %.1133268.prol, 1           ; 2 uses
  %i.ai = add nuw nsw i32 %.1131269.prol, 1       ; 2 uses
  %prol.iter545.next = add i64 %prol.iter545, 1   ; 2 uses
  %prol.iter545.cmp.not = icmp eq i64 %prol.iter545.next, %xtraiter543
  br i1 %prol.iter545.cmp.not, label %.lr.ph270.prol.loopexit, label %.lr.ph270.prol, !llvm.loop !36

.lr.ph270.prol.loopexit:                          ; preds = %.lr.ph270.prol, %.lr.ph270.preheader529
  %.1131269.unr = phi i32 [ %.1131269.ph, %.lr.ph270.preheader529 ], [ %i.ai, %.lr.ph270.prol ]
  %.1133268.unr = phi i64 [ %.1133268.ph, %.lr.ph270.preheader529 ], [ %i.ah, %.lr.ph270.prol ]
  %i.aj = sub i64 %.1133268.ph, %1
  %i.ak = add i64 %i.aj, %i.e
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %.lr.ph273.preheader, label %.lr.ph270

.preheader235:                                    ; preds = %.lr.ph270.preheader.a
  %i.am = add i64 %i.m, -1                        ; 6 uses
  %.not283 = icmp eq i64 %i.am, 0
  br i1 %.not283, label %._crit_edge265, label %vector.scevcheck435

vector.scevcheck435:                              ; preds = %.preheader235
  %i.an = icmp ult i64 %i.am, 8
  br i1 %i.an, label %.lr.ph264.preheader530, label %vector.memcheck445

vector.memcheck445:                               ; preds = %vector.scevcheck435
  %i.ao = shl i64 %1, 2                           ; 2 uses
  %i.ap = shl nuw nsw i64 %i.e, 2                 ; 2 uses
  %i.aq = add i64 %i.ao, -4
  %i.ar = sub i64 %i.aq, %i.ap
  %i.as = getelementptr i8, ptr %3, i64 %i.ar
  %i.at = getelementptr i8, ptr %0, i64 %i.ap
  %i.au = getelementptr i8, ptr %0, i64 %i.ao
  %bound0446 = icmp ult ptr %3, %i.au
  %bound1447 = icmp ult ptr %i.at, %i.as
  %found.conflict448 = and i1 %bound0446, %bound1447
  br i1 %found.conflict448, label %.lr.ph264.preheader530, label %vector.ph449

vector.ph449:                                     ; preds = %vector.memcheck445
  %n.vec450 = and i64 %i.am, -4                   ; 5 uses
  %i.av = trunc i64 %n.vec450 to i32
  %i.aw = add i32 %i.d, %i.av
  %broadcast.splatinsert451 = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat452 = shufflevector <4 x i32> %broadcast.splatinsert451, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert453 = insertelement <4 x i32> poison, i32 %narrow, i64 0
  %broadcast.splat454 = shufflevector <4 x i32> %broadcast.splatinsert453, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body455

vector.body455:                                   ; preds = %vector.body455, %vector.ph449
  %index456 = phi i64 [ 0, %vector.ph449 ], [ %index.next459, %vector.body455 ] ; 3 uses
  %i.ax = trunc i64 %index456 to i32
  %i.ay = add nuw i32 %i.d, %i.ax                 ; 2 uses
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.az
  %wide.load457.a = load <4 x i32>, ptr %i.ba, align 4, !tbaa !8, !alias.scope !68
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index456 ; 2 uses
  %i.bc = lshr <4 x i32> %wide.load457.a, %broadcast.splat452 ; 2 uses
  store <4 x i32> %i.bc, ptr %i.bb, align 4, !tbaa !8, !alias.scope !69, !noalias !68
  %5 = sext i32 %i.ay to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %5
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %wide.load458 = load <4 x i32>, ptr %7, align 4, !tbaa !8, !alias.scope !68
  %i.bd = shl <4 x i32> %wide.load458, %broadcast.splat454
  %i.be = or disjoint <4 x i32> %i.bd, %i.bc
  store <4 x i32> %i.be, ptr %i.bb, align 4, !tbaa !8, !alias.scope !69, !noalias !68
  %index.next459 = add nuw i64 %index456, 4       ; 2 uses
  %i.bf = icmp eq i64 %index.next459, %n.vec450
  br i1 %i.bf, label %middle.block460, label %vector.body455, !llvm.loop !40

middle.block460:                                  ; preds = %vector.body455
  %i.bg = add i64 %n.vec450, %i.e
  %cmp.n461 = icmp eq i64 %i.am, %n.vec450
  br i1 %cmp.n461, label %._crit_edge265, label %.lr.ph264.preheader530

.lr.ph264.preheader530:                           ; preds = %vector.memcheck445, %vector.scevcheck435, %middle.block460
  %.0130263.ph = phi i32 [ %i.d, %vector.memcheck445 ], [ %i.d, %vector.scevcheck435 ], [ %i.aw, %middle.block460 ]
  %.0132262.ph = phi i64 [ 0, %vector.memcheck445 ], [ 0, %vector.scevcheck435 ], [ %n.vec450, %middle.block460 ]
  br label %.lr.ph264

.lr.ph264:                                        ; preds = %.lr.ph264.preheader530, %.lr.ph264
  %.0130263 = phi i32 [ %i.bm, %.lr.ph264 ], [ %.0130263.ph, %.lr.ph264.preheader530 ] ; 2 uses
  %.0132262 = phi i64 [ %i.bs, %.lr.ph264 ], [ %.0132262.ph, %.lr.ph264.preheader530 ] ; 2 uses
  %i.bh = zext nneg i32 %.0130263 to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !8
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0132262 ; 2 uses
  %i.bl = lshr i32 %i.bj, %i.l                    ; 2 uses
  store i32 %i.bl, ptr %i.bk, align 4, !tbaa !8
  %i.bm = add nuw nsw i32 %.0130263, 1            ; 2 uses
  %i.bn = zext nneg i32 %i.bm to i64              ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !8
  %i.bq = shl i32 %i.bp, %narrow
  %i.br = or disjoint i32 %i.bq, %i.bl
  store i32 %i.br, ptr %i.bk, align 4, !tbaa !8
  %i.bs = add nuw i64 %.0132262, 1                ; 2 uses
  %exitcond307.not = icmp eq i64 %i.bs, %i.am
  br i1 %exitcond307.not, label %._crit_edge265, label %.lr.ph264, !llvm.loop !41

._crit_edge265:                                   ; preds = %.lr.ph264, %middle.block460, %.preheader235
  %.pre-phi = phi i64 [ %i.e, %.preheader235 ], [ %i.bg, %middle.block460 ], [ %i.bn, %.lr.ph264 ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.pre-phi
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !8
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.am
  %i.bw = lshr i32 %i.bu, %i.l
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !8
  br label %.lr.ph273.preheader

.lr.ph270:                                        ; preds = %.lr.ph270.prol.loopexit, %.lr.ph270
  %.1131269 = phi i32 [ %i.cl, %.lr.ph270 ], [ %.1131269.unr, %.lr.ph270.prol.loopexit ] ; 5 uses
  %.1133268 = phi i64 [ %i.ck, %.lr.ph270 ], [ %.1133268.unr, %.lr.ph270.prol.loopexit ] ; 5 uses
  %i.bx = zext nneg i32 %.1131269 to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !8
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.1133268
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !8
  %8 = sext i32 %.1131269 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %8
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.cb = load i32, ptr %10, align 4, !tbaa !8
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.1133268
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i32 %i.cb, ptr %i.cd, align 4, !tbaa !8
  %11 = sext i32 %.1131269 to i64
  %12 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %11
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ce = load i32, ptr %13, align 4, !tbaa !8
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.1133268
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i32 %i.ce, ptr %i.cg, align 4, !tbaa !8
  %14 = sext i32 %.1131269 to i64
  %15 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.ch = load i32, ptr %16, align 4, !tbaa !8
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.1133268
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  store i32 %i.ch, ptr %i.cj, align 4, !tbaa !8
  %i.ck = add nuw i64 %.1133268, 4                ; 2 uses
  %i.cl = add nuw nsw i32 %.1131269, 4
  %exitcond308.not.3 = icmp eq i64 %i.ck, %i.m
  br i1 %exitcond308.not.3, label %.lr.ph273.preheader, label %.lr.ph270, !llvm.loop !42

.lr.ph273.preheader:                              ; preds = %.lr.ph270.prol.loopexit, %.lr.ph270, %middle.block478, %._crit_edge265
  %i.cm = sub i64 %1, %i.e
  %i.cn = shl i64 %i.cm, 2
  %scevgep309 = getelementptr i8, ptr %3, i64 %i.cn
  %i.co = add i64 %1, 1
  %i.cp = sub i64 %i.co, %i.e
  %umax = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.cp)
  %i.cq = add i64 %umax, %i.e
  %i.cr = sub i64 %i.cq, %1
  %i.cs = shl nuw i64 %i.cr, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep309, i8 0, i64 %i.cs, i1 false), !tbaa !8
  br label %_Z5resetSt4spanIjLm18446744073709551615EE.exit

bb.e:                                             ; preds = %bb.d
  br i1 %i.n, label %.preheader.preheader, label %.preheader232

.preheader.preheader:                             ; preds = %bb.e
  %min.iters.check512 = icmp ult i64 %1, 8
  %i.ct = sub i64 %i.a, %i.b
  %diff.check514 = icmp ugt i64 %i.ct, -32
  %or.cond = select i1 %min.iters.check512, i1 true, i1 %diff.check514
  br i1 %or.cond, label %.preheader.preheader526, label %vector.ph515

vector.ph515:                                     ; preds = %.preheader.preheader
  %n.vec516 = and i64 %1, -8                      ; 3 uses
  br label %vector.body517

vector.body517:                                   ; preds = %vector.body517, %vector.ph515
  %index518 = phi i64 [ 0, %vector.ph515 ], [ %index.next521, %vector.body517 ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index518 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %wide.load519 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !8
  %wide.load520 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !8
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index518 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store <4 x i32> %wide.load519, ptr %i.cw, align 4, !tbaa !8
  store <4 x i32> %wide.load520, ptr %i.cx, align 4, !tbaa !8
  %index.next521 = add nuw i64 %index518, 8       ; 2 uses
  %i.cy = icmp eq i64 %index.next521, %n.vec516
  br i1 %i.cy, label %middle.block522, label %vector.body517, !llvm.loop !43

middle.block522:                                  ; preds = %vector.body517
  %cmp.n523 = icmp eq i64 %1, %n.vec516
  br i1 %cmp.n523, label %_Z5resetSt4spanIjLm18446744073709551615EE.exit, label %.preheader.preheader526

.preheader.preheader526:                          ; preds = %.preheader.preheader, %middle.block522
  %.0128278.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec516, %middle.block522 ] ; 3 uses
  %xtraiter546 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod547.not = icmp eq i64 %xtraiter546, 0
  br i1 %lcmp.mod547.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader526, %.preheader.prol
  %.0128278.prol = phi i64 [ %i.dc, %.preheader.prol ], [ %.0128278.ph, %.preheader.preheader526 ] ; 3 uses
  %prol.iter548 = phi i64 [ %prol.iter548.next, %.preheader.prol ], [ 0, %.preheader.preheader526 ]
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0128278.prol
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !8
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0128278.prol
  store i32 %i.da, ptr %i.db, align 4, !tbaa !8
  %i.dc = add nuw i64 %.0128278.prol, 1           ; 2 uses
  %prol.iter548.next = add i64 %prol.iter548, 1   ; 2 uses
  %prol.iter548.cmp.not = icmp eq i64 %prol.iter548.next, %xtraiter546
  br i1 %prol.iter548.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !44

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader526
  %.0128278.unr = phi i64 [ %.0128278.ph, %.preheader.preheader526 ], [ %i.dc, %.preheader.prol ]
  %i.dd = sub i64 %.0128278.ph, %1
  %i.de = icmp ugt i64 %i.dd, -4
  br i1 %i.de, label %_Z5resetSt4spanIjLm18446744073709551615EE.exit, label %.preheader

.preheader232:                                    ; preds = %bb.e
  %i.df = add i64 %i.m, -1                        ; 5 uses
  %.not285 = icmp eq i64 %i.df, 0
  br i1 %.not285, label %._crit_edge276, label %.lr.ph275.preheader

.lr.ph275.preheader:                              ; preds = %.preheader232
  %min.iters.check490 = icmp ult i64 %i.df, 16
  br i1 %min.iters.check490, label %.lr.ph275.preheader527, label %vector.scevcheck482

vector.scevcheck482:                              ; preds = %.lr.ph275.preheader
  %i.dg = add i64 %1, -2                          ; 2 uses
  %i.dh = sub nuw nsw i64 %i.dg, %i.e
  %i.di = and i64 %i.dg, 4294967295
  %i.dj = icmp eq i64 %i.di, 4294967295
  %i.dk = icmp ugt i64 %i.dh, 4294967295
  %i.dl = or i1 %i.dj, %i.dk
  br i1 %i.dl, label %.lr.ph275.preheader527, label %vector.memcheck491

vector.memcheck491:                               ; preds = %vector.scevcheck482
  %i.dm = shl i64 %1, 2                           ; 2 uses
  %i.dn = getelementptr i8, ptr %3, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 -4
  %i.dp = getelementptr i8, ptr %0, i64 %i.dm
  %bound0492 = icmp ult ptr %3, %i.dp
  %bound1493 = icmp ult ptr %0, %i.do
  %found.conflict494 = and i1 %bound0492, %bound1493
  br i1 %found.conflict494, label %.lr.ph275.preheader527, label %vector.ph495

vector.ph495:                                     ; preds = %vector.memcheck491
  %n.vec496 = and i64 %i.df, -4                   ; 4 uses
  %broadcast.splatinsert497.a = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat498.a = shufflevector <4 x i32> %broadcast.splatinsert497.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert499 = insertelement <4 x i32> poison, i32 %narrow, i64 0
  %broadcast.splat500 = shufflevector <4 x i32> %broadcast.splatinsert499, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body501

vector.body501:                                   ; preds = %vector.body501, %vector.ph495
  %index502 = phi i64 [ 0, %vector.ph495 ], [ %index.next505, %vector.body501 ] ; 4 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index502
  %wide.load503 = load <4 x i32>, ptr %i.dq, align 4, !tbaa !8, !alias.scope !70
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index502 ; 2 uses
  %i.ds = lshr <4 x i32> %wide.load503, %broadcast.splat498.a ; 2 uses
  store <4 x i32> %i.ds, ptr %i.dr, align 4, !tbaa !8, !alias.scope !71, !noalias !70
  %i.dt = and i64 %index502, 4294967292
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %wide.load504 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !8, !alias.scope !70
  %i.dw = shl <4 x i32> %wide.load504, %broadcast.splat500
  %i.dx = or disjoint <4 x i32> %i.dw, %i.ds
  store <4 x i32> %i.dx, ptr %i.dr, align 4, !tbaa !8, !alias.scope !71, !noalias !70
  %index.next505 = add nuw i64 %index502, 4       ; 2 uses
  %i.dy = icmp eq i64 %index.next505, %n.vec496
  br i1 %i.dy, label %middle.block506, label %vector.body501, !llvm.loop !48

middle.block506:                                  ; preds = %vector.body501
  %cmp.n507 = icmp eq i64 %i.df, %n.vec496
  br i1 %cmp.n507, label %._crit_edge276, label %.lr.ph275.preheader527

.lr.ph275.preheader527:                           ; preds = %vector.memcheck491, %vector.scevcheck482, %.lr.ph275.preheader, %middle.block506
  %indvars.iv310.ph = phi i64 [ 0, %vector.memcheck491 ], [ 0, %vector.scevcheck482 ], [ 0, %.lr.ph275.preheader ], [ %n.vec496, %middle.block506 ]
  br label %.lr.ph275

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.0128278 = phi i64 [ %i.eo, %.preheader ], [ %.0128278.unr, %.preheader.prol.loopexit ] ; 6 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0128278
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !8
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0128278
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !8
  %i.ec = add nuw i64 %.0128278, 1                ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !8
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ec
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !8
  %i.eg = add nuw i64 %.0128278, 2                ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !8
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.eg
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !8
  %i.ek = add nuw i64 %.0128278, 3                ; 2 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !8
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ek
  store i32 %i.em, ptr %i.en, align 4, !tbaa !8
  %i.eo = add nuw i64 %.0128278, 4                ; 2 uses
  %exitcond314.not.3 = icmp eq i64 %i.eo, %1
  br i1 %exitcond314.not.3, label %_Z5resetSt4spanIjLm18446744073709551615EE.exit, label %.preheader, !llvm.loop !49

.lr.ph275:                                        ; preds = %.lr.ph275.preheader527, %.lr.ph275
  %indvars.iv310 = phi i64 [ %indvars.iv.next311, %.lr.ph275 ], [ %indvars.iv310.ph, %.lr.ph275.preheader527 ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv310
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !8
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv310 ; 2 uses
  %i.es = lshr i32 %i.eq, %i.l                    ; 2 uses
  store i32 %i.es, ptr %i.er, align 4, !tbaa !8
  %indvars.iv.next311 = add i64 %indvars.iv310, 1 ; 2 uses
  %i.et = and i64 %indvars.iv.next311, 4294967295 ; 3 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !8
  %i.ew = shl i32 %i.ev, %narrow
  %i.ex = or disjoint i32 %i.ew, %i.es
  store i32 %i.ex, ptr %i.er, align 4, !tbaa !8
  %i.ey = icmp ugt i64 %i.df, %i.et
  br i1 %i.ey, label %.lr.ph275, label %._crit_edge276, !llvm.loop !50

._crit_edge276:                                   ; preds = %.lr.ph275, %middle.block506, %.preheader232
  %.lcssa = phi i64 [ 0, %.preheader232 ], [ %n.vec496, %middle.block506 ], [ %i.et, %.lr.ph275 ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.lcssa
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !8
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.lcssa
  %i.fc = lshr i32 %i.fa, %i.l
  store i32 %i.fc, ptr %i.fb, align 4, !tbaa !8
  br label %_Z5resetSt4spanIjLm18446744073709551615EE.exit

bb.f:                                             ; preds = %bb.a
  %i.fd = zext i32 %2 to i64                      ; 2 uses
  %i.fe = lshr i64 %i.fd, 5                       ; 16 uses
  %.not = icmp ult i64 %i.fe, %1
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i160 = icmp eq i64 %4, 0
  br i1 %.not.i160, label %_Z5resetSt4spanIjLm18446744073709551615EE.exit, label %.lr.ph.i161.preheader

.lr.ph.i161.preheader:                            ; preds = %bb.g
  %min.iters.check = icmp ult i64 %4, 16
  br i1 %min.iters.check, label %.lr.ph.i161.preheader541, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i161.preheader
end_hunk_1
