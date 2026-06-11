inline.NumInlined: 6631
inline.NumDeleted: 2675
begin_hunk_0_@_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_120RepeatedArrayFactoryEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.awv) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i45.i358

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i45.i358: ; preds = %bb.pf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i43.i356, %bb.pb, %bb.oz
  %.pr.i46.i359 = load ptr, ptr %56, align 8, !tbaa !60, !noalias !2620 ; 2 uses
  %.not.i.i47.i360 = icmp eq ptr %.pr.i46.i359, null
  br i1 %.not.i.i47.i360, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit48.i348, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i40.i347, !prof !158

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i40.i347: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i45.i358, %_ZN5arrow6StatusC2ERKS0_.exit.i346
  %i.axl = phi ptr [ %.pr.i46.i359, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i45.i358 ], [ %i.aws, %_ZN5arrow6StatusC2ERKS0_.exit.i346 ]
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axl, i64 1
  %i.axn = load i8, ptr %i.axm, align 1, !tbaa !64, !range !74, !noundef !75
  %i.axo = trunc nuw i8 %i.axn to i1
  br i1 %i.axo, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit48.i348, label %bb.pg

bb.pg:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i40.i347
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %56) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit48.i348

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit48.i348: ; preds = %bb.pg, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i40.i347, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i45.i358
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #19, !noalias !2620
  %i.axp = load ptr, ptr %i.asl, align 8, !tbaa !91, !noalias !2620 ; 8 uses
  %.not.i.i49.i349 = icmp eq ptr %i.axp, null
  br i1 %.not.i.i49.i349, label %_ZN5arrow12_GLOBAL__N_120RepeatedArrayFactory5VisitINS_17LargeListViewTypeEEENSt9enable_ifIXsr17is_list_view_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit, label %bb.ph

bb.ph:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit48.i348
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axp, i64 8 ; 4 uses
  %i.axr = load atomic i64, ptr %i.axq acquire, align 8 ; 2 uses
  %i.axs = icmp eq i64 %i.axr, 4294967297
  %i.axt = trunc i64 %i.axr to i32                ; 2 uses
  br i1 %i.axs, label %bb.pi, label %bb.pj

bb.pi:                                            ; preds = %bb.ph
  store i32 0, ptr %i.axq, align 8, !tbaa !80
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axp, i64 12
  store i32 0, ptr %i.axu, align 4, !tbaa !87
  %i.axv = load ptr, ptr %i.axp, align 8, !tbaa !88
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axv, i64 16
  %i.axx = load ptr, ptr %i.axw, align 8
  call void %i.axx(ptr noundef nonnull align 8 dereferenceable(16) %i.axp) #19, !inline_history !2648
  %i.axy = load ptr, ptr %i.axp, align 8, !tbaa !88
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axy, i64 24
  %i.aya = load ptr, ptr %i.axz, align 8
  call void %i.aya(ptr noundef nonnull align 8 dereferenceable(16) %i.axp) #19, !inline_history !2648
  br label %_ZN5arrow12_GLOBAL__N_120RepeatedArrayFactory5VisitINS_17LargeListViewTypeEEENSt9enable_ifIXsr17is_list_view_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit

bb.pj:                                            ; preds = %bb.ph
  %i.ayb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95, !noalias !2620
  %.not.i.i.i50.i350 = icmp eq i8 %i.ayb, 0
  br i1 %.not.i.i.i50.i350, label %bb.pl, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  %i.ayc = add nsw i32 %i.axt, -1
  store i32 %i.ayc, ptr %i.axq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51.i351

bb.pl:                                            ; preds = %bb.pj
  %i.ayd = atomicrmw volatile add ptr %i.axq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51.i351

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51.i351: ; preds = %bb.pl, %bb.pk
  %.0.i.i.i.i52.i352 = phi i32 [ %i.axt, %bb.pk ], [ %i.ayd, %bb.pl ]
  %i.aye = icmp eq i32 %.0.i.i.i.i52.i352, 1
  br i1 %i.aye, label %bb.pm, label %_ZN5arrow12_GLOBAL__N_120RepeatedArrayFactory5VisitINS_17LargeListViewTypeEEENSt9enable_ifIXsr17is_list_view_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit, !prof !96

bb.pm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51.i351
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.axp) #19
  br label %_ZN5arrow12_GLOBAL__N_120RepeatedArrayFactory5VisitINS_17LargeListViewTypeEEENSt9enable_ifIXsr17is_list_view_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit

bb.pn:                                            ; preds = %bb.oy, %bb.np
  %.pn20.i345 = phi { ptr, i32 } [ %i.atc, %bb.np ], [ %.pn16.pn.i363, %bb.oy ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %56) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #19, !noalias !2620
  br label %bb.po

bb.po:                                            ; preds = %bb.pn, %bb.no
  %.pn20.pn.i344 = phi { ptr, i32 } [ %.pn20.i345, %bb.pn ], [ %i.atb, %bb.no ]
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %55) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #19, !noalias !2620
  br label %common.resume

_ZN5arrow12_GLOBAL__N_120RepeatedArrayFactory5VisitINS_17LargeListViewTypeEEENSt9enable_ifIXsr17is_list_view_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit48.i348, %bb.pi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51.i351, %bb.pm
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #19, !noalias !2620
  br label %bb.ajo

bb.pp:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2649)
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #19, !noalias !2649
  %i.ayf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ayg = load ptr, ptr %i.ayf, align 8, !tbaa !2337, !noalias !2649, !nonnull !75, !align !121 ; 6 uses
  %i.ayh = getelementptr inbounds nuw i8, ptr %43, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ayh, i8 0, i64 16, i1 false), !noalias !2649
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow6ScalarE, i64 16), ptr %43, align 8, !tbaa !88, !noalias !2649
  %i.ayi = getelementptr inbounds nuw i8, ptr %43, i64 24
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayg, i64 24
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.ayg, i64 32
  %i.ayl = load ptr, ptr %i.ayk, align 8, !tbaa !91, !noalias !2649 ; 2 uses
  %i.aym = load <2 x ptr>, ptr %i.ayj, align 8, !tbaa !93, !noalias !2649
  store <2 x ptr> %i.aym, ptr %i.ayi, align 8, !tbaa !93, !noalias !2649
  %.not.i.i.i.i.i.i.i393 = icmp eq ptr %i.ayl, null
  br i1 %.not.i.i.i.i.i.i.i393, label %_ZN5arrow6ScalarC2ERKS0_.exit.i.i.i, label %bb.pq

bb.pq:                                            ; preds = %bb.pp
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.ayl, i64 8 ; 3 uses
  %i.ayo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95, !noalias !2649
  %.not.i.i.i.i.i.i.i.i394 = icmp eq i8 %i.ayo, 0
  br i1 %.not.i.i.i.i.i.i.i.i394, label %bb.ps, label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  %i.ayp = load i32, ptr %i.ayn, align 4, !tbaa !3
  %i.ayq = add nsw i32 %i.ayp, 1
  store i32 %i.ayq, ptr %i.ayn, align 4, !tbaa !3
  br label %_ZN5arrow6ScalarC2ERKS0_.exit.i.i.i

bb.ps:                                            ; preds = %bb.pq
  %i.ayr = atomicrmw volatile add ptr %i.ayn, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow6ScalarC2ERKS0_.exit.i.i.i

_ZN5arrow6ScalarC2ERKS0_.exit.i.i.i:              ; preds = %bb.ps, %bb.pr, %bb.pp
  %i.ays = getelementptr inbounds nuw i8, ptr %43, i64 40
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ayg, i64 40
  %i.ayu = load i8, ptr %i.ayt, align 8, !tbaa !1302, !range !74, !noundef !75
  store i8 %i.ayu, ptr %i.ays, align 8, !tbaa !1302, !noalias !2649
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow14BaseListScalarE, i64 16), ptr %43, align 8, !tbaa !88, !noalias !2649
  %i.ayv = getelementptr inbounds nuw i8, ptr %43, i64 48 ; 2 uses
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayg, i64 48
  %i.ayx = load ptr, ptr %i.ayw, align 8, !tbaa !1327 ; 3 uses
  store ptr %i.ayx, ptr %i.ayv, align 8, !tbaa !1327, !noalias !2649
  %i.ayy = getelementptr inbounds nuw i8, ptr %43, i64 56
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayg, i64 56
  %i.aza = load ptr, ptr %i.ayz, align 8, !tbaa !91 ; 3 uses
  store ptr %i.aza, ptr %i.ayy, align 8, !tbaa !91, !noalias !2649
  %.not.i.i.i.i.i.i395 = icmp eq ptr %i.aza, null
  br i1 %.not.i.i.i.i.i.i395, label %_ZN5arrow9MapScalarC2ERKS0_.exit.i, label %bb.pt

bb.pt:                                            ; preds = %_ZN5arrow6ScalarC2ERKS0_.exit.i.i.i
  %i.azb = getelementptr inbounds nuw i8, ptr %i.aza, i64 8 ; 3 uses
  %i.azc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95, !noalias !2649
  %.not.i.i.i.i3.i.i.i = icmp eq i8 %i.azc, 0
  br i1 %.not.i.i.i.i3.i.i.i, label %bb.pv, label %bb.pu

bb.pu:                                            ; preds = %bb.pt
  %i.azd = load i32, ptr %i.azb, align 4, !tbaa !3
  %i.aze = add nsw i32 %i.azd, 1
  store i32 %i.aze, ptr %i.azb, align 4, !tbaa !3
  br label %_ZN5arrow9MapScalarC2ERKS0_.exit.i

bb.pv:                                            ; preds = %bb.pt
  %i.azf = atomicrmw volatile add ptr %i.azb, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i443 = load ptr, ptr %i.ayv, align 8, !tbaa !1327, !noalias !2649
  br label %_ZN5arrow9MapScalarC2ERKS0_.exit.i

_ZN5arrow9MapScalarC2ERKS0_.exit.i:               ; preds = %bb.pv, %bb.pu, %_ZN5arrow6ScalarC2ERKS0_.exit.i.i.i
  %i.azg = phi ptr [ %i.ayx, %_ZN5arrow6ScalarC2ERKS0_.exit.i.i.i ], [ %i.ayx, %bb.pu ], [ %.pre.i443, %bb.pv ] ; 3 uses
  %i.azh = getelementptr inbounds nuw i8, ptr %43, i64 64
  %i.azi = getelementptr inbounds nuw i8, ptr %i.ayg, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.azh, ptr noundef nonnull align 8 dereferenceable(16) %i.azi, i64 16, i1 false), !tbaa.struct !2652
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow9MapScalarE, i64 16), ptr %43, align 8, !tbaa !88, !noalias !2649
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #19, !noalias !2649
  %i.azj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.azk = load i64, ptr %i.azj, align 8, !tbaa !1313, !noalias !2649 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #19, !noalias !2649
  invoke void @_ZNK5arrow11StructArray5fieldEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.29") align 8 %45, ptr noundef nonnull align 8 dereferenceable(40) %i.azg, i32 noundef 0)
          to label %bb.pw unwind label %bb.qu

bb.pw:                                            ; preds = %_ZN5arrow9MapScalarC2ERKS0_.exit.i
  %i.azl = icmp ugt i64 %i.azk, 576460752303423487
  br i1 %i.azl, label %bb.px, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i397

bb.px:                                            ; preds = %bb.pw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
          to label %.noexc.i442 unwind label %bb.qv

.noexc.i442:                                      ; preds = %bb.px
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i397: ; preds = %bb.pw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %44, i8 0, i64 24, i1 false), !noalias !2649
  %.not.i.i.i.i.i398 = icmp eq i64 %i.azk, 0
  br i1 %.not.i.i.i.i.i398, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i.i441, label %.lr.ph.i.i.i.i.i.i.i399

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i.i441: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i397
  %i.azm = getelementptr inbounds nuw i8, ptr %44, i64 8
  br label %.loopexit3.i

.lr.ph.i.i.i.i.i.i.i399:                          ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i397
  %i.azn = shl nuw nsw i64 %i.azk, 4
  %i.azo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.azn) #20
          to label %.noexc46.i unwind label %bb.qv ; 6 uses

.noexc46.i:                                       ; preds = %.lr.ph.i.i.i.i.i.i.i399
  store ptr %i.azo, ptr %44, align 8, !tbaa !1358, !noalias !2649
  %i.azp = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 4 uses
  store ptr %i.azo, ptr %i.azp, align 8, !tbaa !1355, !noalias !2649
  %i.azq = getelementptr inbounds nuw [16 x i8], ptr %i.azo, i64 %i.azk
  %i.azr = getelementptr inbounds nuw i8, ptr %44, i64 16
  store ptr %i.azq, ptr %i.azr, align 8, !tbaa !1357, !noalias !2649
  %i.azs = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 2 uses
  %i.azt = load ptr, ptr %i.azs, align 8, !tbaa !91, !noalias !2649 ; 2 uses
  %i.azu = icmp eq ptr %i.azt, null
  br i1 %i.azu, label %.lr.ph.i.i.i.i.i.split.us.i.i436, label %.lr.ph.i.i.i.i.i.split.i.i400

.lr.ph.i.i.i.i.i.split.us.i.i436:                 ; preds = %.noexc46.i
  %116 = load ptr, ptr %45, align 8, !tbaa !1327, !noalias !2649
  %117 = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %116, i64 0 ; 9 uses
  %xtraiter1142 = and i64 %i.azk, 7               ; 2 uses
  %lcmp.mod1143.not = icmp eq i64 %xtraiter1142, 0
  br i1 %lcmp.mod1143.not, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437.prol.loopexit, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437.prol

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437.prol: ; preds = %.lr.ph.i.i.i.i.i.split.us.i.i436, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437.prol
  %.09.i.i.i.i.i.us.i.i438.prol = phi ptr [ %i.azw, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437.prol ], [ %i.azo, %.lr.ph.i.i.i.i.i.split.us.i.i436 ] ; 2 uses
  %.068.i.i.i.i.i.us.i.i439.prol = phi i64 [ %i.azv, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437.prol ], [ %i.azk, %.lr.ph.i.i.i.i.i.split.us.i.i436 ]
  %prol.iter1144 = phi i64 [ %prol.iter1144.next, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437.prol ], [ 0, %.lr.ph.i.i.i.i.i.split.us.i.i436 ]
  store <2 x ptr> %117, ptr %.09.i.i.i.i.i.us.i.i438.prol, align 8, !tbaa !93
  %i.azv = add i64 %.068.i.i.i.i.i.us.i.i439.prol, -1 ; 2 uses
  %i.azw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i438.prol, i64 16 ; 3 uses
  %prol.iter1144.next = add i64 %prol.iter1144, 1 ; 2 uses
  %prol.iter1144.cmp.not = icmp eq i64 %prol.iter1144.next, %xtraiter1142
  br i1 %prol.iter1144.cmp.not, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437.prol.loopexit, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437.prol, !llvm.loop !2653

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437.prol.loopexit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437.prol, %.lr.ph.i.i.i.i.i.split.us.i.i436
  %.lcssa1136.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.split.us.i.i436 ], [ %i.azw, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437.prol ]
  %.09.i.i.i.i.i.us.i.i438.unr = phi ptr [ %i.azo, %.lr.ph.i.i.i.i.i.split.us.i.i436 ], [ %i.azw, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437.prol ]
  %.068.i.i.i.i.i.us.i.i439.unr = phi i64 [ %i.azk, %.lr.ph.i.i.i.i.i.split.us.i.i436 ], [ %i.azv, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437.prol ]
  %i.azx = icmp ult i64 %i.azk, 8
  br i1 %i.azx, label %.loopexit3.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437.prol.loopexit, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437
  %.09.i.i.i.i.i.us.i.i438 = phi ptr [ %i.bag, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437 ], [ %.09.i.i.i.i.i.us.i.i438.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437.prol.loopexit ] ; 9 uses
  %.068.i.i.i.i.i.us.i.i439 = phi i64 [ %i.baf, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437 ], [ %.068.i.i.i.i.i.us.i.i439.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437.prol.loopexit ]
  store <2 x ptr> %117, ptr %.09.i.i.i.i.i.us.i.i438, align 8, !tbaa !93
  %i.azy = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i438, i64 16
  store <2 x ptr> %117, ptr %i.azy, align 8, !tbaa !93
  %i.azz = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i438, i64 32
  store <2 x ptr> %117, ptr %i.azz, align 8, !tbaa !93
  %i.baa = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i438, i64 48
  store <2 x ptr> %117, ptr %i.baa, align 8, !tbaa !93
  %i.bab = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i438, i64 64
  store <2 x ptr> %117, ptr %i.bab, align 8, !tbaa !93
  %i.bac = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i438, i64 80
  store <2 x ptr> %117, ptr %i.bac, align 8, !tbaa !93
  %i.bad = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i438, i64 96
  store <2 x ptr> %117, ptr %i.bad, align 8, !tbaa !93
  %i.bae = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i438, i64 112
  store <2 x ptr> %117, ptr %i.bae, align 8, !tbaa !93
  %i.baf = add i64 %.068.i.i.i.i.i.us.i.i439, -8  ; 2 uses
  %i.bag = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i438, i64 128 ; 2 uses
  %.not.i.i.i.i.i.us.i.i440.7 = icmp eq i64 %i.baf, 0
  br i1 %.not.i.i.i.i.i.us.i.i440.7, label %.loopexit3.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437, !llvm.loop !2541

.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i406:    ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i405
  %.pr.i.i407 = load ptr, ptr %i.azs, align 8, !tbaa !91, !noalias !2649
  br label %.lr.ph.i.i.i.i.i.split.i.i400

.lr.ph.i.i.i.i.i.split.i.i400:                    ; preds = %.noexc46.i, %.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i406
  %i.bah = phi ptr [ %.pr.i.i407, %.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i406 ], [ %i.azt, %.noexc46.i ] ; 3 uses
  %.09.i.i.i.i.i.i.i401.a = phi ptr [ %i.bap, %.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i406 ], [ %i.azo, %.noexc46.i ] ; 3 uses
  %.068.i.i.i.i.i.i.i402 = phi i64 [ %i.bao, %.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i406 ], [ %i.azk, %.noexc46.i ]
  %118 = load ptr, ptr %45, align 8, !tbaa !1327, !noalias !2649
  store ptr %118, ptr %.09.i.i.i.i.i.i.i401.a, align 8, !tbaa !1327
  %i.bai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i401.a, i64 8
  store ptr %i.bah, ptr %i.bai, align 8, !tbaa !91
  %.not.i.i.i.i.i.i.i.i.i.i.i403 = icmp eq ptr %i.bah, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i403, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i405, label %bb.py

bb.py:                                            ; preds = %.lr.ph.i.i.i.i.i.split.i.i400
  %i.baj = getelementptr inbounds nuw i8, ptr %i.bah, i64 8 ; 3 uses
  %i.bak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95, !noalias !2649
  %.not.i.i.i.i.i.i.i.i.i.i.i.i404 = icmp eq i8 %i.bak, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i404, label %bb.qa, label %bb.pz

bb.pz:                                            ; preds = %bb.py
  %i.bal = load i32, ptr %i.baj, align 4, !tbaa !3
  %i.bam = add nsw i32 %i.bal, 1
  store i32 %i.bam, ptr %i.baj, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i405

bb.qa:                                            ; preds = %bb.py
  %i.ban = atomicrmw volatile add ptr %i.baj, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i405

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i405: ; preds = %bb.qa, %bb.pz, %.lr.ph.i.i.i.i.i.split.i.i400
  %i.bao = add nsw i64 %.068.i.i.i.i.i.i.i402, -1 ; 2 uses
  %i.bap = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i401.a, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i45.i = icmp eq i64 %i.bao, 0
  br i1 %.not.i.i.i.i.i.i45.i, label %.loopexit3.i, label %.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i406, !llvm.loop !2542

.loopexit3.i:                                     ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i405, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437.prol.loopexit, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i.i441
  %i.baq = phi ptr [ %i.azm, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i.i441 ], [ %i.azp, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437.prol.loopexit ], [ %i.azp, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437 ], [ %i.azp, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i405 ]
  %.0.lcssa.i.i.i.i.i.i.i408 = phi ptr [ null, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i.i441 ], [ %i.bag, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437 ], [ %.lcssa1136.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i437.prol.loopexit ], [ %i.bap, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i405 ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i408, ptr %i.baq, align 8, !tbaa !1355, !noalias !2649
  %i.bar = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.bas = load ptr, ptr %i.bar, align 8, !tbaa !91, !noalias !2649 ; 8 uses
  %.not.i.i.i409 = icmp eq ptr %i.bas, null
  br i1 %.not.i.i.i409, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i413, label %bb.qb

bb.qb:                                            ; preds = %.loopexit3.i
  %i.bat = getelementptr inbounds nuw i8, ptr %i.bas, i64 8 ; 4 uses
  %i.bau = load atomic i64, ptr %i.bat acquire, align 8 ; 2 uses
  %i.bav = icmp eq i64 %i.bau, 4294967297
  %i.baw = trunc i64 %i.bau to i32                ; 2 uses
  br i1 %i.bav, label %bb.qc, label %bb.qd

bb.qc:                                            ; preds = %bb.qb
  store i32 0, ptr %i.bat, align 8, !tbaa !80
  %i.bax = getelementptr inbounds nuw i8, ptr %i.bas, i64 12
  store i32 0, ptr %i.bax, align 4, !tbaa !87
  %i.bay = load ptr, ptr %i.bas, align 8, !tbaa !88
  %i.baz = getelementptr inbounds nuw i8, ptr %i.bay, i64 16
  %i.bba = load ptr, ptr %i.baz, align 8
  call void %i.bba(ptr noundef nonnull align 8 dereferenceable(16) %i.bas) #19, !inline_history !2654
  %i.bbb = load ptr, ptr %i.bas, align 8, !tbaa !88
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.bbb, i64 24
  %i.bbd = load ptr, ptr %i.bbc, align 8
  call void %i.bbd(ptr noundef nonnull align 8 dereferenceable(16) %i.bas) #19, !inline_history !2654
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i413

bb.qd:                                            ; preds = %bb.qb
  %i.bbe = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95, !noalias !2649
  %.not.i.i.i.i410 = icmp eq i8 %i.bbe, 0
  br i1 %.not.i.i.i.i410, label %bb.qf, label %bb.qe

bb.qe:                                            ; preds = %bb.qd
  %i.bbf = add nsw i32 %i.baw, -1
  store i32 %i.bbf, ptr %i.bat, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i411

bb.qf:                                            ; preds = %bb.qd
  %i.bbg = atomicrmw volatile add ptr %i.bat, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i411

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i411: ; preds = %bb.qf, %bb.qe
  %.0.i.i.i.i.i412 = phi i32 [ %i.baw, %bb.qe ], [ %i.bbg, %bb.qf ]
  %i.bbh = icmp eq i32 %.0.i.i.i.i.i412, 1
  br i1 %i.bbh, label %bb.qg, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i413, !prof !96

bb.qg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i411
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bas) #19
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i413

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i413: ; preds = %bb.qg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i411, %bb.qc, %.loopexit3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19, !noalias !2649
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #19, !noalias !2649
  %i.bbi = load i64, ptr %i.azj, align 8, !tbaa !1313, !noalias !2649 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #19, !noalias !2649
  invoke void @_ZNK5arrow11StructArray5fieldEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.29") align 8 %47, ptr noundef nonnull align 8 dereferenceable(40) %i.azg, i32 noundef 1)
          to label %bb.qh unwind label %bb.qx

bb.qh:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i413
  %i.bbj = icmp ugt i64 %i.bbi, 576460752303423487
  br i1 %i.bbj, label %bb.qi, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i47.i

bb.qi:                                            ; preds = %bb.qh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
          to label %.noexc66.i unwind label %bb.qy

.noexc66.i:                                       ; preds = %bb.qi
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i47.i: ; preds = %bb.qh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %46, i8 0, i64 24, i1 false), !noalias !2649
  %.not.i.i.i.i48.i = icmp eq i64 %i.bbi, 0
  br i1 %.not.i.i.i.i48.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i65.i, label %.lr.ph.i.i.i.i.i.i49.i

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i65.i: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i47.i
  %i.bbk = getelementptr inbounds nuw i8, ptr %46, i64 8
  br label %.loopexit.i414

.lr.ph.i.i.i.i.i.i49.i:                           ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i47.i
  %i.bbl = shl nuw nsw i64 %i.bbi, 4
  %i.bbm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bbl) #20
          to label %.noexc67.i unwind label %bb.qy ; 6 uses

.noexc67.i:                                       ; preds = %.lr.ph.i.i.i.i.i.i49.i
  store ptr %i.bbm, ptr %46, align 8, !tbaa !1358, !noalias !2649
  %i.bbn = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 4 uses
  store ptr %i.bbm, ptr %i.bbn, align 8, !tbaa !1355, !noalias !2649
  %i.bbo = getelementptr inbounds nuw [16 x i8], ptr %i.bbm, i64 %i.bbi
  %i.bbp = getelementptr inbounds nuw i8, ptr %46, i64 16
  store ptr %i.bbo, ptr %i.bbp, align 8, !tbaa !1357, !noalias !2649
  %i.bbq = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 2 uses
  %i.bbr = load ptr, ptr %i.bbq, align 8, !tbaa !91, !noalias !2649 ; 2 uses
  %i.bbs = icmp eq ptr %i.bbr, null
  br i1 %i.bbs, label %.lr.ph.i.i.i.i.i.split.us.i60.i, label %.lr.ph.i.i.i.i.i.split.i50.i

.lr.ph.i.i.i.i.i.split.us.i60.i:                  ; preds = %.noexc67.i
  %119 = load ptr, ptr %47, align 8, !tbaa !1327, !noalias !2649
  %120 = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %119, i64 0 ; 9 uses
  %xtraiter1145 = and i64 %i.bbi, 7               ; 2 uses
  %lcmp.mod1146.not = icmp eq i64 %xtraiter1145, 0
  br i1 %lcmp.mod1146.not, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol.loopexit, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol: ; preds = %.lr.ph.i.i.i.i.i.split.us.i60.i, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol
  %.09.i.i.i.i.i.us.i62.i.prol = phi ptr [ %i.bbu, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol ], [ %i.bbm, %.lr.ph.i.i.i.i.i.split.us.i60.i ] ; 2 uses
  %.068.i.i.i.i.i.us.i63.i.prol = phi i64 [ %i.bbt, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol ], [ %i.bbi, %.lr.ph.i.i.i.i.i.split.us.i60.i ]
  %prol.iter1147 = phi i64 [ %prol.iter1147.next, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.split.us.i60.i ]
  store <2 x ptr> %120, ptr %.09.i.i.i.i.i.us.i62.i.prol, align 8, !tbaa !93
  %i.bbt = add i64 %.068.i.i.i.i.i.us.i63.i.prol, -1 ; 2 uses
  %i.bbu = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i62.i.prol, i64 16 ; 3 uses
  %prol.iter1147.next = add i64 %prol.iter1147, 1 ; 2 uses
  %prol.iter1147.cmp.not = icmp eq i64 %prol.iter1147.next, %xtraiter1145
  br i1 %prol.iter1147.cmp.not, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol.loopexit, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol, !llvm.loop !2655

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol.loopexit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol, %.lr.ph.i.i.i.i.i.split.us.i60.i
  %.lcssa1133.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.split.us.i60.i ], [ %i.bbu, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol ]
  %.09.i.i.i.i.i.us.i62.i.unr = phi ptr [ %i.bbm, %.lr.ph.i.i.i.i.i.split.us.i60.i ], [ %i.bbu, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol ]
  %.068.i.i.i.i.i.us.i63.i.unr = phi i64 [ %i.bbi, %.lr.ph.i.i.i.i.i.split.us.i60.i ], [ %i.bbt, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol ]
  %i.bbv = icmp ult i64 %i.bbi, 8
  br i1 %i.bbv, label %.loopexit.i414, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol.loopexit, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i
  %.09.i.i.i.i.i.us.i62.i = phi ptr [ %i.bce, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i ], [ %.09.i.i.i.i.i.us.i62.i.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol.loopexit ] ; 9 uses
  %.068.i.i.i.i.i.us.i63.i = phi i64 [ %i.bcd, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i ], [ %.068.i.i.i.i.i.us.i63.i.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol.loopexit ]
  store <2 x ptr> %120, ptr %.09.i.i.i.i.i.us.i62.i, align 8, !tbaa !93
  %i.bbw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i62.i, i64 16
  store <2 x ptr> %120, ptr %i.bbw, align 8, !tbaa !93
  %i.bbx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i62.i, i64 32
  store <2 x ptr> %120, ptr %i.bbx, align 8, !tbaa !93
  %i.bby = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i62.i, i64 48
  store <2 x ptr> %120, ptr %i.bby, align 8, !tbaa !93
  %i.bbz = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i62.i, i64 64
  store <2 x ptr> %120, ptr %i.bbz, align 8, !tbaa !93
  %i.bca = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i62.i, i64 80
  store <2 x ptr> %120, ptr %i.bca, align 8, !tbaa !93
  %i.bcb = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i62.i, i64 96
  store <2 x ptr> %120, ptr %i.bcb, align 8, !tbaa !93
  %i.bcc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i62.i, i64 112
  store <2 x ptr> %120, ptr %i.bcc, align 8, !tbaa !93
  %i.bcd = add i64 %.068.i.i.i.i.i.us.i63.i, -8   ; 2 uses
  %i.bce = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i62.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.us.i64.i.7 = icmp eq i64 %i.bcd, 0
  br i1 %.not.i.i.i.i.i.us.i64.i.7, label %.loopexit.i414, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i, !llvm.loop !2541

.lr.ph.i.i.i.i.i.splitthread-pre-split.i57.i:     ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i55.i
  %.pr.i58.i = load ptr, ptr %i.bbq, align 8, !tbaa !91, !noalias !2649
  br label %.lr.ph.i.i.i.i.i.split.i50.i

.lr.ph.i.i.i.i.i.split.i50.i:                     ; preds = %.noexc67.i, %.lr.ph.i.i.i.i.i.splitthread-pre-split.i57.i
  %i.bcf = phi ptr [ %.pr.i58.i, %.lr.ph.i.i.i.i.i.splitthread-pre-split.i57.i ], [ %i.bbr, %.noexc67.i ] ; 3 uses
  %.09.i.i.i.i.i.i51.i.a = phi ptr [ %i.bcn, %.lr.ph.i.i.i.i.i.splitthread-pre-split.i57.i ], [ %i.bbm, %.noexc67.i ] ; 3 uses
  %.068.i.i.i.i.i.i52.i = phi i64 [ %i.bcm, %.lr.ph.i.i.i.i.i.splitthread-pre-split.i57.i ], [ %i.bbi, %.noexc67.i ]
  %121 = load ptr, ptr %47, align 8, !tbaa !1327, !noalias !2649
  store ptr %121, ptr %.09.i.i.i.i.i.i51.i.a, align 8, !tbaa !1327
  %i.bcg = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i51.i.a, i64 8
  store ptr %i.bcf, ptr %i.bcg, align 8, !tbaa !91
  %.not.i.i.i.i.i.i.i.i.i.i53.i = icmp eq ptr %i.bcf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i53.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i55.i, label %bb.qj

bb.qj:                                            ; preds = %.lr.ph.i.i.i.i.i.split.i50.i
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bcf, i64 8 ; 3 uses
  %i.bci = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95, !noalias !2649
  %.not.i.i.i.i.i.i.i.i.i.i.i54.i = icmp eq i8 %i.bci, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i54.i, label %bb.ql, label %bb.qk

bb.qk:                                            ; preds = %bb.qj
  %i.bcj = load i32, ptr %i.bch, align 4, !tbaa !3
  %i.bck = add nsw i32 %i.bcj, 1
  store i32 %i.bck, ptr %i.bch, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i55.i

bb.ql:                                            ; preds = %bb.qj
  %i.bcl = atomicrmw volatile add ptr %i.bch, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i55.i

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i55.i: ; preds = %bb.ql, %bb.qk, %.lr.ph.i.i.i.i.i.split.i50.i
  %i.bcm = add nsw i64 %.068.i.i.i.i.i.i52.i, -1  ; 2 uses
  %i.bcn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i51.i.a, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i56.i = icmp eq i64 %i.bcm, 0
  br i1 %.not.i.i.i.i.i.i56.i, label %.loopexit.i414, label %.lr.ph.i.i.i.i.i.splitthread-pre-split.i57.i, !llvm.loop !2542

.loopexit.i414:                                   ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i55.i, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol.loopexit, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i65.i
  %i.bco = phi ptr [ %i.bbk, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i65.i ], [ %i.bbn, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol.loopexit ], [ %i.bbn, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i ], [ %i.bbn, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i55.i ]
  %.0.lcssa.i.i.i.i.i.i59.i = phi ptr [ null, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i65.i ], [ %i.bce, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i ], [ %.lcssa1133.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i61.i.prol.loopexit ], [ %i.bcn, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i55.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i59.i, ptr %i.bco, align 8, !tbaa !1355, !noalias !2649
  %i.bcp = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.bcq = load ptr, ptr %i.bcp, align 8, !tbaa !91, !noalias !2649 ; 8 uses
  %.not.i.i69.i = icmp eq ptr %i.bcq, null
  br i1 %.not.i.i69.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73.i, label %bb.qm

bb.qm:                                            ; preds = %.loopexit.i414
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bcq, i64 8 ; 4 uses
  %i.bcs = load atomic i64, ptr %i.bcr acquire, align 8 ; 2 uses
  %i.bct = icmp eq i64 %i.bcs, 4294967297
  %i.bcu = trunc i64 %i.bcs to i32                ; 2 uses
  br i1 %i.bct, label %bb.qn, label %bb.qo

bb.qn:                                            ; preds = %bb.qm
  store i32 0, ptr %i.bcr, align 8, !tbaa !80
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bcq, i64 12
  store i32 0, ptr %i.bcv, align 4, !tbaa !87
  %i.bcw = load ptr, ptr %i.bcq, align 8, !tbaa !88
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.bcw, i64 16
  %i.bcy = load ptr, ptr %i.bcx, align 8
  call void %i.bcy(ptr noundef nonnull align 8 dereferenceable(16) %i.bcq) #19, !inline_history !2654
  %i.bcz = load ptr, ptr %i.bcq, align 8, !tbaa !88
  %i.bda = getelementptr inbounds nuw i8, ptr %i.bcz, i64 24
  %i.bdb = load ptr, ptr %i.bda, align 8
  call void %i.bdb(ptr noundef nonnull align 8 dereferenceable(16) %i.bcq) #19, !inline_history !2654
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73.i

bb.qo:                                            ; preds = %bb.qm
  %i.bdc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95, !noalias !2649
  %.not.i.i.i70.i = icmp eq i8 %i.bdc, 0
  br i1 %.not.i.i.i70.i, label %bb.qq, label %bb.qp

bb.qp:                                            ; preds = %bb.qo
  %i.bdd = add nsw i32 %i.bcu, -1
  store i32 %i.bdd, ptr %i.bcr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71.i

bb.qq:                                            ; preds = %bb.qo
  %i.bde = atomicrmw volatile add ptr %i.bcr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71.i: ; preds = %bb.qq, %bb.qp
  %.0.i.i.i.i72.i = phi i32 [ %i.bcu, %bb.qp ], [ %i.bde, %bb.qq ]
  %i.bdf = icmp eq i32 %.0.i.i.i.i72.i, 1
  br i1 %i.bdf, label %bb.qr, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73.i, !prof !96

bb.qr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bcq) #19
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73.i

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73.i: ; preds = %bb.qr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i71.i, %bb.qn, %.loopexit.i414
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #19, !noalias !2649
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #19, !noalias !2649
  %i.bdg = load ptr, ptr %2, align 8, !tbaa !1308, !noalias !2649
  invoke void @_ZN5arrow11ConcatenateERKSt6vectorISt10shared_ptrINS_5ArrayEESaIS3_EEPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.32") align 8 %48, ptr noundef nonnull align 8 dereferenceable(24) %44, ptr noundef %i.bdg)
          to label %bb.qs unwind label %bb.ra

bb.qs:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73.i
  %i.bdh = load ptr, ptr %48, align 8, !tbaa !60, !noalias !2649
  %i.bdi = icmp eq ptr %i.bdh, null
  br i1 %i.bdi, label %bb.rc, label %bb.qt, !prof !63

bb.qt:                                            ; preds = %bb.qs
  store ptr null, ptr %0, align 8, !tbaa !60, !alias.scope !2649
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %48)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i415 unwind label %bb.rb

bb.qu:                                            ; preds = %_ZN5arrow9MapScalarC2ERKS0_.exit.i
  %i.bdj = landingpad { ptr, i32 }
          cleanup
  br label %bb.qw

bb.qv:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i399, %bb.px
  %i.bdk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %45) #19
  br label %bb.qw

bb.qw:                                            ; preds = %bb.qv, %bb.qu
  %.pn.i396 = phi { ptr, i32 } [ %i.bdk, %bb.qv ], [ %i.bdj, %bb.qu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19, !noalias !2649
  br label %bb.tz

bb.qx:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i413
  %i.bdl = landingpad { ptr, i32 }
          cleanup
  br label %bb.qz

bb.qy:                                            ; preds = %.lr.ph.i.i.i.i.i.i49.i, %bb.qi
  %i.bdm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %47) #19
  br label %bb.qz

bb.qz:                                            ; preds = %bb.qy, %bb.qx
  %.pn29.i = phi { ptr, i32 } [ %i.bdm, %bb.qy ], [ %i.bdl, %bb.qx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #19, !noalias !2649
  br label %bb.ty

bb.ra:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit73.i
  %i.bdn = landingpad { ptr, i32 }
          cleanup
  br label %bb.tx

bb.rb:                                            ; preds = %bb.qt
  %i.bdo = landingpad { ptr, i32 }
          cleanup
  br label %bb.tw

bb.rc:                                            ; preds = %bb.qs
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #19, !noalias !2649
  call void @llvm.experimental.noalias.scope.decl(metadata !2656)
  call void @llvm.experimental.noalias.scope.decl(metadata !2659)
  %i.bdp = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 2 uses
  %i.bdq = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.bdr = getelementptr inbounds nuw i8, ptr %48, i64 16
  %i.bds = load <2 x ptr>, ptr %i.bdp, align 8, !tbaa !93, !noalias !2662
  store ptr null, ptr %i.bdr, align 8, !tbaa !91, !noalias !2662
  store <2 x ptr> %i.bds, ptr %49, align 16, !tbaa !93, !alias.scope !2663, !noalias !2649
  store ptr null, ptr %i.bdp, align 8, !tbaa !1327, !noalias !2662
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #19, !noalias !2649
  %i.bdt = load ptr, ptr %2, align 8, !tbaa !1308, !noalias !2649
  invoke void @_ZN5arrow11ConcatenateERKSt6vectorISt10shared_ptrINS_5ArrayEESaIS3_EEPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.32") align 8 %50, ptr noundef nonnull align 8 dereferenceable(24) %46, ptr noundef %i.bdt)
          to label %bb.rd unwind label %bb.rf

bb.rd:                                            ; preds = %bb.rc
  %i.bdu = load ptr, ptr %50, align 8, !tbaa !60, !noalias !2649
  %i.bdv = icmp eq ptr %i.bdu, null
  br i1 %i.bdv, label %bb.rh, label %bb.re, !prof !63

bb.re:                                            ; preds = %bb.rd
  store ptr null, ptr %0, align 8, !tbaa !60, !alias.scope !2649
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %50)
          to label %_ZN5arrow6StatusC2ERKS0_.exit76.i unwind label %bb.rg

bb.rf:                                            ; preds = %bb.rc
  %i.bdw = landingpad { ptr, i32 }
          cleanup
  br label %bb.sz

bb.rg:                                            ; preds = %bb.re
  %i.bdx = landingpad { ptr, i32 }
          cleanup
  br label %bb.sy

bb.rh:                                            ; preds = %bb.rd
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #19, !noalias !2649
  call void @llvm.experimental.noalias.scope.decl(metadata !2664)
  call void @llvm.experimental.noalias.scope.decl(metadata !2667)
  %i.bdy = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 2 uses
  %i.bdz = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.bea = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.beb = load <2 x ptr>, ptr %i.bdy, align 8, !tbaa !93, !noalias !2670
  store ptr null, ptr %i.bea, align 8, !tbaa !91, !noalias !2670
  store <2 x ptr> %i.beb, ptr %51, align 16, !tbaa !93, !alias.scope !2671, !noalias !2649
  store ptr null, ptr %i.bdy, align 8, !tbaa !1327, !noalias !2670
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #19, !noalias !2649
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %52, i8 0, i64 16, i1 false), !noalias !2649
  %i.bec = getelementptr inbounds nuw i8, ptr %i.azg, i64 8
  %i.bed = load ptr, ptr %i.bec, align 8, !tbaa !33
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bed, i64 16
  %i.bef = load i64, ptr %i.bee, align 8, !tbaa !1342
  %i.beg = trunc i64 %i.bef to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #19, !noalias !2649
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_120RepeatedArrayFactory19CreateOffsetsBufferIiEENS_6StatusET_PSt10shared_ptrINS_6BufferEE(ptr dead_on_unwind noalias writable align 8 %53, ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %i.beg, ptr noundef %52)
          to label %_ZN5arrow6StatusD2Ev.exit.i431 unwind label %bb.ri

_ZN5arrow6StatusD2Ev.exit.i431:                   ; preds = %bb.rh
  %i.beh = load ptr, ptr %53, align 8, !tbaa !60, !noalias !2649 ; 2 uses
  store ptr %i.beh, ptr %0, align 8, !tbaa !60, !alias.scope !2649
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #19, !noalias !2649
  %i.bei = icmp eq ptr %i.beh, null
  br i1 %i.bei, label %_ZN5arrow6StatusD2Ev.exit80.i, label %.critedge.i432

bb.ri:                                            ; preds = %bb.rh
  %i.bej = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #19, !noalias !2649
  br label %bb.sj

_ZN5arrow6StatusD2Ev.exit80.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i431
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #19, !noalias !2649
  %i.bek = load ptr, ptr %i.ayf, align 8, !tbaa !2337, !noalias !2649, !nonnull !75, !align !121
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bek, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !2672)
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #19, !noalias !2675
  store ptr null, ptr %54, align 16, !tbaa !2676, !alias.scope !2672, !noalias !2649
  %i.bem = getelementptr inbounds nuw i8, ptr %54, i64 8 ; 2 uses
  invoke void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow8MapArrayESaIvEJRKSt10shared_ptrINS4_8DataTypeEERlS7_INS4_6BufferEES7_INS4_5ArrayEESG_EEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %i.bem, ptr noundef nonnull align 8 dereferenceable(16) %54, ptr nonnull %42, ptr noundef nonnull align 8 dereferenceable(16) %i.bel, ptr noundef nonnull align 8 dereferenceable(8) %i.azj, ptr noundef nonnull align 8 dereferenceable(16) %52, ptr noundef nonnull align 8 dereferenceable(16) %49, ptr noundef nonnull align 8 dereferenceable(16) %51)
          to label %bb.rj unwind label %bb.rw

bb.rj:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit80.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19, !noalias !2675
  %i.ben = getelementptr inbounds nuw i8, ptr %2, i64 24
end_hunk_0
begin_hunk_1_@_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_120RepeatedArrayFactoryEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  %.not.i.i.i116.i = icmp eq ptr %i.bki, %i.bjq
  br i1 %.not.i.i.i116.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i423, label %.lr.ph.i.i.i.i417, !llvm.loop !1367

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i423: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i.i422
  %.pr.i117.i = load ptr, ptr %46, align 8, !tbaa !1358, !noalias !2649
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i.i424

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i.i424: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i423, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit114.i
  %i.bkj = phi ptr [ %.pr.i117.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i423 ], [ %i.bjo, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit114.i ] ; 3 uses
  %.not.i.i1.i.i425 = icmp eq ptr %i.bkj, null
  br i1 %.not.i.i1.i.i425, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit.i, label %bb.to

bb.to:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i.i424
  %i.bkk = getelementptr inbounds nuw i8, ptr %46, i64 16
  %i.bkl = load ptr, ptr %i.bkk, align 8, !tbaa !1357, !noalias !2649
  %i.bkm = ptrtoint ptr %i.bkl to i64
  %i.bkn = ptrtoint ptr %i.bkj to i64
  %i.bko = sub i64 %i.bkm, %i.bkn
  call void @_ZdlPvm(ptr noundef nonnull %i.bkj, i64 noundef %i.bko) #21
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit.i: ; preds = %bb.to, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i.i424
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19, !noalias !2649
  %i.bkp = load ptr, ptr %44, align 8, !tbaa !1358, !noalias !2649 ; 3 uses
  %i.bkq = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.bkr = load ptr, ptr %i.bkq, align 8, !tbaa !1355, !noalias !2649 ; 2 uses
  %.not4.i.i.i118.i = icmp eq ptr %i.bkp, %i.bkr
  br i1 %.not4.i.i.i118.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i129.i, label %.lr.ph.i.i.i119.i

.lr.ph.i.i.i119.i:                                ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit.i, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i125.i
  %.05.i.i.i120.i = phi ptr [ %i.blj, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i125.i ], [ %i.bkp, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit.i ] ; 2 uses
  %i.bks = getelementptr inbounds nuw i8, ptr %.05.i.i.i120.i, i64 8
  %i.bkt = load ptr, ptr %i.bks, align 8, !tbaa !91 ; 8 uses
  %.not.i.i.i.i.i.i.i121.i = icmp eq ptr %i.bkt, null
  br i1 %.not.i.i.i.i.i.i.i121.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i125.i, label %bb.tp

bb.tp:                                            ; preds = %.lr.ph.i.i.i119.i
  %i.bku = getelementptr inbounds nuw i8, ptr %i.bkt, i64 8 ; 4 uses
  %i.bkv = load atomic i64, ptr %i.bku acquire, align 8 ; 2 uses
  %i.bkw = icmp eq i64 %i.bkv, 4294967297
  %i.bkx = trunc i64 %i.bkv to i32                ; 2 uses
  br i1 %i.bkw, label %bb.tq, label %bb.tr

bb.tq:                                            ; preds = %bb.tp
  store i32 0, ptr %i.bku, align 8, !tbaa !80
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bkt, i64 12
  store i32 0, ptr %i.bky, align 4, !tbaa !87
  %i.bkz = load ptr, ptr %i.bkt, align 8, !tbaa !88
  %i.bla = getelementptr inbounds nuw i8, ptr %i.bkz, i64 16
  %i.blb = load ptr, ptr %i.bla, align 8
  call void %i.blb(ptr noundef nonnull align 8 dereferenceable(16) %i.bkt) #19, !inline_history !2686
  %i.blc = load ptr, ptr %i.bkt, align 8, !tbaa !88
  %i.bld = getelementptr inbounds nuw i8, ptr %i.blc, i64 24
  %i.ble = load ptr, ptr %i.bld, align 8
  call void %i.ble(ptr noundef nonnull align 8 dereferenceable(16) %i.bkt) #19, !inline_history !2686
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i125.i

bb.tr:                                            ; preds = %bb.tp
  %i.blf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95, !noalias !2649
  %.not.i.i.i.i.i.i.i.i122.i = icmp eq i8 %i.blf, 0
  br i1 %.not.i.i.i.i.i.i.i.i122.i, label %bb.tt, label %bb.ts

bb.ts:                                            ; preds = %bb.tr
  %i.blg = add nsw i32 %i.bkx, -1
  store i32 %i.blg, ptr %i.bku, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i123.i

bb.tt:                                            ; preds = %bb.tr
  %i.blh = atomicrmw volatile add ptr %i.bku, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i123.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i123.i: ; preds = %bb.tt, %bb.ts
  %.0.i.i.i.i.i.i.i.i.i124.i = phi i32 [ %i.bkx, %bb.ts ], [ %i.blh, %bb.tt ]
  %i.bli = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i124.i, 1
  br i1 %i.bli, label %bb.tu, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i125.i, !prof !96

bb.tu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i123.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bkt) #19
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i125.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i125.i: ; preds = %bb.tu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i123.i, %bb.tq, %.lr.ph.i.i.i119.i
  %i.blj = getelementptr inbounds nuw i8, ptr %.05.i.i.i120.i, i64 16 ; 2 uses
  %.not.i.i.i126.i = icmp eq ptr %i.blj, %i.bkr
  br i1 %.not.i.i.i126.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i127.i, label %.lr.ph.i.i.i119.i, !llvm.loop !1367

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i127.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i125.i
  %.pr.i128.i = load ptr, ptr %44, align 8, !tbaa !1358, !noalias !2649
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i129.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i129.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i127.i, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit.i
  %i.blk = phi ptr [ %.pr.i128.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i127.i ], [ %i.bkp, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i130.i = icmp eq ptr %i.blk, null
  br i1 %.not.i.i1.i130.i, label %_ZN5arrow12_GLOBAL__N_120RepeatedArrayFactory5VisitERKNS_7MapTypeE.exit, label %bb.tv

bb.tv:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i129.i
  %i.bll = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.blm = load ptr, ptr %i.bll, align 8, !tbaa !1357, !noalias !2649
  %i.bln = ptrtoint ptr %i.blm to i64
  %i.blo = ptrtoint ptr %i.blk to i64
  %i.blp = sub i64 %i.bln, %i.blo
  call void @_ZdlPvm(ptr noundef nonnull %i.blk, i64 noundef %i.blp) #21
  br label %_ZN5arrow12_GLOBAL__N_120RepeatedArrayFactory5VisitERKNS_7MapTypeE.exit

bb.tw:                                            ; preds = %bb.sz, %bb.rb
  %.pn40.i = phi { ptr, i32 } [ %i.bdo, %bb.rb ], [ %.pn36.pn.i, %bb.sz ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %48) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #19, !noalias !2649
  br label %bb.tx

bb.tx:                                            ; preds = %bb.tw, %bb.ra
  %.pn40.pn.i = phi { ptr, i32 } [ %.pn40.i, %bb.tw ], [ %i.bdn, %bb.ra ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %46) #19
  br label %bb.ty

bb.ty:                                            ; preds = %bb.tx, %bb.qz
  %.pn40.pn.pn.i = phi { ptr, i32 } [ %.pn40.pn.i, %bb.tx ], [ %.pn29.i, %bb.qz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19, !noalias !2649
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %44) #19
  br label %bb.tz

bb.tz:                                            ; preds = %bb.ty, %bb.qw
  %.pn40.pn.pn.pn.i = phi { ptr, i32 } [ %.pn40.pn.pn.i, %bb.ty ], [ %.pn.i396, %bb.qw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19, !noalias !2649
  call void @_ZN5arrow14BaseListScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %43) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19, !noalias !2649
  br label %common.resume

_ZN5arrow12_GLOBAL__N_120RepeatedArrayFactory5VisitERKNS_7MapTypeE.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i129.i, %bb.tv
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19, !noalias !2649
  call void @_ZN5arrow14BaseListScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %43) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19, !noalias !2649
  br label %bb.ajo

bb.ua:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2687)
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #19, !noalias !2687
  %i.blq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.blr = load ptr, ptr %i.blq, align 8, !tbaa !2337, !noalias !2687, !nonnull !75, !align !121 ; 2 uses
  %i.bls = getelementptr inbounds nuw i8, ptr %i.blr, i64 48
  %i.blt = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 3 uses
  %i.blu = getelementptr inbounds nuw i8, ptr %i.blr, i64 56
  %i.blv = load ptr, ptr %i.blu, align 8, !tbaa !91, !noalias !2687 ; 2 uses
  %i.blw = load <2 x ptr>, ptr %i.bls, align 8, !tbaa !93, !noalias !2687
  store <2 x ptr> %i.blw, ptr %37, align 16, !tbaa !93, !noalias !2687
  %.not.i.i.i.i444 = icmp eq ptr %i.blv, null
  br i1 %.not.i.i.i.i444, label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i446, label %bb.ub

bb.ub:                                            ; preds = %bb.ua
  %i.blx = getelementptr inbounds nuw i8, ptr %i.blv, i64 8 ; 3 uses
  %i.bly = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95, !noalias !2687
  %.not.i.i.i.i.i445 = icmp eq i8 %i.bly, 0
  br i1 %.not.i.i.i.i.i445, label %bb.ud, label %bb.uc

bb.uc:                                            ; preds = %bb.ub
  %i.blz = load i32, ptr %i.blx, align 4, !tbaa !3
  %i.bma = add nsw i32 %i.blz, 1
  store i32 %i.bma, ptr %i.blx, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i446

bb.ud:                                            ; preds = %bb.ub
  %i.bmb = atomicrmw volatile add ptr %i.blx, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i446

_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i446: ; preds = %bb.ud, %bb.uc, %bb.ua
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #19, !noalias !2687
  %i.bmc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bmd = load i64, ptr %i.bmc, align 8, !tbaa !1313, !noalias !2687 ; 9 uses
  %i.bme = icmp ugt i64 %i.bmd, 576460752303423487
  br i1 %i.bme, label %bb.ue, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i447

bb.ue:                                            ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i446
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
          to label %.noexc.i492 unwind label %bb.uk

.noexc.i492:                                      ; preds = %bb.ue
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i447: ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i446
  %.not.i.i.i.i14.i = icmp eq i64 %i.bmd, 0
  br i1 %.not.i.i.i.i14.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i.i491, label %.lr.ph.i.i.i.i.i.i.i448

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i.i491: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i447
  %i.bmf = getelementptr inbounds nuw i8, ptr %38, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %38, i8 0, i64 24, i1 false), !noalias !2687
  br label %.loopexit.i458

.lr.ph.i.i.i.i.i.i.i448:                          ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i447
  %i.bmg = shl nuw nsw i64 %i.bmd, 4
  %i.bmh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bmg) #20
          to label %.noexc15.i unwind label %bb.uk ; 6 uses

.noexc15.i:                                       ; preds = %.lr.ph.i.i.i.i.i.i.i448
  store ptr %i.bmh, ptr %38, align 8, !tbaa !1358, !noalias !2687
  %i.bmi = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 4 uses
  store ptr %i.bmh, ptr %i.bmi, align 8, !tbaa !1355, !noalias !2687
  %i.bmj = getelementptr inbounds nuw [16 x i8], ptr %i.bmh, i64 %i.bmd
  %i.bmk = getelementptr inbounds nuw i8, ptr %38, i64 16
  store ptr %i.bmj, ptr %i.bmk, align 8, !tbaa !1357, !noalias !2687
  %i.bml = load ptr, ptr %i.blt, align 8, !tbaa !91, !noalias !2687 ; 2 uses
  %i.bmm = icmp eq ptr %i.bml, null
  br i1 %i.bmm, label %.lr.ph.i.i.i.i.i.split.us.i.i486, label %.lr.ph.i.i.i.i.i.split.i.i449

.lr.ph.i.i.i.i.i.split.us.i.i486:                 ; preds = %.noexc15.i
  %122 = load ptr, ptr %37, align 16, !tbaa !1327, !noalias !2687
  %123 = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %122, i64 0 ; 9 uses
  %xtraiter = and i64 %i.bmd, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487.prol.loopexit, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487.prol

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487.prol: ; preds = %.lr.ph.i.i.i.i.i.split.us.i.i486, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487.prol
  %.09.i.i.i.i.i.us.i.i488.prol = phi ptr [ %i.bmo, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487.prol ], [ %i.bmh, %.lr.ph.i.i.i.i.i.split.us.i.i486 ] ; 2 uses
  %.068.i.i.i.i.i.us.i.i489.prol = phi i64 [ %i.bmn, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487.prol ], [ %i.bmd, %.lr.ph.i.i.i.i.i.split.us.i.i486 ]
  %prol.iter = phi i64 [ %prol.iter.next, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487.prol ], [ 0, %.lr.ph.i.i.i.i.i.split.us.i.i486 ]
  store <2 x ptr> %123, ptr %.09.i.i.i.i.i.us.i.i488.prol, align 8, !tbaa !93
  %i.bmn = add i64 %.068.i.i.i.i.i.us.i.i489.prol, -1 ; 2 uses
  %i.bmo = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i488.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487.prol.loopexit, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487.prol, !llvm.loop !2690

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487.prol.loopexit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487.prol, %.lr.ph.i.i.i.i.i.split.us.i.i486
  %.lcssa1139.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.split.us.i.i486 ], [ %i.bmo, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487.prol ]
  %.09.i.i.i.i.i.us.i.i488.unr = phi ptr [ %i.bmh, %.lr.ph.i.i.i.i.i.split.us.i.i486 ], [ %i.bmo, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487.prol ]
  %.068.i.i.i.i.i.us.i.i489.unr = phi i64 [ %i.bmd, %.lr.ph.i.i.i.i.i.split.us.i.i486 ], [ %i.bmn, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487.prol ]
  %i.bmp = icmp ult i64 %i.bmd, 8
  br i1 %i.bmp, label %.loopexit.i458, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487.prol.loopexit, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487
  %.09.i.i.i.i.i.us.i.i488 = phi ptr [ %i.bmy, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487 ], [ %.09.i.i.i.i.i.us.i.i488.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487.prol.loopexit ] ; 9 uses
  %.068.i.i.i.i.i.us.i.i489 = phi i64 [ %i.bmx, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487 ], [ %.068.i.i.i.i.i.us.i.i489.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487.prol.loopexit ]
  store <2 x ptr> %123, ptr %.09.i.i.i.i.i.us.i.i488, align 8, !tbaa !93
  %i.bmq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i488, i64 16
  store <2 x ptr> %123, ptr %i.bmq, align 8, !tbaa !93
  %i.bmr = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i488, i64 32
  store <2 x ptr> %123, ptr %i.bmr, align 8, !tbaa !93
  %i.bms = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i488, i64 48
  store <2 x ptr> %123, ptr %i.bms, align 8, !tbaa !93
  %i.bmt = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i488, i64 64
  store <2 x ptr> %123, ptr %i.bmt, align 8, !tbaa !93
  %i.bmu = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i488, i64 80
  store <2 x ptr> %123, ptr %i.bmu, align 8, !tbaa !93
  %i.bmv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i488, i64 96
  store <2 x ptr> %123, ptr %i.bmv, align 8, !tbaa !93
  %i.bmw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i488, i64 112
  store <2 x ptr> %123, ptr %i.bmw, align 8, !tbaa !93
  %i.bmx = add i64 %.068.i.i.i.i.i.us.i.i489, -8  ; 2 uses
  %i.bmy = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.us.i.i488, i64 128 ; 2 uses
  %.not.i.i.i.i.i.us.i.i490.7 = icmp eq i64 %i.bmx, 0
  br i1 %.not.i.i.i.i.i.us.i.i490.7, label %.loopexit.i458, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487, !llvm.loop !2541

.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i456:    ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i454
  %.pr.i.i457 = load ptr, ptr %i.blt, align 8, !tbaa !91, !noalias !2687
  br label %.lr.ph.i.i.i.i.i.split.i.i449

.lr.ph.i.i.i.i.i.split.i.i449:                    ; preds = %.noexc15.i, %.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i456
  %i.bmz = phi ptr [ %.pr.i.i457, %.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i456 ], [ %i.bml, %.noexc15.i ] ; 3 uses
  %.09.i.i.i.i.i.i.i450 = phi ptr [ %i.bnh, %.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i456 ], [ %i.bmh, %.noexc15.i ] ; 3 uses
  %.068.i.i.i.i.i.i.i451 = phi i64 [ %i.bng, %.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i456 ], [ %i.bmd, %.noexc15.i ]
  %124 = load ptr, ptr %37, align 16, !tbaa !1327, !noalias !2687
  store ptr %124, ptr %.09.i.i.i.i.i.i.i450, align 8, !tbaa !1327
  %i.bna = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i450, i64 8
  store ptr %i.bmz, ptr %i.bna, align 8, !tbaa !91
  %.not.i.i.i.i.i.i.i.i.i.i.i452 = icmp eq ptr %i.bmz, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i452, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i454, label %bb.uf

bb.uf:                                            ; preds = %.lr.ph.i.i.i.i.i.split.i.i449
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.bmz, i64 8 ; 3 uses
  %i.bnc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95, !noalias !2687
  %.not.i.i.i.i.i.i.i.i.i.i.i.i453 = icmp eq i8 %i.bnc, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i453, label %bb.uh, label %bb.ug

bb.ug:                                            ; preds = %bb.uf
  %i.bnd = load i32, ptr %i.bnb, align 4, !tbaa !3
  %i.bne = add nsw i32 %i.bnd, 1
  store i32 %i.bne, ptr %i.bnb, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i454

bb.uh:                                            ; preds = %bb.uf
  %i.bnf = atomicrmw volatile add ptr %i.bnb, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i454

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i454: ; preds = %bb.uh, %bb.ug, %.lr.ph.i.i.i.i.i.split.i.i449
  %i.bng = add nsw i64 %.068.i.i.i.i.i.i.i451, -1 ; 2 uses
  %i.bnh = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i450, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i455 = icmp eq i64 %i.bng, 0
  br i1 %.not.i.i.i.i.i.i.i455, label %.loopexit.i458, label %.lr.ph.i.i.i.i.i.splitthread-pre-split.i.i456, !llvm.loop !2542

.loopexit.i458:                                   ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i454, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487.prol.loopexit, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i.i491
  %i.bni = phi ptr [ %i.bmf, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i.i491 ], [ %i.bmi, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487.prol.loopexit ], [ %i.bmi, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487 ], [ %i.bmi, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i454 ]
  %.0.lcssa.i.i.i.i.i.i.i459 = phi ptr [ null, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EEC2EmRKS4_.exit.thread.i.i491 ], [ %i.bmy, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487 ], [ %.lcssa1139.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.us.i.i487.prol.loopexit ], [ %i.bnh, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i454 ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i459, ptr %i.bni, align 8, !tbaa !1355, !noalias !2687
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #19, !noalias !2687
  %i.bnj = load ptr, ptr %2, align 8, !tbaa !1308, !noalias !2687
  invoke void @_ZN5arrow11ConcatenateERKSt6vectorISt10shared_ptrINS_5ArrayEESaIS3_EEPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.32") align 8 %39, ptr noundef nonnull align 8 dereferenceable(24) %38, ptr noundef %i.bnj)
          to label %bb.ui unwind label %bb.ul

bb.ui:                                            ; preds = %.loopexit.i458
  %i.bnk = load ptr, ptr %39, align 8, !tbaa !60, !noalias !2687
  %i.bnl = icmp eq ptr %i.bnk, null
  br i1 %i.bnl, label %bb.un, label %bb.uj, !prof !63

bb.uj:                                            ; preds = %bb.ui
  store ptr null, ptr %0, align 8, !tbaa !60, !alias.scope !2687
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i461 unwind label %bb.um

bb.uk:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i448, %bb.ue
  %i.bnm = landingpad { ptr, i32 }
          cleanup
  br label %bb.wf

bb.ul:                                            ; preds = %.loopexit.i458
  %i.bnn = landingpad { ptr, i32 }
          cleanup
  br label %bb.we

bb.um:                                            ; preds = %bb.uj
  %i.bno = landingpad { ptr, i32 }
          cleanup
  br label %bb.wd

bb.un:                                            ; preds = %bb.ui
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #19, !noalias !2687
  call void @llvm.experimental.noalias.scope.decl(metadata !2691)
  call void @llvm.experimental.noalias.scope.decl(metadata !2694)
  %i.bnp = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  %i.bnq = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.bnr = getelementptr inbounds nuw i8, ptr %39, i64 16
  %i.bns = load <2 x ptr>, ptr %i.bnp, align 8, !tbaa !93, !noalias !2697
  store ptr null, ptr %i.bnr, align 8, !tbaa !91, !noalias !2697
  store <2 x ptr> %i.bns, ptr %40, align 16, !tbaa !93, !alias.scope !2698, !noalias !2687
  store ptr null, ptr %i.bnp, align 8, !tbaa !1327, !noalias !2697
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #19, !noalias !2687
  %i.bnt = load ptr, ptr %i.blq, align 8, !tbaa !2337, !noalias !2687, !nonnull !75, !align !121
  %i.bnu = getelementptr inbounds nuw i8, ptr %i.bnt, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !2699)
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #19, !noalias !2702
  store ptr null, ptr %41, align 16, !tbaa !2703, !alias.scope !2699, !noalias !2687
  %i.bnv = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  invoke void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow18FixedSizeListArrayESaIvEJRKSt10shared_ptrINS4_8DataTypeEERlRS7_INS4_5ArrayEEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %i.bnv, ptr noundef nonnull align 8 dereferenceable(16) %41, ptr nonnull %36, ptr noundef nonnull align 8 dereferenceable(16) %i.bnu, ptr noundef nonnull align 8 dereferenceable(8) %i.bmc, ptr noundef nonnull align 8 dereferenceable(16) %40)
          to label %bb.uo unwind label %bb.vh

bb.uo:                                            ; preds = %bb.un
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19, !noalias !2702
  %i.bnw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bnx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bny = load <2 x ptr>, ptr %41, align 16, !tbaa !93, !noalias !2687
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %41, i8 0, i64 16, i1 false), !noalias !2687
  %i.bnz = load ptr, ptr %i.bnx, align 8, !tbaa !91, !noalias !2687 ; 8 uses
  store <2 x ptr> %i.bny, ptr %i.bnw, align 8, !tbaa !93, !noalias !2687
  %.not.i.i.i.i18.i = icmp eq ptr %i.bnz, null
  br i1 %.not.i.i.i.i18.i, label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSINS0_18FixedSizeListArrayEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS2_E4typeEOSC_.exit.i, label %bb.up

bb.up:                                            ; preds = %bb.uo
  %i.boa = getelementptr inbounds nuw i8, ptr %i.bnz, i64 8 ; 4 uses
  %i.bob = load atomic i64, ptr %i.boa acquire, align 8 ; 2 uses
  %i.boc = icmp eq i64 %i.bob, 4294967297
  %i.bod = trunc i64 %i.bob to i32                ; 2 uses
  br i1 %i.boc, label %bb.uq, label %bb.ur

bb.uq:                                            ; preds = %bb.up
  store i32 0, ptr %i.boa, align 8, !tbaa !80
  %i.boe = getelementptr inbounds nuw i8, ptr %i.bnz, i64 12
  store i32 0, ptr %i.boe, align 4, !tbaa !87
  %i.bof = load ptr, ptr %i.bnz, align 8, !tbaa !88
  %i.bog = getelementptr inbounds nuw i8, ptr %i.bof, i64 16
  %i.boh = load ptr, ptr %i.bog, align 8
  call void %i.boh(ptr noundef nonnull align 8 dereferenceable(16) %i.bnz) #19, !inline_history !2706
  %i.boi = load ptr, ptr %i.bnz, align 8, !tbaa !88
  %i.boj = getelementptr inbounds nuw i8, ptr %i.boi, i64 24
  %i.bok = load ptr, ptr %i.boj, align 8
  call void %i.bok(ptr noundef nonnull align 8 dereferenceable(16) %i.bnz) #19, !inline_history !2706
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSINS0_18FixedSizeListArrayEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS2_E4typeEOSC_.exit.i

bb.ur:                                            ; preds = %bb.up
  %i.bol = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95, !noalias !2687
  %.not.i.i.i.i.i.i479 = icmp eq i8 %i.bol, 0
  br i1 %.not.i.i.i.i.i.i479, label %bb.ut, label %bb.us

bb.us:                                            ; preds = %bb.ur
  %i.bom = add nsw i32 %i.bod, -1
  store i32 %i.bom, ptr %i.boa, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i480

bb.ut:                                            ; preds = %bb.ur
  %i.bon = atomicrmw volatile add ptr %i.boa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i480

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i480: ; preds = %bb.ut, %bb.us
  %.0.i.i.i.i.i.i.i481 = phi i32 [ %i.bod, %bb.us ], [ %i.bon, %bb.ut ]
  %i.boo = icmp eq i32 %.0.i.i.i.i.i.i.i481, 1
  br i1 %i.boo, label %bb.uu, label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSINS0_18FixedSizeListArrayEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS2_E4typeEOSC_.exit.i, !prof !96

bb.uu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i480
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bnz) #19
  br label %_ZNSt10shared_ptrIN5arrow5ArrayEEaSINS0_18FixedSizeListArrayEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS2_E4typeEOSC_.exit.i

_ZNSt10shared_ptrIN5arrow5ArrayEEaSINS0_18FixedSizeListArrayEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS2_E4typeEOSC_.exit.i: ; preds = %bb.uu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i480, %bb.uq, %bb.uo
  %i.bop = load ptr, ptr %i.bnv, align 8, !tbaa !91, !noalias !2687 ; 8 uses
  %.not.i.i.i482 = icmp eq ptr %i.bop, null
  br i1 %.not.i.i.i482, label %_ZNSt12__shared_ptrIN5arrow18FixedSizeListArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.uv

bb.uv:                                            ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEaSINS0_18FixedSizeListArrayEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS2_E4typeEOSC_.exit.i
  %i.boq = getelementptr inbounds nuw i8, ptr %i.bop, i64 8 ; 4 uses
  %i.bor = load atomic i64, ptr %i.boq acquire, align 8 ; 2 uses
  %i.bos = icmp eq i64 %i.bor, 4294967297
  %i.bot = trunc i64 %i.bor to i32                ; 2 uses
  br i1 %i.bos, label %bb.uw, label %bb.ux

bb.uw:                                            ; preds = %bb.uv
  store i32 0, ptr %i.boq, align 8, !tbaa !80
  %i.bou = getelementptr inbounds nuw i8, ptr %i.bop, i64 12
  store i32 0, ptr %i.bou, align 4, !tbaa !87
  %i.bov = load ptr, ptr %i.bop, align 8, !tbaa !88
  %i.bow = getelementptr inbounds nuw i8, ptr %i.bov, i64 16
  %i.box = load ptr, ptr %i.bow, align 8
  call void %i.box(ptr noundef nonnull align 8 dereferenceable(16) %i.bop) #19, !inline_history !2707
  %i.boy = load ptr, ptr %i.bop, align 8, !tbaa !88
  %i.boz = getelementptr inbounds nuw i8, ptr %i.boy, i64 24
  %i.bpa = load ptr, ptr %i.boz, align 8
  call void %i.bpa(ptr noundef nonnull align 8 dereferenceable(16) %i.bop) #19, !inline_history !2707
  br label %_ZNSt12__shared_ptrIN5arrow18FixedSizeListArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ux:                                            ; preds = %bb.uv
  %i.bpb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95, !noalias !2687
  %.not.i.i.i19.i = icmp eq i8 %i.bpb, 0
  br i1 %.not.i.i.i19.i, label %bb.uz, label %bb.uy

bb.uy:                                            ; preds = %bb.ux
  %i.bpc = add nsw i32 %i.bot, -1
  store i32 %i.bpc, ptr %i.boq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i483

bb.uz:                                            ; preds = %bb.ux
  %i.bpd = atomicrmw volatile add ptr %i.boq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i483

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i483: ; preds = %bb.uz, %bb.uy
  %.0.i.i.i.i.i484 = phi i32 [ %i.bot, %bb.uy ], [ %i.bpd, %bb.uz ]
  %i.bpe = icmp eq i32 %.0.i.i.i.i.i484, 1
  br i1 %i.bpe, label %bb.va, label %_ZNSt12__shared_ptrIN5arrow18FixedSizeListArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !96

bb.va:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i483
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bop) #19
  br label %_ZNSt12__shared_ptrIN5arrow18FixedSizeListArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow18FixedSizeListArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.va, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i483, %bb.uw, %_ZNSt10shared_ptrIN5arrow5ArrayEEaSINS0_18FixedSizeListArrayEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EES_IT_EEE5valueERS2_E4typeEOSC_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #19, !noalias !2687
  store ptr null, ptr %0, align 8, !tbaa !60, !alias.scope !2708
  %i.bpf = load ptr, ptr %i.bnq, align 8, !tbaa !91, !noalias !2687 ; 8 uses
  %.not.i.i20.i = icmp eq ptr %i.bpf, null
  br i1 %.not.i.i20.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i485, label %bb.vb

bb.vb:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow18FixedSizeListArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.bpg = getelementptr inbounds nuw i8, ptr %i.bpf, i64 8 ; 4 uses
  %i.bph = load atomic i64, ptr %i.bpg acquire, align 8 ; 2 uses
  %i.bpi = icmp eq i64 %i.bph, 4294967297
  %i.bpj = trunc i64 %i.bph to i32                ; 2 uses
  br i1 %i.bpi, label %bb.vc, label %bb.vd

bb.vc:                                            ; preds = %bb.vb
  store i32 0, ptr %i.bpg, align 8, !tbaa !80
  %i.bpk = getelementptr inbounds nuw i8, ptr %i.bpf, i64 12
  store i32 0, ptr %i.bpk, align 4, !tbaa !87
  %i.bpl = load ptr, ptr %i.bpf, align 8, !tbaa !88
  %i.bpm = getelementptr inbounds nuw i8, ptr %i.bpl, i64 16
  %i.bpn = load ptr, ptr %i.bpm, align 8
  call void %i.bpn(ptr noundef nonnull align 8 dereferenceable(16) %i.bpf) #19, !inline_history !2711
  %i.bpo = load ptr, ptr %i.bpf, align 8, !tbaa !88
  %i.bpp = getelementptr inbounds nuw i8, ptr %i.bpo, i64 24
  %i.bpq = load ptr, ptr %i.bpp, align 8
  call void %i.bpq(ptr noundef nonnull align 8 dereferenceable(16) %i.bpf) #19, !inline_history !2711
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i485

bb.vd:                                            ; preds = %bb.vb
  %i.bpr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95, !noalias !2687
  %.not.i.i.i21.i = icmp eq i8 %i.bpr, 0
  br i1 %.not.i.i.i21.i, label %bb.vf, label %bb.ve

bb.ve:                                            ; preds = %bb.vd
  %i.bps = add nsw i32 %i.bpj, -1
  store i32 %i.bps, ptr %i.bpg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22.i

end_hunk_1
