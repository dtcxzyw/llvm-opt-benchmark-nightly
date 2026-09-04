Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/strings?download=true
inline.NumInlined: 1871
inline.NumDeleted: 322
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZL19C_A_T_C_H_T_E_S_T_0v:bb.a
  invoke void @_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE17_M_realloc_insertIJmRA14_KcEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(14) @.str.32)
          to label %._ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit_crit_edge unwind label %bb.m

._ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit_crit_edge: ; preds = %bb.c
  %.pre85 = load ptr, ptr %i.j, align 8, !tbaa !17
  %.pre86 = load ptr, ptr %i.k, align 8, !tbaa !18
  br label %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit

_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit: ; preds = %._ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit_crit_edge, %._crit_edge.i.i.i.i23
  %i.z = phi ptr [ %.pre86, %._ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit_crit_edge ], [ %i.s, %._crit_edge.i.i.i.i23 ] ; 2 uses
  %i.aa = phi ptr [ %.pre85, %._ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit_crit_edge ], [ %i.y, %._crit_edge.i.i.i.i23 ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i64 4294967297, ptr %i.d, align 8, !tbaa !28
  %.not.i28 = icmp eq ptr %i.aa, %i.z
  br i1 %.not.i28, label %bb.d, label %._crit_edge.i.i.i.i29

._crit_edge.i.i.i.i29:                            ; preds = %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit
  store i64 4294967297, ptr %i.aa, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ac, ptr noundef nonnull align 1 dereferenceable(14) @.str.33, i64 13, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 13, ptr %i.ad, align 8, !tbaa !26
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 37
  store i8 0, ptr %i.ae, align 1, !tbaa !27
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 40 ; 2 uses
  store ptr %i.af, ptr %i.j, align 8, !tbaa !17
  br label %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit35

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit
  invoke void @_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE17_M_realloc_insertIJmRA14_KcEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 1 dereferenceable(14) @.str.33)
          to label %._ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit35_crit_edge unwind label %bb.n

._ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit35_crit_edge: ; preds = %bb.d
  %.pre87 = load ptr, ptr %i.j, align 8, !tbaa !17
  %.pre88 = load ptr, ptr %i.k, align 8, !tbaa !18
  br label %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit35

_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit35: ; preds = %._ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit35_crit_edge, %._crit_edge.i.i.i.i29
  %i.ag = phi ptr [ %.pre88, %._ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit35_crit_edge ], [ %i.z, %._crit_edge.i.i.i.i29 ] ; 2 uses
  %i.ah = phi ptr [ %.pre87, %._ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit35_crit_edge ], [ %i.af, %._crit_edge.i.i.i.i29 ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store i64 -1959047808420019671, ptr %i.e, align 8, !tbaa !28
  %.not.i36 = icmp eq ptr %i.ah, %i.ag
  br i1 %.not.i36, label %bb.e, label %._crit_edge.i.i.i.i37

._crit_edge.i.i.i.i37:                            ; preds = %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit35
  store i64 -1959047808420019671, ptr %i.ah, align 8, !tbaa !24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.aj, ptr noundef nonnull align 1 dereferenceable(14) @.str.34, i64 13, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 13, ptr %i.ak, align 8, !tbaa !26
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 37
  store i8 0, ptr %i.al, align 1, !tbaa !27
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 40 ; 2 uses
  store ptr %i.am, ptr %i.j, align 8, !tbaa !17
  br label %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit43

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit35
  invoke void @_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE17_M_realloc_insertIJmRA14_KcEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(14) @.str.34)
          to label %._ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit43_crit_edge unwind label %bb.o

._ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit43_crit_edge: ; preds = %bb.e
  %.pre89 = load ptr, ptr %i.j, align 8, !tbaa !17
  %.pre90 = load ptr, ptr %i.k, align 8, !tbaa !18
  br label %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit43

_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit43: ; preds = %._ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit43_crit_edge, %._crit_edge.i.i.i.i37
  %i.an = phi ptr [ %.pre90, %._ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit43_crit_edge ], [ %i.ag, %._crit_edge.i.i.i.i37 ] ; 2 uses
  %i.ao = phi ptr [ %.pre89, %._ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit43_crit_edge ], [ %i.am, %._crit_edge.i.i.i.i37 ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  store i64 -6474207839019268097, ptr %i.f, align 8, !tbaa !28
  %.not.i44 = icmp eq ptr %i.ao, %i.an
  br i1 %.not.i44, label %bb.f, label %._crit_edge.i.i.i.i45

._crit_edge.i.i.i.i45:                            ; preds = %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit43
  store i64 -6474207839019268097, ptr %i.ao, align 8, !tbaa !24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 2 uses
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.aq, ptr noundef nonnull align 1 dereferenceable(14) @.str.35, i64 13, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 13, ptr %i.ar, align 8, !tbaa !26
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 37
  store i8 0, ptr %i.as, align 1, !tbaa !27
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 40 ; 2 uses
  store ptr %i.at, ptr %i.j, align 8, !tbaa !17
  br label %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit51

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit43
  invoke void @_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE17_M_realloc_insertIJmRA14_KcEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 1 dereferenceable(14) @.str.35)
          to label %._ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit51_crit_edge unwind label %bb.p

._ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit51_crit_edge: ; preds = %bb.f
  %.pre91 = load ptr, ptr %i.j, align 8, !tbaa !17
  %.pre92 = load ptr, ptr %i.k, align 8, !tbaa !18
  br label %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit51

_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit51: ; preds = %._ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit51_crit_edge, %._crit_edge.i.i.i.i45
  %i.au = phi ptr [ %.pre92, %._ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit51_crit_edge ], [ %i.an, %._crit_edge.i.i.i.i45 ] ; 2 uses
  %i.av = phi ptr [ %.pre91, %._ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit51_crit_edge ], [ %i.at, %._crit_edge.i.i.i.i45 ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  store i64 -1281605974495210491, ptr %i.g, align 8, !tbaa !28
  %.not.i52 = icmp eq ptr %i.av, %i.au
  br i1 %.not.i52, label %bb.g, label %._crit_edge.i.i.i.i53

._crit_edge.i.i.i.i53:                            ; preds = %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit51
  store i64 -1281605974495210491, ptr %i.av, align 8, !tbaa !24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 2 uses
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ax, ptr noundef nonnull align 1 dereferenceable(14) @.str.36, i64 13, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 13, ptr %i.ay, align 8, !tbaa !26
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 37
  store i8 0, ptr %i.az, align 1, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 40 ; 2 uses
  store ptr %i.ba, ptr %i.j, align 8, !tbaa !17
  br label %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit59

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit51
  invoke void @_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE17_M_realloc_insertIJmRA14_KcEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(14) @.str.36)
          to label %._ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit59_crit_edge unwind label %bb.q

._ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit59_crit_edge: ; preds = %bb.g
  %.pre93 = load ptr, ptr %i.j, align 8, !tbaa !17
  %.pre94 = load ptr, ptr %i.k, align 8, !tbaa !18
  br label %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit59

_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit59: ; preds = %._ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit59_crit_edge, %._crit_edge.i.i.i.i53
  %i.bb = phi ptr [ %.pre94, %._ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit59_crit_edge ], [ %i.au, %._crit_edge.i.i.i.i53 ] ; 2 uses
  %i.bc = phi ptr [ %.pre93, %._ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit59_crit_edge ], [ %i.ba, %._crit_edge.i.i.i.i53 ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  store i64 1442670203212048524, ptr %i.h, align 8, !tbaa !28
  %.not.i60 = icmp eq ptr %i.bc, %i.bb
  br i1 %.not.i60, label %bb.h, label %._crit_edge.i.i.i.i61

._crit_edge.i.i.i.i61:                            ; preds = %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit59
  store i64 1442670203212048524, ptr %i.bc, align 8, !tbaa !24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.be, ptr noundef nonnull align 1 dereferenceable(14) @.str.37, i64 13, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i64 13, ptr %i.bf, align 8, !tbaa !26
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 37
  store i8 0, ptr %i.bg, align 1, !tbaa !27
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 2 uses
  store ptr %i.bh, ptr %i.j, align 8, !tbaa !17
  br label %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJlRA14_KcEEERS7_DpOT_.exit

bb.h:                                             ; preds = %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit59
  invoke void @_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE17_M_realloc_insertIJlRA14_KcEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.bc, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(14) @.str.37)
          to label %._ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJlRA14_KcEEERS7_DpOT_.exit_crit_edge unwind label %bb.r

._ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJlRA14_KcEEERS7_DpOT_.exit_crit_edge: ; preds = %bb.h
  %.pre95 = load ptr, ptr %i.j, align 8, !tbaa !17
  %.pre96 = load ptr, ptr %i.k, align 8, !tbaa !18
  br label %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJlRA14_KcEEERS7_DpOT_.exit

_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJlRA14_KcEEERS7_DpOT_.exit: ; preds = %._ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJlRA14_KcEEERS7_DpOT_.exit_crit_edge, %._crit_edge.i.i.i.i61
  %i.bi = phi ptr [ %.pre96, %._ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJlRA14_KcEEERS7_DpOT_.exit_crit_edge ], [ %i.bb, %._crit_edge.i.i.i.i61 ]
  %i.bj = phi ptr [ %.pre95, %._ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJlRA14_KcEEERS7_DpOT_.exit_crit_edge ], [ %i.bh, %._crit_edge.i.i.i.i61 ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  store i64 -1, ptr %i.i, align 8, !tbaa !28
  %.not.i66 = icmp eq ptr %i.bj, %i.bi
  br i1 %.not.i66, label %bb.i, label %._crit_edge.i.i.i.i67

._crit_edge.i.i.i.i67:                            ; preds = %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJlRA14_KcEEERS7_DpOT_.exit
  store i64 -1, ptr %i.bj, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.bl, ptr noundef nonnull align 1 dereferenceable(14) @.str.38, i64 13, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i64 13, ptr %i.bm, align 8, !tbaa !26
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 37
  store i8 0, ptr %i.bn, align 1, !tbaa !27
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 40 ; 2 uses
  store ptr %i.bo, ptr %i.j, align 8, !tbaa !17
  br label %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit73

bb.i:                                             ; preds = %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJlRA14_KcEEERS7_DpOT_.exit
  invoke void @_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE17_M_realloc_insertIJmRA14_KcEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 1 dereferenceable(14) @.str.38)
          to label %._ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit73_crit_edge unwind label %bb.s

._ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit73_crit_edge: ; preds = %bb.i
  %.pre97 = load ptr, ptr %i.j, align 8, !tbaa !83
  br label %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit73

_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit73: ; preds = %._ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit73_crit_edge, %._crit_edge.i.i.i.i67
  %i.bp = phi ptr [ %.pre97, %._ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit73_crit_edge ], [ %i.bo, %._crit_edge.i.i.i.i67 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  %i.bq = load ptr, ptr %1, align 8, !tbaa !83    ; 3 uses
  %.not82 = icmp eq ptr %i.bq, %i.bp
  br i1 %.not82, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit73
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 9
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 58
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.t

._crit_edge.loopexit:                             ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit
  %.pre98 = load ptr, ptr %1, align 8, !tbaa !29
  %.pre99 = load ptr, ptr %i.j, align 8, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit73
  %8 = phi ptr [ %.pre99, %._crit_edge.loopexit ], [ %i.bp, %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit73 ] ; 2 uses
  %9 = phi ptr [ %.pre98, %._crit_edge.loopexit ], [ %i.bq, %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE12emplace_backIJmRA14_KcEEERS7_DpOT_.exit73 ] ; 3 uses
  %.not4.i.i.i = icmp eq ptr %9, %8
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ck, %_ZSt8_DestroyISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i ], [ %9, %._crit_edge ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !30 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZSt8_DestroyISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !27
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #21
  br label %_ZSt8_DestroyISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ck, %8
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !29
  br label %_ZSt8_DestroyIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %10 = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %9, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %10, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i
  %i.cl = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %10 to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %10, i64 noundef %i.co) #21
  br label %_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_EvT_S9_RSaIT0_E.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret void

bb.k:                                             ; preds = %bb.a
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.ak

bb.l:                                             ; preds = %bb.b
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.ak

bb.m:                                             ; preds = %bb.c
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.ak

bb.n:                                             ; preds = %bb.d
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.ak

bb.o:                                             ; preds = %bb.e
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %bb.ak

bb.p:                                             ; preds = %bb.f
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  br label %bb.ak

bb.q:                                             ; preds = %bb.g
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  br label %bb.ak

bb.r:                                             ; preds = %bb.h
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  br label %bb.ak

bb.s:                                             ; preds = %bb.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  br label %bb.ak

bb.t:                                             ; preds = %.lr.ph, %_ZN5Catch16AssertionHandlerD2Ev.exit
  %.sroa.079.083 = phi ptr [ %i.bq, %.lr.ph ], [ %i.eh, %_ZN5Catch16AssertionHandlerD2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr @.str.39, ptr %3, align 8
  store i64 7, ptr %i.br, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr @.str, ptr %4, align 8, !tbaa !33
  store i64 35, ptr %i.bs, align 8, !tbaa !34
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.40) #20
  %i.cy = load ptr, ptr %5, align 8
  %i.cz = load i64, ptr %i.bt, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %i.cy, i64 %i.cz, i32 noundef 1)
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.da = load i64, ptr %.sroa.079.083, align 8, !tbaa !24
  call void @_ZN5vcpkg7Strings10b32_encodeB5cxx11Em(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, i64 noundef %i.da) #20
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.079.083, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  %i.dc = load i64, ptr %i.bu, align 8, !tbaa !26, !noalias !84 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.079.083, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !26, !noalias !84
  %i.df = icmp eq i64 %i.dc, %i.de
  br i1 %i.df, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.dg = icmp eq i64 %i.dc, 0
  br i1 %i.dg, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dh = load ptr, ptr %i.db, align 8, !tbaa !30, !noalias !84
  %i.di = load ptr, ptr %7, align 8, !tbaa !30, !noalias !84
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.di, ptr %i.dh, i64 %i.dc), !noalias !84
  %i.dj = icmp eq i32 %bcmp.i.i.i, 0
  %i.dk = zext i1 %i.dj to i8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.dl = phi i8 [ 0, %bb.u ], [ %i.dk, %bb.w ], [ 1, %bb.v ]
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.43) #20, !noalias !84
  %i.dm = load ptr, ptr %0, align 8, !noalias !84
  %i.dn = load i64, ptr %i.bv, align 8, !noalias !84
  store i8 1, ptr %i.bw, align 8, !tbaa !37, !alias.scope !84
  store i8 %i.dl, ptr %i.bx, align 1, !tbaa !38, !alias.scope !84
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EE, i64 16), ptr %6, align 8, !tbaa !40, !alias.scope !84
  store ptr %7, ptr %i.by, align 8, !tbaa !42, !alias.scope !84
  store ptr %i.dm, ptr %i.bz, align 8, !tbaa !43, !alias.scope !84
  store i64 %i.dn, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !28, !alias.scope !84
  store ptr %i.db, ptr %i.ca, align 8, !tbaa !42, !alias.scope !84
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(10) %6)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #20
  %i.do = load ptr, ptr %7, align 8, !tbaa !30    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.cb
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  %i.dq = load i64, ptr %i.cb, align 8, !tbaa !27
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.ac

bb.z:                                             ; preds = %bb.t
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.aj

bb.aa:                                            ; preds = %bb.x
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #20
  %.06 = extractvalue { ptr, i32 } %i.dt, 0
  %i.du = load ptr, ptr %7, align 8, !tbaa !30    ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.cb
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.aa
  %i.dw = load i64, ptr %i.cb, align 8, !tbaa !27
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.dy = call ptr @__cxa_begin_catch(ptr %.06) #20 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.ab unwind label %bb.ag

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  invoke void @__cxa_end_catch()
          to label %bb.ac unwind label %bb.ah

bb.ac:                                            ; preds = %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.ad unwind label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.dz = load i8, ptr %i.cc, align 2, !tbaa !50, !range !51, !noundef !52
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %_ZN5Catch16AssertionHandlerD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eb = load ptr, ptr %i.cd, align 8, !tbaa !53, !nonnull !52, !align !54 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !40
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 112
  %i.ee = load ptr, ptr %i.ed, align 8
  invoke void %i.ee(ptr noundef nonnull align 8 dereferenceable(8) %i.eb, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0
  call void @__clang_call_terminate(ptr %i.eg) #22
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit:             ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.079.083, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.eh, %i.bp
  br i1 %.not, label %._crit_edge.loopexit, label %bb.t

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ai unwind label %bb.al

bb.ah:                                            ; preds = %bb.ac, %bb.ab
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %.pn9 = phi { ptr, i32 } [ %i.ej, %bb.ah ], [ %i.ei, %bb.ag ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #20
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.z
  %.pn9.pn = phi { ptr, i32 } [ %.pn9, %bb.ai ], [ %i.ds, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %.pn9.pn.pn = phi { ptr, i32 } [ %.pn9.pn, %bb.aj ], [ %i.cx, %bb.s ], [ %i.cw, %bb.r ], [ %i.cv, %bb.q ], [ %i.cu, %bb.p ], [ %i.ct, %bb.o ], [ %i.cs, %bb.n ], [ %i.cr, %bb.m ], [ %i.cq, %bb.l ], [ %i.cp, %bb.k ]
  call void @_ZNSt6vectorISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %.pn9.pn.pn

bb.al:                                            ; preds = %bb.ag
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #22
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN5Catch11NameAndTagsC1ERKNS_9StringRefES3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN5Catch7AutoRegC1EPNS_12ITestInvokerERKNS_14SourceLineInfoERKNS_9StringRefERKNS_11NameAndTagsE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind
declare void @_ZN5Catch7AutoRegD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal void @_ZL19C_A_T_C_H_T_E_S_T_2v() #1 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit:
  %0 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %1 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %4 = alloca %"class.Catch::StringRef", align 8  ; 6 uses
  %5 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %6 = alloca %"class.Catch::StringRef", align 8  ; 3 uses
  %7 = alloca %"class.Catch::BinaryExpr.4", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"struct.vcpkg::StringView", align 8 ; 3 uses
  %10 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %11 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %12 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %13 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %14 = alloca %"class.Catch::BinaryExpr.5", align 8 ; 13 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 127, i8 noundef signext 0)
  %i.b = load ptr, ptr %2, align 8, !tbaa !30     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !26   ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %.not5.i = icmp samesign eq i64 %i.d, 0
  br i1 %.not5.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_T0_.exit, label %iter.check

iter.check:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %min.iters.check = icmp ult i64 %i.d, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check53 = icmp ult i64 %i.d, 32
  br i1 %min.iters.check53, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %i.d, 28
  %n.vec = and i64 %i.d, -32                      ; 5 uses
  %i.g = trunc i64 %n.vec to i8
  %i.h = or disjoint i8 %i.g, 1                   ; 2 uses
  %i.i = getelementptr i8, ptr %i.b, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i8> [ <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <16 x i8> %vec.ind, splat (i8 16)
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %i.j = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %vec.ind, ptr %next.gep, align 1, !tbaa !27
  store <16 x i8> %step.add, ptr %i.j, align 1, !tbaa !27
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <16 x i8> %vec.ind, splat (i8 32)
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_T0_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !92

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i8 [ %i.h, %vec.epilog.iter.check ], [ 1, %vector.main.loop.iter.check ]
  %n.vec55 = and i64 %i.d, -4                     ; 4 uses
  %i.l = trunc i64 %n.vec55 to i8
  %i.m = or disjoint i8 %i.l, 1
  %i.n = getelementptr i8, ptr %i.b, i64 %n.vec55
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %bc.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i8> %broadcast.splat, <i8 0, i8 1, i8 2, i8 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index56 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next59, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind57 = phi <4 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next60, %vec.epilog.vector.body ] ; 2 uses
  %next.gep58 = getelementptr i8, ptr %i.b, i64 %index56
  store <4 x i8> %vec.ind57, ptr %next.gep58, align 1, !tbaa !27
  %index.next59 = add nuw i64 %index56, 4         ; 2 uses
  %vec.ind.next60 = add <4 x i8> %vec.ind57, splat (i8 4)
  %i.o = icmp eq i64 %index.next59, %n.vec55
  br i1 %i.o, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !86

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n61 = icmp eq i64 %i.d, %n.vec55
  br i1 %cmp.n61, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.07.i.ph = phi i8 [ 1, %iter.check ], [ %i.h, %vec.epilog.iter.check ], [ %i.m, %vec.epilog.middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.i, %vec.epilog.iter.check ], [ %i.n, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.07.i = phi i8 [ %i.p, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.02.06.i = phi ptr [ %i.q, %.lr.ph.i ], [ %.sroa.02.06.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i8 %.07.i, ptr %.sroa.02.06.i, align 1, !tbaa !27
  %i.p = add i8 %.07.i, 1
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.e
  br i1 %.not.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_T0_.exit, label %.lr.ph.i, !llvm.loop !87

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_T0_.exit: ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr @.str.39, ptr %4, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 7, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr @.str, ptr %5, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 46, ptr %i.s, align 8, !tbaa !34
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.44) #20
  %i.t = load ptr, ptr %6, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.v = load i64, ptr %i.u, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %i.t, i64 %i.v, i32 noundef 1)
          to label %bb.a unwind label %bb.e

bb.a:                                             ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_T0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  %i.w = load ptr, ptr %9, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.y = load i64, ptr %i.x, align 8
  call void @_ZN5vcpkg7Strings14percent_encodeB5cxx11ENS_10StringViewE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr %i.w, i64 %i.y) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !26, !noalias !93
  %i.ab = icmp eq i64 %i.aa, 249
  br i1 %i.ab, label %bb.b, label %bb.c
end_hunk_0
