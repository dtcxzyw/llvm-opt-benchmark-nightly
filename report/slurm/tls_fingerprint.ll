Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/tls_fingerprint?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.slurm_conf_t = type { i64, ptr, i16, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, i16, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i64, i64, ptr, i16, i16, ptr, i32, i32, ptr, i32, i16, ptr, i32, i16, i16, ptr, i16, i16, ptr, ptr, i32, i16, i16, ptr, i16, ptr, i32, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i16, i16, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr, i16, ptr, ptr, i32, i32, i32, i32, i32, i64, i32, i32, i16, ptr, ptr, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, i16, i32, ptr, ptr, i16, ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, ptr, i16, ptr, i32, i32, i32, i32, i32, i32, ptr, i16, ptr, ptr, i32, ptr, i32, i16, i16, i16, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, i16, i16, ptr, i16, ptr, i16, ptr, i16, ptr, i16, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, i16, ptr, ptr, ptr, i32, i16, ptr, ptr, i16, i16, ptr, i16, ptr, ptr, ptr, ptr, i32, ptr, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i32, i16, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i16, ptr, ptr, ptr, i16, ptr, i16, ptr, ptr, i16, i16, ptr }

@slurm_conf = external local_unnamed_addr global %struct.slurm_conf_t, align 8
@.str = private unnamed_addr constant [50 x i8] c"NET: %s: [%s] SSLv3 handshake fingerprint matched\00", align 1
@__func__.tls_is_handshake = private unnamed_addr constant [17 x i8] c"tls_is_handshake\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"NET_RAW: [%s] matched SSLv3 handshake\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"NET: %s: [%s] TLS handshake fingerprint matched\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"NET_RAW: [%s] matched TLS handshake\00", align 1
@.str.4 = private unnamed_addr constant [72 x i8] c"NET: %s: [%s] waiting for more bytes to fingerprint match TLS handshake\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"NET: %s: [%s] TLS not detected\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"NET_RAW: [%s] unable to match TLS handshake\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 12) i32 @tls_is_handshake(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %1, 5
  br i1 %i.a, label %.thread52, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1                 ; 2 uses
  %.not.i = icmp eq i8 %i.b, 22
  br i1 %.not.i, label %bb.c, label %select.unfold

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %or.cond.not.i = icmp eq i8 %i.d, 3
  br i1 %or.cond.not.i, label %bb.d, label %select.unfold

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3
  %3 = load i8, ptr %i.e, align 1                 ; 2 uses
  %4 = zext i8 %3 to i16
  %5 = shl nuw i16 %4, 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i16
  %9 = or disjoint i16 %5, %8
  %10 = icmp ult i16 %9, 2
  %11 = icmp ugt i8 %3, 15
  %or.cond5.i = or i1 %11, %10
  br i1 %or.cond5.i, label %select.unfold, label %_is_sslv3_handshake.exit

_is_sslv3_handshake.exit:                         ; preds = %bb.d
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.g = and i64 %i.f, 1024
  %.not30 = icmp eq i64 %i.g, 0
  br i1 %.not30, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_is_sslv3_handshake.exit
  %i.h = tail call i32 @get_log_level() #2
  %i.i = icmp sgt i32 %i.h, 3
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tls_is_handshake, ptr noundef %2) #2
  br label %bb.g

bb.g:                                             ; preds = %_is_sslv3_handshake.exit, %bb.f, %bb.e
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.k = and i64 %i.j, 16
  %.not31 = icmp eq i64 %i.k, 0
  br i1 %.not31, label %bb.w, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i64, i64, i64, ptr, ...) @_log_flag_hex(ptr noundef nonnull %0, i64 noundef %1, i64 noundef -1, i64 noundef -1, ptr noundef nonnull @.str.1, ptr noundef %2) #2
  br label %bb.w

select.unfold:                                    ; preds = %bb.d, %bb.c, %bb.b
  %i.l = icmp eq i64 %1, 5
  br i1 %i.l, label %.thread52, label %bb.i

bb.i:                                             ; preds = %select.unfold
  %.not.i38 = icmp eq i8 %i.b, 1
  br i1 %.not.i38, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1
  %12 = load i8, ptr %i.m, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %16 = load i8, ptr %15, align 1
  %i.n = zext i8 %16 to i32
  %i.o = shl nuw nsw i32 %i.n, 8
  %17 = or disjoint i32 %i.o, %14                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i32
  %i.s = or disjoint i32 %17, %i.r
  %i.t = icmp samesign ult i32 %i.s, 2
  %i.u = icmp samesign ugt i32 %17, 4095
  %or.cond.i = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond.i, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = load i8, ptr %i.v, align 1
  %or.cond4.not.i = icmp eq i8 %i.w, 3
  br i1 %or.cond4.not.i, label %_is_tls_handshake.exit, label %bb.r

_is_tls_handshake.exit:                           ; preds = %bb.k
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.y = and i64 %i.x, 1024
  %.not33 = icmp eq i64 %i.y, 0
  br i1 %.not33, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_is_tls_handshake.exit
  %i.z = tail call i32 @get_log_level() #2
  %i.aa = icmp sgt i32 %i.z, 3
  br i1 %i.aa, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tls_is_handshake, ptr noundef %2) #2
  br label %bb.n

bb.n:                                             ; preds = %_is_tls_handshake.exit, %bb.m, %bb.l
  %i.ab = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.ac = and i64 %i.ab, 16
  %.not34 = icmp eq i64 %i.ac, 0
  br i1 %.not34, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, i64, i64, i64, ptr, ...) @_log_flag_hex(ptr noundef nonnull %0, i64 noundef %1, i64 noundef -1, i64 noundef -1, ptr noundef nonnull @.str.3, ptr noundef %2) #2
  br label %bb.w

.thread52:                                        ; preds = %bb.a, %select.unfold
  %i.ad = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.ae = and i64 %i.ad, 1024
  %.not37 = icmp eq i64 %i.ae, 0
  br i1 %.not37, label %bb.w, label %bb.p

bb.p:                                             ; preds = %.thread52
  %i.af = tail call i32 @get_log_level() #2
  %i.ag = icmp sgt i32 %i.af, 3
  br i1 %i.ag, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tls_is_handshake, ptr noundef %2) #2
  br label %bb.w

bb.r:                                             ; preds = %bb.k, %bb.i, %bb.j
  %i.ah = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.ai = and i64 %i.ah, 1024
  %.not35 = icmp eq i64 %i.ai, 0
  br i1 %.not35, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call i32 @get_log_level() #2
  %i.ak = icmp sgt i32 %i.aj, 3
  br i1 %i.ak, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.tls_is_handshake, ptr noundef %2) #2
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.t, %bb.s
  %i.al = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.am = and i64 %i.al, 16
  %.not36 = icmp eq i64 %i.am, 0
  br i1 %.not36, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, i64, i64, i64, ptr, ...) @_log_flag_hex(ptr noundef nonnull %0, i64 noundef %1, i64 noundef -1, i64 noundef -1, ptr noundef nonnull @.str.6, ptr noundef %2) #2
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %.thread52, %bb.q, %bb.p, %bb.n, %bb.o, %bb.g, %bb.h
  %.0 = phi i32 [ 0, %bb.n ], [ 11, %.thread52 ], [ 2, %bb.u ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.o ], [ 11, %bb.p ], [ 11, %bb.q ], [ 2, %bb.v ]
  ret i32 %.0
}

declare i32 @get_log_level() local_unnamed_addr #1

declare void @log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @_log_flag_hex(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
end_hunk_0
