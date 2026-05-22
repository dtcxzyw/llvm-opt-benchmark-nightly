inline.NumInlined: 21
inline.NumDeleted: 2
begin_hunk_0_@mbedtls_asn1_write_bitstring:bb.a

.thread30:                                        ; preds = %bb.c
  %i.k = trunc i64 %i.d to i8
  %i.l = getelementptr inbounds i8, ptr %i.e, i64 -1 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !9
  store i8 %i.k, ptr %i.l, align 1, !tbaa !12
  br label %.loopexit.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = add nsw i64 %i.b, -1                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !12
  %i.p = trunc i64 %i.d to i32
  %notmask = shl nsw i32 -1, %i.p
  %i.q = trunc i32 %notmask to i8
  %i.r = and i8 %i.o, %i.q
  %i.s = getelementptr inbounds i8, ptr %i.e, i64 -1 ; 2 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !9
  store i8 %i.r, ptr %i.s, align 1, !tbaa !12
  %i.t = load ptr, ptr %0, align 8, !tbaa !9
  %i.u = sub nsw i64 1, %i.b
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 %i.u ; 2 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %2, i64 %i.m, i1 false)
  %i.w = trunc i64 %i.d to i8
  %i.x = load ptr, ptr %0, align 8, !tbaa !9
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -1 ; 2 uses
  store ptr %i.y, ptr %0, align 8, !tbaa !9
  store i8 %i.w, ptr %i.y, align 1, !tbaa !12
  %i.z = icmp ugt i64 %i.a, 34359738359
  br i1 %i.z, label %_ZL30mbedtls_asn1_write_len_and_tagPPhPKhmh.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = icmp samesign ugt i64 %i.a, 1015
  br i1 %i.aa, label %.preheader23.i.i, label %.loopexit.i.i

.preheader23.i.i:                                 ; preds = %bb.e, %.preheader23.i.i
  %.025.i.i = phi i64 [ %i.ac, %.preheader23.i.i ], [ %i.j, %bb.e ]
  %.01724.i.i = phi i32 [ %i.ab, %.preheader23.i.i ], [ 1, %bb.e ]
  %i.ab = add nuw nsw i32 %.01724.i.i, 1          ; 2 uses
  %i.ac = lshr i64 %.025.i.i, 8                   ; 2 uses
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %.loopexit.i.i, label %.preheader23.i.i, !llvm.loop !7

.loopexit.i.i:                                    ; preds = %.preheader23.i.i, %.thread30, %bb.e
  %.1.i.i = phi i32 [ 1, %bb.e ], [ 1, %.thread30 ], [ %i.ab, %.preheader23.i.i ] ; 4 uses
  %i.ad = zext nneg i32 %.1.i.i to i64
  %i.ae = load ptr, ptr %0, align 8, !tbaa !9
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.h
  %i.ah = icmp slt i64 %i.ag, %i.ad
  br i1 %i.ah, label %_ZL30mbedtls_asn1_write_len_and_tagPPhPKhmh.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.loopexit.i.i, %.preheader.i.i
  %.018.i.i = phi i64 [ %i.al, %.preheader.i.i ], [ %i.j, %.loopexit.i.i ] ; 2 uses
  %i.ai = trunc i64 %.018.i.i to i8
  %i.aj = load ptr, ptr %0, align 8, !tbaa !9
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -1 ; 2 uses
  store ptr %i.ak, ptr %0, align 8, !tbaa !9
  store i8 %i.ai, ptr %i.ak, align 1, !tbaa !12
  %i.al = lshr i64 %.018.i.i, 8                   ; 2 uses
  %.not22.i.i = icmp eq i64 %i.al, 0
  br i1 %.not22.i.i, label %bb.f, label %.preheader.i.i, !llvm.loop !13

bb.f:                                             ; preds = %.preheader.i.i
  %i.am = icmp samesign ugt i32 %.1.i.i, 1
  br i1 %i.am, label %bb.g, label %mbedtls_asn1_write_len.exit.i

bb.g:                                             ; preds = %bb.f
  %i.an = trunc i32 %.1.i.i to i8
  %i.ao = add i8 %i.an, 127
  %i.ap = load ptr, ptr %0, align 8, !tbaa !9
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -1 ; 2 uses
  store ptr %i.aq, ptr %0, align 8, !tbaa !9
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !12
  br label %mbedtls_asn1_write_len.exit.i

mbedtls_asn1_write_len.exit.i:                    ; preds = %bb.g, %bb.f
  %i.ar = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.h
  %i.au = icmp slt i64 %i.at, 1
  br i1 %i.au, label %_ZL30mbedtls_asn1_write_len_and_tagPPhPKhmh.exit, label %bb.h

bb.h:                                             ; preds = %mbedtls_asn1_write_len.exit.i
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 -1 ; 2 uses
  store ptr %i.av, ptr %0, align 8, !tbaa !9
  store i8 3, ptr %i.av, align 1, !tbaa !12
  %i.aw = trunc nuw i64 %i.j to i32
  %i.ax = add i32 %i.aw, 1
  %i.ay = add i32 %i.ax, %.1.i.i
  br label %_ZL30mbedtls_asn1_write_len_and_tagPPhPKhmh.exit

_ZL30mbedtls_asn1_write_len_and_tagPPhPKhmh.exit: ; preds = %bb.h, %mbedtls_asn1_write_len.exit.i, %.loopexit.i.i, %bb.d, %bb.a, %bb.b
  %.0 = phi i32 [ -108, %bb.a ], [ -108, %bb.b ], [ %i.ay, %bb.h ], [ -100, %bb.d ], [ -108, %.loopexit.i.i ], [ -108, %mbedtls_asn1_write_len.exit.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @mbedtls_asn1_write_octet_string(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9      ; 3 uses
  %i.b = icmp ult ptr %i.a, %1
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = icmp ult i64 %i.e, %3
  %or.cond.i = or i1 %i.b, %i.f
  br i1 %or.cond.i, label %_ZL30mbedtls_asn1_write_len_and_tagPPhPKhmh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 0, %3
  %i.h = getelementptr inbounds i8, ptr %i.a, i64 %i.g ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !9
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %.loopexit.i.i, label %mbedtls_asn1_write_raw_buffer.exit

mbedtls_asn1_write_raw_buffer.exit:               ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr readonly align 1 %2, i64 %3, i1 false)
  %i.i = trunc i64 %3 to i32                      ; 4 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %_ZL30mbedtls_asn1_write_len_and_tagPPhPKhmh.exit, label %bb.c

bb.c:                                             ; preds = %mbedtls_asn1_write_raw_buffer.exit
  %i.k = and i64 %3, 2147483647                   ; 4 uses
  %i.l = icmp samesign ugt i64 %i.k, 127
  br i1 %i.l, label %.preheader23.i.i, label %.loopexit.i.i

.preheader23.i.i:                                 ; preds = %bb.c, %.preheader23.i.i
  %.025.i.i = phi i64 [ %i.n, %.preheader23.i.i ], [ %i.k, %bb.c ]
  %.01724.i.i = phi i32 [ %i.m, %.preheader23.i.i ], [ 1, %bb.c ]
  %i.m = add nuw nsw i32 %.01724.i.i, 1           ; 2 uses
  %i.n = lshr i64 %.025.i.i, 8                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %.loopexit.i.i, label %.preheader23.i.i, !llvm.loop !7

.loopexit.i.i:                                    ; preds = %.preheader23.i.i, %bb.b, %bb.c
  %i.o = phi i64 [ %i.k, %bb.c ], [ 0, %bb.b ], [ %i.k, %.preheader23.i.i ]
  %i.p = phi i32 [ %i.i, %bb.c ], [ 0, %bb.b ], [ %i.i, %.preheader23.i.i ]
  %.1.i.i = phi i32 [ 1, %bb.c ], [ 1, %bb.b ], [ %i.m, %.preheader23.i.i ] ; 4 uses
  %i.q = zext nneg i32 %.1.i.i to i64
  %i.r = load ptr, ptr %0, align 8, !tbaa !9
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %i.d
  %i.u = icmp slt i64 %i.t, %i.q
  br i1 %i.u, label %_ZL30mbedtls_asn1_write_len_and_tagPPhPKhmh.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.loopexit.i.i, %.preheader.i.i
  %.018.i.i = phi i64 [ %i.y, %.preheader.i.i ], [ %i.o, %.loopexit.i.i ] ; 2 uses
  %i.v = trunc i64 %.018.i.i to i8
  %i.w = load ptr, ptr %0, align 8, !tbaa !9
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -1 ; 2 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !9
  store i8 %i.v, ptr %i.x, align 1, !tbaa !12
  %i.y = lshr i64 %.018.i.i, 8                    ; 2 uses
  %.not22.i.i = icmp eq i64 %i.y, 0
  br i1 %.not22.i.i, label %bb.d, label %.preheader.i.i, !llvm.loop !13

bb.d:                                             ; preds = %.preheader.i.i
  %i.z = icmp samesign ugt i32 %.1.i.i, 1
  br i1 %i.z, label %bb.e, label %mbedtls_asn1_write_len.exit.i

bb.e:                                             ; preds = %bb.d
  %i.aa = trunc i32 %.1.i.i to i8
  %i.ab = add i8 %i.aa, 127
  %i.ac = load ptr, ptr %0, align 8, !tbaa !9
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -1 ; 2 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !9
  store i8 %i.ab, ptr %i.ad, align 1, !tbaa !12
  br label %mbedtls_asn1_write_len.exit.i

mbedtls_asn1_write_len.exit.i:                    ; preds = %bb.e, %bb.d
  %i.ae = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.d
  %i.ah = icmp slt i64 %i.ag, 1
  br i1 %i.ah, label %_ZL30mbedtls_asn1_write_len_and_tagPPhPKhmh.exit, label %bb.f

bb.f:                                             ; preds = %mbedtls_asn1_write_len.exit.i
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -1 ; 2 uses
  store ptr %i.ai, ptr %0, align 8, !tbaa !9
  store i8 4, ptr %i.ai, align 1, !tbaa !12
  %i.aj = add nuw i32 %i.p, 1
  %i.ak = add i32 %i.aj, %.1.i.i
  br label %_ZL30mbedtls_asn1_write_len_and_tagPPhPKhmh.exit

_ZL30mbedtls_asn1_write_len_and_tagPPhPKhmh.exit: ; preds = %bb.a, %bb.f, %mbedtls_asn1_write_len.exit.i, %.loopexit.i.i, %mbedtls_asn1_write_raw_buffer.exit
  %.0 = phi i32 [ -108, %.loopexit.i.i ], [ %i.i, %mbedtls_asn1_write_raw_buffer.exit ], [ %i.ak, %bb.f ], [ -108, %mbedtls_asn1_write_len.exit.i ], [ -108, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden ptr @mbedtls_asn1_store_named_data(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef readonly captures(address_is_null) %3, i64 noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  %i.b = tail call ptr @mbedtls_asn1_find_named_data(ptr noundef %i.a, ptr noundef %1, i64 noundef %2) ; 8 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #11 ; 10 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %2, ptr %i.f, align 8, !tbaa !22
  %i.g = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %2) #11 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !26
  %i.i = icmp eq ptr %i.g, null
  br i1 %i.i, label %5, label %bb.d

5:                                                ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #12
  br label %.critedge

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr align 1 %1, i64 %2, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %4, ptr %i.j, align 8, !tbaa !27
  %.not55 = icmp eq i64 %4, 0
  br i1 %.not55, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %4) #11 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.k, ptr %i.l, align 8, !tbaa !28
  %i.m = icmp eq ptr %i.k, null
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.g) #12
  tail call void @free(ptr noundef nonnull %i.d) #12
  br label %.critedge

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.n = load ptr, ptr %0, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.n, ptr %i.o, align 8, !tbaa !29
  store ptr %i.d, ptr %0, align 8, !tbaa !20
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %i.p = icmp eq i64 %4, 0
  br i1 %i.p, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28
  tail call void @free(ptr noundef %i.r) #12
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  br label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !27
  %.not = icmp eq i64 %i.u, %4
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %4) #11 ; 2 uses
  %.not54 = icmp eq ptr %i.v, null
  br i1 %.not54, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !28
  tail call void @free(ptr noundef %i.x) #12
  store ptr %i.v, ptr %i.w, align 8, !tbaa !28
  store i64 %4, ptr %i.t, align 8, !tbaa !27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.g
  %.047 = phi ptr [ %i.d, %bb.g ], [ %i.b, %bb.i ], [ %i.b, %bb.k ] ; 3 uses
  %i.y = icmp ne ptr %3, null
  %i.z = icmp ne i64 %4, 0
  %or.cond = and i1 %i.y, %i.z
  br i1 %or.cond, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %.047, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.j, %bb.l, %bb.m, %bb.b, %bb.f, %5
  %.1 = phi ptr [ null, %bb.j ], [ null, %5 ], [ null, %bb.f ], [ %.047, %bb.l ], [ null, %bb.b ], [ %.047, %bb.m ], [ %i.b, %.thread ]
  ret ptr %.1
}

declare ptr @mbedtls_asn1_find_named_data(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!5, !5, i64 0}
!13 = distinct !{!13, !8}
!14 = !{!15, !17, i64 8}
!15 = !{!"_ZTS11mbedtls_mpi", !16, i64 0, !17, i64 8, !17, i64 10}
!16 = !{!"p1 long", !11, i64 0}
!17 = !{!"short", !5, i64 0}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 _ZTS23mbedtls_asn1_named_data", !11, i64 0}
!22 = !{!23, !25, i64 8}
!23 = !{!"_ZTS23mbedtls_asn1_named_data", !24, i64 0, !24, i64 24, !21, i64 48, !5, i64 56}
!24 = !{!"_ZTS16mbedtls_asn1_buf", !4, i64 0, !25, i64 8, !10, i64 16}
!25 = !{!"long", !5, i64 0}
!26 = !{!23, !10, i64 16}
!27 = !{!23, !25, i64 32}
!28 = !{!23, !10, i64 40}
!29 = !{!23, !21, i64 48}
end_hunk_0
