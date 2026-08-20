inline.NumInlined: 777
inline.NumDeleted: 367
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK7Imf_3_418DeepTiledInputFile12getTileOrderEPiS1_S1_S1_:bb.a
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.loopexit167.split.us.split.us.split.us:          ; preds = %bb.aa
  %lpad.loopexit169.us.us.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ad:                                            ; preds = %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_17tileposESaIS2_EE6resizeEm.exit, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_17tileposESaIS2_EE6resizeEm.exit
  %i.de = icmp sgt i32 %i.p, 0
  br i1 %i.de, label %.lr.ph260, label %.loopexit165

.lr.ph260:                                        ; preds = %bb.ad
  %i.df = getelementptr inbounds nuw i8, ptr %9, i64 24
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph260, %._crit_edge250
  %.0117258 = phi i32 [ 0, %.lr.ph260 ], [ %i.eb, %._crit_edge250 ] ; 6 uses
  %.0118257 = phi i64 [ 0, %.lr.ph260 ], [ %.1119.lcssa, %._crit_edge250 ] ; 2 uses
  %i.dg = invoke noundef i32 @_ZNK7Imf_3_418DeepTiledInputFile9numYTilesEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.0117258)
          to label %bb.af unwind label %bb.aj     ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.dh = invoke noundef i32 @_ZNK7Imf_3_418DeepTiledInputFile9numXTilesEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.0117258)
          to label %.preheader164 unwind label %bb.ak ; 2 uses

.preheader164:                                    ; preds = %bb.af
  %i.di = icmp sgt i32 %i.dg, 0
  %i.dj = icmp sgt i32 %i.dh, 0
  %or.cond321 = and i1 %i.di, %i.dj
  br i1 %or.cond321, label %.preheader.us.preheader, label %._crit_edge250

.preheader.us.preheader:                          ; preds = %.preheader164
  %i.dk = insertelement <2 x i32> poison, i32 %.0117258, i64 0
  %i.dl = shufflevector <2 x i32> %i.dk, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us252
  %.0116249.us = phi i32 [ %i.ea, %._crit_edge.us252 ], [ 0, %.preheader.us.preheader ] ; 3 uses
  %.1119248.us = phi i64 [ %i.dt, %._crit_edge.us252 ], [ %.0118257, %.preheader.us.preheader ]
  br label %bb.ag

bb.ag:                                            ; preds = %.preheader.us, %bb.ai
  %.0115245.us = phi i32 [ 0, %.preheader.us ], [ %i.dz, %bb.ai ] ; 3 uses
  %.2120244.us = phi i64 [ %.1119248.us, %.preheader.us ], [ %i.dt, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.dm = load ptr, ptr %0, align 8, !tbaa !57
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !61
  %i.do = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !56
  %i.dr = invoke i32 @exr_read_tile_chunk_info(ptr noundef %i.dn, i32 noundef %i.dq, i32 noundef %.0115245.us, i32 noundef %.0116249.us, i32 noundef %.0117258, i32 noundef %.0117258, ptr noundef nonnull %9)
          to label %bb.ah unwind label %.loopexit.split.us

bb.ah:                                            ; preds = %bb.ag
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.ai, label %.split255.us

bb.ai:                                            ; preds = %bb.ah
  %i.dt = add i64 %.2120244.us, 1                 ; 3 uses
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.1, i64 %.2120244.us ; 4 uses
  %i.dv = load i64, ptr %i.df, align 8, !tbaa !200
  store i64 %i.dv, ptr %i.du, align 8, !tbaa !201
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i32 %.0115245.us, ptr %i.dw, align 8, !tbaa !203
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store i32 %.0116249.us, ptr %i.dx, align 4, !tbaa !204
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store <2 x i32> %i.dl, ptr %i.dy, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.dz = add nuw nsw i32 %.0115245.us, 1         ; 2 uses
  %exitcond284.not = icmp eq i32 %i.dz, %i.dh
  br i1 %exitcond284.not, label %._crit_edge.us252, label %bb.ag, !llvm.loop !209

._crit_edge.us252:                                ; preds = %bb.ai
  %i.ea = add nuw nsw i32 %.0116249.us, 1         ; 2 uses
  %exitcond285.not = icmp eq i32 %i.ea, %i.dg
  br i1 %exitcond285.not, label %._crit_edge250, label %.preheader.us, !llvm.loop !210

.loopexit.split.us:                               ; preds = %bb.ag
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

._crit_edge250:                                   ; preds = %._crit_edge.us252, %.preheader164
  %.1119.lcssa = phi i64 [ %.0118257, %.preheader164 ], [ %i.dt, %._crit_edge.us252 ]
  %i.eb = add nuw nsw i32 %.0117258, 1            ; 2 uses
  %exitcond286.not = icmp eq i32 %i.eb, %i.p
  br i1 %exitcond286.not, label %.loopexit165, label %bb.ae, !llvm.loop !211

bb.aj:                                            ; preds = %bb.ae
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.ak:                                            ; preds = %bb.af
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.loopexit.split-lp:                               ; preds = %bb.al
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.split255.us:                                     ; preds = %bb.ah
  %i.ee = call ptr @__cxa_allocate_exception(i64 72) #26 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ee, ptr noundef nonnull @.str.29)
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %.split255.us
  invoke void @__cxa_throw(ptr nonnull %i.ee, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #27
          to label %bb.bk unwind label %.loopexit.split-lp

bb.am:                                            ; preds = %.split255.us
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ee) #26
  br label %bb.an

bb.an:                                            ; preds = %.loopexit.split.us, %.loopexit.split-lp, %bb.am
  %.pn131 = phi { ptr, i32 } [ %i.ef, %bb.am ], [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.bi

.lr.ph232.split:                                  ; preds = %.lr.ph232, %.preheader173
  %.0114230 = phi i32 [ %i.eh, %.preheader173 ], [ 0, %.lr.ph232 ] ; 2 uses
  %i.eg = invoke noundef i32 @_ZNK7Imf_3_418DeepTiledInputFile9numYTilesEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.0114230)
          to label %.preheader173 unwind label %.split239 ; 0 uses

.preheader173:                                    ; preds = %.lr.ph232.split
  %i.eh = add nuw nsw i32 %.0114230, 1            ; 2 uses
  %exitcond278.not = icmp eq i32 %i.eh, %i.p
  br i1 %exitcond278.not, label %.loopexit165, label %.lr.ph232.split, !llvm.loop !199

.split239:                                        ; preds = %.lr.ph232.split
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.loopexit.split-lp168:                            ; preds = %bb.ao
  %lpad.loopexit.split-lp170 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.split.us214:                                     ; preds = %bb.ab
  %i.ej = call ptr @__cxa_allocate_exception(i64 72) #26 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ej, ptr noundef nonnull @.str.29)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %.split.us214
  invoke void @__cxa_throw(ptr nonnull %i.ej, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #27
          to label %bb.bk unwind label %.loopexit.split-lp168

bb.ap:                                            ; preds = %.split.us214
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ej) #26
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit167.split.us.split.us.split.us, %.loopexit.split-lp168, %bb.ap
  %.pn = phi { ptr, i32 } [ %i.ek, %bb.ap ], [ %lpad.loopexit169.us.us.us, %.loopexit167.split.us.split.us.split.us ], [ %lpad.loopexit.split-lp170, %.loopexit.split-lp168 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.bi

bb.ar:                                            ; preds = %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_17tileposESaIS2_EE6resizeEm.exit
  %i.el = call ptr @__cxa_allocate_exception(i64 72) #26 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.el, ptr noundef nonnull @.str.27)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  invoke void @__cxa_throw(ptr nonnull %i.el, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #27
          to label %bb.bk unwind label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.el) #26
  br label %bb.bi

bb.au:                                            ; preds = %bb.as
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.loopexit165:                                     ; preds = %.preheader173, %._crit_edge.us237, %._crit_edge250, %.preheader174, %bb.ad
  %.not.i.i = icmp eq ptr %.sroa.0.1, %.sroa.12.0
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %bb.av

bb.av:                                            ; preds = %.loopexit165
  %i.eo = ptrtoint ptr %.sroa.12.0 to i64
  %i.ep = ptrtoint ptr %.sroa.0.1 to i64          ; 2 uses
  %i.eq = sub i64 %i.eo, %i.ep                    ; 2 uses
  %i.er = sdiv exact i64 %i.eq, 24
  %i.es = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.er, i1 true)
  %i.et = shl nuw nsw i64 %i.es, 1
  %i.eu = xor i64 %i.et, 126
  call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %.sroa.0.1, ptr %.sroa.12.0, i64 noundef %i.eu)
  %i.ev = icmp sgt i64 %i.eq, 384
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.0.1, i64 24 ; 4 uses
  br i1 %i.ev, label %.lr.ph.i.i.i.i, label %bb.bb

.lr.ph.i.i.i.i:                                   ; preds = %bb.av, %bb.ba
  %.sroa.0.019.i.idx.i.i.i = phi i64 [ %.sroa.0.019.i.add.i.i.i, %bb.ba ], [ 24, %bb.av ] ; 4 uses
  %.pn18.i.i.i.i = phi ptr [ %.sroa.0.019.i.ptr.i.i.i, %bb.ba ], [ %.sroa.0.1, %bb.av ] ; 4 uses
  %.sroa.0.019.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %.sroa.0.019.i.idx.i.i.i ; 5 uses
  %.val2.i.i.i.i.i = load i64, ptr %.sroa.0.019.i.ptr.i.i.i, align 8, !tbaa !201 ; 4 uses
  %.val3.i.i.i.i.i = load i64, ptr %.sroa.0.1, align 8, !tbaa !201
  %i.ew = icmp ult i64 %.val2.i.i.i.i.i, %.val3.i.i.i.i.i
  br i1 %i.ew, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.019.i.ptr.i.i.i, i64 24, i1 false), !tbaa.struct !196
  %i.ex = icmp samesign ugt i64 %.sroa.0.019.i.idx.i.i.i, 24
  br i1 %i.ex, label %bb.ax, label %bb.ay, !prof !212

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0.1, i64 %.sroa.0.019.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.ey = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ey, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.0.1, i64 24, i1 false), !tbaa.struct !196
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i: ; preds = %bb.ay, %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.1, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !196
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.ba

bb.az:                                            ; preds = %.lr.ph.i.i.i.i
  %.sroa.5.0..val3.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i, i64 32
  %.sroa.5.i.i.i.i.i.sroa.0.0.copyload = load <4 x i32>, ptr %.sroa.5.0..val3.sroa_idx.i.i.i.i.i, align 8
  %.val2.i10.i.i.i.i.i = load i64, ptr %.pn18.i.i.i.i, align 8, !tbaa !201
  %i.ez = icmp ult i64 %.val2.i.i.i.i.i, %.val2.i10.i.i.i.i.i
  br i1 %i.ez, label %.lr.ph.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.az, %.lr.ph.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.pn18.i.i.i.i, %bb.az ] ; 4 uses
  %.sroa.08.011.i.i.i.i.i = phi ptr [ %.sroa.0.012.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.019.i.ptr.i.i.i, %bb.az ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.011.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.012.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !196
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i.i.i.i, i64 -24 ; 2 uses
  %.val2.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !201
  %i.fa = icmp ult i64 %.val2.i.i.i.i.i, %.val2.i.i.i.i.i.i
  br i1 %i.fa, label %.lr.ph.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i, !llvm.loop !213

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.az
  %.sroa.08.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.019.i.ptr.i.i.i, %bb.az ], [ %.sroa.0.012.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  store i64 %.val2.i.i.i.i.i, ptr %.sroa.08.0.lcssa.i.i.i.i.i, align 8, !tbaa !107
  %.sroa.5.0..val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i.i.i.i, i64 8
  store <4 x i32> %.sroa.5.i.i.i.i.i.sroa.0.0.copyload, ptr %.sroa.5.0..val.sroa_idx.i.i.i.i.i, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i
  %.sroa.0.019.i.add.i.i.i = add nuw nsw i64 %.sroa.0.019.i.idx.i.i.i, 24 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.019.i.add.i.i.i, 384
  br i1 %.not.i.i.i.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !214

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.i.i.i: ; preds = %bb.ba
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 384 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.fb, %.sroa.12.0
  br i1 %.not4.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i10.i.i.i

.lr.ph.i10.i.i.i:                                 ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.fe, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13.i.i.i ], [ %i.fb, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.i.i.i ] ; 6 uses
  %.sroa.06.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.0.05.i.i.i.i, align 8, !tbaa !107 ; 3 uses
  %.sroa.5.0..val3.sroa_idx.i.i11.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %.sroa.5.i.i9.i.i.i.sroa.0.0.copyload = load <4 x i32>, ptr %.sroa.5.0..val3.sroa_idx.i.i11.i.i.i, align 8
  %.sroa.0.09.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i.i.i, i64 -24 ; 2 uses
  %.val2.i10.i.i12.i.i.i = load i64, ptr %.sroa.0.09.i.i.i.i.i, align 8, !tbaa !201
  %i.fc = icmp ult i64 %.sroa.06.0.copyload.i.i.i.i.i, %.val2.i10.i.i12.i.i.i
  br i1 %i.fc, label %.lr.ph.i.i17.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13.i.i.i

.lr.ph.i.i17.i.i.i:                               ; preds = %.lr.ph.i10.i.i.i, %.lr.ph.i.i17.i.i.i
  %.sroa.0.012.i.i18.i.i.i = phi ptr [ %.sroa.0.0.i.i20.i.i.i, %.lr.ph.i.i17.i.i.i ], [ %.sroa.0.09.i.i.i.i.i, %.lr.ph.i10.i.i.i ] ; 4 uses
  %.sroa.08.011.i.i19.i.i.i = phi ptr [ %.sroa.0.012.i.i18.i.i.i, %.lr.ph.i.i17.i.i.i ], [ %.sroa.0.05.i.i.i.i, %.lr.ph.i10.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.011.i.i19.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.012.i.i18.i.i.i, i64 24, i1 false), !tbaa.struct !196
  %.sroa.0.0.i.i20.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i18.i.i.i, i64 -24 ; 2 uses
  %.val2.i.i.i21.i.i.i = load i64, ptr %.sroa.0.0.i.i20.i.i.i, align 8, !tbaa !201
  %i.fd = icmp ult i64 %.sroa.06.0.copyload.i.i.i.i.i, %.val2.i.i.i21.i.i.i
  br i1 %i.fd, label %.lr.ph.i.i17.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13.i.i.i, !llvm.loop !213

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13.i.i.i: ; preds = %.lr.ph.i.i17.i.i.i, %.lr.ph.i10.i.i.i
  %.sroa.08.0.lcssa.i.i14.i.i.i = phi ptr [ %.sroa.0.05.i.i.i.i, %.lr.ph.i10.i.i.i ], [ %.sroa.0.012.i.i18.i.i.i, %.lr.ph.i.i17.i.i.i ] ; 2 uses
  store i64 %.sroa.06.0.copyload.i.i.i.i.i, ptr %.sroa.08.0.lcssa.i.i14.i.i.i, align 8, !tbaa !107
  %.sroa.5.0..val.sroa_idx.i.i15.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i14.i.i.i, i64 8
  store <4 x i32> %.sroa.5.i.i9.i.i.i.sroa.0.0.copyload, ptr %.sroa.5.0..val.sroa_idx.i.i15.i.i.i, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i16.i.i.i = icmp eq ptr %i.fe, %.sroa.12.0
  br i1 %.not.i16.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i10.i.i.i, !llvm.loop !215

bb.bb:                                            ; preds = %bb.av
  %.not17.i25.i.i.i = icmp eq ptr %scevgep.i.i.i, %.sroa.12.0
  br i1 %.not17.i25.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i26.i.i.i

.lr.ph.i26.i.i.i:                                 ; preds = %bb.bb, %bb.bh
  %.sroa.0.019.i27.i.i.i = phi ptr [ %.sroa.0.0.i36.i.i.i, %bb.bh ], [ %scevgep.i.i.i, %bb.bb ] ; 7 uses
  %.pn18.i28.i.i.i = phi ptr [ %.sroa.0.019.i27.i.i.i, %bb.bh ], [ %.sroa.0.1, %bb.bb ] ; 4 uses
  %.val2.i.i29.i.i.i = load i64, ptr %.sroa.0.019.i27.i.i.i, align 8, !tbaa !201 ; 4 uses
  %.val3.i.i30.i.i.i = load i64, ptr %.sroa.0.1, align 8, !tbaa !201
  %i.ff = icmp ult i64 %.val2.i.i29.i.i.i, %.val3.i.i30.i.i.i
  br i1 %i.ff, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %.lr.ph.i26.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.019.i27.i.i.i, i64 24, i1 false), !tbaa.struct !196
  %i.fg = ptrtoint ptr %.sroa.0.019.i27.i.i.i to i64
  %i.fh = sub i64 %i.fg, %i.ep                    ; 3 uses
  %i.fi = icmp sgt i64 %i.fh, 24
  br i1 %i.fi, label %bb.bd, label %bb.be, !prof !212

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0.1, i64 %i.fh, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i

bb.be:                                            ; preds = %bb.bc
  %i.fj = icmp eq i64 %i.fh, 24
  br i1 %i.fj, label %bb.bf, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i

bb.bf:                                            ; preds = %bb.be
  %i.fk = getelementptr inbounds nuw i8, ptr %.pn18.i28.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fk, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.0.1, i64 24, i1 false), !tbaa.struct !196
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i: ; preds = %bb.bf, %bb.be, %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.1, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !196
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.bh

bb.bg:                                            ; preds = %.lr.ph.i26.i.i.i
  %.sroa.5.0..val3.sroa_idx.i.i31.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i28.i.i.i, i64 32
  %.sroa.5.i.i22.i.i.i.sroa.0.0.copyload = load <4 x i32>, ptr %.sroa.5.0..val3.sroa_idx.i.i31.i.i.i, align 8
  %.val2.i10.i.i32.i.i.i = load i64, ptr %.pn18.i28.i.i.i, align 8, !tbaa !201
  %i.fl = icmp ult i64 %.val2.i.i29.i.i.i, %.val2.i10.i.i32.i.i.i
  br i1 %i.fl, label %.lr.ph.i.i38.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i33.i.i.i

.lr.ph.i.i38.i.i.i:                               ; preds = %bb.bg, %.lr.ph.i.i38.i.i.i
  %.sroa.0.012.i.i39.i.i.i = phi ptr [ %.sroa.0.0.i.i41.i.i.i, %.lr.ph.i.i38.i.i.i ], [ %.pn18.i28.i.i.i, %bb.bg ] ; 4 uses
  %.sroa.08.011.i.i40.i.i.i = phi ptr [ %.sroa.0.012.i.i39.i.i.i, %.lr.ph.i.i38.i.i.i ], [ %.sroa.0.019.i27.i.i.i, %bb.bg ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.011.i.i40.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.012.i.i39.i.i.i, i64 24, i1 false), !tbaa.struct !196
  %.sroa.0.0.i.i41.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i39.i.i.i, i64 -24 ; 2 uses
  %.val2.i.i.i42.i.i.i = load i64, ptr %.sroa.0.0.i.i41.i.i.i, align 8, !tbaa !201
  %i.fm = icmp ult i64 %.val2.i.i29.i.i.i, %.val2.i.i.i42.i.i.i
  br i1 %i.fm, label %.lr.ph.i.i38.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i33.i.i.i, !llvm.loop !213

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i33.i.i.i: ; preds = %.lr.ph.i.i38.i.i.i, %bb.bg
  %.sroa.08.0.lcssa.i.i34.i.i.i = phi ptr [ %.sroa.0.019.i27.i.i.i, %bb.bg ], [ %.sroa.0.012.i.i39.i.i.i, %.lr.ph.i.i38.i.i.i ] ; 2 uses
  store i64 %.val2.i.i29.i.i.i, ptr %.sroa.08.0.lcssa.i.i34.i.i.i, align 8, !tbaa !107
  %.sroa.5.0..val.sroa_idx.i.i35.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i34.i.i.i, i64 8
  store <4 x i32> %.sroa.5.i.i22.i.i.i.sroa.0.0.copyload, ptr %.sroa.5.0..val.sroa_idx.i.i35.i.i.i, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i33.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i
  %.sroa.0.0.i36.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i27.i.i.i, i64 24 ; 2 uses
  %.not.i37.i.i.i = icmp eq ptr %.sroa.0.0.i36.i.i.i, %.sroa.12.0
  br i1 %.not.i37.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i26.i.i.i, !llvm.loop !214

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %bb.bh, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13.i.i.i, %.loopexit165, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.i.i.i, %bb.bb
  br i1 %.not311, label %._crit_edge, label %.lr.ph262

._crit_edge:                                      ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit
  %.not.i.i.i = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_17tileposESaIS2_EED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.lr.ph262, %._crit_edge
  %i.fn = ptrtoint ptr %.sroa.12.0 to i64
  %i.fo = ptrtoint ptr %.sroa.0.1 to i64
  %i.fp = sub i64 %i.fn, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.fp) #25
  br label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_17tileposESaIS2_EED2Ev.exit

.lr.ph262:                                        ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, %.lr.ph262
  %.096261 = phi i64 [ %i.gd, %.lr.ph262 ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ] ; 6 uses
  %i.fq = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.1, i64 %.096261 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !203
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.096261
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !65
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !204
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.096261
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !65
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !205
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.096261
  store i32 %i.fy, ptr %i.fz, align 4, !tbaa !65
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fq, i64 20
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !206
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.096261
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !65
  %i.gd = add nuw i64 %.096261, 1                 ; 2 uses
  %exitcond287.not = icmp eq i64 %i.gd, %.3110310
  br i1 %exitcond287.not, label %._crit_edge.thread, label %.lr.ph262, !llvm.loop !216

_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_17tileposESaIS2_EED2Ev.exit: ; preds = %._crit_edge.thread, %._crit_edge, %bb.c, %bb.b
  ret void

bb.bi:                                            ; preds = %.split.split.us, %.split.us225.split.us, %.split239, %.split239.us, %bb.at, %bb.au, %bb.ak, %bb.an, %bb.aj, %bb.aq
  %.pn135.pn = phi { ptr, i32 } [ %i.db, %.split239.us ], [ %i.en, %bb.au ], [ %i.em, %bb.at ], [ %i.ed, %bb.ak ], [ %i.ec, %bb.aj ], [ %.pn131, %bb.an ], [ %.pn, %bb.aq ], [ %i.ei, %.split239 ], [ %i.dc, %.split.split.us ], [ %i.dd, %.split.us225.split.us ] ; 2 uses
  %.not.i.i.i156 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i.i.i156, label %common.resume, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ge = ptrtoint ptr %.sroa.12.0 to i64
  %i.gf = ptrtoint ptr %.sroa.0.1 to i64
  %i.gg = sub i64 %i.ge, %i.gf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.gg) #25
  br label %common.resume

bb.bk:                                            ; preds = %bb.as, %bb.ao, %bb.al
  unreachable
}

declare noundef i32 @_ZNK7Imf_3_47Context9lineOrderEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #1

declare void @_ZN13IlmThread_3_49TaskGroupC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN7Iex_3_48InputExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN7Iex_3_48InputExcD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #6

declare void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #1

declare void @_ZN13IlmThread_3_410ThreadPool13addGlobalTaskEPNS_4TaskE(ptr noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZN13IlmThread_3_49TaskGroupD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN13IlmThread_3_412ProcessGroupIN7Imf_3_412_GLOBAL__N_111TileProcessELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load atomic ptr, ptr %i.a seq_cst, align 8 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !133  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !64
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #25
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !126  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.j, %i.l
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7Imf_3_412_GLOBAL__N_111TileProcessES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_ZSt8_DestroyIN7Imf_3_412_GLOBAL__N_111TileProcessEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyIN7Imf_3_412_GLOBAL__N_111TileProcessEEvPT_.exit.i.i.i ], [ %i.j, %bb.c ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 4
  %i.n = load i8, ptr %i.m, align 4, !tbaa !122, !range !83, !noundef !84
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZSt8_DestroyIN7Imf_3_412_GLOBAL__N_111TileProcessEEvPT_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !170
  %i.s = invoke i32 @exr_decoding_destroy(ptr noundef %i.r, ptr noundef nonnull %i.p)
          to label %_ZSt8_DestroyIN7Imf_3_412_GLOBAL__N_111TileProcessEEvPT_.exit.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #29
  unreachable

_ZSt8_DestroyIN7Imf_3_412_GLOBAL__N_111TileProcessEEvPT_.exit.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 584 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.l
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7Imf_3_412_GLOBAL__N_111TileProcessES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !217

_ZSt8_DestroyIPN7Imf_3_412_GLOBAL__N_111TileProcessES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7Imf_3_412_GLOBAL__N_111TileProcessEEvPT_.exit.i.i.i
  %.val.pr.i = load ptr, ptr %i.i, align 8, !tbaa !126
  br label %_ZSt8_DestroyIPN7Imf_3_412_GLOBAL__N_111TileProcessES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7Imf_3_412_GLOBAL__N_111TileProcessES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7Imf_3_412_GLOBAL__N_111TileProcessES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.c
  %.val.i = phi ptr [ %.val.pr.i, %_ZSt8_DestroyIPN7Imf_3_412_GLOBAL__N_111TileProcessES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.j, %bb.c ] ; 3 uses
  %.not.i.i2.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i2.i, label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_111TileProcessESaIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN7Imf_3_412_GLOBAL__N_111TileProcessES2_EvT_S4_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1.i = load ptr, ptr %i.w, align 8, !tbaa !129
  %i.x = ptrtoint ptr %.val1.i to i64
  %i.y = ptrtoint ptr %.val.i to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i, i64 noundef %i.z) #25
  br label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_111TileProcessESaIS2_EED2Ev.exit

_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_111TileProcessESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7Imf_3_412_GLOBAL__N_111TileProcessES2_EvT_S4_RSaIT0_E.exit.i, %bb.f
  tail call void @_ZN13IlmThread_3_49SemaphoreD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #26
end_hunk_0
