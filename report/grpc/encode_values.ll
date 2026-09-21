Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/encode_values?download=true
inline.NumInlined: 12
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4bssl3der32EncodePosixTimeAsGeneralizedTimeElPNS0_15GeneralizedTimeE(i64 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.tm, align 8                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  %i.a = call i32 @OPENSSL_posix_to_tm(i64 noundef %0, ptr noundef nonnull %2)
  %.not = icmp ne i32 %i.a, 0                     ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !15
  %i.d = trunc i32 %i.c to i16
  %i.e = add i16 %i.d, 1900
  store i16 %i.e, ptr %1, align 2, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !19
  %i.h = trunc i32 %i.g to i8
  %i.i = add i8 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.i, ptr %i.j, align 2, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !21
  %i.m = trunc i32 %i.l to i8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.m, ptr %i.n, align 1, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !23
  %i.q = trunc i32 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.q, ptr %i.r, align 2, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !25
  %i.u = trunc i32 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.u, ptr %i.v, align 1, !tbaa !26
  %i.w = load i32, ptr %2, align 8, !tbaa !27
  %i.x = trunc i32 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.x, ptr %i.y, align 2, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  ret i1 %.not
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @OPENSSL_posix_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4bssl3der26GeneralizedTimeToPosixTimeERKNS0_15GeneralizedTimeEPl(ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.tm, align 8                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  %i.a = load i16, ptr %0, align 2, !tbaa !18
  %i.b = zext i16 %i.a to i32
  %i.c = add nsw i32 %i.b, -1900
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %i.c, ptr %i.d, align 4, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i8, ptr %i.e, align 2, !tbaa !20
  %i.g = zext i8 %i.f to i32
  %i.h = add nsw i32 %i.g, -1
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.h, ptr %i.i, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !22
  %i.l = zext i8 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.l, ptr %i.m, align 4, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load i8, ptr %i.n, align 2, !tbaa !24
  %i.p = zext i8 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.p, ptr %i.q, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.s = load i8, ptr %i.r, align 1, !tbaa !26
  %i.t = zext i8 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.t, ptr %i.u, align 4, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.w = load i8, ptr %i.v, align 2, !tbaa !28    ; 2 uses
  %i.x = icmp eq i8 %i.w, 60
  %narrow = select i1 %i.x, i8 59, i8 %i.w
  %spec.select = zext i8 %narrow to i32
  store i32 %spec.select, ptr %2, align 8, !tbaa !27
  %i.y = call i32 @OPENSSL_tm_to_posix(ptr noundef nonnull %2, ptr noundef %1)
  %i.z = icmp ne i32 %i.y, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  ret i1 %i.z
}

declare i32 @OPENSSL_tm_to_posix(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN4bssl3der21EncodeGeneralizedTimeERKNS0_15GeneralizedTimeEPh(ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(8) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !18     ; 5 uses
  %i.b = icmp ult i16 %i.a, 10000
  br i1 %i.b, label %bb.b, label %_ZN4bssl3der12_GLOBAL__N_114WriteFourDigitEtPh.exit

bb.b:                                             ; preds = %bb.a
  %i.c = urem i16 %i.a, 10
  %i.d = trunc nuw nsw i16 %i.c to i8
  %i.e = or disjoint i8 %i.d, 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.e, ptr %i.f, align 1, !tbaa !29
  %i.g = udiv i16 %i.a, 10
  %i.h = urem i16 %i.g, 10
  %i.i = trunc nuw nsw i16 %i.h to i8
  %i.j = or disjoint i8 %i.i, 48
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.j, ptr %i.k, align 1, !tbaa !29
  %2 = udiv i16 %i.a, 100
  %.lhs.trunc.i = trunc nuw nsw i16 %2 to i8
  %i.l = urem i8 %.lhs.trunc.i, 10
  %i.m = or disjoint i8 %i.l, 48
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.m, ptr %i.n, align 1, !tbaa !29
  %3 = udiv i16 %i.a, 1000
  %4 = trunc nuw nsw i16 %3 to i8
  %i.o = add nuw nsw i8 %4, 48
  store i8 %i.o, ptr %1, align 1, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.q = load i8, ptr %i.p, align 2, !tbaa !20    ; 3 uses
  %i.r = icmp ult i8 %i.q, 100
  br i1 %i.r, label %bb.c, label %_ZN4bssl3der12_GLOBAL__N_114WriteFourDigitEtPh.exit

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = udiv i8 %i.q, 10
  %i.u = or disjoint i8 %i.t, 48
  store i8 %i.u, ptr %i.s, align 1, !tbaa !29
  %i.v = urem i8 %i.q, 10
  %i.w = or disjoint i8 %i.v, 48
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.w, ptr %i.x, align 1, !tbaa !29
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !22    ; 3 uses
  %i.aa = icmp ult i8 %i.z, 100
  br i1 %i.aa, label %bb.d, label %_ZN4bssl3der12_GLOBAL__N_114WriteFourDigitEtPh.exit

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ac = udiv i8 %i.z, 10
  %i.ad = or disjoint i8 %i.ac, 48
  store i8 %i.ad, ptr %i.ab, align 1, !tbaa !29
  %i.ae = urem i8 %i.z, 10
  %i.af = or disjoint i8 %i.ae, 48
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ai = load i8, ptr %i.ah, align 2, !tbaa !24  ; 3 uses
  %i.aj = icmp ult i8 %i.ai, 100
  br i1 %i.aj, label %bb.e, label %_ZN4bssl3der12_GLOBAL__N_114WriteFourDigitEtPh.exit

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = udiv i8 %i.ai, 10
  %i.am = or disjoint i8 %i.al, 48
  store i8 %i.am, ptr %i.ak, align 1, !tbaa !29
  %i.an = urem i8 %i.ai, 10
  %i.ao = or disjoint i8 %i.an, 48
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !29
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !26  ; 3 uses
  %i.as = icmp ult i8 %i.ar, 100
  br i1 %i.as, label %bb.f, label %_ZN4bssl3der12_GLOBAL__N_114WriteFourDigitEtPh.exit

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.au = udiv i8 %i.ar, 10
  %i.av = or disjoint i8 %i.au, 48
  store i8 %i.av, ptr %i.at, align 1, !tbaa !29
  %i.aw = urem i8 %i.ar, 10
  %i.ax = or disjoint i8 %i.aw, 48
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !29
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ba = load i8, ptr %i.az, align 2, !tbaa !28  ; 3 uses
  %i.bb = icmp ult i8 %i.ba, 100
  br i1 %i.bb, label %bb.g, label %_ZN4bssl3der12_GLOBAL__N_114WriteFourDigitEtPh.exit

bb.g:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bd = udiv i8 %i.ba, 10
  %i.be = or disjoint i8 %i.bd, 48
  store i8 %i.be, ptr %i.bc, align 1, !tbaa !29
  %i.bf = urem i8 %i.ba, 10
  %i.bg = or disjoint i8 %i.bf, 48
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !29
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 90, ptr %i.bi, align 1, !tbaa !29
  br label %_ZN4bssl3der12_GLOBAL__N_114WriteFourDigitEtPh.exit

_ZN4bssl3der12_GLOBAL__N_114WriteFourDigitEtPh.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.g
  %.0 = phi i1 [ true, %bb.g ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.f ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4bssl3der13EncodeUTCTimeERKNS0_15GeneralizedTimeEPh(ptr noundef nonnull align 2 dereferenceable(8) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK4bssl3der15GeneralizedTime14InUTCTimeRangeEv(ptr noundef nonnull align 2 dereferenceable(8) %0)
  br i1 %i.a, label %bb.b, label %_ZN4bssl3der12_GLOBAL__N_113WriteTwoDigitEhPh.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %0, align 2, !tbaa !18     ; 2 uses
  %i.c = add i16 %i.b, -1900                      ; 2 uses
  %i.d = icmp ugt i16 %i.c, 99
  %i.e = add i16 %i.b, 48
  %spec.select = select i1 %i.d, i16 %i.e, i16 %i.c
  %i.f = trunc i16 %spec.select to i8             ; 3 uses
  %i.g = icmp ult i8 %i.f, 100
  br i1 %i.g, label %bb.c, label %_ZN4bssl3der12_GLOBAL__N_113WriteTwoDigitEhPh.exit

bb.c:                                             ; preds = %bb.b
  %i.h = udiv i8 %i.f, 10
  %i.i = or disjoint i8 %i.h, 48
  store i8 %i.i, ptr %1, align 1, !tbaa !29
  %i.j = urem i8 %i.f, 10
  %i.k = or disjoint i8 %i.j, 48
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.k, ptr %i.l, align 1, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.n = load i8, ptr %i.m, align 2, !tbaa !20    ; 3 uses
  %i.o = icmp ult i8 %i.n, 100
  br i1 %i.o, label %bb.d, label %_ZN4bssl3der12_GLOBAL__N_113WriteTwoDigitEhPh.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.q = udiv i8 %i.n, 10
  %i.r = or disjoint i8 %i.q, 48
  store i8 %i.r, ptr %i.p, align 1, !tbaa !29
  %i.s = urem i8 %i.n, 10
  %i.t = or disjoint i8 %i.s, 48
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.t, ptr %i.u, align 1, !tbaa !29
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !22    ; 3 uses
  %i.x = icmp ult i8 %i.w, 100
  br i1 %i.x, label %bb.e, label %_ZN4bssl3der12_GLOBAL__N_113WriteTwoDigitEhPh.exit

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.z = udiv i8 %i.w, 10
  %i.aa = or disjoint i8 %i.z, 48
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !29
  %i.ab = urem i8 %i.w, 10
  %i.ac = or disjoint i8 %i.ab, 48
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.af = load i8, ptr %i.ae, align 2, !tbaa !24  ; 3 uses
  %i.ag = icmp ult i8 %i.af, 100
  br i1 %i.ag, label %bb.f, label %_ZN4bssl3der12_GLOBAL__N_113WriteTwoDigitEhPh.exit

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ai = udiv i8 %i.af, 10
  %i.aj = or disjoint i8 %i.ai, 48
  store i8 %i.aj, ptr %i.ah, align 1, !tbaa !29
  %i.ak = urem i8 %i.af, 10
  %i.al = or disjoint i8 %i.ak, 48
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.al, ptr %i.am, align 1, !tbaa !29
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !26  ; 3 uses
  %i.ap = icmp ult i8 %i.ao, 100
  br i1 %i.ap, label %bb.g, label %_ZN4bssl3der12_GLOBAL__N_113WriteTwoDigitEhPh.exit

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = udiv i8 %i.ao, 10
  %i.as = or disjoint i8 %i.ar, 48
  store i8 %i.as, ptr %i.aq, align 1, !tbaa !29
  %i.at = urem i8 %i.ao, 10
  %i.au = or disjoint i8 %i.at, 48
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.au, ptr %i.av, align 1, !tbaa !29
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !28  ; 3 uses
  %i.ay = icmp ult i8 %i.ax, 100
  br i1 %i.ay, label %bb.h, label %_ZN4bssl3der12_GLOBAL__N_113WriteTwoDigitEhPh.exit

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ba = udiv i8 %i.ax, 10
  %i.bb = or disjoint i8 %i.ba, 48
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !29
  %i.bc = urem i8 %i.ax, 10
  %i.bd = or disjoint i8 %i.bc, 48
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !29
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 90, ptr %i.bf, align 1, !tbaa !29
  br label %_ZN4bssl3der12_GLOBAL__N_113WriteTwoDigitEhPh.exit

_ZN4bssl3der12_GLOBAL__N_113WriteTwoDigitEhPh.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.h, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %bb.h ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.g ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZNK4bssl3der15GeneralizedTime14InUTCTimeRangeEv(ptr noundef nonnull align 2 dereferenceable(8)) local_unnamed_addr #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
end_hunk_0
