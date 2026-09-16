Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_string_test?download=true
inline.NumInlined: 5601
inline.NumDeleted: 957
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE12find_last_ofEPKcmm:bb.a
  %.not7.i = icmp eq ptr %i.s, %i.m
  br i1 %.not7.i, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsIS9_EEEET_SD_SD_T0_SE_T1_.exit.thread, label %.preheader.i, !llvm.loop !8

_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsIS9_EEEET_SD_SD_T0_SE_T1_.exit: ; preds = %bb.c
  %.not = icmp eq ptr %i.r, %i.m
  br i1 %.not, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsIS9_EEEET_SD_SD_T0_SE_T1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsIS9_EEEET_SD_SD_T0_SE_T1_.exit
  %i.x = ptrtoint ptr %i.s to i64
  %i.y = ptrtoint ptr %i.m to i64
  %i.z = sub i64 %i.x, %i.y
  br label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsIS9_EEEET_SD_SD_T0_SE_T1_.exit.thread

_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsIS9_EEEET_SD_SD_T0_SE_T1_.exit.thread: ; preds = %._crit_edge.i, %.preheader.lr.ph.i, %bb.d, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsIS9_EEEET_SD_SD_T0_SE_T1_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.z, %bb.d ], [ -1, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsIS9_EEEET_SD_SD_T0_SE_T1_.exit ], [ -1, %.preheader.lr.ph.i ], [ -1, %._crit_edge.i ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE12find_last_ofEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE12find_last_ofEPKcmm.exit, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26 ; 2 uses
  %i.j = trunc i64 %i.e to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.i
  %.not12.i.i = icmp eq i64 %i.i, 0
  br i1 %.not12.i.i, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE12find_last_ofEPKcmm.exit, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %.preheader.lr.ph.i.i
  %i.p = add nsw i64 %i.g, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %2)
  %i.q = getelementptr i8, ptr %i.n, i64 %.sroa.speculated.i
  %i.r = getelementptr i8, ptr %i.q, i64 1
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.i.preheader.i
  %i.s = phi ptr [ %i.t, %._crit_edge.i.i ], [ %i.r, %.preheader.i.preheader.i ] ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -1 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !109, !noalias !265
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.0513.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %i.o
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.c, !llvm.loop !7

bb.c:                                             ; preds = %bb.b, %.preheader.i.i
  %.0513.i.i = phi ptr [ %1, %.preheader.i.i ], [ %i.v, %bb.b ] ; 2 uses
  %i.w = load i8, ptr %.0513.i.i, align 1, !tbaa !109, !noalias !265
  %i.x = icmp eq i8 %i.u, %i.w
  br i1 %i.x, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsIS9_EEEET_SD_SD_T0_SE_T1_.exit.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.b
  %.not7.i.i = icmp eq ptr %i.t, %i.n
  br i1 %.not7.i.i, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE12find_last_ofEPKcmm.exit, label %.preheader.i.i, !llvm.loop !8

_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsIS9_EEEET_SD_SD_T0_SE_T1_.exit.i: ; preds = %bb.c
  %.not.i = icmp eq ptr %i.s, %i.n
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE12find_last_ofEPKcmm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsIS9_EEEET_SD_SD_T0_SE_T1_.exit.i
  %i.y = ptrtoint ptr %i.t to i64
  %i.z = ptrtoint ptr %i.n to i64
  %i.aa = sub i64 %i.y, %i.z
  br label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE12find_last_ofEPKcmm.exit

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE12find_last_ofEPKcmm.exit: ; preds = %._crit_edge.i.i, %bb.a, %.preheader.lr.ph.i.i, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsIS9_EEEET_SD_SD_T0_SE_T1_.exit.i, %bb.d
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.aa, %bb.d ], [ -1, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsIS9_EEEET_SD_SD_T0_SE_T1_.exit.i ], [ -1, %.preheader.lr.ph.i.i ], [ -1, %._crit_edge.i.i ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE12find_last_ofEcm(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE5rfindEcm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 4 uses
  %i.n = add nsw i64 %i.g, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %2)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.speculated.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.b
  %i.q = phi ptr [ %i.r, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -1 ; 4 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !109, !noalias !268
  %i.t = icmp eq i8 %i.s, %1
  br i1 %i.t, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsISA_EEEEEET_SF_SF_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.r, %i.m
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE5rfindEcm.exit, label %.lr.ph.i.i, !llvm.loop !4

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsISA_EEEEEET_SF_SF_T0_.exit.i: ; preds = %.lr.ph.i.i
  %.not.i = icmp eq ptr %i.q, %i.m
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE5rfindEcm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsISA_EEEEEET_SF_SF_T0_.exit.i
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.m to i64
  %i.w = sub i64 %i.u, %i.v
  br label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE5rfindEcm.exit

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE5rfindEcm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsISA_EEEEEET_SF_SF_T0_.exit.i, %bb.d
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.w, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsISA_EEEEEET_SF_SF_T0_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17find_first_not_ofERKS4_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 2 uses
  %i.g = lshr i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = load i64, ptr %1, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = select i1 %i.b, i64 %i.h, i64 %i.j       ; 2 uses
  %i.l = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.m = trunc i8 %i.l to i1
  %i.n = lshr i8 %i.l, 1
  %i.o = zext nneg i8 %i.n to i64
  %i.p = load i64, ptr %0, align 8                ; 2 uses
  %i.q = lshr i64 %i.p, 1                         ; 3 uses
  %i.r = select i1 %i.m, i64 %i.o, i64 %i.q
  %i.s = icmp ugt i64 %2, %i.r
  br i1 %i.s, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17find_first_not_ofEPKcmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = trunc i64 %i.p to i1                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = select i1 %i.t, ptr %i.u, ptr %i.w       ; 3 uses
  %i.y = and i64 %i.q, 127
  %i.z = select i1 %i.t, i64 %i.y, i64 %i.q       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.z ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.k
  %.not15.i.i = icmp eq i64 %2, %i.z
  br i1 %.not15.i.i, label %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS5_EEEET_S9_S9_T0_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %2 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS5_EEEET_S9_S9_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i
  %.0716.i.i = phi ptr [ %i.ah, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i ], [ %i.ac, %.lr.ph.i.i ] ; 3 uses
  %i.ad = load i8, ptr %.0716.i.i, align 1, !tbaa !109
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.preheader.i.i
  %.0710.i.i.i.i = phi ptr [ %i.ag, %bb.c ], [ %i.f, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %i.ae = load i8, ptr %.0710.i.i.i.i, align 1, !tbaa !109
  %i.af = icmp eq i8 %i.ae, %i.ad
  br i1 %i.af, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, %i.ab
  br i1 %.not.i.i.i.i, label %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS5_EEEET_S9_S9_T0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0716.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, %i.aa
  br i1 %.not.i.i, label %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS5_EEEET_S9_S9_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !10

_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS5_EEEET_S9_S9_T0_.exit.i: ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i, %bb.c, %.lr.ph.i.i, %bb.b
  %.0.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %i.aa, %bb.b ], [ %.0716.i.i, %bb.c ], [ %i.aa, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %.0.i.i, %i.aa
  %i.ai = ptrtoint ptr %.0.i.i to i64
  %i.aj = ptrtoint ptr %i.x to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = select i1 %.not.i, i64 -1, i64 %i.ak
  br label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17find_first_not_ofEPKcmm.exit

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17find_first_not_ofEPKcmm.exit: ; preds = %bb.a, %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS5_EEEET_S9_S9_T0_.exit.i
  %.0.i = phi i64 [ %i.al, %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS5_EEEET_S9_S9_T0_.exit.i ], [ -1, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17find_first_not_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 3 uses
  %i.n = lshr i64 %i.e, 1
  %i.o = and i64 %i.n, 127
  %i.p = select i1 %i.i, i64 %i.o, i64 %i.f       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %1, i64 %3
  %.not15.i = icmp eq i64 %2, %i.p
  br i1 %.not15.i, label %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS5_EEEET_S9_S9_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %.not9.i.i.i = icmp eq i64 %3, 0
  br i1 %.not9.i.i.i, label %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS5_EEEET_S9_S9_T0_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %.lr.ph.i, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i
  %.0716.i = phi ptr [ %i.x, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i ], [ %i.s, %.lr.ph.i ] ; 3 uses
  %i.t = load i8, ptr %.0716.i, align 1, !tbaa !109
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.preheader.i
  %.0710.i.i.i = phi ptr [ %i.w, %bb.c ], [ %1, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %i.u = load i8, ptr %.0710.i.i.i, align 1, !tbaa !109
  %i.v = icmp eq i8 %i.u, %i.t
  br i1 %i.v, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %i.r
  br i1 %.not.i.i.i, label %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS5_EEEET_S9_S9_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !9

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i: ; preds = %.lr.ph.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0716.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.x, %i.q
  br i1 %.not.i, label %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS5_EEEET_S9_S9_T0_.exit, label %.lr.ph.i.i.preheader.i, !llvm.loop !10

_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS5_EEEET_S9_S9_T0_.exit: ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i, %bb.c, %bb.b, %.lr.ph.i
  %.0.i = phi ptr [ %i.s, %.lr.ph.i ], [ %i.q, %bb.b ], [ %.0716.i, %bb.c ], [ %i.q, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i ] ; 2 uses
  %.not = icmp eq ptr %.0.i, %i.q
  %i.y = ptrtoint ptr %.0.i to i64
  %i.z = ptrtoint ptr %i.m to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = select i1 %.not, i64 -1, i64 %i.aa
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS5_EEEET_S9_S9_T0_.exit
  %.0 = phi i64 [ %i.ab, %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS5_EEEET_S9_S9_T0_.exit ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17find_first_not_ofEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26 ; 2 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g
  %i.i = icmp ugt i64 %2, %i.h
  br i1 %i.i, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17find_first_not_ofEPKcmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.f to i1                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 3 uses
  %i.o = and i64 %i.g, 127
  %i.p = select i1 %i.j, i64 %i.o, i64 %i.g       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.a
  %.not15.i.i = icmp eq i64 %2, %i.p
  br i1 %.not15.i.i, label %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS5_EEEET_S9_S9_T0_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %2 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS5_EEEET_S9_S9_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i
  %.0716.i.i = phi ptr [ %i.x, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i ], [ %i.s, %.lr.ph.i.i ] ; 3 uses
  %i.t = load i8, ptr %.0716.i.i, align 1, !tbaa !109
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.preheader.i.i
  %.0710.i.i.i.i = phi ptr [ %i.w, %bb.c ], [ %1, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %i.u = load i8, ptr %.0710.i.i.i.i, align 1, !tbaa !109
  %i.v = icmp eq i8 %i.u, %i.t
  br i1 %i.v, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, %i.r
  br i1 %.not.i.i.i.i, label %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS5_EEEET_S9_S9_T0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0716.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, %i.q
  br i1 %.not.i.i, label %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS5_EEEET_S9_S9_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !10

_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS5_EEEET_S9_S9_T0_.exit.i: ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i, %bb.c, %.lr.ph.i.i, %bb.b
  %.0.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.q, %bb.b ], [ %.0716.i.i, %bb.c ], [ %i.q, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %.0.i.i, %i.q
  %i.y = ptrtoint ptr %.0.i.i to i64
  %i.z = ptrtoint ptr %i.n to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = select i1 %.not.i, i64 -1, i64 %i.aa
  br label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17find_first_not_ofEPKcmm.exit

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17find_first_not_ofEPKcmm.exit: ; preds = %bb.a, %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS5_EEEET_S9_S9_T0_.exit.i
  %.0.i = phi i64 [ %i.ab, %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS5_EEEET_S9_S9_T0_.exit.i ], [ -1, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17find_first_not_ofEcm(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %_ZN5boost9container7find_ifIPcNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsIS7_EEEEEEEET_SD_SD_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 3 uses
  %i.n = lshr i64 %i.e, 1
  %i.o = and i64 %i.n, 127
  %i.p = select i1 %i.i, i64 %i.o, i64 %i.f       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p ; 2 uses
  %.not10.i = icmp eq i64 %2, %i.p
  br i1 %.not10.i, label %_ZN5boost9container7find_ifIPcNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsIS7_EEEEEEEET_SD_SD_T0_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.c
  %.0711.i = phi ptr [ %i.t, %bb.c ], [ %i.r, %.lr.ph.i.preheader ] ; 4 uses
  %i.s = load i8, ptr %.0711.i, align 1, !tbaa !109
  %.not9.i = icmp eq i8 %i.s, %1
  br i1 %.not9.i, label %bb.c, label %_ZN5boost9container7find_ifIPcNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsIS7_EEEEEEEET_SD_SD_T0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0711.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.t, %i.q
  br i1 %.not.i, label %_ZN5boost9container7find_ifIPcNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsIS7_EEEEEEEET_SD_SD_T0_.exit.thread, label %.lr.ph.i, !llvm.loop !269

_ZN5boost9container7find_ifIPcNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsIS7_EEEEEEEET_SD_SD_T0_.exit: ; preds = %.lr.ph.i
  %.not = icmp eq ptr %.0711.i, %i.q
  br i1 %.not, label %_ZN5boost9container7find_ifIPcNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsIS7_EEEEEEEET_SD_SD_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifIPcNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsIS7_EEEEEEEET_SD_SD_T0_.exit
  %i.u = ptrtoint ptr %.0711.i to i64
  %i.v = ptrtoint ptr %i.m to i64
  %i.w = sub i64 %i.u, %i.v
  br label %_ZN5boost9container7find_ifIPcNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsIS7_EEEEEEEET_SD_SD_T0_.exit.thread

_ZN5boost9container7find_ifIPcNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsIS7_EEEEEEEET_SD_SD_T0_.exit.thread: ; preds = %bb.c, %bb.b, %bb.d, %_ZN5boost9container7find_ifIPcNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsIS7_EEEEEEEET_SD_SD_T0_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.w, %bb.d ], [ -1, %_ZN5boost9container7find_ifIPcNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsIS7_EEEEEEEET_SD_SD_T0_.exit ], [ -1, %bb.b ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofERKS4_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 2 uses
  %i.g = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.h = trunc i8 %i.g to i1
  %i.i = lshr i8 %i.g, 1
  %i.j = zext nneg i8 %i.i to i64
  %i.k = load i64, ptr %0, align 8                ; 2 uses
  %i.l = lshr i64 %i.k, 1
  %i.m = select i1 %i.h, i64 %i.j, i64 %i.l       ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcmm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.o = lshr i8 %i.a, 1
  %i.p = zext nneg i8 %i.o to i64
  %i.q = load i64, ptr %1, align 8
  %i.r = lshr i64 %i.q, 1
  %i.s = select i1 %i.b, i64 %i.p, i64 %i.r       ; 2 uses
  %i.t = trunc i64 %i.k to i1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = select i1 %i.t, ptr %i.u, ptr %i.w       ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.s ; 2 uses
  %i.z = add nsw i64 %i.m, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %2)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.speculated.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i, %bb.c
  %i.ac = phi ptr [ %i.ad, %bb.c ], [ %i.ab, %.lr.ph.i.i ] ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -1 ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !109, !noalias !272
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.preheader.i.i
  %.0710.i.i.i.i = phi ptr [ %i.ah, %bb.b ], [ %i.f, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.af = load i8, ptr %.0710.i.i.i.i, align 1, !tbaa !109, !noalias !272
  %i.ag = icmp eq i8 %i.af, %i.ae
  br i1 %i.ag, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, %i.y
  br i1 %.not.i.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ai = icmp eq ptr %.0710.i.i.i.i, %i.y
  br i1 %i.ai, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i
  %.not.i.i = icmp eq ptr %i.ad, %i.x
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcmm.exit, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !11

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i: ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i, %bb.b, %.lr.ph.i.i
  %storemerge.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %i.ac, %bb.b ], [ %i.ac, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %storemerge.i.i, %i.x
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcmm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i
  %i.aj = getelementptr inbounds i8, ptr %storemerge.i.i, i64 -1
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.x to i64
  %i.am = sub i64 %i.ak, %i.al
  br label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcmm.exit

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcmm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i, %bb.d
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.am, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 4 uses
  %i.n = getelementptr inbounds i8, ptr %1, i64 %3 ; 2 uses
  %i.o = add nsw i64 %i.g, -1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %2)
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.speculated
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %.not9.i.i.i = icmp eq i64 %3, 0
  br i1 %.not9.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %.lr.ph.i, %bb.c
  %i.r = phi ptr [ %i.s, %bb.c ], [ %i.q, %.lr.ph.i ] ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -1 ; 3 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !109, !noalias !275
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.preheader.i
  %.0710.i.i.i = phi ptr [ %i.w, %bb.b ], [ %1, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %i.u = load i8, ptr %.0710.i.i.i, align 1, !tbaa !109, !noalias !275
  %i.v = icmp eq i8 %i.u, %i.t
  br i1 %i.v, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %i.n
  br i1 %.not.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !9

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i: ; preds = %.lr.ph.i.i.i
  %i.x = icmp eq ptr %.0710.i.i.i, %i.n
  br i1 %i.x, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i
  %.not.i = icmp eq ptr %i.s, %i.m
  br i1 %.not.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.thread, label %.lr.ph.i.i.preheader.i, !llvm.loop !11

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit: ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i, %bb.b, %.lr.ph.i
  %storemerge.i = phi ptr [ %i.q, %.lr.ph.i ], [ %i.r, %bb.b ], [ %i.r, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i ] ; 2 uses
  %.not = icmp eq ptr %storemerge.i, %i.m
  br i1 %.not, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit
  %i.y = getelementptr inbounds i8, ptr %storemerge.i, i64 -1
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.m to i64
  %i.ab = sub i64 %i.z, %i.aa
  br label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.thread

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.thread: ; preds = %bb.c, %bb.d, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.ab, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcmm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26 ; 2 uses
  %i.j = trunc i64 %i.e to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.i ; 2 uses
  %i.p = add nsw i64 %i.g, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %2)
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.speculated.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i, %bb.c
  %i.s = phi ptr [ %i.t, %bb.c ], [ %i.r, %.lr.ph.i.i ] ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -1 ; 3 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !109, !noalias !278
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.preheader.i.i
  %.0710.i.i.i.i = phi ptr [ %i.x, %bb.b ], [ %1, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.v = load i8, ptr %.0710.i.i.i.i, align 1, !tbaa !109, !noalias !278
  %i.w = icmp eq i8 %i.v, %i.u
  br i1 %i.w, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.o
  br i1 %.not.i.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.y = icmp eq ptr %.0710.i.i.i.i, %i.o
  br i1 %i.y, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i
  %.not.i.i = icmp eq ptr %i.t, %i.n
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcmm.exit, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !11

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i: ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i, %bb.b, %.lr.ph.i.i
  %storemerge.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.s, %bb.b ], [ %i.s, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS3_EclERKc.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %storemerge.i.i, %i.n
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcmm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i
  %i.z = getelementptr inbounds i8, ptr %storemerge.i.i, i64 -1
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.n to i64
  %i.ac = sub i64 %i.aa, %i.ab
  br label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcmm.exit

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEPKcmm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i, %bb.d
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.ac, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcEvvE17Not_within_traitsIS9_EEEET_SD_SD_T0_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE16find_last_not_ofEcm(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsISB_EEEEEEEET_SH_SH_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 4 uses
  %i.n = add nsw i64 %i.g, -1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %2)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.speculated
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.r, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -1 ; 4 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !109, !noalias !282
  %.not1.i = icmp eq i8 %i.s, %1
  br i1 %.not1.i, label %bb.c, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsISB_EEEEEEEET_SH_SH_T0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %i.r, %i.m
  br i1 %.not.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsISB_EEEEEEEET_SH_SH_T0_.exit.thread, label %.lr.ph.i, !llvm.loop !281

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsISB_EEEEEEEET_SH_SH_T0_.exit: ; preds = %.lr.ph.i
  %.not = icmp eq ptr %i.q, %i.m
  br i1 %.not, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsISB_EEEEEEEET_SH_SH_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsISB_EEEEEEEET_SH_SH_T0_.exit
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.m to i64
  %i.v = sub i64 %i.t, %i.u
  br label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsISB_EEEEEEEET_SH_SH_T0_.exit.thread

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsISB_EEEEEEEET_SH_SH_T0_.exit.thread: ; preds = %bb.c, %bb.d, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsISB_EEEEEEEET_SH_SH_T0_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.v, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcEvvE9Eq_traitsISB_EEEEEEEET_SH_SH_T0_.exit ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE6substrEmm(ptr dead_on_unwind noalias writable sret(%"class.boost::container::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %1, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.10) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %i.o = lshr i64 %i.e, 1
  %i.p = and i64 %i.o, 127
  %i.q = select i1 %i.i, i64 %i.p, i64 %i.f
  %i.r = sub nsw i64 %i.q, %2
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.r)
  %i.s = getelementptr i8, ptr %i.n, i64 %.sroa.speculated
  store i8 1, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.t, align 1, !tbaa !109
  %i.u = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE6assignIPcEERS4_T_S8_PNS_11move_detail22disable_if_convertibleIS8_mvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.n, ptr noundef %i.s, ptr noundef null)
          to label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2IPcEET_S7_RKNS0_13new_allocatorIcEEPNS_11move_detail12disable_if_cIXsr3dtl14is_convertibleIS7_mEE5valueENSC_3natEE4typeE.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #26
  resume { ptr, i32 } %i.v

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvEC2IPcEET_S7_RKNS0_13new_allocatorIcEEPNS_11move_detail12disable_if_cIXsr3dtl14is_convertibleIS7_mEE5valueENSC_3natEE4typeE.exit: ; preds = %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE7compareERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.d = trunc i8 %i.c to i1                      ; 2 uses
  %i.e = lshr i8 %i.a, 1
  %i.f = zext nneg i8 %i.e to i64
  %i.g = load i64, ptr %0, align 8
  %i.h = lshr i64 %i.g, 1
  %i.i = select i1 %i.b, i64 %i.f, i64 %i.h       ; 2 uses
  %i.j = lshr i8 %i.c, 1
  %i.k = zext nneg i8 %i.j to i64
  %i.l = load i64, ptr %1, align 8
  %i.m = lshr i64 %i.l, 1
  %i.n = select i1 %i.d, i64 %i.k, i64 %i.m       ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.n) ; 2 uses
  %i.o = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.o, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = select i1 %i.d, ptr %i.p, ptr %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = select i1 %i.b, ptr %i.t, ptr %i.v
  %i.x = tail call i32 @memcmp(ptr noundef %i.w, ptr noundef %i.s, i64 noundef %.sroa.speculated.i) #26 ; 2 uses
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9s_compareIPcS6_EEiT_S7_T0_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %bb.a
  %i.y = tail call i32 @llvm.ucmp.i32.i64(i64 %i.i, i64 %i.n)
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9s_compareIPcS6_EEiT_S7_T0_S8_.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9s_compareIPcS6_EEiT_S7_T0_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i
  %i.z = phi i32 [ %i.y, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i ], [ %i.x, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i ]
  ret i32 %i.z
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE7compareEmmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.11) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = load i8, ptr %3, align 8, !tbaa !109     ; 2 uses
  %i.k = trunc i8 %i.j to i1                      ; 2 uses
  %i.l = lshr i64 %i.e, 1
  %i.m = and i64 %i.l, 127
  %i.n = select i1 %i.i, i64 %i.m, i64 %i.f
  %i.o = sub nsw i64 %i.n, %1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.o) ; 2 uses
  %i.p = lshr i8 %i.j, 1
  %i.q = zext nneg i8 %i.p to i64
  %i.r = load i64, ptr %3, align 8
  %i.s = lshr i64 %i.r, 1
  %i.t = select i1 %i.k, i64 %i.q, i64 %i.s       ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated, i64 %i.t) ; 2 uses
  %i.u = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.u, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = select i1 %i.k, ptr %i.v, ptr %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = select i1 %i.i, ptr %i.z, ptr %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %1
end_hunk_0
begin_hunk_1_@_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE12find_last_ofEPKcmm:bb.a
  %.not7.i = icmp eq ptr %i.s, %i.m
  br i1 %.not7.i, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.thread, label %.preheader.i, !llvm.loop !20

_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit: ; preds = %bb.c
  %.not = icmp eq ptr %i.r, %i.m
  br i1 %.not, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit
  %i.x = ptrtoint ptr %i.s to i64
  %i.y = ptrtoint ptr %i.m to i64
  %i.z = sub i64 %i.x, %i.y
  br label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.thread

_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.thread: ; preds = %._crit_edge.i, %.preheader.lr.ph.i, %bb.d, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.z, %bb.d ], [ -1, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit ], [ -1, %.preheader.lr.ph.i ], [ -1, %._crit_edge.i ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE12find_last_ofEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE12find_last_ofEPKcmm.exit, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26 ; 2 uses
  %i.j = trunc i64 %i.e to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.i
  %.not12.i.i = icmp eq i64 %i.i, 0
  br i1 %.not12.i.i, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE12find_last_ofEPKcmm.exit, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %.preheader.lr.ph.i.i
  %i.p = add nsw i64 %i.g, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %2)
  %i.q = getelementptr i8, ptr %i.n, i64 %.sroa.speculated.i
  %i.r = getelementptr i8, ptr %i.q, i64 1
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.i.preheader.i
  %i.s = phi ptr [ %i.t, %._crit_edge.i.i ], [ %i.r, %.preheader.i.preheader.i ] ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -1 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !109, !noalias !370
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.0513.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %i.o
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.c, !llvm.loop !19

bb.c:                                             ; preds = %bb.b, %.preheader.i.i
  %.0513.i.i = phi ptr [ %1, %.preheader.i.i ], [ %i.v, %bb.b ] ; 2 uses
  %i.w = load i8, ptr %.0513.i.i, align 1, !tbaa !109, !noalias !370
  %i.x = icmp eq i8 %i.u, %i.w
  br i1 %i.x, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.b
  %.not7.i.i = icmp eq ptr %i.t, %i.n
  br i1 %.not7.i.i, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE12find_last_ofEPKcmm.exit, label %.preheader.i.i, !llvm.loop !20

_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.i: ; preds = %bb.c
  %.not.i = icmp eq ptr %i.s, %i.n
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE12find_last_ofEPKcmm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.i
  %i.y = ptrtoint ptr %i.t to i64
  %i.z = ptrtoint ptr %i.n to i64
  %i.aa = sub i64 %i.y, %i.z
  br label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE12find_last_ofEPKcmm.exit

_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE12find_last_ofEPKcmm.exit: ; preds = %._crit_edge.i.i, %bb.a, %.preheader.lr.ph.i.i, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.i, %bb.d
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.aa, %bb.d ], [ -1, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.i ], [ -1, %.preheader.lr.ph.i.i ], [ -1, %._crit_edge.i.i ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE12find_last_ofEcm(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE5rfindEcm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 4 uses
  %i.n = add nsw i64 %i.g, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %2)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.speculated.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.b
  %i.q = phi ptr [ %i.r, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -1 ; 4 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !109, !noalias !373
  %i.t = icmp eq i8 %i.s, %1
  br i1 %i.t, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.r, %i.m
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE5rfindEcm.exit, label %.lr.ph.i.i, !llvm.loop !16

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit.i: ; preds = %.lr.ph.i.i
  %.not.i = icmp eq ptr %i.q, %i.m
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE5rfindEcm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit.i
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.m to i64
  %i.w = sub i64 %i.u, %i.v
  br label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE5rfindEcm.exit

_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE5rfindEcm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit.i, %bb.d
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.w, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17find_first_not_ofERKS7_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 2 uses
  %i.g = lshr i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = load i64, ptr %1, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = select i1 %i.b, i64 %i.h, i64 %i.j       ; 2 uses
  %i.l = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.m = trunc i8 %i.l to i1
  %i.n = lshr i8 %i.l, 1
  %i.o = zext nneg i8 %i.n to i64
  %i.p = load i64, ptr %0, align 8                ; 2 uses
  %i.q = lshr i64 %i.p, 1                         ; 3 uses
  %i.r = select i1 %i.m, i64 %i.o, i64 %i.q
  %i.s = icmp ugt i64 %2, %i.r
  br i1 %i.s, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17find_first_not_ofEPKcmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = trunc i64 %i.p to i1                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = select i1 %i.t, ptr %i.u, ptr %i.w       ; 3 uses
  %i.y = and i64 %i.q, 127
  %i.z = select i1 %i.t, i64 %i.y, i64 %i.q       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.z ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.k
  %.not15.i.i = icmp eq i64 %2, %i.z
  br i1 %.not15.i.i, label %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %2 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS3_EclERKc.exit.i.i
  %.0716.i.i = phi ptr [ %i.ah, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS3_EclERKc.exit.i.i ], [ %i.ac, %.lr.ph.i.i ] ; 3 uses
  %i.ad = load i8, ptr %.0716.i.i, align 1, !tbaa !109
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.preheader.i.i
  %.0710.i.i.i.i = phi ptr [ %i.ag, %bb.c ], [ %i.f, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %i.ae = load i8, ptr %.0710.i.i.i.i, align 1, !tbaa !109
  %i.af = icmp eq i8 %i.ae, %i.ad
  br i1 %i.af, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS3_EclERKc.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, %i.ab
  br i1 %.not.i.i.i.i, label %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !21

_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS3_EclERKc.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0716.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, %i.aa
  br i1 %.not.i.i, label %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !22

_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i: ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS3_EclERKc.exit.i.i, %bb.c, %.lr.ph.i.i, %bb.b
  %.0.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %i.aa, %bb.b ], [ %.0716.i.i, %bb.c ], [ %i.aa, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS3_EclERKc.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %.0.i.i, %i.aa
  %i.ai = ptrtoint ptr %.0.i.i to i64
  %i.aj = ptrtoint ptr %i.x to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = select i1 %.not.i, i64 -1, i64 %i.ak
  br label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17find_first_not_ofEPKcmm.exit

_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17find_first_not_ofEPKcmm.exit: ; preds = %bb.a, %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i
  %.0.i = phi i64 [ %i.al, %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i ], [ -1, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17find_first_not_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 3 uses
  %i.n = lshr i64 %i.e, 1
  %i.o = and i64 %i.n, 127
  %i.p = select i1 %i.i, i64 %i.o, i64 %i.f       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %1, i64 %3
  %.not15.i = icmp eq i64 %2, %i.p
  br i1 %.not15.i, label %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %.not9.i.i.i = icmp eq i64 %3, 0
  br i1 %.not9.i.i.i, label %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %.lr.ph.i, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS3_EclERKc.exit.i
  %.0716.i = phi ptr [ %i.x, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS3_EclERKc.exit.i ], [ %i.s, %.lr.ph.i ] ; 3 uses
  %i.t = load i8, ptr %.0716.i, align 1, !tbaa !109
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.preheader.i
  %.0710.i.i.i = phi ptr [ %i.w, %bb.c ], [ %1, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %i.u = load i8, ptr %.0710.i.i.i, align 1, !tbaa !109
  %i.v = icmp eq i8 %i.u, %i.t
  br i1 %i.v, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS3_EclERKc.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %i.r
  br i1 %.not.i.i.i, label %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !21

_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS3_EclERKc.exit.i: ; preds = %.lr.ph.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0716.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.x, %i.q
  br i1 %.not.i, label %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit, label %.lr.ph.i.i.preheader.i, !llvm.loop !22

_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit: ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS3_EclERKc.exit.i, %bb.c, %bb.b, %.lr.ph.i
  %.0.i = phi ptr [ %i.s, %.lr.ph.i ], [ %i.q, %bb.b ], [ %.0716.i, %bb.c ], [ %i.q, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS3_EclERKc.exit.i ] ; 2 uses
  %.not = icmp eq ptr %.0.i, %i.q
  %i.y = ptrtoint ptr %.0.i to i64
  %i.z = ptrtoint ptr %i.m to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = select i1 %.not, i64 -1, i64 %i.aa
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit
  %.0 = phi i64 [ %i.ab, %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17find_first_not_ofEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26 ; 2 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g
  %i.i = icmp ugt i64 %2, %i.h
  br i1 %i.i, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17find_first_not_ofEPKcmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.f to i1                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 3 uses
  %i.o = and i64 %i.g, 127
  %i.p = select i1 %i.j, i64 %i.o, i64 %i.g       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.a
  %.not15.i.i = icmp eq i64 %2, %i.p
  br i1 %.not15.i.i, label %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %2 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS3_EclERKc.exit.i.i
  %.0716.i.i = phi ptr [ %i.x, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS3_EclERKc.exit.i.i ], [ %i.s, %.lr.ph.i.i ] ; 3 uses
  %i.t = load i8, ptr %.0716.i.i, align 1, !tbaa !109
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.preheader.i.i
  %.0710.i.i.i.i = phi ptr [ %i.w, %bb.c ], [ %1, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %i.u = load i8, ptr %.0710.i.i.i.i, align 1, !tbaa !109
  %i.v = icmp eq i8 %i.u, %i.t
  br i1 %i.v, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS3_EclERKc.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, %i.r
  br i1 %.not.i.i.i.i, label %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !21

_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS3_EclERKc.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0716.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, %i.q
  br i1 %.not.i.i, label %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !22

_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i: ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS3_EclERKc.exit.i.i, %bb.c, %.lr.ph.i.i, %bb.b
  %.0.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.q, %bb.b ], [ %.0716.i.i, %bb.c ], [ %i.q, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS3_EclERKc.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %.0.i.i, %i.q
  %i.y = ptrtoint ptr %.0.i.i to i64
  %i.z = ptrtoint ptr %i.n to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = select i1 %.not.i, i64 -1, i64 %i.aa
  br label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17find_first_not_ofEPKcmm.exit

_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17find_first_not_ofEPKcmm.exit: ; preds = %bb.a, %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i
  %.0.i = phi i64 [ %i.ab, %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i ], [ -1, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17find_first_not_ofEcm(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %_ZN5boost9container7find_ifIPcNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 3 uses
  %i.n = lshr i64 %i.e, 1
  %i.o = and i64 %i.n, 127
  %i.p = select i1 %i.i, i64 %i.o, i64 %i.f       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p ; 2 uses
  %.not10.i = icmp eq i64 %2, %i.p
  br i1 %.not10.i, label %_ZN5boost9container7find_ifIPcNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.c
  %.0711.i = phi ptr [ %i.t, %bb.c ], [ %i.r, %.lr.ph.i.preheader ] ; 4 uses
  %i.s = load i8, ptr %.0711.i, align 1, !tbaa !109
  %.not9.i = icmp eq i8 %i.s, %1
  br i1 %.not9.i, label %bb.c, label %_ZN5boost9container7find_ifIPcNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0711.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.t, %i.q
  br i1 %.not.i, label %_ZN5boost9container7find_ifIPcNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit.thread, label %.lr.ph.i, !llvm.loop !374

_ZN5boost9container7find_ifIPcNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit: ; preds = %.lr.ph.i
  %.not = icmp eq ptr %.0711.i, %i.q
  br i1 %.not, label %_ZN5boost9container7find_ifIPcNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifIPcNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit
  %i.u = ptrtoint ptr %.0711.i to i64
  %i.v = ptrtoint ptr %i.m to i64
  %i.w = sub i64 %i.u, %i.v
  br label %_ZN5boost9container7find_ifIPcNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit.thread

_ZN5boost9container7find_ifIPcNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit.thread: ; preds = %bb.c, %bb.b, %bb.d, %_ZN5boost9container7find_ifIPcNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.w, %bb.d ], [ -1, %_ZN5boost9container7find_ifIPcNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit ], [ -1, %bb.b ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE16find_last_not_ofERKS7_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 2 uses
  %i.g = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.h = trunc i8 %i.g to i1
  %i.i = lshr i8 %i.g, 1
  %i.j = zext nneg i8 %i.i to i64
  %i.k = load i64, ptr %0, align 8                ; 2 uses
  %i.l = lshr i64 %i.k, 1
  %i.m = select i1 %i.h, i64 %i.j, i64 %i.l       ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE16find_last_not_ofEPKcmm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.o = lshr i8 %i.a, 1
  %i.p = zext nneg i8 %i.o to i64
  %i.q = load i64, ptr %1, align 8
  %i.r = lshr i64 %i.q, 1
  %i.s = select i1 %i.b, i64 %i.p, i64 %i.r       ; 2 uses
  %i.t = trunc i64 %i.k to i1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = select i1 %i.t, ptr %i.u, ptr %i.w       ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.s ; 2 uses
  %i.z = add nsw i64 %i.m, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %2)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.speculated.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i, %bb.c
  %i.ac = phi ptr [ %i.ad, %bb.c ], [ %i.ab, %.lr.ph.i.i ] ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -1 ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !109, !noalias !377
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.preheader.i.i
  %.0710.i.i.i.i = phi ptr [ %i.ah, %bb.b ], [ %i.f, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.af = load i8, ptr %.0710.i.i.i.i, align 1, !tbaa !109, !noalias !377
  %i.ag = icmp eq i8 %i.af, %i.ae
  br i1 %i.ag, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS3_EclERKc.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, %i.y
  br i1 %.not.i.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !21

_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS3_EclERKc.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ai = icmp eq ptr %.0710.i.i.i.i, %i.y
  br i1 %i.ai, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS3_EclERKc.exit.i.i
  %.not.i.i = icmp eq ptr %i.ad, %i.x
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE16find_last_not_ofEPKcmm.exit, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !23

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i: ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS3_EclERKc.exit.i.i, %bb.b, %.lr.ph.i.i
  %storemerge.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %i.ac, %bb.b ], [ %i.ac, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS3_EclERKc.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %storemerge.i.i, %i.x
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE16find_last_not_ofEPKcmm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i
  %i.aj = getelementptr inbounds i8, ptr %storemerge.i.i, i64 -1
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.x to i64
  %i.am = sub i64 %i.ak, %i.al
  br label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE16find_last_not_ofEPKcmm.exit

_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE16find_last_not_ofEPKcmm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i, %bb.d
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.am, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE16find_last_not_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 4 uses
  %i.n = getelementptr inbounds i8, ptr %1, i64 %3 ; 2 uses
  %i.o = add nsw i64 %i.g, -1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %2)
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.speculated
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %.not9.i.i.i = icmp eq i64 %3, 0
  br i1 %.not9.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %.lr.ph.i, %bb.c
  %i.r = phi ptr [ %i.s, %bb.c ], [ %i.q, %.lr.ph.i ] ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -1 ; 3 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !109, !noalias !380
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.preheader.i
  %.0710.i.i.i = phi ptr [ %i.w, %bb.b ], [ %1, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %i.u = load i8, ptr %.0710.i.i.i, align 1, !tbaa !109, !noalias !380
  %i.v = icmp eq i8 %i.u, %i.t
  br i1 %i.v, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS3_EclERKc.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %i.n
  br i1 %.not.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !21

_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS3_EclERKc.exit.i: ; preds = %.lr.ph.i.i.i
  %i.x = icmp eq ptr %.0710.i.i.i, %i.n
  br i1 %i.x, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS3_EclERKc.exit.i
  %.not.i = icmp eq ptr %i.s, %i.m
  br i1 %.not.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.thread, label %.lr.ph.i.i.preheader.i, !llvm.loop !23

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit: ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS3_EclERKc.exit.i, %bb.b, %.lr.ph.i
  %storemerge.i = phi ptr [ %i.q, %.lr.ph.i ], [ %i.r, %bb.b ], [ %i.r, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS3_EclERKc.exit.i ] ; 2 uses
  %.not = icmp eq ptr %storemerge.i, %i.m
  br i1 %.not, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit
  %i.y = getelementptr inbounds i8, ptr %storemerge.i, i64 -1
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.m to i64
  %i.ab = sub i64 %i.z, %i.aa
  br label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.thread

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.thread: ; preds = %bb.c, %bb.d, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.ab, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE16find_last_not_ofEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE16find_last_not_ofEPKcmm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26 ; 2 uses
  %i.j = trunc i64 %i.e to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.i ; 2 uses
  %i.p = add nsw i64 %i.g, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %2)
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.speculated.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i, %bb.c
  %i.s = phi ptr [ %i.t, %bb.c ], [ %i.r, %.lr.ph.i.i ] ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -1 ; 3 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !109, !noalias !383
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.preheader.i.i
  %.0710.i.i.i.i = phi ptr [ %i.x, %bb.b ], [ %1, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.v = load i8, ptr %.0710.i.i.i.i, align 1, !tbaa !109, !noalias !383
  %i.w = icmp eq i8 %i.v, %i.u
  br i1 %i.w, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS3_EclERKc.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.o
  br i1 %.not.i.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !21

_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS3_EclERKc.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.y = icmp eq ptr %.0710.i.i.i.i, %i.o
  br i1 %i.y, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS3_EclERKc.exit.i.i
  %.not.i.i = icmp eq ptr %i.t, %i.n
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE16find_last_not_ofEPKcmm.exit, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !23

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i: ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS3_EclERKc.exit.i.i, %bb.b, %.lr.ph.i.i
  %storemerge.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.s, %bb.b ], [ %i.s, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS3_EclERKc.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %storemerge.i.i, %i.n
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE16find_last_not_ofEPKcmm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i
  %i.z = getelementptr inbounds i8, ptr %storemerge.i.i, i64 -1
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.n to i64
  %i.ac = sub i64 %i.aa, %i.ab
  br label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE16find_last_not_ofEPKcmm.exit

_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE16find_last_not_ofEPKcmm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i, %bb.d
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.ac, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE16find_last_not_ofEcm(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsISB_EEEEEEEET_SK_SK_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 4 uses
  %i.n = add nsw i64 %i.g, -1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %2)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.speculated
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.r, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -1 ; 4 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !109, !noalias !387
  %.not1.i = icmp eq i8 %i.s, %1
  br i1 %.not1.i, label %bb.c, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsISB_EEEEEEEET_SK_SK_T0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %i.r, %i.m
  br i1 %.not.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsISB_EEEEEEEET_SK_SK_T0_.exit.thread, label %.lr.ph.i, !llvm.loop !386

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsISB_EEEEEEEET_SK_SK_T0_.exit: ; preds = %.lr.ph.i
  %.not = icmp eq ptr %i.q, %i.m
  br i1 %.not, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsISB_EEEEEEEET_SK_SK_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsISB_EEEEEEEET_SK_SK_T0_.exit
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.m to i64
  %i.v = sub i64 %i.t, %i.u
  br label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsISB_EEEEEEEET_SK_SK_T0_.exit.thread

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsISB_EEEEEEEET_SK_SK_T0_.exit.thread: ; preds = %bb.c, %bb.d, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsISB_EEEEEEEET_SK_SK_T0_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.v, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9Eq_traitsISB_EEEEEEEET_SK_SK_T0_.exit ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE6substrEmm(ptr dead_on_unwind noalias writable sret(%"class.boost::container::basic_string.4") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %1, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.10) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %i.o = lshr i64 %i.e, 1
  %i.p = and i64 %i.o, 127
  %i.q = select i1 %i.i, i64 %i.p, i64 %i.f
  %i.r = sub nsw i64 %i.q, %2
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.r)
  %i.s = getelementptr i8, ptr %i.n, i64 %.sroa.speculated
  store i8 1, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.t, align 1, !tbaa !109
  %i.u = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE6assignIPcEERS7_T_SB_PNS_11move_detail22disable_if_convertibleISB_mvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.n, ptr noundef %i.s, ptr noundef null)
          to label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEC2IPcEET_SA_RKS6_PNS_11move_detail12disable_if_cIXsr3dtl14is_convertibleISA_mEE5valueENSD_3natEE4typeE.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIcEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #26
  resume { ptr, i32 } %i.v

_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvEC2IPcEET_SA_RKS6_PNS_11move_detail12disable_if_cIXsr3dtl14is_convertibleISA_mEE5valueENSD_3natEE4typeE.exit: ; preds = %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE7compareERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.d = trunc i8 %i.c to i1                      ; 2 uses
  %i.e = lshr i8 %i.a, 1
  %i.f = zext nneg i8 %i.e to i64
  %i.g = load i64, ptr %0, align 8
  %i.h = lshr i64 %i.g, 1
  %i.i = select i1 %i.b, i64 %i.f, i64 %i.h       ; 2 uses
  %i.j = lshr i8 %i.c, 1
  %i.k = zext nneg i8 %i.j to i64
  %i.l = load i64, ptr %1, align 8
  %i.m = lshr i64 %i.l, 1
  %i.n = select i1 %i.d, i64 %i.k, i64 %i.m       ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.n) ; 2 uses
  %i.o = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.o, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = select i1 %i.d, ptr %i.p, ptr %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = select i1 %i.b, ptr %i.t, ptr %i.v
  %i.x = tail call i32 @memcmp(ptr noundef %i.w, ptr noundef %i.s, i64 noundef %.sroa.speculated.i) #26 ; 2 uses
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9s_compareIPcS9_EEiT_SA_T0_SB_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %bb.a
  %i.y = tail call i32 @llvm.ucmp.i32.i64(i64 %i.i, i64 %i.n)
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9s_compareIPcS9_EEiT_SA_T0_SB_.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE9s_compareIPcS9_EEiT_SA_T0_SB_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i
  %i.z = phi i32 [ %i.y, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i ], [ %i.x, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i ]
  ret i32 %i.z
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcENS0_4test16simple_allocatorIcEEvE7compareEmmRKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.11) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = load i8, ptr %3, align 8, !tbaa !109     ; 2 uses
  %i.k = trunc i8 %i.j to i1                      ; 2 uses
  %i.l = lshr i64 %i.e, 1
  %i.m = and i64 %i.l, 127
  %i.n = select i1 %i.i, i64 %i.m, i64 %i.f
  %i.o = sub nsw i64 %i.n, %1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.o) ; 2 uses
  %i.p = lshr i8 %i.j, 1
  %i.q = zext nneg i8 %i.p to i64
  %i.r = load i64, ptr %3, align 8
  %i.s = lshr i64 %i.r, 1
  %i.t = select i1 %i.k, i64 %i.q, i64 %i.s       ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated, i64 %i.t) ; 2 uses
  %i.u = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.u, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = select i1 %i.k, ptr %i.v, ptr %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = select i1 %i.i, ptr %i.z, ptr %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %1
end_hunk_1
begin_hunk_2_@_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEPKwmm:bb.a

_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.thread: ; preds = %._crit_edge.i, %bb.b, %bb.e, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.aa, %bb.e ], [ -1, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit ], [ -1, %bb.b ], [ -1, %._crit_edge.i ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 2 uses
  %i.j = trunc i64 %i.e to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 4 uses
  %i.o = add nsw i64 %i.g, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %2)
  %.idx.i = shl i64 %.sroa.speculated.i, 2
  %i.p = add i64 %.idx.i, 4                       ; 2 uses
  %.idx20.i = shl nsw i64 %i.i, 2
  %i.q = getelementptr inbounds i8, ptr %1, i64 %.idx20.i
  %.not714.i.i = icmp eq i64 %i.p, 0
  %.not12.i.i = icmp eq i64 %i.i, 0
  %or.cond.i = or i1 %.not714.i.i, %.not12.i.i
  br i1 %or.cond.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEPKwmm.exit, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %bb.b
  %i.r = getelementptr i8, ptr %i.n, i64 %i.p
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.i.preheader.i
  %i.s = phi ptr [ %i.t, %._crit_edge.i.i ], [ %i.r, %.preheader.i.preheader.i ] ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 4 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !134, !noalias !455
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.0513.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %i.q
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.d, !llvm.loop !31

bb.d:                                             ; preds = %bb.c, %.preheader.i.i
  %.0513.i.i = phi ptr [ %1, %.preheader.i.i ], [ %i.v, %bb.c ] ; 2 uses
  %i.w = load i32, ptr %.0513.i.i, align 4, !tbaa !134, !noalias !455
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.i, label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.c
  %.not7.i.i = icmp eq ptr %i.t, %i.n
  br i1 %.not7.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEPKwmm.exit, label %.preheader.i.i, !llvm.loop !32

_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.i: ; preds = %bb.d
  %.not.i = icmp eq ptr %i.s, %i.n
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEPKwmm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.i
  %i.y = ptrtoint ptr %i.t to i64
  %i.z = ptrtoint ptr %i.n to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEPKwmm.exit: ; preds = %._crit_edge.i.i, %bb.a, %bb.b, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.i, %bb.e
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.ab, %bb.e ], [ -1, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.i ], [ -1, %bb.b ], [ -1, %._crit_edge.i.i ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEwm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 4 uses
  %i.n = add nsw i64 %i.g, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %2)
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.b
  %i.q = phi ptr [ %i.r, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4 ; 4 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !134, !noalias !458
  %i.t = icmp eq i32 %i.s, %1
  br i1 %i.t, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.r, %i.m
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEwm.exit, label %.lr.ph.i.i, !llvm.loop !28

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit.i: ; preds = %.lr.ph.i.i
  %.not.i = icmp eq ptr %i.q, %i.m
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEwm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit.i
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.m to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEwm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEwm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit.i, %bb.d
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.x, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17find_first_not_ofERKS7_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 2 uses
  %i.g = lshr i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = load i64, ptr %1, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = select i1 %i.b, i64 %i.h, i64 %i.j       ; 2 uses
  %i.l = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.m = trunc i8 %i.l to i1
  %i.n = lshr i8 %i.l, 1
  %i.o = zext nneg i8 %i.n to i64
  %i.p = load i64, ptr %0, align 8                ; 2 uses
  %i.q = lshr i64 %i.p, 1                         ; 3 uses
  %i.r = select i1 %i.m, i64 %i.o, i64 %i.q
  %i.s = icmp ugt i64 %2, %i.r
  br i1 %i.s, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17find_first_not_ofEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = trunc i64 %i.p to i1                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = select i1 %i.t, ptr %i.u, ptr %i.w       ; 3 uses
  %i.y = and i64 %i.q, 127
  %i.z = select i1 %i.t, i64 %i.y, i64 %i.q       ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.z ; 4 uses
  %.idx.i = shl nuw nsw i64 %i.k, 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i ; 2 uses
  %.not15.i.i = icmp eq i64 %2, %i.z
  br i1 %.not15.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %2 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i, %bb.d
  %.0716.i.i = phi ptr [ %i.ai, %bb.d ], [ %i.ac, %.lr.ph.i.i ] ; 4 uses
  %i.ad = load i32, ptr %.0716.i.i, align 4, !tbaa !134
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.preheader.i.i
  %.0710.i.i.i.i = phi ptr [ %i.ag, %bb.c ], [ %i.f, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.ae = load i32, ptr %.0710.i.i.i.i, align 4, !tbaa !134
  %i.af = icmp eq i32 %i.ae, %i.ad
  br i1 %i.af, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, %i.ab
  br i1 %.not.i.i.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !33

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ah = icmp eq ptr %.0710.i.i.i.i, %i.ab
  br i1 %i.ah, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0716.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, %i.aa
  br i1 %.not.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !34

_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i: ; preds = %bb.d, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i, %bb.c, %.lr.ph.i.i, %bb.b
  %.0.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %i.aa, %bb.b ], [ %.0716.i.i, %bb.c ], [ %.0716.i.i, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i ], [ %i.aa, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.0.i.i, %i.aa
  %i.aj = ptrtoint ptr %.0.i.i to i64
  %i.ak = ptrtoint ptr %i.x to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 2
  %i.an = select i1 %.not.i, i64 -1, i64 %i.am
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17find_first_not_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17find_first_not_ofEPKwmm.exit: ; preds = %bb.a, %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i
  %.0.i = phi i64 [ %i.an, %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i ], [ -1, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17find_first_not_ofEPKwmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 3 uses
  %i.n = lshr i64 %i.e, 1
  %i.o = and i64 %i.n, 127
  %i.p = select i1 %i.i, i64 %i.o, i64 %i.f       ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.p ; 4 uses
  %.idx = shl nsw i64 %3, 2
  %i.r = getelementptr inbounds i8, ptr %1, i64 %.idx ; 2 uses
  %.not15.i = icmp eq i64 %2, %i.p
  br i1 %.not15.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %2 ; 2 uses
  %.not9.i.i.i = icmp eq i64 %3, 0
  br i1 %.not9.i.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %.lr.ph.i, %bb.d
  %.0716.i = phi ptr [ %i.y, %bb.d ], [ %i.s, %.lr.ph.i ] ; 4 uses
  %i.t = load i32, ptr %.0716.i, align 4, !tbaa !134
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.preheader.i
  %.0710.i.i.i = phi ptr [ %i.w, %bb.c ], [ %1, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %i.u = load i32, ptr %.0710.i.i.i, align 4, !tbaa !134
  %i.v = icmp eq i32 %i.u, %i.t
  br i1 %i.v, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %i.r
  br i1 %.not.i.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !33

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i: ; preds = %.lr.ph.i.i.i
  %i.x = icmp eq ptr %.0710.i.i.i, %i.r
  br i1 %i.x, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0716.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.y, %i.q
  br i1 %.not.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit, label %.lr.ph.i.i.preheader.i, !llvm.loop !34

_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit: ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i, %bb.d, %bb.c, %bb.b, %.lr.ph.i
  %.0.i = phi ptr [ %i.s, %.lr.ph.i ], [ %i.q, %bb.b ], [ %.0716.i, %bb.c ], [ %.0716.i, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i ], [ %i.q, %bb.d ] ; 2 uses
  %.not = icmp eq ptr %.0.i, %i.q
  %i.z = ptrtoint ptr %.0.i to i64
  %i.aa = ptrtoint ptr %i.m to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  %i.ad = select i1 %.not, i64 -1, i64 %i.ac
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit
  %.0 = phi i64 [ %i.ad, %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17find_first_not_ofEPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 2 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g
  %i.i = icmp ugt i64 %2, %i.h
  br i1 %i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17find_first_not_ofEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.f to i1                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 3 uses
  %i.o = and i64 %i.g, 127
  %i.p = select i1 %i.j, i64 %i.o, i64 %i.g       ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.p ; 4 uses
  %.idx.i = shl nsw i64 %i.a, 2
  %i.r = getelementptr inbounds i8, ptr %1, i64 %.idx.i ; 2 uses
  %.not15.i.i = icmp eq i64 %2, %i.p
  br i1 %.not15.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %2 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i, %bb.d
  %.0716.i.i = phi ptr [ %i.y, %bb.d ], [ %i.s, %.lr.ph.i.i ] ; 4 uses
  %i.t = load i32, ptr %.0716.i.i, align 4, !tbaa !134
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.preheader.i.i
  %.0710.i.i.i.i = phi ptr [ %i.w, %bb.c ], [ %1, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.u = load i32, ptr %.0710.i.i.i.i, align 4, !tbaa !134
  %i.v = icmp eq i32 %i.u, %i.t
  br i1 %i.v, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, %i.r
  br i1 %.not.i.i.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !33

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.x = icmp eq ptr %.0710.i.i.i.i, %i.r
  br i1 %i.x, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0716.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, %i.q
  br i1 %.not.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !34

_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i: ; preds = %bb.d, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i, %bb.c, %.lr.ph.i.i, %bb.b
  %.0.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.q, %bb.b ], [ %.0716.i.i, %bb.c ], [ %.0716.i.i, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i ], [ %i.q, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.0.i.i, %i.q
  %i.z = ptrtoint ptr %.0.i.i to i64
  %i.aa = ptrtoint ptr %i.n to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  %i.ad = select i1 %.not.i, i64 -1, i64 %i.ac
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17find_first_not_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17find_first_not_ofEPKwmm.exit: ; preds = %bb.a, %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i
  %.0.i = phi i64 [ %i.ad, %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i ], [ -1, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17find_first_not_ofEwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 3 uses
  %i.n = lshr i64 %i.e, 1
  %i.o = and i64 %i.n, 127
  %i.p = select i1 %i.i, i64 %i.o, i64 %i.f       ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.p ; 2 uses
  %.not10.i = icmp eq i64 %2, %i.p
  br i1 %.not10.i, label %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.c
  %.0711.i = phi ptr [ %i.t, %bb.c ], [ %i.r, %.lr.ph.i.preheader ] ; 4 uses
  %i.s = load i32, ptr %.0711.i, align 4, !tbaa !134
  %.not9.i = icmp eq i32 %i.s, %1
  br i1 %.not9.i, label %bb.c, label %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0711.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.t, %i.q
  br i1 %.not.i, label %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit.thread, label %.lr.ph.i, !llvm.loop !459

_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit: ; preds = %.lr.ph.i
  %.not = icmp eq ptr %.0711.i, %i.q
  br i1 %.not, label %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit
  %i.u = ptrtoint ptr %.0711.i to i64
  %i.v = ptrtoint ptr %i.m to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  br label %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit.thread

_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit.thread: ; preds = %bb.c, %bb.b, %bb.d, %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.x, %bb.d ], [ -1, %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit ], [ -1, %bb.b ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofERKS7_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 2 uses
  %i.g = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.h = trunc i8 %i.g to i1
  %i.i = lshr i8 %i.g, 1
  %i.j = zext nneg i8 %i.i to i64
  %i.k = load i64, ptr %0, align 8                ; 2 uses
  %i.l = lshr i64 %i.k, 1
  %i.m = select i1 %i.h, i64 %i.j, i64 %i.l       ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEPKwmm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.o = lshr i8 %i.a, 1
  %i.p = zext nneg i8 %i.o to i64
  %i.q = load i64, ptr %1, align 8
  %i.r = lshr i64 %i.q, 1
  %i.s = select i1 %i.b, i64 %i.p, i64 %i.r       ; 2 uses
  %i.t = trunc i64 %i.k to i1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = select i1 %i.t, ptr %i.u, ptr %i.w       ; 4 uses
  %.idx18.i = shl nuw nsw i64 %i.s, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx18.i ; 2 uses
  %i.z = add nsw i64 %i.m, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %2)
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i, %bb.c
  %i.ac = phi ptr [ %i.ad, %bb.c ], [ %i.ab, %.lr.ph.i.i ] ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !134, !noalias !462
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.preheader.i.i
  %.0710.i.i.i.i = phi ptr [ %i.ah, %bb.b ], [ %i.f, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.af = load i32, ptr %.0710.i.i.i.i, align 4, !tbaa !134, !noalias !462
  %i.ag = icmp eq i32 %i.af, %i.ae
  br i1 %i.ag, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, %i.y
  br i1 %.not.i.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !33

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ai = icmp eq ptr %.0710.i.i.i.i, %i.y
  br i1 %i.ai, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i
  %.not.i.i = icmp eq ptr %i.ad, %i.x
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEPKwmm.exit, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !35

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i: ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i, %bb.b, %.lr.ph.i.i
  %storemerge.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %i.ac, %bb.b ], [ %i.ac, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %storemerge.i.i, %i.x
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEPKwmm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i
  %i.aj = getelementptr inbounds i8, ptr %storemerge.i.i, i64 -4
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.x to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEPKwmm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i, %bb.d
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.an, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEPKwmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 4 uses
  %.idx18 = shl nsw i64 %3, 2
  %i.n = getelementptr inbounds i8, ptr %1, i64 %.idx18 ; 2 uses
  %i.o = add nsw i64 %i.g, -1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %2)
  %.idx = shl nuw nsw i64 %.sroa.speculated, 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %.not9.i.i.i = icmp eq i64 %3, 0
  br i1 %.not9.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %.lr.ph.i, %bb.c
  %i.r = phi ptr [ %i.s, %bb.c ], [ %i.q, %.lr.ph.i ] ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -4 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !134, !noalias !465
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.preheader.i
  %.0710.i.i.i = phi ptr [ %i.w, %bb.b ], [ %1, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %i.u = load i32, ptr %.0710.i.i.i, align 4, !tbaa !134, !noalias !465
  %i.v = icmp eq i32 %i.u, %i.t
  br i1 %i.v, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %i.n
  br i1 %.not.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !33

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i: ; preds = %.lr.ph.i.i.i
  %i.x = icmp eq ptr %.0710.i.i.i, %i.n
  br i1 %i.x, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i
  %.not.i = icmp eq ptr %i.s, %i.m
  br i1 %.not.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.thread, label %.lr.ph.i.i.preheader.i, !llvm.loop !35

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit: ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i, %bb.b, %.lr.ph.i
  %storemerge.i = phi ptr [ %i.q, %.lr.ph.i ], [ %i.r, %bb.b ], [ %i.r, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i ] ; 2 uses
  %.not = icmp eq ptr %storemerge.i, %i.m
  br i1 %.not, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit
  %i.y = getelementptr inbounds i8, ptr %storemerge.i, i64 -4
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.m to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  br label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.thread

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.thread: ; preds = %bb.c, %bb.d, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.ac, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEPKwmm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.i = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 2 uses
  %i.j = trunc i64 %i.e to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 4 uses
  %.idx18.i = shl nsw i64 %i.i, 2
  %i.o = getelementptr inbounds i8, ptr %1, i64 %.idx18.i ; 2 uses
  %i.p = add nsw i64 %i.g, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %2)
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i, %bb.c
  %i.s = phi ptr [ %i.t, %bb.c ], [ %i.r, %.lr.ph.i.i ] ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !134, !noalias !468
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.preheader.i.i
  %.0710.i.i.i.i = phi ptr [ %i.x, %bb.b ], [ %1, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.v = load i32, ptr %.0710.i.i.i.i, align 4, !tbaa !134, !noalias !468
  %i.w = icmp eq i32 %i.v, %i.u
  br i1 %i.w, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.o
  br i1 %.not.i.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !33

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.y = icmp eq ptr %.0710.i.i.i.i, %i.o
  br i1 %i.y, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i
  %.not.i.i = icmp eq ptr %i.t, %i.n
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEPKwmm.exit, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !35

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i: ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i, %bb.b, %.lr.ph.i.i
  %storemerge.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.s, %bb.b ], [ %i.s, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %storemerge.i.i, %i.n
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEPKwmm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i
  %i.z = getelementptr inbounds i8, ptr %storemerge.i.i, i64 -4
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.n to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEPKwmm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i, %bb.d
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.ad, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISB_EEEEEEEET_SK_SK_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 4 uses
  %i.n = add nsw i64 %i.g, -1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %2)
  %.idx = shl nuw nsw i64 %.sroa.speculated, 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.r, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4 ; 4 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !134, !noalias !472
  %.not1.i = icmp eq i32 %i.s, %1
  br i1 %.not1.i, label %bb.c, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISB_EEEEEEEET_SK_SK_T0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %i.r, %i.m
  br i1 %.not.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISB_EEEEEEEET_SK_SK_T0_.exit.thread, label %.lr.ph.i, !llvm.loop !471

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISB_EEEEEEEET_SK_SK_T0_.exit: ; preds = %.lr.ph.i
  %.not = icmp eq ptr %i.q, %i.m
  br i1 %.not, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISB_EEEEEEEET_SK_SK_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISB_EEEEEEEET_SK_SK_T0_.exit
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.m to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 2
  br label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISB_EEEEEEEET_SK_SK_T0_.exit.thread

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISB_EEEEEEEET_SK_SK_T0_.exit.thread: ; preds = %bb.c, %bb.d, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISB_EEEEEEEET_SK_SK_T0_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.w, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISB_EEEEEEEET_SK_SK_T0_.exit ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6substrEmm(ptr dead_on_unwind noalias writable sret(%"class.boost::container::basic_string.8") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %1, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.10) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %2 ; 2 uses
  %i.o = lshr i64 %i.e, 1
  %i.p = and i64 %i.o, 127
  %i.q = select i1 %i.i, i64 %i.p, i64 %i.f
  %i.r = sub nsw i64 %i.q, %2
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.r)
  %i.s = getelementptr [4 x i8], ptr %i.n, i64 %.sroa.speculated
  store i8 1, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.t, align 4, !tbaa !134
  %i.u = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignIPwEERS7_T_SB_PNS_11move_detail22disable_if_convertibleISB_mvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.n, ptr noundef %i.s, ptr noundef null)
          to label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEC2IPwEET_SA_RKS6_PNS_11move_detail12disable_if_cIXsr3dtl14is_convertibleISA_mEE5valueENSD_3natEE4typeE.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #26
  resume { ptr, i32 } %i.v

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEC2IPwEET_SA_RKS6_PNS_11move_detail12disable_if_cIXsr3dtl14is_convertibleISA_mEE5valueENSD_3natEE4typeE.exit: ; preds = %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7compareERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.d = trunc i8 %i.c to i1                      ; 2 uses
  %i.e = lshr i8 %i.a, 1
  %i.f = zext nneg i8 %i.e to i64
  %i.g = load i64, ptr %0, align 8
  %i.h = lshr i64 %i.g, 1
  %i.i = select i1 %i.b, i64 %i.f, i64 %i.h       ; 2 uses
  %i.j = lshr i8 %i.c, 1
  %i.k = zext nneg i8 %i.j to i64
  %i.l = load i64, ptr %1, align 8
  %i.m = lshr i64 %i.l, 1
  %i.n = select i1 %i.d, i64 %i.k, i64 %i.m       ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.n) ; 2 uses
  %i.o = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.o, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i:     ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = select i1 %i.d, ptr %i.p, ptr %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = select i1 %i.b, ptr %i.t, ptr %i.v
  %i.x = tail call i32 @wmemcmp(ptr noundef %i.w, ptr noundef %i.s, i64 noundef %.sroa.speculated.i) #29 ; 2 uses
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9s_compareIPwS9_EEiT_SA_T0_SB_.exit

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i, %bb.a
  %i.y = tail call i32 @llvm.ucmp.i32.i64(i64 %i.i, i64 %i.n)
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9s_compareIPwS9_EEiT_SA_T0_SB_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9s_compareIPwS9_EEiT_SA_T0_SB_.exit: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i
  %i.z = phi i32 [ %i.y, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i ], [ %i.x, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i ]
  ret i32 %i.z
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7compareEmmRKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.11) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = load i8, ptr %3, align 8, !tbaa !109     ; 2 uses
  %i.k = trunc i8 %i.j to i1                      ; 2 uses
  %i.l = lshr i64 %i.e, 1
  %i.m = and i64 %i.l, 127
  %i.n = select i1 %i.i, i64 %i.m, i64 %i.f
  %i.o = sub nsw i64 %i.n, %1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.o)
  %i.p = lshr i8 %i.j, 1
  %i.q = zext nneg i8 %i.p to i64
  %i.r = load i64, ptr %3, align 8
  %i.s = lshr i64 %i.r, 1
  %i.t = select i1 %i.k, i64 %i.q, i64 %i.s       ; 2 uses
  %.idx = shl i64 %.sroa.speculated, 2
  %i.u = ashr exact i64 %.idx, 2                  ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.t) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.v, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i:     ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = select i1 %i.k, ptr %i.w, ptr %i.y
end_hunk_2
begin_hunk_3_@_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE12find_last_ofEPKcmm:bb.a
  %.not7.i = icmp eq ptr %i.s, %i.m
  br i1 %.not7.i, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.thread, label %.preheader.i, !llvm.loop !44

_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit: ; preds = %bb.c
  %.not = icmp eq ptr %i.r, %i.m
  br i1 %.not, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit
  %i.x = ptrtoint ptr %i.s to i64
  %i.y = ptrtoint ptr %i.m to i64
  %i.z = sub i64 %i.x, %i.y
  br label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.thread

_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.thread: ; preds = %._crit_edge.i, %.preheader.lr.ph.i, %bb.d, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.z, %bb.d ], [ -1, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit ], [ -1, %.preheader.lr.ph.i ], [ -1, %._crit_edge.i ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE12find_last_ofEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE12find_last_ofEPKcmm.exit, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26 ; 2 uses
  %i.j = trunc i64 %i.e to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.i
  %.not12.i.i = icmp eq i64 %i.i, 0
  br i1 %.not12.i.i, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE12find_last_ofEPKcmm.exit, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %.preheader.lr.ph.i.i
  %i.p = add nsw i64 %i.g, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %2)
  %i.q = getelementptr i8, ptr %i.n, i64 %.sroa.speculated.i
  %i.r = getelementptr i8, ptr %i.q, i64 1
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.i.preheader.i
  %i.s = phi ptr [ %i.t, %._crit_edge.i.i ], [ %i.r, %.preheader.i.preheader.i ] ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -1 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !109, !noalias !560
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.0513.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %i.o
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.c, !llvm.loop !43

bb.c:                                             ; preds = %bb.b, %.preheader.i.i
  %.0513.i.i = phi ptr [ %1, %.preheader.i.i ], [ %i.v, %bb.b ] ; 2 uses
  %i.w = load i8, ptr %.0513.i.i, align 1, !tbaa !109, !noalias !560
  %i.x = icmp eq i8 %i.u, %i.w
  br i1 %i.x, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.b
  %.not7.i.i = icmp eq ptr %i.t, %i.n
  br i1 %.not7.i.i, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE12find_last_ofEPKcmm.exit, label %.preheader.i.i, !llvm.loop !44

_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.i: ; preds = %bb.c
  %.not.i = icmp eq ptr %i.s, %i.n
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE12find_last_ofEPKcmm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.i
  %i.y = ptrtoint ptr %i.t to i64
  %i.z = ptrtoint ptr %i.n to i64
  %i.aa = sub i64 %i.y, %i.z
  br label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE12find_last_ofEPKcmm.exit

_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE12find_last_ofEPKcmm.exit: ; preds = %._crit_edge.i.i, %bb.a, %.preheader.lr.ph.i.i, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.i, %bb.d
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.aa, %bb.d ], [ -1, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKcEES5_NS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.i ], [ -1, %.preheader.lr.ph.i.i ], [ -1, %._crit_edge.i.i ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE12find_last_ofEcm(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE5rfindEcm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 4 uses
  %i.n = add nsw i64 %i.g, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %2)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.speculated.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.b
  %i.q = phi ptr [ %i.r, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -1 ; 4 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !109, !noalias !563
  %i.t = icmp eq i8 %i.s, %1
  br i1 %i.t, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.r, %i.m
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE5rfindEcm.exit, label %.lr.ph.i.i, !llvm.loop !40

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit.i: ; preds = %.lr.ph.i.i
  %.not.i = icmp eq ptr %i.q, %i.m
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE5rfindEcm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit.i
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.m to i64
  %i.w = sub i64 %i.u, %i.v
  br label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE5rfindEcm.exit

_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE5rfindEcm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit.i, %bb.d
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.w, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17find_first_not_ofERKS5_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 2 uses
  %i.g = lshr i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = load i64, ptr %1, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = select i1 %i.b, i64 %i.h, i64 %i.j       ; 2 uses
  %i.l = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.m = trunc i8 %i.l to i1
  %i.n = lshr i8 %i.l, 1
  %i.o = zext nneg i8 %i.n to i64
  %i.p = load i64, ptr %0, align 8                ; 2 uses
  %i.q = lshr i64 %i.p, 1                         ; 3 uses
  %i.r = select i1 %i.m, i64 %i.o, i64 %i.q
  %i.s = icmp ugt i64 %2, %i.r
  br i1 %i.s, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17find_first_not_ofEPKcmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = trunc i64 %i.p to i1                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = select i1 %i.t, ptr %i.u, ptr %i.w       ; 3 uses
  %i.y = and i64 %i.q, 127
  %i.z = select i1 %i.t, i64 %i.y, i64 %i.q       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.z ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.k
  %.not15.i.i = icmp eq i64 %2, %i.z
  br i1 %.not15.i.i, label %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %2 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS3_EclERKc.exit.i.i
  %.0716.i.i = phi ptr [ %i.ah, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS3_EclERKc.exit.i.i ], [ %i.ac, %.lr.ph.i.i ] ; 3 uses
  %i.ad = load i8, ptr %.0716.i.i, align 1, !tbaa !109
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.preheader.i.i
  %.0710.i.i.i.i = phi ptr [ %i.ag, %bb.c ], [ %i.f, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %i.ae = load i8, ptr %.0710.i.i.i.i, align 1, !tbaa !109
  %i.af = icmp eq i8 %i.ae, %i.ad
  br i1 %i.af, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS3_EclERKc.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, %i.ab
  br i1 %.not.i.i.i.i, label %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !45

_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS3_EclERKc.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0716.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, %i.aa
  br i1 %.not.i.i, label %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !46

_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i: ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS3_EclERKc.exit.i.i, %bb.c, %.lr.ph.i.i, %bb.b
  %.0.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %i.aa, %bb.b ], [ %.0716.i.i, %bb.c ], [ %i.aa, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS3_EclERKc.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %.0.i.i, %i.aa
  %i.ai = ptrtoint ptr %.0.i.i to i64
  %i.aj = ptrtoint ptr %i.x to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = select i1 %.not.i, i64 -1, i64 %i.ak
  br label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17find_first_not_ofEPKcmm.exit

_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17find_first_not_ofEPKcmm.exit: ; preds = %bb.a, %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i
  %.0.i = phi i64 [ %i.al, %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i ], [ -1, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17find_first_not_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 3 uses
  %i.n = lshr i64 %i.e, 1
  %i.o = and i64 %i.n, 127
  %i.p = select i1 %i.i, i64 %i.o, i64 %i.f       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %1, i64 %3
  %.not15.i = icmp eq i64 %2, %i.p
  br i1 %.not15.i, label %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %.not9.i.i.i = icmp eq i64 %3, 0
  br i1 %.not9.i.i.i, label %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %.lr.ph.i, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS3_EclERKc.exit.i
  %.0716.i = phi ptr [ %i.x, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS3_EclERKc.exit.i ], [ %i.s, %.lr.ph.i ] ; 3 uses
  %i.t = load i8, ptr %.0716.i, align 1, !tbaa !109
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.preheader.i
  %.0710.i.i.i = phi ptr [ %i.w, %bb.c ], [ %1, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %i.u = load i8, ptr %.0710.i.i.i, align 1, !tbaa !109
  %i.v = icmp eq i8 %i.u, %i.t
  br i1 %i.v, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS3_EclERKc.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %i.r
  br i1 %.not.i.i.i, label %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !45

_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS3_EclERKc.exit.i: ; preds = %.lr.ph.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0716.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.x, %i.q
  br i1 %.not.i, label %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit, label %.lr.ph.i.i.preheader.i, !llvm.loop !46

_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit: ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS3_EclERKc.exit.i, %bb.c, %bb.b, %.lr.ph.i
  %.0.i = phi ptr [ %i.s, %.lr.ph.i ], [ %i.q, %bb.b ], [ %.0716.i, %bb.c ], [ %i.q, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS3_EclERKc.exit.i ] ; 2 uses
  %.not = icmp eq ptr %.0.i, %i.q
  %i.y = ptrtoint ptr %.0.i to i64
  %i.z = ptrtoint ptr %i.m to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = select i1 %.not, i64 -1, i64 %i.aa
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit
  %.0 = phi i64 [ %i.ab, %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17find_first_not_ofEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26 ; 2 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g
  %i.i = icmp ugt i64 %2, %i.h
  br i1 %i.i, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17find_first_not_ofEPKcmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.f to i1                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 3 uses
  %i.o = and i64 %i.g, 127
  %i.p = select i1 %i.j, i64 %i.o, i64 %i.g       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.a
  %.not15.i.i = icmp eq i64 %2, %i.p
  br i1 %.not15.i.i, label %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %2 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS3_EclERKc.exit.i.i
  %.0716.i.i = phi ptr [ %i.x, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS3_EclERKc.exit.i.i ], [ %i.s, %.lr.ph.i.i ] ; 3 uses
  %i.t = load i8, ptr %.0716.i.i, align 1, !tbaa !109
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.preheader.i.i
  %.0710.i.i.i.i = phi ptr [ %i.w, %bb.c ], [ %1, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %i.u = load i8, ptr %.0710.i.i.i.i, align 1, !tbaa !109
  %i.v = icmp eq i8 %i.u, %i.t
  br i1 %i.v, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS3_EclERKc.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, %i.r
  br i1 %.not.i.i.i.i, label %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !45

_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS3_EclERKc.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0716.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, %i.q
  br i1 %.not.i.i, label %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !46

_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i: ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS3_EclERKc.exit.i.i, %bb.c, %.lr.ph.i.i, %bb.b
  %.0.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.q, %bb.b ], [ %.0716.i.i, %bb.c ], [ %i.q, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS3_EclERKc.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %.0.i.i, %i.q
  %i.y = ptrtoint ptr %.0.i.i to i64
  %i.z = ptrtoint ptr %i.n to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = select i1 %.not.i, i64 -1, i64 %i.aa
  br label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17find_first_not_ofEPKcmm.exit

_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17find_first_not_ofEPKcmm.exit: ; preds = %bb.a, %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i
  %.0.i = phi i64 [ %i.ab, %_ZN5boost9container7find_ifIPcNS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i ], [ -1, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17find_first_not_ofEcm(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %_ZN5boost9container7find_ifIPcNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 3 uses
  %i.n = lshr i64 %i.e, 1
  %i.o = and i64 %i.n, 127
  %i.p = select i1 %i.i, i64 %i.o, i64 %i.f       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p ; 2 uses
  %.not10.i = icmp eq i64 %2, %i.p
  br i1 %.not10.i, label %_ZN5boost9container7find_ifIPcNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.c
  %.0711.i = phi ptr [ %i.t, %bb.c ], [ %i.r, %.lr.ph.i.preheader ] ; 4 uses
  %i.s = load i8, ptr %.0711.i, align 1, !tbaa !109
  %.not9.i = icmp eq i8 %i.s, %1
  br i1 %.not9.i, label %bb.c, label %_ZN5boost9container7find_ifIPcNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0711.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.t, %i.q
  br i1 %.not.i, label %_ZN5boost9container7find_ifIPcNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit.thread, label %.lr.ph.i, !llvm.loop !564

_ZN5boost9container7find_ifIPcNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit: ; preds = %.lr.ph.i
  %.not = icmp eq ptr %.0711.i, %i.q
  br i1 %.not, label %_ZN5boost9container7find_ifIPcNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifIPcNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit
  %i.u = ptrtoint ptr %.0711.i to i64
  %i.v = ptrtoint ptr %i.m to i64
  %i.w = sub i64 %i.u, %i.v
  br label %_ZN5boost9container7find_ifIPcNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit.thread

_ZN5boost9container7find_ifIPcNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit.thread: ; preds = %bb.c, %bb.b, %bb.d, %_ZN5boost9container7find_ifIPcNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.w, %bb.d ], [ -1, %_ZN5boost9container7find_ifIPcNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit ], [ -1, %bb.b ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE16find_last_not_ofERKS5_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 2 uses
  %i.g = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.h = trunc i8 %i.g to i1
  %i.i = lshr i8 %i.g, 1
  %i.j = zext nneg i8 %i.i to i64
  %i.k = load i64, ptr %0, align 8                ; 2 uses
  %i.l = lshr i64 %i.k, 1
  %i.m = select i1 %i.h, i64 %i.j, i64 %i.l       ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE16find_last_not_ofEPKcmm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.o = lshr i8 %i.a, 1
  %i.p = zext nneg i8 %i.o to i64
  %i.q = load i64, ptr %1, align 8
  %i.r = lshr i64 %i.q, 1
  %i.s = select i1 %i.b, i64 %i.p, i64 %i.r       ; 2 uses
  %i.t = trunc i64 %i.k to i1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = select i1 %i.t, ptr %i.u, ptr %i.w       ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.s ; 2 uses
  %i.z = add nsw i64 %i.m, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %2)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.speculated.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i, %bb.c
  %i.ac = phi ptr [ %i.ad, %bb.c ], [ %i.ab, %.lr.ph.i.i ] ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -1 ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !109, !noalias !567
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.preheader.i.i
  %.0710.i.i.i.i = phi ptr [ %i.ah, %bb.b ], [ %i.f, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.af = load i8, ptr %.0710.i.i.i.i, align 1, !tbaa !109, !noalias !567
  %i.ag = icmp eq i8 %i.af, %i.ae
  br i1 %i.ag, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS3_EclERKc.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, %i.y
  br i1 %.not.i.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !45

_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS3_EclERKc.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ai = icmp eq ptr %.0710.i.i.i.i, %i.y
  br i1 %i.ai, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS3_EclERKc.exit.i.i
  %.not.i.i = icmp eq ptr %i.ad, %i.x
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE16find_last_not_ofEPKcmm.exit, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !47

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i: ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS3_EclERKc.exit.i.i, %bb.b, %.lr.ph.i.i
  %storemerge.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %i.ac, %bb.b ], [ %i.ac, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS3_EclERKc.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %storemerge.i.i, %i.x
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE16find_last_not_ofEPKcmm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i
  %i.aj = getelementptr inbounds i8, ptr %storemerge.i.i, i64 -1
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.x to i64
  %i.am = sub i64 %i.ak, %i.al
  br label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE16find_last_not_ofEPKcmm.exit

_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE16find_last_not_ofEPKcmm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i, %bb.d
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.am, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE16find_last_not_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 4 uses
  %i.n = getelementptr inbounds i8, ptr %1, i64 %3 ; 2 uses
  %i.o = add nsw i64 %i.g, -1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %2)
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.speculated
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %.not9.i.i.i = icmp eq i64 %3, 0
  br i1 %.not9.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %.lr.ph.i, %bb.c
  %i.r = phi ptr [ %i.s, %bb.c ], [ %i.q, %.lr.ph.i ] ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -1 ; 3 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !109, !noalias !570
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.preheader.i
  %.0710.i.i.i = phi ptr [ %i.w, %bb.b ], [ %1, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %i.u = load i8, ptr %.0710.i.i.i, align 1, !tbaa !109, !noalias !570
  %i.v = icmp eq i8 %i.u, %i.t
  br i1 %i.v, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS3_EclERKc.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %i.n
  br i1 %.not.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !45

_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS3_EclERKc.exit.i: ; preds = %.lr.ph.i.i.i
  %i.x = icmp eq ptr %.0710.i.i.i, %i.n
  br i1 %i.x, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS3_EclERKc.exit.i
  %.not.i = icmp eq ptr %i.s, %i.m
  br i1 %.not.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.thread, label %.lr.ph.i.i.preheader.i, !llvm.loop !47

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit: ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS3_EclERKc.exit.i, %bb.b, %.lr.ph.i
  %storemerge.i = phi ptr [ %i.q, %.lr.ph.i ], [ %i.r, %bb.b ], [ %i.r, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS3_EclERKc.exit.i ] ; 2 uses
  %.not = icmp eq ptr %storemerge.i, %i.m
  br i1 %.not, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit
  %i.y = getelementptr inbounds i8, ptr %storemerge.i, i64 -1
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.m to i64
  %i.ab = sub i64 %i.z, %i.aa
  br label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.thread

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.thread: ; preds = %bb.c, %bb.d, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.ab, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE16find_last_not_ofEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE16find_last_not_ofEPKcmm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26 ; 2 uses
  %i.j = trunc i64 %i.e to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.i ; 2 uses
  %i.p = add nsw i64 %i.g, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %2)
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.speculated.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i, %bb.c
  %i.s = phi ptr [ %i.t, %bb.c ], [ %i.r, %.lr.ph.i.i ] ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -1 ; 3 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !109, !noalias !573
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.preheader.i.i
  %.0710.i.i.i.i = phi ptr [ %i.x, %bb.b ], [ %1, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.v = load i8, ptr %.0710.i.i.i.i, align 1, !tbaa !109, !noalias !573
  %i.w = icmp eq i8 %i.v, %i.u
  br i1 %i.w, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS3_EclERKc.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.o
  br i1 %.not.i.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !45

_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS3_EclERKc.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.y = icmp eq ptr %.0710.i.i.i.i, %i.o
  br i1 %i.y, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS3_EclERKc.exit.i.i
  %.not.i.i = icmp eq ptr %i.t, %i.n
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE16find_last_not_ofEPKcmm.exit, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !47

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i: ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS3_EclERKc.exit.i.i, %bb.b, %.lr.ph.i.i
  %storemerge.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.s, %bb.b ], [ %i.s, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS3_EclERKc.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %storemerge.i.i, %i.n
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE16find_last_not_ofEPKcmm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i
  %i.z = getelementptr inbounds i8, ptr %storemerge.i.i, i64 -1
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.n to i64
  %i.ac = sub i64 %i.aa, %i.ab
  br label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE16find_last_not_ofEPKcmm.exit

_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE16find_last_not_ofEPKcmm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i, %bb.d
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.ac, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12basic_stringIcSt11char_traitsIcESaIcEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE16find_last_not_ofEcm(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsISB_EEEEEEEET_SI_SI_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 4 uses
  %i.n = add nsw i64 %i.g, -1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %2)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.speculated
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.r, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -1 ; 4 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !109, !noalias !577
  %.not1.i = icmp eq i8 %i.s, %1
  br i1 %.not1.i, label %bb.c, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsISB_EEEEEEEET_SI_SI_T0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %i.r, %i.m
  br i1 %.not.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsISB_EEEEEEEET_SI_SI_T0_.exit.thread, label %.lr.ph.i, !llvm.loop !576

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsISB_EEEEEEEET_SI_SI_T0_.exit: ; preds = %.lr.ph.i
  %.not = icmp eq ptr %i.q, %i.m
  br i1 %.not, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsISB_EEEEEEEET_SI_SI_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsISB_EEEEEEEET_SI_SI_T0_.exit
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.m to i64
  %i.v = sub i64 %i.t, %i.u
  br label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsISB_EEEEEEEET_SI_SI_T0_.exit.thread

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsISB_EEEEEEEET_SI_SI_T0_.exit.thread: ; preds = %bb.c, %bb.d, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsISB_EEEEEEEET_SI_SI_T0_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.v, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKcEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIcSt11char_traitsIcESaIcEvE9Eq_traitsISB_EEEEEEEET_SI_SI_T0_.exit ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE6substrEmm(ptr dead_on_unwind noalias writable sret(%"class.boost::container::basic_string.19") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %1, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.10) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %i.o = lshr i64 %i.e, 1
  %i.p = and i64 %i.o, 127
  %i.q = select i1 %i.i, i64 %i.p, i64 %i.f
  %i.r = sub nsw i64 %i.q, %2
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.r)
  %i.s = getelementptr i8, ptr %i.n, i64 %.sroa.speculated
  store i8 1, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.t, align 1, !tbaa !109
  %i.u = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE6assignIPcEERS5_T_S9_PNS_11move_detail22disable_if_convertibleIS9_mvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.n, ptr noundef %i.s, ptr noundef null)
          to label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvEC2IPcEET_S8_RKS4_PNS_11move_detail12disable_if_cIXsr3dtl14is_convertibleIS8_mEE5valueENSB_3natEE4typeE.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl17basic_string_baseISaIcEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #26
  resume { ptr, i32 } %i.v

_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvEC2IPcEET_S8_RKS4_PNS_11move_detail12disable_if_cIXsr3dtl14is_convertibleIS8_mEE5valueENSB_3natEE4typeE.exit: ; preds = %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE7compareERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.d = trunc i8 %i.c to i1                      ; 2 uses
  %i.e = lshr i8 %i.a, 1
  %i.f = zext nneg i8 %i.e to i64
  %i.g = load i64, ptr %0, align 8
  %i.h = lshr i64 %i.g, 1
  %i.i = select i1 %i.b, i64 %i.f, i64 %i.h       ; 2 uses
  %i.j = lshr i8 %i.c, 1
  %i.k = zext nneg i8 %i.j to i64
  %i.l = load i64, ptr %1, align 8
  %i.m = lshr i64 %i.l, 1
  %i.n = select i1 %i.d, i64 %i.k, i64 %i.m       ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.n) ; 2 uses
  %i.o = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.o, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = select i1 %i.d, ptr %i.p, ptr %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = select i1 %i.b, ptr %i.t, ptr %i.v
  %i.x = tail call i32 @memcmp(ptr noundef %i.w, ptr noundef %i.s, i64 noundef %.sroa.speculated.i) #26 ; 2 uses
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE9s_compareIPcS7_EEiT_S8_T0_S9_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %bb.a
  %i.y = tail call i32 @llvm.ucmp.i32.i64(i64 %i.i, i64 %i.n)
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE9s_compareIPcS7_EEiT_S8_T0_S9_.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE9s_compareIPcS7_EEiT_S8_T0_S9_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i
  %i.z = phi i32 [ %i.y, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i ], [ %i.x, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i ]
  ret i32 %i.z
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK5boost9container12basic_stringIcSt11char_traitsIcESaIcEvE7compareEmmRKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.11) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = load i8, ptr %3, align 8, !tbaa !109     ; 2 uses
  %i.k = trunc i8 %i.j to i1                      ; 2 uses
  %i.l = lshr i64 %i.e, 1
  %i.m = and i64 %i.l, 127
  %i.n = select i1 %i.i, i64 %i.m, i64 %i.f
  %i.o = sub nsw i64 %i.n, %1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.o) ; 2 uses
  %i.p = lshr i8 %i.j, 1
  %i.q = zext nneg i8 %i.p to i64
  %i.r = load i64, ptr %3, align 8
  %i.s = lshr i64 %i.r, 1
  %i.t = select i1 %i.k, i64 %i.q, i64 %i.s       ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated, i64 %i.t) ; 2 uses
  %i.u = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.u, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = select i1 %i.k, ptr %i.v, ptr %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = select i1 %i.i, ptr %i.z, ptr %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %1
end_hunk_3
begin_hunk_4_@_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEPKwmm:bb.a

_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.thread: ; preds = %._crit_edge.i, %bb.b, %bb.e, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.aa, %bb.e ], [ -1, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit ], [ -1, %bb.b ], [ -1, %._crit_edge.i ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 2 uses
  %i.j = trunc i64 %i.e to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 4 uses
  %i.o = add nsw i64 %i.g, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %2)
  %.idx.i = shl i64 %.sroa.speculated.i, 2
  %i.p = add i64 %.idx.i, 4                       ; 2 uses
  %.idx20.i = shl nsw i64 %i.i, 2
  %i.q = getelementptr inbounds i8, ptr %1, i64 %.idx20.i
  %.not714.i.i = icmp eq i64 %i.p, 0
  %.not12.i.i = icmp eq i64 %i.i, 0
  %or.cond.i = or i1 %.not714.i.i, %.not12.i.i
  br i1 %or.cond.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEPKwmm.exit, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %bb.b
  %i.r = getelementptr i8, ptr %i.n, i64 %i.p
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.i.preheader.i
  %i.s = phi ptr [ %i.t, %._crit_edge.i.i ], [ %i.r, %.preheader.i.preheader.i ] ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 4 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !134, !noalias !645
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.0513.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %i.q
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.d, !llvm.loop !55

bb.d:                                             ; preds = %bb.c, %.preheader.i.i
  %.0513.i.i = phi ptr [ %1, %.preheader.i.i ], [ %i.v, %bb.c ] ; 2 uses
  %i.w = load i32, ptr %.0513.i.i, align 4, !tbaa !134, !noalias !645
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.i, label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.c
  %.not7.i.i = icmp eq ptr %i.t, %i.n
  br i1 %.not7.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEPKwmm.exit, label %.preheader.i.i, !llvm.loop !56

_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.i: ; preds = %bb.d
  %.not.i = icmp eq ptr %i.s, %i.n
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEPKwmm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.i
  %i.y = ptrtoint ptr %i.t to i64
  %i.z = ptrtoint ptr %i.n to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEPKwmm.exit: ; preds = %._crit_edge.i.i, %bb.a, %bb.b, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.i, %bb.e
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.ab, %bb.e ], [ -1, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.i ], [ -1, %bb.b ], [ -1, %._crit_edge.i.i ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEwm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 4 uses
  %i.n = add nsw i64 %i.g, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %2)
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.b
  %i.q = phi ptr [ %i.r, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4 ; 4 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !134, !noalias !648
  %i.t = icmp eq i32 %i.s, %1
  br i1 %i.t, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.r, %i.m
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEwm.exit, label %.lr.ph.i.i, !llvm.loop !52

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit.i: ; preds = %.lr.ph.i.i
  %.not.i = icmp eq ptr %i.q, %i.m
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEwm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit.i
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.m to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEwm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEwm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit.i, %bb.d
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.x, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17find_first_not_ofERKS5_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 2 uses
  %i.g = lshr i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = load i64, ptr %1, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = select i1 %i.b, i64 %i.h, i64 %i.j       ; 2 uses
  %i.l = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.m = trunc i8 %i.l to i1
  %i.n = lshr i8 %i.l, 1
  %i.o = zext nneg i8 %i.n to i64
  %i.p = load i64, ptr %0, align 8                ; 2 uses
  %i.q = lshr i64 %i.p, 1                         ; 3 uses
  %i.r = select i1 %i.m, i64 %i.o, i64 %i.q
  %i.s = icmp ugt i64 %2, %i.r
  br i1 %i.s, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17find_first_not_ofEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = trunc i64 %i.p to i1                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = select i1 %i.t, ptr %i.u, ptr %i.w       ; 3 uses
  %i.y = and i64 %i.q, 127
  %i.z = select i1 %i.t, i64 %i.y, i64 %i.q       ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.z ; 4 uses
  %.idx.i = shl nuw nsw i64 %i.k, 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i ; 2 uses
  %.not15.i.i = icmp eq i64 %2, %i.z
  br i1 %.not15.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %2 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i, %bb.d
  %.0716.i.i = phi ptr [ %i.ai, %bb.d ], [ %i.ac, %.lr.ph.i.i ] ; 4 uses
  %i.ad = load i32, ptr %.0716.i.i, align 4, !tbaa !134
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.preheader.i.i
  %.0710.i.i.i.i = phi ptr [ %i.ag, %bb.c ], [ %i.f, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.ae = load i32, ptr %.0710.i.i.i.i, align 4, !tbaa !134
  %i.af = icmp eq i32 %i.ae, %i.ad
  br i1 %i.af, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, %i.ab
  br i1 %.not.i.i.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !57

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ah = icmp eq ptr %.0710.i.i.i.i, %i.ab
  br i1 %i.ah, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0716.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, %i.aa
  br i1 %.not.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !58

_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i: ; preds = %bb.d, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i, %bb.c, %.lr.ph.i.i, %bb.b
  %.0.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %i.aa, %bb.b ], [ %.0716.i.i, %bb.c ], [ %.0716.i.i, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i ], [ %i.aa, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.0.i.i, %i.aa
  %i.aj = ptrtoint ptr %.0.i.i to i64
  %i.ak = ptrtoint ptr %i.x to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 2
  %i.an = select i1 %.not.i, i64 -1, i64 %i.am
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17find_first_not_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17find_first_not_ofEPKwmm.exit: ; preds = %bb.a, %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i
  %.0.i = phi i64 [ %i.an, %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i ], [ -1, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17find_first_not_ofEPKwmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 3 uses
  %i.n = lshr i64 %i.e, 1
  %i.o = and i64 %i.n, 127
  %i.p = select i1 %i.i, i64 %i.o, i64 %i.f       ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.p ; 4 uses
  %.idx = shl nsw i64 %3, 2
  %i.r = getelementptr inbounds i8, ptr %1, i64 %.idx ; 2 uses
  %.not15.i = icmp eq i64 %2, %i.p
  br i1 %.not15.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %2 ; 2 uses
  %.not9.i.i.i = icmp eq i64 %3, 0
  br i1 %.not9.i.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %.lr.ph.i, %bb.d
  %.0716.i = phi ptr [ %i.y, %bb.d ], [ %i.s, %.lr.ph.i ] ; 4 uses
  %i.t = load i32, ptr %.0716.i, align 4, !tbaa !134
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.preheader.i
  %.0710.i.i.i = phi ptr [ %i.w, %bb.c ], [ %1, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %i.u = load i32, ptr %.0710.i.i.i, align 4, !tbaa !134
  %i.v = icmp eq i32 %i.u, %i.t
  br i1 %i.v, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %i.r
  br i1 %.not.i.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !57

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i: ; preds = %.lr.ph.i.i.i
  %i.x = icmp eq ptr %.0710.i.i.i, %i.r
  br i1 %i.x, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0716.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.y, %i.q
  br i1 %.not.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit, label %.lr.ph.i.i.preheader.i, !llvm.loop !58

_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit: ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i, %bb.d, %bb.c, %bb.b, %.lr.ph.i
  %.0.i = phi ptr [ %i.s, %.lr.ph.i ], [ %i.q, %bb.b ], [ %.0716.i, %bb.c ], [ %.0716.i, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i ], [ %i.q, %bb.d ] ; 2 uses
  %.not = icmp eq ptr %.0.i, %i.q
  %i.z = ptrtoint ptr %.0.i to i64
  %i.aa = ptrtoint ptr %i.m to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  %i.ad = select i1 %.not, i64 -1, i64 %i.ac
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit
  %.0 = phi i64 [ %i.ad, %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17find_first_not_ofEPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 2 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g
  %i.i = icmp ugt i64 %2, %i.h
  br i1 %i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17find_first_not_ofEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.f to i1                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 3 uses
  %i.o = and i64 %i.g, 127
  %i.p = select i1 %i.j, i64 %i.o, i64 %i.g       ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.p ; 4 uses
  %.idx.i = shl nsw i64 %i.a, 2
  %i.r = getelementptr inbounds i8, ptr %1, i64 %.idx.i ; 2 uses
  %.not15.i.i = icmp eq i64 %2, %i.p
  br i1 %.not15.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %2 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i, %bb.d
  %.0716.i.i = phi ptr [ %i.y, %bb.d ], [ %i.s, %.lr.ph.i.i ] ; 4 uses
  %i.t = load i32, ptr %.0716.i.i, align 4, !tbaa !134
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.preheader.i.i
  %.0710.i.i.i.i = phi ptr [ %i.w, %bb.c ], [ %1, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.u = load i32, ptr %.0710.i.i.i.i, align 4, !tbaa !134
  %i.v = icmp eq i32 %i.u, %i.t
  br i1 %i.v, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, %i.r
  br i1 %.not.i.i.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !57

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.x = icmp eq ptr %.0710.i.i.i.i, %i.r
  br i1 %i.x, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0716.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, %i.q
  br i1 %.not.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !58

_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i: ; preds = %bb.d, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i, %bb.c, %.lr.ph.i.i, %bb.b
  %.0.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.q, %bb.b ], [ %.0716.i.i, %bb.c ], [ %.0716.i.i, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i ], [ %i.q, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.0.i.i, %i.q
  %i.z = ptrtoint ptr %.0.i.i to i64
  %i.aa = ptrtoint ptr %i.n to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  %i.ad = select i1 %.not.i, i64 -1, i64 %i.ac
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17find_first_not_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17find_first_not_ofEPKwmm.exit: ; preds = %bb.a, %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i
  %.0.i = phi i64 [ %i.ad, %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i ], [ -1, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17find_first_not_ofEwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 3 uses
  %i.n = lshr i64 %i.e, 1
  %i.o = and i64 %i.n, 127
  %i.p = select i1 %i.i, i64 %i.o, i64 %i.f       ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.p ; 2 uses
  %.not10.i = icmp eq i64 %2, %i.p
  br i1 %.not10.i, label %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.c
  %.0711.i = phi ptr [ %i.t, %bb.c ], [ %i.r, %.lr.ph.i.preheader ] ; 4 uses
  %i.s = load i32, ptr %.0711.i, align 4, !tbaa !134
  %.not9.i = icmp eq i32 %i.s, %1
  br i1 %.not9.i, label %bb.c, label %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0711.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.t, %i.q
  br i1 %.not.i, label %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit.thread, label %.lr.ph.i, !llvm.loop !649

_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit: ; preds = %.lr.ph.i
  %.not = icmp eq ptr %.0711.i, %i.q
  br i1 %.not, label %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit
  %i.u = ptrtoint ptr %.0711.i to i64
  %i.v = ptrtoint ptr %i.m to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  br label %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit.thread

_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit.thread: ; preds = %bb.c, %bb.b, %bb.d, %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.x, %bb.d ], [ -1, %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit ], [ -1, %bb.b ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofERKS5_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 2 uses
  %i.g = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.h = trunc i8 %i.g to i1
  %i.i = lshr i8 %i.g, 1
  %i.j = zext nneg i8 %i.i to i64
  %i.k = load i64, ptr %0, align 8                ; 2 uses
  %i.l = lshr i64 %i.k, 1
  %i.m = select i1 %i.h, i64 %i.j, i64 %i.l       ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEPKwmm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.o = lshr i8 %i.a, 1
  %i.p = zext nneg i8 %i.o to i64
  %i.q = load i64, ptr %1, align 8
  %i.r = lshr i64 %i.q, 1
  %i.s = select i1 %i.b, i64 %i.p, i64 %i.r       ; 2 uses
  %i.t = trunc i64 %i.k to i1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = select i1 %i.t, ptr %i.u, ptr %i.w       ; 4 uses
  %.idx18.i = shl nuw nsw i64 %i.s, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx18.i ; 2 uses
  %i.z = add nsw i64 %i.m, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %2)
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i, %bb.c
  %i.ac = phi ptr [ %i.ad, %bb.c ], [ %i.ab, %.lr.ph.i.i ] ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !134, !noalias !652
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.preheader.i.i
  %.0710.i.i.i.i = phi ptr [ %i.ah, %bb.b ], [ %i.f, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.af = load i32, ptr %.0710.i.i.i.i, align 4, !tbaa !134, !noalias !652
  %i.ag = icmp eq i32 %i.af, %i.ae
  br i1 %i.ag, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, %i.y
  br i1 %.not.i.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !57

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ai = icmp eq ptr %.0710.i.i.i.i, %i.y
  br i1 %i.ai, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i
  %.not.i.i = icmp eq ptr %i.ad, %i.x
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEPKwmm.exit, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !59

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i: ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i, %bb.b, %.lr.ph.i.i
  %storemerge.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %i.ac, %bb.b ], [ %i.ac, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %storemerge.i.i, %i.x
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEPKwmm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i
  %i.aj = getelementptr inbounds i8, ptr %storemerge.i.i, i64 -4
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.x to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEPKwmm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i, %bb.d
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.an, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEPKwmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 4 uses
  %.idx18 = shl nsw i64 %3, 2
  %i.n = getelementptr inbounds i8, ptr %1, i64 %.idx18 ; 2 uses
  %i.o = add nsw i64 %i.g, -1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %2)
  %.idx = shl nuw nsw i64 %.sroa.speculated, 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %.not9.i.i.i = icmp eq i64 %3, 0
  br i1 %.not9.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %.lr.ph.i, %bb.c
  %i.r = phi ptr [ %i.s, %bb.c ], [ %i.q, %.lr.ph.i ] ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -4 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !134, !noalias !655
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.preheader.i
  %.0710.i.i.i = phi ptr [ %i.w, %bb.b ], [ %1, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %i.u = load i32, ptr %.0710.i.i.i, align 4, !tbaa !134, !noalias !655
  %i.v = icmp eq i32 %i.u, %i.t
  br i1 %i.v, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %i.n
  br i1 %.not.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !57

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i: ; preds = %.lr.ph.i.i.i
  %i.x = icmp eq ptr %.0710.i.i.i, %i.n
  br i1 %i.x, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i
  %.not.i = icmp eq ptr %i.s, %i.m
  br i1 %.not.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.thread, label %.lr.ph.i.i.preheader.i, !llvm.loop !59

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit: ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i, %bb.b, %.lr.ph.i
  %storemerge.i = phi ptr [ %i.q, %.lr.ph.i ], [ %i.r, %bb.b ], [ %i.r, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i ] ; 2 uses
  %.not = icmp eq ptr %storemerge.i, %i.m
  br i1 %.not, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit
  %i.y = getelementptr inbounds i8, ptr %storemerge.i, i64 -4
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.m to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  br label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.thread

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.thread: ; preds = %bb.c, %bb.d, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.ac, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEPKwmm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.i = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 2 uses
  %i.j = trunc i64 %i.e to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 4 uses
  %.idx18.i = shl nsw i64 %i.i, 2
  %i.o = getelementptr inbounds i8, ptr %1, i64 %.idx18.i ; 2 uses
  %i.p = add nsw i64 %i.g, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %2)
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i, %bb.c
  %i.s = phi ptr [ %i.t, %bb.c ], [ %i.r, %.lr.ph.i.i ] ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !134, !noalias !658
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.preheader.i.i
  %.0710.i.i.i.i = phi ptr [ %i.x, %bb.b ], [ %1, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.v = load i32, ptr %.0710.i.i.i.i, align 4, !tbaa !134, !noalias !658
  %i.w = icmp eq i32 %i.v, %i.u
  br i1 %i.w, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.o
  br i1 %.not.i.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !57

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.y = icmp eq ptr %.0710.i.i.i.i, %i.o
  br i1 %i.y, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i
  %.not.i.i = icmp eq ptr %i.t, %i.n
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEPKwmm.exit, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !59

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i: ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i, %bb.b, %.lr.ph.i.i
  %storemerge.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.s, %bb.b ], [ %i.s, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %storemerge.i.i, %i.n
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEPKwmm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i
  %i.z = getelementptr inbounds i8, ptr %storemerge.i.i, i64 -4
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.n to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEPKwmm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i, %bb.d
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.ad, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISB_EEEEEEEET_SI_SI_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 4 uses
  %i.n = add nsw i64 %i.g, -1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %2)
  %.idx = shl nuw nsw i64 %.sroa.speculated, 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.r, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4 ; 4 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !134, !noalias !662
  %.not1.i = icmp eq i32 %i.s, %1
  br i1 %.not1.i, label %bb.c, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISB_EEEEEEEET_SI_SI_T0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %i.r, %i.m
  br i1 %.not.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISB_EEEEEEEET_SI_SI_T0_.exit.thread, label %.lr.ph.i, !llvm.loop !661

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISB_EEEEEEEET_SI_SI_T0_.exit: ; preds = %.lr.ph.i
  %.not = icmp eq ptr %i.q, %i.m
  br i1 %.not, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISB_EEEEEEEET_SI_SI_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISB_EEEEEEEET_SI_SI_T0_.exit
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.m to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 2
  br label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISB_EEEEEEEET_SI_SI_T0_.exit.thread

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISB_EEEEEEEET_SI_SI_T0_.exit.thread: ; preds = %bb.c, %bb.d, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISB_EEEEEEEET_SI_SI_T0_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.w, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISB_EEEEEEEET_SI_SI_T0_.exit ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6substrEmm(ptr dead_on_unwind noalias writable sret(%"class.boost::container::basic_string.23") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %1, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.10) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %2 ; 2 uses
  %i.o = lshr i64 %i.e, 1
  %i.p = and i64 %i.o, 127
  %i.q = select i1 %i.i, i64 %i.p, i64 %i.f
  %i.r = sub nsw i64 %i.q, %2
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.r)
  %i.s = getelementptr [4 x i8], ptr %i.n, i64 %.sroa.speculated
  store i8 1, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.t, align 4, !tbaa !134
  %i.u = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignIPwEERS5_T_S9_PNS_11move_detail22disable_if_convertibleIS9_mvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.n, ptr noundef %i.s, ptr noundef null)
          to label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEC2IPwEET_S8_RKS4_PNS_11move_detail12disable_if_cIXsr3dtl14is_convertibleIS8_mEE5valueENSB_3natEE4typeE.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl17basic_string_baseISaIwEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #26
  resume { ptr, i32 } %i.v

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEC2IPwEET_S8_RKS4_PNS_11move_detail12disable_if_cIXsr3dtl14is_convertibleIS8_mEE5valueENSB_3natEE4typeE.exit: ; preds = %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7compareERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.d = trunc i8 %i.c to i1                      ; 2 uses
  %i.e = lshr i8 %i.a, 1
  %i.f = zext nneg i8 %i.e to i64
  %i.g = load i64, ptr %0, align 8
  %i.h = lshr i64 %i.g, 1
  %i.i = select i1 %i.b, i64 %i.f, i64 %i.h       ; 2 uses
  %i.j = lshr i8 %i.c, 1
  %i.k = zext nneg i8 %i.j to i64
  %i.l = load i64, ptr %1, align 8
  %i.m = lshr i64 %i.l, 1
  %i.n = select i1 %i.d, i64 %i.k, i64 %i.m       ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.n) ; 2 uses
  %i.o = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.o, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i:     ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = select i1 %i.d, ptr %i.p, ptr %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = select i1 %i.b, ptr %i.t, ptr %i.v
  %i.x = tail call i32 @wmemcmp(ptr noundef %i.w, ptr noundef %i.s, i64 noundef %.sroa.speculated.i) #29 ; 2 uses
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9s_compareIPwS7_EEiT_S8_T0_S9_.exit

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i, %bb.a
  %i.y = tail call i32 @llvm.ucmp.i32.i64(i64 %i.i, i64 %i.n)
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9s_compareIPwS7_EEiT_S8_T0_S9_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9s_compareIPwS7_EEiT_S8_T0_S9_.exit: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i
  %i.z = phi i32 [ %i.y, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i ], [ %i.x, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i ]
  ret i32 %i.z
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7compareEmmRKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.11) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = load i8, ptr %3, align 8, !tbaa !109     ; 2 uses
  %i.k = trunc i8 %i.j to i1                      ; 2 uses
  %i.l = lshr i64 %i.e, 1
  %i.m = and i64 %i.l, 127
  %i.n = select i1 %i.i, i64 %i.m, i64 %i.f
  %i.o = sub nsw i64 %i.n, %1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.o)
  %i.p = lshr i8 %i.j, 1
  %i.q = zext nneg i8 %i.p to i64
  %i.r = load i64, ptr %3, align 8
  %i.s = lshr i64 %i.r, 1
  %i.t = select i1 %i.k, i64 %i.q, i64 %i.s       ; 2 uses
  %.idx = shl i64 %.sroa.speculated, 2
  %i.u = ashr exact i64 %.idx, 2                  ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.t) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.v, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i:     ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = select i1 %i.k, ptr %i.w, ptr %i.y
end_hunk_4
