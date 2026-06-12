inline.NumInlined: 8
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN4llvh20circular_raw_ostreamD2Ev = comdat any

$_ZN4llvh20circular_raw_ostreamD0Ev = comdat any

$_ZN4llvh11raw_ostream11changeColorENS0_6ColorsEbb = comdat any

$_ZN4llvh11raw_ostream10resetColorEv = comdat any

$_ZN4llvh11raw_ostream12reverseColorEv = comdat any

$_ZNK4llvh11raw_ostream12is_displayedEv = comdat any

$_ZNK4llvh11raw_ostream10has_colorsEv = comdat any

$_ZNK4llvh20circular_raw_ostream11current_posEv = comdat any

@_ZTVN4llvh20circular_raw_ostreamE = hidden unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr null, ptr @_ZN4llvh20circular_raw_ostreamD2Ev, ptr @_ZN4llvh20circular_raw_ostreamD0Ev, ptr @_ZN4llvh11raw_ostream11changeColorENS0_6ColorsEbb, ptr @_ZN4llvh11raw_ostream10resetColorEv, ptr @_ZN4llvh11raw_ostream12reverseColorEv, ptr @_ZNK4llvh11raw_ostream12is_displayedEv, ptr @_ZNK4llvh11raw_ostream10has_colorsEv, ptr @_ZN4llvh20circular_raw_ostream10write_implEPKcm, ptr @_ZNK4llvh20circular_raw_ostream11current_posEv, ptr @_ZNK4llvh11raw_ostream21preferred_buffer_sizeEv, ptr @_ZN4llvh11raw_ostream6anchorEv] }, align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh20circular_raw_ostream10write_implEPKcm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not13 = icmp eq i64 %2, 0
  br i1 %.not13, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !16
  %.pre15 = load ptr, ptr %i.e, align 8, !tbaa !17
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.i = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.h, ptr noundef %1, i64 noundef %2) #7 ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %i.j = phi ptr [ %.pre15, %.lr.ph ], [ %i.v, %bb.e ]
  %i.k = phi ptr [ %.pre, %.lr.ph ], [ %i.z, %bb.e ] ; 2 uses
  %i.l = phi i64 [ %i.b, %.lr.ph ], [ %i.w, %bb.e ]
  %.014 = phi i64 [ %2, %.lr.ph ], [ %i.s, %bb.e ] ; 2 uses
  %i.m = trunc i64 %.014 to i32
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = ptrtoint ptr %i.j to i64
  %.neg = sub i64 %i.l, %i.n
  %i.p = add i64 %.neg, %i.o
  %i.q = trunc i64 %i.p to i32
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.m)
  %i.r = zext i32 %.sroa.speculated to i64        ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %1, i64 %i.r, i1 false)
  %i.s = sub i64 %.014, %i.r                      ; 2 uses
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r ; 3 uses
  store ptr %i.u, ptr %i.d, align 8, !tbaa !16
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !17   ; 4 uses
  %i.w = load i64, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = icmp eq ptr %i.u, %i.x
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.v, ptr %i.d, align 8, !tbaa !16
  store i8 1, ptr %i.f, align 8, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = phi ptr [ %i.v, %bb.d ], [ %i.u, %bb.c ]
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !20

.loopexit:                                        ; preds = %bb.e, %.preheader, %bb.b
  ret void
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh20circular_raw_ostream21flushBufferWithBannerEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22   ; 2 uses
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #8
  %i.h = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.d, ptr noundef nonnull %i.f, i64 noundef %i.g) #7 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !19, !range !23, !noundef !24
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %_ZN4llvh20circular_raw_ostream11flushBufferEv.exit

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.q = load i64, ptr %i.a, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.n to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.l, ptr noundef %i.n, i64 noundef %i.u) #7 ; 0 uses
  br label %_ZN4llvh20circular_raw_ostream11flushBufferEv.exit

_ZN4llvh20circular_raw_ostream11flushBufferEv.exit: ; preds = %bb.b, %bb.c
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !17   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !16
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.w, ptr noundef %i.y, i64 noundef %i.ad) #7 ; 0 uses
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !17
  store ptr %i.af, ptr %i.z, align 8, !tbaa !16
  store i8 0, ptr %i.i, align 8, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvh20circular_raw_ostream11flushBufferEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh20circular_raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh20circular_raw_ostreamE, i64 16), ptr %0, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %_ZN4llvh11raw_ostream5flushEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvh11raw_ostream14flush_nonemptyEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #7
  br label %_ZN4llvh11raw_ostream5flushEv.exit

_ZN4llvh11raw_ostream5flushEv.exit:               ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !7
  %.not.i1 = icmp eq i64 %i.f, 0
  br i1 %.not.i1, label %_ZN4llvh20circular_raw_ostream21flushBufferWithBannerEv.exit.a, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh11raw_ostream5flushEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22   ; 2 uses
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #8
  %i.l = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.h, ptr noundef nonnull %i.j, i64 noundef %i.k) #7 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !19, !range !23, !noundef !24
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %_ZN4llvh20circular_raw_ostream11flushBufferEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !16   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !17
  %i.u = load i64, ptr %i.e, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.r to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.p, ptr noundef %i.r, i64 noundef %i.y) #7 ; 0 uses
  br label %_ZN4llvh20circular_raw_ostream11flushBufferEv.exit.i

_ZN4llvh20circular_raw_ostream11flushBufferEv.exit.i: ; preds = %bb.d, %bb.c
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !17 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !16
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.aa, ptr noundef %i.ac, i64 noundef %i.ah) #7 ; 0 uses
  %i.aj = load ptr, ptr %i.ab, align 8, !tbaa !17
  store ptr %i.aj, ptr %i.ad, align 8, !tbaa !16
  store i8 0, ptr %i.m, align 8, !tbaa !19
  br label %_ZN4llvh20circular_raw_ostream21flushBufferWithBannerEv.exit.a

_ZN4llvh20circular_raw_ostream21flushBufferWithBannerEv.exit.a: ; preds = %_ZN4llvh11raw_ostream5flushEv.exit, %_ZN4llvh20circular_raw_ostream11flushBufferEv.exit.i
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2 = load ptr, ptr %1, align 8, !tbaa !18       ; 3 uses
  %.not.i2 = icmp ne ptr %2, null
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load i8, ptr %i.ak, align 8, !range !23
  %i.am = trunc nuw i8 %i.al to i1
  %or.cond.i = select i1 %.not.i2, i1 %i.am, i1 false
  br i1 %or.cond.i, label %bb.e, label %_ZN4llvh20circular_raw_ostream13releaseStreamEv.exit

bb.e:                                             ; preds = %_ZN4llvh20circular_raw_ostream21flushBufferWithBannerEv.exit.a
  %i.an = load ptr, ptr %2, align 8, !tbaa !25
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %2) #7, !inline_history !29
  br label %_ZN4llvh20circular_raw_ostream13releaseStreamEv.exit

_ZN4llvh20circular_raw_ostream13releaseStreamEv.exit: ; preds = %_ZN4llvh20circular_raw_ostream21flushBufferWithBannerEv.exit.a, %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !17 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh20circular_raw_ostream13releaseStreamEv.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.ar) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4llvh20circular_raw_ostream13releaseStreamEv.exit
  tail call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %0) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh20circular_raw_ostreamD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4llvh20circular_raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #7
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #9
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream11changeColorENS0_6ColorsEbb(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream10resetColorEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream12reverseColorEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvh11raw_ostream12is_displayedEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvh11raw_ostream10has_colorsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(36) %0) #7
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK4llvh20circular_raw_ostream11current_posEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(36) %i.b) #7, !inline_history !30
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !28
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %.neg = add i64 %i.f, %i.k
  %i.t = add i64 %i.l, %i.r
  %i.u = sub i64 %.neg, %i.t
  %i.v = add i64 %i.u, %i.s
  ret i64 %i.v
}

declare noundef i64 @_ZNK4llvh11raw_ostream21preferred_buffer_sizeEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

declare void @_ZN4llvh11raw_ostream6anchorEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36)) unnamed_addr #5

declare void @_ZN4llvh11raw_ostream14flush_nonemptyEv(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { builtin nounwind }

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
!7 = !{!8, !15, i64 56}
!8 = !{!"_ZTSN4llvh20circular_raw_ostreamE", !9, i64 0, !13, i64 40, !14, i64 48, !15, i64 56, !10, i64 64, !10, i64 72, !14, i64 80, !10, i64 88}
!9 = !{!"_ZTSN4llvh11raw_ostreamE", !10, i64 8, !10, i64 16, !10, i64 24, !12, i64 32}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"_ZTSN4llvh11raw_ostream10BufferKindE", !5, i64 0}
!13 = !{!"p1 _ZTSN4llvh11raw_ostreamE", !11, i64 0}
!14 = !{!"bool", !5, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = !{!8, !10, i64 72}
!17 = !{!8, !10, i64 64}
!18 = !{!8, !13, i64 40}
!19 = !{!8, !14, i64 80}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!8, !10, i64 88}
!23 = !{i8 0, i8 2}
!24 = !{}
!25 = !{!26, !26, i64 0}
!26 = !{!"vtable pointer", !6, i64 0}
!27 = !{!9, !10, i64 24}
!28 = !{!9, !10, i64 8}
!29 = distinct !{null}
!30 = distinct !{null}
end_hunk_0
