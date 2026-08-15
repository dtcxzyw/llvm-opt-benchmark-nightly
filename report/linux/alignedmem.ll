inline.NumInlined: 16
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@efi_system_table = external hidden local_unnamed_addr global ptr, align 8
@efi_is64 = external hidden local_unnamed_addr constant i8, align 1

; Function Attrs: noredzone nounwind optsize
define hidden i64 @efi_allocate_pages_aligned(i64 noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [3 x i64], align 16               ; 3 uses
  %i.c = alloca [3 x i64], align 16               ; 3 uses
  %i.d = alloca [3 x i64], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.e = load i8, ptr @efi_is64, align 1, !range !4, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1                  ; 4 uses
  %i.g = tail call i64 @llvm.umin.i64(i64 %2, i64 4294967295)
  %i.h = select i1 %i.f, i64 %2, i64 %i.g
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %3, i64 4096) ; 3 uses
  %i.i = add i64 %i.h, 1
  %i.j = add i64 %spec.store.select, -1           ; 2 uses
  %i.k = sub i64 0, %spec.store.select            ; 2 uses
  %i.l = and i64 %i.i, %i.k
  %i.m = add i64 %i.l, -1
  store i64 %i.m, ptr %i.a, align 8
  %i.n = add i64 %0, -1
  %5 = or i64 %i.n, 4095
  %6 = add i64 %5, 1                              ; 4 uses
  %i.o = lshr i64 %spec.store.select, 12          ; 2 uses
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %i.q = add i32 %i.p, -1                         ; 4 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = load ptr, ptr @efi_system_table, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = lshr exact i64 %6, 12
  %i.x = sext i32 %i.q to i64
  %i.y = add nsw i64 %i.w, %i.x
  %i.z = call win64cc i64 %i.v(i32 noundef 1, i32 noundef %4, i64 noundef %i.y, ptr noundef nonnull %i.a) #5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.aa = load ptr, ptr @efi_system_table, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 60
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = zext i32 %i.ac to i64
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = lshr exact i64 %6, 12
  %i.ai = sext i32 %i.q to i64
  %i.aj = add nsw i64 %i.ah, %i.ai
  %i.ak = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.ag, i32 noundef 1, i32 noundef %4, i64 noundef %i.aj, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  %i.al = trunc i64 %i.ak to i32                  ; 2 uses
  %i.am = call noundef i32 @llvm.fshl.i32(i32 %i.al, i32 %i.al, i32 1)
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = call range(i64 0, -9223372034707292160) i64 @llvm.fshl.i64(i64 range(i64 0, 4294967296) %i.an, i64 range(i64 0, 4294967296) %i.an, i64 63)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ap = phi i64 [ %i.z, %bb.b ], [ %i.ao, %bb.c ] ; 2 uses
  %.not = icmp eq i64 %i.ap, 0
  br i1 %.not, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.aq = load i64, ptr %i.a, align 8             ; 4 uses
  %i.ar = add i64 %i.aq, %i.j
  %i.as = and i64 %i.ar, %i.k
  store i64 %i.as, ptr %1, align 8
  %i.at = icmp sgt i32 %i.q, 0
  br i1 %i.at, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.au = and i64 %i.aq, %i.j
  %i.av = lshr i64 %i.au, 12                      ; 2 uses
  %i.aw = trunc i64 %i.av to i32                  ; 3 uses
  %.not46 = icmp eq i32 %i.aw, 0
  br i1 %.not46, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.f, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ax = load ptr, ptr @efi_system_table, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = sub nsw i64 %i.o, %i.av
  %sext = shl i64 %i.bc, 32
  %i.bd = ashr exact i64 %sext, 32
  %i.be = call win64cc i64 %i.bb(i64 noundef %i.aq, i64 noundef %i.bd) #5 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.bf = load ptr, ptr @efi_system_table, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 60
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = zext i32 %i.bh to i64
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 36
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = sub i32 %i.p, %i.aw
  %i.bn = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.bl, i64 noundef %i.aq, i32 noundef 0, i32 noundef %i.bm, ptr noundef nonnull %i.c) #5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.bo = add nsw i32 %i.aw, -1                   ; 2 uses
  %.not47 = icmp eq i32 %i.bo, 0
  br i1 %.not47, label %bb.m, label %.thread

.thread:                                          ; preds = %bb.f, %bb.j
  %.04250 = phi i32 [ %i.bo, %bb.j ], [ %i.q, %bb.f ] ; 2 uses
  br i1 %i.f, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread
  %i.bp = load ptr, ptr @efi_system_table, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 96
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = load i64, ptr %1, align 8
  %i.bv = add i64 %i.bu, %6
  %i.bw = sext i32 %.04250 to i64
  %i.bx = call win64cc i64 %i.bt(i64 noundef %i.bv, i64 noundef %i.bw) #5 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  %i.by = load ptr, ptr @efi_system_table, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 60
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = zext i32 %i.ca to i64
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 36
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = load i64, ptr %1, align 8
  %i.cg = add i64 %i.cf, %6
  %i.ch = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.ce, i64 noundef %i.cg, i32 noundef 0, i32 noundef %.04250, ptr noundef nonnull %i.d) #5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br label %bb.m

bb.m:                                             ; preds = %bb.e, %bb.k, %bb.l, %bb.j, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i64 %i.ap
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noredzone optsize
declare hidden i64 @__efi64_thunk(i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

attributes #0 = { noredzone nounwind optsize "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone optsize "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind optsize "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 1, !"Code Model", i32 1}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{i8 0, i8 2}
!5 = !{}
end_hunk_0
