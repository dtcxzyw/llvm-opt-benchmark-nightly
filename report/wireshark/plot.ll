Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/plot?download=true
inline.NumInlined: 359
inline.NumDeleted: 168
begin_hunk_0_@_ZN4Plot9tapPacketEP12_packet_infoP12epan_dissectPKvj:bb.a
  br i1 %i.ba, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @nstime_copy(ptr noundef %i.v, ptr noundef %i.q)
  call void @_ZN4Plot13requestRecalcEv(ptr noundef align 8 dereferenceable_or_null(200) %0)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bb = load double, ptr %i.w, align 8          ; 2 uses
  %i.bc = call noundef zeroext i1 @_Z9qIsFinited(double noundef %i.bb) #17
  %i.bd = fcmp uge double %i.ap, %i.bb
  %or.cond42.not = and i1 %i.bd, %i.bc
  br i1 %or.cond42.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store double %i.ap, ptr %i.w, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store double %i.ap, ptr %5, align 8
  store double %i.ax, ptr %i.x, align 8
  %i.be = load i32, ptr %i.z, align 4             ; 3 uses
  store i32 %i.be, ptr %i.y, align 8
  %i.bf = trunc nuw i64 %indvars.iv to i32
  store i32 %i.bf, ptr %i.aa, align 4
  %i.bg = load double, ptr %i.a, align 8
  store double %i.bg, ptr %i.ab, align 8
  %i.bh = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.bi = load ptr, ptr %i.ad, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 5                 ; 2 uses
  %i.bn = icmp sgt i64 %i.bm, 0
  br i1 %i.bn, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP12_plot_item_tSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIP12_plot_item_tSt6vectorIS2_SaIS2_EEEES2_PFbRKS2_S9_EET_SC_SC_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP12_plot_item_tSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.p, %_ZN4Plot11itemCompareERK12_plot_item_tS2_.exit
  %.017.i.i = phi i64 [ %.1.i.i, %_ZN4Plot11itemCompareERK12_plot_item_tS2_.exit ], [ %i.bm, %bb.p ] ; 2 uses
  %.sroa.012.016.i.i = phi ptr [ %.sroa.012.1.i.i, %_ZN4Plot11itemCompareERK12_plot_item_tS2_.exit ], [ %i.bh, %bb.p ] ; 2 uses
  %i.bo = lshr i64 %.017.i.i, 1                   ; 3 uses
  %i.bp = getelementptr [32 x i8], ptr %.sroa.012.016.i.i, i64 %i.bo ; 4 uses
  %i.bq = load double, ptr %i.bp, align 8
  %i.br = fsub double %i.ap, %i.bq                ; 2 uses
  %i.bs = fcmp oeq double %i.br, 0.000000e+00
  br i1 %i.bs, label %bb.q, label %bb.t

bb.q:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP12_plot_item_tSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bu = load i32, ptr %i.bt, align 8            ; 2 uses
  %i.bv = icmp eq i32 %i.be, %i.bu
  br i1 %i.bv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 20
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = zext i32 %i.bx to i64
  %i.bz = icmp samesign ult i64 %indvars.iv, %i.by
  br label %_ZN4Plot11itemCompareERK12_plot_item_tS2_.exit

bb.s:                                             ; preds = %bb.q
  %i.ca = icmp ult i32 %i.be, %i.bu
  br label %_ZN4Plot11itemCompareERK12_plot_item_tS2_.exit

bb.t:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP12_plot_item_tSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.cb = fcmp olt double %i.br, 0.000000e+00
  br label %_ZN4Plot11itemCompareERK12_plot_item_tS2_.exit

_ZN4Plot11itemCompareERK12_plot_item_tS2_.exit:   ; preds = %bb.r, %bb.s, %bb.t
  %.0.i = phi i1 [ %i.bz, %bb.r ], [ %i.ca, %bb.s ], [ %i.cb, %bb.t ] ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bp, i64 32
  %i.cd = xor i64 %i.bo, -1
  %i.ce = add nsw i64 %.017.i.i, %i.cd
  %.sroa.012.1.i.i = select i1 %.0.i, ptr %.sroa.012.016.i.i, ptr %i.cc ; 2 uses
  %.1.i.i = select i1 %.0.i, i64 %i.bo, i64 %i.ce ; 2 uses
  %i.cf = icmp sgt i64 %.1.i.i, 0
  br i1 %i.cf, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIP12_plot_item_tSt6vectorIS2_SaIS2_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIP12_plot_item_tSt6vectorIS2_SaIS2_EEEES2_PFbRKS2_S9_EET_SC_SC_RKT0_T1_.exit, !llvm.loop !12

_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIP12_plot_item_tSt6vectorIS2_SaIS2_EEEES2_PFbRKS2_S9_EET_SC_SC_RKT0_T1_.exit: ; preds = %_ZN4Plot11itemCompareERK12_plot_item_tS2_.exit, %bb.p
  %.sroa.012.0.lcssa.i.i = phi ptr [ %i.bh, %bb.p ], [ %.sroa.012.1.i.i, %_ZN4Plot11itemCompareERK12_plot_item_tS2_.exit ]
  %i.cg = call ptr @_ZNSt6vectorI12_plot_item_tSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EERS5_(ptr noundef align 8 dereferenceable_or_null(24) %i.ac, ptr %.sroa.012.0.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(32) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.u

bb.u:                                             ; preds = %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIP12_plot_item_tSt6vectorIS2_SaIS2_EEEES2_PFbRKS2_S9_EET_SC_SC_RKT0_T1_.exit, %bb.g, %bb.f
  %.131 = phi i8 [ 1, %_ZSt11upper_boundIN9__gnu_cxx17__normal_iteratorIP12_plot_item_tSt6vectorIS2_SaIS2_EEEES2_PFbRKS2_S9_EET_SC_SC_RKT0_T1_.exit ], [ %.03048, %bb.g ], [ %.03048, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ch = load i32, ptr %i.o, align 8
  %i.ci = zext i32 %i.ch to i64
  %i.cj = icmp samesign ult i64 %indvars.iv.next, %i.ci
  br i1 %i.cj, label %bb.f, label %._crit_edge.loopexit, !llvm.loop !13

._crit_edge:                                      ; preds = %.preheader, %._crit_edge.loopexit, %bb.e, %bb.a, %bb.b, %bb.c, %bb.d
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %.preheader ], [ %i.ae, %._crit_edge.loopexit ]
  ret i32 %.1
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_get_finfo_ptr_array(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @fvalue_to_double(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @nstime_cmp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @nstime_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr ptr @_ZNSt6vectorI12_plot_item_tSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EERS5_(ptr noundef align 8 dereferenceable_or_null(24) %0, ptr %1, ptr noundef align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.7 = alloca [31 x i8], align 1            ; 4 uses
  %i.a = load ptr, ptr %0, align 8                ; 6 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 6 uses
  %i.g = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not25 = icmp eq ptr %1, null
  br i1 %.not25, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt21__glibcxx_assert_failPKciS0_S0_(ptr noundef nonnull @.str.9, i32 noundef 143, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNSt6vectorI12_plot_item_tSaIS0_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EERS5_, ptr noundef nonnull @.str.10) #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = icmp eq ptr %1, %i.f
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(32) %i.f, ptr noundef align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.j = load ptr, ptr %i.e, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 32
  store ptr %i.k, ptr %i.e, align 8
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %i.a, i64 %i.d     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %.sroa.4.8.copyload = load i8, ptr %2, align 8
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.8..sroa_idx, i64 31, i1 false)
  %i.m = getelementptr i8, ptr %i.f, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(32) %i.f, ptr noundef align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  %i.n = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 32
  store ptr %i.o, ptr %i.e, align 8
  %i.p = getelementptr i8, ptr %i.n, i64 -32      ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.b                       ; 3 uses
  %i.s = ashr exact i64 %i.r, 5                   ; 2 uses
  %i.t = icmp sgt i64 %i.s, 1
  br i1 %i.t, label %bb.g, label %bb.h, !prof !15

bb.g:                                             ; preds = %bb.f
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr [32 x i8], ptr %i.n, i64 %i.u
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.v, ptr align 8 %i.l, i64 %i.r, i1 false)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.w = icmp eq i64 %i.r, 32
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(32) %i.p, ptr noundef align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  store i8 %.sroa.4.8.copyload, ptr %i.l, align 8
  %.sroa.7.8..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.8..sroa_idx11, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.p

bb.k:                                             ; preds = %bb.a
  %i.x = getelementptr i8, ptr %i.a, i64 %i.d
  %i.y = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.z = sub i64 %i.y, %i.c                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775776
  br i1 %i.aa, label %bb.l, label %_ZNKSt6vectorI12_plot_item_tSaIS0_EE12_M_check_lenEmPKc.exit.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #21
  unreachable

_ZNKSt6vectorI12_plot_item_tSaIS0_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.k
  %i.ab = ashr exact i64 %i.z, 5                  ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 288230376151711743)
  %i.af = select i1 %i.ad, i64 288230376151711743, i64 %i.ae ; 2 uses
  %3 = shl nuw nsw i64 %i.af, 5
  %4 = tail call noalias noundef ptr @_Znwm(i64 noundef %3) #22 ; 4 uses
  %5 = getelementptr i8, ptr %4, i64 %i.d         ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(32) %5, ptr noundef align 8 dereferenceable(32) %2, i64 32, i1 false)
  %6 = icmp sgt i64 %i.d, 0
  br i1 %6, label %bb.m, label %_ZNSt6vectorI12_plot_item_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i

bb.m:                                             ; preds = %_ZNKSt6vectorI12_plot_item_tSaIS0_EE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %4, ptr align 8 %i.a, i64 %i.d, i1 false)
  br label %_ZNSt6vectorI12_plot_item_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i

_ZNSt6vectorI12_plot_item_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i: ; preds = %bb.m, %_ZNKSt6vectorI12_plot_item_tSaIS0_EE12_M_check_lenEmPKc.exit.i
  %i.ag = getelementptr i8, ptr %5, i64 32        ; 2 uses
  %i.ah = sub i64 %i.y, %i.b                      ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 0
  br i1 %i.ai, label %bb.n, label %_ZNSt6vectorI12_plot_item_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i

bb.n:                                             ; preds = %_ZNSt6vectorI12_plot_item_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ag, ptr align 8 %i.x, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorI12_plot_item_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i

_ZNSt6vectorI12_plot_item_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i: ; preds = %bb.n, %_ZNSt6vectorI12_plot_item_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  %.not.i17.i = icmp eq ptr %i.a, null
  br i1 %.not.i17.i, label %_ZNSt6vectorI12_plot_item_tSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorI12_plot_item_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i
  %i.aj = load ptr, ptr %i.g, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.al) #18
  br label %_ZNSt6vectorI12_plot_item_tSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit

_ZNSt6vectorI12_plot_item_tSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit: ; preds = %_ZNSt6vectorI12_plot_item_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i, %bb.o
  %i.am = getelementptr i8, ptr %i.ag, i64 %i.ah
  store ptr %4, ptr %0, align 8
  store ptr %i.am, ptr %i.e, align 8
  %i.an = getelementptr [32 x i8], ptr %4, i64 %i.af
  store ptr %i.an, ptr %i.g, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.e, %bb.j, %_ZNSt6vectorI12_plot_item_tSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit
  %i.ao = load ptr, ptr %0, align 8
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.d
  ret ptr %i.ap
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN8QCPGraph7addDataEdd(ptr noundef align 8 dereferenceable_or_null(313), double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK4Plot7makeCsvER11QTextStream(ptr noundef align 8 dereferenceable_or_null(200) %0, ptr noundef align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QString, align 16            ; 5 uses
  %3 = alloca %class.QString, align 16            ; 5 uses
  %4 = alloca %class.QString, align 16            ; 5 uses
  %5 = alloca %class.QString, align 16            ; 14 uses
  %6 = alloca %class.QByteArray, align 8          ; 10 uses
  %7 = alloca %class.QString, align 16            ; 8 uses
  %8 = alloca %class.QString, align 8             ; 11 uses
  %9 = alloca %class.QString, align 16            ; 10 uses
  %10 = alloca %class.QString, align 16           ; 10 uses
  %11 = alloca %class.QString, align 8            ; 9 uses
  %12 = alloca %class.QString, align 8            ; 9 uses
  %13 = alloca %class.QString, align 8            ; 9 uses
  %14 = alloca %class.QString, align 8            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.a = getelementptr i8, ptr %0, i64 48
  call void @_ZN7QString13toUtf8_helperERKS_(ptr dead_on_unwind nonnull writable sret(%class.QByteArray) align 8 %6, ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noalias !16
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noalias !16
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %4, i64 %i.e, ptr %i.c)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.f = load <2 x ptr>, ptr %4, align 16
  store <2 x ptr> %i.f, ptr %5, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = load i64, ptr %i.h, align 16
  store i64 %i.i, ptr %i.g, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.j = load ptr, ptr %6, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZN10QByteArrayD2Ev.exit, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i:       ; preds = %bb.b
  %i.k = atomicrmw sub ptr %i.j, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.k, 1
  br i1 %.not.i.i, label %bb.c, label %_ZN10QByteArrayD2Ev.exit

bb.c:                                             ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i
  %i.l = load ptr, ptr %6, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.l, i64 noundef 1, i64 noundef 8) #19
  br label %_ZN10QByteArrayD2Ev.exit

_ZN10QByteArrayD2Ev.exit:                         ; preds = %bb.b, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store ptr null, ptr %8, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.4, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 4, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, i64 1, ptr nonnull @.str.5)
          to label %bb.d unwind label %bb.r

bb.d:                                             ; preds = %_ZN10QByteArrayD2Ev.exit
  %i.o = load <2 x ptr>, ptr %3, align 16
  store <2 x ptr> %i.o, ptr %9, align 16
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i64, ptr %i.q, align 16
  store i64 %i.r, ptr %i.p, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %2, i64 2, ptr nonnull @.str.6)
          to label %bb.e unwind label %bb.s

bb.e:                                             ; preds = %bb.d
  %i.s = load <2 x ptr>, ptr %2, align 16
  store <2 x ptr> %i.s, ptr %10, align 16
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load i64, ptr %i.u, align 16
  store i64 %i.v, ptr %i.t, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.w = invoke noundef align 8 dereferenceable(24) ptr @_ZN7QString7replaceERKS_S1_N2Qt15CaseSensitivityE(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef 1)
          to label %bb.f unwind label %bb.t

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK7QString3argERKS_i5QChar(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %7, ptr noundef nonnull align 8 dereferenceable_or_null(24) %8, ptr noundef align 8 dereferenceable(24) %i.w, i32 noundef 0, i16 32)
          to label %bb.g unwind label %bb.t

bb.g:                                             ; preds = %bb.f
  %i.x = load <2 x ptr>, ptr %7, align 16
  %i.y = load <2 x ptr>, ptr %5, align 16
  %i.z = load ptr, ptr %5, align 16               ; 2 uses
  store <2 x ptr> %i.x, ptr %5, align 16
  store <2 x ptr> %i.y, ptr %7, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.g, align 16
  %i.ac = load i64, ptr %i.aa, align 16
  store i64 %i.ac, ptr %i.g, align 16
  store i64 %i.ab, ptr %i.aa, align 16
  %.not.i.i.i38 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i38, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.g
  %i.ad = atomicrmw sub ptr %i.z, i32 1 acq_rel, align 4
  %.not.i.i39 = icmp eq i32 %i.ad, 1
  br i1 %.not.i.i39, label %bb.h, label %_ZN7QStringD2Ev.exit

bb.h:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.ae = load ptr, ptr %7, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ae, i64 noundef 2, i64 noundef 8) #19
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.g, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.h
  %i.af = load ptr, ptr %10, align 16             ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i40, label %_ZN7QStringD2Ev.exit43, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i41

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i41:    ; preds = %_ZN7QStringD2Ev.exit
  %i.ag = atomicrmw sub ptr %i.af, i32 1 acq_rel, align 4
  %.not.i.i42 = icmp eq i32 %i.ag, 1
  br i1 %.not.i.i42, label %bb.i, label %_ZN7QStringD2Ev.exit43

bb.i:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i41
  %i.ah = load ptr, ptr %10, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ah, i64 noundef 2, i64 noundef 8) #19
  br label %_ZN7QStringD2Ev.exit43

_ZN7QStringD2Ev.exit43:                           ; preds = %_ZN7QStringD2Ev.exit, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i41, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.ai = load ptr, ptr %9, align 16              ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i44, label %_ZN7QStringD2Ev.exit47, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i45

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i45:    ; preds = %_ZN7QStringD2Ev.exit43
  %i.aj = atomicrmw sub ptr %i.ai, i32 1 acq_rel, align 4
  %.not.i.i46 = icmp eq i32 %i.aj, 1
  br i1 %.not.i.i46, label %bb.j, label %_ZN7QStringD2Ev.exit47

bb.j:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i45
  %i.ak = load ptr, ptr %9, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ak, i64 noundef 2, i64 noundef 8) #19
  br label %_ZN7QStringD2Ev.exit47

_ZN7QStringD2Ev.exit47:                           ; preds = %_ZN7QStringD2Ev.exit43, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i45, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.al = load ptr, ptr %8, align 8               ; 2 uses
  %.not.i.i.i48 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i48, label %_ZN17QArrayDataPointerIDsED2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i49

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i49:    ; preds = %_ZN7QStringD2Ev.exit47
  %i.am = atomicrmw sub ptr %i.al, i32 1 acq_rel, align 4
  %.not.i.i50 = icmp eq i32 %i.am, 1
  br i1 %.not.i.i50, label %bb.k, label %_ZN17QArrayDataPointerIDsED2Ev.exit

bb.k:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i49
  %i.an = load ptr, ptr %8, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.an, i64 noundef 2, i64 noundef 8) #19
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit

_ZN17QArrayDataPointerIDsED2Ev.exit:              ; preds = %bb.k, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i49, %_ZN7QStringD2Ev.exit47
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.ao = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEPKc(ptr noundef align 8 dereferenceable_or_null(16) %1, ptr noundef nonnull @.str.7)
          to label %bb.l unwind label %bb.x

bb.l:                                             ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit
  %i.ap = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.m unwind label %bb.x

bb.m:                                             ; preds = %bb.l
  %i.aq = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.ap, i8 noundef signext 10)
          to label %bb.n unwind label %bb.x       ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr i8, ptr %0, i64 176
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.at = getelementptr i8, ptr %0, i64 184       ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8
  %.not126 = icmp eq ptr %i.as, %i.au
  br i1 %.not126, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.av = getelementptr i8, ptr %0, i64 112
  br label %bb.y
end_hunk_0
