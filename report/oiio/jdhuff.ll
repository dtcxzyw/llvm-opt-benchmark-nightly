inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 15
begin_hunk_0_@decode_mcu:bb.a
  %notmask245.i = shl nsw i32 -1, %i.abg          ; 2 uses
  %i.abq = xor i32 %notmask245.i, -1
  %i.abr = and i32 %i.abp, %i.abq                 ; 2 uses
  %i.abs = add nsw i32 %i.abg, -1
  %.neg246.i = shl nsw i32 -1, %i.abs
  %i.abt = add nsw i32 %i.abr, %.neg246.i
  %i.abu = or disjoint i32 %notmask245.i, 1
  %isneg247.i = icmp slt i32 %i.abt, 0
  %i.abv = select i1 %isneg247.i, i32 %i.abu, i32 0
  %i.abw = add nsw i32 %i.abv, %i.abr
  %i.abx = trunc nsw i32 %i.abw to i16
  %i.aby = sext i32 %i.abh to i64
  %i.abz = getelementptr inbounds [4 x i8], ptr @jpeg_natural_order, i64 %i.aby
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !3
  %i.acb = sext i32 %i.aca to i64
  %i.acc = getelementptr inbounds [2 x i8], ptr %i.yj, i64 %i.acb
  store i16 %i.abx, ptr %i.acc, align 2, !tbaa !118
  br label %bb.fy

bb.fw:                                            ; preds = %bb.fr
  %.not243.i = icmp eq i32 %i.abf, 15
  br i1 %.not243.i, label %bb.fx, label %.loopexit.i

bb.fx:                                            ; preds = %bb.fw
  %i.acd = add nsw i32 %.0189280.i, 15
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fv
  %.1190.i = phi i32 [ %i.abh, %bb.fv ], [ %i.acd, %bb.fx ] ; 2 uses
  %.13173.i = phi i32 [ %i.abm, %bb.fv ], [ %.11171.ph.i, %bb.fx ] ; 2 uses
  %.13.i = phi i64 [ %.12.i45, %bb.fv ], [ %.11.ph.i, %bb.fx ] ; 2 uses
  %i.ace = add nsw i32 %.1190.i, 1
  %i.acf = icmp slt i32 %.1190.i, 63
  br i1 %i.acf, label %bb.fk, label %.loopexit.i, !llvm.loop !124

bb.fz:                                            ; preds = %bb.gm, %.preheader265.i
  %.14279.i = phi i64 [ %.6156.i, %.preheader265.i ], [ %.20.i40, %bb.gm ] ; 2 uses
  %.14174278.i = phi i32 [ %.6166.i, %.preheader265.i ], [ %.20180.i, %bb.gm ] ; 3 uses
  %.2191277.i = phi i32 [ 1, %.preheader265.i ], [ %i.adg, %bb.gm ]
  %i.acg = icmp slt i32 %.14174278.i, 8
  br i1 %i.acg, label %bb.ga, label %bb.gc

bb.ga:                                            ; preds = %bb.fz
  %i.ach = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %2, i64 noundef %.14279.i, i32 noundef %.14174278.i, i32 noundef 0)
  %.not237.i = icmp eq i32 %i.ach, 0
  br i1 %.not237.i, label %decode_mcu_slow.exit.thread, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.aci = load i64, ptr %i.yc, align 8, !tbaa !80 ; 2 uses
  %i.acj = load i32, ptr %i.yd, align 8, !tbaa !81 ; 3 uses
  %i.ack = icmp slt i32 %i.acj, 8
  br i1 %i.ack, label %bb.ge, label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.fz
  %.15175.i = phi i32 [ %i.acj, %bb.gb ], [ %.14174278.i, %bb.fz ] ; 3 uses
  %.15.i38 = phi i64 [ %i.aci, %bb.gb ], [ %.14279.i, %bb.fz ] ; 3 uses
  %i.acl = add nsw i32 %.15175.i, -8
  %i.acm = zext nneg i32 %i.acl to i64
  %i.acn = lshr i64 %.15.i38, %i.acm
  %i.aco = and i64 %i.acn, 255
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %i.aco
  %i.acq = load i32, ptr %i.acp, align 4, !tbaa !3 ; 2 uses
  %i.acr = ashr i32 %i.acq, 8                     ; 3 uses
  %i.acs = icmp slt i32 %i.acr, 9
  br i1 %i.acs, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %i.act = sub nsw i32 %.15175.i, %i.acr
  %i.acu = and i32 %i.acq, 255
  br label %bb.gg

bb.ge:                                            ; preds = %bb.gc, %bb.gb
  %.16176.i = phi i32 [ %.15175.i, %bb.gc ], [ %i.acj, %bb.gb ]
  %.16.i = phi i64 [ %.15.i38, %bb.gc ], [ %i.aci, %bb.gb ]
  %.0149.i = phi i32 [ %i.acr, %bb.gc ], [ 1, %bb.gb ]
  %i.acv = call i32 @jpeg_huff_decode(ptr noundef nonnull %2, i64 noundef %.16.i, i32 noundef %.16176.i, ptr noundef %i.yn, i32 noundef %.0149.i) ; 2 uses
  %i.acw = icmp slt i32 %i.acv, 0
  br i1 %i.acw, label %decode_mcu_slow.exit.thread, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.acx = load i64, ptr %i.yc, align 8, !tbaa !80
  %i.acy = load i32, ptr %i.yd, align 8, !tbaa !81
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.gd
  %.11204.ph.i = phi i32 [ %i.acu, %bb.gd ], [ %i.acv, %bb.gf ] ; 2 uses
  %.18178.ph.i = phi i32 [ %i.act, %bb.gd ], [ %i.acy, %bb.gf ] ; 5 uses
  %.18.ph.i = phi i64 [ %.15.i38, %bb.gd ], [ %i.acx, %bb.gf ] ; 4 uses
  %i.acz = lshr i32 %.11204.ph.i, 4               ; 2 uses
  %i.ada = and i32 %.11204.ph.i, 15               ; 4 uses
  %.not238.i = icmp eq i32 %i.ada, 0
  br i1 %.not238.i, label %bb.gl, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.adb = icmp slt i32 %.18178.ph.i, %i.ada
  br i1 %i.adb, label %bb.gi, label %bb.gk

bb.gi:                                            ; preds = %bb.gh
  %i.adc = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %2, i64 noundef %.18.ph.i, i32 noundef %.18178.ph.i, i32 noundef %i.ada)
  %.not240.i = icmp eq i32 %i.adc, 0
  br i1 %.not240.i, label %decode_mcu_slow.exit.thread, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.add = load i64, ptr %i.yc, align 8, !tbaa !80
  %i.ade = load i32, ptr %i.yd, align 8, !tbaa !81
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gh
  %.19179.i = phi i32 [ %i.ade, %bb.gj ], [ %.18178.ph.i, %bb.gh ]
  %.19.i39 = phi i64 [ %i.add, %bb.gj ], [ %.18.ph.i, %bb.gh ]
  %i.adf = sub nsw i32 %.19179.i, %i.ada
  br label %bb.gm

bb.gl:                                            ; preds = %bb.gg
  %.not239.i = icmp eq i32 %i.acz, 15
  br i1 %.not239.i, label %bb.gm, label %.loopexit.i

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %.20180.i = phi i32 [ %i.adf, %bb.gk ], [ %.18178.ph.i, %bb.gl ] ; 2 uses
  %.20.i40 = phi i64 [ %.19.i39, %bb.gk ], [ %.18.ph.i, %bb.gl ] ; 2 uses
  %.3192.i = add nsw i32 %.2191277.i, 1
  %i.adg = add nsw i32 %.3192.i, %i.acz           ; 2 uses
  %i.adh = icmp slt i32 %i.adg, 64
  br i1 %i.adh, label %bb.fz, label %.loopexit.i, !llvm.loop !125

.loopexit.i:                                      ; preds = %bb.gm, %bb.gl, %bb.fy, %bb.fw
  %.22182.i = phi i32 [ %.11171.ph.i, %bb.fw ], [ %.13173.i, %bb.fy ], [ %.18178.ph.i, %bb.gl ], [ %.20180.i, %bb.gm ] ; 2 uses
  %.22.i = phi i64 [ %.11.ph.i, %bb.fw ], [ %.13.i, %bb.fy ], [ %.18.ph.i, %bb.gl ], [ %.20.i40, %bb.gm ] ; 2 uses
  %indvars.iv.next.i41 = add nuw nsw i64 %indvars.iv.i33, 1 ; 2 uses
  %i.adi = load i32, ptr %i.aj, align 8, !tbaa !95
  %i.adj = sext i32 %i.adi to i64
  %i.adk = icmp slt i64 %indvars.iv.next.i41, %i.adj
  br i1 %i.adk, label %bb.es, label %._crit_edge.loopexit.i42, !llvm.loop !126

._crit_edge.loopexit.i42:                         ; preds = %.loopexit.i
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !65
  %.pre293.i = load ptr, ptr %i.af, align 8, !tbaa !71
  %.pre294.i = load i64, ptr %i.xt, align 8, !tbaa !68
  br label %decode_mcu_slow.exit

decode_mcu_slow.exit.thread:                      ; preds = %bb.fd, %bb.ez, %bb.ev, %bb.ga, %bb.gi, %bb.ge, %bb.fl, %bb.ft, %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  br label %process_restart.exit

decode_mcu_slow.exit:                             ; preds = %.thread51, %._crit_edge.loopexit.i42
  %i.adl = phi i64 [ %i.ai, %.thread51 ], [ %.pre294.i, %._crit_edge.loopexit.i42 ]
  %i.adm = phi ptr [ %i.ag, %.thread51 ], [ %.pre293.i, %._crit_edge.loopexit.i42 ] ; 2 uses
  %i.adn = phi ptr [ %i.xq, %.thread51 ], [ %.pre.i, %._crit_edge.loopexit.i42 ]
  %.0160.lcssa.i = phi i32 [ %i.xx, %.thread51 ], [ %.22182.i, %._crit_edge.loopexit.i42 ]
  %.0150.lcssa.i = phi i64 [ %i.xv, %.thread51 ], [ %.22.i, %._crit_edge.loopexit.i42 ]
  store ptr %i.adn, ptr %i.adm, align 8, !tbaa !74
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adm, i64 8
  store i64 %i.adl, ptr %i.ado, align 8, !tbaa !75
  store i64 %.0150.lcssa.i, ptr %i.xu, align 8, !tbaa !104
  store i32 %.0160.lcssa.i, ptr %i.xw, align 8, !tbaa !103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xy, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !114
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  br label %bb.gn

bb.gn:                                            ; preds = %decode_mcu_slow.exit, %decode_mcu_fast.exit, %.thread, %bb.g
  %i.adp = load i32, ptr %i.c, align 4, !tbaa !106
  %.not22 = icmp eq i32 %i.adp, 0
  br i1 %.not22, label %process_restart.exit, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.adq = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.adr = load i32, ptr %i.adq, align 8, !tbaa !107
  %i.ads = add i32 %i.adr, -1
  store i32 %i.ads, ptr %i.adq, align 8, !tbaa !107
  br label %process_restart.exit

process_restart.exit:                             ; preds = %decode_mcu_slow.exit.thread, %bb.c, %bb.gn, %bb.go
  %.015 = phi i32 [ 0, %decode_mcu_slow.exit.thread ], [ 1, %bb.gn ], [ 1, %bb.go ], [ 0, %bb.c ]
  ret i32 %.015
}

; Function Attrs: nounwind uwtable
define internal fastcc void @add_huff_table(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !37     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @jpeg_alloc_huff_table(ptr noundef %0) #5 ; 2 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !37
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !83
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi ptr [ %i.a, %bb.c ], [ %i.c, %bb.b ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %i.f, ptr noundef nonnull align 1 dereferenceable(17) %2, i64 17, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 1
  %4 = load <12 x i8>, ptr %i.g, align 1, !tbaa !35
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 13
  %6 = load i8, ptr %5, align 1, !tbaa !35
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 14
  %9 = load i8, ptr %8, align 1, !tbaa !35
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 15
  %12 = load i8, ptr %11, align 1, !tbaa !35
  %13 = zext i8 %12 to i32
  %14 = zext <12 x i8> %4 to <12 x i32>
  %i.h = tail call i32 @llvm.vector.reduce.add.v12i32(<12 x i32> %14)
  %op.rdx = add nuw nsw i32 %i.h, %7
  %op.rdx27 = add nuw nsw i32 %10, %13
  %op.rdx28 = add nuw nsw i32 %op.rdx, %op.rdx27
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %16 = load i8, ptr %15, align 1, !tbaa !35
  %17 = zext i8 %16 to i32
  %18 = add nuw nsw i32 %op.rdx28, %17            ; 3 uses
  %i.i = add nsw i32 %18, -257
  %or.cond = icmp ult i32 %i.i, -256
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %0, align 8, !tbaa !127    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i32 9, ptr %i.k, align 8, !tbaa !32
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !36
  tail call void %i.l(ptr noundef nonnull %0) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.m = load ptr, ptr %1, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 17
  %i.o = zext nneg i32 %18 to i64                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %3, i64 %i.o, i1 false)
  %i.p = load ptr, ptr %1, align 8, !tbaa !37
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 17
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  %i.s = sub nsw i32 256, %18
  %i.t = sext i32 %i.s to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.r, i8 0, i64 %i.t, i1 false)
  %i.u = load ptr, ptr %1, align 8, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 276
  store i32 0, ptr %i.v, align 4, !tbaa !128
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  ret void
}

declare ptr @jpeg_alloc_huff_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v12i32(<12 x i32>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"jpeg_decompress_struct", !9, i64 0, !11, i64 8, !12, i64 16, !10, i64 24, !4, i64 32, !4, i64 36, !13, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !14, i64 80, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !4, i64 120, !4, i64 124, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156, !15, i64 160, !4, i64 168, !4, i64 172, !4, i64 176, !4, i64 180, !4, i64 184, !17, i64 192, !5, i64 200, !5, i64 232, !5, i64 264, !4, i64 296, !10, i64 304, !4, i64 312, !4, i64 316, !4, i64 320, !5, i64 324, !5, i64 340, !5, i64 356, !4, i64 372, !4, i64 376, !5, i64 380, !5, i64 381, !5, i64 382, !18, i64 384, !18, i64 386, !4, i64 388, !5, i64 392, !4, i64 396, !19, i64 400, !4, i64 408, !4, i64 412, !4, i64 416, !4, i64 420, !4, i64 424, !20, i64 432, !4, i64 440, !5, i64 448, !4, i64 480, !4, i64 484, !4, i64 488, !5, i64 492, !4, i64 532, !4, i64 536, !4, i64 540, !4, i64 544, !4, i64 548, !17, i64 552, !4, i64 560, !4, i64 564, !21, i64 568, !22, i64 576, !23, i64 584, !24, i64 592, !25, i64 600, !26, i64 608, !27, i64 616, !28, i64 624, !29, i64 632, !30, i64 640, !31, i64 648}
!9 = !{!"p1 _ZTS14jpeg_error_mgr", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS15jpeg_memory_mgr", !10, i64 0}
!12 = !{!"p1 _ZTS17jpeg_progress_mgr", !10, i64 0}
!13 = !{!"p1 _ZTS15jpeg_source_mgr", !10, i64 0}
!14 = !{!"double", !5, i64 0}
!15 = !{!"p2 omnipotent char", !16, i64 0}
!16 = !{!"any p2 pointer", !10, i64 0}
!17 = !{!"p1 int", !10, i64 0}
!18 = !{!"short", !5, i64 0}
!19 = !{!"p1 _ZTS18jpeg_marker_struct", !10, i64 0}
!20 = !{!"p1 omnipotent char", !10, i64 0}
!21 = !{!"p1 _ZTS18jpeg_decomp_master", !10, i64 0}
!22 = !{!"p1 _ZTS22jpeg_d_main_controller", !10, i64 0}
!23 = !{!"p1 _ZTS22jpeg_d_coef_controller", !10, i64 0}
!24 = !{!"p1 _ZTS22jpeg_d_post_controller", !10, i64 0}
!25 = !{!"p1 _ZTS21jpeg_input_controller", !10, i64 0}
!26 = !{!"p1 _ZTS18jpeg_marker_reader", !10, i64 0}
!27 = !{!"p1 _ZTS20jpeg_entropy_decoder", !10, i64 0}
!28 = !{!"p1 _ZTS16jpeg_inverse_dct", !10, i64 0}
!29 = !{!"p1 _ZTS14jpeg_upsampler", !10, i64 0}
!30 = !{!"p1 _ZTS22jpeg_color_deconverter", !10, i64 0}
!31 = !{!"p1 _ZTS20jpeg_color_quantizer", !10, i64 0}
!32 = !{!33, !4, i64 40}
!33 = !{!"jpeg_error_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !4, i64 40, !5, i64 44, !4, i64 124, !34, i64 128, !15, i64 136, !4, i64 144, !15, i64 152, !4, i64 160, !4, i64 164}
!34 = !{!"long", !5, i64 0}
!35 = !{!5, !5, i64 0}
!36 = !{!33, !10, i64 0}
!37 = !{!10, !10, i64 0}
!38 = !{!8, !11, i64 8}
!39 = !{!40, !10, i64 0}
!40 = !{!"jpeg_memory_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !34, i64 88, !34, i64 96}
!41 = !{!42, !10, i64 288}
!42 = !{!"", !5, i64 0, !5, i64 144, !10, i64 288, !5, i64 296}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = distinct !{!45, !44}
!46 = !{!34, !34, i64 0}
!47 = !{!48}
!48 = distinct !{!48, !49}
!49 = distinct !{!49, !"LVerDomain"}
!50 = !{!51}
!51 = distinct !{!51, !49}
!52 = distinct !{!52, !44, !53}
!53 = !{!"llvm.loop.isvectorized", i32 1}
!54 = distinct !{!54, !44}
!55 = !{!56}
!56 = distinct !{!56, !57}
!57 = distinct !{!57, !"LVerDomain"}
!58 = !{!59}
!59 = distinct !{!59, !57}
!60 = distinct !{!60, !44, !53}
!61 = !{!8, !21, i64 568}
!62 = !{!63, !4, i64 20}
!63 = !{!"jpeg_decomp_master", !10, i64 0, !10, i64 8, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !5, i64 32, !5, i64 72, !4, i64 112, !4, i64 116, !19, i64 120}
!64 = distinct !{!64, !44}
!65 = !{!66, !20, i64 0}
!66 = !{!"", !20, i64 0, !34, i64 8, !34, i64 16, !4, i64 24, !67, i64 32}
!67 = !{!"p1 _ZTS22jpeg_decompress_struct", !10, i64 0}
!68 = !{!66, !34, i64 8}
!69 = !{!66, !67, i64 32}
!70 = !{!8, !4, i64 564}
!71 = !{!8, !13, i64 40}
!72 = !{!73, !10, i64 24}
!73 = !{!"jpeg_source_mgr", !20, i64 0, !34, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!74 = !{!73, !20, i64 0}
!75 = !{!73, !34, i64 8}
!76 = !{!8, !27, i64 616}
!77 = !{!78, !4, i64 32}
!78 = !{!"jpeg_entropy_decoder", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !4, i64 32}
!79 = !{!33, !10, i64 8}
!80 = !{!66, !34, i64 16}
!81 = !{!66, !4, i64 24}
!82 = distinct !{!82, !44}
!83 = !{!84, !4, i64 32}
!84 = !{!"jpeg_common_struct", !9, i64 0, !11, i64 8, !12, i64 16, !10, i64 24, !4, i64 32, !4, i64 36}
!85 = !{!86, !10, i64 0}
!86 = !{!"", !78, i64 0, !87, i64 40, !88, i64 56, !4, i64 72, !5, i64 80, !5, i64 112, !5, i64 144, !5, i64 224, !5, i64 304, !5, i64 344}
!87 = !{!"", !34, i64 0, !4, i64 8}
!88 = !{!"", !5, i64 0}
!89 = !{!86, !10, i64 8}
!90 = !{!8, !4, i64 532}
!91 = !{!8, !4, i64 536}
!92 = !{!8, !4, i64 540}
!93 = !{!8, !4, i64 544}
!94 = !{!8, !4, i64 440}
!95 = !{!8, !4, i64 488}
!96 = !{!97, !4, i64 20}
!97 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !10, i64 80, !10, i64 88}
!98 = !{!97, !4, i64 24}
!99 = distinct !{!99, !44}
!100 = !{!97, !4, i64 52}
!101 = !{!97, !4, i64 36}
!102 = distinct !{!102, !44}
!103 = !{!86, !4, i64 48}
!104 = !{!86, !34, i64 40}
!105 = !{!86, !4, i64 32}
!106 = !{!8, !4, i64 372}
!107 = !{!86, !4, i64 72}
!108 = !{!8, !26, i64 608}
!109 = !{!110, !4, i64 36}
!110 = !{!"jpeg_marker_reader", !10, i64 0, !10, i64 8, !10, i64 16, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36}
!111 = !{!110, !10, i64 16}
!112 = distinct !{null}
!113 = distinct !{!113, !44}
!114 = !{i64 0, i64 16, !35}
!115 = !{!116, !116, i64 0}
!116 = !{!"p1 short", !10, i64 0}
!117 = distinct !{!117, !44}
!118 = !{!18, !18, i64 0}
!119 = distinct !{!119, !44}
!120 = distinct !{!120, !44}
!121 = distinct !{!121, !44}
!122 = distinct !{!122, !44}
!123 = distinct !{!123, !44}
!124 = distinct !{!124, !44}
!125 = distinct !{!125, !44}
!126 = distinct !{!126, !44}
!127 = !{!84, !9, i64 0}
!128 = !{!129, !4, i64 276}
!129 = !{!"", !5, i64 0, !5, i64 17, !4, i64 276}
end_hunk_0
