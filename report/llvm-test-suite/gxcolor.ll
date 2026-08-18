inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gx_color_from_rgb(ptr nofree noundef captures(none) initializes((8, 10)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !8      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !11
  %i.d = icmp eq i16 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i16, ptr %i.e, align 2, !tbaa !12
  %i.g = icmp eq i16 %i.a, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %i.a, ptr %i.h, align 2, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sink11 = phi i8 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sink11, ptr %i.i, align 1, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink11, ptr %i.j, align 2, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local zeroext i16 @gx_color_luminance(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !14
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !13
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr %0, align 2, !tbaa !8
  %i.d = zext i16 %i.c to i32
  %i.e = mul nuw nsw i32 %i.d, 30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !11
  %i.h = zext i16 %i.g to i32
  %i.i = mul nuw nsw i32 %i.h, 59
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i16, ptr %i.j, align 2, !tbaa !12
  %i.l = zext i16 %i.k to i32
  %i.m = mul nuw nsw i32 %i.l, 11
  %i.n = add nuw nsw i32 %i.e, 50
  %i.o = add nuw nsw i32 %i.n, %i.i
  %i.p = add nuw nsw i32 %i.o, %i.m
  %i.q = udiv i32 %i.p, 100
  %i.r = trunc nuw i32 %i.q to i16                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %i.r, ptr %i.s, align 2, !tbaa !13
  store i8 1, ptr %i.a, align 1, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.t = phi i16 [ %.pre, %._crit_edge ], [ %i.r, %bb.b ]
  ret i16 %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gx_color_to_hsb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 6)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 2, !tbaa !15
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i16 0, ptr %1, align 2, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 0, ptr %i.c, align 2, !tbaa !16
  %i.d = load i16, ptr %0, align 2, !tbaa !8
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.e = load i16, ptr %0, align 2, !tbaa !8      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !11   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i16, ptr %i.h, align 2, !tbaa !12   ; 3 uses
  %i.j = zext i16 %i.e to i32                     ; 2 uses
  %i.k = zext i16 %i.g to i32                     ; 2 uses
  %i.l = tail call i16 @llvm.umax.i16(i16 %i.e, i16 %i.g)
  %i.m = zext i16 %i.i to i32                     ; 2 uses
  %spec.select = tail call i16 @llvm.umax.i16(i16 %i.i, i16 %i.l) ; 5 uses
  %i.n = tail call i16 @llvm.umin.i16(i16 %i.e, i16 %i.g)
  %.042 = tail call i16 @llvm.umin.i16(i16 %i.i, i16 %i.n)
  %i.o = zext i16 %spec.select to i64
  %i.p = zext i16 %.042 to i64
  %i.q = sub nuw nsw i64 %i.o, %i.p               ; 4 uses
  %i.r = icmp eq i16 %spec.select, %i.e
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = sub nsw i32 %i.k, %i.m
  %i.t = sext i32 %i.s to i64
  %i.u = mul nsw i64 %i.t, 65535
  %i.v = sdiv i64 %i.u, %i.q
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.w = icmp eq i16 %spec.select, %i.g
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = sub nsw i32 %i.m, %i.j
  %i.y = sext i32 %i.x to i64
  %i.z = mul nsw i64 %i.y, 65535
  %i.aa = sdiv i64 %i.z, %i.q
  %i.ab = add nsw i64 %i.aa, 131070
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ac = sub nsw i32 %i.j, %i.k
  %i.ad = sext i32 %i.ac to i64
  %i.ae = mul nsw i64 %i.ad, 65535
  %i.af = sdiv i64 %i.ae, %i.q
  %i.ag = add nsw i64 %i.af, 262140
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %.0 = phi i64 [ %i.v, %bb.d ], [ %i.ab, %bb.f ], [ %i.ag, %bb.g ] ; 3 uses
  %i.ah = icmp slt i64 %.0, 0
  %i.ai = add nsw i64 %.0, 393210
  %spec.select47 = select i1 %i.ah, i64 %i.ai, i64 %.0
  %i.aj = sdiv i64 %spec.select47, 6
  %i.ak = trunc i64 %i.aj to i16
  store i16 %i.ak, ptr %1, align 2, !tbaa !16
  %2 = trunc nuw nsw i64 %i.q to i32
  %.lhs.trunc = mul nuw i32 %2, 65535
  %.rhs.trunc = zext i16 %spec.select to i32
  %3 = udiv i32 %.lhs.trunc, %.rhs.trunc
  %i.al = trunc i32 %3 to i16
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.al, ptr %i.am, align 2, !tbaa !16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  %spec.select.sink = phi i16 [ %spec.select, %bb.h ], [ %i.d, %bb.b ]
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %spec.select.sink, ptr %i.an, align 2, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @gx_color_from_hsb(ptr nofree noundef writeonly captures(none) initializes((0, 6), (8, 10)) %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i16 %2, 0
  br i1 %i.a, label %.thread50, label %bb.b

.thread50:                                        ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %3, ptr %i.b, align 2, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %3, ptr %i.c, align 2, !tbaa !11
  store i16 %3, ptr %0, align 2, !tbaa !8
  br label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = insertelement <2 x i16> poison, i16 %3, i64 0
  %i.e = insertelement <2 x i16> %i.d, i16 %2, i64 1
  %i.f = uitofp <2 x i16> %i.e to <2 x float>
  %i.g = fdiv <2 x float> %i.f, splat (float 6.553500e+04) ; 4 uses
  %i.h = extractelement <2 x float> %i.g, i64 0   ; 7 uses
  %i.i = udiv i16 %1, 10923
  %i.j = urem i16 %1, 10923
  %i.k = uitofp nneg i16 %i.j to float
  %i.l = fdiv float %i.k, 1.092300e+04            ; 2 uses
  %i.m = extractelement <2 x float> %i.g, i64 1   ; 2 uses
  %i.n = fsub nnan float 1.000000e+00, %i.m
  %i.o = fmul float %i.h, %i.n                    ; 6 uses
  %i.p = fneg float %i.m
  %i.q = fsub nnan float 1.000000e+00, %i.l
  %i.r = insertelement <2 x float> poison, float %i.p, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = insertelement <2 x float> poison, float %i.l, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.q, i64 1
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> %i.u, <2 x float> splat (float 1.000000e+00)) ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.g, %i.v
  %i.w = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %shift = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop53 = fmul <2 x float> %i.g, %shift
  %i.x = extractelement <2 x float> %foldExtExtBinop53, i64 0 ; 3 uses
  switch i16 %i.i, label %bb.h [
    i16 1, label %bb.c
    i16 2, label %bb.d
    i16 3, label %bb.e
    i16 4, label %bb.f
    i16 5, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.b
  %.043 = phi float [ %i.h, %bb.g ], [ %i.w, %bb.c ], [ %i.o, %bb.d ], [ %i.o, %bb.e ], [ %i.x, %bb.f ], [ %i.h, %bb.b ]
  %.042 = phi float [ %i.o, %bb.g ], [ %i.h, %bb.c ], [ %i.h, %bb.d ], [ %i.w, %bb.e ], [ %i.o, %bb.f ], [ %i.x, %bb.b ]
  %.0 = phi float [ %i.w, %bb.g ], [ %i.o, %bb.c ], [ %i.x, %bb.d ], [ %i.h, %bb.e ], [ %i.h, %bb.f ], [ %i.o, %bb.b ]
  %i.y = fmul float %.043, 6.553500e+04
  %i.z = fptoui float %i.y to i16                 ; 2 uses
  store i16 %i.z, ptr %0, align 2, !tbaa !8
  %i.aa = fmul float %.042, 6.553500e+04
  %i.ab = fptoui float %i.aa to i16               ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.ab, ptr %i.ac, align 2, !tbaa !11
  %i.ad = fmul float %.0, 6.553500e+04
  %i.ae = fptoui float %i.ad to i16               ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %i.ae, ptr %i.af, align 2, !tbaa !12
  %i.ag = icmp ne i16 %i.z, %i.ab
  %i.ah = icmp ne i16 %i.ab, %i.ae
  %brmerge = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %brmerge, label %gx_color_from_rgb.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread50
  %i.ai = phi i16 [ %3, %.thread50 ], [ %i.ae, %bb.h ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %i.ai, ptr %i.aj, align 2, !tbaa !13
  br label %gx_color_from_rgb.exit

gx_color_from_rgb.exit:                           ; preds = %bb.h, %bb.i
  %.sink11.i = phi i8 [ 1, %bb.i ], [ 0, %bb.h ]  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sink11.i, ptr %i.ak, align 1, !tbaa !14
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink11.i, ptr %i.al, align 2, !tbaa !15
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @gx_sort_ht_order(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i32 %1, 2
  br i1 %i.a, label %bb.k, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.b = add i32 %1, -1
  %i.c = lshr i32 %1, 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.critedge
  %.046 = phi i32 [ %.147, %.critedge ], [ %i.c, %.preheader.preheader ] ; 2 uses
  %.044 = phi i32 [ %.145, %.critedge ], [ %i.b, %.preheader.preheader ] ; 3 uses
  %.not = icmp eq i32 %.046, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.d = add nsw i32 %.046, -1                    ; 2 uses
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e
  %i.g = load <2 x i16>, ptr %i.f, align 2, !tbaa !16
  br label %bb.e

bb.c:                                             ; preds = %.preheader
  %i.h = zext i32 %.044 to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.h ; 2 uses
  %i.j = load <2 x i16>, ptr %i.i, align 2, !tbaa !16 ; 3 uses
  %i.k = load i32, ptr %0, align 2
  store i32 %i.k, ptr %i.i, align 2
  %i.l = add i32 %.044, -1                        ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = extractelement <2 x i16> %i.j, i64 0
  store i16 %i.n, ptr %0, align 2, !tbaa !16
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.o = extractelement <2 x i16> %i.j, i64 1
  store i16 %i.o, ptr %.sroa.6.0..sroa_idx8, align 2, !tbaa !16
  br label %bb.k

bb.e:                                             ; preds = %bb.c, %bb.b
  %.147 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.c ]   ; 2 uses
  %.145 = phi i32 [ %.044, %bb.b ], [ %i.l, %bb.c ] ; 3 uses
  %i.p = phi <2 x i16> [ %i.g, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %i.q = extractelement <2 x i16> %i.p, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %bb.e
  %.043 = phi i32 [ %.147, %bb.e ], [ %.1, %bb.j ] ; 3 uses
  %i.r = shl i32 %.043, 1                         ; 2 uses
  %i.s = or disjoint i32 %i.r, 1                  ; 4 uses
  %i.t = icmp ult i32 %i.s, %.145
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = zext i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.x = load i16, ptr %i.w, align 2, !tbaa !17
  %i.y = add nuw i32 %i.r, 2                      ; 2 uses
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !17
  %i.ad = icmp ult i16 %i.x, %i.ac
  %spec.select = select i1 %i.ad, i32 %i.y, i32 %i.s
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi i32 [ %i.s, %bb.f ], [ %spec.select, %bb.g ] ; 3 uses
  %i.ae = icmp ugt i32 %.1, %.145
  br i1 %i.ae, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = zext i32 %.1 to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !17
  %.not51 = icmp ult i16 %i.q, %i.ai
  br i1 %.not51, label %bb.j, label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.h
  %i.aj = zext i32 %.043 to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aj
  store <2 x i16> %i.p, ptr %i.ak, align 2, !tbaa !16
  br label %.preheader

bb.j:                                             ; preds = %bb.i
  %i.al = zext i32 %.043 to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.al
end_hunk_0
