Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/linemod?download=true
inline.NumInlined: 3000
inline.NumDeleted: 1203
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNK2cv7linemod8Detector5matchERKSt6vectorINS_3MatESaIS3_EEfRS2_INS0_5MatchESaIS8_EERKS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISH_EERKNS_12_OutputArrayES7_:bb.a

.lr.ph83.7.i:                                     ; preds = %._crit_edge84.6.i, %.lr.ph83.7.i
  %indvars.iv92.7.i = phi i64 [ %indvars.iv.next93.7.i, %.lr.ph83.7.i ], [ 0, %._crit_edge84.6.i ] ; 4 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %.pre118.i, i64 %indvars.iv92.7.i
  %i.aci = load i8, ptr %i.ach, align 1, !tbaa !54
  %i.acj = zext i8 %i.aci to i64
  %i.ack = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cv7linemodL14SIMILARITY_LUTE, i64 224), i64 %i.acj
  %i.acl = getelementptr inbounds nuw i8, ptr %.pre119.i, i64 %indvars.iv92.7.i
  %i.acm = load i8, ptr %i.acl, align 1, !tbaa !54
  %i.acn = zext i8 %i.acm to i64
  %i.aco = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cv7linemodL14SIMILARITY_LUTE, i64 240), i64 %i.acn
  %i.acp = load i8, ptr %i.ack, align 1, !tbaa !54
  %i.acq = load i8, ptr %i.aco, align 1, !tbaa !54
  %i.acr = call i8 @llvm.umax.i8(i8 %i.acp, i8 %i.acq)
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acg, i64 %indvars.iv92.7.i
  store i8 %i.acr, ptr %i.acs, align 1, !tbaa !54
  %indvars.iv.next93.7.i = add nuw nsw i64 %indvars.iv92.7.i, 1 ; 2 uses
  %i.act = load i32, ptr %i.ht, align 8, !tbaa !100
  %i.acu = load i32, ptr %i.hu, align 4, !tbaa !101
  %i.acv = mul nsw i32 %i.acu, %i.act
  %i.acw = sext i32 %i.acv to i64
  %i.acx = icmp slt i64 %indvars.iv.next93.7.i, %i.acw
  br i1 %i.acx, label %.lr.ph83.7.i, label %.loopexit392, !llvm.loop !370

.lr.ph83.i:                                       ; preds = %.preheader.i, %.lr.ph83.i
  %indvars.iv92.i = phi i64 [ %indvars.iv.next93.i, %.lr.ph83.i ], [ 0, %.preheader.i ] ; 4 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %i.wh, i64 %indvars.iv92.i
  %i.acz = load i8, ptr %i.acy, align 1, !tbaa !54
  %i.ada = zext i8 %i.acz to i64
  %i.adb = getelementptr inbounds nuw i8, ptr @_ZN2cv7linemodL14SIMILARITY_LUTE, i64 %i.ada
  %i.adc = getelementptr inbounds nuw i8, ptr %i.wi, i64 %indvars.iv92.i
  %i.add = load i8, ptr %i.adc, align 1, !tbaa !54
  %i.ade = zext i8 %i.add to i64
  %i.adf = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cv7linemodL14SIMILARITY_LUTE, i64 16), i64 %i.ade
  %i.adg = load i8, ptr %i.adb, align 1, !tbaa !54
  %i.adh = load i8, ptr %i.adf, align 1, !tbaa !54
  %i.adi = call i8 @llvm.umax.i8(i8 %i.adg, i8 %i.adh)
  %i.adj = getelementptr inbounds nuw i8, ptr %i.wg, i64 %indvars.iv92.i
  store i8 %i.adi, ptr %i.adj, align 1, !tbaa !54
  %indvars.iv.next93.i = add nuw nsw i64 %indvars.iv92.i, 1 ; 2 uses
  %i.adk = load i32, ptr %i.ht, align 8, !tbaa !100
  %i.adl = load i32, ptr %i.hu, align 4, !tbaa !101
  %i.adm = mul nsw i32 %i.adl, %i.adk             ; 2 uses
  %i.adn = sext i32 %i.adm to i64
  %i.ado = icmp slt i64 %indvars.iv.next93.i, %i.adn
  br i1 %i.ado, label %.lr.ph83.i, label %._crit_edge84.i, !llvm.loop !370

.loopexit392:                                     ; preds = %.lr.ph83.7.i, %._crit_edge84.6.i, %._crit_edge84.5.i, %._crit_edge84.4.i, %._crit_edge84.3.i, %._crit_edge84.2.i, %._crit_edge84.1.i, %._crit_edge84.i, %.preheader.i
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  %i.adp = load ptr, ptr %i.iz, align 8, !tbaa !209
  %i.adq = getelementptr inbounds nuw [24 x i8], ptr %i.adp, i64 %indvars.iv670
  br label %bb.dz

bb.dy:                                            ; preds = %_ZN2cv7linemodL9linearizeERKNS_3MatERS1_i.exit
  %i.adr = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.ei unwind label %.loopexit.split-lp381.loopexit.split-lp.loopexit.split-lp.loopexit

bb.dz:                                            ; preds = %.loopexit392, %_ZN2cv7linemodL9linearizeERKNS_3MatERS1_i.exit
  %indvars.iv667 = phi i64 [ 0, %.loopexit392 ], [ %indvars.iv.next668, %_ZN2cv7linemodL9linearizeERKNS_3MatERS1_i.exit ] ; 3 uses
  %i.ads = getelementptr inbounds nuw [208 x i8], ptr %.sroa.0295.5, i64 %indvars.iv667 ; 4 uses
  %i.adt = load ptr, ptr %i.adq, align 8, !tbaa !200
  %i.adu = getelementptr inbounds nuw [208 x i8], ptr %i.adt, i64 %indvars.iv667 ; 3 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.ads, i64 8 ; 4 uses
  %i.adw = load i32, ptr %i.adv, align 8, !tbaa !100
  %i.adx = srem i32 %i.adw, %i.ix
  %i.ady = icmp eq i32 %i.adx, 0
  br i1 %i.ady, label %bb.ed, label %.noexc.i278

.noexc.i278:                                      ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.adz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.adz, ptr %7, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 26, ptr %i.a, align 8, !tbaa !57
  %i.aea = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc279 unwind label %bb.eb ; 2 uses

.noexc279:                                        ; preds = %.noexc.i278
  store ptr %i.aea, ptr %7, align 8, !tbaa !53
  %i.aeb = load i64, ptr %i.a, align 8, !tbaa !57 ; 3 uses
  store i64 %i.aeb, ptr %i.adz, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.aea, ptr noundef nonnull align 1 dereferenceable(26) @.str.45, i64 26, i1 false)
  %i.aec = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.aeb, ptr %i.aec, align 8, !tbaa !58
  %i.aed = load ptr, ptr %7, align 8, !tbaa !53
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 %i.aeb
  store i8 0, ptr %i.aee, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv7linemodL9linearizeERKNS_3MatERS1_i, ptr noundef nonnull @.str.11, i32 noundef 1095) #29
          to label %bb.ea unwind label %bb.ec

bb.ea:                                            ; preds = %.noexc279
  unreachable

bb.eb:                                            ; preds = %.noexc.i278
  %i.aef = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i195

bb.ec:                                            ; preds = %.noexc279
  %i.aeg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aeh = load ptr, ptr %7, align 8, !tbaa !53   ; 2 uses
  %i.aei = icmp eq ptr %i.aeh, %i.adz
  br i1 %i.aei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i197: ; preds = %bb.ec
  %i.aej = load i64, ptr %i.adz, align 8, !tbaa !54
  %i.aek = add i64 %i.aej, 1
  call void @_ZdlPvm(ptr noundef %i.aeh, i64 noundef %i.aek) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i195

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i195: ; preds = %bb.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i197, %bb.eb
  %.pn.i196 = phi { ptr, i32 } [ %i.aef, %bb.eb ], [ %i.aeg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i197 ], [ %i.aeg, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %.body154

bb.ed:                                            ; preds = %bb.dz
  %i.ael = getelementptr inbounds nuw i8, ptr %i.ads, i64 12 ; 3 uses
  %i.aem = load i32, ptr %i.ael, align 4, !tbaa !101
  %i.aen = srem i32 %i.aem, %i.ix
  %i.aeo = icmp eq i32 %i.aen, 0
  br i1 %i.aeo, label %bb.eh, label %.noexc.i275

.noexc.i275:                                      ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.aep = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.aep, ptr %8, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 26, ptr %i.b, align 8, !tbaa !57
  %i.aeq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc276 unwind label %bb.ef ; 2 uses

.noexc276:                                        ; preds = %.noexc.i275
  store ptr %i.aeq, ptr %8, align 8, !tbaa !53
  %i.aer = load i64, ptr %i.b, align 8, !tbaa !57 ; 3 uses
  store i64 %i.aer, ptr %i.aep, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.aeq, ptr noundef nonnull align 1 dereferenceable(26) @.str.46, i64 26, i1 false)
  %i.aes = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.aer, ptr %i.aes, align 8, !tbaa !58
  %i.aet = load ptr, ptr %8, align 8, !tbaa !53
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 %i.aer
  store i8 0, ptr %i.aeu, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv7linemodL9linearizeERKNS_3MatERS1_i, ptr noundef nonnull @.str.11, i32 noundef 1096) #29
          to label %bb.ee unwind label %bb.eg

bb.ee:                                            ; preds = %.noexc276
  unreachable

bb.ef:                                            ; preds = %.noexc.i275
  %i.aev = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i

bb.eg:                                            ; preds = %.noexc276
  %i.aew = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aex = load ptr, ptr %8, align 8, !tbaa !53   ; 2 uses
  %i.aey = icmp eq ptr %i.aex, %i.aep
  br i1 %i.aey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i: ; preds = %bb.eg
  %i.aez = load i64, ptr %i.aep, align 8, !tbaa !54
  %i.afa = add i64 %i.aez, 1
  call void @_ZdlPvm(ptr noundef %i.aex, i64 noundef %i.afa) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i: ; preds = %bb.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i, %bb.ef
  %.pn51.i = phi { ptr, i32 } [ %i.aev, %bb.ef ], [ %i.aew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i ], [ %i.aew, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %.body154

bb.eh:                                            ; preds = %bb.ed
  %i.afb = load <2 x i32>, ptr %i.adv, align 8, !tbaa !55
  %i.afc = sdiv <2 x i32> %i.afb, %i.ki           ; 2 uses
  %i.afd = extractelement <2 x i32> %i.afc, i64 0
  %i.afe = extractelement <2 x i32> %i.afc, i64 1
  %i.aff = mul nsw i32 %i.afd, %i.afe
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.adu, i32 noundef %i.kf, i32 noundef %i.aff, i32 noundef 0)
          to label %.noexc207 unwind label %.loopexit.split-lp381.loopexit.split-lp.loopexit

.noexc207:                                        ; preds = %bb.eh
  br i1 %i.ke, label %.preheader.lr.ph.i, label %_ZN2cv7linemodL9linearizeERKNS_3MatERS1_i.exit

.preheader.lr.ph.i:                               ; preds = %.noexc207
  %i.afg = getelementptr inbounds nuw i8, ptr %i.adu, i64 24
  %i.afh = getelementptr inbounds nuw i8, ptr %i.adu, i64 128
  %i.afi = getelementptr inbounds nuw i8, ptr %i.ads, i64 24
  %i.afj = getelementptr inbounds nuw i8, ptr %i.ads, i64 128
  %.pre.i199 = load i32, ptr %i.adv, align 8, !tbaa !100 ; 3 uses
  br label %.preheader.i200

.preheader.i200:                                  ; preds = %._crit_edge68.i, %.preheader.lr.ph.i
  %i.afk = phi i32 [ %.pre.i199, %.preheader.lr.ph.i ], [ %i.afq, %._crit_edge68.i ] ; 2 uses
  %i.afl = phi i32 [ %.pre.i199, %.preheader.lr.ph.i ], [ %i.afr, %._crit_edge68.i ] ; 2 uses
  %i.afm = phi i32 [ %.pre.i199, %.preheader.lr.ph.i ], [ %i.afs, %._crit_edge68.i ] ; 2 uses
  %indvars.iv81.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next82.i, %._crit_edge68.i ] ; 3 uses
  %.04270.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.us-phi.i, %._crit_edge68.i ] ; 2 uses
  %indvars91.i = trunc i64 %indvars.iv81.i to i32 ; 2 uses
  %47 = icmp sgt i32 %i.afm, %indvars91.i
  br i1 %47, label %.lr.ph67.split.preheader.i, label %.lr.ph67.split.us.preheader.i

.lr.ph67.split.us.preheader.i:                    ; preds = %.preheader.i200
  %i.afn = add i32 %.04270.i, %i.ix
  br label %._crit_edge68.i

.lr.ph67.split.preheader.i:                       ; preds = %.preheader.i200
  %i.afo = sext i32 %.04270.i to i64
  br label %.lr.ph67.split.i

._crit_edge68.loopexit.i:                         ; preds = %._crit_edge63.i
  %i.afp = trunc nsw i64 %indvars.iv.next87.i to i32
  br label %._crit_edge68.i

._crit_edge68.i:                                  ; preds = %._crit_edge68.loopexit.i, %.lr.ph67.split.us.preheader.i
  %i.afq = phi i32 [ %i.aga, %._crit_edge68.loopexit.i ], [ %i.afk, %.lr.ph67.split.us.preheader.i ]
  %i.afr = phi i32 [ %i.agb, %._crit_edge68.loopexit.i ], [ %i.afl, %.lr.ph67.split.us.preheader.i ]
  %i.afs = phi i32 [ %i.agb, %._crit_edge68.loopexit.i ], [ %i.afm, %.lr.ph67.split.us.preheader.i ]
  %.us-phi.i = phi i32 [ %i.afp, %._crit_edge68.loopexit.i ], [ %i.afn, %.lr.ph67.split.us.preheader.i ]
  %indvars.iv.next82.i = add nuw nsw i64 %indvars.iv81.i, 1 ; 2 uses
  %exitcond93.not.i = icmp eq i64 %indvars.iv.next82.i, %wide.trip.count33.i
  br i1 %exitcond93.not.i, label %_ZN2cv7linemodL9linearizeERKNS_3MatERS1_i.exit, label %.preheader.i200, !llvm.loop !371

.lr.ph67.split.i:                                 ; preds = %._crit_edge63.i, %.lr.ph67.split.preheader.i
  %i.aft = phi i32 [ %i.afk, %.lr.ph67.split.preheader.i ], [ %i.aga, %._crit_edge63.i ] ; 3 uses
  %i.afu = phi i32 [ %i.afl, %.lr.ph67.split.preheader.i ], [ %i.agb, %._crit_edge63.i ] ; 3 uses
  %indvars.iv86.i = phi i64 [ %i.afo, %.lr.ph67.split.preheader.i ], [ %indvars.iv.next87.i, %._crit_edge63.i ] ; 2 uses
  %indvars.iv.i201 = phi i64 [ 0, %.lr.ph67.split.preheader.i ], [ %indvars.iv.next.i202, %._crit_edge63.i ] ; 3 uses
  %indvars88.i = trunc i64 %indvars.iv.i201 to i32 ; 2 uses
  %indvars.iv.next87.i = add nsw i64 %indvars.iv86.i, 1 ; 2 uses
  %48 = icmp sgt i32 %i.afu, %indvars91.i
  br i1 %48, label %.lr.ph62.i, label %._crit_edge63.i

.lr.ph62.i:                                       ; preds = %.lr.ph67.split.i
  %i.afv = load i32, ptr %i.ael, align 4, !tbaa !101 ; 2 uses
  %49 = icmp sgt i32 %i.afv, %indvars88.i
  br i1 %49, label %.lr.ph62.split.preheader.i, label %._crit_edge63.i

.lr.ph62.split.preheader.i:                       ; preds = %.lr.ph62.i
  %i.afw = load ptr, ptr %i.afg, align 8, !tbaa !102
  %i.afx = load i64, ptr %i.afh, align 8, !tbaa !57
  %i.afy = mul i64 %i.afx, %indvars.iv86.i
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afw, i64 %i.afy
  br label %.lr.ph62.split.i

._crit_edge63.i:                                  ; preds = %._crit_edge.i204, %.lr.ph62.i, %.lr.ph67.split.i
  %i.aga = phi i32 [ %i.aft, %.lr.ph67.split.i ], [ %i.aft, %.lr.ph62.i ], [ %i.agi, %._crit_edge.i204 ] ; 2 uses
  %i.agb = phi i32 [ %i.afu, %.lr.ph67.split.i ], [ %i.afu, %.lr.ph62.i ], [ %i.agi, %._crit_edge.i204 ] ; 3 uses
  %indvars.iv.next.i202 = add nuw nsw i64 %indvars.iv.i201, 1 ; 2 uses
  %exitcond.not.i203 = icmp eq i64 %indvars.iv.next.i202, %wide.trip.count33.i
  br i1 %exitcond.not.i203, label %._crit_edge68.loopexit.i, label %.lr.ph67.split.i, !llvm.loop !372

.lr.ph62.split.i:                                 ; preds = %._crit_edge.i204, %.lr.ph62.split.preheader.i
  %i.agc = phi i32 [ %i.aft, %.lr.ph62.split.preheader.i ], [ %i.agi, %._crit_edge.i204 ]
  %i.agd = phi i32 [ %i.afv, %.lr.ph62.split.preheader.i ], [ %i.agj, %._crit_edge.i204 ] ; 2 uses
  %indvars.iv83.i = phi i64 [ %indvars.iv81.i, %.lr.ph62.split.preheader.i ], [ %indvars.iv.next84.i, %._crit_edge.i204 ] ; 2 uses
  %.03959.i = phi ptr [ %i.afz, %.lr.ph62.split.preheader.i ], [ %.1.lcssa.i, %._crit_edge.i204 ] ; 2 uses
  %i.age = load ptr, ptr %i.afi, align 8, !tbaa !102
  %i.agf = load i64, ptr %i.afj, align 8, !tbaa !57
  %i.agg = mul i64 %i.agf, %indvars.iv83.i
  %i.agh = getelementptr inbounds nuw i8, ptr %i.age, i64 %i.agg
  %50 = icmp sgt i32 %i.agd, %indvars88.i
  br i1 %50, label %.lr.ph.i205, label %._crit_edge.i204

._crit_edge.loopexit.i206:                        ; preds = %.lr.ph.i205
  %.pre94.i = load i32, ptr %i.adv, align 8, !tbaa !100
  br label %._crit_edge.i204

._crit_edge.i204:                                 ; preds = %._crit_edge.loopexit.i206, %.lr.ph62.split.i
  %i.agi = phi i32 [ %i.agc, %.lr.ph62.split.i ], [ %.pre94.i, %._crit_edge.loopexit.i206 ] ; 4 uses
  %i.agj = phi i32 [ %i.agd, %.lr.ph62.split.i ], [ %i.agp, %._crit_edge.loopexit.i206 ]
  %.1.lcssa.i = phi ptr [ %.03959.i, %.lr.ph62.split.i ], [ %i.ago, %._crit_edge.loopexit.i206 ]
  %indvars.iv.next84.i = add nuw nsw i64 %indvars.iv83.i, %wide.trip.count33.i ; 2 uses
  %i.agk = trunc nuw i64 %indvars.iv.next84.i to i32
  %i.agl = icmp sgt i32 %i.agi, %i.agk
  br i1 %i.agl, label %.lr.ph62.split.i, label %._crit_edge63.i, !llvm.loop !373

.lr.ph.i205:                                      ; preds = %.lr.ph62.split.i, %.lr.ph.i205
  %indvars.iv78.i = phi i64 [ %indvars.iv.next79.i, %.lr.ph.i205 ], [ %indvars.iv.i201, %.lr.ph62.split.i ] ; 2 uses
  %.157.i = phi ptr [ %i.ago, %.lr.ph.i205 ], [ %.03959.i, %.lr.ph62.split.i ] ; 2 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agh, i64 %indvars.iv78.i
  %i.agn = load i8, ptr %i.agm, align 1, !tbaa !54
  %i.ago = getelementptr inbounds nuw i8, ptr %.157.i, i64 1 ; 2 uses
  store i8 %i.agn, ptr %.157.i, align 1, !tbaa !54
  %indvars.iv.next79.i = add nuw nsw i64 %indvars.iv78.i, %wide.trip.count33.i ; 2 uses
  %i.agp = load i32, ptr %i.ael, align 4, !tbaa !101 ; 2 uses
  %i.agq = trunc nuw i64 %indvars.iv.next79.i to i32
  %i.agr = icmp sgt i32 %i.agp, %i.agq
  br i1 %i.agr, label %.lr.ph.i205, label %._crit_edge.loopexit.i206, !llvm.loop !374

_ZN2cv7linemodL9linearizeERKNS_3MatERS1_i.exit:   ; preds = %._crit_edge68.i, %.noexc207
  %indvars.iv.next668 = add nuw nsw i64 %indvars.iv667, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next668, 8
  br i1 %exitcond.not, label %bb.dy, label %bb.dz, !llvm.loop !375

bb.ei:                                            ; preds = %bb.dy
  br i1 %i.adr, label %bb.ej, label %bb.en

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #28
  %i.ags = load ptr, ptr %i.hh, align 8, !tbaa !205
  %i.agt = load ptr, ptr %30, align 8, !tbaa !217
  %i.agu = ptrtoint ptr %i.ags to i64
  %i.agv = ptrtoint ptr %i.agt to i64
  %i.agw = sub i64 %i.agu, %i.agv
  %i.agx = lshr exact i64 %i.agw, 4
  %i.agy = trunc i64 %i.agx to i32
  %i.agz = mul i32 %i.kg, %i.agy
  %i.aha = trunc nuw nsw i64 %indvars.iv670 to i32
  %i.ahb = add i32 %i.agz, %i.aha
  %i.ahc = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv12_OutputArray9getMatRefEi(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.ahb)
          to label %bb.ek unwind label %bb.em

bb.ek:                                            ; preds = %bb.ej
  store i64 0, ptr %i.id, align 8
  store i32 33619968, ptr %46, align 8, !tbaa !114
  store ptr %i.ahc, ptr %i.ic, align 8, !tbaa !115
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %44, ptr noundef nonnull align 8 dereferenceable(24) %46)
          to label %bb.el unwind label %bb.em

bb.el:                                            ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #28
  br label %bb.en

.loopexit.split-lp381.loopexit.loopexit.split-lp: ; preds = %.noexc157, %.preheader.lr.ph.i.us.i, %_ZN2cv7linemodL13orUnaligned8uEPKhiPhiii.exit.i, %.noexc159
  %lpad.loopexit.split-lp1068 = landingpad { ptr, i32 }
          cleanup
  br label %.body154

.loopexit.split-lp381.loopexit.split-lp.loopexit: ; preds = %bb.eh
  %lpad.loopexit389 = landingpad { ptr, i32 }
          cleanup
  br label %.body154

.loopexit.split-lp381.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit.i, %_ZNK2cv8MatShapeclEv.exit74.7.i, %_ZNK2cv8MatShapeclEv.exit74.6.i, %_ZNK2cv8MatShapeclEv.exit74.5.i, %_ZNK2cv8MatShapeclEv.exit74.4.i, %_ZNK2cv8MatShapeclEv.exit74.3.i, %_ZNK2cv8MatShapeclEv.exit74.2.i, %_ZNK2cv8MatShapeclEv.exit74.1.i, %_ZNK2cv8MatShapeclEv.exit74.i, %_ZNK2cv8MatShapeclEv.exit.i172, %_ZNK2cv8MatShapeclEv.exit.i, %bb.br, %bb.dy
  %.sroa.0295.1.ph.ph.ph.ph = phi ptr [ %.sroa.0295.5, %_ZNK2cv8MatShapeclEv.exit.i172 ], [ %.sroa.0295.5, %_ZNK2cv8MatShapeclEv.exit74.7.i ], [ %.sroa.0295.5, %_ZNK2cv8MatShapeclEv.exit74.6.i ], [ %.sroa.0295.5, %_ZNK2cv8MatShapeclEv.exit74.5.i ], [ %.sroa.0295.5, %_ZNK2cv8MatShapeclEv.exit74.4.i ], [ %.sroa.0295.5, %_ZNK2cv8MatShapeclEv.exit74.3.i ], [ %.sroa.0295.5, %_ZNK2cv8MatShapeclEv.exit74.2.i ], [ %.sroa.0295.5, %_ZNK2cv8MatShapeclEv.exit74.1.i ], [ %.sroa.0295.5, %_ZNK2cv8MatShapeclEv.exit74.i ], [ %.sroa.0295.0529, %bb.br ], [ %.sroa.0295.0529, %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %.sroa.0295.0529, %_ZNK2cv8MatShapeclEv.exit.i ], [ %.sroa.0295.5, %bb.dy ]
  %.sroa.28.1.ph.ph.ph.ph = phi ptr [ %.sroa.28.5, %_ZNK2cv8MatShapeclEv.exit.i172 ], [ %.sroa.28.5, %_ZNK2cv8MatShapeclEv.exit74.7.i ], [ %.sroa.28.5, %_ZNK2cv8MatShapeclEv.exit74.6.i ], [ %.sroa.28.5, %_ZNK2cv8MatShapeclEv.exit74.5.i ], [ %.sroa.28.5, %_ZNK2cv8MatShapeclEv.exit74.4.i ], [ %.sroa.28.5, %_ZNK2cv8MatShapeclEv.exit74.3.i ], [ %.sroa.28.5, %_ZNK2cv8MatShapeclEv.exit74.2.i ], [ %.sroa.28.5, %_ZNK2cv8MatShapeclEv.exit74.1.i ], [ %.sroa.28.5, %_ZNK2cv8MatShapeclEv.exit74.i ], [ %.sroa.28.0530, %bb.br ], [ %.sroa.28.0530, %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %.sroa.28.0530, %_ZNK2cv8MatShapeclEv.exit.i ], [ %.sroa.28.5, %bb.dy ]
  %.sroa.35.1.ph.ph.ph.ph = phi ptr [ %.sroa.35.5, %_ZNK2cv8MatShapeclEv.exit.i172 ], [ %.sroa.35.5, %_ZNK2cv8MatShapeclEv.exit74.7.i ], [ %.sroa.35.5, %_ZNK2cv8MatShapeclEv.exit74.6.i ], [ %.sroa.35.5, %_ZNK2cv8MatShapeclEv.exit74.5.i ], [ %.sroa.35.5, %_ZNK2cv8MatShapeclEv.exit74.4.i ], [ %.sroa.35.5, %_ZNK2cv8MatShapeclEv.exit74.3.i ], [ %.sroa.35.5, %_ZNK2cv8MatShapeclEv.exit74.2.i ], [ %.sroa.35.5, %_ZNK2cv8MatShapeclEv.exit74.1.i ], [ %.sroa.35.5, %_ZNK2cv8MatShapeclEv.exit74.i ], [ %.sroa.35.0531, %bb.br ], [ %.sroa.35.0531, %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %.sroa.35.0531, %_ZNK2cv8MatShapeclEv.exit.i ], [ %.sroa.35.5, %bb.dy ]
  %lpad.loopexit397 = landingpad { ptr, i32 }
          cleanup
  br label %.body154

.loopexit.split-lp381.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cw, %bb.ck, %bb.bt
  %.sroa.0295.1.ph.ph.ph.ph394 = phi ptr [ %.sroa.0295.5, %bb.cw ], [ %.sroa.0295.0529, %bb.bt ], [ %.sroa.0295.5, %bb.ck ]
  %.sroa.28.1.ph.ph.ph.ph395 = phi ptr [ %.sroa.28.5, %bb.cw ], [ %.sroa.28.0530, %bb.bt ], [ %.sroa.28.5, %bb.ck ]
  %.sroa.35.1.ph.ph.ph.ph396 = phi ptr [ %.sroa.35.5, %bb.cw ], [ %.sroa.35.0531, %bb.bt ], [ %.sroa.35.5, %bb.ck ]
  %lpad.loopexit.split-lp398 = landingpad { ptr, i32 }
          cleanup
  br label %.body154

bb.em:                                            ; preds = %bb.ej, %bb.ek
  %i.ahd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #28
  br label %.body154

bb.en:                                            ; preds = %bb.el, %bb.ei
  %indvars.iv.next671 = add nuw nsw i64 %indvars.iv670, 1 ; 2 uses
  %i.ahe = load ptr, ptr %i.hh, align 8, !tbaa !205
  %i.ahf = load ptr, ptr %30, align 8, !tbaa !217 ; 2 uses
  %i.ahg = ptrtoint ptr %i.ahe to i64
  %i.ahh = ptrtoint ptr %i.ahf to i64
  %i.ahi = sub i64 %i.ahg, %i.ahh
  %i.ahj = shl i64 %i.ahi, 28
  %i.ahk = ashr i64 %i.ahj, 32
  %i.ahl = icmp slt i64 %indvars.iv.next671, %i.ahk
  br i1 %i.ahl, label %bb.br, label %._crit_edge535, !llvm.loop !376

bb.eo:                                            ; preds = %bb.bq, %bb.bp
  %i.ahm = phi i32 [ %i.kt, %bb.bp ], [ %i.kv, %bb.bq ]
  %i.ahn = icmp eq i32 %i.kj, 2
  %i.aho = load i32, ptr %i.hj, align 4
  %i.ahp = icmp sgt i32 %i.kj, -1
  %i.ahq = zext i1 %i.ahp to i32
  %i.ahr = select i1 %i.ahn, i32 %i.aho, i32 %i.ahq
  %.sroa.2.0.insert.ext.i145 = zext i32 %i.ahr to i64
  %.sroa.2.0.insert.shift.i146 = shl nuw i64 %.sroa.2.0.insert.ext.i145, 32
  %.sroa.0.0.insert.ext.i147 = zext i32 %i.ahm to i64
  %.sroa.0.0.insert.insert.i148 = or disjoint i64 %.sroa.2.0.insert.shift.i146, %.sroa.0.0.insert.ext.i147 ; 2 uses
  %i.ahs = load ptr, ptr %i.ie, align 8, !tbaa !391 ; 6 uses
  %i.aht = load ptr, ptr %i.if, align 8, !tbaa !392
  %.not.i.i210 = icmp eq ptr %i.ahs, %i.aht
  br i1 %.not.i.i210, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  store i64 %.sroa.0.0.insert.insert.i148, ptr %i.ahs, align 4, !tbaa !55
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahs, i64 8
  store ptr %i.ahu, ptr %i.ie, align 8, !tbaa !391
  br label %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backEOS2_.exit

bb.eq:                                            ; preds = %bb.eo
  %i.ahv = load ptr, ptr %43, align 8, !tbaa !222 ; 7 uses
  %i.ahw = ptrtoint ptr %i.ahs to i64             ; 2 uses
  %i.ahx = ptrtoint ptr %i.ahv to i64             ; 3 uses
  %i.ahy = sub i64 %i.ahw, %i.ahx                 ; 4 uses
  %i.ahz = icmp eq i64 %i.ahy, 9223372036854775800
  br i1 %i.ahz, label %bb.er, label %_ZNKSt6vectorIN2cv5Size_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.er:                                            ; preds = %bb.eq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #29
          to label %.noexc212 unwind label %.loopexit.split-lp411.loopexit.split-lp

.noexc212:                                        ; preds = %bb.er
  unreachable

_ZNKSt6vectorIN2cv5Size_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.eq
  %i.aia = ashr exact i64 %i.ahy, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aia, i64 1)
  %i.aib = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aia ; 2 uses
  %i.aic = icmp ult i64 %i.aib, %i.aia
  %i.aid = call i64 @llvm.umin.i64(i64 %i.aib, i64 1152921504606846975)
  %i.aie = select i1 %i.aic, i64 1152921504606846975, i64 %i.aid ; 3 uses
  %.not.i.i.i.i211 = icmp ne i64 %i.aie, 0
  call void @llvm.assume(i1 %.not.i.i.i.i211)
  %i.aif = shl nuw nsw i64 %i.aie, 3
  %i.aig = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aif) #31
          to label %.noexc213 unwind label %.loopexit.split-lp411.loopexit.split-lp ; 8 uses

.noexc213:                                        ; preds = %_ZNKSt6vectorIN2cv5Size_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aig, i64 %i.ahy
  store i64 %.sroa.0.0.insert.insert.i148, ptr %i.aih, align 4, !tbaa !55
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ahv, %i.ahs
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc213
  %i.aii = ptrtoaddr ptr %i.aig to i64
  %i.aij = add i64 %i.ahw, -8
  %i.aik = sub i64 %i.aij, %i.ahx                 ; 2 uses
  %i.ail = lshr i64 %i.aik, 3
  %i.aim = add nuw nsw i64 %i.ail, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.aik, 24
  %i.ain = sub i64 %i.ahx, %i.aii
  %diff.check = icmp ugt i64 %i.ain, -32
  %or.cond1058 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond1058, label %.lr.ph.i.i.i.i.i.i.preheader1072, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.aim, 4611686018427387900    ; 3 uses
  %i.aio = shl i64 %n.vec, 3                      ; 2 uses
  %i.aip = getelementptr i8, ptr %i.aig, i64 %i.aio ; 2 uses
  %i.aiq = getelementptr i8, ptr %i.ahv, i64 %i.aio
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.air = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aig, i64 %i.air ; 2 uses
  %next.gep1028 = getelementptr i8, ptr %i.ahv, i64 %i.air ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !393)
  call void @llvm.experimental.noalias.scope.decl(metadata !394)
  %i.ais = getelementptr i8, ptr %next.gep1028, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1028, align 4, !tbaa !55, !alias.scope !394
  %wide.load1029 = load <2 x i64>, ptr %i.ais, align 4, !tbaa !55, !alias.scope !394
  %i.ait = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !tbaa !55, !alias.scope !393
  store <2 x i64> %wide.load1029, ptr %i.ait, align 4, !tbaa !55, !alias.scope !393
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aiu = icmp eq i64 %index.next, %n.vec
  br i1 %i.aiu, label %middle.block, label %vector.body, !llvm.loop !380

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aim, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader1072
end_hunk_0
