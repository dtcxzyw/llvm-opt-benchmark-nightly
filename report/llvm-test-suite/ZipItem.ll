inline.NumInlined: 10
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN8NArchive4NZipeqERKNS0_8CVersionES3_(ptr noundef nonnull readonly align 1 captures(none) dereferenceable(2) %0, ptr noundef nonnull readonly align 1 captures(none) dereferenceable(2) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !8
  %i.b = load i8, ptr %1, align 1, !tbaa !8
  %i.c = icmp eq i8 %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp eq i8 %i.e, %i.g
  %i.i = select i1 %i.c, i1 %i.h, i1 false
  ret i1 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN8NArchive4NZipneERKNS0_8CVersionES3_(ptr noundef nonnull readonly align 1 captures(none) dereferenceable(2) %0, ptr noundef nonnull readonly align 1 captures(none) dereferenceable(2) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !8
  %i.b = load i8, ptr %1, align 1, !tbaa !8
  %i.c = icmp ne i8 %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp ne i8 %i.e, %i.g
  %.not3 = select i1 %i.c, i1 true, i1 %i.h
  ret i1 %.not3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK8NArchive4NZip14CExtraSubBlock15ExtractNtfsTimeEiR9_FILETIME(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(8) initializes((0, 8)) %2) local_unnamed_addr #1 align 2 {
bb.a:
  store i32 0, ptr %2, align 4, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = load i16, ptr %0, align 8, !tbaa !18
  %i.f = icmp ne i16 %i.e, 10
  %i.g = icmp ult i32 %i.d, 32
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = add i32 %i.d, -4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.03143 = phi ptr [ %i.aa, %bb.b ], [ %i.k, %.lr.ph.preheader ] ; 3 uses
  %.03442 = phi i32 [ %i.ab, %bb.b ], [ %i.h, %.lr.ph.preheader ]
  %i.l = load i16, ptr %.03143, align 2, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %.03143, i64 2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !22
  %i.o = zext i16 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %.03143, i64 4 ; 2 uses
  %i.q = add i32 %.03442, -4                      ; 2 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.o) ; 3 uses
  %i.r = icmp ne i16 %i.l, 1
  %i.s = icmp samesign ult i32 %spec.select, 24
  %or.cond3.not = or i1 %i.r, %i.s
  br i1 %or.cond3.not, label %bb.b, label %.thread

.thread:                                          ; preds = %.lr.ph
  %i.t = shl nsw i32 %1, 3
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.p, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  store i32 %i.w, ptr %2, align 4, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4
  store i32 %i.y, ptr %i.a, align 4, !tbaa !12
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.z = zext nneg i32 %spec.select to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.z
  %i.ab = sub i32 %i.q, %spec.select              ; 2 uses
  %i.ac = icmp ugt i32 %i.ab, 4
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.thread, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %.thread ], [ false, %bb.b ]
  ret i1 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK8NArchive4NZip14CExtraSubBlock15ExtractUnixTimeEiRj(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %2) local_unnamed_addr #2 align 2 {
bb.a:
  store i32 0, ptr %2, align 4, !tbaa !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %i.d = load i16, ptr %0, align 8, !tbaa !18
  %i.e = icmp ne i16 %i.d, 21589
  %i.f = icmp ult i32 %i.c, 5
  %or.cond = or i1 %i.e, %i.f
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  %i.j = load i8, ptr %i.h, align 1, !tbaa !23
  %i.k = add i32 %i.c, -1
  %i.l = zext i8 %i.j to i32                      ; 3 uses
  %i.m = and i32 %i.l, 1
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i32 %1, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.j, %bb.h, %bb.c
  %.01927.lcssa29 = phi ptr [ %i.i, %bb.c ], [ %.120, %bb.h ], [ %.120.1, %bb.j ]
  %i.o = load i32, ptr %.01927.lcssa29, align 4, !tbaa !4
  store i32 %i.o, ptr %2, align 4, !tbaa !4
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 5
  %i.q = add i32 %i.c, -5
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.123 = phi i32 [ %i.q, %bb.e ], [ %i.k, %bb.b ] ; 3 uses
  %.120 = phi ptr [ %i.p, %bb.e ], [ %i.i, %bb.b ] ; 3 uses
  %i.r = and i32 %i.l, 2
  %.not.1 = icmp eq i32 %i.r, 0
  br i1 %.not.1, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = icmp ult i32 %.123, 4
  br i1 %i.s, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = icmp eq i32 %1, 1
  br i1 %i.t, label %bb.d, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %.120, i64 4
  %i.v = add i32 %.123, -4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.123.1 = phi i32 [ %i.v, %bb.i ], [ %.123, %bb.f ]
  %.120.1 = phi ptr [ %i.u, %bb.i ], [ %.120, %bb.f ]
  %i.w = and i32 %i.l, 4
  %.not.2 = icmp ne i32 %i.w, 0
  %i.x = icmp ugt i32 %.123.1, 3
  %or.cond30.not33 = and i1 %.not.2, %i.x
  %i.y = icmp eq i32 %1, 2
  %or.cond31 = and i1 %or.cond30.not33, %i.y
  br i1 %or.cond31, label %bb.d, label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.j, %bb.d, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ true, %bb.d ], [ false, %bb.j ], [ false, %bb.g ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK8NArchive4NZip10CLocalItem5IsDirEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call noundef zeroext i1 @_ZN8NArchive9NItemName12HasTailSlashERK11CStringBaseIcEj(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef 1)
  ret i1 %i.b
}

declare noundef zeroext i1 @_ZN8NArchive9NItemName12HasTailSlashERK11CStringBaseIcEj(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK8NArchive4NZip5CItem5IsDirEv(ptr noundef nonnull align 8 dereferenceable(179) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 81 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !24    ; 2 uses
  %i.d = icmp eq i8 %i.c, 0
  %i.e = icmp eq i8 %i.c, 11
  %narrow.i = or i1 %i.d, %i.e
  %i.f = zext i1 %narrow.i to i32
  %i.g = tail call noundef zeroext i1 @_ZN8NArchive9NItemName12HasTailSlashERK11CStringBaseIcEj(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %i.f)
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 177
  %i.i = load i8, ptr %i.h, align 1, !tbaa !34, !range !35, !noundef !36
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.k = load i8, ptr %i.b, align 1, !tbaa !24
  switch i8 %i.k, label %bb.f [
    i8 1, label %bb.d
    i8 0, label %bb.e
    i8 11, label %bb.e
    i8 6, label %bb.e
    i8 14, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %2 = load i32, ptr %1, align 4, !tbaa !37
  %3 = and i32 %2, 201326592
  %switch.selectcmp2 = icmp eq i32 %3, 134217728
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.l = load i32, ptr %1, align 4, !tbaa !37
  %i.m = and i32 %i.l, 16
  %i.n = icmp ne i32 %i.m, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %switch.selectcmp2, %bb.d ], [ %i.n, %bb.e ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK8NArchive4NZip5CItem16GetWinAttributesEv(ptr noundef nonnull align 8 dereferenceable(179) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 81 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !24    ; 3 uses
  switch i8 %i.b, label %bb.e [
    i8 0, label %bb.b
    i8 11, label %bb.b
    i8 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 177
  %i.d = load i8, ptr %i.c, align 1, !tbaa !34, !range !35, !noundef !36
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.g = load i32, ptr %i.f, align 4, !tbaa !37
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.i = load i32, ptr %i.h, align 4, !tbaa !37   ; 2 uses
  %i.j = and i32 %i.i, -65536
  %i.k = and i32 %i.i, 1073741824
  %.not = icmp eq i32 %i.k, 0
  %spec.select.v = select i1 %.not, i32 32768, i32 32784
  %spec.select = or disjoint i32 %spec.select.v, %i.j
  br label %_ZNK8NArchive4NZip5CItem5IsDirEv.exit.thread

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.1 = phi i32 [ 0, %bb.b ], [ %i.g, %bb.c ], [ 0, %bb.a ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = icmp eq i8 %i.b, 0
  %i.n = icmp eq i8 %i.b, 11
  %narrow.i.i = or i1 %i.m, %i.n
  %i.o = zext i1 %narrow.i.i to i32
  %i.p = tail call noundef zeroext i1 @_ZN8NArchive9NItemName12HasTailSlashERK11CStringBaseIcEj(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i32 noundef %i.o)
  br i1 %i.p, label %_ZNK8NArchive4NZip5CItem5IsDirEv.exit.thread10, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 177
  %i.r = load i8, ptr %i.q, align 1, !tbaa !34, !range !35, !noundef !36
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.g, label %_ZNK8NArchive4NZip5CItem5IsDirEv.exit.thread

bb.g:                                             ; preds = %bb.f
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.t = load i8, ptr %i.a, align 1, !tbaa !24
  switch i8 %i.t, label %_ZNK8NArchive4NZip5CItem5IsDirEv.exit.thread [
    i8 1, label %bb.h
    i8 0, label %_ZNK8NArchive4NZip5CItem5IsDirEv.exit
    i8 11, label %_ZNK8NArchive4NZip5CItem5IsDirEv.exit
    i8 6, label %_ZNK8NArchive4NZip5CItem5IsDirEv.exit
    i8 14, label %_ZNK8NArchive4NZip5CItem5IsDirEv.exit
  ]

bb.h:                                             ; preds = %bb.g
  %2 = load i32, ptr %1, align 4, !tbaa !37
  %.fr16 = freeze i32 %2
  %3 = and i32 %.fr16, 201326592
  %switch.selectcmp2.i = icmp eq i32 %3, 134217728
  br i1 %switch.selectcmp2.i, label %_ZNK8NArchive4NZip5CItem5IsDirEv.exit.thread10, label %_ZNK8NArchive4NZip5CItem5IsDirEv.exit.thread

_ZNK8NArchive4NZip5CItem5IsDirEv.exit:            ; preds = %bb.g, %bb.g, %bb.g, %bb.g
  %i.u = load i32, ptr %1, align 4, !tbaa !37
  %.fr14 = freeze i32 %i.u
  %i.v = and i32 %.fr14, 16
  %.not15 = icmp eq i32 %i.v, 0
  br i1 %.not15, label %_ZNK8NArchive4NZip5CItem5IsDirEv.exit.thread, label %_ZNK8NArchive4NZip5CItem5IsDirEv.exit.thread10

_ZNK8NArchive4NZip5CItem5IsDirEv.exit.thread10:   ; preds = %bb.e, %bb.h, %_ZNK8NArchive4NZip5CItem5IsDirEv.exit
  %i.w = or i32 %.1, 16
  br label %_ZNK8NArchive4NZip5CItem5IsDirEv.exit.thread

_ZNK8NArchive4NZip5CItem5IsDirEv.exit.thread:     ; preds = %bb.g, %bb.f, %_ZNK8NArchive4NZip5CItem5IsDirEv.exit.thread10, %_ZNK8NArchive4NZip5CItem5IsDirEv.exit, %bb.h, %bb.d
  %.06 = phi i32 [ %spec.select, %bb.d ], [ %i.w, %_ZNK8NArchive4NZip5CItem5IsDirEv.exit.thread10 ], [ %.1, %_ZNK8NArchive4NZip5CItem5IsDirEv.exit ], [ %.1, %bb.h ], [ %.1, %bb.f ], [ %.1, %bb.g ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN8NArchive4NZip10CLocalItem11SetFlagBitsEiii(ptr noundef nonnull align 8 captures(none) dereferenceable(80) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 align 2 {
bb.a:
  %notmask = shl nsw i32 -1, %2
  %i.a = xor i32 %notmask, -1
  %i.b = shl i32 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !38
  %i.e = trunc i32 %i.b to i16
  %i.f = xor i16 %i.e, -1
  %i.g = and i16 %i.d, %i.f
  %i.h = shl i32 %3, %1
  %i.i = trunc i32 %i.h to i16
  %i.j = or i16 %i.g, %i.i
  store i16 %i.j, ptr %i.c, align 2, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN8NArchive4NZip10CLocalItem10SetBitMaskEib(ptr noundef nonnull align 8 captures(none) dereferenceable(80) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !38   ; 2 uses
  %i.c = trunc i32 %1 to i16                      ; 2 uses
  %i.d = xor i16 %i.c, -1
  %i.e = and i16 %i.b, %i.d
  %i.f = or i16 %i.b, %i.c
  %.sink = select i1 %2, i16 %i.f, i16 %i.e
  store i16 %.sink, ptr %i.a, align 2, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN8NArchive4NZip10CLocalItem12SetEncryptedEb(ptr noundef nonnull align 8 captures(none) dereferenceable(80) %0, i1 noundef zeroext %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !38
  %i.c = and i16 %i.b, -2
  %masksel = zext i1 %1 to i16
  %.sink.i = or disjoint i16 %i.c, %masksel
  store i16 %.sink.i, ptr %i.a, align 2, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN8NArchive4NZip10CLocalItem7SetUtf8Eb(ptr noundef nonnull align 8 captures(none) dereferenceable(80) %0, i1 noundef zeroext %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !38
  %i.c = and i16 %i.b, -2049
  %masksel = select i1 %1, i16 2048, i16 0
  %.sink.i = or disjoint i16 %i.c, %masksel
  store i16 %.sink.i, ptr %i.a, align 2, !tbaa !38
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !6, i64 0}
!9 = !{!"_ZTSN8NArchive4NZip8CVersionE", !6, i64 0, !6, i64 1}
!10 = !{!11, !5, i64 0}
!11 = !{!"_ZTS9_FILETIME", !5, i64 0, !5, i64 4}
!12 = !{!11, !5, i64 4}
!13 = !{!14, !15, i64 8}
!14 = !{!"_ZTS7CBufferIhE", !15, i64 8, !16, i64 16}
!15 = !{!"long", !6, i64 0}
!16 = !{!"p1 omnipotent char", !17, i64 0}
!17 = !{!"any pointer", !6, i64 0}
!18 = !{!19, !20, i64 0}
!19 = !{!"_ZTSN8NArchive4NZip14CExtraSubBlockE", !20, i64 0, !14, i64 8}
!20 = !{!"short", !6, i64 0}
!21 = !{!14, !16, i64 16}
!22 = !{!20, !20, i64 0}
!23 = !{!6, !6, i64 0}
!24 = !{!25, !6, i64 81}
!25 = !{!"_ZTSN8NArchive4NZip5CItemE", !26, i64 0, !9, i64 80, !20, i64 82, !5, i64 84, !27, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !29, i64 120, !14, i64 152, !33, i64 176, !33, i64 177, !33, i64 178}
!26 = !{!"_ZTSN8NArchive4NZip10CLocalItemE", !9, i64 0, !20, i64 2, !20, i64 4, !5, i64 8, !5, i64 12, !27, i64 16, !27, i64 24, !28, i64 32, !29, i64 48}
!27 = !{!"long long", !6, i64 0}
!28 = !{!"_ZTS11CStringBaseIcE", !16, i64 0, !5, i64 8, !5, i64 12}
!29 = !{!"_ZTSN8NArchive4NZip11CExtraBlockE", !30, i64 0}
!30 = !{!"_ZTS13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE", !31, i64 0}
!31 = !{!"_ZTS13CRecordVectorIPvE", !32, i64 0}
!32 = !{!"_ZTS17CBaseRecordVector", !5, i64 8, !5, i64 12, !17, i64 16, !15, i64 24}
!33 = !{!"bool", !6, i64 0}
!34 = !{!25, !33, i64 177}
!35 = !{i8 0, i8 2}
!36 = !{}
!37 = !{!25, !5, i64 84}
!38 = !{!26, !20, i64 2}
end_hunk_0
