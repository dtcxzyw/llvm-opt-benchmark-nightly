loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@PatchMatrix:bb.a
  %or.cond48.40 = icmp ugt i16 %i.ed, 255
  br i1 %or.cond48.40, label %bb.j, label %.preheader.41

.preheader.41:                                    ; preds = %.preheader.40
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ay, i64 82
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !15
  %or.cond48.41 = icmp ugt i16 %i.ef, 255
  br i1 %or.cond48.41, label %bb.j, label %.preheader.42

.preheader.42:                                    ; preds = %.preheader.41
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ay, i64 84
  %i.eh = load i16, ptr %i.eg, align 4, !tbaa !15
  %or.cond48.42 = icmp ugt i16 %i.eh, 255
  br i1 %or.cond48.42, label %bb.j, label %.preheader.43

.preheader.43:                                    ; preds = %.preheader.42
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ay, i64 86
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !15
  %or.cond48.43 = icmp ugt i16 %i.ej, 255
  br i1 %or.cond48.43, label %bb.j, label %.preheader.44

.preheader.44:                                    ; preds = %.preheader.43
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ay, i64 88
  %i.el = load i16, ptr %i.ek, align 8, !tbaa !15
  %or.cond48.44 = icmp ugt i16 %i.el, 255
  br i1 %or.cond48.44, label %bb.j, label %.preheader.45

.preheader.45:                                    ; preds = %.preheader.44
  %i.em = getelementptr inbounds nuw i8, ptr %i.ay, i64 90
  %i.en = load i16, ptr %i.em, align 2, !tbaa !15
  %or.cond48.45 = icmp ugt i16 %i.en, 255
  br i1 %or.cond48.45, label %bb.j, label %.preheader.46

.preheader.46:                                    ; preds = %.preheader.45
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ay, i64 92
  %i.ep = load i16, ptr %i.eo, align 4, !tbaa !15
  %or.cond48.46 = icmp ugt i16 %i.ep, 255
  br i1 %or.cond48.46, label %bb.j, label %.preheader.47

.preheader.47:                                    ; preds = %.preheader.46
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ay, i64 94
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !15
  %or.cond48.47 = icmp ugt i16 %i.er, 255
  br i1 %or.cond48.47, label %bb.j, label %.preheader.48

.preheader.48:                                    ; preds = %.preheader.47
  %i.es = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  %i.et = load i16, ptr %i.es, align 16, !tbaa !15
  %or.cond48.48 = icmp ugt i16 %i.et, 255
  br i1 %or.cond48.48, label %bb.j, label %.preheader.49

.preheader.49:                                    ; preds = %.preheader.48
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ay, i64 98
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !15
  %or.cond48.49 = icmp ugt i16 %i.ev, 255
  br i1 %or.cond48.49, label %bb.j, label %.preheader.50

.preheader.50:                                    ; preds = %.preheader.49
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ay, i64 100
  %i.ex = load i16, ptr %i.ew, align 4, !tbaa !15
  %or.cond48.50 = icmp ugt i16 %i.ex, 255
  br i1 %or.cond48.50, label %bb.j, label %.preheader.51

.preheader.51:                                    ; preds = %.preheader.50
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ay, i64 102
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !15
  %or.cond48.51 = icmp ugt i16 %i.ez, 255
  br i1 %or.cond48.51, label %bb.j, label %.preheader.52

.preheader.52:                                    ; preds = %.preheader.51
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ay, i64 104
  %i.fb = load i16, ptr %i.fa, align 8, !tbaa !15
  %or.cond48.52 = icmp ugt i16 %i.fb, 255
  br i1 %or.cond48.52, label %bb.j, label %.preheader.53

.preheader.53:                                    ; preds = %.preheader.52
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ay, i64 106
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !15
  %or.cond48.53 = icmp ugt i16 %i.fd, 255
  br i1 %or.cond48.53, label %bb.j, label %.preheader.54

.preheader.54:                                    ; preds = %.preheader.53
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ay, i64 108
  %i.ff = load i16, ptr %i.fe, align 4, !tbaa !15
  %or.cond48.54 = icmp ugt i16 %i.ff, 255
  br i1 %or.cond48.54, label %bb.j, label %.preheader.55

.preheader.55:                                    ; preds = %.preheader.54
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ay, i64 110
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !15
  %or.cond48.55 = icmp ugt i16 %i.fh, 255
  br i1 %or.cond48.55, label %bb.j, label %.preheader.56

.preheader.56:                                    ; preds = %.preheader.55
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ay, i64 112
  %i.fj = load i16, ptr %i.fi, align 16, !tbaa !15
  %or.cond48.56 = icmp ugt i16 %i.fj, 255
  br i1 %or.cond48.56, label %bb.j, label %.preheader.57

.preheader.57:                                    ; preds = %.preheader.56
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ay, i64 114
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !15
  %or.cond48.57 = icmp ugt i16 %i.fl, 255
  br i1 %or.cond48.57, label %bb.j, label %.preheader.58

.preheader.58:                                    ; preds = %.preheader.57
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ay, i64 116
  %i.fn = load i16, ptr %i.fm, align 4, !tbaa !15
  %or.cond48.58 = icmp ugt i16 %i.fn, 255
  br i1 %or.cond48.58, label %bb.j, label %.preheader.59

.preheader.59:                                    ; preds = %.preheader.58
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ay, i64 118
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !15
  %or.cond48.59 = icmp ugt i16 %i.fp, 255
  br i1 %or.cond48.59, label %bb.j, label %.preheader.60

.preheader.60:                                    ; preds = %.preheader.59
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  %i.fr = load i16, ptr %i.fq, align 8, !tbaa !15
  %or.cond48.60 = icmp ugt i16 %i.fr, 255
  br i1 %or.cond48.60, label %bb.j, label %.preheader.61

.preheader.61:                                    ; preds = %.preheader.60
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ay, i64 122
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !15
  %or.cond48.61 = icmp ugt i16 %i.ft, 255
  br i1 %or.cond48.61, label %bb.j, label %.preheader.62

.preheader.62:                                    ; preds = %.preheader.61
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ay, i64 124
  %i.fv = load i16, ptr %i.fu, align 4, !tbaa !15
  %or.cond48.62 = icmp ugt i16 %i.fv, 255
  br i1 %or.cond48.62, label %bb.j, label %.preheader.63

.preheader.63:                                    ; preds = %.preheader.62
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ay, i64 126
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !15
  %or.cond48.63 = icmp ugt i16 %i.fx, 255
  br i1 %or.cond48.63, label %bb.j, label %.critedge50

bb.j:                                             ; preds = %.preheader.63, %.preheader.62, %.preheader.61, %.preheader.60, %.preheader.59, %.preheader.58, %.preheader.57, %.preheader.56, %.preheader.55, %.preheader.54, %.preheader.53, %.preheader.52, %.preheader.51, %.preheader.50, %.preheader.49, %.preheader.48, %.preheader.47, %.preheader.46, %.preheader.45, %.preheader.44, %.preheader.43, %.preheader.42, %.preheader.41, %.preheader.40, %.preheader.39, %.preheader.38, %.preheader.37, %.preheader.36, %.preheader.35, %.preheader.34, %.preheader.33, %.preheader.32, %.preheader.31, %.preheader.30, %.preheader.29, %.preheader.28, %.preheader.27, %.preheader.26, %.preheader.25, %.preheader.24, %.preheader.23, %.preheader.22, %.preheader.21, %.preheader.20, %.preheader.19, %.preheader.18, %.preheader.17, %.preheader.16, %.preheader.15, %.preheader.14, %.preheader.13, %.preheader.12, %.preheader.11, %.preheader.10, %.preheader.9, %.preheader.8, %.preheader.7, %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %i.fy = getelementptr inbounds nuw [20 x i8], ptr @MatrixType8x8, i64 %indvars.iv
  %i.fz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull %i.fy) ; 0 uses
  %i.ga = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7) ; 0 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ay, ptr noundef nonnull align 16 dereferenceable(128) @Quant8_intra_default, i64 128, i1 false)
  br label %.critedge50

bb.k:                                             ; preds = %bb.i
  %i.gb = getelementptr inbounds nuw [20 x i8], ptr @MatrixType8x8, i64 %indvars.iv
  %i.gc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull %i.gb) ; 0 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ay, ptr noundef nonnull align 16 dereferenceable(128) @Quant8_intra_default, i64 128, i1 false)
  br label %.critedge50

.critedge50:                                      ; preds = %.preheader.63, %bb.g, %bb.e, %.critedge, %bb.h, %bb.k, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %bb.l, label %bb.b, !llvm.loop !20

bb.l:                                             ; preds = %.critedge50
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @allocate_QMatrix() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @input, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5256
  %i.c = load i32, ptr %i.b, align 8, !tbaa !21
  %i.d = mul i32 %i.c, 6
  %i.e = add i32 %i.d, 4                          ; 4 uses
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 2                      ; 2 uses
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #14 ; 2 uses
  store ptr %i.h, ptr @qp_per_matrix, align 8, !tbaa !25
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @no_mem_exit(ptr noundef nonnull @.str.9) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.g) #14 ; 2 uses
  store ptr %i.j, ptr @qp_rem_matrix, align 8, !tbaa !25
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @no_mem_exit(ptr noundef nonnull @.str.9) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = icmp sgt i32 %i.e, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.m = load ptr, ptr @qp_per_matrix, align 8, !tbaa !25 ; 3 uses
  %i.n = load ptr, ptr @qp_rem_matrix, align 8, !tbaa !25 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.e, 8
  %i.o = ptrtoaddr ptr %i.n to i64
  %i.p = ptrtoaddr ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.o
  %diff.check = icmp ugt i64 %i.q, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %vec.ind.frozen = freeze <4 x i32> %vec.ind     ; 2 uses
  %i.r = udiv <4 x i32> %vec.ind.frozen, splat (i32 6) ; 2 uses
  %step.add.frozen = freeze <4 x i32> %step.add   ; 2 uses
  %i.s = udiv <4 x i32> %step.add.frozen, splat (i32 6) ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x i32> %i.r, ptr %i.t, align 4, !tbaa !4
  store <4 x i32> %i.s, ptr %i.u, align 4, !tbaa !4
  %i.v = mul <4 x i32> %i.r, splat (i32 6)
  %.decomposed = sub <4 x i32> %vec.ind.frozen, %i.v
  %i.w = mul <4 x i32> %i.s, splat (i32 6)
  %.decomposed13 = sub <4 x i32> %step.add.frozen, %i.w
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <4 x i32> %.decomposed, ptr %i.x, align 4, !tbaa !4
  store <4 x i32> %.decomposed13, ptr %i.y, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.aa = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ab = udiv i32 %i.aa, 6
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !4
  %i.ad = urem i32 %i.aa, 6
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !29

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.e
  %i.af = tail call i32 @get_mem4Dint(ptr noundef nonnull @LevelScale4x4Luma, i32 noundef 2, i32 noundef 6, i32 noundef 4, i32 noundef 4) #13 ; 0 uses
  %i.ag = tail call i32 @get_mem5Dint(ptr noundef nonnull @LevelScale4x4Chroma, i32 noundef 2, i32 noundef 2, i32 noundef 6, i32 noundef 4, i32 noundef 4) #13 ; 0 uses
  %i.ah = tail call i32 @get_mem4Dint(ptr noundef nonnull @LevelScale8x8Luma, i32 noundef 2, i32 noundef 6, i32 noundef 8, i32 noundef 8) #13 ; 0 uses
  %i.ai = tail call i32 @get_mem4Dint(ptr noundef nonnull @InvLevelScale4x4Luma, i32 noundef 2, i32 noundef 6, i32 noundef 4, i32 noundef 4) #13 ; 0 uses
  %i.aj = tail call i32 @get_mem5Dint(ptr noundef nonnull @InvLevelScale4x4Chroma, i32 noundef 2, i32 noundef 2, i32 noundef 6, i32 noundef 4, i32 noundef 4) #13 ; 0 uses
  %i.ak = tail call i32 @get_mem4Dint(ptr noundef nonnull @InvLevelScale8x8Luma, i32 noundef 2, i32 noundef 6, i32 noundef 8, i32 noundef 8) #13 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #5

declare i32 @get_mem4Dint(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i32 @get_mem5Dint(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @free_QMatrix() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @qp_rem_matrix, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.a) #13
  %i.b = load ptr, ptr @qp_per_matrix, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.b) #13
  %i.c = load ptr, ptr @LevelScale4x4Luma, align 8, !tbaa !30
  tail call void @free_mem4Dint(ptr noundef %i.c, i32 noundef 2, i32 noundef 6) #13
  %i.d = load ptr, ptr @LevelScale4x4Chroma, align 8, !tbaa !35
  tail call void @free_mem5Dint(ptr noundef %i.d, i32 noundef 2, i32 noundef 2, i32 noundef 6) #13
  %i.e = load ptr, ptr @LevelScale8x8Luma, align 8, !tbaa !30
  tail call void @free_mem4Dint(ptr noundef %i.e, i32 noundef 2, i32 noundef 6) #13
  %i.f = load ptr, ptr @InvLevelScale4x4Luma, align 8, !tbaa !30
  tail call void @free_mem4Dint(ptr noundef %i.f, i32 noundef 2, i32 noundef 6) #13
  %i.g = load ptr, ptr @InvLevelScale4x4Chroma, align 8, !tbaa !35
  tail call void @free_mem5Dint(ptr noundef %i.g, i32 noundef 2, i32 noundef 2, i32 noundef 6) #13
  %i.h = load ptr, ptr @InvLevelScale8x8Luma, align 8, !tbaa !30
  tail call void @free_mem4Dint(ptr noundef %i.h, i32 noundef 2, i32 noundef 6) #13
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

declare void @free_mem4Dint(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @free_mem5Dint(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @Init_QMatrix() local_unnamed_addr #3 {
bb.a:
  tail call void @allocate_QMatrix()
  %i.a = load ptr, ptr @input, align 8, !tbaa !19 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5208
  %i.c = load i32, ptr %i.b, align 8, !tbaa !38
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1304
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull %i.d) ; 0 uses
  %i.f = load ptr, ptr @input, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1304
  %i.h = tail call ptr @GetConfigFileContent(ptr noundef nonnull %i.g, i32 noundef 0) #13 ; 4 uses
  %.not4 = icmp eq ptr %i.h, null
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #12
  %i.j = trunc i64 %i.i to i32
  tail call void @ParseMatrix(ptr noundef nonnull %i.h, i32 noundef %i.j)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef nonnull @errortext) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @PatchMatrix()
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) @UseDefaultScalingMatrix4x4Flag, i8 0, i64 12, i1 false)
  store i16 0, ptr getelementptr inbounds nuw (i8, ptr @UseDefaultScalingMatrix8x8Flag, i64 2), align 2, !tbaa !15
  store i16 0, ptr @UseDefaultScalingMatrix8x8Flag, align 2, !tbaa !15
  tail call void @free(ptr noundef %i.h) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret void
}

declare ptr @GetConfigFileContent(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @CalculateQuantParam() local_unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr @active_sps, align 8, !tbaa !19 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.c = load i32, ptr %i.b, align 4, !tbaa !39
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %.loopexit307

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @active_pps, align 8, !tbaa !19 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !43
  %.not279 = icmp eq i32 %i.f, 0
  br i1 %.not279, label %.preheader302, label %.critedge.loopexit

.preheader302:                                    ; preds = %bb.b
  %i.g = load ptr, ptr @LevelScale4x4Luma, align 8, !tbaa !30 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !45
  %i.j = load ptr, ptr @InvLevelScale4x4Luma, align 8, !tbaa !30 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !45
  %i.m = load ptr, ptr @LevelScale4x4Chroma, align 8, !tbaa !35 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !30   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !45
  %i.q = load ptr, ptr @InvLevelScale4x4Chroma, align 8, !tbaa !35 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !30   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !45
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !30   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !45
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !45
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !45
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !45
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !45
  %i.ah = load ptr, ptr %i.z, align 8, !tbaa !45
  br label %.preheader301

.loopexit307:                                     ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.0.0.copyload = load i32, ptr %i.ai, align 4, !tbaa !4 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %.sroa.17.0.copyload = load i32, ptr %.sroa.17.0..sroa_idx, align 4, !tbaa !4 ; 2 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %.pre = load ptr, ptr @active_pps, align 8, !tbaa !19 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 20
  %.pre351 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !43
  %i.aj = icmp eq i32 %.pre351, 0
  br i1 %i.aj, label %.critedge, label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %bb.b, %.loopexit307
  %.sroa.17.0360 = phi i32 [ %.sroa.17.0.copyload, %.loopexit307 ], [ 0, %bb.b ]
  %.sroa.0.0359 = phi i32 [ %.sroa.0.0.copyload, %.loopexit307 ], [ 0, %bb.b ]
  %i.ak = phi ptr [ %.pre, %.loopexit307 ], [ %i.d, %bb.b ] ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = or i32 %.sroa.0.0359, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.as = or i32 %.sroa.17.0360, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 44
  br label %.critedge

.preheader301:                                    ; preds = %.preheader302, %.preheader301
  %indvars.iv336 = phi i64 [ 0, %.preheader302 ], [ %indvars.iv.next337, %.preheader301 ] ; 15 uses
  %i.av = getelementptr inbounds nuw [64 x i8], ptr @quant_coef, i64 %indvars.iv336 ; 16 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv336
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !47 ; 4 uses
  %i.ay = getelementptr inbounds nuw [64 x i8], ptr @dequant_coef, i64 %indvars.iv336 ; 16 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv336
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !47 ; 4 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv336
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !47 ; 4 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv336
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !47 ; 4 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv336
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !47 ; 4 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv336
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !47 ; 4 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv336
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !47 ; 4 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv336
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !47 ; 4 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv336
end_hunk_0
