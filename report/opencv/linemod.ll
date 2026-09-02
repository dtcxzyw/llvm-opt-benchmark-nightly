Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/linemod?download=true
inline.NumInlined: 3000
inline.NumDeleted: 1203
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNK2cv7linemod8Detector5matchERKSt6vectorINS_3MatESaIS3_EEfRS2_INS0_5MatchESaIS8_EERKS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISH_EERKNS_12_OutputArrayES7_:bb.a
  %i.acr = load i32, ptr %i.ht, align 8, !tbaa !100
  %i.acs = load i32, ptr %i.hu, align 4, !tbaa !101
  %i.act = mul nsw i32 %i.acs, %i.acr
  %i.acu = sext i32 %i.act to i64
  %i.acv = icmp slt i64 %indvars.iv.next97.7.i, %i.acu
  br i1 %i.acv, label %.lr.ph87.7.i, label %.loopexit396, !llvm.loop !370

.lr.ph87.i:                                       ; preds = %.preheader.i, %.lr.ph87.i
  %indvars.iv96.i = phi i64 [ %indvars.iv.next97.i, %.lr.ph87.i ], [ 0, %.preheader.i ] ; 4 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.wf, i64 %indvars.iv96.i
  %i.acx = load i8, ptr %i.acw, align 1, !tbaa !54
  %i.acy = zext i8 %i.acx to i64
  %i.acz = getelementptr inbounds nuw i8, ptr @_ZN2cv7linemodL14SIMILARITY_LUTE, i64 %i.acy
  %i.ada = getelementptr inbounds nuw i8, ptr %i.wg, i64 %indvars.iv96.i
  %i.adb = load i8, ptr %i.ada, align 1, !tbaa !54
  %i.adc = zext i8 %i.adb to i64
  %i.add = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cv7linemodL14SIMILARITY_LUTE, i64 16), i64 %i.adc
  %i.ade = load i8, ptr %i.acz, align 1, !tbaa !54
  %i.adf = load i8, ptr %i.add, align 1, !tbaa !54
  %i.adg = call i8 @llvm.umax.i8(i8 %i.ade, i8 %i.adf)
  %i.adh = getelementptr inbounds nuw i8, ptr %i.we, i64 %indvars.iv96.i
  store i8 %i.adg, ptr %i.adh, align 1, !tbaa !54
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 1 ; 2 uses
  %i.adi = load i32, ptr %i.ht, align 8, !tbaa !100
  %i.adj = load i32, ptr %i.hu, align 4, !tbaa !101
  %i.adk = mul nsw i32 %i.adj, %i.adi             ; 2 uses
  %i.adl = sext i32 %i.adk to i64
  %i.adm = icmp slt i64 %indvars.iv.next97.i, %i.adl
  br i1 %i.adm, label %.lr.ph87.i, label %._crit_edge88.i, !llvm.loop !370

.loopexit396:                                     ; preds = %.lr.ph87.7.i, %._crit_edge88.6.i, %._crit_edge88.5.i, %._crit_edge88.4.i, %._crit_edge88.3.i, %._crit_edge88.2.i, %._crit_edge88.1.i, %._crit_edge88.i, %.preheader.i
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  %i.adn = load ptr, ptr %i.iz, align 8, !tbaa !208
  %i.ado = getelementptr inbounds nuw [24 x i8], ptr %i.adn, i64 %indvars.iv684
  br label %bb.ed

bb.ec:                                            ; preds = %_ZN2cv7linemodL9linearizeERKNS_3MatERS1_i.exit
  %i.adp = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.en unwind label %bb.er

.loopexit387:                                     ; preds = %.preheader.lr.ph.i.us.i, %.noexc162
  %lpad.loopexit389 = landingpad { ptr, i32 }
          cleanup
  br label %.body159

.loopexit.split-lp388.loopexit:                   ; preds = %.noexc164, %_ZN2cv7linemodL13orUnaligned8uEPKhiPhiii.exit.i
  %lpad.loopexit392 = landingpad { ptr, i32 }
          cleanup
  br label %.body159

.loopexit.split-lp388.loopexit.split-lp.loopexit: ; preds = %bb.bv, %_ZNK2cv8MatShapeclEv.exit.i, %_ZNK2cv8MatShapeclEv.exit.i179, %_ZNK2cv8MatShapeclEv.exit78.i, %_ZNK2cv8MatShapeclEv.exit78.1.i, %_ZNK2cv8MatShapeclEv.exit78.2.i, %_ZNK2cv8MatShapeclEv.exit78.3.i, %_ZNK2cv8MatShapeclEv.exit78.4.i, %_ZNK2cv8MatShapeclEv.exit78.5.i, %_ZNK2cv8MatShapeclEv.exit78.6.i, %_ZNK2cv8MatShapeclEv.exit78.7.i, %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.sroa.0303.1.ph.ph.ph = phi ptr [ %.sroa.0303.5, %_ZNK2cv8MatShapeclEv.exit.i179 ], [ %.sroa.0303.0541, %_ZNK2cv8MatShapeclEv.exit.i ], [ %.sroa.0303.0541, %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %.sroa.0303.0541, %bb.bv ], [ %.sroa.0303.5, %_ZNK2cv8MatShapeclEv.exit78.i ], [ %.sroa.0303.5, %_ZNK2cv8MatShapeclEv.exit78.1.i ], [ %.sroa.0303.5, %_ZNK2cv8MatShapeclEv.exit78.2.i ], [ %.sroa.0303.5, %_ZNK2cv8MatShapeclEv.exit78.3.i ], [ %.sroa.0303.5, %_ZNK2cv8MatShapeclEv.exit78.4.i ], [ %.sroa.0303.5, %_ZNK2cv8MatShapeclEv.exit78.5.i ], [ %.sroa.0303.5, %_ZNK2cv8MatShapeclEv.exit78.6.i ], [ %.sroa.0303.5, %_ZNK2cv8MatShapeclEv.exit78.7.i ]
  %.sroa.28.1.ph.ph.ph = phi ptr [ %.sroa.28.5, %_ZNK2cv8MatShapeclEv.exit.i179 ], [ %.sroa.28.0542, %_ZNK2cv8MatShapeclEv.exit.i ], [ %.sroa.28.0542, %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %.sroa.28.0542, %bb.bv ], [ %.sroa.28.5, %_ZNK2cv8MatShapeclEv.exit78.i ], [ %.sroa.28.5, %_ZNK2cv8MatShapeclEv.exit78.1.i ], [ %.sroa.28.5, %_ZNK2cv8MatShapeclEv.exit78.2.i ], [ %.sroa.28.5, %_ZNK2cv8MatShapeclEv.exit78.3.i ], [ %.sroa.28.5, %_ZNK2cv8MatShapeclEv.exit78.4.i ], [ %.sroa.28.5, %_ZNK2cv8MatShapeclEv.exit78.5.i ], [ %.sroa.28.5, %_ZNK2cv8MatShapeclEv.exit78.6.i ], [ %.sroa.28.5, %_ZNK2cv8MatShapeclEv.exit78.7.i ]
  %.sroa.35.1.ph.ph.ph = phi ptr [ %.sroa.35.5, %_ZNK2cv8MatShapeclEv.exit.i179 ], [ %.sroa.35.0543, %_ZNK2cv8MatShapeclEv.exit.i ], [ %.sroa.35.0543, %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %.sroa.35.0543, %bb.bv ], [ %.sroa.35.5, %_ZNK2cv8MatShapeclEv.exit78.i ], [ %.sroa.35.5, %_ZNK2cv8MatShapeclEv.exit78.1.i ], [ %.sroa.35.5, %_ZNK2cv8MatShapeclEv.exit78.2.i ], [ %.sroa.35.5, %_ZNK2cv8MatShapeclEv.exit78.3.i ], [ %.sroa.35.5, %_ZNK2cv8MatShapeclEv.exit78.4.i ], [ %.sroa.35.5, %_ZNK2cv8MatShapeclEv.exit78.5.i ], [ %.sroa.35.5, %_ZNK2cv8MatShapeclEv.exit78.6.i ], [ %.sroa.35.5, %_ZNK2cv8MatShapeclEv.exit78.7.i ]
  %lpad.loopexit401 = landingpad { ptr, i32 }
          cleanup
  br label %.body159

.loopexit.split-lp388.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bx, %bb.co, %bb.da
  %.sroa.0303.1.ph.ph.ph398 = phi ptr [ %.sroa.0303.0541, %bb.bx ], [ %.sroa.0303.5, %bb.da ], [ %.sroa.0303.5, %bb.co ]
  %.sroa.28.1.ph.ph.ph399 = phi ptr [ %.sroa.28.0542, %bb.bx ], [ %.sroa.28.5, %bb.da ], [ %.sroa.28.5, %bb.co ]
  %.sroa.35.1.ph.ph.ph400 = phi ptr [ %.sroa.35.0543, %bb.bx ], [ %.sroa.35.5, %bb.da ], [ %.sroa.35.5, %bb.co ]
  %lpad.loopexit.split-lp402 = landingpad { ptr, i32 }
          cleanup
  br label %.body159

bb.ed:                                            ; preds = %.loopexit396, %_ZN2cv7linemodL9linearizeERKNS_3MatERS1_i.exit
  %indvars.iv681 = phi i64 [ 0, %.loopexit396 ], [ %indvars.iv.next682, %_ZN2cv7linemodL9linearizeERKNS_3MatERS1_i.exit ] ; 3 uses
  %i.adq = getelementptr inbounds nuw [208 x i8], ptr %.sroa.0303.5, i64 %indvars.iv681 ; 4 uses
  %i.adr = load ptr, ptr %i.ado, align 8, !tbaa !199
  %i.ads = getelementptr inbounds nuw [208 x i8], ptr %i.adr, i64 %indvars.iv681 ; 3 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adq, i64 8 ; 3 uses
  %i.adu = load i32, ptr %i.adt, align 8, !tbaa !100 ; 2 uses
  %i.adv = srem i32 %i.adu, %i.ix
  %i.adw = sdiv i32 %i.adu, %i.ix
  %i.adx = icmp eq i32 %i.adv, 0
  br i1 %i.adx, label %bb.eh, label %.noexc.i286

.noexc.i286:                                      ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.ady = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.ady, ptr %7, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 26, ptr %i.a, align 8, !tbaa !57
  %i.adz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc287 unwind label %bb.ef ; 2 uses

.noexc287:                                        ; preds = %.noexc.i286
  store ptr %i.adz, ptr %7, align 8, !tbaa !53
  %i.aea = load i64, ptr %i.a, align 8, !tbaa !57 ; 3 uses
  store i64 %i.aea, ptr %i.ady, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.adz, ptr noundef nonnull align 1 dereferenceable(26) @.str.45, i64 26, i1 false)
  %i.aeb = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.aea, ptr %i.aeb, align 8, !tbaa !58
  %i.aec = load ptr, ptr %7, align 8, !tbaa !53
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 %i.aea
  store i8 0, ptr %i.aed, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv7linemodL9linearizeERKNS_3MatERS1_i, ptr noundef nonnull @.str.11, i32 noundef 1095) #29
          to label %bb.ee unwind label %bb.eg

bb.ee:                                            ; preds = %.noexc287
  unreachable

bb.ef:                                            ; preds = %.noexc.i286
  %i.aee = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i203

bb.eg:                                            ; preds = %.noexc287
  %i.aef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aeg = load ptr, ptr %7, align 8, !tbaa !53   ; 2 uses
  %i.aeh = icmp eq ptr %i.aeg, %i.ady
  br i1 %i.aeh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i203, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i205: ; preds = %bb.eg
  %i.aei = load i64, ptr %i.ady, align 8, !tbaa !54
  %i.aej = add i64 %i.aei, 1
  call void @_ZdlPvm(ptr noundef %i.aeg, i64 noundef %i.aej) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i203

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i203: ; preds = %bb.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i205, %bb.ef
  %.pn.i204 = phi { ptr, i32 } [ %i.aee, %bb.ef ], [ %i.aef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i205 ], [ %i.aef, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %.body159

bb.eh:                                            ; preds = %bb.ed
  %i.aek = getelementptr inbounds nuw i8, ptr %i.adq, i64 12 ; 3 uses
  %i.ael = load i32, ptr %i.aek, align 4, !tbaa !101 ; 2 uses
  %i.aem = srem i32 %i.ael, %i.ix
  %i.aen = sdiv i32 %i.ael, %i.ix
  %i.aeo = icmp eq i32 %i.aem, 0
  br i1 %i.aeo, label %bb.el, label %.noexc.i283

.noexc.i283:                                      ; preds = %bb.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.aep = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.aep, ptr %8, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 26, ptr %i.b, align 8, !tbaa !57
  %i.aeq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc284 unwind label %bb.ej ; 2 uses

.noexc284:                                        ; preds = %.noexc.i283
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
          to label %bb.ei unwind label %bb.ek

bb.ei:                                            ; preds = %.noexc284
  unreachable

bb.ej:                                            ; preds = %.noexc.i283
  %i.aev = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i

bb.ek:                                            ; preds = %.noexc284
  %i.aew = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aex = load ptr, ptr %8, align 8, !tbaa !53   ; 2 uses
  %i.aey = icmp eq ptr %i.aex, %i.aep
  br i1 %i.aey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i: ; preds = %bb.ek
  %i.aez = load i64, ptr %i.aep, align 8, !tbaa !54
  %i.afa = add i64 %i.aez, 1
  call void @_ZdlPvm(ptr noundef %i.aex, i64 noundef %i.afa) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i: ; preds = %bb.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i, %bb.ej
  %.pn51.i = phi { ptr, i32 } [ %i.aev, %bb.ej ], [ %i.aew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.i ], [ %i.aew, %bb.ek ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %.body159

bb.el:                                            ; preds = %bb.eh
  %i.afb = mul nsw i32 %i.adw, %i.aen
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.ads, i32 noundef %i.kf, i32 noundef %i.afb, i32 noundef 0)
          to label %.noexc215 unwind label %bb.em

.noexc215:                                        ; preds = %bb.el
  br i1 %i.ke, label %.preheader.lr.ph.i, label %_ZN2cv7linemodL9linearizeERKNS_3MatERS1_i.exit

.preheader.lr.ph.i:                               ; preds = %.noexc215
  %i.afc = getelementptr inbounds nuw i8, ptr %i.ads, i64 24
  %i.afd = getelementptr inbounds nuw i8, ptr %i.ads, i64 128
  %i.afe = getelementptr inbounds nuw i8, ptr %i.adq, i64 24
  %i.aff = getelementptr inbounds nuw i8, ptr %i.adq, i64 128
  %.pre.i207 = load i32, ptr %i.adt, align 8, !tbaa !100 ; 3 uses
  br label %.preheader.i208

.preheader.i208:                                  ; preds = %._crit_edge68.i, %.preheader.lr.ph.i
  %i.afg = phi i32 [ %.pre.i207, %.preheader.lr.ph.i ], [ %i.afn, %._crit_edge68.i ] ; 2 uses
  %i.afh = phi i32 [ %.pre.i207, %.preheader.lr.ph.i ], [ %i.afo, %._crit_edge68.i ] ; 2 uses
  %i.afi = phi i32 [ %.pre.i207, %.preheader.lr.ph.i ], [ %i.afp, %._crit_edge68.i ] ; 2 uses
  %indvars.iv81.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next82.i, %._crit_edge68.i ] ; 3 uses
  %.04270.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.us-phi.i, %._crit_edge68.i ] ; 2 uses
  %indvars91.i = trunc i64 %indvars.iv81.i to i32 ; 2 uses
  %i.afj = icmp sgt i32 %i.afi, %indvars91.i
  br i1 %i.afj, label %.lr.ph67.split.preheader.i, label %.lr.ph67.split.us.preheader.i

.lr.ph67.split.us.preheader.i:                    ; preds = %.preheader.i208
  %i.afk = add i32 %.04270.i, %i.ix
  br label %._crit_edge68.i

.lr.ph67.split.preheader.i:                       ; preds = %.preheader.i208
  %i.afl = sext i32 %.04270.i to i64
  br label %.lr.ph67.split.i

._crit_edge68.loopexit.i:                         ; preds = %._crit_edge63.i
  %i.afm = trunc nsw i64 %indvars.iv.next87.i to i32
  br label %._crit_edge68.i

._crit_edge68.i:                                  ; preds = %._crit_edge68.loopexit.i, %.lr.ph67.split.us.preheader.i
  %i.afn = phi i32 [ %i.afz, %._crit_edge68.loopexit.i ], [ %i.afg, %.lr.ph67.split.us.preheader.i ]
  %i.afo = phi i32 [ %i.aga, %._crit_edge68.loopexit.i ], [ %i.afh, %.lr.ph67.split.us.preheader.i ]
  %i.afp = phi i32 [ %i.aga, %._crit_edge68.loopexit.i ], [ %i.afi, %.lr.ph67.split.us.preheader.i ]
  %.us-phi.i = phi i32 [ %i.afm, %._crit_edge68.loopexit.i ], [ %i.afk, %.lr.ph67.split.us.preheader.i ]
  %indvars.iv.next82.i = add nuw nsw i64 %indvars.iv81.i, 1 ; 2 uses
  %exitcond93.not.i = icmp eq i64 %indvars.iv.next82.i, %wide.trip.count34.i
  br i1 %exitcond93.not.i, label %_ZN2cv7linemodL9linearizeERKNS_3MatERS1_i.exit, label %.preheader.i208, !llvm.loop !371

.lr.ph67.split.i:                                 ; preds = %._crit_edge63.i, %.lr.ph67.split.preheader.i
  %i.afq = phi i32 [ %i.afg, %.lr.ph67.split.preheader.i ], [ %i.afz, %._crit_edge63.i ] ; 3 uses
  %i.afr = phi i32 [ %i.afh, %.lr.ph67.split.preheader.i ], [ %i.aga, %._crit_edge63.i ] ; 3 uses
  %indvars.iv86.i = phi i64 [ %i.afl, %.lr.ph67.split.preheader.i ], [ %indvars.iv.next87.i, %._crit_edge63.i ] ; 2 uses
  %indvars.iv.i209 = phi i64 [ 0, %.lr.ph67.split.preheader.i ], [ %indvars.iv.next.i210, %._crit_edge63.i ] ; 3 uses
  %indvars88.i = trunc i64 %indvars.iv.i209 to i32 ; 2 uses
  %indvars.iv.next87.i = add nsw i64 %indvars.iv86.i, 1 ; 2 uses
  %i.afs = icmp sgt i32 %i.afr, %indvars91.i
  br i1 %i.afs, label %.lr.ph62.i, label %._crit_edge63.i

.lr.ph62.i:                                       ; preds = %.lr.ph67.split.i
  %i.aft = load i32, ptr %i.aek, align 4, !tbaa !101 ; 2 uses
  %i.afu = icmp sgt i32 %i.aft, %indvars88.i
  br i1 %i.afu, label %.lr.ph62.split.preheader.i, label %._crit_edge63.i

.lr.ph62.split.preheader.i:                       ; preds = %.lr.ph62.i
  %i.afv = load ptr, ptr %i.afc, align 8, !tbaa !102
  %i.afw = load i64, ptr %i.afd, align 8, !tbaa !57
  %i.afx = mul i64 %i.afw, %indvars.iv86.i
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afv, i64 %i.afx
  br label %.lr.ph62.split.i

._crit_edge63.i:                                  ; preds = %._crit_edge.i212, %.lr.ph62.i, %.lr.ph67.split.i
  %i.afz = phi i32 [ %i.afq, %.lr.ph67.split.i ], [ %i.afq, %.lr.ph62.i ], [ %i.agi, %._crit_edge.i212 ] ; 2 uses
  %i.aga = phi i32 [ %i.afr, %.lr.ph67.split.i ], [ %i.afr, %.lr.ph62.i ], [ %i.agi, %._crit_edge.i212 ] ; 3 uses
  %indvars.iv.next.i210 = add nuw nsw i64 %indvars.iv.i209, 1 ; 2 uses
  %exitcond.not.i211 = icmp eq i64 %indvars.iv.next.i210, %wide.trip.count34.i
  br i1 %exitcond.not.i211, label %._crit_edge68.loopexit.i, label %.lr.ph67.split.i, !llvm.loop !372

.lr.ph62.split.i:                                 ; preds = %._crit_edge.i212, %.lr.ph62.split.preheader.i
  %i.agb = phi i32 [ %i.afq, %.lr.ph62.split.preheader.i ], [ %i.agi, %._crit_edge.i212 ]
  %i.agc = phi i32 [ %i.aft, %.lr.ph62.split.preheader.i ], [ %i.agj, %._crit_edge.i212 ] ; 2 uses
  %indvars.iv83.i = phi i64 [ %indvars.iv81.i, %.lr.ph62.split.preheader.i ], [ %indvars.iv.next84.i, %._crit_edge.i212 ] ; 2 uses
  %.03959.i = phi ptr [ %i.afy, %.lr.ph62.split.preheader.i ], [ %.1.lcssa.i, %._crit_edge.i212 ] ; 2 uses
  %i.agd = load ptr, ptr %i.afe, align 8, !tbaa !102
  %i.age = load i64, ptr %i.aff, align 8, !tbaa !57
  %i.agf = mul i64 %i.age, %indvars.iv83.i
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agd, i64 %i.agf
  %i.agh = icmp sgt i32 %i.agc, %indvars88.i
  br i1 %i.agh, label %.lr.ph.i213, label %._crit_edge.i212

._crit_edge.loopexit.i214:                        ; preds = %.lr.ph.i213
  %.pre94.i = load i32, ptr %i.adt, align 8, !tbaa !100
  br label %._crit_edge.i212

._crit_edge.i212:                                 ; preds = %._crit_edge.loopexit.i214, %.lr.ph62.split.i
  %i.agi = phi i32 [ %i.agb, %.lr.ph62.split.i ], [ %.pre94.i, %._crit_edge.loopexit.i214 ] ; 4 uses
  %i.agj = phi i32 [ %i.agc, %.lr.ph62.split.i ], [ %i.agp, %._crit_edge.loopexit.i214 ]
  %.1.lcssa.i = phi ptr [ %.03959.i, %.lr.ph62.split.i ], [ %i.ago, %._crit_edge.loopexit.i214 ]
  %indvars.iv.next84.i = add nuw nsw i64 %indvars.iv83.i, %wide.trip.count34.i ; 2 uses
  %i.agk = trunc nuw i64 %indvars.iv.next84.i to i32
  %i.agl = icmp sgt i32 %i.agi, %i.agk
  br i1 %i.agl, label %.lr.ph62.split.i, label %._crit_edge63.i, !llvm.loop !373

.lr.ph.i213:                                      ; preds = %.lr.ph62.split.i, %.lr.ph.i213
  %indvars.iv78.i = phi i64 [ %indvars.iv.next79.i, %.lr.ph.i213 ], [ %indvars.iv.i209, %.lr.ph62.split.i ] ; 2 uses
  %.157.i = phi ptr [ %i.ago, %.lr.ph.i213 ], [ %.03959.i, %.lr.ph62.split.i ] ; 2 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agg, i64 %indvars.iv78.i
  %i.agn = load i8, ptr %i.agm, align 1, !tbaa !54
  %i.ago = getelementptr inbounds nuw i8, ptr %.157.i, i64 1 ; 2 uses
  store i8 %i.agn, ptr %.157.i, align 1, !tbaa !54
  %indvars.iv.next79.i = add nuw nsw i64 %indvars.iv78.i, %wide.trip.count34.i ; 2 uses
  %i.agp = load i32, ptr %i.aek, align 4, !tbaa !101 ; 2 uses
  %i.agq = trunc nuw i64 %indvars.iv.next79.i to i32
  %i.agr = icmp sgt i32 %i.agp, %i.agq
  br i1 %i.agr, label %.lr.ph.i213, label %._crit_edge.loopexit.i214, !llvm.loop !374

_ZN2cv7linemodL9linearizeERKNS_3MatERS1_i.exit:   ; preds = %._crit_edge68.i, %.noexc215
  %indvars.iv.next682 = add nuw nsw i64 %indvars.iv681, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next682, 8
  br i1 %exitcond.not, label %bb.ec, label %bb.ed, !llvm.loop !375

bb.em:                                            ; preds = %bb.el
  %i.ags = landingpad { ptr, i32 }
          cleanup
  br label %.body159

bb.en:                                            ; preds = %bb.ec
  br i1 %i.adp, label %bb.eo, label %bb.ev

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #28
  %i.agt = load ptr, ptr %i.hh, align 8, !tbaa !204
  %i.agu = load ptr, ptr %30, align 8, !tbaa !216
  %i.agv = ptrtoint ptr %i.agt to i64
  %i.agw = ptrtoint ptr %i.agu to i64
  %i.agx = sub i64 %i.agv, %i.agw
  %i.agy = lshr exact i64 %i.agx, 4
  %i.agz = trunc i64 %i.agy to i32
  %i.aha = mul i32 %i.kg, %i.agz
  %i.ahb = trunc nuw nsw i64 %indvars.iv684 to i32
  %i.ahc = add i32 %i.aha, %i.ahb
  %i.ahd = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZNK2cv12_OutputArray9getMatRefEi(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.ahc)
          to label %bb.ep unwind label %bb.es

bb.ep:                                            ; preds = %bb.eo
  store i64 0, ptr %i.id, align 8
  store i32 33619968, ptr %46, align 8, !tbaa !113
  store ptr %i.ahd, ptr %i.ic, align 8, !tbaa !114
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %44, ptr noundef nonnull align 8 dereferenceable(24) %46)
          to label %bb.eq unwind label %bb.et

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #28
  br label %bb.ev

bb.er:                                            ; preds = %bb.ec
  %i.ahe = landingpad { ptr, i32 }
          cleanup
  br label %.body159

bb.es:                                            ; preds = %bb.eo
  %i.ahf = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.et:                                            ; preds = %bb.ep
  %i.ahg = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %.pn89 = phi { ptr, i32 } [ %i.ahg, %bb.et ], [ %i.ahf, %bb.es ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #28
  br label %.body159

bb.ev:                                            ; preds = %bb.eq, %bb.en
  %indvars.iv.next685 = add nuw nsw i64 %indvars.iv684, 1 ; 2 uses
  %i.ahh = load ptr, ptr %i.hh, align 8, !tbaa !204
  %i.ahi = load ptr, ptr %30, align 8, !tbaa !216 ; 2 uses
  %i.ahj = ptrtoint ptr %i.ahh to i64
  %i.ahk = ptrtoint ptr %i.ahi to i64
  %i.ahl = sub i64 %i.ahj, %i.ahk
  %sext806 = shl i64 %i.ahl, 28
  %i.ahm = ashr i64 %sext806, 32
  %i.ahn = icmp slt i64 %indvars.iv.next685, %i.ahm
  br i1 %i.ahn, label %bb.bv, label %._crit_edge547, !llvm.loop !376

bb.ew:                                            ; preds = %bb.bt, %bb.bu
  %i.aho = phi i32 [ %i.ku, %bb.bu ], [ %i.kt, %bb.bt ]
  %i.ahp = phi i32 [ %i.kw, %bb.bu ], [ %.val, %bb.bt ]
  %.sroa.2.0.insert.ext.i148 = zext i32 %i.ahp to i64
  %.sroa.2.0.insert.shift.i149 = shl nuw i64 %.sroa.2.0.insert.ext.i148, 32
  %.sroa.0.0.insert.ext.i150 = zext i32 %i.aho to i64
  %.sroa.0.0.insert.insert.i151 = or disjoint i64 %.sroa.2.0.insert.shift.i149, %.sroa.0.0.insert.ext.i150 ; 2 uses
  %i.ahq = load ptr, ptr %i.ie, align 8, !tbaa !391 ; 6 uses
  %i.ahr = load ptr, ptr %i.if, align 8, !tbaa !392
  %.not.i.i218 = icmp eq ptr %i.ahq, %i.ahr
  br i1 %.not.i.i218, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  store i64 %.sroa.0.0.insert.insert.i151, ptr %i.ahq, align 4
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahq, i64 8
  store ptr %i.ahs, ptr %i.ie, align 8, !tbaa !391
  br label %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE9push_backEOS2_.exit

bb.ey:                                            ; preds = %bb.ew
  %i.aht = load ptr, ptr %43, align 8, !tbaa !221 ; 7 uses
  %i.ahu = ptrtoint ptr %i.ahq to i64             ; 2 uses
  %i.ahv = ptrtoint ptr %i.aht to i64             ; 3 uses
  %i.ahw = sub i64 %i.ahu, %i.ahv                 ; 4 uses
  %i.ahx = icmp eq i64 %i.ahw, 9223372036854775800
  br i1 %i.ahx, label %bb.ez, label %_ZNKSt6vectorIN2cv5Size_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ez:                                            ; preds = %bb.ey
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #29
          to label %.noexc220 unwind label %.loopexit.split-lp412

.noexc220:                                        ; preds = %bb.ez
  unreachable

_ZNKSt6vectorIN2cv5Size_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ey
  %i.ahy = ashr exact i64 %i.ahw, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ahy, i64 1)
  %i.ahz = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ahy ; 2 uses
  %i.aia = icmp ult i64 %i.ahz, %i.ahy
  %i.aib = call i64 @llvm.umin.i64(i64 %i.ahz, i64 1152921504606846975)
  %i.aic = select i1 %i.aia, i64 1152921504606846975, i64 %i.aib ; 3 uses
  %.not.i.i.i.i219 = icmp ne i64 %i.aic, 0
  call void @llvm.assume(i1 %.not.i.i.i.i219)
  %i.aid = shl nuw nsw i64 %i.aic, 3
  %i.aie = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aid) #31
          to label %.noexc221 unwind label %.loopexit411 ; 8 uses

.noexc221:                                        ; preds = %_ZNKSt6vectorIN2cv5Size_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 %i.ahw
  store i64 %.sroa.0.0.insert.insert.i151, ptr %i.aif, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.aht, %i.ahq
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc221
  %i.aig = ptrtoaddr ptr %i.aie to i64
  %i.aih = add i64 %i.ahu, -8
  %i.aii = sub i64 %i.aih, %i.ahv                 ; 2 uses
  %i.aij = lshr i64 %i.aii, 3
  %i.aik = add nuw nsw i64 %i.aij, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.aii, 24
  %i.ail = sub i64 %i.ahv, %i.aig
  %diff.check = icmp ugt i64 %i.ail, -32
  %or.cond1067 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond1067, label %.lr.ph.i.i.i.i.i.i.preheader1071, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.aik, 4611686018427387900    ; 3 uses
  %i.aim = shl i64 %n.vec, 3                      ; 2 uses
  %i.ain = getelementptr i8, ptr %i.aie, i64 %i.aim ; 2 uses
  %i.aio = getelementptr i8, ptr %i.aht, i64 %i.aim
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aip = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aie, i64 %i.aip ; 2 uses
  %next.gep1040 = getelementptr i8, ptr %i.aht, i64 %i.aip ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !393)
  call void @llvm.experimental.noalias.scope.decl(metadata !394)
  %i.aiq = getelementptr i8, ptr %next.gep1040, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1040, align 4, !alias.scope !394, !noalias !393
  %wide.load1041 = load <2 x i64>, ptr %i.aiq, align 4, !alias.scope !394, !noalias !393
  %i.air = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !393, !noalias !394
  store <2 x i64> %wide.load1041, ptr %i.air, align 4, !alias.scope !393, !noalias !394
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ais = icmp eq i64 %index.next, %n.vec
  br i1 %i.ais, label %middle.block, label %vector.body, !llvm.loop !380

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aik, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader1071

.lr.ph.i.i.i.i.i.i.preheader1071:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.aie, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ain, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.aht, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aio, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader1071, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.aiv, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader1071 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.aiu, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader1071 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !393)
  call void @llvm.experimental.noalias.scope.decl(metadata !394)
  %i.ait = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !394, !noalias !393
  store i64 %i.ait, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !393, !noalias !394
  %i.aiu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aiu, %i.ahq
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv5Size_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !381

end_hunk_0
