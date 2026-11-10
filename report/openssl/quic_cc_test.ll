Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/quic_cc_test?download=true
inline.NumInlined: 39
inline.NumDeleted: 18
begin_hunk_0_@net_sim_process:bb.a
  %i.dq = load i64, ptr %i.ci, align 8, !tbaa !10
  store i64 %i.dq, ptr %2, align 8, !tbaa !10
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !34
  store i64 %i.dr, ptr %i.j, align 8, !tbaa !41
  %i.ds = load ptr, ptr %0, align 8, !tbaa !18
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 80
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !42
  %i.dv = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.dw = call i32 %i.du(ptr noundef %i.dv, ptr noundef nonnull %2) #7, !inline_history !49
  %i.dx = icmp ne i32 %i.dw, 0
  %i.dy = zext i1 %i.dx to i32
  %i.dz = call i32 @test_true(ptr noundef nonnull @.str.2, i32 noundef 237, ptr noundef nonnull @.str.28, i32 noundef %i.dy) #7
  %.not51.i = icmp eq i32 %i.dz, 0
  br i1 %.not51.i, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ea = load ptr, ptr %0, align 8, !tbaa !18
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 88
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !43
  %i.ed = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.ee = call i32 %i.ec(ptr noundef %i.ed, i32 noundef 0) #7, !inline_history !49
  %i.ef = icmp ne i32 %i.ee, 0
  %i.eg = zext i1 %i.ef to i32
  %i.eh = call i32 @test_true(ptr noundef nonnull @.str.2, i32 noundef 240, ptr noundef nonnull @.str.29, i32 noundef %i.eg) #7
  %.not52.i = icmp eq i32 %i.eh, 0
  br i1 %.not52.i, label %.loopexit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.t
  %i.ei = load i64, ptr %i.dp, align 8, !tbaa !34
  %i.ej = load i64, ptr %i.k, align 8, !tbaa !53
  %i.ek = add i64 %i.ej, %i.ei
  store i64 %i.ek, ptr %i.k, align 8, !tbaa !53
  %i.el = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.em = call ptr @ossl_pqueue_pop(ptr noundef %i.el) #7 ; 0 uses
  call void @CRYPTO_free(ptr noundef nonnull %i.ci, ptr noundef nonnull @.str.2, i32 noundef 245) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %.backedge

.loopexit:                                        ; preds = %bb.t, %bb.s, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %net_sim_process_one.exit.thread

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.en = load i64, ptr %i.ci, align 8, !tbaa !10
  store i64 %i.en, ptr %3, align 8, !tbaa !10
  %i.eo = load i64, ptr %i.dp, align 8, !tbaa !34
  store i64 %i.eo, ptr %i.h, align 8, !tbaa !38
  %i.ep = load ptr, ptr %0, align 8, !tbaa !18
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 72
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !39
  %i.es = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.et = call i32 %i.er(ptr noundef %i.es, ptr noundef nonnull %3) #7, !inline_history !49
  %i.eu = icmp ne i32 %i.et, 0
  %i.ev = zext i1 %i.eu to i32
  %i.ew = call i32 @test_true(ptr noundef nonnull @.str.2, i32 noundef 252, ptr noundef nonnull @.str.30, i32 noundef %i.ev) #7
  %.not53.not.i = icmp eq i32 %i.ew, 0
  br i1 %.not53.not.i, label %.critedge55.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ex = load i64, ptr %i.dp, align 8, !tbaa !34
  %i.ey = load i64, ptr %i.i, align 8, !tbaa !52
  %i.ez = add i64 %i.ey, %i.ex
  store i64 %i.ez, ptr %i.i, align 8, !tbaa !52
  %i.fa = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.fb = call ptr @ossl_pqueue_pop(ptr noundef %i.fa) #7 ; 0 uses
  call void @CRYPTO_free(ptr noundef nonnull %i.ci, ptr noundef nonnull @.str.2, i32 noundef 257) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %.backedge

.critedge55.i:                                    ; preds = %bb.u, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %net_sim_process_one.exit.thread

net_sim_process_one.exit.thread:                  ; preds = %net_sim_process_one.exit, %.backedge, %.thread59.i, %bb.p, %.thread.i, %net_sim_process_one.exit.peel, %bb.g, %.thread.i.peel, %.thread59.i.peel, %.backedge.peel, %bb.a, %.loopexit, %.critedge55.i
  %.2.i6 = phi i32 [ 0, %.critedge55.i ], [ 0, %.loopexit ], [ 3, %bb.a ], [ 0, %net_sim_process_one.exit.peel ], [ 2, %bb.g ], [ 2, %.thread.i.peel ], [ 0, %.thread59.i.peel ], [ 3, %.backedge.peel ], [ 2, %.thread.i ], [ 2, %bb.p ], [ 0, %.thread59.i ], [ 3, %.backedge ], [ 0, %net_sim_process_one.exit ]
  ret i32 %.2.i6
}

declare i32 @test_int_gt(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @test_uint64_t_eq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @test_uint64_t_ne(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @test_info(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @test_double_le(ptr noundef, i32 noundef, ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @net_pkt_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i64, ptr %i.a, align 8
  %i.d = load i64, ptr %i.b, align 8
  %.0.i = tail call range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64 %i.c, i64 %i.d)
  ret i32 %.0.i
}

declare ptr @ossl_pqueue_new(ptr noundef) local_unnamed_addr #1

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ossl_pqueue_push(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare ptr @ossl_pqueue_peek(ptr noundef) local_unnamed_addr #1

declare ptr @ossl_pqueue_pop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @do_free(ptr noundef %0) #0 {
bb.a:
  tail call void @CRYPTO_free(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef 130) #7
  ret void
}

declare void @ossl_pqueue_pop_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @test_size_t_eq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @test_uint64_t_lt(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"ossl_cc_method_st", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104}
!13 = !{!12, !11, i64 0}
!14 = !{!"p1 _ZTS17ossl_cc_method_st", !11, i64 0}
!15 = !{!"p1 _ZTS15ossl_cc_data_st", !11, i64 0}
!16 = !{!"p1 _ZTS30ossl_priority_queue_st_NET_PKT", !11, i64 0}
!17 = !{!"net_sim", !14, i64 0, !15, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !16, i64 40, !9, i64 48, !9, i64 56}
!18 = !{!17, !14, i64 0}
!19 = !{!17, !15, i64 8}
!20 = !{!17, !9, i64 32}
!21 = !{!17, !16, i64 40}
!22 = !{!"p1 omnipotent char", !11, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!6, !6, i64 0}
!25 = !{!11, !11, i64 0}
!26 = !{i64 0, i64 8, !23, i64 8, i64 4, !24, i64 16, i64 8, !25, i64 24, i64 8, !10, i64 32, i64 8, !10}
!27 = !{!12, !11, i64 24}
!28 = !{!12, !11, i64 32}
!29 = !{!12, !11, i64 16}
!30 = !{!12, !11, i64 48}
!31 = !{!"", !9, i64 0}
!32 = !{!"net_pkt_st", !31, i64 0, !31, i64 8, !31, i64 16, !31, i64 24, !6, i64 32, !6, i64 36, !9, i64 40, !9, i64 48}
!33 = !{!32, !6, i64 32}
!34 = !{!32, !9, i64 40}
!35 = !{!12, !11, i64 64}
!36 = !{!12, !11, i64 8}
!37 = !{!"ossl_cc_ack_info_st", !31, i64 0, !9, i64 8}
!38 = !{!37, !9, i64 8}
!39 = !{!12, !11, i64 72}
!40 = !{!"ossl_cc_loss_info_st", !31, i64 0, !9, i64 8}
!41 = !{!40, !9, i64 8}
!42 = !{!12, !11, i64 80}
!43 = !{!12, !11, i64 88}
!44 = distinct !{null}
!45 = !{!17, !9, i64 16}
!46 = !{!17, !9, i64 24}
!47 = !{!12, !11, i64 56}
!48 = !{!12, !11, i64 96}
!49 = distinct !{null}
!50 = distinct !{!50, !54}
!51 = !{!32, !6, i64 36}
!52 = !{!17, !9, i64 48}
!53 = !{!17, !9, i64 56}
!54 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_0
