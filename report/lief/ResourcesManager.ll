Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/ResourcesManager?download=true
inline.NumInlined: 5055
inline.NumDeleted: 1845
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 55
begin_hunk_0_@_ZNK4LIEF2PE16ResourcesManager7dialogsEv:bb.a

_ZSt8_DestroyISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4LIEF2PE14ResourceDialogEEclEPS2_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.g
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EEEvT_S8_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EEEvT_S8_.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  store ptr %i.e, ptr %i.f, align 8, !tbaa !228
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EESaIS6_EE5clearEv.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EESaIS6_EE5clearEv.exit: ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit, %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EEEvT_S8_.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !71   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73, !noalias !692 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73, !noalias !692 ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  %i.v = ashr exact i64 %i.u, 3                   ; 3 uses
  %.not.i = icmp eq ptr %i.r, %i.p
  br i1 %.not.i, label %.critedge.i.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EESaIS6_EE5clearEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val1.val.i.i.i.peel.i = load ptr, ptr %i.p, align 8, !tbaa !74, !noalias !693
  %i.x = getelementptr i8, ptr %.val1.val.i.i.i.peel.i, i64 12
  %.val1.val.val.i.i.i.peel.i = load i32, ptr %i.x, align 4, !tbaa !81, !noalias !693
  %i.y = icmp eq i32 %.val1.val.val.i.i.i.peel.i, 5
  br i1 %i.y, label %.critedge.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.preheader.i.i.i
  %.not15.peel.i = icmp eq i64 %i.u, 8
  br i1 %.not15.peel.i, label %.critedge.i.i.i.i, label %.lr.ph.i.i.i.peel.next.i

.lr.ph.i.i.i.peel.next.i:                         ; preds = %bb.c
  %.val1.val.i.i.i.peel20.i = load ptr, ptr %i.w, align 8, !tbaa !74, !noalias !693
  %i.z = getelementptr i8, ptr %.val1.val.i.i.i.peel20.i, i64 12
  %.val1.val.val.i.i.i.peel21.i = load i32, ptr %i.z, align 4, !tbaa !81, !noalias !693
  %i.aa = icmp eq i32 %.val1.val.val.i.i.i.peel21.i, 5
  br i1 %i.aa, label %.critedge.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.peel.next.i
  %.not15.peel22.i = icmp eq i64 %i.u, 16
  br i1 %.not15.peel22.i, label %.critedge.i.i.i.i, label %.lr.ph.i.i.i.i17

.lr.ph.i.i.i.i17:                                 ; preds = %bb.d, %bb.e
  %i.ab = phi i64 [ %i.af, %bb.e ], [ 2, %bb.d ]  ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ab
  %.val1.val.i.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !74, !noalias !693
  %i.ad = getelementptr i8, ptr %.val1.val.i.i.i.i, i64 12
  %.val1.val.val.i.i.i.i = load i32, ptr %i.ad, align 4, !tbaa !81, !noalias !693
  %i.ae = icmp eq i32 %.val1.val.val.i.i.i.i, 5
  br i1 %i.ae, label %.critedge.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.af = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %.not15.i = icmp eq i64 %i.af, %i.v
  br i1 %.not15.i, label %.critedge.i.i.i.i, label %.lr.ph.i.i.i.i17, !llvm.loop !0

.critedge.i.i.i.i:                                ; preds = %bb.e, %.lr.ph.i.i.i.i17, %bb.d, %.lr.ph.i.i.i.peel.next.i, %bb.c, %.lr.ph.i.preheader.i.i.i, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EESaIS6_EE5clearEv.exit
  %.lcssa.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EESaIS6_EE5clearEv.exit ], [ 1, %.lr.ph.i.i.i.peel.next.i ], [ 2, %bb.d ], [ 0, %.lr.ph.i.preheader.i.i.i ], [ 1, %bb.c ], [ %i.ab, %.lr.ph.i.i.i.i17 ], [ %i.v, %bb.e ] ; 2 uses
  %i.ag = icmp eq i64 %.lcssa.i.i.i.i, %i.v
  br i1 %i.ag, label %_ZNK4LIEF2PE16ResourcesManager13get_node_typeENS1_4TYPEE.exit.thread, label %_ZNK4LIEF2PE16ResourcesManager13get_node_typeENS1_4TYPEE.exit

_ZNK4LIEF2PE16ResourcesManager13get_node_typeENS1_4TYPEE.exit: ; preds = %.critedge.i.i.i.i
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.lcssa.i.i.i.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !74 ; 4 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZNK4LIEF2PE16ResourcesManager13get_node_typeENS1_4TYPEE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK4LIEF2PE16ResourcesManager13get_node_typeENS1_4TYPEE.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !94
  %.not = icmp eq i32 %i.al, 2
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.177) #25
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.an, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 2, ptr nonnull @.str.21, i64 39)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZNK4LIEF2PE16ResourcesManager13get_node_typeENS1_4TYPEE.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 48 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !73, !noalias !694 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 56 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !103
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !203 ; 2 uses
  %.not39 = icmp eq ptr %i.ar, %i.ap
  br i1 %.not39, label %._crit_edge38, label %_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit.lr.ph

_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit.lr.ph: ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit

._crit_edge38:                                    ; preds = %bb.s, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZNK4LIEF2PE16ResourcesManager13get_node_typeENS1_4TYPEE.exit.thread

_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit: ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit.lr.ph, %bb.s
  %i.av = phi ptr [ %i.ar, %_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit.lr.ph ], [ %i.en, %bb.s ]
  %i.aw = phi ptr [ %i.ap, %_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit.lr.ph ], [ %i.eq, %bb.s ]
  %storemerge37 = phi i64 [ 0, %_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit.lr.ph ], [ %i.ep, %bb.s ] ; 3 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %storemerge37
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !74 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !94
  %i.bb = icmp ne i32 %i.ba, 2
  %i.bc = icmp eq ptr %i.ay, null
  %i.bd = or i1 %i.bc, %i.bb
  br i1 %i.bd, label %bb.s, label %bb.i

bb.i:                                             ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 48 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !73, !noalias !695 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 56 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !103
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !203
  %.not40 = icmp eq ptr %i.bh, %i.bf
  br i1 %.not40, label %._crit_edge, label %_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit22

._crit_edge.loopexit:                             ; preds = %bb.r
  %.pre44.pre = load i64, ptr %i.a, align 8, !tbaa !103
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.i
  %.pre44 = phi i64 [ %.pre44.pre, %._crit_edge.loopexit ], [ %storemerge37, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %.pre45 = load ptr, ptr %i.aq, align 8, !tbaa !203
  br label %bb.s

_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit22: ; preds = %bb.i, %bb.r
  %i.bi = phi ptr [ %i.eh, %bb.r ], [ %i.bf, %bb.i ]
  %storemerge1535 = phi i64 [ %i.ef, %bb.r ], [ 0, %bb.i ]
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %storemerge1535
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !74 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !94
  %i.bn = icmp ne i32 %i.bm, 1
  %i.bo = icmp eq ptr %i.bk, null
  %i.bp = or i1 %i.bo, %i.bn
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit22
  %i.bq = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.177) #25
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmS3_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.br, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %2, i32 noundef 2, ptr nonnull @.str.22, i64 36, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.r

bb.k:                                             ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN4LIEF2PE14ResourceDialog5parseERKNS0_12ResourceDataE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.43") align 8 %4, ptr noundef nonnull align 8 dereferenceable(116) %i.bk) #25
  %i.bs = load ptr, ptr %4, align 8, !tbaa !231   ; 5 uses
  %i.bt = load ptr, ptr %i.as, align 8, !tbaa !231 ; 3 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EEEvT_S8_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 3                 ; 2 uses
  %i.bz = icmp sgt i64 %i.by, 0
  br i1 %i.bz, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt20back_insert_iteratorISC_EET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.l
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !228
  %.pre41 = load ptr, ptr %i.at, align 8, !tbaa !232
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %_ZNSt20back_insert_iteratorISt6vectorISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS4_EESaIS7_EEEaSEOS7_.exit.i.i.i.i.i
  %i.ca = phi ptr [ %i.dn, %_ZNSt20back_insert_iteratorISt6vectorISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS4_EESaIS7_EEEaSEOS7_.exit.i.i.i.i.i ], [ %.pre41, %.lr.ph.i.i.i.i.i.preheader ] ; 5 uses
  %i.cb = phi ptr [ %i.do, %_ZNSt20back_insert_iteratorISt6vectorISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS4_EESaIS7_EEEaSEOS7_.exit.i.i.i.i.i ], [ %.pre, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.07.i.i.i.i.i = phi i64 [ %i.dq, %_ZNSt20back_insert_iteratorISt6vectorISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS4_EESaIS7_EEEaSEOS7_.exit.i.i.i.i.i ], [ %i.by, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.056.i.i.i.i.i = phi ptr [ %i.dp, %_ZNSt20back_insert_iteratorISt6vectorISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS4_EESaIS7_EEEaSEOS7_.exit.i.i.i.i.i ], [ %i.bs, %.lr.ph.i.i.i.i.i.preheader ] ; 5 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cb, %i.ca
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cc = load i64, ptr %.056.i.i.i.i.i, align 8, !tbaa !230
  store i64 %i.cc, ptr %i.cb, align 8, !tbaa !230
  store ptr null, ptr %.056.i.i.i.i.i, align 8, !tbaa !230
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  store ptr %i.cd, ptr %i.f, align 8, !tbaa !228
  br label %_ZNSt20back_insert_iteratorISt6vectorISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS4_EESaIS7_EEEaSEOS7_.exit.i.i.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ce = load ptr, ptr %i.d, align 8, !tbaa !227 ; 10 uses
  %i.cf = ptrtoint ptr %i.ca to i64               ; 3 uses
  %i.cg = ptrtoint ptr %i.ce to i64               ; 4 uses
  %i.ch = sub i64 %i.cf, %i.cg                    ; 3 uses
  %i.ci = icmp eq i64 %i.ch, 9223372036854775800
  br i1 %i.ci, label %bb.o, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #26
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.n
  %i.cj = ashr exact i64 %i.ch, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cj, i64 1)
  %i.ck = add nsw i64 %.sroa.speculated.i.i, %i.cj ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.cj
  %i.cm = call i64 @llvm.umin.i64(i64 %i.ck, i64 1152921504606846975)
  %i.cn = select i1 %i.cl, i64 1152921504606846975, i64 %i.cm ; 3 uses
  %.not.i.i24 = icmp ne i64 %i.cn, 0
  call void @llvm.assume(i1 %.not.i.i24)
  %i.co = shl nuw nsw i64 %i.cn, 3
  %i.cp = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #27 ; 10 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.ch
  %i.cr = load i64, ptr %.056.i.i.i.i.i, align 8, !tbaa !230
  store i64 %i.cr, ptr %i.cq, align 8, !tbaa !230
  store ptr null, ptr %.056.i.i.i.i.i, align 8, !tbaa !230
  %.not10.i.i.i.i = icmp eq ptr %i.ce, %i.ca
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i25.preheader

.lr.ph.i.i.i.i25.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.cs = add i64 %i.cf, -8
  %i.ct = sub i64 %i.cs, %i.cg                    ; 2 uses
  %i.cu = lshr i64 %i.ct, 3
  %i.cv = add nuw nsw i64 %i.cu, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ct, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i25.preheader85, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i25.preheader
  %scevgep = getelementptr i8, ptr %i.cp, i64 8
  %5 = add i64 %i.cf, -8
  %6 = sub i64 %5, %i.cg
  %i.cw = and i64 %6, -8                          ; 2 uses
  %scevgep79 = getelementptr i8, ptr %scevgep, i64 %i.cw
  %scevgep80 = getelementptr i8, ptr %i.ce, i64 8
  %scevgep81 = getelementptr i8, ptr %scevgep80, i64 %i.cw
  %bound0 = icmp ult ptr %i.cp, %scevgep81
  %bound1 = icmp ult ptr %i.ce, %scevgep79
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i25.preheader85, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cv, 4611686018427387900     ; 3 uses
  %i.cx = shl i64 %n.vec, 3                       ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cp, i64 %i.cx  ; 2 uses
  %i.cz = getelementptr i8, ptr %i.ce, i64 %i.cx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.da = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cp, i64 %i.da ; 2 uses
  %next.gep82 = getelementptr i8, ptr %i.ce, i64 %i.da ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !696)
  call void @llvm.experimental.noalias.scope.decl(metadata !697)
  %i.db = getelementptr i8, ptr %next.gep82, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep82, align 8, !tbaa !230, !alias.scope !698
  %wide.load83 = load <2 x i64>, ptr %i.db, align 8, !tbaa !230, !alias.scope !698
  %i.dc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !230, !alias.scope !699, !noalias !700
  store <2 x i64> %wide.load83, ptr %i.dc, align 8, !tbaa !230, !alias.scope !699, !noalias !700
  %i.dd = getelementptr i8, ptr %next.gep82, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep82, align 8, !tbaa !230, !alias.scope !698
  store <2 x ptr> splat (ptr null), ptr %i.dd, align 8, !tbaa !230, !alias.scope !698
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !687

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cv, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i25.preheader85

.lr.ph.i.i.i.i25.preheader85:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i25.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.cp, %vector.memcheck ], [ %i.cp, %.lr.ph.i.i.i.i25.preheader ], [ %i.cy, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ce, %vector.memcheck ], [ %i.ce, %.lr.ph.i.i.i.i25.preheader ], [ %i.cz, %middle.block ]
  br label %.lr.ph.i.i.i.i25

.lr.ph.i.i.i.i25:                                 ; preds = %.lr.ph.i.i.i.i25.preheader85, %.lr.ph.i.i.i.i25
  %.012.i.i.i.i = phi ptr [ %i.dh, %.lr.ph.i.i.i.i25 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i25.preheader85 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dg, %.lr.ph.i.i.i.i25 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i25.preheader85 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !696)
  call void @llvm.experimental.noalias.scope.decl(metadata !697)
  %i.df = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !230, !alias.scope !697
  store i64 %i.df, ptr %.012.i.i.i.i, align 8, !tbaa !230, !alias.scope !696
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !230, !alias.scope !697
  %i.dg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i26 = icmp eq ptr %i.dg, %i.ca
  br i1 %.not.i.i.i.i26, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i25, !llvm.loop !688

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i25, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cp, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.cy, %middle.block ], [ %i.dh, %.lr.ph.i.i.i.i25 ]
  %i.di = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.ce, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.dj = load ptr, ptr %i.at, align 8, !tbaa !232
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = sub i64 %i.dk, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.dl) #28
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.p
  store ptr %i.cp, ptr %i.d, align 8, !tbaa !227
  store ptr %i.di, ptr %i.f, align 8, !tbaa !228
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cn ; 2 uses
  store ptr %i.dm, ptr %i.at, align 8, !tbaa !232
  br label %_ZNSt20back_insert_iteratorISt6vectorISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS4_EESaIS7_EEEaSEOS7_.exit.i.i.i.i.i

_ZNSt20back_insert_iteratorISt6vectorISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS4_EESaIS7_EEEaSEOS7_.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.m
  %i.dn = phi ptr [ %i.dm, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit ], [ %i.ca, %bb.m ]
  %i.do = phi ptr [ %i.di, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit ], [ %i.cd, %bb.m ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 8
  %i.dq = add nsw i64 %.07.i.i.i.i.i, -1
  %i.dr = icmp sgt i64 %.07.i.i.i.i.i, 1
  br i1 %i.dr, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt20back_insert_iteratorISC_EET0_T_SH_SG_.exit.loopexit, !llvm.loop !689

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt20back_insert_iteratorISC_EET0_T_SH_SG_.exit.loopexit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS4_EESaIS7_EEEaSEOS7_.exit.i.i.i.i.i
  %.pre42 = load ptr, ptr %4, align 8, !tbaa !227
  %.pre43 = load ptr, ptr %i.as, align 8, !tbaa !228
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt20back_insert_iteratorISC_EET0_T_SH_SG_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt20back_insert_iteratorISC_EET0_T_SH_SG_.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt20back_insert_iteratorISC_EET0_T_SH_SG_.exit.loopexit, %bb.l
  %i.ds = phi ptr [ %.pre43, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt20back_insert_iteratorISC_EET0_T_SH_SG_.exit.loopexit ], [ %i.bt, %bb.l ] ; 2 uses
  %i.dt = phi ptr [ %.pre42, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt20back_insert_iteratorISC_EET0_T_SH_SG_.exit.loopexit ], [ %i.bs, %bb.l ] ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.dt, %i.ds
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EEEvT_S8_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt20back_insert_iteratorISC_EET0_T_SH_SG_.exit, %_ZSt8_DestroyISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dy, %_ZSt8_DestroyISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.dt, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt20back_insert_iteratorISC_EET0_T_SH_SG_.exit ] ; 2 uses
  %i.du = load ptr, ptr %.05.i.i.i, align 8, !tbaa !230 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN4LIEF2PE14ResourceDialogEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4LIEF2PE14ResourceDialogEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !113
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(144) %i.du) #25, !inline_history !9
  br label %_ZSt8_DestroyISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4LIEF2PE14ResourceDialogEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dy, %i.ds
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !227
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EEEvT_S8_.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EEEvT_S8_.exit.i: ; preds = %bb.k, %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt20back_insert_iteratorISC_EET0_T_SH_SG_.exit
  %i.dz = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i ], [ %i.dt, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESt20back_insert_iteratorISC_EET0_T_SH_SG_.exit ], [ %i.bs, %bb.k ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EEEvT_S8_.exit.i
  %i.ea = load ptr, ptr %i.au, align 8, !tbaa !232
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dz to i64
  %i.ed = sub i64 %i.eb, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.ed) #28
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EEEvT_S8_.exit.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE14ResourceDialogESt14default_deleteIS3_EESaIS6_EED2Ev.exit, %bb.j
  %i.ee = load i64, ptr %i.b, align 8, !tbaa !103
  %i.ef = add i64 %i.ee, 1                        ; 3 uses
  store i64 %i.ef, ptr %i.b, align 8, !tbaa !103
  %i.eg = load ptr, ptr %i.bg, align 8, !tbaa !203
  %i.eh = load ptr, ptr %i.be, align 8, !tbaa !204 ; 2 uses
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = ashr exact i64 %i.ek, 3
  %i.em = icmp ult i64 %i.ef, %i.el
  br i1 %i.em, label %_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit22, label %._crit_edge.loopexit, !llvm.loop !690

bb.s:                                             ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit, %._crit_edge
  %i.en = phi ptr [ %i.av, %_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit ], [ %.pre45, %._crit_edge ] ; 2 uses
  %i.eo = phi i64 [ %storemerge37, %_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit ], [ %.pre44, %._crit_edge ]
  %i.ep = add i64 %i.eo, 1                        ; 3 uses
  store i64 %i.ep, ptr %i.a, align 8, !tbaa !103
  %i.eq = load ptr, ptr %i.ao, align 8, !tbaa !204 ; 2 uses
  %i.er = ptrtoint ptr %i.en to i64
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = sub i64 %i.er, %i.es
  %i.eu = ashr exact i64 %i.et, 3
  %i.ev = icmp ult i64 %i.ep, %i.eu
  br i1 %i.ev, label %_ZN4LIEF12ref_iteratorIRKSt6vectorISt10unique_ptrINS_2PE12ResourceNodeESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEixEm.exit, label %._crit_edge38, !llvm.loop !691

_ZNK4LIEF2PE16ResourcesManager13get_node_typeENS1_4TYPEE.exit.thread: ; preds = %_ZNK4LIEF2PE16ResourcesManager13get_node_typeENS1_4TYPEE.exit, %.critedge.i.i.i.i, %bb.g, %._crit_edge38
  store ptr %i.d, ptr %0, align 8, !tbaa !701
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ex = load ptr, ptr %i.d, align 8, !tbaa !231
  store ptr %i.ex, ptr %i.ew, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ey, align 8, !tbaa !702
  %i.ez = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZNK4LIEF2PE16ResourcesManager7dialogsEvE15DIALOG_CACHE_MU) #25 ; 0 uses
  ret void
}

declare void @_ZN4LIEF2PE14ResourceDialog5parseERKNS0_12ResourceDataE(ptr dead_on_unwind writable sret(%"class.std::vector.43") align 8, ptr noundef nonnull align 8 dereferenceable(116)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define void @_ZNK4LIEF2PE16ResourcesManager12string_tableEv(ptr dead_on_unwind noalias nofree writable sret(%"class.std::vector.233") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %3 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 10 uses
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.1377", align 16 ; 3 uses
  %5 = alloca %"struct.spdlog::details::log_msg", align 8 ; 12 uses
  %i.a = alloca i16, align 2                      ; 7 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %7 = alloca %"class.LIEF::SpanStream", align 8  ; 18 uses
  %8 = alloca %"class.std::__cxx11::basic_string.38", align 8 ; 8 uses
  %9 = alloca %"struct.LIEF::PE::ResourcesManager::string_entry_t", align 8 ; 12 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73, !noalias !726 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !73, !noalias !726 ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %.not.i = icmp eq ptr %i.h, %i.f
  br i1 %.not.i, label %.critedge.i.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.val.i.i.i.peel.i = load ptr, ptr %i.f, align 8, !tbaa !74, !noalias !727
  %i.n = getelementptr i8, ptr %.val1.val.i.i.i.peel.i, i64 12
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail14write_exponentIcNS0_14basic_appenderIcEEEET0_iS5_:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !209
  %i.as = icmp ugt i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.k, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit29

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !207
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ap) #25, !inline_history !15
  %.pre.i.i27 = load i64, ptr %i.an, align 8, !tbaa !218 ; 2 uses
  %.pre2.i.i28 = add i64 %.pre.i.i27, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit29

_ZN3fmt3v1214basic_appenderIcEaSEc.exit29:        ; preds = %bb.j, %bb.k
  %.pre-phi.i.i26 = phi i64 [ %i.ap, %bb.j ], [ %.pre2.i.i28, %bb.k ]
  %i.av = phi i64 [ %i.ao, %bb.j ], [ %.pre.i.i27, %bb.k ]
  %i.aw = load ptr, ptr %1, align 8, !tbaa !208
  store i64 %.pre-phi.i.i26, ptr %i.an, align 8, !tbaa !218
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  store i8 %i.am, ptr %i.ax, align 1, !tbaa !93
  br label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit29, %bb.f
  %.013 = phi i32 [ %i.u, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit29 ], [ %.0, %bb.f ]
  %i.ay = shl nuw nsw i32 %.013, 1
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 2, !tbaa !93
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !218 ; 2 uses
  %i.be = add i64 %i.bd, 1                        ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !209
  %i.bh = icmp ugt i64 %i.be, %i.bg
  br i1 %i.bh, label %bb.m, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit34

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !207
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.be) #25, !inline_history !15
  %.pre.i.i32 = load i64, ptr %i.bc, align 8, !tbaa !218 ; 2 uses
  %.pre2.i.i33 = add i64 %.pre.i.i32, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit34

_ZN3fmt3v1214basic_appenderIcEaSEc.exit34:        ; preds = %bb.l, %bb.m
  %.pre-phi.i.i31 = phi i64 [ %i.be, %bb.l ], [ %.pre2.i.i33, %bb.m ]
  %i.bk = phi i64 [ %i.bd, %bb.l ], [ %.pre.i.i32, %bb.m ]
  %i.bl = load ptr, ptr %1, align 8, !tbaa !208
  store i64 %.pre-phi.i.i31, ptr %i.bc, align 8, !tbaa !218
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  store i8 %i.bb, ptr %i.bm, align 1, !tbaa !93
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !93
  %i.bp = load i64, ptr %i.bc, align 8, !tbaa !218 ; 2 uses
  %i.bq = add i64 %i.bp, 1                        ; 3 uses
  %i.br = load i64, ptr %i.bf, align 8, !tbaa !209
  %i.bs = icmp ugt i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.n, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit39

bb.n:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit34
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !207
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bq) #25, !inline_history !15
  %.pre.i.i37 = load i64, ptr %i.bc, align 8, !tbaa !218 ; 2 uses
  %.pre2.i.i38 = add i64 %.pre.i.i37, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit39

_ZN3fmt3v1214basic_appenderIcEaSEc.exit39:        ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit34, %bb.n
  %.pre-phi.i.i36 = phi i64 [ %i.bq, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit34 ], [ %.pre2.i.i38, %bb.n ]
  %i.bv = phi i64 [ %i.bp, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit34 ], [ %.pre.i.i37, %bb.n ]
  %i.bw = load ptr, ptr %1, align 8, !tbaa !208
  store i64 %.pre-phi.i.i36, ptr %i.bc, align 8, !tbaa !218
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bv
  store i8 %i.bo, ptr %i.bx, align 1, !tbaa !93
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_15write_nonfiniteIcS5_EET0_S7_bNS0_12format_specsENS0_4signEEUlS5_E_EET1_SC_RKS8_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !301
  %i.c = zext i32 %i.b to i64
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %3) ; 4 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !279    ; 2 uses
  %i.f = lshr i32 %i.e, 3
  %i.g = and i32 %i.f, 7
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @.str.85, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !93
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul nuw nsw i64 %i.d, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !218
  %i.u = add i64 %i.t, %2
  %i.v = add i64 %i.u, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !209
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !207
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v) #25, !inline_history !21
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.ab = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.09.0 = phi ptr [ %i.ab, %bb.c ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ] ; 12 uses
  %i.ac = load i32, ptr %4, align 8, !tbaa !329   ; 2 uses
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = shl nsw i32 %i.ac, 3
  %i.ae = lshr i32 539700480, %i.ad
  %i.af = trunc i32 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !218 ; 2 uses
  %i.ai = add i64 %i.ah, 1                        ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !209
  %i.al = icmp ugt i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.f, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !207
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.ai) #25, !inline_history !1121
  %.pre.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !218 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i = phi i64 [ %i.ai, %bb.e ], [ %.pre2.i.i.i, %bb.f ]
  %i.ao = phi i64 [ %i.ah, %bb.e ], [ %.pre.i.i.i, %bb.f ]
  %i.ap = load ptr, ptr %.sroa.09.0, align 8, !tbaa !208
  store i64 %.pre-phi.i.i.i, ptr %i.ag, align 8, !tbaa !218
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 %i.af, ptr %i.aq, align 1, !tbaa !93
  br label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !330 ; 2 uses
  %i.at = ptrtoaddr ptr %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %.pre.i.i2.i = load i64, ptr %i.au, align 8, !tbaa !218
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i, %bb.g
  %i.ax = phi i64 [ %.pre.i.i2.i, %bb.g ], [ %i.cd, %._crit_edge.i.i.i ] ; 3 uses
  %.02732.i.i.idx.i = phi i64 [ 0, %bb.g ], [ %.02732.i.i.add.i, %._crit_edge.i.i.i ] ; 4 uses
  %.02732.i.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.as, i64 %.02732.i.i.idx.i ; 7 uses
  %i.ay = load i64, ptr %i.av, align 8, !tbaa !209
  %i.az = sub i64 %i.ay, %i.ax
  %gepdiff.i = sub nsw i64 3, %.02732.i.i.idx.i   ; 4 uses
  %i.ba = icmp ult i64 %i.az, %gepdiff.i
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !207
  %i.bc = add i64 %gepdiff.i, %i.ax
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.bc) #25, !inline_history !1122
  %i.bd = load i64, ptr %i.au, align 8, !tbaa !218 ; 2 uses
  %i.be = load i64, ptr %i.av, align 8, !tbaa !209
  %i.bf = sub i64 %i.be, %i.bd
  %i.bg = tail call i64 @llvm.umin.i64(i64 %gepdiff.i, i64 %i.bf)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.026.i.i.i = phi i64 [ %i.bd, %bb.i ], [ %i.ax, %bb.h ] ; 3 uses
  %.025.i.i.i = phi i64 [ %i.bg, %bb.i ], [ %gepdiff.i, %bb.h ] ; 13 uses
  %i.bh = load ptr, ptr %.sroa.09.0, align 8, !tbaa !208 ; 2 uses
  %i.bi = ptrtoaddr ptr %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.026.i.i.i ; 7 uses
  %.not36.i.i.i = icmp eq i64 %.025.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.j
  %min.iters.check = icmp ult i64 %.025.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bk = add i64 %.026.i.i.i, %i.bi
  %i.bl = add i64 %.02732.i.i.idx.i, %i.at
  %i.bm = sub i64 %i.bl, %i.bk
  %diff.check = icmp ugt i64 %i.bm, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check35 = icmp ult i64 %.025.i.i.i, 32
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bn = and i64 %.025.i.i.i, 28
  %n.vec = and i64 %.025.i.i.i, -32               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load = load <16 x i8>, ptr %i.bo, align 1, !tbaa !93
  %wide.load36 = load <16 x i8>, ptr %i.bp, align 1, !tbaa !93
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store <16 x i8> %wide.load, ptr %i.bq, align 1, !tbaa !93
  store <16 x i8> %wide.load36, ptr %i.br, align 1, !tbaa !93
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !1123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bn, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !288

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %.025.i.i.i, -4              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %index38
  %wide.load39 = load <4 x i8>, ptr %i.bt, align 1, !tbaa !93
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 %index38
  store <4 x i8> %wide.load39, ptr %i.bu, align 1, !tbaa !93
  %index.next40 = add nuw i64 %index38, 4         ; 2 uses
  %i.bv = icmp eq i64 %index.next40, %n.vec37
  br i1 %i.bv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1124

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i64 %.025.i.i.i, %n.vec37
  br i1 %cmp.n41, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec37, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.bz, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %.030.i.i.i.prol
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !93
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.030.i.i.i.prol
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !93
  %i.bz = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1125

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bz, %.lr.ph.i.i.i.prol ]
  %i.ca = sub i64 %.030.i.i.i.ph, %.025.i.i.i
  %i.cb = icmp ugt i64 %i.ca, -4
  br i1 %i.cb, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i = load i64, ptr %i.au, align 8, !tbaa !218
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.j
  %i.cc = phi i64 [ %.pre37.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.026.i.i.i, %bb.j ]
  %i.cd = add i64 %i.cc, %.025.i.i.i              ; 2 uses
  store i64 %i.cd, ptr %i.au, align 8, !tbaa !218
  %.02732.i.i.add.i = add nuw nsw i64 %.025.i.i.i, %.02732.i.i.idx.i ; 2 uses
  %.not.i.i.i = icmp eq i64 %.02732.i.i.add.i, 3
  br i1 %.not.i.i.i, label %_ZZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEENKUlS4_E_clES4_.exit, label %bb.h, !llvm.loop !17

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.ct, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %.030.i.i.i
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !93
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.030.i.i.i
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !93
  %i.ch = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !93
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ch
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !93
  %i.cl = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !93
  %i.co = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cl
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !93
  %i.cp = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !93
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cp
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !93
  %i.ct = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.ct, %.025.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1126

_ZZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEENKUlS4_E_clES4_.exit: ; preds = %._crit_edge.i.i.i
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEENKUlS4_E_clES4_.exit
  %i.cu = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %.sroa.09.0, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEENKUlS4_E_clES4_.exit
  %.sroa.09.1 = phi ptr [ %i.cu, %bb.k ], [ %.sroa.09.0, %_ZZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEENKUlS4_E_clES4_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E_clES6_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1129, !nonnull !126, !align !310
  %i.b = load i32, ptr %i.a, align 4, !tbaa !331  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nsw i32 %i.b, 3
  %i.d = lshr i32 539700480, %i.c
  %i.e = trunc i32 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !218  ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !209
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !207
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.h) #25, !inline_history !15
  %.pre.i.i = load i64, ptr %i.f, align 8, !tbaa !218 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.h, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.n = phi i64 [ %i.g, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.o = load ptr, ptr %1, align 8, !tbaa !208
  store i64 %.pre-phi.i.i, ptr %i.f, align 8, !tbaa !218
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store i8 %i.e, ptr %i.p, align 1, !tbaa !93
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1130, !nonnull !126, !align !310 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !341
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1131, !nonnull !126, !align !310
  %i.v = load i32, ptr %i.u, align 4, !tbaa !153
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !333  ; 2 uses
  %i.y = tail call ptr @_ZN3fmt3v126detail14format_decimalIcjNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %1, i32 noundef %i.s, i32 noundef %i.v) ; 14 uses
  %i.z = icmp sgt i32 %i.x, 0
  br i1 %i.z, label %.lr.ph.i.i, label %_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEjNS1_23fallback_digit_groupingIcEEEET0_S7_T1_iiRKT2_.exit

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  br label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i, %.lr.ph.i.i
  %.04.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.al, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i ]
  %i.ad = load i64, ptr %i.aa, align 8, !tbaa !218 ; 2 uses
  %i.ae = add i64 %i.ad, 1                        ; 3 uses
  %i.af = load i64, ptr %i.ab, align 8, !tbaa !209
  %i.ag = icmp ugt i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.f, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !207
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 noundef %i.ae) #25, !inline_history !1127
  %.pre.i.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !218 ; 2 uses
  %.pre2.i.i.i.i = add i64 %.pre.i.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i:      ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i.i = phi i64 [ %i.ae, %bb.e ], [ %.pre2.i.i.i.i, %bb.f ]
end_hunk_1
