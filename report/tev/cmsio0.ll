Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/cmsio0?download=true
inline.NumInlined: 52
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_cmsWriteHeader:bb.a
  ret i32 %.040
}

declare void @_cmsEncodeDateTimeNumber(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_cmsDoubleTo15Fixed16(double noundef) local_unnamed_addr #2

declare ptr @cmsD50_XYZ() local_unnamed_addr #2

declare i32 @_cmsWriteUInt32Number(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @cmsGetHeaderRenderingIntent(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.b = load i32, ptr %i.a, align 4, !tbaa !62
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @cmsSetHeaderRenderingIntent(ptr nofree noundef writeonly captures(none) initializes((92, 96)) %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %1, ptr %i.a, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @cmsGetHeaderFlags(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.b = load i32, ptr %i.a, align 4, !tbaa !65
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @cmsSetHeaderFlags(ptr nofree noundef writeonly captures(none) initializes((100, 104)) %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %1, ptr %i.a, align 4, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @cmsGetHeaderManufacturer(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i32, ptr %i.a, align 8, !tbaa !67
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @cmsSetHeaderManufacturer(ptr nofree noundef writeonly captures(none) initializes((104, 108)) %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %1, ptr %i.a, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @cmsGetHeaderCreator(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load i32, ptr %i.a, align 8, !tbaa !45
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @cmsGetHeaderModel(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.b = load i32, ptr %i.a, align 4, !tbaa !69
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @cmsSetHeaderModel(ptr nofree noundef writeonly captures(none) initializes((108, 112)) %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %1, ptr %i.a, align 4, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @cmsGetHeaderAttributes(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8
  store i64 %i.b, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @cmsSetHeaderAttributes(ptr nofree noundef writeonly captures(none) initializes((112, 120)) %0, i64 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @cmsGetHeaderProfileID(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @cmsSetHeaderProfileID(ptr nofree noundef writeonly captures(none) initializes((124, 140)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i32 @cmsGetHeaderCreationDateTime(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 56)) %1) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @cmsGetPCS(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @cmsSetPCS(ptr nofree noundef writeonly captures(none) initializes((88, 92)) %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %1, ptr %i.a, align 8, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @cmsGetColorSpace(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.b = load i32, ptr %i.a, align 4, !tbaa !58
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @cmsSetColorSpace(ptr nofree noundef writeonly captures(none) initializes((84, 88)) %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %1, ptr %i.a, align 4, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @cmsGetDeviceClass(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i32, ptr %i.a, align 8, !tbaa !47
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @cmsSetDeviceClass(ptr nofree noundef writeonly captures(none) initializes((80, 84)) %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %1, ptr %i.a, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @cmsGetEncodedICCversion(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i32, ptr %i.a, align 4, !tbaa !43
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @cmsSetEncodedICCversion(ptr nofree noundef writeonly captures(none) initializes((76, 80)) %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %1, ptr %i.a, align 4, !tbaa !43
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define void @cmsSetProfileVersion(ptr nofree noundef writeonly captures(none) %0, double noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 8 uses
  %i.b = tail call double @llvm.fmuladd.f64(double %1, double 1.000000e+02, double 5.000000e-01)
  %i.c = tail call double @llvm.floor.f64(double %i.b)
  %i.d = fptoui double %i.c to i32                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %BaseToBase.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.a ] ; 3 uses
  %.01718.i = phi i32 [ %i.h, %.lr.ph.i ], [ %i.d, %bb.a ] ; 3 uses
  %i.e = urem i32 %.01718.i, 10
  %i.f = trunc nuw nsw i32 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  store i8 %i.f, ptr %i.g, align 1, !tbaa !27
  %i.h = udiv i32 %.01718.i, 10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 5 uses
  %i.i = icmp ugt i32 %.01718.i, 9
  br i1 %i.i, label %.lr.ph.i, label %.lr.ph22.i.preheader, !llvm.loop !112

.lr.ph22.i.preheader:                             ; preds = %.lr.ph.i
  %xtraiter = and i64 %indvars.iv.next.i, 3       ; 3 uses
  %i.j = icmp samesign ult i64 %indvars.iv.i, 3
  br i1 %i.j, label %.lr.ph22.i.epil.preheader, label %.lr.ph22.i.preheader.new

.lr.ph22.i.preheader.new:                         ; preds = %.lr.ph22.i.preheader
  %unroll_iter = and i64 %indvars.iv.next.i, 9223372036854775804
  br label %.lr.ph22.i

.lr.ph22.i:                                       ; preds = %.lr.ph22.i, %.lr.ph22.i.preheader.new
  %indvars.iv26.i = phi i64 [ %indvars.iv.next.i, %.lr.ph22.i.preheader.new ], [ %indvars.iv.next27.i.3, %.lr.ph22.i ] ; 4 uses
  %.021.i = phi i32 [ 0, %.lr.ph22.i.preheader.new ], [ %i.ag, %.lr.ph22.i ]
  %niter = phi i64 [ 0, %.lr.ph22.i.preheader.new ], [ %niter.next.3, %.lr.ph22.i ]
  %i.k = getelementptr i8, ptr %i.a, i64 %indvars.iv26.i
  %i.l = getelementptr i8, ptr %i.k, i64 -1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !27
  %i.n = sext i8 %i.m to i32
  %i.o = shl i32 %.021.i, 8
  %i.p = shl nsw i32 %i.n, 4
  %i.q = add i32 %i.o, %i.p
  %i.r = getelementptr i8, ptr %i.a, i64 %indvars.iv26.i
  %i.s = getelementptr i8, ptr %i.r, i64 -2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !27
  %i.u = sext i8 %i.t to i32
  %i.v = add i32 %i.q, %i.u
  %i.w = getelementptr i8, ptr %i.a, i64 %indvars.iv26.i
  %i.x = getelementptr i8, ptr %i.w, i64 -3
  %i.y = load i8, ptr %i.x, align 1, !tbaa !27
  %i.z = sext i8 %i.y to i32
  %indvars.iv.next27.i.3 = add nsw i64 %indvars.iv26.i, -4 ; 3 uses
  %i.aa = shl i32 %i.v, 8
  %i.ab = shl nsw i32 %i.z, 4
  %i.ac = add i32 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next27.i.3
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !27
  %i.af = sext i8 %i.ae to i32
  %i.ag = add i32 %i.ac, %i.af                    ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %BaseToBase.exit.loopexit.unr-lcssa, label %.lr.ph22.i, !llvm.loop !113

BaseToBase.exit.loopexit.unr-lcssa:               ; preds = %.lr.ph22.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %BaseToBase.exit.loopexit, label %.lr.ph22.i.epil.preheader

.lr.ph22.i.epil.preheader:                        ; preds = %BaseToBase.exit.loopexit.unr-lcssa, %.lr.ph22.i.preheader
  %indvars.iv26.i.epil.init = phi i64 [ %indvars.iv.next.i, %.lr.ph22.i.preheader ], [ %indvars.iv.next27.i.3, %BaseToBase.exit.loopexit.unr-lcssa ]
  %.021.i.epil.init = phi i32 [ 0, %.lr.ph22.i.preheader ], [ %i.ag, %BaseToBase.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod4)
  br label %.lr.ph22.i.epil

.lr.ph22.i.epil:                                  ; preds = %.lr.ph22.i.epil, %.lr.ph22.i.epil.preheader
  %indvars.iv26.i.epil = phi i64 [ %indvars.iv.next27.i.epil, %.lr.ph22.i.epil ], [ %indvars.iv26.i.epil.init, %.lr.ph22.i.epil.preheader ]
  %.021.i.epil = phi i32 [ %i.al, %.lr.ph22.i.epil ], [ %.021.i.epil.init, %.lr.ph22.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph22.i.epil ], [ 0, %.lr.ph22.i.epil.preheader ]
  %indvars.iv.next27.i.epil = add nsw i64 %indvars.iv26.i.epil, -1 ; 2 uses
  %i.ah = shl i32 %.021.i.epil, 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next27.i.epil
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !27
  %i.ak = sext i8 %i.aj to i32
  %i.al = add i32 %i.ah, %i.ak                    ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %BaseToBase.exit.loopexit, label %.lr.ph22.i.epil, !llvm.loop !114

BaseToBase.exit.loopexit:                         ; preds = %.lr.ph22.i.epil, %BaseToBase.exit.loopexit.unr-lcssa
  %.lcssa = phi i32 [ %i.ag, %BaseToBase.exit.loopexit.unr-lcssa ], [ %i.al, %.lr.ph22.i.epil ]
  %i.am = shl i32 %.lcssa, 16
  br label %BaseToBase.exit

BaseToBase.exit:                                  ; preds = %BaseToBase.exit.loopexit, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.am, %BaseToBase.exit.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %.0.lcssa.i, ptr %i.an, align 4, !tbaa !43
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #15

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define double @cmsGetProfileVersion(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.c = load i32, ptr %i.b, align 4, !tbaa !43   ; 7 uses
  %i.d = lshr i32 %i.c, 16                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %BaseToBase.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = trunc i32 %i.d to i8
  %i.f = and i8 %i.e, 15
  store i8 %i.f, ptr %i.a, align 16, !tbaa !27
  %i.g = icmp ugt i32 %i.c, 1048575
  br i1 %i.g, label %.lr.ph.i.1, label %.lr.ph22.i

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.h = lshr i32 %i.c, 20
  %i.i = trunc i32 %i.h to i8
  %i.j = and i8 %i.i, 15
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.k, align 1, !tbaa !27
  %i.l = icmp ugt i32 %i.c, 16777215
  br i1 %i.l, label %.lr.ph.i.2, label %.lr.ph22.i

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.m = lshr i32 %i.c, 24
  %i.n = trunc nuw i32 %i.m to i8
  %i.o = and i8 %i.n, 15
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.o, ptr %i.p, align 2, !tbaa !27
  %i.q = icmp ugt i32 %i.c, 268435455
  br i1 %i.q, label %.lr.ph.i.3, label %.lr.ph22.i

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.r = lshr i32 %i.c, 28
  %i.s = trunc nuw nsw i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.s, ptr %i.t, align 1, !tbaa !27
  br label %.lr.ph22.i

.lr.ph22.i:                                       ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3
  %i.u = phi i1 [ false, %.lr.ph.i ], [ true, %.lr.ph.i.1 ], [ true, %.lr.ph.i.2 ], [ true, %.lr.ph.i.3 ]
  %i.v = phi i1 [ false, %.lr.ph.i ], [ false, %.lr.ph.i.1 ], [ true, %.lr.ph.i.2 ], [ true, %.lr.ph.i.3 ]
  %i.w = phi i1 [ false, %.lr.ph.i ], [ false, %.lr.ph.i.1 ], [ false, %.lr.ph.i.2 ], [ true, %.lr.ph.i.3 ]
  %indvars.iv.next.i.lcssa = phi i64 [ 1, %.lr.ph.i ], [ 2, %.lr.ph.i.1 ], [ 3, %.lr.ph.i.2 ], [ 4, %.lr.ph.i.3 ] ; 4 uses
  %i.x = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.i.lcssa
  %i.y = getelementptr i8, ptr %i.x, i64 -1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !27
  %i.aa = sext i8 %i.z to i32                     ; 2 uses
  br i1 %i.u, label %.lr.ph22.i.1, label %BaseToBase.exit.loopexit

.lr.ph22.i.1:                                     ; preds = %.lr.ph22.i
  %i.ab = mul nsw i32 %i.aa, 10
  %i.ac = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.i.lcssa
  %i.ad = getelementptr i8, ptr %i.ac, i64 -2
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !27
  %i.af = sext i8 %i.ae to i32
  %i.ag = add nsw i32 %i.ab, %i.af                ; 2 uses
  br i1 %i.v, label %.lr.ph22.i.2, label %BaseToBase.exit.loopexit

.lr.ph22.i.2:                                     ; preds = %.lr.ph22.i.1
  %i.ah = mul nsw i32 %i.ag, 10
  %i.ai = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.i.lcssa
  %i.aj = getelementptr i8, ptr %i.ai, i64 -3
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !27
  %i.al = sext i8 %i.ak to i32
  %i.am = add nsw i32 %i.ah, %i.al                ; 2 uses
  br i1 %i.w, label %.lr.ph22.i.3, label %BaseToBase.exit.loopexit

.lr.ph22.i.3:                                     ; preds = %.lr.ph22.i.2
  %i.an = mul nsw i32 %i.am, 10
  %i.ao = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.i.lcssa
  %i.ap = getelementptr i8, ptr %i.ao, i64 -4
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !27
  %i.ar = sext i8 %i.aq to i32
  %i.as = add nsw i32 %i.an, %i.ar
  br label %BaseToBase.exit.loopexit

BaseToBase.exit.loopexit:                         ; preds = %.lr.ph22.i.3, %.lr.ph22.i.2, %.lr.ph22.i.1, %.lr.ph22.i
  %.lcssa = phi i32 [ %i.aa, %.lr.ph22.i ], [ %i.ag, %.lr.ph22.i.1 ], [ %i.am, %.lr.ph22.i.2 ], [ %i.as, %.lr.ph22.i.3 ]
  %i.at = uitofp i32 %.lcssa to double
  br label %BaseToBase.exit

BaseToBase.exit:                                  ; preds = %BaseToBase.exit.loopexit, %bb.a
  %.0.lcssa.i = phi double [ 0.000000e+00, %bb.a ], [ %i.at, %BaseToBase.exit.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.au = fdiv double %.0.lcssa.i, 1.000000e+02
  ret double %i.au
}

; Function Attrs: nounwind uwtable
define ptr @cmsOpenProfileFromIOhandlerTHR(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @_cmsMallocZero(ptr noundef %0, i32 noundef 3760) #18 ; 15 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %cmsCreateProfilePlaceholder.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 140
  store i32 0, ptr %i.d, align 4, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  store i32 34603008, ptr %i.e, align 4, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 1818455411, ptr %i.f, align 8, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i32 1818455411, ptr %i.g, align 8, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i32 1095782476, ptr %i.h, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
end_hunk_0
