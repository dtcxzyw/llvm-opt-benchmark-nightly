inline.NumInlined: 2
begin_hunk_0_@gx_copy_cached_char:bb.a
  %2 = alloca %struct.gs_matrix_s, align 8        ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !81     ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.e = load i8, ptr %i.d, align 8, !tbaa !87
  %.not = icmp eq i8 %i.e, 0
end_hunk_0
begin_hunk_1_@gx_copy_cached_char:bb.a

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %3 = load i64, ptr %i.f, align 8, !tbaa !91
  %4 = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %5 = load i64, ptr %4, align 8, !tbaa !92
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !93
  %.not53 = icmp eq i32 %i.h, 0
  br i1 %.not53, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !94   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !95
  %i.m = tail call i32 (ptr, ptr, ptr, ...) @gx_color_render(ptr noundef %i.l, ptr noundef %i.j, ptr noundef nonnull %i.a) #10 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !96
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.g, align 4, !tbaa !93
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %6 = load i64, ptr %i.q, align 8, !tbaa !99
  %7 = sub nsw i64 %3, %6                         ; 2 uses
  %i.r = add nsw i64 %7, 2048
  %i.s = lshr i64 %i.r, 12
  %i.t = trunc i64 %i.s to i32                    ; 3 uses
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %9 = load i64, ptr %8, align 8, !tbaa !100
  %10 = sub nsw i64 %5, %9                        ; 2 uses
  %i.u = add nsw i64 %10, 2048
  %i.v = lshr i64 %i.u, 12
  %i.w = trunc i64 %i.v to i32                    ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 28
end_hunk_1
begin_hunk_2_@gx_copy_cached_char:bb.a
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !40
  %i.ac = zext i16 %i.ab to i32                   ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !101
  %i.af = icmp sgt i32 %i.ae, %i.t
  br i1 %i.af, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = add nsw i32 %i.t, %i.z
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !102
  %i.aj = icmp sgt i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !103
  %i.am = icmp sgt i32 %i.al, %i.w
  br i1 %i.am, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = add nsw i32 %i.w, %i.ac
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !104
  %i.aq = icmp sgt i32 %i.an, %i.ap
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(96) %i.ar, i64 96, i1 false), !tbaa.struct !105
  %11 = sitofp i64 %7 to double
  %12 = fmul nnan double %11, 0x3F30000000000000
  %13 = fptrunc double %12 to float
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %15 = load float, ptr %14, align 8, !tbaa !108
  %16 = fsub float %15, %13
  store float %16, ptr %14, align 8, !tbaa !108
  %17 = sitofp i64 %10 to double
  %18 = fmul nnan double %17, 0x3F30000000000000
  %19 = fptrunc double %18 to float
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %21 = load float, ptr %20, align 8, !tbaa !109
  %22 = fsub float %21, %19
  store float %22, ptr %20, align 8, !tbaa !109
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = load i16, ptr %i.as, align 8, !tbaa !41
  %i.au = zext i16 %i.at to i32
end_hunk_2
begin_hunk_3_@gx_copy_cached_char:bb.a

bb.j:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !110
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !111 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !112
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !114
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !36
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = load i16, ptr %i.bi, align 8, !tbaa !41
  %i.bk = zext i16 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !94
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !115
  %i.bo = tail call i32 %i.bf(ptr noundef %i.bb, ptr noundef %i.bh, i32 noundef 0, i32 noundef %i.bk, i32 noundef %i.t, i32 noundef %i.w, i32 noundef %i.z, i32 noundef %i.ac, i64 noundef -1, i64 noundef %i.bn) #10
  br label %bb.k

end_hunk_3
begin_hunk_4_@llvm.smin.i32
!88 = !{!"gx_path_s", !49, i64 0, !89, i64 16, !90, i64 48, !89, i64 56, !11, i64 88, !11, i64 96, !5, i64 104, !5, i64 108, !5, i64 112, !38, i64 120, !6, i64 136, !6, i64 137, !6, i64 138}
!89 = !{!"gs_fixed_rect_s", !38, i64 0, !38, i64 16}
!90 = !{!"p1 _ZTS9segment_s", !11, i64 0}
!91 = !{!88, !16, i64 120}
!92 = !{!88, !16, i64 128}
!93 = !{!82, !5, i64 356}
!94 = !{!47, !55, i64 312}
!95 = !{!47, !54, i64 304}
!96 = !{!97, !5, i64 16}
!97 = !{!"gx_device_color_s", !16, i64 0, !16, i64 8, !5, i64 16, !98, i64 24}
!98 = !{!"p1 _ZTS11gx_bitmap_s", !11, i64 0}
!99 = !{!37, !16, i64 48}
!100 = !{!37, !16, i64 56}
!101 = !{!82, !5, i64 60}
!102 = !{!82, !5, i64 68}
!103 = !{!82, !5, i64 64}
!104 = !{!82, !5, i64 72}
!105 = !{i64 0, i64 4, !106, i64 8, i64 8, !107, i64 16, i64 4, !106, i64 24, i64 8, !107, i64 32, i64 4, !106, i64 40, i64 8, !107, i64 48, i64 4, !106, i64 56, i64 8, !107, i64 64, i64 4, !106, i64 72, i64 8, !107, i64 80, i64 4, !106, i64 88, i64 8, !107}
!106 = !{!13, !13, i64 0}
!107 = !{!16, !16, i64 0}
!108 = !{!15, !13, i64 64}
!109 = !{!15, !13, i64 80}
!110 = !{!47, !56, i64 448}
!111 = !{!83, !84, i64 0}
!112 = !{!113, !10, i64 8}
!113 = !{!"gx_device_s", !5, i64 0, !10, i64 8, !12, i64 16, !5, i64 24, !5, i64 28, !13, i64 32, !13, i64 36, !5, i64 40, !14, i64 44, !5, i64 48, !5, i64 52}
!114 = !{!45, !11, i64 72}
!115 = !{!97, !16, i64 0}
end_hunk_4
