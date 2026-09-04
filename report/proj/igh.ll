Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/igh?download=true
inline.NumInlined: 12
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL13igh_s_inverse5PJ_XYP8PJconsts:bb.a
  %i.al = fadd double %i.ag, %i.ak                ; 34 uses
  switch i32 %.090.ph, label %default.unreachable141 [
    i32 1, label %bb.m
    i32 2, label %bb.o
    i32 3, label %.split163
    i32 4, label %.split161
    i32 5, label %.split159
    i32 6, label %.split157
    i32 7, label %.split155
    i32 8, label %.split153
    i32 9, label %.split151
    i32 10, label %.split149
    i32 11, label %bb.r
    i32 12, label %.split
  ]

bb.m:                                             ; preds = %select.unfold
  %i.am = fcmp oge double %i.al, f0xC00921FB54479CB4
  %i.an = fcmp ole double %i.al, f0xBFE657184AD98617
  %or.cond = and i1 %i.am, %i.an
  br i1 %or.cond, label %.thread128, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = fcmp oge double %i.al, f0xBFE657184AF502F7
  %i.ap = fcmp ole double %i.al, f0xBFC657184AB04AC7
  %or.cond5 = and i1 %i.ao, %i.ap
  br i1 %or.cond5, label %.split165, label %.thread128

.split165:                                        ; preds = %bb.n
  %i.aq = fcmp oge double %i.ah, f0x3FF0C1523826942D
  %i.ar = fcmp ole double %i.ah, f0x3FF921FB544B0C50
  %i.as = and i1 %i.aq, %i.ar
  %.0.fr166 = freeze i1 %i.as
  br i1 %.0.fr166, label %bb.s, label %.thread128

bb.o:                                             ; preds = %select.unfold
  %i.at = fcmp oge double %i.al, f0xBFE657184AF502F7
  %i.au = fcmp ole double %i.al, f0x400921FB54479CB4
  %or.cond8 = and i1 %i.at, %i.au
  br i1 %or.cond8, label %.thread128, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = fcmp oge double %i.al, f0xC00921FB54479CB4
  %i.aw = fcmp ole double %i.al, f0xC00657184AE3D4EB
  %or.cond11 = and i1 %i.av, %i.aw
  %i.ax = fcmp oge double %i.ah, f0x3FEBECDE5D935739
  %i.ay = fcmp ole double %i.ah, f0x3FF921FB544B0C50 ; 2 uses
  %i.az = and i1 %i.ax, %i.ay
  %or.cond17 = select i1 %or.cond11, i1 %i.az, i1 false
  br i1 %or.cond17, label %.thread128, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = fcmp oge double %i.al, f0xBFEBECDE5DAED419
  %i.bb = fcmp ole double %i.al, f0xBFE657184AD98617
  %or.cond20 = and i1 %i.ba, %i.bb
  br i1 %or.cond20, label %.split147, label %.thread128

.split147:                                        ; preds = %bb.q
  %i.bc = fcmp oge double %i.ah, f0x3FF0C1523826942D
  %i.bd = and i1 %i.bc, %i.ay
  %.0.fr148 = freeze i1 %i.bd
  br i1 %.0.fr148, label %bb.s, label %.thread128

.split163:                                        ; preds = %select.unfold
  %i.be = fcmp oge double %i.al, f0xC00921FB54479CB4
  %i.bf = fcmp ole double %i.al, f0xBFE657184AD98617
  %i.bg = and i1 %i.be, %i.bf
  %.0.fr164 = freeze i1 %i.bg
  br i1 %.0.fr164, label %bb.s, label %.thread128

.split161:                                        ; preds = %select.unfold
  %i.bh = fcmp oge double %i.al, f0xBFE657184AF502F7
  %i.bi = fcmp ole double %i.al, f0x400921FB54479CB4
  %i.bj = and i1 %i.bh, %i.bi
  %.0.fr162 = freeze i1 %i.bj
  br i1 %.0.fr162, label %bb.s, label %.thread128

.split159:                                        ; preds = %select.unfold
  %i.bk = fcmp oge double %i.al, f0xC00921FB54479CB4
  %i.bl = fcmp ole double %i.al, f0xBFFBECDE5D9A3671
  %i.bm = and i1 %i.bk, %i.bl
  %.0.fr160 = freeze i1 %i.bm
  br i1 %.0.fr160, label %bb.s, label %.thread128

.split157:                                        ; preds = %select.unfold
  %i.bn = fcmp oge double %i.al, f0xBFFBECDE5DA7F4E1
  %i.bo = fcmp ole double %i.al, f0xBFD657184ACBC7A7
  %i.bp = and i1 %i.bn, %i.bo
  %.0.fr158 = freeze i1 %i.bp
  br i1 %.0.fr158, label %bb.s, label %.thread128

.split155:                                        ; preds = %select.unfold
  %i.bq = fcmp oge double %i.al, f0xBFD657184B02C167
  %i.br = fcmp ole double %i.al, f0x3FF657184AEE23BF
  %i.bs = and i1 %i.bq, %i.br
  %.0.fr156 = freeze i1 %i.bs
  br i1 %.0.fr156, label %bb.s, label %.thread128

.split153:                                        ; preds = %select.unfold
  %i.bt = fcmp oge double %i.al, f0x3FF657184AE0654F
  %i.bu = fcmp ole double %i.al, f0x400921FB54479CB4
  %i.bv = and i1 %i.bt, %i.bu
  %.0.fr154 = freeze i1 %i.bv
  br i1 %.0.fr154, label %bb.s, label %.thread128

.split151:                                        ; preds = %select.unfold
  %i.bw = fcmp oge double %i.al, f0xC00921FB54479CB4
  %i.bx = fcmp ole double %i.al, f0xBFFBECDE5D9A3671
  %i.by = and i1 %i.bw, %i.bx
  %.0.fr152 = freeze i1 %i.by
  br i1 %.0.fr152, label %bb.s, label %.thread128

.split149:                                        ; preds = %select.unfold
  %i.bz = fcmp oge double %i.al, f0xBFFBECDE5DA7F4E1
  %i.ca = fcmp ole double %i.al, f0xBFD657184ACBC7A7
  %i.cb = and i1 %i.bz, %i.ca
  %.0.fr150 = freeze i1 %i.cb
  br i1 %.0.fr150, label %bb.s, label %.thread128

.split:                                           ; preds = %select.unfold
  %i.cc = fcmp oge double %i.al, f0x3FF657184AE0654F
  %i.cd = fcmp ole double %i.al, f0x400921FB54479CB4
  %i.ce = and i1 %i.cc, %i.cd
  %.0.fr146 = freeze i1 %i.ce
  br i1 %.0.fr146, label %bb.s, label %.thread128

default.unreachable141:                           ; preds = %select.unfold
  unreachable

bb.r:                                             ; preds = %select.unfold
  %i.cf = fcmp oge double %i.al, f0xBFD657184B02C167
  %i.cg = fcmp ole double %i.al, f0x3FF657184AEE23BF
  %i.ch = and i1 %i.cf, %i.cg
  %.0.fr = freeze i1 %i.ch
  br i1 %.0.fr, label %bb.s, label %.thread128

bb.s:                                             ; preds = %.split165, %.split163, %.split161, %.split159, %.split157, %.split155, %.split153, %.split151, %.split149, %.split147, %.split, %bb.r
  br label %.thread128

.thread128:                                       ; preds = %.split165, %.split163, %.split161, %.split159, %.split157, %.split155, %.split153, %.split151, %.split149, %.split147, %.split, %bb.s, %bb.r, %bb.a, %bb.n, %bb.q, %bb.m, %bb.p, %bb.o
  %i.ci = phi double [ %i.al, %bb.p ], [ %i.al, %bb.s ], [ %i.al, %bb.m ], [ %i.al, %bb.o ], [ +inf, %bb.r ], [ +inf, %bb.a ], [ +inf, %bb.n ], [ +inf, %bb.q ], [ +inf, %.split ], [ +inf, %.split147 ], [ +inf, %.split149 ], [ +inf, %.split151 ], [ +inf, %.split153 ], [ +inf, %.split155 ], [ +inf, %.split157 ], [ +inf, %.split159 ], [ +inf, %.split161 ], [ +inf, %.split163 ], [ +inf, %.split165 ]
  %i.cj = phi double [ %i.ah, %bb.p ], [ %i.ah, %bb.s ], [ %i.ah, %bb.m ], [ %i.ah, %bb.o ], [ +inf, %bb.r ], [ +inf, %bb.a ], [ +inf, %bb.n ], [ +inf, %bb.q ], [ +inf, %.split ], [ +inf, %.split147 ], [ +inf, %.split149 ], [ +inf, %.split151 ], [ +inf, %.split153 ], [ +inf, %.split155 ], [ +inf, %.split157 ], [ +inf, %.split159 ], [ +inf, %.split161 ], [ +inf, %.split163 ], [ +inf, %.split165 ]
  %.fca.0.insert = insertvalue { double, double } poison, double %i.ci, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.cj, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL13igh_s_forward5PJ_LPP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.c = fcmp ult double %1, f0x3FE6C069E29BDA5B
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = fcmp ole double %0, f0xBFE657184AE74487
  %i.e = select i1 %i.d, i64 1, i64 2
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = fcmp ult double %1, 0.000000e+00
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = fcmp ole double %0, f0xBFE657184AE74487
  %i.h = select i1 %i.g, i64 3, i64 4
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.i = fcmp ult double %1, f0xBFE6C069E29BDA5B
  %i.j = fcmp ugt double %0, f0xBFFBECDE5DA115A9  ; 2 uses
  br i1 %i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.j, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.k = fcmp ugt double %0, f0xBFD657184AE74487
  br i1 %i.k, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.l = fcmp ugt double %0, f0x3FF657184AE74487
  %. = select i1 %i.l, i64 8, i64 7
  br label %bb.l

bb.i:                                             ; preds = %bb.e
  br i1 %i.j, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.m = fcmp ugt double %0, f0xBFD657184AE74487
  br i1 %i.m, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.n = fcmp ugt double %0, f0x3FF657184AE74487
  %.26 = select i1 %i.n, i64 12, i64 11
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ %i.h, %bb.d ], [ 10, %bb.j ], [ 5, %bb.f ], [ %., %bb.h ], [ 6, %bb.g ], [ %.26, %bb.k ], [ 9, %bb.i ]
  %3 = getelementptr [8 x i8], ptr %i.b, i64 %.0
  %4 = getelementptr i8, ptr %3, i64 -8           ; 2 uses
  %i.o = load ptr, ptr %4, align 8, !tbaa !38     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 440
  %i.q = load double, ptr %i.p, align 8, !tbaa !39
  %i.r = fsub double %0, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.u = tail call { double, double } %i.t(double %i.r, double %1, ptr noundef %i.o) ; 2 uses
  %i.v = extractvalue { double, double } %i.u, 0
  %i.w = extractvalue { double, double } %i.u, 1
  %i.x = load ptr, ptr %4, align 8, !tbaa !38     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 456
  %i.z = load double, ptr %i.y, align 8, !tbaa !44
  %i.aa = fadd double %i.v, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 464
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !43
  %i.ad = fadd double %i.w, %i.ac
  %.fca.0.insert = insertvalue { double, double } poison, double %i.aa, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.ad, 1
  ret { double, double } %.fca.1.insert
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS6pj_ctx", !8, i64 0}
!10 = !{!"p1 omnipotent char", !8, i64 0}
!11 = !{!"p1 _ZTS8ARG_list", !8, i64 0}
!12 = !{!"p1 _ZTS8PJconsts", !8, i64 0}
!13 = !{!"p1 _ZTS13geod_geodesic", !8, i64 0}
!14 = !{!"double", !4, i64 0}
!15 = !{!"_ZTS11pj_io_units", !4, i64 0}
!16 = !{!"p1 _ZTSN5osgeo4proj4util10BaseObjectE", !8, i64 0}
!17 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 0}
!18 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0}
!19 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EE", !16, i64 0, !18, i64 8}
!20 = !{!"_ZTSSt10shared_ptrIN5osgeo4proj4util10BaseObjectEE", !19, i64 0}
!21 = !{!"bool", !4, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!23 = !{!"long", !4, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0, !23, i64 8, !4, i64 16}
!25 = !{!"p1 _ZTSN5osgeo4proj9operation15GridDescriptionE", !8, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE12_Vector_implE", !26, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !27, i64 0}
!29 = !{!"_ZTSSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !28, i64 0}
!30 = !{!"_ZTS7PJ_TYPE", !4, i64 0}
!31 = !{!"p1 _ZTS16PJCoordOperation", !8, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!33 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE12_Vector_implE", !32, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseI16PJCoordOperationSaIS0_EE", !33, i64 0}
!35 = !{!"_ZTSSt6vectorI16PJCoordOperationSaIS0_EE", !34, i64 0}
!36 = !{!"_ZTS8PJconsts", !9, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !10, i64 32, !12, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !13, i64 80, !8, i64 88, !5, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !14, i64 272, !14, i64 280, !14, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !14, i64 336, !5, i64 344, !5, i64 348, !5, i64 352, !5, i64 356, !5, i64 360, !5, i64 364, !5, i64 368, !5, i64 372, !5, i64 376, !15, i64 380, !15, i64 384, !12, i64 392, !12, i64 400, !12, i64 408, !12, i64 416, !12, i64 424, !12, i64 432, !14, i64 440, !14, i64 448, !14, i64 456, !14, i64 464, !14, i64 472, !14, i64 480, !14, i64 488, !14, i64 496, !14, i64 504, !14, i64 512, !14, i64 520, !5, i64 528, !4, i64 536, !5, i64 592, !8, i64 600, !8, i64 608, !14, i64 616, !14, i64 624, !5, i64 632, !4, i64 636, !20, i64 640, !21, i64 656, !14, i64 664, !21, i64 672, !24, i64 680, !24, i64 712, !24, i64 744, !21, i64 776, !29, i64 784, !30, i64 808, !35, i64 816, !5, i64 840, !21, i64 844, !21, i64 845, !21, i64 846, !12, i64 848}
!37 = !{!36, !8, i64 88}
!38 = !{!12, !12, i64 0}
!39 = !{!36, !14, i64 440}
!40 = !{!36, !8, i64 104}
!41 = !{!"_ZTSN9pj_igh_ns11pj_igh_dataE", !4, i64 0, !14, i64 96}
!42 = !{!41, !14, i64 96}
!43 = !{!36, !14, i64 464}
!44 = !{!36, !14, i64 456}
!45 = !{!36, !8, i64 112}
!46 = !{!36, !8, i64 152}
!47 = !{!36, !10, i64 8}
!48 = !{!36, !10, i64 16}
!49 = !{!36, !5, i64 360}
!50 = !{!36, !15, i64 380}
!51 = !{!36, !15, i64 384}
!52 = distinct !{null}
!53 = !{ptr @pj_moll, ptr @pj_sinu}
!54 = !{!36, !9, i64 0}
!55 = !{!14, !14, i64 0}
!56 = !{!36, !14, i64 216}
end_hunk_0
