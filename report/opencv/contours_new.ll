Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/contours_new?download=true
inline.NumInlined: 589
inline.NumDeleted: 314
begin_hunk_0_@_ZN2cv12findContoursERKNS_11_InputArrayERKNS_12_OutputArrayES5_iiNS_6Point_IiEE:bb.a
bb.db:                                            ; preds = %bb.cz
  %i.hz = atomicrmw volatile add ptr %i.hm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.db, %bb.da
  %.0.i.i.i.i = phi i32 [ %i.hp, %bb.da ], [ %i.hz, %bb.db ]
  %i.ia = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ia, label %bb.dc, label %_ZNSt12__shared_ptrI15ContourScanner_LN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !70

bb.dc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hl) #19
  br label %_ZNSt12__shared_ptrI15ContourScanner_LN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrI15ContourScanner_LN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.cw, %bb.cy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  %i.ib = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !101 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !101 ; 2 uses
  %.not7.i = icmp eq ptr %i.ic, %i.ie
  br i1 %.not7.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %bb.df
  %.pre.i = load ptr, ptr %i.ib, align 8, !tbaa !102
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZNSt12__shared_ptrI15ContourScanner_LN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.if = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.ic, %_ZNSt12__shared_ptrI15ContourScanner_LN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i.i, label %_ZN2cv12BlockStorageIaLm1024ELm0EED2Ev.exit, label %bb.dd

bb.dd:                                            ; preds = %._crit_edge.i
  %i.ig = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !103
  %i.ii = ptrtoint ptr %i.ih to i64
  %i.ij = ptrtoint ptr %i.if to i64
  %i.ik = sub i64 %i.ii, %i.ij
  call void @_ZdlPvm(ptr noundef nonnull %i.if, i64 noundef %i.ik) #20
  br label %_ZN2cv12BlockStorageIaLm1024ELm0EED2Ev.exit

.lr.ph.i:                                         ; preds = %_ZNSt12__shared_ptrI15ContourScanner_LN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.df
  %.sroa.04.08.i = phi ptr [ %i.in, %bb.df ], [ %i.ic, %_ZNSt12__shared_ptrI15ContourScanner_LN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.il = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !104 ; 2 uses
  %i.im = icmp eq ptr %i.il, null
  br i1 %i.im, label %bb.df, label %bb.de

bb.de:                                            ; preds = %.lr.ph.i
  call void @_ZdlPvm(ptr noundef nonnull %i.il, i64 noundef 1024) #20
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %.lr.ph.i
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %.not.i164 = icmp eq ptr %i.in, %i.ie
  br i1 %.not.i164, label %._crit_edge.loopexit.i, label %.lr.ph.i

_ZN2cv12BlockStorageIaLm1024ELm0EED2Ev.exit:      ; preds = %._crit_edge.i, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  %i.io = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !101 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !101 ; 2 uses
  %.not7.i165 = icmp eq ptr %i.ip, %i.ir
  br i1 %.not7.i165, label %._crit_edge.i171, label %.lr.ph.i166

._crit_edge.loopexit.i169:                        ; preds = %bb.di
  %.pre.i170 = load ptr, ptr %i.io, align 8, !tbaa !105
  br label %._crit_edge.i171

._crit_edge.i171:                                 ; preds = %._crit_edge.loopexit.i169, %_ZN2cv12BlockStorageIaLm1024ELm0EED2Ev.exit
  %i.is = phi ptr [ %.pre.i170, %._crit_edge.loopexit.i169 ], [ %i.ip, %_ZN2cv12BlockStorageIaLm1024ELm0EED2Ev.exit ] ; 3 uses
  %.not.i.i.i.i172 = icmp eq ptr %i.is, null
  br i1 %.not.i.i.i.i172, label %_ZN2cv12BlockStorageINS_6Point_IiEELm1024ELm0EED2Ev.exit, label %bb.dg

bb.dg:                                            ; preds = %._crit_edge.i171
  %i.it = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !106
  %i.iv = ptrtoint ptr %i.iu to i64
  %i.iw = ptrtoint ptr %i.is to i64
  %i.ix = sub i64 %i.iv, %i.iw
  call void @_ZdlPvm(ptr noundef nonnull %i.is, i64 noundef %i.ix) #20
  br label %_ZN2cv12BlockStorageINS_6Point_IiEELm1024ELm0EED2Ev.exit

.lr.ph.i166:                                      ; preds = %_ZN2cv12BlockStorageIaLm1024ELm0EED2Ev.exit, %bb.di
  %.sroa.04.08.i167 = phi ptr [ %i.ja, %bb.di ], [ %i.ip, %_ZN2cv12BlockStorageIaLm1024ELm0EED2Ev.exit ] ; 2 uses
  %i.iy = load ptr, ptr %.sroa.04.08.i167, align 8, !tbaa !104 ; 2 uses
  %i.iz = icmp eq ptr %i.iy, null
  br i1 %i.iz, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %.lr.ph.i166
  call void @_ZdlPvm(ptr noundef nonnull %i.iy, i64 noundef 8192) #20
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %.lr.ph.i166
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i167, i64 8 ; 2 uses
  %.not.i168 = icmp eq ptr %i.ja, %i.ir
  br i1 %.not.i168, label %._crit_edge.loopexit.i169, label %.lr.ph.i166

_ZN2cv12BlockStorageINS_6Point_IiEELm1024ELm0EED2Ev.exit: ; preds = %._crit_edge.i171, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %.loopexit185

.loopexit185:                                     ; preds = %._crit_edge191, %bb.ah, %bb.ae, %._crit_edge, %bb.x, %_ZN2cv12BlockStorageINS_6Point_IiEELm1024ELm0EED2Ev.exit
  %i.jb = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !109
  %.not.i173 = icmp eq i32 %i.jc, 0
  br i1 %.not.i173, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.dj

bb.dj:                                            ; preds = %.loopexit185
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %9)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.jd = landingpad { ptr, i32 }
          catch ptr null
  %i.je = extractvalue { ptr, i32 } %i.jd, 0
  call void @__clang_call_terminate(ptr %i.je) #22
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %.loopexit185, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  ret void

bb.dl:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cu, %bb.ct
  %.pn109 = phi { ptr, i32 } [ %lpad.loopexit.split-lp251, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.hh, %bb.cu ], [ %i.hg, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  call void @_ZN2cv12BlockStorageIaLm1024ELm0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %24) #19
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.cs
  %.pn109.pn = phi { ptr, i32 } [ %.pn109, %bb.dl ], [ %i.hf, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @_ZN2cv12BlockStorageINS_6Point_IiEELm1024ELm0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %23) #19
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.cr
  %.pn109.pn.pn = phi { ptr, i32 } [ %.pn109.pn, %bb.dm ], [ %i.he, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.cj, %bb.ci
  %.pn109.pn.pn.pn = phi { ptr, i32 } [ %.pn109.pn.pn, %bb.dn ], [ %i.gy, %bb.cj ], [ %i.gx, %bb.ci ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.dp

bb.dp:                                            ; preds = %bb.bx, %bb.do, %bb.bh, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %bb.aq
  %.pn122 = phi { ptr, i32 } [ %i.gk, %bb.bx ], [ %.pn.pn.pn, %bb.aq ], [ %.pn109.pn.pn.pn, %bb.do ], [ %.pn101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ], [ %.pn116.pn.pn, %bb.r ], [ %.pn96.pn.pn, %bb.bh ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  resume { ptr, i32 } %.pn122
}

declare void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

declare noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

declare void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4 align 2

declare noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZN2cv6detail17check_failed_trueEbRKNS0_12CheckContextE(i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare void @_ZN2cv20findContoursLinkRunsERKNS_11_InputArrayERKNS_12_OutputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #3

declare void @_ZN2cv15findTRUContoursERKNS_11_InputArrayERKNS_12_OutputArrayEibi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare i64 @_ZNK2cv11_InputArray4sizeEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #5

declare noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZNK2cv12_OutputArray5clearEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #5

declare void @_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef double @_ZN2cv9thresholdERKNS_11_InputArrayERKNS_12_OutputArrayEddi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double noundef, double noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv12BlockStorageINS_6Point_IiEELm1024ELm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  %i.c = invoke noalias noundef nonnull dereferenceable(8192) ptr @_Znwm(i64 noundef 8192) #21
          to label %bb.b unwind label %.loopexit.split-lp ; 3 uses

1:                                                ; preds = %_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, %bb.c
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(8192) %i.c, i8 0, i64 8192, i1 false), !tbaa !23
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !110    ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !106
  %.not.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.c, ptr %i.d, align 8, !tbaa !104
  %i.f = load ptr, ptr %2, align 8, !tbaa !110
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %2, align 8, !tbaa !110
  br label %1

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !105  ; 4 uses
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 5 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.e, label %_ZNKSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #18
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #21
          to label %.noexc8 unwind label %.loopexit.split-lp ; 4 uses

.noexc8:                                          ; preds = %_ZNKSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.k ; 2 uses
  store ptr %i.c, ptr %i.t, align 8, !tbaa !104
  %i.u = icmp sgt i64 %i.k, 0
  br i1 %i.u, label %bb.f, label %_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i

bb.f:                                             ; preds = %.noexc8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i

_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i: ; preds = %bb.f, %.noexc8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i
  %i.w = load ptr, ptr %3, align 8, !tbaa !106
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.y) #20
  br label %_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i
  store ptr %i.s, ptr %i.b, align 8, !tbaa !105
  store ptr %i.v, ptr %2, align 8, !tbaa !110
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.z, ptr %3, align 8, !tbaa !106
  br label %1

.loopexit.split-lp:                               ; preds = %_ZNKSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.e, %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %4, align 8, !tbaa !106
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ae) #20
  br label %_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EED2Ev.exit

_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EED2Ev.exit: ; preds = %.loopexit.split-lp, %bb.h
  resume { ptr, i32 } %lpad.loopexit.split-lp
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv12BlockStorageIaLm1024ELm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  %i.c = invoke noalias noundef nonnull dereferenceable(1024) ptr @_Znwm(i64 noundef 1024) #21
          to label %bb.b unwind label %.loopexit.split-lp ; 2 uses

1:                                                ; preds = %_ZNSt6vectorIPN2cv12BlockStorageIaLm1024ELm0EE10block_typeESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.c
  ret void

bb.b:                                             ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !111    ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !103
  %.not.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.c, ptr %i.d, align 8, !tbaa !104
  %i.f = load ptr, ptr %2, align 8, !tbaa !111
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %2, align 8, !tbaa !111
  br label %1

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !102  ; 4 uses
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 5 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.e, label %_ZNKSt6vectorIPN2cv12BlockStorageIaLm1024ELm0EE10block_typeESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #18
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIPN2cv12BlockStorageIaLm1024ELm0EE10block_typeESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #21
          to label %.noexc5 unwind label %.loopexit.split-lp ; 4 uses

.noexc5:                                          ; preds = %_ZNKSt6vectorIPN2cv12BlockStorageIaLm1024ELm0EE10block_typeESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.k ; 2 uses
  store ptr %i.c, ptr %i.t, align 8, !tbaa !104
  %i.u = icmp sgt i64 %i.k, 0
  br i1 %i.u, label %bb.f, label %_ZNSt6vectorIPN2cv12BlockStorageIaLm1024ELm0EE10block_typeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.f:                                             ; preds = %.noexc5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIPN2cv12BlockStorageIaLm1024ELm0EE10block_typeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPN2cv12BlockStorageIaLm1024ELm0EE10block_typeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.f, %.noexc5
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN2cv12BlockStorageIaLm1024ELm0EE10block_typeESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN2cv12BlockStorageIaLm1024ELm0EE10block_typeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  %i.w = load ptr, ptr %3, align 8, !tbaa !103
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.y) #20
  br label %_ZNSt6vectorIPN2cv12BlockStorageIaLm1024ELm0EE10block_typeESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPN2cv12BlockStorageIaLm1024ELm0EE10block_typeESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIPN2cv12BlockStorageIaLm1024ELm0EE10block_typeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.s, ptr %i.b, align 8, !tbaa !102
  store ptr %i.v, ptr %2, align 8, !tbaa !111
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.z, ptr %3, align 8, !tbaa !103
  br label %1

.loopexit.split-lp:                               ; preds = %_ZNKSt6vectorIPN2cv12BlockStorageIaLm1024ELm0EE10block_typeESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.e, %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !102 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN2cv12BlockStorageIaLm1024ELm0EE10block_typeESaIS4_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %4, align 8, !tbaa !103
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ae) #20
  br label %_ZNSt6vectorIPN2cv12BlockStorageIaLm1024ELm0EE10block_typeESaIS4_EED2Ev.exit

_ZNSt6vectorIPN2cv12BlockStorageIaLm1024ELm0EE10block_typeESaIS4_EED2Ev.exit: ; preds = %.loopexit.split-lp, %bb.h
  resume { ptr, i32 } %lpad.loopexit.split-lp
}

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare void @_ZN2cv20contourTreeToResultsERNS_4TreeINS_7ContourEEEiRKNS_12_OutputArrayES6_(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv12BlockStorageIaLm1024ELm0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !101  ; 2 uses
  %.not7 = icmp eq ptr %i.b, %i.d
  br i1 %.not7, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.d
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !102
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.e = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN2cv12BlockStorageIaLm1024ELm0EE10block_typeESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !103
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #20
  br label %_ZNSt6vectorIPN2cv12BlockStorageIaLm1024ELm0EE10block_typeESaIS4_EED2Ev.exit

_ZNSt6vectorIPN2cv12BlockStorageIaLm1024ELm0EE10block_typeESaIS4_EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.sroa.04.08 = phi ptr [ %i.m, %bb.d ], [ %i.b, %bb.a ] ; 2 uses
  %i.k = load ptr, ptr %.sroa.04.08, align 8, !tbaa !104 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 1024) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.m, %i.d
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv12BlockStorageINS_6Point_IiEELm1024ELm0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !101  ; 2 uses
  %.not7 = icmp eq ptr %i.b, %i.d
  br i1 %.not7, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.d
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !105
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.e = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !106
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #20
  br label %_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EED2Ev.exit

_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.sroa.04.08 = phi ptr [ %i.m, %bb.d ], [ %i.b, %bb.a ] ; 2 uses
  %i.k = load ptr, ptr %.sroa.04.08, align 8, !tbaa !104 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 8192) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.m, %i.d
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !109
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #22
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv12findContoursERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_6Point_IiEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, i32 noundef %3, i64 %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12findContoursERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_6Point_IiEEE25__cv_trace_location_fn724)
  %i.a = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv12findContoursERKNS_11_InputArrayERKNS_12_OutputArrayES5_iiNS_6Point_IiEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef %2, i32 noundef %3, i64 %4)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !109
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %5)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #22
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %i.f
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !199
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

end_hunk_0
