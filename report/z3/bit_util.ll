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
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !9

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
  br i1 %.not, label %.lr.ph, label %.loopexit, !llvm.loop !11

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
  br i1 %or.cond, label %.lr.ph.preheader55, label %vector.ph

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
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %.preheader25, label %.lr.ph.preheader55

.lr.ph.preheader55:                               ; preds = %.lr.ph.preheader, %middle.block
  %.01628.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader55, %.lr.ph.prol
  %.01628.prol = phi i64 [ %i.l, %.lr.ph.prol ], [ %.01628.ph, %.lr.ph.preheader55 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader55 ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01628.prol
  %i.j = load i32, ptr %i.i, align 4, !tbaa !8
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.01628.prol
  store i32 %i.j, ptr %i.k, align 4, !tbaa !8
  %i.l = add nuw i64 %.01628.prol, 1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !15

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader55
  %.01628.unr = phi i64 [ %.01628.ph, %.lr.ph.preheader55 ], [ %i.l, %.lr.ph.prol ]
  %i.m = sub i64 %.01628.ph, %1
  %i.n = icmp ugt i64 %i.m, -4
  br i1 %i.n, label %.preheader25, label %.lr.ph

.preheader:                                       ; preds = %bb.a
  %.not34 = icmp eq i64 %3, 0
  br i1 %.not34, label %.loopexit, label %.lr.ph32.preheader

.lr.ph32.preheader:                               ; preds = %.preheader
  %min.iters.check42 = icmp ult i64 %3, 16
  br i1 %min.iters.check42, label %.lr.ph32.preheader54, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph32.preheader
  %i.o = add i64 %3, -1                           ; 2 uses
  %i.p = and i64 %i.o, 4294967295
  %i.q = icmp eq i64 %i.p, 4294967295
  %i.r = icmp ugt i64 %i.o, 4294967295
  %i.s = or i1 %i.q, %i.r
  %i.t = sub i64 %i.a, %i.b
  %diff.check40 = icmp ugt i64 %i.t, -32
  %or.cond53 = select i1 %i.s, i1 true, i1 %diff.check40
  br i1 %or.cond53, label %.lr.ph32.preheader54, label %vector.ph43

vector.ph43:                                      ; preds = %vector.scevcheck
  %n.vec44 = and i64 %3, 8589934584               ; 3 uses
  br label %vector.body45

vector.body45:                                    ; preds = %vector.body45, %vector.ph43
  %index46 = phi i64 [ 0, %vector.ph43 ], [ %index.next49, %vector.body45 ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index46 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load47 = load <4 x i32>, ptr %i.u, align 4, !tbaa !8
  %wide.load48 = load <4 x i32>, ptr %i.v, align 4, !tbaa !8
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index46 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> %wide.load47, ptr %i.w, align 4, !tbaa !8
  store <4 x i32> %wide.load48, ptr %i.x, align 4, !tbaa !8
  %index.next49 = add nuw i64 %index46, 8         ; 2 uses
  %i.y = icmp eq i64 %index.next49, %n.vec44
  br i1 %i.y, label %middle.block50, label %vector.body45, !llvm.loop !17

middle.block50:                                   ; preds = %vector.body45
  %cmp.n51 = icmp eq i64 %3, %n.vec44
  br i1 %cmp.n51, label %.loopexit, label %.lr.ph32.preheader54

.lr.ph32.preheader54:                             ; preds = %vector.scevcheck, %.lr.ph32.preheader, %middle.block50
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph32.preheader ], [ %n.vec44, %middle.block50 ]
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

.lr.ph32:                                         ; preds = %.lr.ph32.preheader54, %.lr.ph32
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph32 ], [ %indvars.iv.ph, %.lr.ph32.preheader54 ] ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
end_hunk_0
begin_hunk_1_@_Z3shlSt4spanIKjLm18446744073709551615EEjS_IjLm18446744073709551615EE:bb.a
middle.block227:                                  ; preds = %vector.body222
  %cmp.n228 = icmp eq i64 %spec.select, %n.vec221
  br i1 %cmp.n228, label %.preheader, label %.lr.ph157.preheader231

.lr.ph157.preheader231:                           ; preds = %.lr.ph157.preheader, %middle.block227
  %.086155.ph = phi i64 [ 0, %.lr.ph157.preheader ], [ %n.vec221, %middle.block227 ] ; 3 uses
  %xtraiter241 = and i64 %spec.select, 3          ; 2 uses
  %lcmp.mod242.not = icmp eq i64 %xtraiter241, 0
  br i1 %lcmp.mod242.not, label %.lr.ph157.prol.loopexit, label %.lr.ph157.prol

.lr.ph157.prol:                                   ; preds = %.lr.ph157.preheader231, %.lr.ph157.prol
  %.086155.prol = phi i64 [ %i.cw, %.lr.ph157.prol ], [ %.086155.ph, %.lr.ph157.preheader231 ] ; 3 uses
  %prol.iter243 = phi i64 [ %prol.iter243.next, %.lr.ph157.prol ], [ 0, %.lr.ph157.preheader231 ]
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.086155.prol
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !8
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.086155.prol
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !8
  %i.cw = add nuw i64 %.086155.prol, 1            ; 2 uses
  %prol.iter243.next = add i64 %prol.iter243, 1   ; 2 uses
  %prol.iter243.cmp.not = icmp eq i64 %prol.iter243.next, %xtraiter241
  br i1 %prol.iter243.cmp.not, label %.lr.ph157.prol.loopexit, label %.lr.ph157.prol, !llvm.loop !29

.lr.ph157.prol.loopexit:                          ; preds = %.lr.ph157.prol, %.lr.ph157.preheader231
  %.086155.unr = phi i64 [ %.086155.ph, %.lr.ph157.preheader231 ], [ %i.cw, %.lr.ph157.prol ]
  %i.cx = sub i64 %.086155.ph, %spec.select
  %i.cy = icmp ugt i64 %i.cx, -4
  br i1 %i.cy, label %.preheader, label %.lr.ph157

.preheader:                                       ; preds = %.lr.ph157.prol.loopexit, %.lr.ph157, %middle.block227, %bb.g
  %i.cz = icmp ult i64 %1, %4
  br i1 %i.cz, label %.lr.ph159.preheader, label %.loopexit

.lr.ph159.preheader:                              ; preds = %.preheader
  %i.da = shl i64 %spec.select, 2
  %scevgep168 = getelementptr i8, ptr %3, i64 %i.da
  %i.db = sub i64 %4, %spec.select
  br label %.loopexit.sink.split

.lr.ph157:                                        ; preds = %.lr.ph157.prol.loopexit, %.lr.ph157
  %.086155 = phi i64 [ %i.dr, %.lr.ph157 ], [ %.086155.unr, %.lr.ph157.prol.loopexit ] ; 6 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.086155
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !8
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.086155
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !8
  %i.df = add nuw i64 %.086155, 1                 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !8
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.df
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !8
  %i.dj = add nuw i64 %.086155, 2                 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !8
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dj
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !8
  %i.dn = add nuw i64 %.086155, 3                 ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !8
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dn
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !8
  %i.dr = add nuw i64 %.086155, 4                 ; 2 uses
  %exitcond167.not.3 = icmp eq i64 %i.dr, %spec.select
  br i1 %exitcond167.not.3, label %.preheader, label %.lr.ph157, !llvm.loop !30

bb.h:                                             ; preds = %bb.f
  %narrow = sub nuw nsw i32 32, %i.d              ; 4 uses
  %spec.select112 = tail call i64 @llvm.umin.i64(i64 %1, i64 %4) ; 11 uses
  %.not160 = icmp eq i64 %spec.select112, 0
  br i1 %.not160, label %._crit_edge149, label %.lr.ph148.preheader

.lr.ph148.preheader:                              ; preds = %bb.h
  %min.iters.check198 = icmp ult i64 %spec.select112, 8
  %i.ds = sub i64 %i.b, %i.a
  %diff.check196 = icmp ugt i64 %i.ds, -32
  %or.cond230 = select i1 %min.iters.check198, i1 true, i1 %diff.check196
  br i1 %or.cond230, label %.lr.ph148.preheader232, label %vector.ph199

vector.ph199:                                     ; preds = %.lr.ph148.preheader
  %n.vec200 = and i64 %spec.select112, -8         ; 3 uses
  %broadcast.splatinsert201 = insertelement <4 x i32> poison, i32 %narrow, i64 0
  %broadcast.splat202 = shufflevector <4 x i32> %broadcast.splatinsert201, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert203 = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat204 = shufflevector <4 x i32> %broadcast.splatinsert203, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body205

vector.body205:                                   ; preds = %vector.body205, %vector.ph199
  %index206 = phi i64 [ 0, %vector.ph199 ], [ %index.next210, %vector.body205 ] ; 3 uses
  %vector.recur207 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph199 ], [ %i.dw, %vector.body205 ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index206 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %wide.load208 = load <4 x i32>, ptr %i.dt, align 4, !tbaa !8 ; 2 uses
  %wide.load209 = load <4 x i32>, ptr %i.du, align 4, !tbaa !8 ; 2 uses
  %i.dv = lshr <4 x i32> %wide.load208, %broadcast.splat202 ; 2 uses
  %i.dw = lshr <4 x i32> %wide.load209, %broadcast.splat202 ; 3 uses
  %i.dx = shufflevector <4 x i32> %vector.recur207, <4 x i32> %i.dv, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dy = shufflevector <4 x i32> %i.dv, <4 x i32> %i.dw, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index206 ; 2 uses
  %i.ea = shl <4 x i32> %wide.load208, %broadcast.splat204
  %i.eb = shl <4 x i32> %wide.load209, %broadcast.splat204
  %i.ec = or <4 x i32> %i.ea, %i.dx
  %i.ed = or <4 x i32> %i.eb, %i.dy
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store <4 x i32> %i.ec, ptr %i.dz, align 4, !tbaa !8
  store <4 x i32> %i.ed, ptr %i.ee, align 4, !tbaa !8
  %index.next210 = add nuw i64 %index206, 8       ; 2 uses
  %i.ef = icmp eq i64 %index.next210, %n.vec200
  br i1 %i.ef, label %middle.block211, label %vector.body205, !llvm.loop !31

middle.block211:                                  ; preds = %vector.body205
  %vector.recur.extract212 = extractelement <4 x i32> %i.dw, i64 3 ; 2 uses
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
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.083146.ph
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !8  ; 2 uses
  %i.ei = lshr i32 %i.eh, %narrow                 ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.083146.ph
  %i.ek = shl i32 %i.eh, %i.d
  %i.el = or i32 %i.ek, %.084145.ph
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !8
  %i.em = or disjoint i64 %.083146.ph, 1
  br label %.lr.ph148.prol.loopexit

.lr.ph148.prol.loopexit:                          ; preds = %.lr.ph148.prol, %.lr.ph148.preheader232
  %.lcssa.unr = phi i32 [ poison, %.lr.ph148.preheader232 ], [ %i.ei, %.lr.ph148.prol ]
  %.083146.unr = phi i64 [ %.083146.ph, %.lr.ph148.preheader232 ], [ %i.em, %.lr.ph148.prol ]
  %.084145.unr = phi i32 [ %.084145.ph, %.lr.ph148.preheader232 ], [ %i.ei, %.lr.ph148.prol ]
  %i.en = icmp eq i64 %spec.select112, %.neg
  br i1 %i.en, label %._crit_edge149, label %.lr.ph148

._crit_edge149:                                   ; preds = %.lr.ph148.prol.loopexit, %.lr.ph148, %middle.block211, %bb.h
  %.084.lcssa = phi i32 [ 0, %bb.h ], [ %vector.recur.extract212, %middle.block211 ], [ %.lcssa.unr, %.lr.ph148.prol.loopexit ], [ %i.ey, %.lr.ph148 ]
  %i.eo = icmp ult i64 %1, %4
  br i1 %i.eo, label %bb.i, label %.loopexit

.lr.ph148:                                        ; preds = %.lr.ph148.prol.loopexit, %.lr.ph148
  %.083146 = phi i64 [ %i.fc, %.lr.ph148 ], [ %.083146.unr, %.lr.ph148.prol.loopexit ] ; 4 uses
  %.084145 = phi i32 [ %i.ey, %.lr.ph148 ], [ %.084145.unr, %.lr.ph148.prol.loopexit ]
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.083146
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !8  ; 2 uses
  %i.er = lshr i32 %i.eq, %narrow
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.083146
  %i.et = shl i32 %i.eq, %i.d
  %i.eu = or i32 %i.et, %.084145
  store i32 %i.eu, ptr %i.es, align 4, !tbaa !8
  %i.ev = add nuw i64 %.083146, 1                 ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !8  ; 2 uses
  %i.ey = lshr i32 %i.ex, %narrow                 ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ev
  %i.fa = shl i32 %i.ex, %i.d
  %i.fb = or disjoint i32 %i.fa, %i.er
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !8
  %i.fc = add nuw i64 %.083146, 2                 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.fc, %spec.select112
  br i1 %exitcond.not.1, label %._crit_edge149, label %.lr.ph148, !llvm.loop !32

bb.i:                                             ; preds = %._crit_edge149
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %spec.select112
  store i32 %.084.lcssa, ptr %i.fd, align 4, !tbaa !8
  %.0151 = add i64 %spec.select112, 1
  %i.fe = icmp ult i64 %.0151, %4
  br i1 %i.fe, label %.lr.ph154.preheader, label %.loopexit

.lr.ph154.preheader:                              ; preds = %bb.i
  %i.ff = shl i64 %spec.select112, 2
  %i.fg = getelementptr i8, ptr %3, i64 %i.ff
  %scevgep166 = getelementptr i8, ptr %i.fg, i64 4
  %i.fh = xor i64 %spec.select112, -1
  %i.fi = add i64 %4, %i.fh
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.lr.ph159.preheader, %.lr.ph154.preheader
  %.sink176 = phi i64 [ %i.fi, %.lr.ph154.preheader ], [ %i.db, %.lr.ph159.preheader ]
  %scevgep166.sink = phi ptr [ %scevgep166, %.lr.ph154.preheader ], [ %scevgep168, %.lr.ph159.preheader ]
  %i.fj = shl i64 %.sink176, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep166.sink, i8 0, i64 %i.fj, i1 false), !tbaa !8
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
  %min.iters.check419 = icmp ult i64 %1, 8
  br i1 %min.iters.check419, label %.lr.ph.i.preheader513, label %vector.ph420

vector.ph420:                                     ; preds = %.lr.ph.i.preheader
  %n.vec421 = and i64 %1, -8                      ; 3 uses
  br label %vector.body422

vector.body422:                                   ; preds = %vector.body422, %vector.ph420
  %index423 = phi i64 [ 0, %vector.ph420 ], [ %index.next424, %vector.body422 ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index423 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <4 x i32> zeroinitializer, ptr %i.f, align 4, !tbaa !8
  store <4 x i32> zeroinitializer, ptr %i.g, align 4, !tbaa !8
  %index.next424 = add nuw i64 %index423, 8       ; 2 uses
  %i.h = icmp eq i64 %index.next424, %n.vec421
  br i1 %i.h, label %middle.block425, label %vector.body422, !llvm.loop !33

middle.block425:                                  ; preds = %vector.body422
  %cmp.n426 = icmp eq i64 %1, %n.vec421
  br i1 %cmp.n426, label %_Z5resetSt4spanIjLm18446744073709551615EE.exit, label %.lr.ph.i.preheader513

.lr.ph.i.preheader513:                            ; preds = %.lr.ph.i.preheader, %middle.block425
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec421, %middle.block425 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader513, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader513 ] ; 2 uses
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
  br i1 %i.n, label %vector.scevcheck453, label %.preheader235

vector.scevcheck453:                              ; preds = %.lr.ph270.preheader.a
  %i.o = icmp ult i64 %i.m, 12
  br i1 %i.o, label %.lr.ph270.preheader510, label %vector.memcheck454

vector.memcheck454:                               ; preds = %vector.scevcheck453
  %i.p = shl nuw nsw i64 %i.e, 2
  %i.q = add i64 %i.p, %i.a
  %i.r = sub i64 %i.q, %i.b
  %diff.check455 = icmp ugt i64 %i.r, -32
  br i1 %diff.check455, label %.lr.ph270.preheader510, label %vector.ph458

vector.ph458:                                     ; preds = %vector.memcheck454
  %n.vec459 = and i64 %i.m, -8                    ; 4 uses
  %i.s = trunc i64 %n.vec459 to i32
  %i.t = add i32 %i.d, %i.s
  br label %vector.body460

vector.body460:                                   ; preds = %vector.body460, %vector.ph458
  %index461 = phi i64 [ 0, %vector.ph458 ], [ %index.next464, %vector.body460 ] ; 3 uses
  %i.u = trunc i64 %index461 to i32
  %i.v = add nuw i32 %i.d, %i.u
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load462 = load <4 x i32>, ptr %i.x, align 4, !tbaa !8
  %wide.load463 = load <4 x i32>, ptr %i.y, align 4, !tbaa !8
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index461 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <4 x i32> %wide.load462, ptr %i.z, align 4, !tbaa !8
  store <4 x i32> %wide.load463, ptr %i.aa, align 4, !tbaa !8
  %index.next464 = add nuw i64 %index461, 8       ; 2 uses
  %i.ab = icmp eq i64 %index.next464, %n.vec459
  br i1 %i.ab, label %middle.block465, label %vector.body460, !llvm.loop !35

middle.block465:                                  ; preds = %vector.body460
  %cmp.n466 = icmp eq i64 %i.m, %n.vec459
  br i1 %cmp.n466, label %.lr.ph273.preheader, label %.lr.ph270.preheader510

.lr.ph270.preheader510:                           ; preds = %vector.memcheck454, %vector.scevcheck453, %middle.block465
  %.1131269.ph = phi i32 [ %i.d, %vector.memcheck454 ], [ %i.d, %vector.scevcheck453 ], [ %i.t, %middle.block465 ] ; 2 uses
  %.1133268.ph = phi i64 [ 0, %vector.memcheck454 ], [ 0, %vector.scevcheck453 ], [ %n.vec459, %middle.block465 ] ; 3 uses
  %i.ac = sub i64 %1, %i.e
  %xtraiter524 = and i64 %i.ac, 3                 ; 2 uses
  %lcmp.mod525.not = icmp eq i64 %xtraiter524, 0
  br i1 %lcmp.mod525.not, label %.lr.ph270.prol.loopexit, label %.lr.ph270.prol

.lr.ph270.prol:                                   ; preds = %.lr.ph270.preheader510, %.lr.ph270.prol
  %.1131269.prol = phi i32 [ %i.ai, %.lr.ph270.prol ], [ %.1131269.ph, %.lr.ph270.preheader510 ] ; 2 uses
  %.1133268.prol = phi i64 [ %i.ah, %.lr.ph270.prol ], [ %.1133268.ph, %.lr.ph270.preheader510 ] ; 2 uses
  %prol.iter526 = phi i64 [ %prol.iter526.next, %.lr.ph270.prol ], [ 0, %.lr.ph270.preheader510 ]
  %i.ad = zext nneg i32 %.1131269.prol to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !8
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.1133268.prol
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !8
  %i.ah = add nuw i64 %.1133268.prol, 1           ; 2 uses
  %i.ai = add nuw nsw i32 %.1131269.prol, 1       ; 2 uses
  %prol.iter526.next = add i64 %prol.iter526, 1   ; 2 uses
  %prol.iter526.cmp.not = icmp eq i64 %prol.iter526.next, %xtraiter524
  br i1 %prol.iter526.cmp.not, label %.lr.ph270.prol.loopexit, label %.lr.ph270.prol, !llvm.loop !36

.lr.ph270.prol.loopexit:                          ; preds = %.lr.ph270.prol, %.lr.ph270.preheader510
  %.1131269.unr = phi i32 [ %.1131269.ph, %.lr.ph270.preheader510 ], [ %i.ai, %.lr.ph270.prol ]
  %.1133268.unr = phi i64 [ %.1133268.ph, %.lr.ph270.preheader510 ], [ %i.ah, %.lr.ph270.prol ]
  %i.aj = sub i64 %.1133268.ph, %1
  %i.ak = add i64 %i.aj, %i.e
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %.lr.ph273.preheader, label %.lr.ph270

.preheader235:                                    ; preds = %.lr.ph270.preheader.a
  %i.am = add i64 %i.m, -1                        ; 6 uses
  %.not283 = icmp eq i64 %i.am, 0
  br i1 %.not283, label %._crit_edge265, label %vector.scevcheck428

vector.scevcheck428:                              ; preds = %.preheader235
  %i.an = icmp ult i64 %i.am, 8
  br i1 %i.an, label %.lr.ph264.preheader511, label %vector.memcheck429

vector.memcheck429:                               ; preds = %vector.scevcheck428
  %i.ao = shl i64 %1, 2                           ; 2 uses
  %i.ap = add i64 %i.ao, -4
  %i.aq = shl nuw nsw i64 %i.e, 2                 ; 2 uses
  %i.ar = sub i64 %i.ap, %i.aq
  %scevgep430.a = getelementptr i8, ptr %3, i64 %i.ar
  %scevgep431.a = getelementptr i8, ptr %0, i64 %i.aq
  %scevgep432 = getelementptr i8, ptr %0, i64 %i.ao
  %bound0433 = icmp ult ptr %3, %scevgep432
  %bound1434 = icmp ult ptr %scevgep431.a, %scevgep430.a
  %found.conflict435 = and i1 %bound0433, %bound1434
  br i1 %found.conflict435, label %.lr.ph264.preheader511, label %vector.ph438

vector.ph438:                                     ; preds = %vector.memcheck429
  %n.vec439 = and i64 %i.am, -4                   ; 5 uses
  %i.as = trunc i64 %n.vec439 to i32
  %i.at = add i32 %i.d, %i.as
  %broadcast.splatinsert440 = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat441 = shufflevector <4 x i32> %broadcast.splatinsert440, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert442 = insertelement <4 x i32> poison, i32 %narrow, i64 0
  %broadcast.splat443 = shufflevector <4 x i32> %broadcast.splatinsert442, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body444

vector.body444:                                   ; preds = %vector.body444, %vector.ph438
  %index445 = phi i64 [ 0, %vector.ph438 ], [ %index.next448, %vector.body444 ] ; 3 uses
  %i.au = trunc i64 %index445 to i32
  %i.av = add nuw i32 %i.d, %i.au                 ; 2 uses
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aw
  %wide.load446.a = load <4 x i32>, ptr %i.ax, align 4, !tbaa !8, !alias.scope !37
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index445 ; 2 uses
  %i.az = lshr <4 x i32> %wide.load446.a, %broadcast.splat441 ; 2 uses
  store <4 x i32> %i.az, ptr %i.ay, align 4, !tbaa !8, !alias.scope !40, !noalias !37
  %5 = sext i32 %i.av to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %5
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %wide.load447 = load <4 x i32>, ptr %7, align 4, !tbaa !8, !alias.scope !37
  %i.ba = shl <4 x i32> %wide.load447, %broadcast.splat443
  %i.bb = or disjoint <4 x i32> %i.ba, %i.az
  store <4 x i32> %i.bb, ptr %i.ay, align 4, !tbaa !8, !alias.scope !40, !noalias !37
  %index.next448 = add nuw i64 %index445, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next448, %n.vec439
  br i1 %i.bc, label %middle.block449, label %vector.body444, !llvm.loop !42

middle.block449:                                  ; preds = %vector.body444
  %i.bd = add i64 %n.vec439, %i.e
  %cmp.n450 = icmp eq i64 %i.am, %n.vec439
  br i1 %cmp.n450, label %._crit_edge265, label %.lr.ph264.preheader511

.lr.ph264.preheader511:                           ; preds = %vector.memcheck429, %vector.scevcheck428, %middle.block449
  %.0130263.ph = phi i32 [ %i.d, %vector.memcheck429 ], [ %i.d, %vector.scevcheck428 ], [ %i.at, %middle.block449 ]
  %.0132262.ph = phi i64 [ 0, %vector.memcheck429 ], [ 0, %vector.scevcheck428 ], [ %n.vec439, %middle.block449 ]
  br label %.lr.ph264

.lr.ph264:                                        ; preds = %.lr.ph264.preheader511, %.lr.ph264
  %.0130263 = phi i32 [ %i.bj, %.lr.ph264 ], [ %.0130263.ph, %.lr.ph264.preheader511 ] ; 2 uses
  %.0132262 = phi i64 [ %i.bp, %.lr.ph264 ], [ %.0132262.ph, %.lr.ph264.preheader511 ] ; 2 uses
  %i.be = zext nneg i32 %.0130263 to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !8
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0132262 ; 2 uses
  %i.bi = lshr i32 %i.bg, %i.l                    ; 2 uses
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !8
  %i.bj = add nuw nsw i32 %.0130263, 1            ; 2 uses
  %i.bk = zext nneg i32 %i.bj to i64              ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !8
  %i.bn = shl i32 %i.bm, %narrow
  %i.bo = or disjoint i32 %i.bn, %i.bi
  store i32 %i.bo, ptr %i.bh, align 4, !tbaa !8
  %i.bp = add nuw i64 %.0132262, 1                ; 2 uses
  %exitcond307.not = icmp eq i64 %i.bp, %i.am
  br i1 %exitcond307.not, label %._crit_edge265, label %.lr.ph264, !llvm.loop !43

._crit_edge265:                                   ; preds = %.lr.ph264, %middle.block449, %.preheader235
  %.pre-phi = phi i64 [ %i.e, %.preheader235 ], [ %i.bd, %middle.block449 ], [ %i.bk, %.lr.ph264 ]
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.pre-phi
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !8
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.am
  %i.bt = lshr i32 %i.br, %i.l
  store i32 %i.bt, ptr %i.bs, align 4, !tbaa !8
  br label %.lr.ph273.preheader

.lr.ph270:                                        ; preds = %.lr.ph270.prol.loopexit, %.lr.ph270
  %.1131269 = phi i32 [ %i.ci, %.lr.ph270 ], [ %.1131269.unr, %.lr.ph270.prol.loopexit ] ; 5 uses
  %.1133268 = phi i64 [ %i.ch, %.lr.ph270 ], [ %.1133268.unr, %.lr.ph270.prol.loopexit ] ; 5 uses
  %i.bu = zext nneg i32 %.1131269 to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !8
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.1133268
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !8
  %8 = sext i32 %.1131269 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %8
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.by = load i32, ptr %10, align 4, !tbaa !8
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.1133268
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store i32 %i.by, ptr %i.ca, align 4, !tbaa !8
  %11 = sext i32 %.1131269 to i64
  %12 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %11
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cb = load i32, ptr %13, align 4, !tbaa !8
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.1133268
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i32 %i.cb, ptr %i.cd, align 4, !tbaa !8
  %14 = sext i32 %.1131269 to i64
  %15 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.ce = load i32, ptr %16, align 4, !tbaa !8
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.1133268
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store i32 %i.ce, ptr %i.cg, align 4, !tbaa !8
  %i.ch = add nuw i64 %.1133268, 4                ; 2 uses
  %i.ci = add nuw nsw i32 %.1131269, 4
  %exitcond308.not.3 = icmp eq i64 %i.ch, %i.m
  br i1 %exitcond308.not.3, label %.lr.ph273.preheader, label %.lr.ph270, !llvm.loop !44

.lr.ph273.preheader:                              ; preds = %.lr.ph270.prol.loopexit, %.lr.ph270, %middle.block465, %._crit_edge265
  %i.cj = sub i64 %1, %i.e
  %i.ck = shl i64 %i.cj, 2
  %scevgep309 = getelementptr i8, ptr %3, i64 %i.ck
  %i.cl = add i64 %1, 1
  %i.cm = sub i64 %i.cl, %i.e
  %umax = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.cm)
  %i.cn = add i64 %umax, %i.e
  %i.co = sub i64 %i.cn, %1
  %i.cp = shl nuw i64 %i.co, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep309, i8 0, i64 %i.cp, i1 false), !tbaa !8
  br label %_Z5resetSt4spanIjLm18446744073709551615EE.exit

bb.e:                                             ; preds = %bb.d
  br i1 %i.n, label %.preheader.preheader, label %.preheader232

.preheader.preheader:                             ; preds = %bb.e
  %min.iters.check495 = icmp ult i64 %1, 8
  %i.cq = sub i64 %i.a, %i.b
  %diff.check493 = icmp ugt i64 %i.cq, -32
  %or.cond = select i1 %min.iters.check495, i1 true, i1 %diff.check493
  br i1 %or.cond, label %.preheader.preheader507, label %vector.ph496

vector.ph496:                                     ; preds = %.preheader.preheader
  %n.vec497 = and i64 %1, -8                      ; 3 uses
  br label %vector.body498

vector.body498:                                   ; preds = %vector.body498, %vector.ph496
  %index499 = phi i64 [ 0, %vector.ph496 ], [ %index.next502, %vector.body498 ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index499 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %wide.load500 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !8
  %wide.load501 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !8
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index499 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store <4 x i32> %wide.load500, ptr %i.ct, align 4, !tbaa !8
  store <4 x i32> %wide.load501, ptr %i.cu, align 4, !tbaa !8
  %index.next502 = add nuw i64 %index499, 8       ; 2 uses
  %i.cv = icmp eq i64 %index.next502, %n.vec497
  br i1 %i.cv, label %middle.block503, label %vector.body498, !llvm.loop !45

middle.block503:                                  ; preds = %vector.body498
  %cmp.n504 = icmp eq i64 %1, %n.vec497
  br i1 %cmp.n504, label %_Z5resetSt4spanIjLm18446744073709551615EE.exit, label %.preheader.preheader507

.preheader.preheader507:                          ; preds = %.preheader.preheader, %middle.block503
  %.0128278.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec497, %middle.block503 ] ; 3 uses
  %xtraiter527 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod528.not = icmp eq i64 %xtraiter527, 0
  br i1 %lcmp.mod528.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader507, %.preheader.prol
  %.0128278.prol = phi i64 [ %i.cz, %.preheader.prol ], [ %.0128278.ph, %.preheader.preheader507 ] ; 3 uses
  %prol.iter529 = phi i64 [ %prol.iter529.next, %.preheader.prol ], [ 0, %.preheader.preheader507 ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0128278.prol
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !8
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0128278.prol
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !8
  %i.cz = add nuw i64 %.0128278.prol, 1           ; 2 uses
  %prol.iter529.next = add i64 %prol.iter529, 1   ; 2 uses
  %prol.iter529.cmp.not = icmp eq i64 %prol.iter529.next, %xtraiter527
  br i1 %prol.iter529.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !46

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader507
  %.0128278.unr = phi i64 [ %.0128278.ph, %.preheader.preheader507 ], [ %i.cz, %.preheader.prol ]
  %i.da = sub i64 %.0128278.ph, %1
  %i.db = icmp ugt i64 %i.da, -4
  br i1 %i.db, label %_Z5resetSt4spanIjLm18446744073709551615EE.exit, label %.preheader

.preheader232:                                    ; preds = %bb.e
  %i.dc = add i64 %i.m, -1                        ; 5 uses
  %.not285 = icmp eq i64 %i.dc, 0
  br i1 %.not285, label %._crit_edge276, label %.lr.ph275.preheader

.lr.ph275.preheader:                              ; preds = %.preheader232
  %min.iters.check477 = icmp ult i64 %i.dc, 16
  br i1 %min.iters.check477, label %.lr.ph275.preheader508, label %vector.scevcheck469

vector.scevcheck469:                              ; preds = %.lr.ph275.preheader
  %i.dd = add i64 %1, -2                          ; 2 uses
  %i.de = sub nuw nsw i64 %i.dd, %i.e
  %i.df = and i64 %i.dd, 4294967295
  %i.dg = icmp eq i64 %i.df, 4294967295
  %i.dh = icmp ugt i64 %i.de, 4294967295
  %i.di = or i1 %i.dg, %i.dh
  br i1 %i.di, label %.lr.ph275.preheader508, label %vector.memcheck470

vector.memcheck470:                               ; preds = %vector.scevcheck469
  %i.dj = shl i64 %1, 2                           ; 2 uses
  %i.dk = getelementptr i8, ptr %3, i64 %i.dj
  %scevgep471 = getelementptr i8, ptr %i.dk, i64 -4
  %scevgep472 = getelementptr i8, ptr %0, i64 %i.dj
  %bound0473 = icmp ult ptr %3, %scevgep472
  %bound1474 = icmp ult ptr %0, %scevgep471
  %found.conflict475 = and i1 %bound0473, %bound1474
  br i1 %found.conflict475, label %.lr.ph275.preheader508, label %vector.ph478

vector.ph478:                                     ; preds = %vector.memcheck470
  %n.vec479 = and i64 %i.dc, -4                   ; 4 uses
  %broadcast.splatinsert480.a = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat481.a = shufflevector <4 x i32> %broadcast.splatinsert480.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert482 = insertelement <4 x i32> poison, i32 %narrow, i64 0
  %broadcast.splat483 = shufflevector <4 x i32> %broadcast.splatinsert482, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body484

vector.body484:                                   ; preds = %vector.body484, %vector.ph478
  %index485 = phi i64 [ 0, %vector.ph478 ], [ %index.next488, %vector.body484 ] ; 4 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index485
  %wide.load486 = load <4 x i32>, ptr %i.dl, align 4, !tbaa !8, !alias.scope !47
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index485 ; 2 uses
  %i.dn = lshr <4 x i32> %wide.load486, %broadcast.splat481.a ; 2 uses
  store <4 x i32> %i.dn, ptr %i.dm, align 4, !tbaa !8, !alias.scope !50, !noalias !47
  %i.do = and i64 %index485, 4294967292
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %wide.load487 = load <4 x i32>, ptr %i.dq, align 4, !tbaa !8, !alias.scope !47
  %i.dr = shl <4 x i32> %wide.load487, %broadcast.splat483
  %i.ds = or disjoint <4 x i32> %i.dr, %i.dn
  store <4 x i32> %i.ds, ptr %i.dm, align 4, !tbaa !8, !alias.scope !50, !noalias !47
  %index.next488 = add nuw i64 %index485, 4       ; 2 uses
  %i.dt = icmp eq i64 %index.next488, %n.vec479
  br i1 %i.dt, label %middle.block489, label %vector.body484, !llvm.loop !52

middle.block489:                                  ; preds = %vector.body484
  %cmp.n490 = icmp eq i64 %i.dc, %n.vec479
  br i1 %cmp.n490, label %._crit_edge276, label %.lr.ph275.preheader508

.lr.ph275.preheader508:                           ; preds = %vector.memcheck470, %vector.scevcheck469, %.lr.ph275.preheader, %middle.block489
  %indvars.iv310.ph = phi i64 [ 0, %vector.memcheck470 ], [ 0, %vector.scevcheck469 ], [ 0, %.lr.ph275.preheader ], [ %n.vec479, %middle.block489 ]
  br label %.lr.ph275

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.0128278 = phi i64 [ %i.ej, %.preheader ], [ %.0128278.unr, %.preheader.prol.loopexit ] ; 6 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0128278
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !8
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0128278
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !8
  %i.dx = add nuw i64 %.0128278, 1                ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !8
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dx
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !8
  %i.eb = add nuw i64 %.0128278, 2                ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !8
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.eb
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !8
  %i.ef = add nuw i64 %.0128278, 3                ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !8
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ef
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !8
  %i.ej = add nuw i64 %.0128278, 4                ; 2 uses
  %exitcond314.not.3 = icmp eq i64 %i.ej, %1
  br i1 %exitcond314.not.3, label %_Z5resetSt4spanIjLm18446744073709551615EE.exit, label %.preheader, !llvm.loop !53

.lr.ph275:                                        ; preds = %.lr.ph275.preheader508, %.lr.ph275
  %indvars.iv310 = phi i64 [ %indvars.iv.next311, %.lr.ph275 ], [ %indvars.iv310.ph, %.lr.ph275.preheader508 ] ; 3 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv310
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !8
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv310 ; 2 uses
  %i.en = lshr i32 %i.el, %i.l                    ; 2 uses
  store i32 %i.en, ptr %i.em, align 4, !tbaa !8
  %indvars.iv.next311 = add i64 %indvars.iv310, 1 ; 2 uses
  %i.eo = and i64 %indvars.iv.next311, 4294967295 ; 3 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !8
  %i.er = shl i32 %i.eq, %narrow
  %i.es = or disjoint i32 %i.er, %i.en
  store i32 %i.es, ptr %i.em, align 4, !tbaa !8
  %i.et = icmp ugt i64 %i.dc, %i.eo
  br i1 %i.et, label %.lr.ph275, label %._crit_edge276, !llvm.loop !54

._crit_edge276:                                   ; preds = %.lr.ph275, %middle.block489, %.preheader232
  %.lcssa = phi i64 [ 0, %.preheader232 ], [ %n.vec479, %middle.block489 ], [ %i.eo, %.lr.ph275 ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.lcssa
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !8
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.lcssa
  %i.ex = lshr i32 %i.ev, %i.l
  store i32 %i.ex, ptr %i.ew, align 4, !tbaa !8
  br label %_Z5resetSt4spanIjLm18446744073709551615EE.exit

bb.f:                                             ; preds = %bb.a
  %i.ey = zext i32 %2 to i64                      ; 2 uses
  %i.ez = lshr i64 %i.ey, 5                       ; 16 uses
  %.not = icmp ult i64 %i.ez, %1
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i160 = icmp eq i64 %4, 0
  br i1 %.not.i160, label %_Z5resetSt4spanIjLm18446744073709551615EE.exit, label %.lr.ph.i161.preheader

.lr.ph.i161.preheader:                            ; preds = %bb.g
  %min.iters.check = icmp ult i64 %4, 16
  br i1 %min.iters.check, label %.lr.ph.i161.preheader522, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i161.preheader
end_hunk_1
