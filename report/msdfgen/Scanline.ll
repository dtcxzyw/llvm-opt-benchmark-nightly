Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/Scanline?download=true
inline.NumInlined: 156
inline.NumDeleted: 73
begin_hunk_0_@_ZN7msdfgen8Scanline7overlapERKS0_S2_ddNS_8FillRuleE:bb.a
  %i.cu = sext i32 %.287131 to i64
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !17 ; 4 uses
  switch i32 %4, label %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit115 [
    i32 0, label %bb.ad
    i32 1, label %bb.ae
    i32 2, label %bb.af
    i32 3, label %bb.ag
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.cy = icmp ne i32 %i.cx, 0
  br label %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit115

bb.ae:                                            ; preds = %bb.ac
  %i.cz = trunc i32 %i.cx to i1
  br label %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit115

bb.af:                                            ; preds = %bb.ac
  %i.da = icmp sgt i32 %i.cx, 0
  br label %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit115

bb.ag:                                            ; preds = %bb.ac
  %i.db = icmp slt i32 %i.cx, 0
  br label %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit115

_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit115: ; preds = %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag
  %.0.i114 = phi i1 [ %i.db, %bb.ag ], [ %i.cy, %bb.ad ], [ %i.cz, %bb.ae ], [ %i.da, %bb.af ], [ false, %bb.ac ]
  %i.dc = zext i1 %.0.i114 to i8                  ; 2 uses
  %i.dd = add nsw i32 %.287131, 1                 ; 4 uses
  %i.de = icmp slt i32 %i.dd, %i.al
  br i1 %i.de, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit115
  %i.df = sext i32 %i.dd to i64
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.df
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit115, %bb.ab
  %.396 = phi i8 [ %.295129, %bb.ab ], [ %i.dc, %bb.ah ], [ %i.dc, %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit115 ] ; 2 uses
  %.388 = phi i32 [ %.287131, %bb.ab ], [ %i.dd, %bb.ah ], [ %i.dd, %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit115 ]
  %.3 = phi double [ %.2133, %bb.ab ], [ %i.dh, %bb.ah ], [ %3, %_ZN7msdfgen17interpretFillRuleEiNS_8FillRuleE.exit115 ] ; 2 uses
  %i.di = fcmp olt double %.384, %3
  %i.dj = fcmp olt double %.3, %3
  %i.dk = select i1 %i.di, i1 true, i1 %i.dj
  br i1 %i.dk, label %bb.u, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.ai, %.preheader
  %.0101.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %.1102, %bb.ai ] ; 2 uses
  %.299.lcssa = phi i8 [ %.097.lcssa, %.preheader ], [ %.3100, %bb.ai ]
  %.295.lcssa = phi i8 [ %.093.lcssa, %.preheader ], [ %.396, %bb.ai ]
  %.0.lcssa = phi double [ %2, %.preheader ], [ %i.by, %bb.ai ]
  %i.dl = icmp eq i8 %.295.lcssa, %.299.lcssa
  %i.dm = fsub double %3, %.0.lcssa
  %i.dn = fadd double %.0101.lcssa, %i.dm
  %.2103 = select i1 %i.dl, double %i.dn, double %.0101.lcssa
  ret double %.2103
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7msdfgen8ScanlineC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(28) initializes((0, 28)) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree uwtable
define void @_ZN7msdfgen8Scanline10preprocessEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(28) initializes((24, 28)) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.a, align 8, !tbaa !24
  %i.b = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 4
  tail call void @qsort(ptr noundef nonnull %i.b, i64 noundef %i.i, i64 noundef 16, ptr noundef nonnull @_ZN7msdfgenL20compareIntersectionsEPKvS1_)
  %i.j = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %.not6 = icmp eq ptr %i.j, %i.k
  br i1 %.not6, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.08 = phi i32 [ %i.n, %.lr.ph ], [ 0, %bb.b ]
  %.sroa.02.07 = phi ptr [ %i.o, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.07, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !17
  %i.n = add nsw i32 %i.m, %.08                   ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.02.07, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.o, %i.k
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef range(i32 -1, 2) i32 @_ZN7msdfgenL20compareIntersectionsEPKvS1_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !16
  %i.b = load double, ptr %1, align 8, !tbaa !16
  %i.c = fsub double %i.a, %i.b                   ; 2 uses
  %i.d = fcmp ogt double %i.c, 0.000000e+00
  %i.e = zext i1 %i.d to i32
  %i.f = fcmp olt double %i.c, 0.000000e+00
  %.neg.i = sext i1 %i.f to i32
  %i.g = add nsw i32 %.neg.i, %i.e
  ret i32 %i.g
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen8Scanline16setIntersectionsERKSt6vectorINS0_12IntersectionESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.b, align 8, !tbaa !24
  %i.c = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %_ZN7msdfgen8Scanline10preprocessEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 4
  tail call void @qsort(ptr noundef nonnull %i.c, i64 noundef %i.j, i64 noundef 16, ptr noundef nonnull @_ZN7msdfgenL20compareIntersectionsEPKvS1_)
  %i.k = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %.not6.i = icmp eq ptr %i.k, %i.l
  br i1 %.not6.i, label %_ZN7msdfgen8Scanline10preprocessEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.08.i = phi i32 [ %i.o, %.lr.ph.i ], [ 0, %bb.b ]
  %.sroa.02.07.i = phi ptr [ %i.p, %.lr.ph.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !17
  %i.o = add nsw i32 %i.n, %.08.i                 ; 2 uses
  store i32 %i.o, ptr %i.m, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.p, %i.l
  br i1 %.not.i, label %_ZN7msdfgen8Scanline10preprocessEv.exit, label %.lr.ph.i, !llvm.loop !0

_ZN7msdfgen8Scanline10preprocessEv.exit:          ; preds = %.lr.ph.i, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = load ptr, ptr %1, align 8, !tbaa !25     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.i = load ptr, ptr %0, align 8, !tbaa !25     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN7msdfgen8Scanline12IntersectionESaIS2_EE11_M_allocateEm.exit.i, !prof !30

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #14
  unreachable

_ZNSt12_Vector_baseIN7msdfgen8Scanline12IntersectionESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #15 ; 3 uses
  %i.p = icmp samesign ugt i64 %i.f, 16
  br i1 %i.p, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.sink.split, label %bb.e, !prof !31

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN7msdfgen8Scanline12IntersectionESaIS2_EE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 16
  br i1 %i.q, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.sink.split, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.sink.split: ; preds = %bb.e, %_ZNSt12_Vector_baseIN7msdfgen8Scanline12IntersectionESaIS2_EE11_M_allocateEm.exit.i
  %.sink = phi i64 [ %i.f, %_ZNSt12_Vector_baseIN7msdfgen8Scanline12IntersectionESaIS2_EE11_M_allocateEm.exit.i ], [ 16, %bb.e ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %.sink, i1 false)
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.sink.split, %bb.e
  %i.r = load ptr, ptr %0, align 8, !tbaa !25     ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN7msdfgen8Scanline12IntersectionESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #16
  br label %_ZNSt12_Vector_baseIN7msdfgen8Scanline12IntersectionESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN7msdfgen8Scanline12IntersectionESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.w, ptr %i.g, align 8, !tbaa !26
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7msdfgen8Scanline12IntersectionESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.g:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !29
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.k                      ; 4 uses
  %.not24 = icmp ult i64 %i.aa, %i.f
  br i1 %.not24, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp sgt i64 %i.f, 16
  br i1 %i.ab, label %bb.i, label %bb.j, !prof !31

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7msdfgen8Scanline12IntersectionESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.j:                                             ; preds = %bb.h
  %i.ac = icmp eq i64 %i.f, 16
  br i1 %i.ac, label %bb.k, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7msdfgen8Scanline12IntersectionESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !34
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7msdfgen8Scanline12IntersectionESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.l:                                             ; preds = %bb.g
  %i.ad = icmp sgt i64 %i.aa, 16
  br i1 %i.ad, label %bb.m, label %bb.n, !prof !31

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.aa, i1 false)
  br label %_ZSt4copyIPN7msdfgen8Scanline12IntersectionES3_ET0_T_S5_S4_.exit

bb.n:                                             ; preds = %bb.l
  %i.ae = icmp eq i64 %i.aa, 16
  br i1 %i.ae, label %bb.o, label %_ZSt4copyIPN7msdfgen8Scanline12IntersectionES3_ET0_T_S5_S4_.exit

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !34
  br label %_ZSt4copyIPN7msdfgen8Scanline12IntersectionES3_ET0_T_S5_S4_.exit

_ZSt4copyIPN7msdfgen8Scanline12IntersectionES3_ET0_T_S5_S4_.exit: ; preds = %bb.m, %bb.n, %bb.o
  %i.af = load ptr, ptr %1, align 8, !tbaa !25
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !29  ; 3 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !25
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ak ; 3 uses
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 3 uses
  %i.aq = icmp sgt i64 %i.ap, 16
  br i1 %i.aq, label %bb.p, label %bb.q, !prof !31

bb.p:                                             ; preds = %_ZSt4copyIPN7msdfgen8Scanline12IntersectionES3_ET0_T_S5_S4_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ag, ptr align 8 %i.al, i64 %i.ap, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7msdfgen8Scanline12IntersectionESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.q:                                             ; preds = %_ZSt4copyIPN7msdfgen8Scanline12IntersectionES3_ET0_T_S5_S4_.exit
  %i.ar = icmp eq i64 %i.ap, 16
  br i1 %i.ar, label %bb.r, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7msdfgen8Scanline12IntersectionESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !tbaa.struct !34
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7msdfgen8Scanline12IntersectionESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7msdfgen8Scanline12IntersectionESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %bb.r, %bb.q, %bb.p, %bb.k, %bb.j, %bb.i, %_ZNSt12_Vector_baseIN7msdfgen8Scanline12IntersectionESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.as = load ptr, ptr %0, align 8, !tbaa !25
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.f
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %i.au, align 8, !tbaa !29
  br label %bb.s

bb.s:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7msdfgen8Scanline12IntersectionESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen8Scanline16setIntersectionsEOSt6vectorINS0_12IntersectionESaIS2_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(28) initializes((8, 16), (24, 28)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !13
  store <2 x ptr> %i.e, ptr %0, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26
  store ptr %i.g, ptr %i.c, align 8, !tbaa !26
  %.not.i.i.i.i.i = icmp eq ptr %i.a, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EEaSEOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.a to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.j) #16
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EEaSEOS4_.exit

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EEaSEOS4_.exit: ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.k, align 8, !tbaa !24
  %i.l = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN7msdfgen8Scanline10preprocessEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EEaSEOS4_.exit
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 4
  tail call void @qsort(ptr noundef nonnull %i.l, i64 noundef %i.r, i64 noundef 16, ptr noundef nonnull @_ZN7msdfgenL20compareIntersectionsEPKvS1_)
  %i.s = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %.not6.i = icmp eq ptr %i.s, %i.t
  br i1 %.not6.i, label %_ZN7msdfgen8Scanline10preprocessEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.08.i = phi i32 [ %i.w, %.lr.ph.i ], [ 0, %bb.c ]
  %.sroa.02.07.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.s, %bb.c ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !17
  %i.w = add nsw i32 %i.v, %.08.i                 ; 2 uses
  store i32 %i.w, ptr %i.u, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.x, %i.t
  br i1 %.not.i, label %_ZN7msdfgen8Scanline10preprocessEv.exit, label %.lr.ph.i, !llvm.loop !0

_ZN7msdfgen8Scanline10preprocessEv.exit:          ; preds = %.lr.ph.i, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EEaSEOS4_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK7msdfgen8Scanline6moveToEd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(28) %0, double noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24   ; 4 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.g
  %i.i = load double, ptr %i.h, align 8, !tbaa !16
  %i.j = fcmp olt double %1, %i.i
  br i1 %i.j, label %.preheader.preheader, label %.preheader15

.preheader.preheader:                             ; preds = %bb.b
  %i.k = icmp eq i32 %i.f, 0
  br i1 %i.k, label %.critedge, label %.lr.ph38

.preheader15:                                     ; preds = %bb.b
  %i.l = ptrtoint ptr %i.c to i64
  %i.m = ptrtoint ptr %i.a to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 4
  %i.p = trunc i64 %i.o to i32
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.f, i32 %i.q) ; 5 uses
  %wide.trip.count = sext i32 %smax to i64
  %exitcond.not35.not = icmp slt i32 %i.f, %i.q
  br i1 %exitcond.not35.not, label %.lr.ph, label %.critedge

.preheader:                                       ; preds = %.lr.ph38
  %i.r = icmp eq i64 %indvars.iv.next20, 0
  br i1 %i.r, label %.critedge, label %.lr.ph38, !llvm.loop !1

.lr.ph38:                                         ; preds = %.preheader.preheader, %.preheader
  %indvars.iv1937 = phi i64 [ %indvars.iv.next20, %.preheader ], [ %i.g, %.preheader.preheader ]
  %indvars.iv.next20 = add nsw i64 %indvars.iv1937, -1 ; 4 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv.next20
  %i.t = load double, ptr %i.s, align 8, !tbaa !16
  %i.u = fcmp olt double %1, %i.t
end_hunk_0
