Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/exif-utils?download=true
inline.NumInlined: 25
begin_hunk_0_@exif_set_short:bb.a

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %exif_set_sshort.exit [
    i32 0, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.a = lshr i16 %2, 8
  %i.b = trunc nuw i16 %i.a to i8
  store i8 %i.b, ptr %0, align 1, !tbaa !8
  %i.c = trunc i16 %2 to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.c, ptr %i.d, align 1, !tbaa !8
  br label %exif_set_sshort.exit

bb.d:                                             ; preds = %bb.b
  store i16 %2, ptr %0, align 1
  br label %exif_set_sshort.exit

exif_set_sshort.exit:                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define signext i16 @exif_get_sshort(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.e [
    i32 0, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.a = load i8, ptr %0, align 1, !tbaa !8
  %i.b = zext i8 %i.a to i16
  %i.c = shl nuw i16 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !8
  %i.f = zext i8 %i.e to i16
  %i.g = or disjoint i16 %i.c, %i.f
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = load i16, ptr %0, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %bb.d, %bb.c
  %.0 = phi i16 [ 0, %bb.a ], [ %i.g, %bb.c ], [ %i.h, %bb.d ], [ 0, %bb.b ]
  ret i16 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @exif_set_sshort(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1, i16 noundef signext %2) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.e [
    i32 0, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.a = lshr i16 %2, 8
  %i.b = trunc nuw i16 %i.a to i8
  store i8 %i.b, ptr %0, align 1, !tbaa !8
  %i.c = trunc i16 %2 to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.c, ptr %i.d, align 1, !tbaa !8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i16 %2, ptr %0, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @exif_get_long(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %exif_get_slong.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %exif_get_slong.exit [
    i32 0, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.a = load i32, ptr %0, align 1
  %i.b = tail call i32 @llvm.bswap.i32(i32 %i.a)
  br label %exif_get_slong.exit

bb.d:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 1
  br label %exif_get_slong.exit

exif_get_slong.exit:                              ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ 0, %bb.a ], [ %i.b, %bb.c ], [ %i.c, %bb.d ], [ 0, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @exif_set_long(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %exif_set_slong.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %exif_set_slong.exit [
    i32 0, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.a = lshr i32 %2, 24
  %i.b = trunc nuw i32 %i.a to i8
  store i8 %i.b, ptr %0, align 1, !tbaa !8
  %i.c = lshr i32 %2, 16
  %i.d = trunc i32 %i.c to i8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.d, ptr %i.e, align 1, !tbaa !8
  %i.f = lshr i32 %2, 8
  %i.g = trunc i32 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.g, ptr %i.h, align 1, !tbaa !8
  %i.i = trunc i32 %2 to i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.i, ptr %i.j, align 1, !tbaa !8
  br label %exif_set_slong.exit

bb.d:                                             ; preds = %bb.b
  store i32 %2, ptr %0, align 1
  br label %exif_set_slong.exit

exif_set_slong.exit:                              ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @exif_get_rational(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %exif_get_long.exit7 [
    i32 0, label %.thread9
    i32 1, label %.thread11
  ]

.thread9:                                         ; preds = %bb.b
  %i.a = load i32, ptr %0, align 1
  %i.b = tail call i32 @llvm.bswap.i32(i32 %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 1
  %i.e = tail call i32 @llvm.bswap.i32(i32 %i.d)
  br label %exif_get_long.exit7

.thread11:                                        ; preds = %bb.b
  %i.f = load i32, ptr %0, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 1
  br label %exif_get_long.exit7

exif_get_long.exit7:                              ; preds = %bb.b, %.thread9, %.thread11
  %.shrunk = phi i32 [ %i.f, %.thread11 ], [ %i.b, %.thread9 ], [ 0, %bb.b ]
  %.0.i.i6 = phi i32 [ %i.h, %.thread11 ], [ %i.e, %.thread9 ], [ 0, %bb.b ]
  %i.i = zext i32 %.shrunk to i64
  %i.j = zext i32 %.0.i.i6 to i64
  %i.k = shl nuw i64 %i.j, 32
  %i.l = or disjoint i64 %i.k, %i.i
  br label %.thread

.thread:                                          ; preds = %bb.a, %exif_get_long.exit7
  %.sroa.2.0.insert.ext = phi i64 [ %i.l, %exif_get_long.exit7 ], [ 0, %bb.a ]
  ret i64 %.sroa.2.0.insert.ext
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @exif_set_rational(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1, i64 %2) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %exif_set_long.exit5, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %exif_set_long.exit5 [
    i32 0, label %exif_set_long.exit.thread
    i32 1, label %exif_set_long.exit.thread6
  ]

exif_set_long.exit.thread:                        ; preds = %bb.b
  %3 = bitcast i64 %2 to <8 x i8>
  %4 = shufflevector <8 x i8> %3, <8 x i8> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  store <8 x i8> %4, ptr %0, align 1, !tbaa !8
  br label %exif_set_long.exit5

exif_set_long.exit.thread6:                       ; preds = %bb.b
  store i64 %2, ptr %0, align 1
  br label %exif_set_long.exit5

exif_set_long.exit5:                              ; preds = %bb.b, %exif_set_long.exit.thread6, %exif_set_long.exit.thread, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @exif_get_slong(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.e [
    i32 0, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.a = load i32, ptr %0, align 1
  %i.b = tail call i32 @llvm.bswap.i32(i32 %i.a)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ %i.b, %bb.c ], [ %i.c, %bb.d ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @exif_set_slong(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.e [
    i32 0, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.a = lshr i32 %2, 24
  %i.b = trunc nuw i32 %i.a to i8
  store i8 %i.b, ptr %0, align 1, !tbaa !8
  %i.c = lshr i32 %2, 16
  %i.d = trunc i32 %i.c to i8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.d, ptr %i.e, align 1, !tbaa !8
  %i.f = lshr i32 %2, 8
  %i.g = trunc i32 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.g, ptr %i.h, align 1, !tbaa !8
  %i.i = trunc i32 %2 to i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.i, ptr %i.j, align 1, !tbaa !8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i32 %2, ptr %0, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @exif_get_srational(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %exif_get_slong.exit7 [
    i32 0, label %.thread9
    i32 1, label %.thread11
  ]

.thread9:                                         ; preds = %bb.b
  %i.a = load i32, ptr %0, align 1
  %i.b = tail call i32 @llvm.bswap.i32(i32 %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 1
  %i.e = tail call i32 @llvm.bswap.i32(i32 %i.d)
  br label %exif_get_slong.exit7

.thread11:                                        ; preds = %bb.b
  %i.f = load i32, ptr %0, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 1
  br label %exif_get_slong.exit7

exif_get_slong.exit7:                             ; preds = %bb.b, %.thread9, %.thread11
  %.shrunk = phi i32 [ %i.f, %.thread11 ], [ %i.b, %.thread9 ], [ 0, %bb.b ]
  %.0.i6 = phi i32 [ %i.h, %.thread11 ], [ %i.e, %.thread9 ], [ 0, %bb.b ]
  %i.i = zext i32 %.shrunk to i64
  %i.j = zext i32 %.0.i6 to i64
  %i.k = shl nuw i64 %i.j, 32
  %i.l = or disjoint i64 %i.k, %i.i
  br label %.thread

.thread:                                          ; preds = %bb.a, %exif_get_slong.exit7
  %.sroa.2.0.insert.ext = phi i64 [ %i.l, %exif_get_slong.exit7 ], [ 0, %bb.a ]
  ret i64 %.sroa.2.0.insert.ext
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @exif_set_srational(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1, i64 %2) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %exif_set_slong.exit5, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %exif_set_slong.exit5 [
    i32 0, label %exif_set_slong.exit.thread
    i32 1, label %exif_set_slong.exit.thread6
  ]

exif_set_slong.exit.thread:                       ; preds = %bb.b
  %3 = bitcast i64 %2 to <8 x i8>
  %4 = shufflevector <8 x i8> %3, <8 x i8> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  store <8 x i8> %4, ptr %0, align 1, !tbaa !8
  br label %exif_set_slong.exit5

exif_set_slong.exit.thread6:                      ; preds = %bb.b
  store i64 %2, ptr %0, align 1
  br label %exif_set_slong.exit5

exif_set_slong.exit5:                             ; preds = %bb.b, %exif_set_slong.exit.thread6, %exif_set_slong.exit.thread, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @exif_convert_utf16_to_utf8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp slt i32 %2, 1
  br i1 %i.a, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not.i.i41 = icmp eq ptr %1, null
  br i1 %.not.i.i41, label %exif_get_short.exit.thread, label %exif_get_short.exit.preheader

exif_get_short.exit.preheader:                    ; preds = %.preheader
  %i.b = load i16, ptr %1, align 1                ; 2 uses
  %.not54 = icmp eq i16 %i.b, 0
  br i1 %.not54, label %exif_get_short.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %exif_get_short.exit.preheader, %exif_get_short.exit
  %i.c = phi i16 [ %i.ah, %exif_get_short.exit ], [ %i.b, %exif_get_short.exit.preheader ] ; 8 uses
  %.0284257 = phi ptr [ %.129, %exif_get_short.exit ], [ %0, %exif_get_short.exit.preheader ] ; 12 uses
  %.0264356 = phi ptr [ %i.ag, %exif_get_short.exit ], [ %1, %exif_get_short.exit.preheader ]
  %.0254455 = phi i32 [ %i.af, %exif_get_short.exit ], [ %2, %exif_get_short.exit.preheader ] ; 4 uses
  %i.d = icmp ult i16 %i.c, 128
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.e = icmp sgt i32 %.0254455, 1
  br i1 %i.e, label %bb.c, label %exif_get_short.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = trunc nuw nsw i16 %i.c to i8
  %i.g = getelementptr inbounds nuw i8, ptr %.0284257, i64 1
  store i8 %i.f, ptr %.0284257, align 1, !tbaa !8
  br label %exif_get_short.exit

bb.d:                                             ; preds = %.lr.ph
  %i.h = icmp ult i16 %i.c, 2048
  br i1 %i.h, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = icmp sgt i32 %.0254455, 2
  br i1 %i.i, label %bb.f, label %exif_get_short.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.j = lshr i16 %i.c, 6
  %i.k = trunc nuw nsw i16 %i.j to i8
  %i.l = or disjoint i8 %i.k, -64
  %i.m = getelementptr inbounds nuw i8, ptr %.0284257, i64 1
  store i8 %i.l, ptr %.0284257, align 1, !tbaa !8
  %i.n = trunc i16 %i.c to i8
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128
  %i.q = getelementptr inbounds nuw i8, ptr %.0284257, i64 2
  store i8 %i.p, ptr %i.m, align 1, !tbaa !8
  br label %exif_get_short.exit

bb.g:                                             ; preds = %bb.d
  %i.r = icmp sgt i32 %.0254455, 3
  br i1 %i.r, label %bb.h, label %exif_get_short.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.s = lshr i16 %i.c, 12
  %i.t = trunc nuw nsw i16 %i.s to i8
  %i.u = or disjoint i8 %i.t, -32
  %i.v = getelementptr inbounds nuw i8, ptr %.0284257, i64 1
  store i8 %i.u, ptr %.0284257, align 1, !tbaa !8
  %i.w = lshr i16 %i.c, 6
  %i.x = trunc i16 %i.w to i8
  %i.y = and i8 %i.x, 63
  %i.z = or disjoint i8 %i.y, -128
  %i.aa = getelementptr inbounds nuw i8, ptr %.0284257, i64 2
  store i8 %i.z, ptr %i.v, align 1, !tbaa !8
  %i.ab = trunc i16 %i.c to i8
  %i.ac = and i8 %i.ab, 63
  %i.ad = or disjoint i8 %i.ac, -128
  %i.ae = getelementptr inbounds nuw i8, ptr %.0284257, i64 3
  store i8 %i.ad, ptr %i.aa, align 1, !tbaa !8
  br label %exif_get_short.exit

exif_get_short.exit:                              ; preds = %bb.c, %bb.h, %bb.f
  %.sink = phi i32 [ -1, %bb.c ], [ -3, %bb.h ], [ -2, %bb.f ]
  %.129 = phi ptr [ %i.g, %bb.c ], [ %i.ae, %bb.h ], [ %i.q, %bb.f ] ; 2 uses
  %i.af = add nsw i32 %.0254455, %.sink
  %i.ag = getelementptr inbounds nuw i8, ptr %.0264356, i64 2 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 1            ; 2 uses
  %.not = icmp eq i16 %i.ah, 0
  br i1 %.not, label %exif_get_short.exit.thread, label %.lr.ph

exif_get_short.exit.thread:                       ; preds = %exif_get_short.exit, %bb.b, %bb.e, %bb.g, %exif_get_short.exit.preheader, %.preheader
  %.028.lcssa = phi ptr [ %0, %.preheader ], [ %0, %exif_get_short.exit.preheader ], [ %.0284257, %bb.g ], [ %.0284257, %bb.e ], [ %.0284257, %bb.b ], [ %.129, %exif_get_short.exit ]
  store i8 0, ptr %.028.lcssa, align 1, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %exif_get_short.exit.thread
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = distinct !{!9, !15}
!10 = distinct !{!10, !15}
!11 = distinct !{!11, !15}
!12 = distinct !{!12, !15}
!13 = distinct !{!13, !15}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
end_hunk_0
