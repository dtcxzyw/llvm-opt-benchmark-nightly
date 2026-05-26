inline.NumInlined: 46
inline.NumDeleted: 18
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mbedtls_cipher_definition_t = type { i32, ptr }

@_ZL14supported_init = internal unnamed_addr global i1 false, align 4
@mbedtls_cipher_definitions = external local_unnamed_addr global [0 x %struct.mbedtls_cipher_definition_t], align 8
@mbedtls_cipher_supported = external global [0 x i32], align 4
@mbedtls_cipher_base_lookup_table = external local_unnamed_addr constant [0 x ptr], align 8
@mbedtls_ct_zero = external global i64, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @mbedtls_cipher_list() local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @_ZL14supported_init, align 4
  br i1 %.b, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = load i32, ptr @mbedtls_cipher_definitions, align 8, !tbaa !7 ; 2 uses
  %.not6 = icmp eq i32 %i.a, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.b = phi i32 [ %i.e, %.lr.ph ], [ %i.a, %.preheader ]
  %.08 = phi ptr [ %i.d, %.lr.ph ], [ @mbedtls_cipher_supported, %.preheader ] ; 2 uses
  %.047 = phi ptr [ %i.c, %.lr.ph ], [ @mbedtls_cipher_definitions, %.preheader ]
  %i.c = getelementptr inbounds nuw i8, ptr %.047, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.08, i64 4 ; 2 uses
  store i32 %i.b, ptr %.08, align 4, !tbaa !3
  %i.e = load i32, ptr %i.c, align 8, !tbaa !7    ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !12

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.0.lcssa = phi ptr [ @mbedtls_cipher_supported, %.preheader ], [ %i.d, %.lr.ph ]
  store i32 0, ptr %.0.lcssa, align 4, !tbaa !3
  store i1 true, ptr @_ZL14supported_init, align 4
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  ret ptr @mbedtls_cipher_supported
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @mbedtls_cipher_info_from_type(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mbedtls_cipher_definitions, i64 8), align 8, !tbaa !14 ; 2 uses
  %.not7 = icmp eq ptr %i.a, null
  br i1 %.not7, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = load i32, ptr @mbedtls_cipher_definitions, align 8, !tbaa !7
  %i.c = icmp eq i32 %i.b, %0
  br i1 %i.c, label %._crit_edge, label %.lr.ph13

.lr.ph13:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0812 = phi ptr [ %i.f, %.lr.ph ], [ @mbedtls_cipher_definitions, %.lr.ph.preheader ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0812, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.._crit_edge.loopexit_crit_edge, label %.lr.ph, !llvm.loop !15

.lr.ph:                                           ; preds = %.lr.ph13
  %i.f = getelementptr inbounds nuw i8, ptr %.0812, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !7
  %i.h = icmp eq i32 %i.g, %0
  br i1 %i.h, label %._crit_edge, label %.lr.ph13, !llvm.loop !15

.._crit_edge.loopexit_crit_edge:                  ; preds = %.lr.ph13
  br label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.preheader, %.._crit_edge.loopexit_crit_edge, %bb.a
  %.lcssa = phi ptr [ null, %bb.a ], [ %i.a, %.lr.ph.preheader ], [ null, %.._crit_edge.loopexit_crit_edge ], [ %i.e, %.lr.ph ]
  ret ptr %.lcssa
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @mbedtls_cipher_info_from_string(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mbedtls_cipher_definitions, i64 8), align 8, !tbaa !14 ; 2 uses
  %.not11 = icmp eq ptr %i.b, null
  br i1 %.not11, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %.012, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %.012, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !16

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.b, %.preheader ] ; 2 uses
  %.012 = phi ptr [ %i.c, %bb.b ], [ @mbedtls_cipher_definitions, %.preheader ] ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) %0) #14
  %.not10 = icmp eq i32 %i.h, 0
  br i1 %.not10, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %.preheader, %bb.a
  %.07 = phi ptr [ null, %bb.a ], [ null, %.preheader ], [ %i.f, %.lr.ph ], [ null, %bb.b ]
  ret ptr %.07
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @mbedtls_cipher_info_from_values(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mbedtls_cipher_definitions, i64 8), align 8, !tbaa !14 ; 2 uses
  %.not11 = icmp eq ptr %i.a, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.b = phi ptr [ %i.s, %bb.c ], [ %i.a, %bb.a ] ; 2 uses
  %.012 = phi ptr [ %i.q, %bb.c ], [ @mbedtls_cipher_definitions, %bb.a ] ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val = load i32, ptr %i.c, align 8             ; 3 uses
  %i.d = lshr i32 %.val, 26
  %i.e = and i32 %i.d, 31
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @mbedtls_cipher_base_lookup_table, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.i = load i32, ptr %i.h, align 8, !tbaa !22
  %i.j = icmp eq i32 %i.i, %0
  br i1 %i.j, label %mbedtls_cipher_info_get_key_bitlen.exit, label %bb.c

mbedtls_cipher_info_get_key_bitlen.exit:          ; preds = %.lr.ph
  %i.k = lshr i32 %.val, 2
  %i.l = and i32 %i.k, 960
  %i.m = icmp eq i32 %i.l, %1
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %mbedtls_cipher_info_get_key_bitlen.exit
  %i.n = lshr i32 %.val, 12
  %i.o = and i32 %i.n, 15
  %i.p = icmp eq i32 %i.o, %2
  br i1 %i.p, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %mbedtls_cipher_info_get_key_bitlen.exit, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.012, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.012, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !14   ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !25

._crit_edge:                                      ; preds = %bb.b, %bb.c, %bb.a
  %.lcssa = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.b, %bb.b ]
  ret ptr %.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @mbedtls_cipher_init(ptr noundef writeonly captures(none) initializes((0, 88)) %0) local_unnamed_addr #6 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress uwtable
define hidden void @mbedtls_cipher_free(ptr noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !30
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %.val = load i32, ptr %i.e, align 8
  %i.f = lshr i32 %.val, 26
  %i.g = and i32 %i.f, 31
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @mbedtls_cipher_base_lookup_table, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !31
  tail call void %i.l(ptr noundef nonnull %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull %0, i64 noundef 88)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare void @mbedtls_platform_zeroize(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden range(i32 -24960, 1) i32 @mbedtls_cipher_setup(ptr noundef writeonly captures(none) %0, ptr noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false)
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val9 = load i32, ptr %i.b, align 8
  %i.c = lshr i32 %.val9, 26
  %i.d = and i32 %i.c, 31
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @mbedtls_cipher_base_lookup_table, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef ptr %i.i()             ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.j, ptr %i.k, align 8, !tbaa !26
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %1, ptr %0, align 8, !tbaa !30
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -24832, %bb.a ], [ -24960, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @mbedtls_cipher_setkey(ptr noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #8 {
bb.a:
  %or.cond = icmp ugt i32 %3, 1
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = and i32 %i.d, 33554432
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %mbedtls_cipher_info_get_key_bitlen.exit, label %bb.d

mbedtls_cipher_info_get_key_bitlen.exit:          ; preds = %bb.c
  %i.g = lshr i32 %i.d, 2
  %i.h = and i32 %i.g, 960
  %.not = icmp eq i32 %2, %i.h
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %mbedtls_cipher_info_get_key_bitlen.exit, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.i, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %3, ptr %i.j, align 4, !tbaa !34
  %i.k = icmp eq i32 %3, 1
  %.val27.pre = load i32, ptr %i.c, align 8       ; 2 uses
  br i1 %i.k, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = lshr i32 %.val27.pre, 12
  %i.m = and i32 %i.l, 15
  %.off = add nsw i32 %i.m, -3
  %switch = icmp ult i32 %.off, 3
  %spec.select = select i1 %switch, i64 32, i64 40
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.d
  %.sink33 = phi i64 [ 32, %bb.d ], [ %spec.select, %bb.e ]
  %i.n = lshr i32 %.val27.pre, 26
  %i.o = and i32 %i.n, 31
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @mbedtls_cipher_base_lookup_table, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sink33
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !26
  %i.w = tail call noundef i32 %i.t(ptr noundef %i.v, ptr noundef %1, i32 noundef %2)
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %mbedtls_cipher_info_get_key_bitlen.exit, %bb.b, %bb.a
  %.0 = phi i32 [ -24832, %mbedtls_cipher_info_get_key_bitlen.exit ], [ -24832, %bb.a ], [ -24832, %bb.b ], [ %i.w, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_cipher_set_iv(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %2, 16
  br i1 %i.c, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i32, ptr %i.d, align 8              ; 3 uses
  %i.f = and i32 %i.e, 16777216
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %mbedtls_cipher_info_get_iv_size.exit, label %bb.d

mbedtls_cipher_info_get_iv_size.exit:             ; preds = %bb.c
  %i.g = lshr i32 %i.e, 3
  %i.h = and i32 %i.g, 28
  %i.i = zext nneg i32 %i.h to i64                ; 2 uses
  %i.j = icmp samesign ult i64 %2, %i.i
  br i1 %i.j, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c, %mbedtls_cipher_info_get_iv_size.exit
  %.0 = phi i64 [ %i.i, %mbedtls_cipher_info_get_iv_size.exit ], [ %2, %bb.c ] ; 3 uses
  %i.k = and i32 %i.e, 61440
  %i.l = icmp eq i32 %i.k, 24576
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !34
  %i.q = tail call i32 @mbedtls_gcm_starts(ptr noundef %i.n, i32 noundef %i.p, ptr noundef %1, i64 noundef %2)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %.not22 = icmp eq i64 %.0, 0
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 1 %1, i64 %.0, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.0, ptr %i.s, align 8, !tbaa !36
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %mbedtls_cipher_info_get_iv_size.exit, %bb.b, %bb.a, %bb.e
  %.018 = phi i32 [ -24704, %bb.b ], [ -24832, %bb.a ], [ %i.q, %bb.e ], [ -24832, %mbedtls_cipher_info_get_iv_size.exit ], [ 0, %bb.g ], [ 0, %bb.f ]
  ret i32 %.018
}

declare i32 @mbedtls_gcm_starts(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -24832, 1) i32 @mbedtls_cipher_reset(ptr noundef captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.c, align 8, !tbaa !37
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -24832, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_cipher_update_ad(ptr noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 61440
  %i.f = icmp eq i32 %i.e, 24576
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.i = tail call i32 @mbedtls_gcm_update_ad(ptr noundef %i.h, ptr noundef %1, i64 noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ -24832, %bb.a ], [ %i.i, %bb.c ], [ -24704, %bb.b ]
  ret i32 %.0
}

declare i32 @mbedtls_gcm_update_ad(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_cipher_update(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread144, label %mbedtls_cipher_get_block_size.exit

mbedtls_cipher_get_block_size.exit:               ; preds = %bb.a
  store i64 0, ptr %4, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %i.e = and i32 %i.d, 31                         ; 2 uses
  %i.f = zext nneg i32 %i.e to i64                ; 10 uses
  %i.g = icmp eq i32 %i.e, 0
  br i1 %i.g, label %.thread144, label %bb.b

bb.b:                                             ; preds = %mbedtls_cipher_get_block_size.exit
  %i.h = lshr i32 %i.d, 12
  %i.i = and i32 %i.h, 15                         ; 2 uses
  switch i32 %i.i, label %bb.f [
    i32 1, label %bb.c
    i32 6, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %.not137 = icmp eq i64 %2, %i.f
  br i1 %.not137, label %bb.d, label %.thread144

bb.d:                                             ; preds = %bb.c
  store i64 %2, ptr %4, align 8, !tbaa !38
  %.val141 = load i32, ptr %i.c, align 8
  %i.j = lshr i32 %.val141, 26
  %i.k = and i32 %i.j, 31
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @mbedtls_cipher_base_lookup_table, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !34
  %i.u = tail call noundef i32 %i.p(ptr noundef %i.r, i32 noundef %i.t, ptr noundef %1, ptr noundef %3)
  br label %.thread144

bb.e:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !26
  %i.x = tail call i32 @mbedtls_gcm_update(ptr noundef %i.w, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %2, ptr noundef nonnull %4)
  br label %.thread144

bb.f:                                             ; preds = %bb.b
  %i.y = icmp eq ptr %1, %3
  br i1 %i.y, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !37
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %bb.h, label %.thread144

bb.h:                                             ; preds = %bb.g
  %i.ab = urem i64 %2, %i.f
  %.not127 = icmp eq i64 %i.ab, 0
  br i1 %.not127, label %bb.i, label %.thread144

bb.i:                                             ; preds = %bb.h, %bb.f
  switch i32 %i.i, label %.thread144 [
    i32 2, label %bb.j
    i32 5, label %bb.y
  ]

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !34 ; 2 uses
  switch i32 %i.ad, label %.thread143 [
    i32 0, label %bb.k
    i32 1, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !40
  %.not129 = icmp eq ptr %i.af, null
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !37 ; 3 uses
  %i.ai = sub i64 %i.f, %i.ah                     ; 2 uses
  br i1 %.not129, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not130 = icmp ugt i64 %2, %i.ai
  br i1 %.not130, label %.thread143, label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.aj = icmp ult i64 %2, %i.ai
  br i1 %i.aj, label %bb.o, label %.thread143

bb.n:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !37 ; 2 uses
  %i.am = sub i64 %i.f, %i.al
  %i.an = icmp ult i64 %2, %i.am
  br i1 %i.an, label %bb.o, label %.thread143

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.ao = phi i64 [ %i.al, %bb.n ], [ %i.ah, %bb.m ], [ %i.ah, %bb.l ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr align 1 %1, i64 %2, i1 false)
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !37
  %i.at = add i64 %i.as, %2
  store i64 %i.at, ptr %i.aq, align 8, !tbaa !37
  br label %.thread144

.thread143:                                       ; preds = %bb.l, %bb.j, %bb.m, %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !37 ; 3 uses
  %.not131 = icmp eq i64 %i.av, 0
  br i1 %.not131, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.thread143
  %i.aw = sub i64 %i.f, %i.av                     ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr align 1 %1, i64 %i.aw, i1 false)
  %.val140 = load i32, ptr %i.c, align 8
  %i.az = lshr i32 %.val140, 26
  %i.ba = and i32 %i.az, 31
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr @mbedtls_cipher_base_lookup_table, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !20
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !41
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !26
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bj = tail call noundef i32 %i.bf(ptr noundef %i.bh, i32 noundef %i.ad, i64 noundef %i.f, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.ax, ptr noundef %3) ; 2 uses
  %.not132 = icmp eq i32 %i.bj, 0
  br i1 %.not132, label %bb.q, label %.thread144

bb.q:                                             ; preds = %bb.p
  %i.bk = load i64, ptr %4, align 8, !tbaa !38
  %i.bl = add i64 %i.bk, %i.f
  store i64 %i.bl, ptr %4, align 8, !tbaa !38
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 %i.f
  store i64 0, ptr %i.au, align 8, !tbaa !37
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw
  %i.bo = sub i64 %2, %i.aw
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread143
  %.0114 = phi i64 [ %i.bo, %bb.q ], [ %2, %.thread143 ] ; 4 uses
  %.0113 = phi ptr [ %i.bm, %bb.q ], [ %3, %.thread143 ]
  %.0112 = phi ptr [ %i.bn, %bb.q ], [ %1, %.thread143 ] ; 2 uses
  %.not133 = icmp eq i64 %.0114, 0
  br i1 %.not133, label %.thread144, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = urem i64 %.0114, %i.f                   ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.br = load i32, ptr %i.ac, align 4, !tbaa !34
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !40
  %.not134 = icmp eq ptr %i.bu, null
  %spec.select = select i1 %.not134, i64 0, i64 %i.f
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.t, %bb.u
  %.0 = phi i64 [ %i.bp, %bb.s ], [ %spec.select, %bb.u ], [ 0, %bb.t ] ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bw = sub i64 %.0114, %.0                     ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0112, i64 %i.bw
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bv, ptr align 1 %i.bx, i64 %.0, i1 false)
  %i.by = load i64, ptr %i.au, align 8, !tbaa !37
  %i.bz = add i64 %i.by, %.0
  store i64 %i.bz, ptr %i.au, align 8, !tbaa !37
  %.not135 = icmp eq i64 %.0114, %.0
  br i1 %.not135, label %.thread144, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ca = load ptr, ptr %0, align 8, !tbaa !30
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %.val139 = load i32, ptr %i.cb, align 8
  %i.cc = lshr i32 %.val139, 26
  %i.cd = and i32 %i.cc, 31
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr @mbedtls_cipher_base_lookup_table, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !20
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !41
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !26
  %i.cl = load i32, ptr %i.ac, align 4, !tbaa !34
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cn = tail call noundef i32 %i.ci(ptr noundef %i.ck, i32 noundef %i.cl, i64 noundef %i.bw, ptr noundef nonnull %i.cm, ptr noundef %.0112, ptr noundef %.0113) ; 2 uses
  %.not136 = icmp eq i32 %i.cn, 0
  br i1 %.not136, label %bb.x, label %.thread144

bb.x:                                             ; preds = %bb.w
  %i.co = load i64, ptr %4, align 8, !tbaa !38
  %i.cp = add i64 %i.co, %i.bw
  store i64 %i.cp, ptr %4, align 8, !tbaa !38
  br label %.thread144

bb.y:                                             ; preds = %bb.i
  %i.cq = lshr i32 %i.d, 26
  %i.cr = and i32 %i.cq, 31
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr @mbedtls_cipher_base_lookup_table, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !20
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !42
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !26
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dc = tail call noundef i32 %i.cw(ptr noundef %i.cy, i64 noundef %2, ptr noundef nonnull %i.cz, ptr noundef nonnull %i.da, ptr noundef nonnull %i.db, ptr noundef %1, ptr noundef %3) ; 2 uses
  %.not128 = icmp eq i32 %i.dc, 0
  br i1 %.not128, label %bb.z, label %.thread144

bb.z:                                             ; preds = %bb.y
  store i64 %2, ptr %4, align 8, !tbaa !38
  br label %.thread144

.thread144:                                       ; preds = %bb.r, %bb.i, %bb.y, %bb.o, %bb.p, %bb.w, %bb.x, %bb.v, %bb.g, %bb.h, %bb.d, %bb.c, %mbedtls_cipher_get_block_size.exit, %bb.a, %bb.z, %bb.e
  %.1 = phi i32 [ %i.dc, %bb.y ], [ -24832, %bb.a ], [ -25472, %mbedtls_cipher_get_block_size.exit ], [ %i.u, %bb.d ], [ -25216, %bb.c ], [ %i.x, %bb.e ], [ 0, %bb.z ], [ -24832, %bb.g ], [ 0, %bb.v ], [ -24832, %bb.h ], [ 0, %bb.o ], [ %i.cn, %bb.w ], [ %i.bj, %bb.p ], [ 0, %bb.x ], [ -24704, %bb.i ], [ 0, %bb.r ]
  ret i32 %.1
}

declare i32 @mbedtls_gcm_update(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_cipher_finish(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %2, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i32, ptr %i.c, align 8              ; 6 uses
  %i.e = and i32 %i.d, 61440
  %i.f = icmp eq i32 %i.e, 8192
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = lshr i32 %i.d, 12
  %i.k = and i32 %i.j, 15                         ; 2 uses
  %switch.tableidx = add nsw i32 %i.k, -3         ; 2 uses
  %i.l = icmp ult i32 %switch.tableidx, 8
  %switch.maskindex = trunc nsw i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -33, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond70 = select i1 %i.l, i1 %switch.lobit, i1 false
  %i.m = and i32 %i.d, 16646144
  %switch = icmp eq i32 %i.m, 4980736
  %or.cond71 = or i1 %or.cond70, %switch
  br i1 %or.cond71, label %switch.lookup, label %bb.e

bb.e:                                             ; preds = %bb.d
  switch i32 %i.k, label %switch.lookup [
    i32 1, label %bb.f
    i32 2, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i64, ptr %i.n, align 8, !tbaa !37
  %.not49 = icmp eq i64 %i.o, 0
  %. = select i1 %.not49, i32 0, i32 -25216
  br label %switch.lookup

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !34   ; 2 uses
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.h, label %mbedtls_cipher_get_block_size.exit

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.i, label %mbedtls_cipher_get_iv_size.exit

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load i64, ptr %i.v, align 8, !tbaa !37
  %.not48 = icmp eq i64 %i.w, 0
  %.50 = select i1 %.not48, i32 0, i32 -25216
  br label %switch.lookup

mbedtls_cipher_get_iv_size.exit:                  ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load i64, ptr %i.y, align 8, !tbaa !36   ; 2 uses
  %.not.i = icmp eq i64 %i.z, 0
  %i.aa = lshr i32 %i.d, 3
  %i.ab = and i32 %i.aa, 28
  %i.ac = trunc i64 %i.z to i32
  %.0.i = select i1 %.not.i, i32 %i.ab, i32 %i.ac
  %i.ad = sext i32 %.0.i to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !37
  tail call void %i.t(ptr noundef nonnull %i.x, i64 noundef %i.ad, i64 noundef %i.af)
  %.pre = load ptr, ptr %0, align 8, !tbaa !30
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 8
  %.val.pre = load i32, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.pre59 = load i32, ptr %i.p, align 4, !tbaa !34
  %.pre60 = and i32 %.val.pre, 31
  %.pre61 = zext nneg i32 %.pre60 to i64
  br label %mbedtls_cipher_get_block_size.exit53

mbedtls_cipher_get_block_size.exit:               ; preds = %bb.g
  %i.ag = and i32 %i.d, 31
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !37 ; 2 uses
  %.not = icmp eq i64 %i.aj, %i.ah
  br i1 %.not, label %mbedtls_cipher_get_block_size.exit53, label %bb.j

bb.j:                                             ; preds = %mbedtls_cipher_get_block_size.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !40
  %i.am = icmp eq ptr %i.al, null
  %i.an = icmp eq i64 %i.aj, 0
  %or.cond = and i1 %i.an, %i.am
  %spec.select = select i1 %or.cond, i32 0, i32 -25216
  br label %switch.lookup

mbedtls_cipher_get_block_size.exit53:             ; preds = %mbedtls_cipher_get_block_size.exit, %mbedtls_cipher_get_iv_size.exit
  %.pre-phi62 = phi i64 [ %i.ah, %mbedtls_cipher_get_block_size.exit ], [ %.pre61, %mbedtls_cipher_get_iv_size.exit ]
  %i.ao = phi i32 [ %i.q, %mbedtls_cipher_get_block_size.exit ], [ %.pre59, %mbedtls_cipher_get_iv_size.exit ]
  %.val = phi i32 [ %i.d, %mbedtls_cipher_get_block_size.exit ], [ %.val.pre, %mbedtls_cipher_get_iv_size.exit ]
  %i.ap = lshr i32 %.val, 26
  %i.aq = and i32 %i.ap, 31
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr @mbedtls_cipher_base_lookup_table, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !20
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !41
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !26
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ba = tail call noundef i32 %i.av(ptr noundef %i.ax, i32 noundef %i.ao, i64 noundef %.pre-phi62, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.az, ptr noundef %1) ; 2 uses
  %.not47 = icmp eq i32 %i.ba, 0
  br i1 %.not47, label %bb.k, label %switch.lookup

bb.k:                                             ; preds = %mbedtls_cipher_get_block_size.exit53
  %i.bb = load i32, ptr %i.p, align 4, !tbaa !34
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !43
  %i.bf = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %mbedtls_cipher_get_block_size.exit55, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = and i32 %i.bi, 31
  %i.bk = zext nneg i32 %i.bj to i64
  br label %mbedtls_cipher_get_block_size.exit55

mbedtls_cipher_get_block_size.exit55:             ; preds = %bb.l, %bb.m
  %.0.i54 = phi i64 [ %i.bk, %bb.m ], [ 0, %bb.l ]
  %i.bl = tail call noundef i32 %i.be(ptr noundef %1, i64 noundef %.0.i54, ptr noundef nonnull %2)
  br label %switch.lookup

bb.n:                                             ; preds = %bb.k
  %i.bm = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %mbedtls_cipher_get_block_size.exit57, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = and i32 %i.bp, 31
  %i.br = zext nneg i32 %i.bq to i64
  br label %mbedtls_cipher_get_block_size.exit57

mbedtls_cipher_get_block_size.exit57:             ; preds = %bb.n, %bb.o
  %.0.i56 = phi i64 [ %i.br, %bb.o ], [ 0, %bb.n ]
  store i64 %.0.i56, ptr %2, align 8, !tbaa !38
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.d, %bb.j, %bb.e, %mbedtls_cipher_get_block_size.exit55, %mbedtls_cipher_get_block_size.exit57, %bb.i, %mbedtls_cipher_get_block_size.exit53, %bb.f, %bb.c, %bb.a
  %.1 = phi i32 [ %i.ba, %mbedtls_cipher_get_block_size.exit53 ], [ -24832, %bb.a ], [ -24832, %bb.c ], [ %.50, %bb.i ], [ %., %bb.f ], [ -24704, %bb.e ], [ 0, %bb.d ], [ %i.bl, %mbedtls_cipher_get_block_size.exit55 ], [ %spec.select, %bb.j ], [ 0, %mbedtls_cipher_get_block_size.exit57 ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -24832, 1) i32 @mbedtls_cipher_set_padding_mode(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 61440
  %.not = icmp eq i32 %i.e, 8192
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  switch i32 %1, label %bb.e [
    i32 0, label %.sink.split
    i32 4, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d
  %_ZL16add_pkcs_paddingPhmm.sink = phi ptr [ null, %bb.d ], [ @_ZL16add_pkcs_paddingPhmm, %bb.c ]
  %_ZL24mbedtls_get_pkcs_paddingPhmPm.sink = phi ptr [ @_ZL14get_no_paddingPhmPm, %bb.d ], [ @_ZL24mbedtls_get_pkcs_paddingPhmPm, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %_ZL16add_pkcs_paddingPhmm.sink, ptr %i.f, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %_ZL24mbedtls_get_pkcs_paddingPhmPm.sink, ptr %i.g, align 8, !tbaa !43
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ -24704, %bb.c ], [ -24832, %bb.a ], [ -24832, %bb.b ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal void @_ZL16add_pkcs_paddingPhmm(ptr noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2) #12 {
bb.a:
  %i.a = sub i64 %1, %2                           ; 9 uses
  %.not = icmp eq i64 %1, %2
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.b = trunc i64 %i.a to i8                     ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 %2         ; 3 uses
  %min.iters.check = icmp ult i64 %i.a, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.d = xor i64 %2, -1
  %i.e = add i64 %1, %i.d                         ; 2 uses
  %i.f = and i64 %i.e, 255
  %i.g = icmp eq i64 %i.f, 255
  %i.h = icmp ugt i64 %i.e, 255
  %i.i = or i1 %i.g, %i.h
  br i1 %i.i, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check11 = icmp ult i64 %i.a, 32
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.a, 28
  %n.vec = and i64 %i.a, -32                      ; 5 uses
  %i.j = trunc i64 %n.vec to i8
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.b, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = getelementptr i8, ptr %i.c, i64 %index   ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 16
  store <16 x i8> %broadcast.splat, ptr %i.k, align 1, !tbaa !44
  store <16 x i8> %broadcast.splat, ptr %i.l, align 1, !tbaa !44
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !48

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec13 = and i64 %i.a, -4                     ; 4 uses
  %i.n = trunc i64 %n.vec13 to i8
  %broadcast.splatinsert14 = insertelement <4 x i8> poison, i8 %i.b, i64 0
  %broadcast.splat15 = shufflevector <4 x i8> %broadcast.splatinsert14, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next17, %vec.epilog.vector.body ] ; 2 uses
  %i.o = getelementptr i8, ptr %i.c, i64 %index16
  store <4 x i8> %broadcast.splat15, ptr %i.o, align 1, !tbaa !44
  %index.next17 = add nuw i64 %index16, 4         ; 2 uses
  %i.p = icmp eq i64 %index.next17, %n.vec13
  br i1 %i.p, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !49

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n18 = icmp eq i64 %i.a, %n.vec13
  br i1 %cmp.n18, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec13, %vec.epilog.middle.block ]
  %.010.ph = phi i8 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %i.j, %vec.epilog.iter.check ], [ %i.n, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.q = phi i64 [ %i.t, %vec.epilog.scalar.ph ], [ %.ph, %vec.epilog.scalar.ph.preheader ]
  %.010 = phi i8 [ %i.s, %vec.epilog.scalar.ph ], [ %.010.ph, %vec.epilog.scalar.ph.preheader ]
  %i.r = getelementptr i8, ptr %i.c, i64 %i.q
  store i8 %i.b, ptr %i.r, align 1, !tbaa !44
  %i.s = add i8 %.010, 1                          ; 2 uses
  %i.t = zext i8 %i.s to i64                      ; 2 uses
  %i.u = icmp ugt i64 %i.a, %i.t
  br i1 %i.u, label %vec.epilog.scalar.ph, label %._crit_edge, !llvm.loop !50

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef range(i32 -25088, 1) i32 @_ZL24mbedtls_get_pkcs_paddingPhmPm(ptr noundef readonly captures(address_is_null) %0, i64 noundef %1, ptr noundef writeonly captures(address_is_null) %2) #13 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 %1
  %i.d = getelementptr i8, ptr %i.c, i64 -1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !44    ; 2 uses
  %i.f = zext i8 %i.e to i64                      ; 3 uses
  %i.g = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !38
  %i.h = xor i64 %i.g, %1                         ; 2 uses
  %i.i = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !38 ; 3 uses
  %i.j = xor i64 %i.i, %i.f
  %i.k = xor i64 %i.i, %i.h
  %i.l = lshr i64 %i.k, 63
  %i.m = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !38 ; 2 uses
  %i.n = xor i64 %i.l, %i.m
  %i.o = sub i64 0, %i.n
  %i.p = lshr i64 %i.m, 1
  %i.q = sub nsw i64 0, %i.p
  %i.r = or i64 %i.o, %i.q
  %.neg.i.i.i = ashr i64 %i.r, 63                 ; 2 uses
  %i.s = sub i64 %i.h, %i.j
  %i.t = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !38
  %i.u = xor i64 %i.t, %.neg.i.i.i
  %i.v = xor i64 %i.u, -1
  %i.w = and i64 %.neg.i.i.i, %i.i
  %i.x = and i64 %i.s, %i.v
  %i.y = or i64 %i.x, %i.w
  %i.z = lshr i64 %i.y, 63
  %i.aa = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !38 ; 2 uses
  %i.ab = xor i64 %i.z, %i.aa
  %i.ac = sub i64 0, %i.ab
  %i.ad = lshr i64 %i.aa, 1
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = or i64 %i.ac, %i.ae
  %.neg.i10.i.i = ashr i64 %i.af, 63
  %i.ag = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !38
  %i.ah = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !38
  %i.ai = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !38
  %i.aj = xor i64 %i.ag, %i.ah
  %i.ak = xor i64 %i.aj, %i.ai
  %i.al = xor i64 %i.ak, %i.f                     ; 2 uses
  %i.am = sub i64 0, %i.al
  %i.an = lshr i64 %i.al, 1
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = or i64 %i.ao, %i.am
  %isnotneg.i = icmp sgt i64 %i.ap, -1
  %i.aq = select i1 %isnotneg.i, i64 -1, i64 %.neg.i10.i.i ; 2 uses
  %i.ar = sub i64 %1, %i.f                        ; 2 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.02734 = phi i64 [ %i.ci, %.lr.ph ], [ 0, %bb.b ] ; 3 uses
  %.02833 = phi i64 [ %i.ch, %.lr.ph ], [ %i.aq, %bb.b ]
  %i.as = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !38
  %i.at = xor i64 %i.as, %.02734                  ; 2 uses
  %i.au = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !38
  %i.av = xor i64 %i.au, %i.ar                    ; 3 uses
  %i.aw = xor i64 %i.av, %i.at
  %i.ax = lshr i64 %i.aw, 63
  %i.ay = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !38 ; 2 uses
  %i.az = xor i64 %i.ax, %i.ay
  %i.ba = sub i64 0, %i.az
  %i.bb = lshr i64 %i.ay, 1
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = or i64 %i.ba, %i.bc
  %.neg.i.i.i31 = ashr i64 %i.bd, 63              ; 2 uses
  %i.be = sub i64 %i.at, %i.av
  %i.bf = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !38
  %i.bg = xor i64 %i.bf, %.neg.i.i.i31
  %i.bh = xor i64 %i.bg, -1
  %i.bi = and i64 %.neg.i.i.i31, %i.av
  %i.bj = and i64 %i.be, %i.bh
  %i.bk = or i64 %i.bj, %i.bi
  %i.bl = lshr i64 %i.bk, 63
  %i.bm = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !38 ; 2 uses
  %i.bn = xor i64 %i.bl, %i.bm
  %i.bo = sub i64 0, %i.bn
  %i.bp = lshr i64 %i.bm, 1
  %i.bq = sub nsw i64 0, %i.bp
  %i.br = or i64 %i.bo, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %.02734
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !44
  %i.bu = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !38
  %i.bv = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !38
  %i.bw = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !38
  %i.bx = xor i8 %i.bt, %i.e
  %i.by = zext i8 %i.bx to i64
  %i.bz = xor i64 %i.bu, %i.by
  %i.ca = xor i64 %i.bz, %i.bv
  %i.cb = xor i64 %i.ca, %i.bw                    ; 2 uses
  %i.cc = sub i64 0, %i.cb
  %i.cd = lshr i64 %i.cb, 1
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = or i64 %i.ce, %i.cc
  %.neg.i.i = ashr i64 %i.cf, 63
  %isnotneg.i32.inv = icmp slt i64 %i.br, 0
  %i.cg = select i1 %isnotneg.i32.inv, i64 0, i64 %.neg.i.i
  %i.ch = or i64 %i.cg, %.02833                   ; 2 uses
  %i.ci = add nuw i64 %.02734, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ci, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !51

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.028.lcssa = phi i64 [ %i.aq, %bb.b ], [ %i.ch, %.lr.ph ] ; 2 uses
  %i.cj = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !38
  %i.ck = xor i64 %.028.lcssa, %i.cj
  %i.cl = xor i64 %i.ck, -1
  %i.cm = and i64 %i.ar, %i.cl
  store i64 %i.cm, ptr %2, align 8, !tbaa !38
  %i.cn = trunc i64 %.028.lcssa to i32
  %i.co = and i32 %i.cn, 25088
  %i.cp = sub nsw i32 0, %i.co
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.0 = phi i32 [ %i.cp, %._crit_edge ], [ -24832, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef range(i32 -24832, 1) i32 @_ZL14get_no_paddingPhmPm(ptr noundef readnone captures(address_is_null) %0, i64 noundef %1, ptr noundef writeonly captures(address_is_null) %2) #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %2, align 8, !tbaa !38
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -24832, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_cipher_write_tag(ptr noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !34
  %.not = icmp eq i32 %i.e, 1
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 61440
  %i.i = icmp eq i32 %i.h, 24576
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.l = call i32 @mbedtls_gcm_finish(ptr noundef %i.k, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ -24832, %bb.b ], [ -24832, %bb.a ], [ %i.l, %bb.d ], [ -24704, %bb.c ]
  ret i32 %.0
}

declare i32 @mbedtls_gcm_finish(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_cipher_check_tag(ptr noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.c = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !34
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, 61440
  %i.j = icmp eq i32 %i.i, 24576
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.k = icmp ugt i64 %2, 16
  br i1 %i.k, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.n = call i32 @mbedtls_gcm_finish(ptr noundef %i.m, ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i64 noundef %2) ; 2 uses
  %.not19 = icmp eq i32 %i.n, 0
  br i1 %.not19, label %select.unfold, label %.thread

select.unfold:                                    ; preds = %bb.e
  %i.o = call noundef i32 @_Z17mbedtls_ct_memcmpPKvS0_m(ptr noundef %1, ptr noundef nonnull %i.a, i64 noundef %2)
  %.not20 = icmp eq i32 %i.o, 0
  %. = select i1 %.not20, i32 0, i32 -25344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.f

.thread:                                          ; preds = %bb.e, %bb.d
  %.013.ph = phi i32 [ -24832, %bb.d ], [ %i.n, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.g

bb.f:                                             ; preds = %select.unfold, %bb.c
  %.1 = phi i32 [ -24704, %bb.c ], [ %., %select.unfold ]
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef %2)
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.b, %bb.a, %bb.f
  %.114 = phi i32 [ %.1, %bb.f ], [ -24832, %bb.a ], [ %.013.ph, %.thread ], [ -24832, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.114
}

declare noundef i32 @_Z17mbedtls_ct_memcmpPKvS0_m(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_cipher_crypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %mbedtls_cipher_reset.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %2, 16
  br i1 %i.d, label %mbedtls_cipher_reset.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
  %i.g = and i32 %i.f, 16777216
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %mbedtls_cipher_info_get_iv_size.exit.i, label %bb.d

mbedtls_cipher_info_get_iv_size.exit.i:           ; preds = %bb.c
  %i.h = lshr i32 %i.f, 3
  %i.i = and i32 %i.h, 28
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = icmp samesign ult i64 %2, %i.j
  br i1 %i.k, label %mbedtls_cipher_reset.exit, label %bb.d

bb.d:                                             ; preds = %mbedtls_cipher_info_get_iv_size.exit.i, %bb.c
  %.0.i = phi i64 [ %i.j, %mbedtls_cipher_info_get_iv_size.exit.i ], [ %2, %bb.c ] ; 3 uses
  %i.l = and i32 %i.f, 61440
  %i.m = icmp eq i32 %i.l, 24576
  br i1 %i.m, label %mbedtls_cipher_set_iv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not22.i = icmp eq i64 %.0.i, 0
  br i1 %.not22.i, label %mbedtls_cipher_set_iv.exit.thread28.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr align 1 %1, i64 %.0.i, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.0.i, ptr %i.o, align 8, !tbaa !36
  br label %mbedtls_cipher_set_iv.exit.thread28.thread

mbedtls_cipher_set_iv.exit:                       ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !34
  %i.t = tail call i32 @mbedtls_gcm_starts(ptr noundef %i.q, i32 noundef %i.s, ptr noundef %1, i64 noundef %2) ; 2 uses
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %mbedtls_cipher_set_iv.exit.thread28, label %mbedtls_cipher_reset.exit

mbedtls_cipher_set_iv.exit.thread28:              ; preds = %mbedtls_cipher_set_iv.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !30
  %i.u = icmp eq ptr %.pre, null
  br i1 %i.u, label %mbedtls_cipher_reset.exit, label %mbedtls_cipher_set_iv.exit.thread28.thread

mbedtls_cipher_set_iv.exit.thread28.thread:       ; preds = %bb.e, %bb.f, %mbedtls_cipher_set_iv.exit.thread28
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.v, align 8, !tbaa !37
  %i.w = tail call i32 @mbedtls_cipher_update(ptr noundef nonnull %0, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6) ; 2 uses
  %.not22 = icmp eq i32 %i.w, 0
  br i1 %.not22, label %bb.g, label %mbedtls_cipher_reset.exit

bb.g:                                             ; preds = %mbedtls_cipher_set_iv.exit.thread28.thread
  %i.x = load i64, ptr %6, align 8, !tbaa !38
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 %i.x
  %i.z = call i32 @mbedtls_cipher_finish(ptr noundef nonnull %0, ptr noundef %i.y, ptr noundef nonnull %i.a) ; 2 uses
  %.not23 = icmp eq i32 %i.z, 0
  br i1 %.not23, label %bb.h, label %mbedtls_cipher_reset.exit

bb.h:                                             ; preds = %bb.g
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !38
  %i.ab = load i64, ptr %6, align 8, !tbaa !38
  %i.ac = add i64 %i.ab, %i.aa
  store i64 %i.ac, ptr %6, align 8, !tbaa !38
  br label %mbedtls_cipher_reset.exit

mbedtls_cipher_reset.exit:                        ; preds = %mbedtls_cipher_info_get_iv_size.exit.i, %bb.a, %bb.b, %mbedtls_cipher_set_iv.exit.thread28, %bb.g, %mbedtls_cipher_set_iv.exit.thread28.thread, %mbedtls_cipher_set_iv.exit, %bb.h
  %.0 = phi i32 [ 0, %bb.h ], [ %i.t, %mbedtls_cipher_set_iv.exit ], [ -24832, %mbedtls_cipher_set_iv.exit.thread28 ], [ %i.w, %mbedtls_cipher_set_iv.exit.thread28.thread ], [ %i.z, %bb.g ], [ -24832, %mbedtls_cipher_info_get_iv_size.exit.i ], [ -24832, %bb.a ], [ -24704, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_cipher_auth_encrypt_ext(ptr noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef captures(none) %9, i64 noundef %10) local_unnamed_addr #8 {
bb.a:
  %i.a = add i64 %10, %6
  %i.b = icmp ult i64 %8, %i.a
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 61440
  %i.g = icmp eq i32 %i.f, 24576
  br i1 %i.g, label %bb.c, label %_ZL27mbedtls_cipher_aead_encryptP24mbedtls_cipher_context_tPKhmS2_mS2_mPhPmS3_m.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 %6
  store i64 %6, ptr %9, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.k = tail call i32 @mbedtls_gcm_crypt_and_tag(ptr noundef %i.j, i32 noundef 1, i64 noundef %6, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %7, i64 noundef %10, ptr noundef %i.h)
  br label %_ZL27mbedtls_cipher_aead_encryptP24mbedtls_cipher_context_tPKhmS2_mS2_mPhPmS3_m.exit

_ZL27mbedtls_cipher_aead_encryptP24mbedtls_cipher_context_tPKhmS2_mS2_mPhPmS3_m.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.k, %bb.c ], [ -24704, %bb.b ]
  %i.l = load i64, ptr %9, align 8, !tbaa !38
  %i.m = add i64 %i.l, %10
  store i64 %i.m, ptr %9, align 8, !tbaa !38
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZL27mbedtls_cipher_aead_encryptP24mbedtls_cipher_context_tPKhmS2_mS2_mPhPmS3_m.exit
  %.0 = phi i32 [ %.0.i, %_ZL27mbedtls_cipher_aead_encryptP24mbedtls_cipher_context_tPKhmS2_mS2_mPhPmS3_m.exit ], [ -24832, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden i32 @mbedtls_cipher_auth_decrypt_ext(ptr noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef writeonly captures(none) %9, i64 noundef %10) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ult i64 %6, %10
  br i1 %i.a, label %_ZL27mbedtls_cipher_aead_decryptP24mbedtls_cipher_context_tPKhmS2_mS2_mPhPmS2_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sub nuw i64 %6, %10                      ; 3 uses
  %i.c = icmp ult i64 %8, %i.b
  br i1 %i.c, label %_ZL27mbedtls_cipher_aead_decryptP24mbedtls_cipher_context_tPKhmS2_mS2_mPhPmS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 61440
  %i.h = icmp eq i32 %i.g, 24576
  br i1 %i.h, label %bb.d, label %_ZL27mbedtls_cipher_aead_decryptP24mbedtls_cipher_context_tPKhmS2_mS2_mPhPmS2_m.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 %6
  %i.j = sub i64 0, %10
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 %i.j
  store i64 %i.b, ptr %9, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.n = tail call i32 @mbedtls_gcm_auth_decrypt(ptr noundef %i.m, i64 noundef %i.b, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %i.k, i64 noundef %10, ptr noundef %5, ptr noundef %7) ; 2 uses
  %i.o = icmp eq i32 %i.n, -18
  %spec.store.select.i = select i1 %i.o, i32 -25344, i32 %i.n
  br label %_ZL27mbedtls_cipher_aead_decryptP24mbedtls_cipher_context_tPKhmS2_mS2_mPhPmS2_m.exit

_ZL27mbedtls_cipher_aead_decryptP24mbedtls_cipher_context_tPKhmS2_mS2_mPhPmS2_m.exit: ; preds = %bb.d, %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ -24832, %bb.a ], [ -24832, %bb.b ], [ %spec.store.select.i, %bb.d ], [ -24704, %bb.c ]
  ret i32 %.0
}

declare i32 @mbedtls_gcm_crypt_and_tag(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

declare i32 @mbedtls_gcm_auth_decrypt(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind }

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
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTS27mbedtls_cipher_definition_t", !9, i64 0, !10, i64 8}
!9 = !{!"_ZTS21mbedtls_cipher_type_t", !5, i64 0}
!10 = !{!"p1 _ZTS21mbedtls_cipher_info_t", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!8, !10, i64 8}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = !{!18, !19, i64 0}
!18 = !{!"_ZTS21mbedtls_cipher_info_t", !19, i64 0, !4, i64 8, !4, i64 8, !4, i64 9, !4, i64 9, !4, i64 10, !4, i64 11, !4, i64 11}
!19 = !{!"p1 omnipotent char", !11, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 _ZTS21mbedtls_cipher_base_t", !11, i64 0}
!22 = !{!23, !24, i64 0}
!23 = !{!"_ZTS21mbedtls_cipher_base_t", !24, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56}
!24 = !{!"_ZTS19mbedtls_cipher_id_t", !5, i64 0}
!25 = distinct !{!25, !13}
!26 = !{!27, !11, i64 80}
!27 = !{!"_ZTS24mbedtls_cipher_context_t", !10, i64 0, !4, i64 8, !28, i64 12, !11, i64 16, !11, i64 24, !5, i64 32, !29, i64 48, !5, i64 56, !29, i64 72, !11, i64 80}
!28 = !{!"_ZTS19mbedtls_operation_t", !5, i64 0}
!29 = !{!"long", !5, i64 0}
!30 = !{!27, !10, i64 0}
!31 = !{!23, !11, i64 56}
!32 = !{!23, !11, i64 48}
!33 = !{!27, !4, i64 8}
!34 = !{!27, !28, i64 12}
!35 = !{!11, !11, i64 0}
!36 = !{!27, !29, i64 72}
!37 = !{!27, !29, i64 48}
!38 = !{!29, !29, i64 0}
!39 = !{!23, !11, i64 8}
!40 = !{!27, !11, i64 16}
!41 = !{!23, !11, i64 16}
!42 = !{!23, !11, i64 24}
!43 = !{!27, !11, i64 24}
!44 = !{!5, !5, i64 0}
!45 = distinct !{!45, !13, !46, !47}
!46 = !{!"llvm.loop.isvectorized", i32 1}
!47 = !{!"llvm.loop.unroll.runtime.disable"}
!48 = !{!"branch_weights", i32 4, i32 28}
!49 = distinct !{!49, !13, !46, !47}
!50 = distinct !{!50, !13, !46}
!51 = distinct !{!51, !13}
end_hunk_0
