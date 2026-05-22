begin_hunk_0_@BIO_debug_callback_ex:bb.a
    i32 2, label %bb.e
    i32 3, label %bb.h
    i32 4, label %bb.k
    i32 5, label %bb.l
    i32 6, label %bb.m
    i32 7, label %bb.n
    i32 8, label %bb.o
    i32 130, label %bb.p
    i32 131, label %bb.q
    i32 133, label %bb.r
    i32 132, label %bb.s
    i32 134, label %bb.t
    i32 135, label %bb.u
    i32 136, label %bb.v
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  %i.m = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.f, i64 noundef %i.h, ptr noundef nonnull @.str.1, ptr noundef %i.l) #6 ; 0 uses
  br label %bb.x

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !11   ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !23
  %i.q = and i32 %i.p, 256
  %.not93 = icmp eq i32 %i.q, 0
  %i.r = sext i32 %i.g to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load i32, ptr %i.s, align 8, !tbaa !24   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21   ; 2 uses
  br i1 %.not93, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.f, i64 noundef %i.r, ptr noundef nonnull @.str.2, i32 noundef %i.t, i64 noundef %3, ptr noundef %i.v, i32 noundef %i.t) #6 ; 0 uses
  br label %bb.x

bb.g:                                             ; preds = %bb.e
  %i.x = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.f, i64 noundef %i.r, ptr noundef nonnull @.str.3, i32 noundef %i.t, i64 noundef %3, ptr noundef %i.v) #6 ; 0 uses
  br label %bb.x

bb.h:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !11   ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !23
  %i.ab = and i32 %i.aa, 256
  %.not92 = icmp eq i32 %i.ab, 0
  %i.ac = sext i32 %i.g to i64                    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !24 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !21 ; 2 uses
  br i1 %.not92, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.f, i64 noundef %i.ac, ptr noundef nonnull @.str.4, i32 noundef %i.ae, i64 noundef %3, ptr noundef %i.ag, i32 noundef %i.ae) #6 ; 0 uses
  br label %bb.x

bb.j:                                             ; preds = %bb.h
  %i.ai = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.f, i64 noundef %i.ac, ptr noundef nonnull @.str.5, i32 noundef %i.ae, i64 noundef %3, ptr noundef %i.ag) #6 ; 0 uses
  br label %bb.x

bb.k:                                             ; preds = %bb.c
  %i.aj = sext i32 %i.g to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !21
  %i.ao = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.f, i64 noundef %i.aj, ptr noundef nonnull @.str.6, ptr noundef %i.an) #6 ; 0 uses
  br label %bb.x

bb.l:                                             ; preds = %bb.c
  %i.ap = sext i32 %i.g to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !21
  %i.au = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.f, i64 noundef %i.ap, ptr noundef nonnull @.str.7, i64 noundef %3, ptr noundef %i.at) #6 ; 0 uses
  br label %bb.x

bb.m:                                             ; preds = %bb.c
  %i.av = sext i32 %i.g to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !21
  %i.ba = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.f, i64 noundef %i.av, ptr noundef nonnull @.str.8, i32 noundef %4, ptr noundef %i.az) #6 ; 0 uses
  br label %bb.x

bb.n:                                             ; preds = %bb.c
  %i.bb = sext i32 %i.g to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !25
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !11
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !21
  %i.bi = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.f, i64 noundef %i.bb, ptr noundef nonnull @.str.9, i64 noundef %i.bd, ptr noundef %i.bh) #6 ; 0 uses
  br label %bb.x

bb.o:                                             ; preds = %bb.c
  %i.bj = sext i32 %i.g to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !25
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !11
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !21
  %i.bq = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.f, i64 noundef %i.bj, ptr noundef nonnull @.str.10, i64 noundef %i.bl, ptr noundef %i.bp) #6 ; 0 uses
  br label %bb.x

bb.p:                                             ; preds = %bb.c
  %i.br = sext i32 %i.g to i64
  %i.bs = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.f, i64 noundef %i.br, ptr noundef nonnull @.str.11, i32 noundef %6, i64 noundef %.089) #6 ; 0 uses
  br label %bb.x

bb.q:                                             ; preds = %bb.c
  %i.bt = sext i32 %i.g to i64
  %i.bu = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.f, i64 noundef %i.bt, ptr noundef nonnull @.str.12, i32 noundef %6, i64 noundef %.089) #6 ; 0 uses
  br label %bb.x

bb.r:                                             ; preds = %bb.c
  %i.bv = sext i32 %i.g to i64
  %i.bw = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.f, i64 noundef %i.bv, ptr noundef nonnull @.str.13, i32 noundef %6, i64 noundef %.089) #6 ; 0 uses
  br label %bb.x

bb.s:                                             ; preds = %bb.c
  %i.bx = sext i32 %i.g to i64
  %i.by = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.f, i64 noundef %i.bx, ptr noundef nonnull @.str.14, i32 noundef %6, i64 noundef %.089) #6 ; 0 uses
  br label %bb.x

bb.t:                                             ; preds = %bb.c
  %i.bz = sext i32 %i.g to i64
  %i.ca = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.f, i64 noundef %i.bz, ptr noundef nonnull @.str.15, i32 noundef %6) #6 ; 0 uses
  br label %bb.x

bb.u:                                             ; preds = %bb.c
  %i.cb = sext i32 %i.g to i64
  %i.cc = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.f, i64 noundef %i.cb, ptr noundef nonnull @.str.16, i64 noundef %3) #6 ; 0 uses
  br label %bb.x

bb.v:                                             ; preds = %bb.c
  %i.cd = sext i32 %i.g to i64
  %i.ce = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.f, i64 noundef %i.cd, ptr noundef nonnull @.str.17, i64 noundef %3) #6 ; 0 uses
  br label %bb.x

bb.w:                                             ; preds = %bb.c
  %i.cf = sext i32 %i.g to i64
  %i.cg = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.f, i64 noundef %i.cf, ptr noundef nonnull @.str.18, i32 noundef %1) #6 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.i, %bb.j, %bb.f, %bb.g, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.d
  %.0 = phi i64 [ %i.b, %bb.w ], [ %i.b, %bb.d ], [ %i.b, %bb.f ], [ %i.b, %bb.g ], [ %i.b, %bb.i ], [ %i.b, %bb.j ], [ %i.b, %bb.k ], [ %i.b, %bb.l ], [ %i.b, %bb.m ], [ %i.b, %bb.n ], [ %i.b, %bb.o ], [ %i.b, %bb.p ], [ %i.b, %bb.q ], [ %i.b, %bb.r ], [ %i.b, %bb.s ], [ %i.b, %bb.t ], [ %3, %bb.u ], [ %3, %bb.v ]
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !29 ; 2 uses
  %.not94 = icmp eq ptr %i.ci, null
  br i1 %.not94, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #7
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = call i32 @BIO_write(ptr noundef nonnull %i.ci, ptr noundef nonnull %i.a, i32 noundef %i.ck) #6 ; 0 uses
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.cm = load ptr, ptr @stderr, align 8, !tbaa !30
  %i.cn = call i32 @fputs(ptr noundef nonnull %i.a, ptr noundef %i.cm) #8 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @BIO_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @BIO_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @BIO_debug_callback(ptr noundef %0, i32 noundef %1, ptr noundef readonly captures(none) %2, i32 noundef %3, i64 noundef %4, i64 noundef returned %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %spec.select = tail call i64 @llvm.smax.i64(i64 %5, i64 0)
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !9
  %i.b = sext i32 %3 to i64
  %6 = tail call i64 @llvm.smin.i64(i64 %5, i64 1)
  %7 = trunc i64 %6 to i32
  %i.c = call i64 @BIO_debug_callback_ex(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %i.b, i32 noundef %3, i64 poison, i32 noundef %7, ptr noundef nonnull %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i64 %5
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!12, !15, i64 8}
!12 = !{!"bio_st", !13, i64 0, !15, i64 8, !14, i64 16, !14, i64 24, !16, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !14, i64 64, !17, i64 72, !17, i64 80, !18, i64 88, !10, i64 96, !10, i64 104, !19, i64 112}
!13 = !{!"p1 _ZTS15ossl_lib_ctx_st", !14, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!"p1 _ZTS13bio_method_st", !14, i64 0}
!16 = !{!"p1 omnipotent char", !14, i64 0}
!17 = !{!"p1 _ZTS6bio_st", !14, i64 0}
!18 = !{!"", !7, i64 0}
!19 = !{!"crypto_ex_data_st", !13, i64 0, !20, i64 8}
!20 = !{!"p1 _ZTS13stack_st_void", !14, i64 0}
!21 = !{!22, !16, i64 8}
!22 = !{!"bio_method_st", !6, i64 0, !16, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104}
!23 = !{!22, !6, i64 0}
!24 = !{!12, !6, i64 56}
!25 = !{!26, !10, i64 16}
!26 = !{!"bio_mmsg_cb_args_st", !27, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !28, i64 32}
!27 = !{!"p1 _ZTS10bio_msg_st", !14, i64 0}
!28 = !{!"p1 long", !14, i64 0}
!29 = !{!12, !16, i64 32}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
end_hunk_0
