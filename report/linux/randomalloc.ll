inline.NumInlined: 12
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@efi_system_table = external hidden local_unnamed_addr global ptr, align 8
@efi_is64 = external hidden local_unnamed_addr constant i8, align 1

; Function Attrs: noredzone nounwind optsize
define hidden i64 @efi_random_alloc(i64 noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3, i32 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i64], align 16               ; 3 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca [3 x i64], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store ptr null, ptr %i.b, align 8
  %i.e = call i64 @efi_get_memory_map(ptr noundef nonnull %i.b, i1 noundef zeroext false) #5 ; 2 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %spec.store.select = call i64 @llvm.umax.i64(i64 %1, i64 4096) ; 4 uses
  %i.f = icmp eq i64 %5, 0
  %spec.select = select i1 %i.f, i64 %spec.store.select, i64 %5 ; 2 uses
  %i.g = add i64 %0, 4095                         ; 2 uses
  %7 = and i64 %i.g, -4096                        ; 2 uses
  %i.h = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.i = load i64, ptr %i.h, align 8
  %.not102 = icmp eq i64 %i.i, 0
  br i1 %.not102, label %.thread87, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.j = call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %spec.store.select, i32 -1) #6, !srcloc !4
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.k               ; 2 uses
  %i.l = xor i64 %notmask.i, -1
  %invariant.op = sub i64 1, %7
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %get_entry_num_slots.exit
  %i.m = phi ptr [ %i.aq, %get_entry_num_slots.exit ], [ %i.h, %.lr.ph.preheader ]
  %i.n = phi i64 [ %i.au, %get_entry_num_slots.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.05896 = phi i64 [ %i.an, %get_entry_num_slots.exit ], [ 0, %.lr.ph.preheader ]
  %.06195 = phi i64 [ %spec.select78, %get_entry_num_slots.exit ], [ 0, %.lr.ph.preheader ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 %i.n ; 5 uses
  %i.q = load i32, ptr %i.p, align 8
  %.not.i80 = icmp eq i32 %i.q, 7
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = and i64 %i.s, 1048576
  %.not34.i = icmp eq i64 %i.t, 0
  %or.cond = select i1 %.not.i80, i1 %.not34.i, i1 false
  br i1 %or.cond, label %bb.c, label %get_entry_num_slots.exit

bb.c:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = shl i64 %i.x, 12
  %i.z = add i64 %i.v, -1
  %i.aa = add i64 %i.z, %i.y
  %i.ab = call i64 @llvm.umin.i64(i64 %i.aa, i64 %6) ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %7
  br i1 %i.ac, label %get_entry_num_slots.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = call i64 @llvm.umax.i64(i64 %i.v, i64 %spec.select)
  %i.ae = add i64 %i.ad, -1
  %i.af = or i64 %i.ae, %i.l
  %i.ag = add i64 %i.af, 1                        ; 2 uses
  %.reass.reass = add i64 %i.ab, %invariant.op
  %i.ah = and i64 %.reass.reass, %notmask.i       ; 2 uses
  %i.ai = icmp ugt i64 %i.ag, %i.ah
  br i1 %i.ai, label %get_entry_num_slots.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = sub nuw i64 %i.ah, %i.ag
  %i.ak = lshr i64 %i.aj, %i.k
  %i.al = add i64 %i.ak, 1
  br label %get_entry_num_slots.exit

get_entry_num_slots.exit:                         ; preds = %.lr.ph, %bb.c, %bb.d, %bb.e
  %.0.i81 = phi i64 [ 0, %bb.c ], [ 0, %bb.d ], [ %i.al, %bb.e ], [ 0, %.lr.ph ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %.0.i81, ptr %i.am, align 8
  %i.an = add i64 %.0.i81, %.05896                ; 2 uses
  %i.ao = and i64 %i.s, 65536
  %.not77 = icmp eq i64 %i.ao, 0
  %i.ap = select i1 %.not77, i64 0, i64 %.0.i81
  %spec.select78 = add i64 %i.ap, %.06195         ; 3 uses
  %i.aq = load ptr, ptr %i.b, align 8             ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = add i64 %i.as, %i.n
  %sext = shl i64 %i.at, 32
  %i.au = ashr exact i64 %sext, 32                ; 2 uses
  %i.av = load i64, ptr %i.aq, align 8            ; 3 uses
  %i.aw = icmp ult i64 %i.au, %i.av
  br i1 %i.aw, label %.lr.ph, label %._crit_edge, !llvm.loop !5

._crit_edge:                                      ; preds = %get_entry_num_slots.exit
  %.not73 = icmp eq i64 %spec.select78, 0         ; 2 uses
  %.not103 = icmp eq i64 %i.av, 0
  br i1 %.not103, label %.thread87, label %.lr.ph100

.lr.ph100:                                        ; preds = %._crit_edge
  %spec.select79 = select i1 %.not73, i64 %i.an, i64 %spec.select78
  %i.ax = and i64 %3, 4294967295
  %i.ay = mul i64 %spec.select79, %i.ax
  %i.az = lshr i64 %i.ay, 32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph100, %bb.p
  %i.bc = phi i64 [ 0, %.lr.ph100 ], [ %i.ct, %bb.p ] ; 2 uses
  %.05998 = phi i64 [ %i.az, %.lr.ph100 ], [ %.160.ph, %bb.p ] ; 4 uses
  %i.bd = getelementptr inbounds i8, ptr %i.ba, i64 %i.bc ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  br i1 %.not73, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = and i64 %i.bf, 65536
  %.not75 = icmp eq i64 %i.bg, 0
  br i1 %.not75, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bi = load i64, ptr %i.bh, align 8            ; 2 uses
  %.not76 = icmp ult i64 %.05998, %i.bi
  br i1 %.not76, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = sub nuw nsw i64 %.05998, %i.bi
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = call i64 @llvm.umax.i64(i64 %i.bl, i64 %spec.select)
  %i.bn = add i64 %i.bm, -1
  %i.bo = add i64 %spec.store.select, -1
  %i.bp = or i64 %i.bn, %i.bo
  %i.bq = mul i64 %.05998, %spec.store.select
  %i.br = add i64 %i.bq, 1
  %i.bs = add i64 %i.br, %i.bp
  store i64 %i.bs, ptr %i.c, align 8
  %i.bt = lshr i64 %i.g, 12                       ; 2 uses
  %i.bu = load i8, ptr @efi_is64, align 1, !range !7, !noundef !8
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bw = load ptr, ptr @efi_system_table, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 96
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = call win64cc i64 %i.ca(i32 noundef 2, i32 noundef %4, i64 noundef %i.bt, ptr noundef nonnull %i.c) #5
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  %i.cc = load ptr, ptr @efi_system_table, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 60
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = zext i32 %i.ce to i64
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.ci, i32 noundef 2, i32 noundef %4, i64 noundef %i.bt, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  %i.ck = trunc i64 %i.cj to i32                  ; 2 uses
  %i.cl = call noundef i32 @llvm.fshl.i32(i32 %i.ck, i32 %i.ck, i32 1)
  %i.cm = zext i32 %i.cl to i64                   ; 2 uses
  %i.cn = call range(i64 0, -9223372034707292160) i64 @llvm.fshl.i64(i64 range(i64 0, 4294967296) %i.cm, i64 range(i64 0, 4294967296) %i.cm, i64 63)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.co = phi i64 [ %i.cb, %bb.k ], [ %i.cn, %bb.l ] ; 2 uses
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cq = load i64, ptr %i.c, align 8
  store i64 %i.cq, ptr %2, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  br label %bb.q

bb.p:                                             ; preds = %bb.i, %bb.g
  %.160.ph = phi i64 [ %.05998, %bb.g ], [ %i.bj, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  %i.cr = load i64, ptr %i.bb, align 8
  %i.cs = add i64 %i.cr, %i.bc
  %sext74 = shl i64 %i.cs, 32
  %i.ct = ashr exact i64 %sext74, 32              ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %i.av
  br i1 %i.cu, label %bb.f, label %.thread87, !llvm.loop !9

bb.q:                                             ; preds = %bb.o, %bb.a
  %.0.ph = phi i64 [ %i.co, %bb.o ], [ %i.e, %bb.a ] ; 2 uses
  %.pr = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %__free_efi_pool.exit, label %.thread87

.thread87:                                        ; preds = %bb.p, %bb.b, %._crit_edge, %bb.q
  %.090 = phi i64 [ %.0.ph, %bb.q ], [ -9223372036854775799, %._crit_edge ], [ -9223372036854775799, %bb.b ], [ -9223372036854775799, %bb.p ] ; 2 uses
  %i.cv = phi ptr [ %.pr, %bb.q ], [ %i.aq, %._crit_edge ], [ %i.h, %bb.b ], [ %i.aq, %bb.p ] ; 2 uses
  %i.cw = load i8, ptr @efi_is64, align 1, !range !7, !noundef !8
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.thread87
  %i.cy = load ptr, ptr @efi_system_table, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 96
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 72
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = call win64cc i64 %i.dc(ptr noundef nonnull %i.cv) #5, !inline_history !10 ; 0 uses
  br label %__free_efi_pool.exit

bb.s:                                             ; preds = %.thread87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.de = load ptr, ptr @efi_system_table, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 60
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = zext i32 %i.dg to i64
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %i.dk = load i32, ptr %i.dj, align 8
  %i.dl = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.dk, ptr noundef nonnull %i.cv, ptr noundef nonnull %i.a) #5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %__free_efi_pool.exit

__free_efi_pool.exit:                             ; preds = %bb.q, %bb.r, %bb.s
  %.091 = phi i64 [ %.0.ph, %bb.q ], [ %.090, %bb.r ], [ %.090, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  ret i64 %.091
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noredzone optsize
declare hidden i64 @efi_get_memory_map(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noredzone optsize
declare hidden i64 @__efi64_thunk(i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

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
attributes #6 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 1, !"Code Model", i32 1}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{i64 1033651}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = distinct !{!9, !6}
!10 = distinct !{null}
end_hunk_0
