inline.NumInlined: 350
inline.NumDeleted: 209
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2cv8haar_cvt7convertERKNS_8FileNodeERNS_11FileStorageE:bb.a
  %i.a = call noundef zeroext i1 @_ZNK2cv8FileNode5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %38) ; 2 uses
  br i1 %i.a, label %_ZNSt6vectorIN2cv8haar_cvt11HaarFeatureESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #15
  call void @_ZNK2cv8FileNodeixEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %39, ptr noundef nonnull align 8 dereferenceable(24) %38, i32 noundef 0)
  %i.b = call noundef i32 @_ZNK2cv8FileNodecviEv(ptr noundef nonnull align 8 dereferenceable(24) %39)
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #15
  call void @_ZNK2cv8FileNodeixEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %40, ptr noundef nonnull align 8 dereferenceable(24) %38, i32 noundef 1)
  %i.c = call noundef i32 @_ZNK2cv8FileNodecviEv(ptr noundef nonnull align 8 dereferenceable(24) %40)
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #15
  invoke void @_ZNK2cv8FileNodeixEPKc(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %41, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @.str.1)
          to label %bb.c unwind label %bb.aj

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef i64 @_ZNK2cv8FileNode4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %41)
          to label %bb.d unwind label %bb.ak      ; 5 uses

bb.d:                                             ; preds = %bb.c
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #15
  %sext = shl i64 %i.d, 32                        ; 3 uses
  %i.f = ashr exact i64 %sext, 32                 ; 2 uses
  %i.g = icmp ugt i64 %i.f, 288230376151711743
  br i1 %i.g, label %.noexc, label %_ZNSt6vectorIN2cv8haar_cvt19HaarStageClassifierESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

.noexc:                                           ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #16
  unreachable

_ZNSt6vectorIN2cv8haar_cvt19HaarStageClassifierESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.d
  store i64 0, ptr %42, align 8
  %.not.i.i.i.i = icmp eq i64 %sext, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN2cv8haar_cvt19HaarStageClassifierESaIS2_EEC2EmRKS3_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN2cv8haar_cvt19HaarStageClassifierESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.h = ashr exact i64 %sext, 27                 ; 3 uses
  %i.i = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #17 ; 4 uses
  store ptr %i.i, ptr %42, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %i.f
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.h, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.i, i64 %i.h
  br label %_ZNSt12_Vector_baseIN2cv8haar_cvt19HaarStageClassifierESaIS2_EEC2EmRKS3_.exit.thread.i

_ZNSt12_Vector_baseIN2cv8haar_cvt19HaarStageClassifierESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIN2cv8haar_cvt19HaarStageClassifierESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i, %.lr.ph.preheader.i.i.i.i.i
  %.sink.i = phi ptr [ %i.j, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorIN2cv8haar_cvt19HaarStageClassifierESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorIN2cv8haar_cvt19HaarStageClassifierESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %42, i64 16
  store ptr %.sink.i, ptr %i.l, align 8, !tbaa !12
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.k, align 8, !tbaa !13
  %i.m = icmp sgt i32 %i.e, 0                     ; 2 uses
  br i1 %i.m, label %.lr.ph775, label %._crit_edge784

.lr.ph775:                                        ; preds = %_ZNSt12_Vector_baseIN2cv8haar_cvt19HaarStageClassifierESaIS2_EEC2EmRKS3_.exit.thread.i
  %.ptr.i = getelementptr inbounds nuw i8, ptr %49, i64 4 ; 2 uses
  %wide.trip.count998 = and i64 %i.d, 2147483647
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph775, %._crit_edge766
  %indvars.iv995 = phi i64 [ 0, %.lr.ph775 ], [ %indvars.iv.next996, %._crit_edge766 ] ; 3 uses
  %.sroa.0404.0772 = phi ptr [ null, %.lr.ph775 ], [ %.sroa.0404.1.lcssa, %._crit_edge766 ] ; 6 uses
  %.sroa.11410.0771 = phi ptr [ null, %.lr.ph775 ], [ %.sroa.11410.1.lcssa, %._crit_edge766 ] ; 2 uses
  %.sroa.17.0770 = phi ptr [ null, %.lr.ph775 ], [ %.sroa.17.1.lcssa.a, %._crit_edge766 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #15
  %i.n = trunc nuw nsw i64 %indvars.iv995 to i32
  invoke void @_ZNK2cv8FileNodeixEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %43, ptr noundef nonnull align 8 dereferenceable(24) %41, i32 noundef %i.n)
          to label %bb.f unwind label %bb.al

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %42, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %indvars.iv995 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #15
  invoke void @_ZNK2cv8FileNodeixEPKc(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %44, ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull @.str.2)
          to label %bb.g unwind label %bb.am

bb.g:                                             ; preds = %bb.f
  %i.q = invoke noundef double @_ZNK2cv8FileNodecvdEv(ptr noundef nonnull align 8 dereferenceable(24) %44)
          to label %bb.h unwind label %bb.am

bb.h:                                             ; preds = %bb.g
  store double %i.q, ptr %i.p, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #15
  invoke void @_ZNK2cv8FileNodeixEPKc(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %45, ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull @.str.3)
          to label %bb.i unwind label %bb.an

bb.i:                                             ; preds = %bb.h
  %i.r = invoke noundef i64 @_ZNK2cv8FileNode4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %45)
          to label %bb.j unwind label %bb.ao      ; 3 uses

bb.j:                                             ; preds = %bb.i
  %i.s = trunc i64 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %sext152 = shl i64 %i.r, 32
  %i.u = ashr exact i64 %sext152, 32              ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !22   ; 3 uses
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !23   ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 48                ; 3 uses
  %i.ac = icmp ugt i64 %i.u, %i.ab
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = sub nuw nsw i64 %i.u, %i.ab
  invoke void @_ZNSt6vectorIN2cv8haar_cvt14HaarClassifierESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef %i.ad)
          to label %_ZNSt6vectorIN2cv8haar_cvt14HaarClassifierESaIS2_EE6resizeEm.exit unwind label %bb.ao

bb.l:                                             ; preds = %bb.j
  %i.ae = icmp ult i64 %i.u, %i.ab
  br i1 %i.ae, label %bb.m, label %_ZNSt6vectorIN2cv8haar_cvt14HaarClassifierESaIS2_EE6resizeEm.exit

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.x, i64 %i.u ; 3 uses
  %.not.i.i = icmp eq ptr %i.w, %i.af
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv8haar_cvt14HaarClassifierESaIS2_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.m, %_ZSt8_DestroyIN2cv8haar_cvt14HaarClassifierEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.at, %_ZSt8_DestroyIN2cv8haar_cvt14HaarClassifierEEvPT_.exit.i.i.i.i ], [ %i.af, %bb.m ] ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !24 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !27
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #18
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i:        ; preds = %bb.n, %.lr.ph.i.i.i.i
  %i.an = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !28 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN2cv8haar_cvt14HaarClassifierEEvPT_.exit.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !31
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #18
  br label %_ZSt8_DestroyIN2cv8haar_cvt14HaarClassifierEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN2cv8haar_cvt14HaarClassifierEEvPT_.exit.i.i.i.i: ; preds = %bb.o, %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i175 = icmp eq ptr %i.at, %i.w
  br i1 %.not.i.i.i.i175, label %_ZSt8_DestroyIPN2cv8haar_cvt14HaarClassifierES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !32

_ZSt8_DestroyIPN2cv8haar_cvt14HaarClassifierES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN2cv8haar_cvt14HaarClassifierEEvPT_.exit.i.i.i.i
  store ptr %i.af, ptr %i.v, align 8, !tbaa !22
  br label %_ZNSt6vectorIN2cv8haar_cvt14HaarClassifierESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN2cv8haar_cvt14HaarClassifierESaIS2_EE6resizeEm.exit: ; preds = %bb.k, %bb.l, %bb.m, %_ZSt8_DestroyIPN2cv8haar_cvt14HaarClassifierES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.au = icmp sgt i32 %i.s, 0
  br i1 %i.au, label %.lr.ph765.preheader, label %._crit_edge766

.lr.ph765.preheader:                              ; preds = %_ZNSt6vectorIN2cv8haar_cvt14HaarClassifierESaIS2_EE6resizeEm.exit
  %wide.trip.count993 = and i64 %i.r, 2147483647
  br label %.lr.ph765

.lr.ph765:                                        ; preds = %.lr.ph765.preheader, %._crit_edge758
  %indvars.iv990 = phi i64 [ 0, %.lr.ph765.preheader ], [ %indvars.iv.next991, %._crit_edge758 ] ; 3 uses
  %.sroa.0404.1763 = phi ptr [ %.sroa.0404.0772, %.lr.ph765.preheader ], [ %.sroa.0404.2.lcssa, %._crit_edge758 ] ; 4 uses
  %.sroa.11410.1762 = phi ptr [ %.sroa.11410.0771, %.lr.ph765.preheader ], [ %.sroa.11410.2.lcssa, %._crit_edge758 ] ; 2 uses
  %.sroa.17.1761 = phi ptr [ %.sroa.17.0770, %.lr.ph765.preheader ], [ %.sroa.17.2.lcssa.a, %._crit_edge758 ] ; 4 uses
  %i.av = load ptr, ptr %i.t, align 8, !tbaa !23
  %i.aw = getelementptr inbounds nuw [48 x i8], ptr %i.av, i64 %indvars.iv990 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #15
  %i.ax = trunc nuw nsw i64 %indvars.iv990 to i32
  invoke void @_ZNK2cv8FileNodeixEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %46, ptr noundef nonnull align 8 dereferenceable(24) %45, i32 noundef %i.ax)
          to label %bb.p unwind label %bb.ap

bb.p:                                             ; preds = %.lr.ph765
  %i.ay = invoke noundef i64 @_ZNK2cv8FileNode4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %46)
          to label %bb.q unwind label %bb.aq

bb.q:                                             ; preds = %bb.p
  %i.az = trunc i64 %i.ay to i32                  ; 2 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph757, label %._crit_edge758

.lr.ph757:                                        ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 40 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph757, %_ZNSt6vectorIN2cv8haar_cvt18HaarClassifierNodeESaIS2_EE9push_backERKS2_.exit
  %.0113755 = phi i32 [ 0, %.lr.ph757 ], [ %i.gm, %_ZNSt6vectorIN2cv8haar_cvt18HaarClassifierNodeESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.sroa.0404.2754 = phi ptr [ %.sroa.0404.1763, %.lr.ph757 ], [ %.sroa.0404.13, %_ZNSt6vectorIN2cv8haar_cvt18HaarClassifierNodeESaIS2_EE9push_backERKS2_.exit ] ; 11 uses
  %.sroa.11410.2753 = phi ptr [ %.sroa.11410.1762, %.lr.ph757 ], [ %.sroa.11410.3, %_ZNSt6vectorIN2cv8haar_cvt18HaarClassifierNodeESaIS2_EE9push_backERKS2_.exit ] ; 4 uses
  %.sroa.17.2752 = phi ptr [ %.sroa.17.1761, %.lr.ph757 ], [ %.sroa.17.13.a, %_ZNSt6vectorIN2cv8haar_cvt18HaarClassifierNodeESaIS2_EE9push_backERKS2_.exit ] ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #15
  invoke void @_ZNK2cv8FileNodeixEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %47, ptr noundef nonnull align 8 dereferenceable(24) %46, i32 noundef %.0113755)
          to label %bb.s unwind label %bb.ar

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #15
  invoke void @_ZNK2cv8FileNodeixEPKc(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %48, ptr noundef nonnull align 8 dereferenceable(24) %47, ptr noundef nonnull @.str.4)
          to label %bb.t unwind label %bb.as

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.ptr.i, i8 0, i64 60, i1 false)
  %i.bg = ptrtoint ptr %.sroa.11410.2753 to i64
  %i.bh = ptrtoint ptr %.sroa.17.2752 to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 4 uses
  %i.bj = ashr exact i64 %i.bi, 6                 ; 4 uses
  %i.bk = trunc i64 %i.bj to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #15
  invoke void @_ZNK2cv8FileNodeixEPKc(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %50, ptr noundef nonnull align 8 dereferenceable(24) %48, ptr noundef nonnull @.str.5)
          to label %bb.u unwind label %bb.at

bb.u:                                             ; preds = %bb.t
  %i.bl = invoke noundef i32 @_ZNK2cv8FileNodecviEv(ptr noundef nonnull align 8 dereferenceable(24) %50)
          to label %bb.v unwind label %bb.at

bb.v:                                             ; preds = %bb.u
  %i.bm = icmp ne i32 %i.bl, 0
  %i.bn = zext i1 %i.bm to i8
  store i8 %i.bn, ptr %49, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #15
  invoke void @_ZNK2cv8FileNodeixEPKc(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %51, ptr noundef nonnull align 8 dereferenceable(24) %48, ptr noundef nonnull @.str.6)
          to label %bb.w unwind label %bb.au

bb.w:                                             ; preds = %bb.v
  %i.bo = invoke noundef i64 @_ZNK2cv8FileNode4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %51)
          to label %bb.x unwind label %.loopexit464 ; 2 uses

bb.x:                                             ; preds = %bb.w
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.x
  %wide.trip.count = and i64 %i.bo, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ai
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ai ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #15
  %i.br = trunc nuw nsw i64 %indvars.iv to i32
  invoke void @_ZNK2cv8FileNodeixEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %52, ptr noundef nonnull align 8 dereferenceable(24) %51, i32 noundef %i.br)
          to label %bb.y unwind label %bb.av

bb.y:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #15
  invoke void @_ZNK2cv8FileNodeixEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %53, ptr noundef nonnull align 8 dereferenceable(24) %52, i32 noundef 0)
          to label %bb.z unwind label %bb.aw

bb.z:                                             ; preds = %bb.y
  %i.bs = invoke noundef i32 @_ZNK2cv8FileNodecviEv(ptr noundef nonnull align 8 dereferenceable(24) %53)
          to label %bb.aa unwind label %bb.aw

bb.aa:                                            ; preds = %bb.z
  %i.bt = getelementptr inbounds nuw [20 x i8], ptr %.ptr.i, i64 %indvars.iv ; 5 uses
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #15
  invoke void @_ZNK2cv8FileNodeixEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %54, ptr noundef nonnull align 8 dereferenceable(24) %52, i32 noundef 1)
          to label %bb.ab unwind label %bb.ax

bb.ab:                                            ; preds = %bb.aa
  %i.bu = invoke noundef i32 @_ZNK2cv8FileNodecviEv(ptr noundef nonnull align 8 dereferenceable(24) %54)
          to label %bb.ac unwind label %bb.ax

bb.ac:                                            ; preds = %bb.ab
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #15
  invoke void @_ZNK2cv8FileNodeixEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %55, ptr noundef nonnull align 8 dereferenceable(24) %52, i32 noundef 2)
          to label %bb.ad unwind label %bb.ay

bb.ad:                                            ; preds = %bb.ac
  %i.bw = invoke noundef i32 @_ZNK2cv8FileNodecviEv(ptr noundef nonnull align 8 dereferenceable(24) %55)
          to label %bb.ae unwind label %bb.ay

bb.ae:                                            ; preds = %bb.ad
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #15
  invoke void @_ZNK2cv8FileNodeixEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %56, ptr noundef nonnull align 8 dereferenceable(24) %52, i32 noundef 3)
          to label %bb.af unwind label %bb.az

bb.af:                                            ; preds = %bb.ae
  %i.by = invoke noundef i32 @_ZNK2cv8FileNodecviEv(ptr noundef nonnull align 8 dereferenceable(24) %56)
          to label %bb.ag unwind label %bb.az

bb.ag:                                            ; preds = %bb.af
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #15
  invoke void @_ZNK2cv8FileNodeixEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %57, ptr noundef nonnull align 8 dereferenceable(24) %52, i32 noundef 4)
          to label %bb.ah unwind label %bb.ba

bb.ah:                                            ; preds = %bb.ag
  %i.ca = invoke noundef float @_ZNK2cv8FileNodecvfEv(ptr noundef nonnull align 8 dereferenceable(24) %57)
          to label %bb.ai unwind label %bb.ba

bb.ai:                                            ; preds = %bb.ah
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store float %i.ca, ptr %i.cb, align 4, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !45

bb.aj:                                            ; preds = %bb.b
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ak:                                            ; preds = %bb.c
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.al:                                            ; preds = %bb.e
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.am:                                            ; preds = %bb.g, %bb.f
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #15
  br label %bb.cw

bb.an:                                            ; preds = %bb.h
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.ao:                                            ; preds = %bb.k, %bb.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.ap:                                            ; preds = %.lr.ph765
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.aq:                                            ; preds = %bb.p
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ar:                                            ; preds = %bb.r
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.as:                                            ; preds = %bb.s
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.at:                                            ; preds = %bb.u, %bb.t
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #15
  br label %bb.cr

bb.au:                                            ; preds = %bb.v
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

.loopexit464:                                     ; preds = %bb.w, %_ZNKSt6vectorIN2cv8haar_cvt11HaarFeatureESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit466 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

.loopexit.split-lp465:                            ; preds = %bb.be
  %lpad.loopexit.split-lp467 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.av:                                            ; preds = %.lr.ph
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.aw:                                            ; preds = %bb.z, %bb.y
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #15
  br label %bb.bb

bb.ax:                                            ; preds = %bb.ab, %bb.aa
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #15
  br label %bb.bb

bb.ay:                                            ; preds = %bb.ad, %bb.ac
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #15
  br label %bb.bb

bb.az:                                            ; preds = %bb.af, %bb.ae
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #15
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ah, %bb.ag
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #15
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av
  %.pn156 = phi { ptr, i32 } [ %i.ct, %bb.ba ], [ %i.cs, %bb.az ], [ %i.cr, %bb.ay ], [ %i.cq, %bb.ax ], [ %i.cp, %bb.aw ], [ %i.co, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #15
  br label %bb.cq

._crit_edge:                                      ; preds = %bb.ai, %bb.x
  %.not.i = icmp eq ptr %.sroa.11410.2753, %.sroa.0404.2754
  br i1 %.not.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.sroa.11410.2753, ptr noundef nonnull align 4 dereferenceable(64) %49, i64 64, i1 false), !tbaa.struct !46
  br label %_ZNSt6vectorIN2cv8haar_cvt11HaarFeatureESaIS2_EE9push_backERKS2_.exit

bb.bd:                                            ; preds = %._crit_edge
  %i.cu = icmp eq i64 %i.bi, 9223372036854775744
  br i1 %i.cu, label %bb.be, label %_ZNKSt6vectorIN2cv8haar_cvt11HaarFeatureESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #16
          to label %.noexc178 unwind label %.loopexit.split-lp465

.noexc178:                                        ; preds = %bb.be
  unreachable

_ZNKSt6vectorIN2cv8haar_cvt11HaarFeatureESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bd
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bj, i64 1)
  %i.cv = add nsw i64 %.sroa.speculated.i.i.i, %i.bj ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.bj
  %i.cx = call i64 @llvm.umin.i64(i64 %i.cv, i64 144115188075855871)
  %i.cy = select i1 %i.cw, i64 144115188075855871, i64 %i.cx ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cy, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cz = shl nuw nsw i64 %i.cy, 6
  %i.da = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #17
          to label %.noexc179 unwind label %.loopexit464 ; 5 uses

.noexc179:                                        ; preds = %_ZNKSt6vectorIN2cv8haar_cvt11HaarFeatureESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.db, ptr noundef nonnull align 4 dereferenceable(64) %49, i64 64, i1 false), !tbaa.struct !46
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.17.2752, %.sroa.0404.2754
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN2cv8haar_cvt11HaarFeatureESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc179, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i ], [ %i.da, %.noexc179 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i ], [ %.sroa.17.2752, %.noexc179 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(64) %.0911.i.i.i.i.i, i64 64, i1 false), !tbaa.struct !46, !alias.scope !49
  %i.dc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 64 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dc, %.sroa.0404.2754
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv8haar_cvt11HaarFeatureESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !53

_ZNSt6vectorIN2cv8haar_cvt11HaarFeatureESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc179
  %.0.lcssa.i.i.i.i.i177 = phi ptr [ %i.da, %.noexc179 ], [ %i.dd, %.lr.ph.i.i.i.i.i ]
  %.not.i23.i.i = icmp eq ptr %.sroa.17.2752, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN2cv8haar_cvt11HaarFeatureESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIN2cv8haar_cvt11HaarFeatureESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.17.2752, i64 noundef %i.bi) #18
  br label %_ZNSt6vectorIN2cv8haar_cvt11HaarFeatureESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN2cv8haar_cvt11HaarFeatureESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.bf, %_ZNSt6vectorIN2cv8haar_cvt11HaarFeatureESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.de = getelementptr inbounds nuw [64 x i8], ptr %i.da, i64 %i.cy
  br label %_ZNSt6vectorIN2cv8haar_cvt11HaarFeatureESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN2cv8haar_cvt11HaarFeatureESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN2cv8haar_cvt11HaarFeatureESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.bc
  %.sroa.17.13.a = phi ptr [ %i.da, %_ZNSt6vectorIN2cv8haar_cvt11HaarFeatureESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.17.2752, %bb.bc ] ; 4 uses
  %.0.lcssa.i.i.i.i.i177.pn = phi ptr [ %.0.lcssa.i.i.i.i.i177, %_ZNSt6vectorIN2cv8haar_cvt11HaarFeatureESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.11410.2753, %bb.bc ]
  %.sroa.0404.13 = phi ptr [ %i.de, %_ZNSt6vectorIN2cv8haar_cvt11HaarFeatureESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.0404.2754, %bb.bc ] ; 4 uses
  %.sroa.11410.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i177.pn, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #15
  invoke void @_ZNK2cv8FileNodeixEPKc(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %58, ptr noundef nonnull align 8 dereferenceable(24) %47, ptr noundef nonnull @.str.7)
          to label %bb.bg unwind label %bb.br

bb.bg:                                            ; preds = %_ZNSt6vectorIN2cv8haar_cvt11HaarFeatureESaIS2_EE9push_backERKS2_.exit
  %i.df = invoke noundef float @_ZNK2cv8FileNodecvfEv(ptr noundef nonnull align 8 dereferenceable(24) %58)
          to label %bb.bh unwind label %bb.br     ; 2 uses

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #15
  invoke void @_ZNK2cv8FileNodeixEPKc(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %59, ptr noundef nonnull align 8 dereferenceable(24) %47, ptr noundef nonnull @.str.8)
          to label %bb.bi unwind label %bb.bs

bb.bi:                                            ; preds = %bb.bh
  %i.dg = invoke noundef zeroext i1 @_ZNK2cv8FileNode5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %59)
          to label %bb.bj unwind label %bb.bs

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.dg, label %bb.bt, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.dh = load ptr, ptr %i.bc, align 8, !tbaa !54
  %i.di = load ptr, ptr %i.bb, align 8, !tbaa !24
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = lshr exact i64 %i.dl, 2
  %i.dn = trunc i64 %i.dm to i32
  %i.do = sub nsw i32 0, %i.dn                    ; 2 uses
  %i.dp = invoke noundef float @_ZNK2cv8FileNodecvfEv(ptr noundef nonnull align 8 dereferenceable(24) %59)
          to label %bb.bl unwind label %.loopexit469 ; 2 uses

bb.bl:                                            ; preds = %bb.bk
  %i.dq = load ptr, ptr %i.bc, align 8, !tbaa !54 ; 4 uses
  %i.dr = load ptr, ptr %i.bd, align 8, !tbaa !27
  %.not.i.i180 = icmp eq ptr %i.dq, %i.dr
  br i1 %.not.i.i180, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  store float %i.dp, ptr %i.dq, align 4, !tbaa !55
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store ptr %i.ds, ptr %i.bc, align 8, !tbaa !54
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

bb.bn:                                            ; preds = %bb.bl
  %i.dt = load ptr, ptr %i.bb, align 8, !tbaa !24 ; 4 uses
  %i.du = ptrtoint ptr %i.dq to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv                    ; 6 uses
  %i.dx = icmp eq i64 %i.dw, 9223372036854775804
  br i1 %i.dx, label %bb.bo, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #16
          to label %.noexc182 unwind label %.loopexit.split-lp470

.noexc182:                                        ; preds = %bb.bo
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bn
  %i.dy = ashr exact i64 %i.dw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dy, i64 1)
  %i.dz = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dy ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.dy
  %i.eb = call i64 @llvm.umin.i64(i64 %i.dz, i64 2305843009213693951)
  %i.ec = select i1 %i.ea, i64 2305843009213693951, i64 %i.eb ; 3 uses
  %.not.i.i.i.i181 = icmp ne i64 %i.ec, 0
  call void @llvm.assume(i1 %.not.i.i.i.i181)
  %i.ed = shl nuw nsw i64 %i.ec, 2
  %i.ee = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #17
          to label %.noexc183 unwind label %.loopexit469 ; 4 uses

.noexc183:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 %i.dw ; 2 uses
  store float %i.dp, ptr %i.ef, align 4, !tbaa !55
  %i.eg = icmp sgt i64 %i.dw, 0
  br i1 %i.eg, label %bb.bp, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

bb.bp:                                            ; preds = %.noexc183
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ee, ptr align 4 %i.dt, i64 %i.dw, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.bp, %.noexc183
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dw) #18
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i: ; preds = %bb.bq, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ee, ptr %i.bb, align 8, !tbaa !24
  store ptr %i.eh, ptr %i.bc, align 8, !tbaa !54
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.ec
  store ptr %i.ei, ptr %i.bd, align 8, !tbaa !27
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

bb.br:                                            ; preds = %bb.bg, %_ZNSt6vectorIN2cv8haar_cvt11HaarFeatureESaIS2_EE9push_backERKS2_.exit
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #15
  br label %bb.cq

bb.bs:                                            ; preds = %bb.bi, %bb.bh
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

.loopexit469:                                     ; preds = %bb.bk, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit471 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

.loopexit.split-lp470:                            ; preds = %bb.bo
  %lpad.loopexit.split-lp472 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.bt:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #15
  invoke void @_ZNK2cv8FileNodeixEPKc(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %60, ptr noundef nonnull align 8 dereferenceable(24) %47, ptr noundef nonnull @.str.9)
          to label %bb.bu unwind label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.el = invoke noundef i32 @_ZNK2cv8FileNodecviEv(ptr noundef nonnull align 8 dereferenceable(24) %60)
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #15
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

bb.bw:                                            ; preds = %bb.bu, %bb.bt
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #15
  br label %bb.cp

_ZNSt6vectorIfSaIfEE9push_backEOf.exit:           ; preds = %bb.bm, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, %bb.bv
  %.sroa.7.0 = phi i32 [ %i.el, %bb.bv ], [ %i.do, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %i.do, %bb.bm ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #15
  invoke void @_ZNK2cv8FileNodeixEPKc(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %61, ptr noundef nonnull align 8 dereferenceable(24) %47, ptr noundef nonnull @.str.10)
          to label %bb.bx unwind label %.loopexit474

bb.bx:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  %i.en = invoke noundef zeroext i1 @_ZNK2cv8FileNode5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %61)
          to label %bb.by unwind label %.loopexit474

bb.by:                                            ; preds = %bb.bx
  br i1 %i.en, label %bb.cg, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.eo = load ptr, ptr %i.bc, align 8, !tbaa !54
  %i.ep = load ptr, ptr %i.bb, align 8, !tbaa !24
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = lshr exact i64 %i.es, 2
  %i.eu = trunc i64 %i.et to i32
  %i.ev = sub nsw i32 0, %i.eu                    ; 2 uses
  %i.ew = invoke noundef float @_ZNK2cv8FileNodecvfEv(ptr noundef nonnull align 8 dereferenceable(24) %61)
          to label %bb.ca unwind label %.loopexit479 ; 2 uses

bb.ca:                                            ; preds = %bb.bz
  %i.ex = load ptr, ptr %i.bc, align 8, !tbaa !54 ; 4 uses
  %i.ey = load ptr, ptr %i.bd, align 8, !tbaa !27
  %.not.i.i184 = icmp eq ptr %i.ex, %i.ey
  br i1 %.not.i.i184, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  store float %i.ew, ptr %i.ex, align 4, !tbaa !55
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  store ptr %i.ez, ptr %i.bc, align 8, !tbaa !54
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit193

bb.cc:                                            ; preds = %bb.ca
  %i.fa = load ptr, ptr %i.bb, align 8, !tbaa !24 ; 4 uses
  %i.fb = ptrtoint ptr %i.ex to i64
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = sub i64 %i.fb, %i.fc                    ; 6 uses
  %i.fe = icmp eq i64 %i.fd, 9223372036854775804
  br i1 %i.fe, label %bb.cd, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i185

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #16
          to label %.noexc191 unwind label %.loopexit.split-lp480

.noexc191:                                        ; preds = %bb.cd
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i185: ; preds = %bb.cc
  %i.ff = ashr exact i64 %i.fd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i186 = call i64 @llvm.umax.i64(i64 %i.ff, i64 1)
  %i.fg = add nsw i64 %.sroa.speculated.i.i.i.i186, %i.ff ; 2 uses
  %i.fh = icmp ult i64 %i.fg, %i.ff
  %i.fi = call i64 @llvm.umin.i64(i64 %i.fg, i64 2305843009213693951)
  %i.fj = select i1 %i.fh, i64 2305843009213693951, i64 %i.fi ; 3 uses
  %.not.i.i.i.i187 = icmp ne i64 %i.fj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i187)
  %i.fk = shl nuw nsw i64 %i.fj, 2
  %i.fl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fk) #17
          to label %.noexc192 unwind label %.loopexit479 ; 4 uses

.noexc192:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i185
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 %i.fd ; 2 uses
  store float %i.ew, ptr %i.fm, align 4, !tbaa !55
  %i.fn = icmp sgt i64 %i.fd, 0
  br i1 %i.fn, label %bb.ce, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i188

bb.ce:                                            ; preds = %.noexc192
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fl, ptr align 4 %i.fa, i64 %i.fd, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i188

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i188: ; preds = %bb.ce, %.noexc192
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  %.not.i17.i.i.i189 = icmp eq ptr %i.fa, null
  br i1 %.not.i17.i.i.i189, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i190, label %bb.cf

bb.cf:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i188
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.fd) #18
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i190

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i190: ; preds = %bb.cf, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i188
  store ptr %i.fl, ptr %i.bb, align 8, !tbaa !24
  store ptr %i.fo, ptr %i.bc, align 8, !tbaa !54
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.fj
  store ptr %i.fp, ptr %i.bd, align 8, !tbaa !27
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit193

.loopexit474:                                     ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit, %bb.bx, %_ZNKSt6vectorIN2cv8haar_cvt18HaarClassifierNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit476 = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

.loopexit.split-lp475:                            ; preds = %bb.cm
  %lpad.loopexit.split-lp477 = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

.loopexit479:                                     ; preds = %bb.bz, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i185
  %lpad.loopexit481 = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

.loopexit.split-lp480:                            ; preds = %bb.cd
  %lpad.loopexit.split-lp482 = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.cg:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #15
  invoke void @_ZNK2cv8FileNodeixEPKc(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %62, ptr noundef nonnull align 8 dereferenceable(24) %47, ptr noundef nonnull @.str.11)
          to label %bb.ch unwind label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.fq = invoke noundef i32 @_ZNK2cv8FileNodecviEv(ptr noundef nonnull align 8 dereferenceable(24) %62)
          to label %bb.ci unwind label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #15
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit193

bb.cj:                                            ; preds = %bb.ch, %bb.cg
  %i.fr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #15
  br label %bb.co

_ZNSt6vectorIfSaIfEE9push_backEOf.exit193:        ; preds = %bb.cb, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i190, %bb.ci
  %.sroa.9.0 = phi i32 [ %i.fq, %bb.ci ], [ %i.ev, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i190 ], [ %i.ev, %bb.cb ] ; 2 uses
  %i.fs = load ptr, ptr %i.be, align 8, !tbaa !56 ; 9 uses
  %i.ft = load ptr, ptr %i.bf, align 8, !tbaa !31
  %.not.i194 = icmp eq ptr %i.fs, %i.ft
  br i1 %.not.i194, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit193
  store i32 %i.bk, ptr %i.fs, align 4, !tbaa !57
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  store i32 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !57
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store i32 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !57
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 12
  store float %i.df, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !55
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store ptr %i.fu, ptr %i.be, align 8, !tbaa !56
  br label %_ZNSt6vectorIN2cv8haar_cvt18HaarClassifierNodeESaIS2_EE9push_backERKS2_.exit

bb.cl:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit193
  %i.fv = load ptr, ptr %i.aw, align 8, !tbaa !28 ; 5 uses
  %i.fw = ptrtoint ptr %i.fs to i64
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = sub i64 %i.fw, %i.fx                    ; 4 uses
  %i.fz = icmp eq i64 %i.fy, 9223372036854775792
  br i1 %i.fz, label %bb.cm, label %_ZNKSt6vectorIN2cv8haar_cvt18HaarClassifierNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #16
          to label %.noexc204 unwind label %.loopexit.split-lp475

.noexc204:                                        ; preds = %bb.cm
  unreachable

_ZNKSt6vectorIN2cv8haar_cvt18HaarClassifierNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.cl
  %i.ga = ashr exact i64 %i.fy, 4                 ; 3 uses
  %.sroa.speculated.i.i.i195 = call i64 @llvm.umax.i64(i64 %i.ga, i64 1)
  %i.gb = add nsw i64 %.sroa.speculated.i.i.i195, %i.ga ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.ga
  %i.gd = call i64 @llvm.umin.i64(i64 %i.gb, i64 576460752303423487)
  %i.ge = select i1 %i.gc, i64 576460752303423487, i64 %i.gd ; 3 uses
  %.not.i.i.i196 = icmp ne i64 %i.ge, 0
  call void @llvm.assume(i1 %.not.i.i.i196)
  %i.gf = shl nuw nsw i64 %i.ge, 4
  %i.gg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gf) #17
          to label %.noexc205 unwind label %.loopexit474 ; 5 uses

.noexc205:                                        ; preds = %_ZNKSt6vectorIN2cv8haar_cvt18HaarClassifierNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.fy ; 4 uses
  store i32 %i.bk, ptr %i.gh, align 4, !tbaa !57
  %.sroa.7.0..sroa_idx394 = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  store i32 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx394, align 4, !tbaa !57
  %.sroa.9.0..sroa_idx396 = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store i32 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx396, align 4, !tbaa !57
  %.sroa.11.0..sroa_idx398 = getelementptr inbounds nuw i8, ptr %i.gh, i64 12
  store float %i.df, ptr %.sroa.11.0..sroa_idx398, align 4, !tbaa !55
  %.not10.i.i.i.i.i197 = icmp eq ptr %i.fv, %i.fs
  br i1 %.not10.i.i.i.i.i197, label %_ZNSt6vectorIN2cv8haar_cvt18HaarClassifierNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i198

.lr.ph.i.i.i.i.i198:                              ; preds = %.noexc205, %.lr.ph.i.i.i.i.i198
  %.012.i.i.i.i.i199 = phi ptr [ %i.gj, %.lr.ph.i.i.i.i.i198 ], [ %i.gg, %.noexc205 ] ; 2 uses
  %.0911.i.i.i.i.i200 = phi ptr [ %i.gi, %.lr.ph.i.i.i.i.i198 ], [ %i.fv, %.noexc205 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i199, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i200, i64 16, i1 false), !tbaa.struct !58, !alias.scope !59
  %i.gi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i200, i64 16 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i199, i64 16 ; 2 uses
  %.not.i.i.i.i.i201 = icmp eq ptr %i.gi, %i.fs
  br i1 %.not.i.i.i.i.i201, label %_ZNSt6vectorIN2cv8haar_cvt18HaarClassifierNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i198, !llvm.loop !63

_ZNSt6vectorIN2cv8haar_cvt18HaarClassifierNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i198, %.noexc205
  %.0.lcssa.i.i.i.i.i202 = phi ptr [ %i.gg, %.noexc205 ], [ %i.gj, %.lr.ph.i.i.i.i.i198 ]
  %i.gk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i202, i64 16
  %.not.i23.i.i203 = icmp eq ptr %i.fv, null
  br i1 %.not.i23.i.i203, label %_ZNSt6vectorIN2cv8haar_cvt18HaarClassifierNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt6vectorIN2cv8haar_cvt18HaarClassifierNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fv, i64 noundef %i.fy) #18
  br label %_ZNSt6vectorIN2cv8haar_cvt18HaarClassifierNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN2cv8haar_cvt18HaarClassifierNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.cn, %_ZNSt6vectorIN2cv8haar_cvt18HaarClassifierNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.gg, ptr %i.aw, align 8, !tbaa !28
  store ptr %i.gk, ptr %i.be, align 8, !tbaa !56
  %i.gl = getelementptr inbounds nuw [16 x i8], ptr %i.gg, i64 %i.ge
  store ptr %i.gl, ptr %i.bf, align 8, !tbaa !31
  br label %_ZNSt6vectorIN2cv8haar_cvt18HaarClassifierNodeESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN2cv8haar_cvt18HaarClassifierNodeESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN2cv8haar_cvt18HaarClassifierNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #15
  %i.gm = add nuw nsw i32 %.0113755, 1            ; 2 uses
  %exitcond989.not = icmp eq i32 %i.gm, %i.az
  br i1 %exitcond989.not, label %._crit_edge758, label %bb.r, !llvm.loop !64

bb.co:                                            ; preds = %.loopexit479, %.loopexit.split-lp480, %.loopexit474, %.loopexit.split-lp475, %bb.cj
  %.pn153 = phi { ptr, i32 } [ %lpad.loopexit.split-lp477, %.loopexit.split-lp475 ], [ %i.fr, %bb.cj ], [ %lpad.loopexit476, %.loopexit474 ], [ %lpad.loopexit481, %.loopexit479 ], [ %lpad.loopexit.split-lp482, %.loopexit.split-lp480 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #15
  br label %bb.cp

bb.cp:                                            ; preds = %.loopexit469, %.loopexit.split-lp470, %bb.co, %bb.bw, %bb.bs
  %.pn153.pn = phi { ptr, i32 } [ %.pn153, %bb.co ], [ %i.em, %bb.bw ], [ %i.ek, %bb.bs ], [ %lpad.loopexit471, %.loopexit469 ], [ %lpad.loopexit.split-lp472, %.loopexit.split-lp470 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #15
  br label %bb.cq

bb.cq:                                            ; preds = %.loopexit464, %.loopexit.split-lp465, %bb.bb, %bb.br, %bb.cp, %bb.au
  %.sroa.17.3.a = phi ptr [ %.sroa.17.2752, %bb.bb ], [ %.sroa.17.2752, %bb.au ], [ %.sroa.17.13.a, %bb.cp ], [ %.sroa.17.13.a, %bb.br ], [ %.sroa.17.2752, %.loopexit464 ], [ %.sroa.17.2752, %.loopexit.split-lp465 ]
  %.sroa.0404.3 = phi ptr [ %.sroa.0404.2754, %bb.bb ], [ %.sroa.0404.2754, %bb.au ], [ %.sroa.0404.13, %bb.cp ], [ %.sroa.0404.13, %bb.br ], [ %.sroa.0404.2754, %.loopexit464 ], [ %.sroa.0404.2754, %.loopexit.split-lp465 ]
  %.pn156.pn.pn = phi { ptr, i32 } [ %.pn156, %bb.bb ], [ %i.cn, %bb.au ], [ %.pn153.pn, %bb.cp ], [ %i.ej, %bb.br ], [ %lpad.loopexit466, %.loopexit464 ], [ %lpad.loopexit.split-lp467, %.loopexit.split-lp465 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #15
  br label %bb.cr

bb.cr:                                            ; preds = %bb.at, %bb.cq
  %.sroa.17.4.a = phi ptr [ %.sroa.17.3.a, %bb.cq ], [ %.sroa.17.2752, %bb.at ]
  %.sroa.0404.4 = phi ptr [ %.sroa.0404.3, %bb.cq ], [ %.sroa.0404.2754, %bb.at ]
  %.pn156.pn.pn.pn = phi { ptr, i32 } [ %.pn156.pn.pn, %bb.cq ], [ %i.cm, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #15
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.as
  %.sroa.17.5.a = phi ptr [ %.sroa.17.4.a, %bb.cr ], [ %.sroa.17.2752, %bb.as ]
  %.sroa.0404.5 = phi ptr [ %.sroa.0404.4, %bb.cr ], [ %.sroa.0404.2754, %bb.as ]
  %.pn156.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn156.pn.pn.pn, %bb.cr ], [ %i.cl, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #15
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.ar
  %.sroa.17.6.a = phi ptr [ %.sroa.17.5.a, %bb.cs ], [ %.sroa.17.2752, %bb.ar ]
  %.sroa.0404.6 = phi ptr [ %.sroa.0404.5, %bb.cs ], [ %.sroa.0404.2754, %bb.ar ]
  %.pn156.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn156.pn.pn.pn.pn.pn, %bb.cs ], [ %i.ck, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #15
  br label %bb.cu

._crit_edge758:                                   ; preds = %_ZNSt6vectorIN2cv8haar_cvt18HaarClassifierNodeESaIS2_EE9push_backERKS2_.exit, %bb.q
  %.sroa.17.2.lcssa.a = phi ptr [ %.sroa.17.1761, %bb.q ], [ %.sroa.17.13.a, %_ZNSt6vectorIN2cv8haar_cvt18HaarClassifierNodeESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.sroa.11410.2.lcssa = phi ptr [ %.sroa.11410.1762, %bb.q ], [ %.sroa.11410.3, %_ZNSt6vectorIN2cv8haar_cvt18HaarClassifierNodeESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.sroa.0404.2.lcssa = phi ptr [ %.sroa.0404.1763, %bb.q ], [ %.sroa.0404.13, %_ZNSt6vectorIN2cv8haar_cvt18HaarClassifierNodeESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #15
  %indvars.iv.next991 = add nuw nsw i64 %indvars.iv990, 1 ; 2 uses
  %exitcond994.not = icmp eq i64 %indvars.iv.next991, %wide.trip.count993
  br i1 %exitcond994.not, label %._crit_edge766, label %.lr.ph765, !llvm.loop !65

bb.cu:                                            ; preds = %bb.aq, %bb.ct, %bb.ap
  %.sroa.17.7.a = phi ptr [ %.sroa.17.6.a, %bb.ct ], [ %.sroa.17.1761, %bb.aq ], [ %.sroa.17.1761, %bb.ap ]
  %.sroa.0404.7 = phi ptr [ %.sroa.0404.6, %bb.ct ], [ %.sroa.0404.1763, %bb.aq ], [ %.sroa.0404.1763, %bb.ap ]
  %.pn156.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn156.pn.pn.pn.pn.pn.pn, %bb.ct ], [ %i.cj, %bb.aq ], [ %i.ci, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #15
  br label %bb.cv

._crit_edge766:                                   ; preds = %._crit_edge758, %_ZNSt6vectorIN2cv8haar_cvt14HaarClassifierESaIS2_EE6resizeEm.exit
  %.sroa.17.1.lcssa.a = phi ptr [ %.sroa.17.0770, %_ZNSt6vectorIN2cv8haar_cvt14HaarClassifierESaIS2_EE6resizeEm.exit ], [ %.sroa.17.2.lcssa.a, %._crit_edge758 ] ; 3 uses
  %.sroa.11410.1.lcssa = phi ptr [ %.sroa.11410.0771, %_ZNSt6vectorIN2cv8haar_cvt14HaarClassifierESaIS2_EE6resizeEm.exit ], [ %.sroa.11410.2.lcssa, %._crit_edge758 ] ; 2 uses
  %.sroa.0404.1.lcssa = phi ptr [ %.sroa.0404.0772, %_ZNSt6vectorIN2cv8haar_cvt14HaarClassifierESaIS2_EE6resizeEm.exit ], [ %.sroa.0404.2.lcssa, %._crit_edge758 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #15
  %indvars.iv.next996 = add nuw nsw i64 %indvars.iv995, 1 ; 2 uses
  %exitcond999.not = icmp eq i64 %indvars.iv.next996, %wide.trip.count998
  br i1 %exitcond999.not, label %._crit_edge776, label %bb.e, !llvm.loop !66

bb.cv:                                            ; preds = %bb.ao, %bb.cu, %bb.an
  %.sroa.17.8.a = phi ptr [ %.sroa.17.7.a, %bb.cu ], [ %.sroa.17.0770, %bb.ao ], [ %.sroa.17.0770, %bb.an ]
  %.sroa.0404.8 = phi ptr [ %.sroa.0404.7, %bb.cu ], [ %.sroa.0404.0772, %bb.ao ], [ %.sroa.0404.0772, %bb.an ]
  %.pn156.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn156.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cu ], [ %i.ch, %bb.ao ], [ %i.cg, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #15
  br label %bb.cw

bb.cw:                                            ; preds = %bb.am, %bb.cv, %bb.al
  %.sroa.17.9.a = phi ptr [ %.sroa.17.8.a, %bb.cv ], [ %.sroa.17.0770, %bb.am ], [ %.sroa.17.0770, %bb.al ]
  %.sroa.0404.9 = phi ptr [ %.sroa.0404.8, %bb.cv ], [ %.sroa.0404.0772, %bb.am ], [ %.sroa.0404.0772, %bb.al ]
  %.pn156.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn156.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cv ], [ %i.cf, %bb.am ], [ %i.ce, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #15
  br label %.loopexit.split-lp447

._crit_edge776:                                   ; preds = %._crit_edge766
  %i.gn = ptrtoint ptr %.sroa.11410.1.lcssa to i64
  %i.go = ptrtoint ptr %.sroa.17.1.lcssa.a to i64 ; 2 uses
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = lshr i64 %i.gp, 6                       ; 2 uses
  %i.gr = trunc i64 %i.gq to i32
  %i.gs = load ptr, ptr %42, align 8, !tbaa !8
  %wide.trip.count1003 = and i64 %i.d, 2147483647
  br label %bb.cx

bb.cx:                                            ; preds = %._crit_edge776, %bb.cx
  %indvars.iv1000 = phi i64 [ 0, %._crit_edge776 ], [ %indvars.iv.next1001, %bb.cx ] ; 2 uses
  %.0417780 = phi i32 [ 0, %._crit_edge776 ], [ %.sroa.speculated, %bb.cx ]
  %i.gt = getelementptr inbounds nuw [32 x i8], ptr %i.gs, i64 %indvars.iv1000 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !22
  %i.gx = load ptr, ptr %i.gu, align 8, !tbaa !23
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = sub i64 %i.gy, %i.gz
  %i.hb = sdiv exact i64 %i.ha, 48
  %i.hc = trunc i64 %i.hb to i32
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %.0417780, i32 %i.hc) ; 2 uses
  %indvars.iv.next1001 = add nuw nsw i64 %indvars.iv1000, 1 ; 2 uses
  %exitcond1004.not = icmp eq i64 %indvars.iv.next1001, %wide.trip.count1003
  br i1 %exitcond1004.not, label %._crit_edge784.loopexit, label %bb.cx, !llvm.loop !67

._crit_edge784.loopexit:                          ; preds = %bb.cx
  %i.hd = icmp sgt i32 %i.gr, 0
  %i.he = and i64 %i.gq, 2147483647
  br label %._crit_edge784

._crit_edge784:                                   ; preds = %._crit_edge784.loopexit, %_ZNSt12_Vector_baseIN2cv8haar_cvt19HaarStageClassifierESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.hf = phi i1 [ false, %_ZNSt12_Vector_baseIN2cv8haar_cvt19HaarStageClassifierESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.hd, %._crit_edge784.loopexit ]
  %wide.trip.count1032 = phi i64 [ 0, %_ZNSt12_Vector_baseIN2cv8haar_cvt19HaarStageClassifierESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.he, %._crit_edge784.loopexit ]
  %i.hg = phi i64 [ 0, %_ZNSt12_Vector_baseIN2cv8haar_cvt19HaarStageClassifierESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.go, %._crit_edge784.loopexit ] ; 2 uses
  %.sroa.0404.0.lcssa1113 = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv8haar_cvt19HaarStageClassifierESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %.sroa.0404.1.lcssa, %._crit_edge784.loopexit ] ; 34 uses
  %.sroa.17.0.lcssa1111 = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv8haar_cvt19HaarStageClassifierESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %.sroa.17.1.lcssa.a, %._crit_edge784.loopexit ] ; 36 uses
  %.0417.lcssa = phi i32 [ 0, %_ZNSt12_Vector_baseIN2cv8haar_cvt19HaarStageClassifierESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %.sroa.speculated, %._crit_edge784.loopexit ]
  %i.hh = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull @.str.12)
          to label %bb.cy unwind label %bb.gm

bb.cy:                                            ; preds = %._crit_edge784
  %i.hi = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %i.hh, ptr noundef nonnull @.str.13)
          to label %bb.cz unwind label %bb.gm

bb.cz:                                            ; preds = %bb.cy
  %i.hj = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %i.hi, ptr noundef nonnull @.str.14)
          to label %bb.da unwind label %bb.gm

bb.da:                                            ; preds = %bb.cz
  %i.hk = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %i.hj, ptr noundef nonnull @.str.15)
          to label %bb.db unwind label %bb.gm

bb.db:                                            ; preds = %bb.da
  %i.hl = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %i.hk, ptr noundef nonnull @.str.16)
          to label %bb.dc unwind label %bb.gm

bb.dc:                                            ; preds = %bb.db
  %i.hm = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %i.hl, ptr noundef nonnull @.str.17)
          to label %bb.dd unwind label %bb.gm

bb.dd:                                            ; preds = %bb.dc
  %i.hn = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %i.hm, ptr noundef nonnull @.str.18)
          to label %bb.de unwind label %bb.gm     ; 6 uses

bb.de:                                            ; preds = %bb.dd
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !68
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = invoke noundef zeroext i1 %i.hq(ptr noundef nonnull align 8 dereferenceable(64) %i.hn)
          to label %.noexc207 unwind label %bb.gm, !inline_history !70

.noexc207:                                        ; preds = %bb.de
  br i1 %i.hr, label %bb.df, label %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit

bb.df:                                            ; preds = %.noexc207
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 3 uses
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !71
  %i.hu = icmp eq i32 %i.ht, 6
  br i1 %i.hu, label %bb.dg, label %bb.dj

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull @.str.39, ptr noundef nonnull align 1 dereferenceable(1) %37)
          to label %.noexc208 unwind label %bb.gm

.noexc208:                                        ; preds = %bb.dg
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull @__func__._ZN2cvlsIiEERNS_11FileStorageES2_RKT_, ptr noundef nonnull @.str.40, i32 noundef 1173) #16
          to label %bb.dh unwind label %bb.di

bb.dh:                                            ; preds = %.noexc208
  unreachable

bb.di:                                            ; preds = %.noexc208
  %i.hv = landingpad { ptr, i32 }
          cleanup
  %i.hw = load ptr, ptr %36, align 8, !tbaa !83   ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.hy = icmp eq ptr %i.hw, %i.hx
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.di
  %i.hz = load i64, ptr %i.hx, align 8, !tbaa !48
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.ia) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #15
  br label %.loopexit.split-lp447

bb.dj:                                            ; preds = %bb.df
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  invoke void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(64) %i.hn, ptr noundef nonnull align 8 dereferenceable(32) %i.ib, i32 noundef %i.b)
          to label %.noexc209 unwind label %bb.gm

.noexc209:                                        ; preds = %bb.dj
  %i.ic = load i32, ptr %i.hs, align 8, !tbaa !71
  %i.id = and i32 %i.ic, 4
  %.not.i206 = icmp eq i32 %i.id, 0
  br i1 %.not.i206, label %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit, label %bb.dk

bb.dk:                                            ; preds = %.noexc209
  store i32 6, ptr %i.hs, align 8, !tbaa !71
  br label %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit

_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit:       ; preds = %bb.dk, %.noexc209, %.noexc207
  %i.ie = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %i.hn, ptr noundef nonnull @.str.19)
          to label %bb.dl unwind label %bb.gm     ; 6 uses

bb.dl:                                            ; preds = %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !68
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.ih = load ptr, ptr %i.ig, align 8
  %i.ii = invoke noundef zeroext i1 %i.ih(ptr noundef nonnull align 8 dereferenceable(64) %i.ie)
          to label %.noexc214 unwind label %bb.gm, !inline_history !70

.noexc214:                                        ; preds = %bb.dl
  br i1 %i.ii, label %bb.dm, label %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit219

bb.dm:                                            ; preds = %.noexc214
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 8 ; 3 uses
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !71
  %i.il = icmp eq i32 %i.ik, 6
  br i1 %i.il, label %bb.dn, label %bb.dq

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @.str.39, ptr noundef nonnull align 1 dereferenceable(1) %35)
          to label %.noexc215 unwind label %bb.gm

.noexc215:                                        ; preds = %bb.dn
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @__func__._ZN2cvlsIiEERNS_11FileStorageES2_RKT_, ptr noundef nonnull @.str.40, i32 noundef 1173) #16
          to label %bb.do unwind label %bb.dp

bb.do:                                            ; preds = %.noexc215
  unreachable

bb.dp:                                            ; preds = %.noexc215
  %i.im = landingpad { ptr, i32 }
          cleanup
  %i.in = load ptr, ptr %34, align 8, !tbaa !83   ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.ip = icmp eq ptr %i.in, %i.io
  br i1 %i.ip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i211: ; preds = %bb.dp
  %i.iq = load i64, ptr %i.io, align 8, !tbaa !48
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.ir) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i212

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i212: ; preds = %bb.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i211
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #15
  br label %.loopexit.split-lp447

bb.dq:                                            ; preds = %bb.dm
  %i.is = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  invoke void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(64) %i.ie, ptr noundef nonnull align 8 dereferenceable(32) %i.is, i32 noundef %i.c)
          to label %.noexc218 unwind label %bb.gm

.noexc218:                                        ; preds = %bb.dq
  %i.it = load i32, ptr %i.ij, align 8, !tbaa !71
  %i.iu = and i32 %i.it, 4
  %.not.i210 = icmp eq i32 %i.iu, 0
  br i1 %.not.i210, label %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit219, label %bb.dr

bb.dr:                                            ; preds = %.noexc218
  store i32 6, ptr %i.ij, align 8, !tbaa !71
  br label %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit219

_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit219:    ; preds = %bb.dr, %.noexc218, %.noexc214
  %i.iv = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %i.ie, ptr noundef nonnull @.str.20)
          to label %bb.ds unwind label %bb.gm

bb.ds:                                            ; preds = %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit219
  %i.iw = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %i.iv, ptr noundef nonnull @.str.21)
          to label %bb.dt unwind label %bb.gm

bb.dt:                                            ; preds = %bb.ds
  %i.ix = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %i.iw, ptr noundef nonnull @.str.22)
          to label %bb.du unwind label %bb.gm     ; 6 uses

bb.du:                                            ; preds = %bb.dt
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !68
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 24
  %i.ja = load ptr, ptr %i.iz, align 8
  %i.jb = invoke noundef zeroext i1 %i.ja(ptr noundef nonnull align 8 dereferenceable(64) %i.ix)
          to label %.noexc224 unwind label %bb.gn, !inline_history !70

.noexc224:                                        ; preds = %bb.du
  br i1 %i.jb, label %bb.dv, label %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit229

bb.dv:                                            ; preds = %.noexc224
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ix, i64 8 ; 3 uses
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !71
  %i.je = icmp eq i32 %i.jd, 6
  br i1 %i.je, label %bb.dw, label %bb.dz

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @.str.39, ptr noundef nonnull align 1 dereferenceable(1) %33)
          to label %.noexc225 unwind label %bb.gn

.noexc225:                                        ; preds = %bb.dw
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @__func__._ZN2cvlsIiEERNS_11FileStorageES2_RKT_, ptr noundef nonnull @.str.40, i32 noundef 1173) #16
          to label %bb.dx unwind label %bb.dy

bb.dx:                                            ; preds = %.noexc225
  unreachable

bb.dy:                                            ; preds = %.noexc225
end_hunk_0
begin_hunk_1_@_ZN2cv8haar_cvt7convertERKNS_8FileNodeERNS_11FileStorageE:bb.a
  br label %_ZN2cvlsIfEERNS_11FileStorageES2_RKT_.exit

_ZN2cvlsIfEERNS_11FileStorageES2_RKT_.exit:       ; preds = %bb.gl, %.noexc307, %.noexc303
  %indvars.iv.next1006 = add nuw nsw i64 %indvars.iv1005, 1 ; 2 uses
  %exitcond1009.not = icmp eq i64 %indvars.iv.next1006, %wide.trip.count1008
  br i1 %exitcond1009.not, label %._crit_edge789, label %.lr.ph788, !llvm.loop !87

bb.gm:                                            ; preds = %bb.dq, %bb.dn, %bb.dl, %bb.dj, %bb.dg, %bb.de, %bb.ki, %._crit_edge802, %bb.hf, %bb.he, %._crit_edge798, %bb.dt, %bb.ds, %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit219, %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %._crit_edge784
  %i.qx = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp447

bb.gn:                                            ; preds = %bb.dz, %bb.dw, %bb.du, %bb.ed, %bb.ec, %bb.eb, %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit229
  %i.qy = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp447

bb.go:                                            ; preds = %bb.ej, %bb.eg, %bb.ee, %bb.el, %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit239
  %i.qz = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp447

bb.gp:                                            ; preds = %bb.er, %bb.eo, %bb.em, %bb.et, %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit249
  %i.ra = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp447

bb.gq:                                            ; preds = %bb.hc, %._crit_edge795, %bb.ev, %bb.eu
  %i.rb = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp447

.loopexit459:                                     ; preds = %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit259, %_ZN2cvlsIdEERNS_11FileStorageES2_RKT_.exit, %bb.fk, %bb.ew, %bb.fb, %bb.fd, %bb.fi
  %lpad.loopexit461 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp447

.loopexit.split-lp460:                            ; preds = %bb.ey, %bb.ff
  %lpad.loopexit.split-lp462 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp447

bb.gr:                                            ; preds = %bb.fm, %bb.fl, %.lr.ph794
  %i.rc = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp447

.loopexit446:                                     ; preds = %.lr.ph791, %bb.gy
  %lpad.loopexit448 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp447

.loopexit.split-lp447.loopexit:                   ; preds = %bb.gk, %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit298, %bb.ge, %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit288, %bb.fy, %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit278, %bb.fs, %.lr.ph788
  %lpad.loopexit451 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp447

.loopexit.split-lp447.loopexit.split-lp.loopexit: ; preds = %._crit_edge789, %bb.gs, %bb.gt, %._crit_edge792, %bb.ha
  %lpad.loopexit455 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp447

.loopexit.split-lp447.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fp, %bb.fv, %bb.gb, %bb.gh, %bb.gv
  %lpad.loopexit.split-lp456 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp447

._crit_edge789:                                   ; preds = %_ZN2cvlsIfEERNS_11FileStorageES2_RKT_.exit, %bb.fn
  %i.rd = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull @.str.32)
          to label %bb.gs unwind label %.loopexit.split-lp447.loopexit.split-lp.loopexit

bb.gs:                                            ; preds = %._crit_edge789
  %i.re = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %i.rd, ptr noundef nonnull @.str.33)
          to label %bb.gt unwind label %.loopexit.split-lp447.loopexit.split-lp.loopexit

bb.gt:                                            ; preds = %bb.gs
  %i.rf = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %i.re, ptr noundef nonnull @.str.31)
          to label %.preheader445 unwind label %.loopexit.split-lp447.loopexit.split-lp.loopexit ; 0 uses

.preheader445:                                    ; preds = %bb.gt
  %i.rg = icmp sgt i32 %i.oc, 0
  br i1 %i.rg, label %.lr.ph791.preheader, label %._crit_edge792

.lr.ph791.preheader:                              ; preds = %.preheader445
  %wide.trip.count1013 = and i64 %i.ob, 2147483647
  br label %.lr.ph791

.lr.ph791:                                        ; preds = %.lr.ph791.preheader, %_ZN2cvlsIfEERNS_11FileStorageES2_RKT_.exit317
  %indvars.iv1010 = phi i64 [ 0, %.lr.ph791.preheader ], [ %indvars.iv.next1011, %_ZN2cvlsIfEERNS_11FileStorageES2_RKT_.exit317 ] ; 2 uses
  %i.rh = load ptr, ptr %i.nu, align 8, !tbaa !24
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %indvars.iv1010
  %i.rj = load ptr, ptr %1, align 8, !tbaa !68
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 24
  %i.rl = load ptr, ptr %i.rk, align 8
  %i.rm = invoke noundef zeroext i1 %i.rl(ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %.noexc312 unwind label %.loopexit446, !inline_history !86

.noexc312:                                        ; preds = %.lr.ph791
  br i1 %i.rm, label %bb.gu, label %_ZN2cvlsIfEERNS_11FileStorageES2_RKT_.exit317

bb.gu:                                            ; preds = %.noexc312
  %i.rn = load i32, ptr %i.lc, align 8, !tbaa !71
  %i.ro = icmp eq i32 %i.rn, 6
  br i1 %i.ro, label %bb.gv, label %bb.gy

bb.gv:                                            ; preds = %bb.gu
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.39, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %.noexc313 unwind label %.loopexit.split-lp447.loopexit.split-lp.loopexit.split-lp

.noexc313:                                        ; preds = %bb.gv
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZN2cvlsIiEERNS_11FileStorageES2_RKT_, ptr noundef nonnull @.str.40, i32 noundef 1173) #16
          to label %bb.gw unwind label %bb.gx

bb.gw:                                            ; preds = %.noexc313
  unreachable

bb.gx:                                            ; preds = %.noexc313
  %i.rp = landingpad { ptr, i32 }
          cleanup
  %i.rq = load ptr, ptr %14, align 8, !tbaa !83   ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.rs = icmp eq ptr %i.rq, %i.rr
  br i1 %i.rs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i310, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i309

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i309: ; preds = %bb.gx
  %i.rt = load i64, ptr %i.rr, align 8, !tbaa !48
  %i.ru = add i64 %i.rt, 1
  call void @_ZdlPvm(ptr noundef %i.rq, i64 noundef %i.ru) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i310

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i310: ; preds = %bb.gx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i309
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  br label %.loopexit.split-lp447

bb.gy:                                            ; preds = %bb.gu
  %i.rv = load float, ptr %i.ri, align 4, !tbaa !55
  invoke void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.ld, float noundef %i.rv)
          to label %.noexc316 unwind label %.loopexit446

.noexc316:                                        ; preds = %bb.gy
  %i.rw = load i32, ptr %i.lc, align 8, !tbaa !71
  %i.rx = and i32 %i.rw, 4
  %.not.i308 = icmp eq i32 %i.rx, 0
  br i1 %.not.i308, label %_ZN2cvlsIfEERNS_11FileStorageES2_RKT_.exit317, label %bb.gz

bb.gz:                                            ; preds = %.noexc316
  store i32 6, ptr %i.lc, align 8, !tbaa !71
  br label %_ZN2cvlsIfEERNS_11FileStorageES2_RKT_.exit317

_ZN2cvlsIfEERNS_11FileStorageES2_RKT_.exit317:    ; preds = %bb.gz, %.noexc316, %.noexc312
  %indvars.iv.next1011 = add nuw nsw i64 %indvars.iv1010, 1 ; 2 uses
  %exitcond1014.not = icmp eq i64 %indvars.iv.next1011, %wide.trip.count1013
  br i1 %exitcond1014.not, label %._crit_edge792, label %.lr.ph791, !llvm.loop !88

._crit_edge792:                                   ; preds = %_ZN2cvlsIfEERNS_11FileStorageES2_RKT_.exit317, %.preheader445
  %i.ry = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull @.str.32)
          to label %bb.ha unwind label %.loopexit.split-lp447.loopexit.split-lp.loopexit

bb.ha:                                            ; preds = %._crit_edge792
  %i.rz = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %i.ry, ptr noundef nonnull @.str.23)
          to label %bb.hb unwind label %.loopexit.split-lp447.loopexit.split-lp.loopexit ; 0 uses

bb.hb:                                            ; preds = %bb.ha
  %indvars.iv.next1016 = add nuw nsw i64 %indvars.iv1015, 1 ; 2 uses
  %exitcond1019.not = icmp eq i64 %indvars.iv.next1016, %wide.trip.count1018
  br i1 %exitcond1019.not, label %._crit_edge795, label %.lr.ph794, !llvm.loop !89

._crit_edge795:                                   ; preds = %bb.hb, %.preheader454
  %i.sa = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull @.str.32)
          to label %bb.hc unwind label %bb.gq

bb.hc:                                            ; preds = %._crit_edge795
  %i.sb = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %i.sa, ptr noundef nonnull @.str.23)
          to label %bb.hd unwind label %bb.gq     ; 0 uses

bb.hd:                                            ; preds = %bb.hc
  %indvars.iv.next1021 = add nuw nsw i64 %indvars.iv1020, 1 ; 2 uses
  %exitcond1024.not = icmp eq i64 %indvars.iv.next1021, %wide.trip.count1023
  br i1 %exitcond1024.not, label %._crit_edge798, label %bb.eu, !llvm.loop !90

._crit_edge798:                                   ; preds = %bb.hd, %.preheader458
  %i.sc = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull @.str.32)
          to label %bb.he unwind label %bb.gm

bb.he:                                            ; preds = %._crit_edge798
  %i.sd = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %i.sc, ptr noundef nonnull @.str.34)
          to label %bb.hf unwind label %bb.gm

bb.hf:                                            ; preds = %bb.he
  %i.se = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %i.sd, ptr noundef nonnull @.str.27)
          to label %.preheader437 unwind label %bb.gm ; 0 uses

.preheader437:                                    ; preds = %bb.hf
  br i1 %i.hf, label %.lr.ph801, label %._crit_edge802

.lr.ph801:                                        ; preds = %.preheader437, %bb.kh
  %indvars.iv1029 = phi i64 [ %indvars.iv.next1030, %bb.kh ], [ 0, %.preheader437 ] ; 2 uses
  %i.sf = getelementptr inbounds nuw [64 x i8], ptr %.sroa.17.0.lcssa1111, i64 %indvars.iv1029 ; 17 uses
  %i.sg = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull @.str.21)
          to label %bb.hg unwind label %.loopexit.split-lp.loopexit

bb.hg:                                            ; preds = %.lr.ph801
  %i.sh = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %i.sg, ptr noundef nonnull @.str.6)
          to label %bb.hh unwind label %.loopexit.split-lp.loopexit

bb.hh:                                            ; preds = %bb.hg
  %i.si = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %i.sh, ptr noundef nonnull @.str.27)
          to label %bb.hi unwind label %.loopexit.split-lp.loopexit ; 0 uses

.loopexit:                                        ; preds = %_ZN2cvlsIfEERNS_11FileStorageES2_RKT_.exit367.2, %bb.jv, %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit357.2, %bb.js, %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit347.2, %bb.jp, %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit337.2, %bb.jm, %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit327.2, %bb.jj, %bb.jh, %bb.jg, %_ZN2cvlsIfEERNS_11FileStorageES2_RKT_.exit367.1, %bb.jd, %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit357.1, %bb.ja, %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit347.1, %bb.ix, %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit337.1, %bb.iu, %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit327.1, %bb.ir, %bb.ip, %bb.io, %bb.hi, %_ZN2cvlsIfEERNS_11FileStorageES2_RKT_.exit367, %bb.hj, %bb.ho, %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit327, %bb.hu, %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit337, %bb.ia, %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit347, %bb.ig, %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit357, %bb.im
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp447

.loopexit.split-lp.loopexit:                      ; preds = %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit377, %bb.jz, %bb.jx, %bb.hh, %bb.hg, %.lr.ph801
  %lpad.loopexit438 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp447

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ij, %bb.id, %bb.hx, %bb.hr, %bb.hl
  %lpad.loopexit.split-lp439 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp447

bb.hi:                                            ; preds = %bb.hh
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sf, i64 60
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sf, i64 4
  %i.sl = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull @.str.31)
          to label %bb.hj unwind label %.loopexit ; 26 uses

bb.hj:                                            ; preds = %bb.hi
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !68
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 24
  %i.so = load ptr, ptr %i.sn, align 8
  %i.sp = invoke noundef zeroext i1 %i.so(ptr noundef nonnull align 8 dereferenceable(64) %i.sl)
          to label %.noexc322 unwind label %.loopexit, !inline_history !70

.noexc322:                                        ; preds = %bb.hj
  br i1 %i.sp, label %bb.hk, label %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit327

bb.hk:                                            ; preds = %.noexc322
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sl, i64 8 ; 3 uses
  %i.sr = load i32, ptr %i.sq, align 8, !tbaa !71
  %i.ss = icmp eq i32 %i.sr, 6
  br i1 %i.ss, label %bb.hl, label %bb.ho

bb.hl:                                            ; preds = %bb.ji, %bb.iq, %bb.hk
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.39, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %.noexc323 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc323:                                        ; preds = %bb.hl
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cvlsIiEERNS_11FileStorageES2_RKT_, ptr noundef nonnull @.str.40, i32 noundef 1173) #16
          to label %bb.hm unwind label %bb.hn

bb.hm:                                            ; preds = %.noexc323
  unreachable

bb.hn:                                            ; preds = %.noexc323
  %i.st = landingpad { ptr, i32 }
          cleanup
  %i.su = load ptr, ptr %12, align 8, !tbaa !83   ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.sw = icmp eq ptr %i.su, %i.sv
  br i1 %i.sw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i320, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i319

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i319: ; preds = %bb.hn
  %i.sx = load i64, ptr %i.sv, align 8, !tbaa !48
  %i.sy = add i64 %i.sx, 1
  call void @_ZdlPvm(ptr noundef %i.su, i64 noundef %i.sy) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i320

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i320: ; preds = %bb.hn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i319
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  br label %.loopexit.split-lp447

bb.ho:                                            ; preds = %bb.hk
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sl, i64 16
  %i.ta = load i32, ptr %i.sk, align 4, !tbaa !57
  invoke void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(64) %i.sl, ptr noundef nonnull align 8 dereferenceable(32) %i.sz, i32 noundef %i.ta)
          to label %.noexc326 unwind label %.loopexit

.noexc326:                                        ; preds = %bb.ho
  %i.tb = load i32, ptr %i.sq, align 8, !tbaa !71
  %i.tc = and i32 %i.tb, 4
  %.not.i318 = icmp eq i32 %i.tc, 0
  br i1 %.not.i318, label %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit327, label %bb.hp

bb.hp:                                            ; preds = %.noexc326
  store i32 6, ptr %i.sq, align 8, !tbaa !71
  br label %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit327

_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit327:    ; preds = %bb.hp, %.noexc326, %.noexc322
  %i.td = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  %i.te = load ptr, ptr %i.sl, align 8, !tbaa !68
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 24
  %i.tg = load ptr, ptr %i.tf, align 8
  %i.th = invoke noundef zeroext i1 %i.tg(ptr noundef nonnull align 8 dereferenceable(64) %i.sl)
          to label %.noexc332 unwind label %.loopexit, !inline_history !70

.noexc332:                                        ; preds = %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit327
  br i1 %i.th, label %bb.hq, label %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit337

bb.hq:                                            ; preds = %.noexc332
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sl, i64 8 ; 3 uses
  %i.tj = load i32, ptr %i.ti, align 8, !tbaa !71
  %i.tk = icmp eq i32 %i.tj, 6
  br i1 %i.tk, label %bb.hr, label %bb.hu

bb.hr:                                            ; preds = %bb.jl, %bb.it, %bb.hq
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.39, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc333 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc333:                                        ; preds = %bb.hr
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cvlsIiEERNS_11FileStorageES2_RKT_, ptr noundef nonnull @.str.40, i32 noundef 1173) #16
          to label %bb.hs unwind label %bb.ht

bb.hs:                                            ; preds = %.noexc333
  unreachable

bb.ht:                                            ; preds = %.noexc333
  %i.tl = landingpad { ptr, i32 }
          cleanup
  %i.tm = load ptr, ptr %10, align 8, !tbaa !83   ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.to = icmp eq ptr %i.tm, %i.tn
  br i1 %i.to, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i330, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i329

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i329: ; preds = %bb.ht
  %i.tp = load i64, ptr %i.tn, align 8, !tbaa !48
  %i.tq = add i64 %i.tp, 1
  call void @_ZdlPvm(ptr noundef %i.tm, i64 noundef %i.tq) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i330

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i330: ; preds = %bb.ht, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i329
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %.loopexit.split-lp447

bb.hu:                                            ; preds = %bb.hq
  %i.tr = getelementptr inbounds nuw i8, ptr %i.sl, i64 16
  %i.ts = load i32, ptr %i.td, align 4, !tbaa !57
  invoke void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(64) %i.sl, ptr noundef nonnull align 8 dereferenceable(32) %i.tr, i32 noundef %i.ts)
          to label %.noexc336 unwind label %.loopexit

.noexc336:                                        ; preds = %bb.hu
  %i.tt = load i32, ptr %i.ti, align 8, !tbaa !71
  %i.tu = and i32 %i.tt, 4
  %.not.i328 = icmp eq i32 %i.tu, 0
  br i1 %.not.i328, label %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit337, label %bb.hv

bb.hv:                                            ; preds = %.noexc336
  store i32 6, ptr %i.ti, align 8, !tbaa !71
  br label %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit337

_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit337:    ; preds = %bb.hv, %.noexc336, %.noexc332
  %i.tv = getelementptr inbounds nuw i8, ptr %i.sf, i64 12
  %i.tw = load ptr, ptr %i.sl, align 8, !tbaa !68
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 24
  %i.ty = load ptr, ptr %i.tx, align 8
  %i.tz = invoke noundef zeroext i1 %i.ty(ptr noundef nonnull align 8 dereferenceable(64) %i.sl)
          to label %.noexc342 unwind label %.loopexit, !inline_history !70

.noexc342:                                        ; preds = %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit337
  br i1 %i.tz, label %bb.hw, label %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit347

bb.hw:                                            ; preds = %.noexc342
  %i.ua = getelementptr inbounds nuw i8, ptr %i.sl, i64 8 ; 3 uses
  %i.ub = load i32, ptr %i.ua, align 8, !tbaa !71
  %i.uc = icmp eq i32 %i.ub, 6
  br i1 %i.uc, label %bb.hx, label %bb.ia

bb.hx:                                            ; preds = %bb.jo, %bb.iw, %bb.hw
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.39, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc343 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc343:                                        ; preds = %bb.hx
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cvlsIiEERNS_11FileStorageES2_RKT_, ptr noundef nonnull @.str.40, i32 noundef 1173) #16
          to label %bb.hy unwind label %bb.hz

bb.hy:                                            ; preds = %.noexc343
  unreachable

bb.hz:                                            ; preds = %.noexc343
  %i.ud = landingpad { ptr, i32 }
          cleanup
  %i.ue = load ptr, ptr %8, align 8, !tbaa !83    ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ug = icmp eq ptr %i.ue, %i.uf
  br i1 %i.ug, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i340, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i339

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i339: ; preds = %bb.hz
end_hunk_1
begin_hunk_2_@_ZN2cv8haar_cvt7convertERKNS_8FileNodeERNS_11FileStorageE:bb.a

bb.jo:                                            ; preds = %.noexc342.2
  %i.zp = getelementptr inbounds nuw i8, ptr %i.yl, i64 8 ; 3 uses
  %i.zq = load i32, ptr %i.zp, align 8, !tbaa !71
  %i.zr = icmp eq i32 %i.zq, 6
  br i1 %i.zr, label %bb.hx, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.zs = getelementptr inbounds nuw i8, ptr %i.yl, i64 16
  %i.zt = load i32, ptr %i.zk, align 4, !tbaa !57
  invoke void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(64) %i.yl, ptr noundef nonnull align 8 dereferenceable(32) %i.zs, i32 noundef %i.zt)
          to label %.noexc346.2 unwind label %.loopexit

.noexc346.2:                                      ; preds = %bb.jp
  %i.zu = load i32, ptr %i.zp, align 8, !tbaa !71
  %i.zv = and i32 %i.zu, 4
  %.not.i338.2 = icmp eq i32 %i.zv, 0
  br i1 %.not.i338.2, label %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit347.2, label %bb.jq

bb.jq:                                            ; preds = %.noexc346.2
  store i32 6, ptr %i.zp, align 8, !tbaa !71
  br label %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit347.2

_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit347.2:  ; preds = %bb.jq, %.noexc346.2, %.noexc342.2
  %i.zw = getelementptr inbounds nuw i8, ptr %i.sf, i64 56
  %i.zx = load ptr, ptr %i.yl, align 8, !tbaa !68
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 24
  %i.zz = load ptr, ptr %i.zy, align 8
  %i.aaa = invoke noundef zeroext i1 %i.zz(ptr noundef nonnull align 8 dereferenceable(64) %i.yl)
          to label %.noexc352.2 unwind label %.loopexit, !inline_history !70

.noexc352.2:                                      ; preds = %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit347.2
  br i1 %i.aaa, label %bb.jr, label %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit357.2

bb.jr:                                            ; preds = %.noexc352.2
  %i.aab = getelementptr inbounds nuw i8, ptr %i.yl, i64 8 ; 3 uses
  %i.aac = load i32, ptr %i.aab, align 8, !tbaa !71
  %i.aad = icmp eq i32 %i.aac, 6
  br i1 %i.aad, label %bb.id, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.aae = getelementptr inbounds nuw i8, ptr %i.yl, i64 16
  %i.aaf = load i32, ptr %i.zw, align 4, !tbaa !57
  invoke void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(64) %i.yl, ptr noundef nonnull align 8 dereferenceable(32) %i.aae, i32 noundef %i.aaf)
          to label %.noexc356.2 unwind label %.loopexit

.noexc356.2:                                      ; preds = %bb.js
  %i.aag = load i32, ptr %i.aab, align 8, !tbaa !71
  %i.aah = and i32 %i.aag, 4
  %.not.i348.2 = icmp eq i32 %i.aah, 0
  br i1 %.not.i348.2, label %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit357.2, label %bb.jt

bb.jt:                                            ; preds = %.noexc356.2
  store i32 6, ptr %i.aab, align 8, !tbaa !71
  br label %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit357.2

_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit357.2:  ; preds = %bb.jt, %.noexc356.2, %.noexc352.2
  %i.aai = getelementptr inbounds nuw i8, ptr %i.sf, i64 60
  %i.aaj = load ptr, ptr %i.yl, align 8, !tbaa !68
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 24
  %i.aal = load ptr, ptr %i.aak, align 8
  %i.aam = invoke noundef zeroext i1 %i.aal(ptr noundef nonnull align 8 dereferenceable(64) %i.yl)
          to label %.noexc362.2 unwind label %.loopexit, !inline_history !86

.noexc362.2:                                      ; preds = %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit357.2
  br i1 %i.aam, label %bb.ju, label %_ZN2cvlsIfEERNS_11FileStorageES2_RKT_.exit367.2

bb.ju:                                            ; preds = %.noexc362.2
  %i.aan = getelementptr inbounds nuw i8, ptr %i.yl, i64 8 ; 3 uses
  %i.aao = load i32, ptr %i.aan, align 8, !tbaa !71
  %i.aap = icmp eq i32 %i.aao, 6
  br i1 %i.aap, label %bb.ij, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.yl, i64 16
  %i.aar = load float, ptr %i.aai, align 4, !tbaa !55
  invoke void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(64) %i.yl, ptr noundef nonnull align 8 dereferenceable(32) %i.aaq, float noundef %i.aar)
          to label %.noexc366.2 unwind label %.loopexit

.noexc366.2:                                      ; preds = %bb.jv
  %i.aas = load i32, ptr %i.aan, align 8, !tbaa !71
  %i.aat = and i32 %i.aas, 4
  %.not.i358.2 = icmp eq i32 %i.aat, 0
  br i1 %.not.i358.2, label %_ZN2cvlsIfEERNS_11FileStorageES2_RKT_.exit367.2, label %bb.jw

bb.jw:                                            ; preds = %.noexc366.2
  store i32 6, ptr %i.aan, align 8, !tbaa !71
  br label %_ZN2cvlsIfEERNS_11FileStorageES2_RKT_.exit367.2

_ZN2cvlsIfEERNS_11FileStorageES2_RKT_.exit367.2:  ; preds = %bb.jw, %.noexc366.2, %.noexc362.2
  %i.aau = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %i.yl, ptr noundef nonnull @.str.32)
          to label %bb.jx unwind label %.loopexit ; 0 uses

bb.jx:                                            ; preds = %_ZN2cvlsIfEERNS_11FileStorageES2_RKT_.exit367.2, %bb.jf
  %i.aav = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull @.str.32)
          to label %bb.jy unwind label %.loopexit.split-lp.loopexit ; 0 uses

bb.jy:                                            ; preds = %bb.jx
  %i.aaw = load i8, ptr %i.sf, align 4, !tbaa !34, !range !91, !noundef !92
  %i.aax = trunc nuw i8 %i.aaw to i1
  br i1 %i.aax, label %bb.jz, label %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit377

bb.jz:                                            ; preds = %bb.jy
  %i.aay = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull @.str.5)
          to label %bb.ka unwind label %.loopexit.split-lp.loopexit ; 5 uses

bb.ka:                                            ; preds = %bb.jz
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !68
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 24
  %i.abb = load ptr, ptr %i.aba, align 8
  %i.abc = invoke noundef zeroext i1 %i.abb(ptr noundef nonnull align 8 dereferenceable(64) %i.aay)
          to label %.noexc372 unwind label %.loopexit441, !inline_history !70

.noexc372:                                        ; preds = %bb.ka
  br i1 %i.abc, label %bb.kb, label %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit377

bb.kb:                                            ; preds = %.noexc372
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aay, i64 8 ; 3 uses
  %i.abe = load i32, ptr %i.abd, align 8, !tbaa !71
  %i.abf = icmp eq i32 %i.abe, 6
  br i1 %i.abf, label %bb.kc, label %bb.kf

bb.kc:                                            ; preds = %bb.kb
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.39, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc373 unwind label %.loopexit.split-lp442

.noexc373:                                        ; preds = %bb.kc
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cvlsIiEERNS_11FileStorageES2_RKT_, ptr noundef nonnull @.str.40, i32 noundef 1173) #16
          to label %bb.kd unwind label %bb.ke

bb.kd:                                            ; preds = %.noexc373
  unreachable

bb.ke:                                            ; preds = %.noexc373
  %i.abg = landingpad { ptr, i32 }
          cleanup
  %i.abh = load ptr, ptr %2, align 8, !tbaa !83   ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.abj = icmp eq ptr %i.abh, %i.abi
  br i1 %i.abj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i370, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i369

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i369: ; preds = %bb.ke
  %i.abk = load i64, ptr %i.abi, align 8, !tbaa !48
  %i.abl = add i64 %i.abk, 1
  call void @_ZdlPvm(ptr noundef %i.abh, i64 noundef %i.abl) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i370

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i370: ; preds = %bb.ke, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i369
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %.thread429

bb.kf:                                            ; preds = %bb.kb
  %i.abm = getelementptr inbounds nuw i8, ptr %i.aay, i64 16
  invoke void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(64) %i.aay, ptr noundef nonnull align 8 dereferenceable(32) %i.abm, i32 noundef 1)
          to label %.noexc376 unwind label %.loopexit441

.noexc376:                                        ; preds = %bb.kf
  %i.abn = load i32, ptr %i.abd, align 8, !tbaa !71
  %i.abo = and i32 %i.abn, 4
  %.not.i368 = icmp eq i32 %i.abo, 0
  br i1 %.not.i368, label %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit377, label %bb.kg

bb.kg:                                            ; preds = %.noexc376
  store i32 6, ptr %i.abd, align 8, !tbaa !71
  br label %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit377

.loopexit441:                                     ; preds = %bb.ka, %bb.kf
  %lpad.loopexit443 = landingpad { ptr, i32 }
          cleanup
  br label %.thread429

.loopexit.split-lp442:                            ; preds = %bb.kc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread429

_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit377:    ; preds = %.noexc372, %.noexc376, %bb.kg, %bb.jy
  %i.abp = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull @.str.23)
          to label %bb.kh unwind label %.loopexit.split-lp.loopexit ; 0 uses

bb.kh:                                            ; preds = %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit377
  %indvars.iv.next1030 = add nuw nsw i64 %indvars.iv1029, 1 ; 2 uses
  %exitcond1033.not = icmp eq i64 %indvars.iv.next1030, %wide.trip.count1032
  br i1 %exitcond1033.not, label %._crit_edge802, label %.lr.ph801, !llvm.loop !93

._crit_edge802:                                   ; preds = %bb.kh, %.preheader437
  %i.abq = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull @.str.32)
          to label %bb.ki unwind label %bb.gm

bb.ki:                                            ; preds = %._crit_edge802
  %i.abr = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %i.abq, ptr noundef nonnull @.str.23)
          to label %bb.kj unwind label %bb.gm     ; 0 uses

bb.kj:                                            ; preds = %bb.ki
  call void @_ZNSt6vectorIN2cv8haar_cvt19HaarStageClassifierESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %42) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #15
  %.not.i.i.i378 = icmp eq ptr %.sroa.17.0.lcssa1111, null
  br i1 %.not.i.i.i378, label %_ZNSt6vectorIN2cv8haar_cvt11HaarFeatureESaIS2_EED2Ev.exit, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.abs = ptrtoint ptr %.sroa.0404.0.lcssa1113 to i64
  %i.abt = sub i64 %i.abs, %i.hg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.17.0.lcssa1111, i64 noundef %i.abt) #18
  br label %_ZNSt6vectorIN2cv8haar_cvt11HaarFeatureESaIS2_EED2Ev.exit

.thread:                                          ; preds = %bb.ak, %bb.aj
  %.pn156.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.cd, %bb.ak ], [ %i.cc, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #15
  br label %_ZNSt6vectorIN2cv8haar_cvt11HaarFeatureESaIS2_EED2Ev.exit380

.thread429:                                       ; preds = %.loopexit441, %.loopexit.split-lp442, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i370
  %.pn156.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.abg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i370 ], [ %lpad.loopexit443, %.loopexit441 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp442 ]
  call void @_ZNSt6vectorIN2cv8haar_cvt19HaarStageClassifierESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %42) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #15
  br label %bb.kl

.loopexit.split-lp447:                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.loopexit446, %.loopexit.split-lp447.loopexit.split-lp.loopexit, %.loopexit.split-lp447.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp447.loopexit, %.loopexit459, %.loopexit.split-lp460, %bb.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i320, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i340, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i360, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i350, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i330, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i271, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i291, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i310, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i301, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i281, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i252, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i262, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i222, %bb.gn, %bb.gp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i242, %bb.go, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i232, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i212, %bb.gm, %bb.gq, %bb.gr
  %.sroa.17.10.a = phi ptr [ %.sroa.17.9.a, %bb.cw ], [ %.sroa.17.0.lcssa1111, %bb.gq ], [ %.sroa.17.0.lcssa1111, %bb.gr ], [ %.sroa.17.0.lcssa1111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i320 ], [ %.sroa.17.0.lcssa1111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i340 ], [ %.sroa.17.0.lcssa1111, %.loopexit.split-lp447.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.17.0.lcssa1111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i360 ], [ %.sroa.17.0.lcssa1111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i350 ], [ %.sroa.17.0.lcssa1111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i330 ], [ %.sroa.17.0.lcssa1111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i271 ], [ %.sroa.17.0.lcssa1111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i291 ], [ %.sroa.17.0.lcssa1111, %.loopexit.split-lp460 ], [ %.sroa.17.0.lcssa1111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i310 ], [ %.sroa.17.0.lcssa1111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i301 ], [ %.sroa.17.0.lcssa1111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i281 ], [ %.sroa.17.0.lcssa1111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i252 ], [ %.sroa.17.0.lcssa1111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i262 ], [ %.sroa.17.0.lcssa1111, %bb.gm ], [ %.sroa.17.0.lcssa1111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i222 ], [ %.sroa.17.0.lcssa1111, %bb.gn ], [ %.sroa.17.0.lcssa1111, %bb.gp ], [ %.sroa.17.0.lcssa1111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i242 ], [ %.sroa.17.0.lcssa1111, %bb.go ], [ %.sroa.17.0.lcssa1111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i232 ], [ %.sroa.17.0.lcssa1111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.sroa.17.0.lcssa1111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i212 ], [ %.sroa.17.0.lcssa1111, %.loopexit459 ], [ %.sroa.17.0.lcssa1111, %.loopexit446 ], [ %.sroa.17.0.lcssa1111, %.loopexit.split-lp447.loopexit ], [ %.sroa.17.0.lcssa1111, %.loopexit.split-lp447.loopexit.split-lp.loopexit ], [ %.sroa.17.0.lcssa1111, %.loopexit ], [ %.sroa.17.0.lcssa1111, %.loopexit.split-lp.loopexit ], [ %.sroa.17.0.lcssa1111, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.sroa.0404.10 = phi ptr [ %.sroa.0404.9, %bb.cw ], [ %.sroa.0404.0.lcssa1113, %bb.gq ], [ %.sroa.0404.0.lcssa1113, %bb.gr ], [ %.sroa.0404.0.lcssa1113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i320 ], [ %.sroa.0404.0.lcssa1113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i340 ], [ %.sroa.0404.0.lcssa1113, %.loopexit.split-lp447.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0404.0.lcssa1113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i360 ], [ %.sroa.0404.0.lcssa1113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i350 ], [ %.sroa.0404.0.lcssa1113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i330 ], [ %.sroa.0404.0.lcssa1113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i271 ], [ %.sroa.0404.0.lcssa1113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i291 ], [ %.sroa.0404.0.lcssa1113, %.loopexit.split-lp460 ], [ %.sroa.0404.0.lcssa1113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i310 ], [ %.sroa.0404.0.lcssa1113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i301 ], [ %.sroa.0404.0.lcssa1113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i281 ], [ %.sroa.0404.0.lcssa1113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i252 ], [ %.sroa.0404.0.lcssa1113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i262 ], [ %.sroa.0404.0.lcssa1113, %bb.gm ], [ %.sroa.0404.0.lcssa1113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i222 ], [ %.sroa.0404.0.lcssa1113, %bb.gn ], [ %.sroa.0404.0.lcssa1113, %bb.gp ], [ %.sroa.0404.0.lcssa1113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i242 ], [ %.sroa.0404.0.lcssa1113, %bb.go ], [ %.sroa.0404.0.lcssa1113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i232 ], [ %.sroa.0404.0.lcssa1113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.sroa.0404.0.lcssa1113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i212 ], [ %.sroa.0404.0.lcssa1113, %.loopexit459 ], [ %.sroa.0404.0.lcssa1113, %.loopexit446 ], [ %.sroa.0404.0.lcssa1113, %.loopexit.split-lp447.loopexit ], [ %.sroa.0404.0.lcssa1113, %.loopexit.split-lp447.loopexit.split-lp.loopexit ], [ %.sroa.0404.0.lcssa1113, %.loopexit ], [ %.sroa.0404.0.lcssa1113, %.loopexit.split-lp.loopexit ], [ %.sroa.0404.0.lcssa1113, %.loopexit.split-lp.loopexit.split-lp ]
  %.pn156.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn156.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cw ], [ %i.rb, %bb.gq ], [ %i.rc, %bb.gr ], [ %i.st, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i320 ], [ %i.ud, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i340 ], [ %lpad.loopexit.split-lp456, %.loopexit.split-lp447.loopexit.split-lp.loopexit.split-lp ], [ %i.vn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i360 ], [ %i.uv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i350 ], [ %i.tl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i330 ], [ %i.on, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i271 ], [ %i.pw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i291 ], [ %lpad.loopexit.split-lp462, %.loopexit.split-lp460 ], [ %i.rp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i310 ], [ %i.qo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i301 ], [ %i.pf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i281 ], [ %i.ly, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i252 ], [ %i.mr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i262 ], [ %i.qx, %bb.gm ], [ %i.jf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i222 ], [ %i.qy, %bb.gn ], [ %i.ra, %bb.gp ], [ %i.kr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i242 ], [ %i.qz, %bb.go ], [ %i.jz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i232 ], [ %i.hv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.im, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i212 ], [ %lpad.loopexit461, %.loopexit459 ], [ %lpad.loopexit448, %.loopexit446 ], [ %lpad.loopexit451, %.loopexit.split-lp447.loopexit ], [ %lpad.loopexit455, %.loopexit.split-lp447.loopexit.split-lp.loopexit ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit438, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp439, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @_ZNSt6vectorIN2cv8haar_cvt19HaarStageClassifierESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %42) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #15
  %.not.i.i.i379 = icmp eq ptr %.sroa.17.10.a, null
  br i1 %.not.i.i.i379, label %_ZNSt6vectorIN2cv8haar_cvt11HaarFeatureESaIS2_EED2Ev.exit380, label %.loopexit.split-lp447._crit_edge

.loopexit.split-lp447._crit_edge:                 ; preds = %.loopexit.split-lp447
  %.pre = ptrtoint ptr %.sroa.17.10.a to i64
  br label %bb.kl

bb.kl:                                            ; preds = %.loopexit.split-lp447._crit_edge, %.thread429
  %.pre-phi = phi i64 [ %.pre, %.loopexit.split-lp447._crit_edge ], [ %i.hg, %.thread429 ]
  %.pn156.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn436 = phi { ptr, i32 } [ %.pn156.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.loopexit.split-lp447._crit_edge ], [ %.pn156.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph, %.thread429 ]
  %.sroa.0404.10435 = phi ptr [ %.sroa.0404.10, %.loopexit.split-lp447._crit_edge ], [ %.sroa.0404.0.lcssa1113, %.thread429 ]
  %.sroa.17.10434 = phi ptr [ %.sroa.17.10.a, %.loopexit.split-lp447._crit_edge ], [ %.sroa.17.0.lcssa1111, %.thread429 ]
  %i.abu = ptrtoint ptr %.sroa.0404.10435 to i64
  %i.abv = sub i64 %i.abu, %.pre-phi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.17.10434, i64 noundef %i.abv) #18
  br label %_ZNSt6vectorIN2cv8haar_cvt11HaarFeatureESaIS2_EED2Ev.exit380

_ZNSt6vectorIN2cv8haar_cvt11HaarFeatureESaIS2_EED2Ev.exit380: ; preds = %.thread, %.loopexit.split-lp447, %bb.kl
  %.pn156.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn422 = phi { ptr, i32 } [ %.pn156.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph, %.thread ], [ %.pn156.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.loopexit.split-lp447 ], [ %.pn156.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn436, %bb.kl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #15
  resume { ptr, i32 } %.pn156.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn422

_ZNSt6vectorIN2cv8haar_cvt11HaarFeatureESaIS2_EED2Ev.exit: ; preds = %bb.kk, %bb.kj, %bb.a
  %.0 = xor i1 %i.a, true
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #15
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZNK2cv8FileNodeixEPKc(ptr dead_on_unwind writable sret(%"class.cv::FileNode") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2cv8FileNode5emptyEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZNK2cv8FileNodeixEi(ptr dead_on_unwind writable sret(%"class.cv::FileNode") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK2cv8FileNodecviEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare noundef i64 @_ZNK2cv8FileNode4sizeEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef double @_ZNK2cv8FileNodecvdEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef float @_ZNK2cv8FileNodecvfEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !94
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.35) #16
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.d, ptr %i.a, align 8, !tbaa !95
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !83
  %i.g = load i64, ptr %i.a, align 8, !tbaa !95
  store i64 %i.g, ptr %i.b, align 8, !tbaa !48
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !48
  store i8 %i.i, ptr %i.h, align 1, !tbaa !48
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !96
  %i.l = load ptr, ptr %2, align 8, !tbaa !83
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.n = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %2, align 8, !tbaa !83     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.q = load i64, ptr %i.b, align 8, !tbaa !48
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret ptr %i.n

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %2, align 8, !tbaa !83     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.b
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.g
  %i.v = load i64, ptr %i.b, align 8, !tbaa !48
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv8haar_cvt19HaarStageClassifierESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2cv8haar_cvt19HaarStageClassifierES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN2cv8haar_cvt19HaarStageClassifierEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ab, %_ZSt8_DestroyIN2cv8haar_cvt19HaarStageClassifierEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22   ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv8haar_cvt14HaarClassifierES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i, %_ZSt8_DestroyIN2cv8haar_cvt14HaarClassifierEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN2cv8haar_cvt14HaarClassifierEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.e, %.lr.ph.i.i ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #18
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i.i.i.i:  ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i
  %i.o = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !28 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN2cv8haar_cvt14HaarClassifierEEvPT_.exit.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #18
  br label %_ZSt8_DestroyIN2cv8haar_cvt14HaarClassifierEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIN2cv8haar_cvt14HaarClassifierEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.c, %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, %i.g
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv8haar_cvt14HaarClassifierES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !32

_ZSt8_DestroyIPN2cv8haar_cvt14HaarClassifierES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN2cv8haar_cvt14HaarClassifierEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !23
  br label %_ZSt8_DestroyIPN2cv8haar_cvt14HaarClassifierES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPN2cv8haar_cvt14HaarClassifierES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN2cv8haar_cvt14HaarClassifierES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i
  %i.v = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPN2cv8haar_cvt14HaarClassifierES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.e, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyIN2cv8haar_cvt19HaarStageClassifierEEvPT_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN2cv8haar_cvt14HaarClassifierES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !97
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #18
  br label %_ZSt8_DestroyIN2cv8haar_cvt19HaarStageClassifierEEvPT_.exit.i.i

_ZSt8_DestroyIN2cv8haar_cvt19HaarStageClassifierEEvPT_.exit.i.i: ; preds = %bb.d, %_ZSt8_DestroyIPN2cv8haar_cvt14HaarClassifierES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2cv8haar_cvt19HaarStageClassifierES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !98

end_hunk_2
