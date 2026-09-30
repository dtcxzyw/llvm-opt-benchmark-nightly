Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/euc_tw_and_big5?download=true
inline.NumInlined: 19
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Pg_magic_struct = type { i32, %struct.Pg_abi_values, ptr, ptr }
%struct.Pg_abi_values = type { i32, i32, i32, i32, i32, [32 x i8] }
%struct.Pg_finfo_record = type { i32 }

@Pg_magic_func.Pg_magic_data = internal constant %struct.Pg_magic_struct { i32 72, %struct.Pg_abi_values { i32 1900, i32 100, i32 32, i32 64, i32 1, [32 x i8] c"PostgreSQL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, ptr @.str, ptr @.str.1 }, align 8
@.str = private unnamed_addr constant [16 x i8] c"euc_tw_and_big5\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"19beta2\00", align 1
@pg_finfo_euc_tw_to_big5.my_finfo = internal constant %struct.Pg_finfo_record { i32 1 }, align 4
@pg_finfo_big5_to_euc_tw.my_finfo = internal constant %struct.Pg_finfo_record { i32 1 }, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @Pg_magic_func() local_unnamed_addr #0 {
bb.a:
  ret ptr @Pg_magic_func.Pg_magic_data
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @pg_finfo_euc_tw_to_big5() local_unnamed_addr #0 {
bb.a:
  ret ptr @pg_finfo_euc_tw_to_big5.my_finfo
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @pg_finfo_big5_to_euc_tw() local_unnamed_addr #0 {
bb.a:
  ret ptr @pg_finfo_big5_to_euc_tw.my_finfo
}

; Function Attrs: nounwind uwtable
define range(i64 -2147483648, 2147483648) i64 @euc_tw_to_big5(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load i64, ptr %i.h, align 8
  %i.j = trunc i64 %i.i to i32                    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load i64, ptr %i.k, align 8
  %.not = icmp eq i64 %i.l, 0                     ; 3 uses
  %i.m = load i64, ptr %i.a, align 8
  %i.n = trunc i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i64, ptr %i.o, align 8
  %i.q = trunc i64 %i.p to i32
  tail call void @check_encoding_conversion_args(i32 noundef %i.n, i32 noundef %i.q, i32 noundef %i.j, i32 noundef 4, i32 noundef 36) #6
  %i.r = icmp sgt i32 %i.j, 0
  br i1 %i.r, label %.lr.ph.i, label %euc_tw2big5.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.r
  %.04467.i = phi ptr [ %.145.i, %bb.r ], [ %i.d, %bb.a ] ; 13 uses
  %.04666.i = phi i32 [ %.147.i, %bb.r ], [ %i.j, %bb.a ] ; 6 uses
  %.04865.i = phi ptr [ %.149.i, %bb.r ], [ %i.g, %bb.a ] ; 8 uses
  %i.s = load i8, ptr %.04467.i, align 1          ; 5 uses
  %1 = zext i8 %i.s to i16
  %.not.i = icmp sgt i8 %i.s, -1
  br i1 %.not.i, label %bb.n, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.t = tail call i32 @pg_encoding_verifymbchar(i32 noundef 4, ptr noundef nonnull %.04467.i, i32 noundef %.04666.i) #6 ; 3 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %.not, label %bb.d, label %euc_tw2big5.exit

bb.d:                                             ; preds = %bb.c
  tail call void @report_invalid_encoding(i32 noundef 4, ptr noundef nonnull %.04467.i, i32 noundef %.04666.i) #7
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.v = icmp eq i8 %i.s, -114
  br i1 %i.v, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.04467.i, i64 1
  %i.x = load i8, ptr %i.w, align 1               ; 2 uses
  switch i8 %i.x, label %bb.h [
    i8 -95, label %bb.i
    i8 -94, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.y = add i8 %i.x, 83
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.0.i = phi i8 [ %i.y, %bb.h ], [ -106, %bb.g ], [ -107, %bb.f ]
  %i.z = getelementptr inbounds nuw i8, ptr %.04467.i, i64 2
  %2 = load i16, ptr %i.z, align 1
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  br label %4

bb.j:                                             ; preds = %bb.e
  %i.aa = shl nuw i16 %1, 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.04467.i, i64 1
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = zext i8 %i.ac to i16
  %i.ae = or disjoint i16 %i.aa, %i.ad
  br label %4

4:                                                ; preds = %bb.j, %bb.i
  %.043.i = phi i16 [ %3, %bb.i ], [ %i.ae, %bb.j ]
  %.1.i = phi i8 [ %.0.i, %bb.i ], [ -107, %bb.j ]
  %5 = tail call zeroext i16 @CNStoBIG5(i16 noundef zeroext %.043.i, i8 noundef zeroext %.1.i) #6 ; 3 uses
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %bb.k, label %bb.m

bb.k:                                             ; preds = %4
  br i1 %.not, label %bb.l, label %euc_tw2big5.exit

bb.l:                                             ; preds = %bb.k
  tail call void @report_untranslatable_char(i32 noundef 4, i32 noundef 36, ptr noundef nonnull %.04467.i, i32 noundef %.04666.i) #7
  unreachable

bb.m:                                             ; preds = %4
  %i.af = lshr i16 %5, 8
  %i.ag = trunc nuw i16 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %.04865.i, i64 1
  store i8 %i.ag, ptr %.04865.i, align 1
  %i.ai = trunc i16 %5 to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %.04865.i, i64 2
  store i8 %i.ai, ptr %i.ah, align 1
  %i.ak = zext nneg i32 %i.t to i64
  %i.al = getelementptr inbounds nuw i8, ptr %.04467.i, i64 %i.ak
  %i.am = sub nsw i32 %.04666.i, %i.t
  br label %bb.r

bb.n:                                             ; preds = %.lr.ph.i
  %i.an = icmp eq i8 %i.s, 0
  br i1 %i.an, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  br i1 %.not, label %bb.p, label %euc_tw2big5.exit

bb.p:                                             ; preds = %bb.o
  tail call void @report_invalid_encoding(i32 noundef 4, ptr noundef nonnull %.04467.i, i32 noundef %.04666.i) #7
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %.04865.i, i64 1
  store i8 %i.s, ptr %.04865.i, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %.04467.i, i64 1
  %i.aq = add nsw i32 %.04666.i, -1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.m
  %.149.i = phi ptr [ %i.aj, %bb.m ], [ %i.ao, %bb.q ] ; 2 uses
  %.147.i = phi i32 [ %i.am, %bb.m ], [ %i.aq, %bb.q ] ; 2 uses
  %.145.i = phi ptr [ %i.al, %bb.m ], [ %i.ap, %bb.q ] ; 2 uses
  %i.ar = icmp sgt i32 %.147.i, 0
  br i1 %i.ar, label %.lr.ph.i, label %euc_tw2big5.exit, !llvm.loop !4

euc_tw2big5.exit:                                 ; preds = %bb.r, %bb.a, %bb.c, %bb.k, %bb.o
  %.04864.i = phi ptr [ %.04865.i, %bb.c ], [ %.04865.i, %bb.o ], [ %.04865.i, %bb.k ], [ %i.g, %bb.a ], [ %.149.i, %bb.r ]
  %.04457.i = phi ptr [ %.04467.i, %bb.c ], [ %.04467.i, %bb.o ], [ %.04467.i, %bb.k ], [ %i.d, %bb.a ], [ %.145.i, %bb.r ]
  store i8 0, ptr %.04864.i, align 1
  %i.as = ptrtoint ptr %.04457.i to i64
  %i.at = sub i64 %i.as, %i.c
  %sext = shl i64 %i.at, 32
  %i.au = ashr exact i64 %sext, 32
  ret i64 %i.au
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @check_encoding_conversion_args(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define range(i64 -2147483648, 2147483648) i64 @big5_to_euc_tw(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load i64, ptr %i.f, align 8
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = load i64, ptr %i.i, align 8
  %i.k = trunc i64 %i.j to i32                    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load i64, ptr %i.l, align 8
  %.not = icmp eq i64 %i.m, 0                     ; 3 uses
  %i.n = load i64, ptr %i.b, align 8
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load i64, ptr %i.p, align 8
  %i.r = trunc i64 %i.q to i32
  tail call void @check_encoding_conversion_args(i32 noundef %i.o, i32 noundef %i.r, i32 noundef %i.k, i32 noundef 36, i32 noundef 4) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.s = icmp sgt i32 %i.k, 0
  br i1 %i.s, label %.lr.ph.i, label %big52euc_tw.exit

.lr.ph.i:                                         ; preds = %bb.a, %.backedge.i
  %.065.i = phi ptr [ %.0.be.i, %.backedge.i ], [ %i.e, %bb.a ] ; 11 uses
  %.04864.i = phi i32 [ %.048.be.i, %.backedge.i ], [ %i.k, %bb.a ] ; 6 uses
  %.04963.i = phi ptr [ %.049.be.i, %.backedge.i ], [ %i.h, %bb.a ] ; 18 uses
  %i.t = load i8, ptr %.065.i, align 1            ; 4 uses
  %.not.i = icmp sgt i8 %i.t, -1
  br i1 %.not.i, label %bb.m, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.u = call i32 @pg_encoding_verifymbchar(i32 noundef 36, ptr noundef nonnull %.065.i, i32 noundef %.04864.i) #6 ; 3 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %.not, label %bb.d, label %big52euc_tw.exit

bb.d:                                             ; preds = %bb.c
  call void @report_invalid_encoding(i32 noundef 36, ptr noundef nonnull %.065.i, i32 noundef %.04864.i) #7
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.w = zext i8 %i.t to i16
  %i.x = shl nuw i16 %i.w, 8
  %i.y = getelementptr inbounds nuw i8, ptr %.065.i, i64 1
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i16
  %i.ab = or disjoint i16 %i.x, %i.aa
  %i.ac = call zeroext i16 @BIG5toCNS(i16 noundef zeroext %i.ab, ptr noundef nonnull %i.a) #6 ; 6 uses
  %i.ad = load i8, ptr %i.a, align 1              ; 2 uses
  switch i8 %i.ad, label %bb.h [
    i8 -107, label %bb.f
    i8 -106, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.ae = lshr i16 %i.ac, 8
  %i.af = trunc nuw i16 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %.04963.i, i64 1
  store i8 %i.af, ptr %.04963.i, align 1
  %i.ah = trunc i16 %i.ac to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %.04963.i, i64 2
  store i8 %i.ah, ptr %i.ag, align 1
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.04963.i, i64 1
  store i8 -114, ptr %.04963.i, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.04963.i, i64 2
  store i8 -94, ptr %i.aj, align 1
  %i.al = lshr i16 %i.ac, 8
  %i.am = trunc nuw i16 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %.04963.i, i64 3
  store i8 %i.am, ptr %i.ak, align 1
  %i.ao = trunc i16 %i.ac to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %.04963.i, i64 4
  store i8 %i.ao, ptr %i.an, align 1
  br label %bb.l

bb.h:                                             ; preds = %bb.e
  %i.aq = add i8 %i.ad, 10
  %or.cond.i = icmp ult i8 %i.aq, 5
  br i1 %or.cond.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %.04963.i, i64 1
  store i8 -114, ptr %.04963.i, align 1
  %i.as = load i8, ptr %i.a, align 1
  %i.at = add i8 %i.as, -83
  %i.au = getelementptr inbounds nuw i8, ptr %.04963.i, i64 2
  store i8 %i.at, ptr %i.ar, align 1
  %i.av = lshr i16 %i.ac, 8
  %i.aw = trunc nuw i16 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %.04963.i, i64 3
  store i8 %i.aw, ptr %i.au, align 1
  %i.ay = trunc i16 %i.ac to i8
  %i.az = getelementptr inbounds nuw i8, ptr %.04963.i, i64 4
  store i8 %i.ay, ptr %i.ax, align 1
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  br i1 %.not, label %bb.k, label %big52euc_tw.exit

bb.k:                                             ; preds = %bb.j
  call void @report_untranslatable_char(i32 noundef 36, i32 noundef 4, ptr noundef nonnull %.065.i, i32 noundef %.04864.i) #7
  unreachable

bb.l:                                             ; preds = %bb.i, %bb.g, %bb.f
  %.1.i = phi ptr [ %i.ai, %bb.f ], [ %i.ap, %bb.g ], [ %i.az, %bb.i ]
  %i.ba = zext nneg i32 %i.u to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %.065.i, i64 %i.ba
  %i.bc = sub nsw i32 %.04864.i, %i.u
  br label %.backedge.i

bb.m:                                             ; preds = %.lr.ph.i
  %i.bd = icmp eq i8 %i.t, 0
  br i1 %i.bd, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  br i1 %.not, label %bb.o, label %big52euc_tw.exit

bb.o:                                             ; preds = %bb.n
  call void @report_invalid_encoding(i32 noundef 36, ptr noundef nonnull %.065.i, i32 noundef %.04864.i) #7
  unreachable

bb.p:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %.04963.i, i64 1
  store i8 %i.t, ptr %.04963.i, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.065.i, i64 1
  %i.bg = add nsw i32 %.04864.i, -1
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.p, %bb.l
  %.049.be.i = phi ptr [ %.1.i, %bb.l ], [ %i.be, %bb.p ] ; 2 uses
  %.048.be.i = phi i32 [ %i.bc, %bb.l ], [ %i.bg, %bb.p ] ; 2 uses
  %.0.be.i = phi ptr [ %i.bb, %bb.l ], [ %i.bf, %bb.p ] ; 2 uses
  %i.bh = icmp sgt i32 %.048.be.i, 0
  br i1 %i.bh, label %.lr.ph.i, label %big52euc_tw.exit, !llvm.loop !5

big52euc_tw.exit:                                 ; preds = %.backedge.i, %bb.a, %bb.c, %bb.j, %bb.n
  %.04962.i = phi ptr [ %.04963.i, %bb.c ], [ %.04963.i, %bb.n ], [ %.04963.i, %bb.j ], [ %i.h, %bb.a ], [ %.049.be.i, %.backedge.i ]
  %.055.i = phi ptr [ %.065.i, %bb.c ], [ %.065.i, %bb.n ], [ %.065.i, %bb.j ], [ %i.e, %bb.a ], [ %.0.be.i, %.backedge.i ]
  store i8 0, ptr %.04962.i, align 1
  %i.bi = ptrtoint ptr %.055.i to i64
  %i.bj = sub i64 %i.bi, %i.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %sext = shl i64 %i.bj, 32
  %i.bk = ashr exact i64 %sext, 32
  ret i64 %i.bk
}

declare i32 @pg_encoding_verifymbchar(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @report_invalid_encoding(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare zeroext i16 @CNStoBIG5(i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @report_untranslatable_char(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare zeroext i16 @BIG5toCNS(i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"llvm.loop.mustprogress"}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
end_hunk_0
