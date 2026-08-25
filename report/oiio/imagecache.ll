Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imagecache?download=true
inline.NumInlined: 13633
inline.NumDeleted: 4658
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 67
loop-unroll.NumUnrolled: 81
begin_hunk_0_@_ZN11OpenImageIO4v3_114ImageCacheFile4openEPNS0_23ImageCachePerThreadInfoE:bb.a
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hf
  %.pn165 = phi { ptr, i32 } [ %i.adc, %bb.hg ], [ %i.adb, %bb.hf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #5
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.gv
  %.pn165.pn = phi { ptr, i32 } [ %.pn165, %bb.hh ], [ %i.abp, %bb.gv ]
  call void @_ZN11OpenImageIO4v3_19ImageSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %37) #5
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.ge
  %.pn165.pn.pn = phi { ptr, i32 } [ %.pn165.pn, %bb.hi ], [ %i.zx, %bb.ge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #5
  br label %.loopexit.split-lp

.loopexit:                                        ; preds = %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit337, %bb.ga, %bb.fz, %bb.fx, %bb.fw
  %.2 = phi i32 [ %i.xr, %bb.fz ], [ %i.xr, %bb.fw ], [ %i.xr, %bb.fx ], [ %i.xr, %bb.ga ], [ %i.aaa, %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit337 ] ; 8 uses
  %i.add = load i8, ptr %i.nz, align 8, !tbaa !500, !range !368, !noundef !290
  %i.ade = trunc nuw i8 %i.add to i1
  br i1 %i.ade, label %bb.hk, label %bb.hm

bb.hk:                                            ; preds = %.loopexit
  %i.adf = load ptr, ptr %i.t, align 8, !tbaa !289, !nonnull !290, !align !291
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 143
  %i.adh = load i8, ptr %i.adg, align 1, !tbaa !512, !range !368, !noundef !290
  %i.adi = trunc nuw i8 %i.adh to i1
  br i1 %i.adi, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  store ptr @.str.60, ptr %39, align 8, !tbaa !7
  br label %.invoke

.invoke:                                          ; preds = %bb.hq, %bb.hl
  %.sink834.sroa.phi = phi ptr [ %.sink834.sroa.gep, %bb.hq ], [ %.sink834.sroa.gep874, %bb.hl ]
  %.sink834 = phi ptr [ %40, %bb.hq ], [ %39, %bb.hl ]
  %.sink = phi i64 [ 24, %bb.hq ], [ 17, %bb.hl ]
  store i64 %.sink, ptr %.sink834.sroa.phi, align 8, !tbaa !12
  invoke fastcc void @"_ZZN11OpenImageIO4v3_114ImageCacheFile4openEPNS0_23ImageCachePerThreadInfoEENK3$_0clENS0_17basic_string_viewIcSt11char_traitsIcEEE"(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %15, ptr nonnull %1, ptr noundef dead_on_return %.sink834)
          to label %.thread unwind label %.loopexit.split-lp.loopexit.split-lp

bb.hm:                                            ; preds = %bb.hk, %.loopexit
  %i.adj = load i8, ptr %i.yj, align 1, !tbaa !509, !range !368, !noundef !290
  %i.adk = trunc nuw i8 %i.adj to i1
  br i1 %i.adk, label %bb.hn, label %bb.hr

bb.hn:                                            ; preds = %bb.hm
  %i.adl = load ptr, ptr %i.t, align 8, !tbaa !289, !nonnull !290, !align !291
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 144
  %i.adn = load i8, ptr %i.adm, align 16, !tbaa !513, !range !368, !noundef !290
  %i.ado = trunc nuw i8 %i.adn to i1
  br i1 %i.ado, label %bb.hr, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.adp = load ptr, ptr %15, align 16, !tbaa !288 ; 2 uses
  %i.adq = load ptr, ptr %i.adp, align 8, !tbaa !262
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 16
  %i.ads = load ptr, ptr %i.adr, align 8
  %i.adt = invoke noundef ptr %i.ads(ptr noundef nonnull align 8 dereferenceable(184) %i.adp)
          to label %bb.hp unwind label %.loopexit.split-lp.loopexit

bb.hp:                                            ; preds = %bb.ho
  %i.adu = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.adt, ptr noundef nonnull dereferenceable(5) @.str.61) #50
  %.not169 = icmp eq i32 %i.adu, 0
  br i1 %.not169, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  store ptr @.str.62, ptr %40, align 8, !tbaa !7
  br label %.invoke

bb.hr:                                            ; preds = %bb.hp, %bb.hn, %bb.hm
  %i.adv = getelementptr inbounds nuw i8, ptr %i.nu, i64 96
  store i32 %.2, ptr %i.adv, align 8, !tbaa !514
  %i.adw = add nsw i32 %.2, -1
  %i.adx = load i32, ptr %i.ob, align 4, !tbaa !3
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.adw, i32 %i.adx)
  store i32 %.sroa.speculated, ptr %i.ob, align 4, !tbaa !504
  %i.ady = getelementptr inbounds nuw i8, ptr %i.nu, i64 104 ; 3 uses
  %i.adz = add nsw i32 %.2, 1
  %i.aea = sext i32 %i.adz to i64
  %i.aeb = icmp slt i32 %.2, -1
  %i.aec = shl nsw i64 %i.aea, 2
  %i.aed = select i1 %i.aeb, i64 -1, i64 %i.aec
  %i.aee = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aed) #47
          to label %bb.hs unwind label %.loopexit.split-lp.loopexit

bb.hs:                                            ; preds = %bb.hr
  %i.aef = load ptr, ptr %i.ady, align 8, !tbaa !515 ; 2 uses
  store ptr %i.aee, ptr %i.ady, align 8, !tbaa !515
  %.not.i.i339 = icmp eq ptr %i.aef, null
  br i1 %.not.i.i339, label %.lr.ph634, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %bb.hs
  call void @_ZdaPv(ptr noundef nonnull %i.aef) #46
  br label %.lr.ph634

.lr.ph634:                                        ; preds = %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i, %bb.hs
  %i.aeg = load ptr, ptr %i.nu, align 8, !tbaa !374 ; 3 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.nu, i64 120 ; 3 uses
  %i.aei = load ptr, ptr %i.ady, align 8, !tbaa !515 ; 4 uses
  %wide.trip.count = zext i32 %.2 to i64          ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.aej = icmp eq i32 %.2, 1
  br i1 %i.aej, label %.epil.preheader, label %.lr.ph634.new

.lr.ph634.new:                                    ; preds = %.lr.ph634
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.ht

bb.ht:                                            ; preds = %bb.ht, %.lr.ph634.new
  %indvars.iv = phi i64 [ 0, %.lr.ph634.new ], [ %indvars.iv.next.1, %bb.ht ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph634.new ], [ %niter.next.1, %bb.ht ]
  %i.aek = getelementptr inbounds nuw [40 x i8], ptr %i.aeg, i64 %indvars.iv
  %i.ael = load ptr, ptr %i.aek, align 8, !tbaa !74 ; 2 uses
  %.not.i340 = icmp eq ptr %i.ael, null
  %i.aem = load ptr, ptr %i.aeh, align 8
  %i.aen = select i1 %.not.i340, ptr %i.aem, ptr %i.ael ; 2 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 12
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aen, i64 16
  %i.aeq = load i32, ptr %i.aep, align 4, !tbaa !3
  %i.aer = load i32, ptr %i.aeo, align 4, !tbaa !3
  %i.aes = call i32 @llvm.smin.i32(i32 %i.aeq, i32 %i.aer)
  %i.aet = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %indvars.iv
  store i32 %i.aes, ptr %i.aet, align 4, !tbaa !3
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aeu = getelementptr inbounds nuw [40 x i8], ptr %i.aeg, i64 %indvars.iv.next
  %i.aev = load ptr, ptr %i.aeu, align 8, !tbaa !74 ; 2 uses
  %.not.i340.1 = icmp eq ptr %i.aev, null
  %i.aew = load ptr, ptr %i.aeh, align 8
  %i.aex = select i1 %.not.i340.1, ptr %i.aew, ptr %i.aev ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 12
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aex, i64 16
  %i.afa = load i32, ptr %i.aez, align 4, !tbaa !3
  %i.afb = load i32, ptr %i.aey, align 4, !tbaa !3
  %i.afc = call i32 @llvm.smin.i32(i32 %i.afa, i32 %i.afb)
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %indvars.iv.next
  store i32 %i.afc, ptr %i.afd, align 4, !tbaa !3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.ht, !llvm.loop !516

._crit_edge.unr-lcssa:                            ; preds = %bb.ht
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph634
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph634 ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod873 = trunc i32 %.2 to i1
  call void @llvm.assume(i1 %lcmp.mod873)
  %i.afe = getelementptr inbounds nuw [40 x i8], ptr %i.aeg, i64 %indvars.iv.epil.init
  %i.aff = load ptr, ptr %i.afe, align 8, !tbaa !74 ; 2 uses
  %.not.i340.epil = icmp eq ptr %i.aff, null
  %i.afg = load ptr, ptr %i.aeh, align 8
  %i.afh = select i1 %.not.i340.epil, ptr %i.afg, ptr %i.aff ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 12
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afh, i64 16
  %i.afk = load i32, ptr %i.afj, align 4, !tbaa !3
  %i.afl = load i32, ptr %i.afi, align 4, !tbaa !3
  %i.afm = call i32 @llvm.smin.i32(i32 %i.afk, i32 %i.afl)
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %indvars.iv.epil.init
  store i32 %i.afm, ptr %i.afn, align 4, !tbaa !3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %i.afo = sext i32 %.2 to i64
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %i.afo
  store i32 0, ptr %i.afp, align 4, !tbaa !3
  %i.afq = load ptr, ptr %15, align 16, !tbaa !288 ; 2 uses
  %i.afr = load ptr, ptr %i.afq, align 8, !tbaa !262
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 120
  %i.aft = load ptr, ptr %i.afs, align 8
  %i.afu = trunc nuw nsw i64 %indvars.iv.next656 to i32
  %i.afv = invoke noundef zeroext i1 %i.aft(ptr noundef nonnull align 8 dereferenceable(184) %i.afq, i32 noundef %i.afu, i32 noundef 0)
          to label %bb.hu unwind label %.loopexit556

bb.hu:                                            ; preds = %._crit_edge
  br i1 %i.afv, label %bb.cp, label %bb.hv, !llvm.loop !517

bb.hv:                                            ; preds = %bb.hu
  %i.afw = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !518)
  %i.afx = load ptr, ptr %i.afw, align 8, !tbaa !13, !noalias !518 ; 3 uses
  %.not.i.i343 = icmp eq ptr %i.afx, null
  br i1 %.not.i.i343, label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.afy = getelementptr inbounds i8, ptr %i.afx, i64 -24
  %i.afz = load i64, ptr %i.afy, align 8, !tbaa !207, !noalias !518
  br label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit: ; preds = %bb.hv, %bb.hw
  %.0.i.i344 = phi i64 [ %i.afz, %bb.hw ], [ 0, %bb.hv ]
  store ptr %i.afx, ptr %41, align 8, !tbaa !7, !alias.scope !518
  %i.aga = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i64 %.0.i.i344, ptr %i.aga, align 8, !tbaa !12, !alias.scope !518
  %i.agb = call noundef i64 @_ZN11OpenImageIO4v3_110Filesystem9file_sizeENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %41) #5 ; 2 uses
  store i64 %i.agb, ptr %i.kp, align 8, !tbaa !521
  %i.agc = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.agd = load <2 x i64>, ptr %i.ko, align 8
  %43 = load <2 x i64>, ptr %i.agc, align 8, !tbaa !67
  %i.age = insertelement <2 x i64> %i.agd, i64 %i.agb, i64 1
  %i.agf = add <2 x i64> %i.age, %43
  %i.agg = sub <2 x i64> %i.agf, %i.kq
  store <2 x i64> %i.agg, ptr %i.agc, align 8, !tbaa !67
  invoke void @_ZN11OpenImageIO4v3_114ImageCacheFile14init_from_specEv(ptr noundef nonnull align 8 dereferenceable(400) %1)
          to label %bb.hx unwind label %.loopexit.split-lp557

bb.hx:                                            ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit
  %i.agh = load ptr, ptr %i.e, align 8, !tbaa !258 ; 2 uses
  %i.agi = load <2 x ptr>, ptr %15, align 16, !tbaa !287
  store <2 x ptr> %i.agi, ptr %42, align 16, !tbaa !287
  %.not.i.i.i345 = icmp eq ptr %i.agh, null
  br i1 %.not.i.i.i345, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_110ImageInputEEC2ERKS3_.exit347, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agh, i64 8 ; 3 uses
  %i.agk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i346 = icmp eq i8 %i.agk, 0
  br i1 %.not.i.i.i.i346, label %bb.ia, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.agl = load i32, ptr %i.agj, align 4, !tbaa !3
  %i.agm = add nsw i32 %i.agl, 1
  store i32 %i.agm, ptr %i.agj, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_110ImageInputEEC2ERKS3_.exit347

bb.ia:                                            ; preds = %bb.hy
  %i.agn = atomicrmw volatile add ptr %i.agj, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_110ImageInputEEC2ERKS3_.exit347

_ZNSt10shared_ptrIN11OpenImageIO4v3_110ImageInputEEC2ERKS3_.exit347: ; preds = %bb.hx, %bb.hz, %bb.ia
  call void @_ZN11OpenImageIO4v3_114ImageCacheFile14set_imageinputESt10shared_ptrINS0_10ImageInputEE(ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef nonnull %42)
  call void @_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %42) #5
  %i.ago = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !274
  %i.agq = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.agr = load ptr, ptr %i.agq, align 8, !tbaa !272
  %i.ags = icmp eq ptr %i.agp, %i.agr
  br i1 %i.ags, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE13shrink_to_fitEv.exit, label %bb.ib

bb.ib:                                            ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_110ImageInputEEC2ERKS3_.exit347
  %i.agt = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.agu = call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS4_EESaIS7_EELb1EE8_S_do_itERS9_(ptr noundef nonnull align 8 dereferenceable(24) %i.agt) #5 ; 0 uses
  br label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE13shrink_to_fitEv.exit

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE13shrink_to_fitEv.exit: ; preds = %bb.ib, %_ZNSt10shared_ptrIN11OpenImageIO4v3_110ImageInputEEC2ERKS3_.exit347
  %i.agv = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.agw = load ptr, ptr %i.agv, align 8, !tbaa !270
  %i.agx = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.agy = load ptr, ptr %i.agx, align 8, !tbaa !267
  %i.agz = icmp eq ptr %i.agw, %i.agy
  br i1 %i.agz, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EE13shrink_to_fitEv.exit, label %bb.ic

bb.ic:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE13shrink_to_fitEv.exit
  %i.aha = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ahb = call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS5_EESaIS8_EELb1EE8_S_do_itERSA_(ptr noundef nonnull align 8 dereferenceable(24) %i.aha) #5 ; 0 uses
  br label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EE13shrink_to_fitEv.exit

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EE13shrink_to_fitEv.exit: ; preds = %bb.ic, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE13shrink_to_fitEv.exit
  %i.ahc = load <2 x ptr>, ptr %15, align 16, !tbaa !287
  store ptr null, ptr %i.e, align 8, !tbaa !258
  store <2 x ptr> %i.ahc, ptr %0, align 8, !tbaa !287
  store ptr null, ptr %15, align 16, !tbaa !288
  br label %.thread

.thread:                                          ; preds = %.invoke, %"_ZZN11OpenImageIO4v3_114ImageCacheFile4openEPNS0_23ImageCachePerThreadInfoEENK3$_0clENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit274", %"_ZZN11OpenImageIO4v3_114ImageCacheFile4openEPNS0_23ImageCachePerThreadInfoEENK3$_0clENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit292", %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EE13shrink_to_fitEv.exit, %_ZNSt10shared_ptrIN11OpenImageIO4v3_110ImageInputEEC2ERKS3_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249
  %i.ahd = getelementptr inbounds nuw i8, ptr %26, i64 136 ; 2 uses
  %i.ahe = load ptr, ptr %i.ahd, align 8, !tbaa !387 ; 3 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %26, i64 144
  %i.ahg = load ptr, ptr %i.ahf, align 8, !tbaa !386 ; 2 uses
  %.not4.i.i.i.i348 = icmp eq ptr %i.ahe, %i.ahg
  br i1 %.not4.i.i.i.i348, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i354, label %.lr.ph.i.i.i.i349

.lr.ph.i.i.i.i349:                                ; preds = %.thread, %.lr.ph.i.i.i.i349
  %.05.i.i.i.i350 = phi ptr [ %i.ahh, %.lr.ph.i.i.i.i349 ], [ %i.ahe, %.thread ] ; 2 uses
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i.i350) #5
  %i.ahh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i350, i64 40 ; 2 uses
  %.not.i.i.i.i351 = icmp eq ptr %i.ahh, %i.ahg
  br i1 %.not.i.i.i.i351, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i352, label %.lr.ph.i.i.i.i349, !llvm.loop !495

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i352: ; preds = %.lr.ph.i.i.i.i349
  %.pr.i.i353 = load ptr, ptr %i.ahd, align 8, !tbaa !387
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i354

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i354: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i352, %.thread
  %i.ahi = phi ptr [ %.pr.i.i353, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i352 ], [ %i.ahe, %.thread ] ; 3 uses
  %.not.i.i1.i.i355 = icmp eq ptr %i.ahi, null
  br i1 %.not.i.i1.i.i355, label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i356, label %bb.id

bb.id:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i354
  %i.ahj = getelementptr inbounds nuw i8, ptr %26, i64 152
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !493
  %i.ahl = ptrtoint ptr %i.ahk to i64
  %i.ahm = ptrtoint ptr %i.ahi to i64
  %i.ahn = sub i64 %i.ahl, %i.ahm
  call void @_ZdlPvm(ptr noundef nonnull %i.ahi, i64 noundef %i.ahn) #46
  br label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i356

_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i356: ; preds = %bb.id, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i354
  %i.aho = getelementptr inbounds nuw i8, ptr %26, i64 96 ; 2 uses
  %i.ahp = load ptr, ptr %i.aho, align 8, !tbaa !198 ; 3 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %26, i64 104
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !195 ; 2 uses
  %.not4.i.i.i1.i357 = icmp eq ptr %i.ahp, %i.ahr
  br i1 %.not4.i.i.i1.i357, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i365, label %.lr.ph.i.i.i2.i358

.lr.ph.i.i.i2.i358:                               ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i356, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i361
  %.05.i.i.i3.i359 = phi ptr [ %i.ahx, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i361 ], [ %i.ahp, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i356 ] ; 3 uses
  %i.ahs = load ptr, ptr %.05.i.i.i3.i359, align 8, !tbaa !36 ; 2 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i359, i64 16 ; 2 uses
  %i.ahu = icmp eq ptr %i.ahs, %i.aht
  br i1 %i.ahu, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i361, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i360

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i360: ; preds = %.lr.ph.i.i.i2.i358
  %i.ahv = load i64, ptr %i.aht, align 8, !tbaa !39
  %i.ahw = add i64 %i.ahv, 1
  call void @_ZdlPvm(ptr noundef %i.ahs, i64 noundef %i.ahw) #46
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i361

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i361: ; preds = %.lr.ph.i.i.i2.i358, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i360
  %i.ahx = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i359, i64 32 ; 2 uses
  %.not.i.i.i4.i362 = icmp eq ptr %i.ahx, %i.ahr
  br i1 %.not.i.i.i4.i362, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i363, label %.lr.ph.i.i.i2.i358, !llvm.loop !265

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i363: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i361
  %.pr.i5.i364 = load ptr, ptr %i.aho, align 8, !tbaa !198
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i365

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i365: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i363, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i356
  %i.ahy = phi ptr [ %.pr.i5.i364, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i363 ], [ %i.ahp, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i356 ] ; 3 uses
  %.not.i.i1.i6.i366 = icmp eq ptr %i.ahy, null
  br i1 %.not.i.i1.i6.i366, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i367, label %bb.ie

bb.ie:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i365
  %i.ahz = getelementptr inbounds nuw i8, ptr %26, i64 112
  %i.aia = load ptr, ptr %i.ahz, align 8, !tbaa !199
  %i.aib = ptrtoint ptr %i.aia to i64
  %i.aic = ptrtoint ptr %i.ahy to i64
  %i.aid = sub i64 %i.aib, %i.aic
  call void @_ZdlPvm(ptr noundef nonnull %i.ahy, i64 noundef %i.aid) #46
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i367

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i367: ; preds = %bb.ie, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i365
  %i.aie = getelementptr inbounds nuw i8, ptr %26, i64 72
  %i.aif = load ptr, ptr %i.aie, align 8, !tbaa !189 ; 3 uses
  %.not.i.i.i7.i368 = icmp eq ptr %i.aif, null
  br i1 %.not.i.i.i7.i368, label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit370, label %bb.if

bb.if:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i367
  %i.aig = getelementptr inbounds nuw i8, ptr %26, i64 88
  %i.aih = load ptr, ptr %i.aig, align 8, !tbaa !191
  %i.aii = ptrtoint ptr %i.aih to i64
  %i.aij = ptrtoint ptr %i.aif to i64
  %i.aik = sub i64 %i.aii, %i.aij
  call void @_ZdlPvm(ptr noundef nonnull %i.aif, i64 noundef %i.aik) #46
  br label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit370

_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit370:      ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i367, %bb.if
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #5
  %i.ail = getelementptr inbounds nuw i8, ptr %25, i64 136 ; 2 uses
  %i.aim = load ptr, ptr %i.ail, align 8, !tbaa !387 ; 3 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %25, i64 144
  %i.aio = load ptr, ptr %i.ain, align 8, !tbaa !386 ; 2 uses
  %.not4.i.i.i.i371 = icmp eq ptr %i.aim, %i.aio
  br i1 %.not4.i.i.i.i371, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i377, label %.lr.ph.i.i.i.i372

.lr.ph.i.i.i.i372:                                ; preds = %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit370, %.lr.ph.i.i.i.i372
  %.05.i.i.i.i373 = phi ptr [ %i.aip, %.lr.ph.i.i.i.i372 ], [ %i.aim, %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit370 ] ; 2 uses
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i.i373) #5
  %i.aip = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i373, i64 40 ; 2 uses
  %.not.i.i.i.i374 = icmp eq ptr %i.aip, %i.aio
  br i1 %.not.i.i.i.i374, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i375, label %.lr.ph.i.i.i.i372, !llvm.loop !495

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i375: ; preds = %.lr.ph.i.i.i.i372
  %.pr.i.i376 = load ptr, ptr %i.ail, align 8, !tbaa !387
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i377

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i377: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i375, %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit370
  %i.aiq = phi ptr [ %.pr.i.i376, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i375 ], [ %i.aim, %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit370 ] ; 3 uses
  %.not.i.i1.i.i378 = icmp eq ptr %i.aiq, null
  br i1 %.not.i.i1.i.i378, label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i379, label %bb.ig

bb.ig:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i377
  %i.air = getelementptr inbounds nuw i8, ptr %25, i64 152
  %i.ais = load ptr, ptr %i.air, align 8, !tbaa !493
  %i.ait = ptrtoint ptr %i.ais to i64
  %i.aiu = ptrtoint ptr %i.aiq to i64
  %i.aiv = sub i64 %i.ait, %i.aiu
  call void @_ZdlPvm(ptr noundef nonnull %i.aiq, i64 noundef %i.aiv) #46
  br label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i379

_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i379: ; preds = %bb.ig, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i377
  %i.aiw = getelementptr inbounds nuw i8, ptr %25, i64 96 ; 2 uses
  %i.aix = load ptr, ptr %i.aiw, align 8, !tbaa !198 ; 3 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %25, i64 104
  %i.aiz = load ptr, ptr %i.aiy, align 8, !tbaa !195 ; 2 uses
  %.not4.i.i.i1.i380 = icmp eq ptr %i.aix, %i.aiz
  br i1 %.not4.i.i.i1.i380, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i388, label %.lr.ph.i.i.i2.i381

.lr.ph.i.i.i2.i381:                               ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i379, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i384
  %.05.i.i.i3.i382 = phi ptr [ %i.ajf, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i384 ], [ %i.aix, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i379 ] ; 3 uses
  %i.aja = load ptr, ptr %.05.i.i.i3.i382, align 8, !tbaa !36 ; 2 uses
end_hunk_0
