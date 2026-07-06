inline.NumInlined: 9532
inline.NumDeleted: 3275
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN8facebook5velox12_GLOBAL__N_135pushDictionaryToRowVectorLeavesImplERSt6vectorINS1_15EncodingWrapperESaIS3_EEiRKSt10shared_ptrINS0_10BaseVectorEEPNS0_6memory10MemoryPoolE:bb.a
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = invoke noundef zeroext i1 %i.df(ptr noundef nonnull align 8 dereferenceable(94) %i.co)
          to label %bb.ag unwind label %bb.w

bb.ag:                                            ; preds = %bb.af
  br i1 %i.dg, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39, !noalias !348
  %i.dh = load ptr, ptr %i.cf, align 8, !tbaa !47
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 56
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !162 ; 4 uses
  store i32 %i.dj, ptr %i.c, align 4, !tbaa !3, !noalias !348
  %i.dk = load ptr, ptr %i.cb, align 8, !tbaa !365, !noalias !348 ; 6 uses
  %i.dl = load ptr, ptr %i.cc, align 8, !tbaa !368, !noalias !348
  %.not.i.i.i = icmp eq ptr %i.dk, %i.dl
  br i1 %.not.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dm = sext i32 %i.dj to i64                   ; 3 uses
  %i.dn = icmp slt i32 %i.dj, 0
  br i1 %i.dn, label %.noexc.i.i.i.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.101) #38
          to label %.noexc71.i.i unwind label %.loopexit.split-lp.i.i

.noexc71.i.i:                                     ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i: ; preds = %bb.ai
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.dj, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt12construct_atISt6vectorIiSaIiEEJiEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i, label %.noexc3.i.i.i.i

.noexc3.i.i.i.i:                                  ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i
  %i.do = shl nuw nsw i64 %i.dm, 2
  %i.dp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.do) #42
          to label %.noexc72.i.i unwind label %.loopexit.i.i ; 4 uses

.noexc72.i.i:                                     ; preds = %.noexc3.i.i.i.i
  store ptr %i.dp, ptr %i.dk, align 8, !tbaa !219
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.dm
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !220
  store i32 0, ptr %i.dp, align 4, !tbaa !3
  %i.ds = getelementptr i8, ptr %i.dp, i64 4      ; 3 uses
  %i.dt = add nsw i64 %i.dm, -1                   ; 2 uses
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %_ZSt12construct_atISt6vectorIiSaIiEEJiEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc72.i.i
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.dt, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.ds, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !3
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  br label %_ZSt12construct_atISt6vectorIiSaIiEEJiEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i

_ZSt12construct_atISt6vectorIiSaIiEEJiEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i.i, %.noexc72.i.i, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dv, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.ds, %.noexc72.i.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %.0.i.i.i.i.i.i.i.i.i, ptr %i.dw, align 8, !tbaa !369
  %i.dx = load ptr, ptr %i.cb, align 8, !tbaa !365, !noalias !348
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24 ; 2 uses
  store ptr %i.dy, ptr %i.cb, align 8, !tbaa !365, !noalias !348
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  invoke void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.dk, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %.noexc73.i.i unwind label %.loopexit.i.i

.noexc73.i.i:                                     ; preds = %bb.aj
  %.pre.i.i.i = load ptr, ptr %i.cb, align 8, !tbaa !370, !noalias !348
  br label %bb.ak

bb.ak:                                            ; preds = %.noexc73.i.i, %_ZSt12construct_atISt6vectorIiSaIiEEJiEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i
  %i.dz = phi ptr [ %.pre.i.i.i, %.noexc73.i.i ], [ %i.dy, %_ZSt12construct_atISt6vectorIiSaIiEEJiEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i ] ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 -24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #39, !noalias !348
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !104 ; 11 uses
  %i.ec = getelementptr inbounds i8, ptr %i.dz, i64 -16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !104 ; 3 uses
  %i.ee = load ptr, ptr %i.ck, align 8, !tbaa !109
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !117
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !3  ; 3 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.eb, %i.ed
  br i1 %.not5.i.i.i.i.i.i, label %.sink.split.i.i, label %iter.check

iter.check:                                       ; preds = %bb.ak
  %i.ei = ptrtoint ptr %i.ed to i64
  %i.ej = ptrtoint ptr %i.eb to i64
  %i.ek = add i64 %i.ei, -4
  %i.el = sub i64 %i.ek, %i.ej                    ; 3 uses
  %i.em = lshr i64 %i.el, 2
  %i.en = add nuw nsw i64 %i.em, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.el, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check252 = icmp ult i64 %i.el, 124
  br i1 %min.iters.check252, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.en, 24
  %n.vec = and i64 %i.en, 9223372036854775776     ; 4 uses
  %i.eo = shl i64 %n.vec, 2
  %i.ep = getelementptr i8, ptr %i.eb, i64 %i.eo
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.eh, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eq = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.eb, i64 %i.eq ; 4 uses
  %i.er = getelementptr i8, ptr %next.gep, i64 32
  %i.es = getelementptr i8, ptr %next.gep, i64 64
  %i.et = getelementptr i8, ptr %next.gep, i64 96
  store <8 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat, ptr %i.er, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat, ptr %i.es, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat, ptr %i.et, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !371

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.en, %n.vec
  br i1 %cmp.n, label %.sink.split.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !121

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec254 = and i64 %i.en, 9223372036854775800  ; 3 uses
  %i.ev = shl i64 %n.vec254, 2
  %i.ew = getelementptr i8, ptr %i.eb, i64 %i.ev
  %broadcast.splatinsert255 = insertelement <8 x i32> poison, i32 %i.eh, i64 0
  %broadcast.splat256 = shufflevector <8 x i32> %broadcast.splatinsert255, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index257 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next259, %vec.epilog.vector.body ] ; 2 uses
  %i.ex = shl i64 %index257, 2
  %next.gep258 = getelementptr i8, ptr %i.eb, i64 %i.ex
  store <8 x i32> %broadcast.splat256, ptr %next.gep258, align 4, !tbaa !3
  %index.next259 = add nuw i64 %index257, 8       ; 2 uses
  %i.ey = icmp eq i64 %index.next259, %n.vec254
  br i1 %i.ey, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !372

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n260 = icmp eq i64 %i.en, %n.vec254
  br i1 %cmp.n260, label %.sink.split.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.i.i.i.i.i.ph = phi ptr [ %i.eb, %iter.check ], [ %i.ep, %vec.epilog.iter.check ], [ %i.ew, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.ez, %.lr.ph.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.eh, ptr %.06.i.i.i.i.i.i, align 4, !tbaa !3
  %i.ez = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i74.i.i = icmp eq ptr %i.ez, %i.ed
  br i1 %.not.i.i.i.i74.i.i, label %.sink.split.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !373

.loopexit.i.i:                                    ; preds = %bb.aj, %.noexc3.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp.i.i:                           ; preds = %.noexc.i.i.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #39, !noalias !348
  br label %bb.au

.sink.split.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.ak, %bb.z
  %.sink.i.i = phi ptr [ %i.cs, %bb.z ], [ %i.eb, %bb.ak ], [ %i.eb, %middle.block ], [ %i.eb, %vec.epilog.middle.block ], [ %i.eb, %.lr.ph.i.i.i.i.i.i ]
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv.i.i
  store ptr %.sink.i.i, ptr %i.fa, align 8, !tbaa !104
  br label %bb.am

bb.am:                                            ; preds = %.sink.split.i.i, %bb.ag
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.val61.i.i = load ptr, ptr %1, align 8, !tbaa !358, !noalias !348 ; 2 uses
  %.val62.i.i = load ptr, ptr %i.af, align 8, !tbaa !360, !noalias !348
  %i.fb = ptrtoint ptr %.val62.i.i to i64
  %i.fc = ptrtoint ptr %.val61.i.i to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = sdiv exact i64 %i.fd, 24
  %i.ff = icmp ugt i64 %i.fe, %indvars.iv.next.i.i
  br i1 %i.ff, label %bb.s, label %.preheader9.i.i, !llvm.loop !374

.preheader.i.i:                                   ; preds = %"_ZZN8facebook5velox12_GLOBAL__N_112combineNullsERKSt6vectorINS1_15EncodingWrapperESaIS3_EEiPKmPNS0_6memory10MemoryPoolEENK3$_0clEiib.exit.i.i", %.preheader.preheader.i.i
  %indvars.iv42.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %indvars.iv.next43.i.i, %"_ZZN8facebook5velox12_GLOBAL__N_112combineNullsERKSt6vectorINS1_15EncodingWrapperESaIS3_EEiPKmPNS0_6memory10MemoryPoolEENK3$_0clEiib.exit.i.i" ] ; 5 uses
  %.val20.i.i = load ptr, ptr %1, align 8, !tbaa !358, !noalias !348 ; 2 uses
  %.val6021.i.i = load ptr, ptr %i.af, align 8, !tbaa !360, !noalias !348
  %.not31.i.i = icmp eq ptr %.val6021.i.i, %.val20.i.i
  br i1 %.not31.i.i, label %._crit_edge.i.i, label %.lr.ph25.preheader.i.i

.lr.ph25.preheader.i.i:                           ; preds = %.preheader.i.i
  %18 = trunc nuw nsw i64 %indvars.iv42.i.i to i32
  br label %.lr.ph25.i.i

._crit_edge29.i.i:                                ; preds = %"_ZZN8facebook5velox12_GLOBAL__N_112combineNullsERKSt6vectorINS1_15EncodingWrapperESaIS3_EEiPKmPNS0_6memory10MemoryPoolEENK3$_0clEiib.exit.i.i", %.preheader9.i.i
  %i.fg = load ptr, ptr %7, align 8, !tbaa !375, !noalias !348 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !365, !noalias !348 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.fg, %i.fi
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge29.i.i, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.fp, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i ], [ %i.fg, %._crit_edge29.i.i ] ; 3 uses
  %i.fj = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !219 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !220
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = ptrtoint ptr %i.fj to i64
  %i.fo = sub i64 %i.fm, %i.fn
  call void @_ZdlPvm(ptr noundef nonnull %i.fj, i64 noundef %i.fo) #40
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.an, %.lr.ph.i.i.i.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fp, %i.fi
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !376

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %7, align 8, !tbaa !375, !noalias !348
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i, %._crit_edge29.i.i
  %i.fq = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.fg, %._crit_edge29.i.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.fq, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !368, !noalias !348
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = ptrtoint ptr %i.fq to i64
  %i.fv = sub i64 %i.ft, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef %i.fv) #40
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit.i.i

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit.i.i:     ; preds = %bb.ao, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39, !noalias !348
  %.not.i.i.i75.i.i = icmp eq ptr %.sroa.03.075.i.i, null
  br i1 %.not.i.i.i75.i.i, label %_ZN8facebook5velox12_GLOBAL__N_112combineNullsERKSt6vectorINS1_15EncodingWrapperESaIS3_EEiPKmPNS0_6memory10MemoryPoolE.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit.i.i
  %i.fw = ptrtoint ptr %.sroa.12.072.i.i to i64
  %i.fx = ptrtoint ptr %.sroa.03.075.i.i to i64
  %i.fy = sub i64 %i.fw, %i.fx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.03.075.i.i, i64 noundef %i.fy) #40
  br label %_ZN8facebook5velox12_GLOBAL__N_112combineNullsERKSt6vectorINS1_15EncodingWrapperESaIS3_EEiPKmPNS0_6memory10MemoryPoolE.exit

.lr.ph25.i.i:                                     ; preds = %bb.as, %.lr.ph25.preheader.i.i
  %indvars.iv39.i.i = phi i64 [ 0, %.lr.ph25.preheader.i.i ], [ %indvars.iv.next40.i.i, %bb.as ] ; 3 uses
  %.val24.i.i = phi ptr [ %.val20.i.i, %.lr.ph25.preheader.i.i ], [ %.val.i.i, %bb.as ]
  %.03922.i.i = phi i32 [ %18, %.lr.ph25.preheader.i.i ], [ %i.gl, %bb.as ] ; 2 uses
  %i.fz = getelementptr inbounds nuw [24 x i8], ptr %.val24.i.i, i64 %indvars.iv39.i.i
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !345, !nonnull !148, !align !347
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !47 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !50
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = invoke noundef zeroext i1 %i.ge(ptr noundef nonnull align 8 dereferenceable(94) %i.gb, i32 noundef %.03922.i.i)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %.lr.ph25.i.i
  br i1 %i.gf, label %.thread.i.i, label %bb.as

bb.ar:                                            ; preds = %.lr.ph25.i.i
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.as:                                            ; preds = %bb.aq
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.03.075.i.i, i64 %indvars.iv39.i.i
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !104
  %i.gj = sext i32 %.03922.i.i to i64
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.gi, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !3  ; 2 uses
  %indvars.iv.next40.i.i = add nuw nsw i64 %indvars.iv39.i.i, 1 ; 2 uses
  %.val.i.i = load ptr, ptr %1, align 8, !tbaa !358, !noalias !348 ; 2 uses
  %.val60.i.i = load ptr, ptr %i.af, align 8, !tbaa !360, !noalias !348
  %i.gm = ptrtoint ptr %.val60.i.i to i64
  %i.gn = ptrtoint ptr %.val.i.i to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = sdiv exact i64 %i.go, 24
  %i.gq = icmp ugt i64 %i.gp, %indvars.iv.next40.i.i
  br i1 %i.gq, label %.lr.ph25.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !377

._crit_edge.loopexit.i.i:                         ; preds = %bb.as
  %19 = zext i32 %i.gl to i64
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %.preheader.i.i
  %.039.lcssa.i.i = phi i64 [ %indvars.iv42.i.i, %.preheader.i.i ], [ %19, %._crit_edge.loopexit.i.i ] ; 2 uses
  br i1 %.not.i76.i.i, label %"_ZZN8facebook5velox12_GLOBAL__N_112combineNullsERKSt6vectorINS1_15EncodingWrapperESaIS3_EEiPKmPNS0_6memory10MemoryPoolEENK3$_0clEiib.exit.i.i", label %bb.at

bb.at:                                            ; preds = %._crit_edge.i.i
  %i.gr = lshr i64 %.039.lcssa.i.i, 6
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.gr
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !43, !noalias !348
  %i.gu = and i64 %.039.lcssa.i.i, 63
  %i.gv = shl nuw i64 1, %i.gu
  %i.gw = and i64 %i.gt, %i.gv
  %.not.i.i.i.i = icmp eq i64 %i.gw, 0
  br i1 %.not.i.i.i.i, label %.thread.i.i, label %"_ZZN8facebook5velox12_GLOBAL__N_112combineNullsERKSt6vectorINS1_15EncodingWrapperESaIS3_EEiPKmPNS0_6memory10MemoryPoolEENK3$_0clEiib.exit.i.i"

.thread.i.i:                                      ; preds = %bb.aq, %bb.at
  %i.gx = and i64 %indvars.iv42.i.i, 7
  %i.gy = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !61, !noalias !348
  %i.ha = lshr i64 %indvars.iv42.i.i, 3
  %i.hb = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.ha ; 2 uses
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !61
  %i.hd = and i8 %i.hc, %i.gz
  store i8 %i.hd, ptr %i.hb, align 1, !tbaa !61
  br label %"_ZZN8facebook5velox12_GLOBAL__N_112combineNullsERKSt6vectorINS1_15EncodingWrapperESaIS3_EEiPKmPNS0_6memory10MemoryPoolEENK3$_0clEiib.exit.i.i"

"_ZZN8facebook5velox12_GLOBAL__N_112combineNullsERKSt6vectorINS1_15EncodingWrapperESaIS3_EEiPKmPNS0_6memory10MemoryPoolEENK3$_0clEiib.exit.i.i": ; preds = %.thread.i.i, %bb.at, %._crit_edge.i.i
  %indvars.iv.next43.i.i = add nuw nsw i64 %indvars.iv42.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next43.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge29.i.i, label %.preheader.i.i, !llvm.loop !378

bb.au:                                            ; preds = %bb.ar, %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.x, %bb.w
  %.sroa.03.074.i.i = phi ptr [ %i.bw, %bb.al ], [ %i.bw, %bb.x ], [ %i.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.bw, %bb.w ], [ %.sroa.03.075.i.i, %bb.ar ] ; 3 uses
  %.sroa.12.070.i.i = phi ptr [ %i.bx, %bb.al ], [ %i.bx, %bb.x ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.bx, %bb.w ], [ %.sroa.12.072.i.i, %bb.ar ]
  %.pn56.pn.i.i = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.al ], [ %i.cn, %bb.x ], [ %.pn54.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.cm, %bb.w ], [ %i.gg, %bb.ar ] ; 2 uses
  %i.he = load ptr, ptr %7, align 8, !tbaa !375, !noalias !348 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !365, !noalias !348 ; 2 uses
  %.not4.i.i.i77.i.i = icmp eq ptr %i.he, %i.hg
  br i1 %.not4.i.i.i77.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i85.i.i, label %.lr.ph.i.i.i78.i.i

.lr.ph.i.i.i78.i.i:                               ; preds = %bb.au, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i81.i.i
  %.05.i.i.i79.i.i = phi ptr [ %i.hn, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i81.i.i ], [ %i.he, %bb.au ] ; 3 uses
  %i.hh = load ptr, ptr %.05.i.i.i79.i.i, align 8, !tbaa !219 ; 3 uses
  %.not.i.i.i.i.i.i.i.i80.i.i = icmp eq ptr %i.hh, null
  br i1 %.not.i.i.i.i.i.i.i.i80.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i81.i.i, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i.i78.i.i
  %i.hi = getelementptr inbounds nuw i8, ptr %.05.i.i.i79.i.i, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !220
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = ptrtoint ptr %i.hh to i64
  %i.hm = sub i64 %i.hk, %i.hl
  call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef %i.hm) #40
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i81.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i81.i.i: ; preds = %bb.av, %.lr.ph.i.i.i78.i.i
  %i.hn = getelementptr inbounds nuw i8, ptr %.05.i.i.i79.i.i, i64 24 ; 2 uses
  %.not.i.i.i82.i.i = icmp eq ptr %i.hn, %i.hg
  br i1 %.not.i.i.i82.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i83.i.i, label %.lr.ph.i.i.i78.i.i, !llvm.loop !376

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i83.i.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i81.i.i
  %.pr.i84.i.i = load ptr, ptr %7, align 8, !tbaa !375, !noalias !348
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i85.i.i

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i85.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i83.i.i, %bb.au
  %i.ho = phi ptr [ %.pr.i84.i.i, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i83.i.i ], [ %i.he, %bb.au ] ; 3 uses
  %.not.i.i1.i86.i.i = icmp eq ptr %i.ho, null
  br i1 %.not.i.i1.i86.i.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit87.i.i, label %bb.aw

bb.aw:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i85.i.i
  %i.hp = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !368, !noalias !348
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = ptrtoint ptr %i.ho to i64
  %i.ht = sub i64 %i.hr, %i.hs
  call void @_ZdlPvm(ptr noundef nonnull %i.ho, i64 noundef %i.ht) #40
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit87.i.i

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit87.i.i:   ; preds = %bb.aw, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i85.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39, !noalias !348
  %.not.i.i.i88.i.i = icmp eq ptr %.sroa.03.074.i.i, null
  br i1 %.not.i.i.i88.i.i, label %.body.i, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit87.i.i
  %i.hu = ptrtoint ptr %.sroa.12.070.i.i to i64
  %i.hv = ptrtoint ptr %.sroa.03.074.i.i to i64
  %i.hw = sub i64 %i.hu, %i.hv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.03.074.i.i, i64 noundef %i.hw) #40
  br label %.body.i

bb.ay:                                            ; preds = %bb.q
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.az:                                            ; preds = %.noexc69.i.i, %.noexc.i.i
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.az, %bb.ay, %bb.ax, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit87.i.i
  %.pn.i = phi { ptr, i32 } [ %i.hx, %bb.ay ], [ %i.hy, %bb.az ], [ %.pn56.pn.i.i, %bb.ax ], [ %.pn56.pn.i.i, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit87.i.i ] ; 3 uses
  %i.hz = load ptr, ptr %13, align 8, !tbaa !109  ; 7 uses
  %.not.i104 = icmp eq ptr %i.hz, null
  br i1 %.not.i104, label %.body, label %bb.ba

bb.ba:                                            ; preds = %.body.i
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 40
  %i.ib = atomicrmw sub ptr %i.ia, i32 1 acq_rel, align 4
  %i.ic = icmp eq i32 %i.ib, 1
  br i1 %i.ic, label %.sink.split.i.i105, label %.body

.sink.split.i.i105:                               ; preds = %bb.ba
  %i.id = load ptr, ptr %i.hz, align 8, !tbaa !50
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 64
  %i.if = load ptr, ptr %i.ie, align 8
  invoke void %i.if(ptr noundef nonnull align 8 dereferenceable(64) %i.hz)
          to label %.noexc.i106 unwind label %bb.bb, !inline_history !124

.noexc.i106:                                      ; preds = %.sink.split.i.i105
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !125
  %.not.i.i107 = icmp eq ptr %i.ih, null
  %i.ii = load ptr, ptr %i.hz, align 8, !tbaa !50
  %..i.i108 = select i1 %.not.i.i107, i64 8, i64 48
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %..i.i108
  %i.ik = load ptr, ptr %i.ij, align 8
  invoke void %i.ik(ptr noundef nonnull align 8 dereferenceable(64) %i.hz)
          to label %.body unwind label %bb.bb, !inline_history !124

bb.bb:                                            ; preds = %.noexc.i106, %.sink.split.i.i105
  %i.il = landingpad { ptr, i32 }
          catch ptr null
  %i.im = extractvalue { ptr, i32 } %i.il, 0
  call void @__clang_call_terminate(ptr %i.im) #41
  unreachable

_ZN8facebook5velox12_GLOBAL__N_112combineNullsERKSt6vectorINS1_15EncodingWrapperESaIS3_EEiPKmPNS0_6memory10MemoryPoolE.exit: ; preds = %bb.ap, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit.i.i, %bb.o, %bb.n
  %i.in = load ptr, ptr %13, align 8, !tbaa !109
  store ptr null, ptr %13, align 8, !tbaa !109
  %i.io = load ptr, ptr %12, align 8, !tbaa !109  ; 7 uses
  store ptr %i.in, ptr %12, align 8, !tbaa !109
  %.not.i.i52 = icmp eq ptr %i.io, null
  br i1 %.not.i.i52, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_112combineNullsERKSt6vectorINS1_15EncodingWrapperESaIS3_EEiPKmPNS0_6memory10MemoryPoolE.exit
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 40
  %i.iq = atomicrmw sub ptr %i.ip, i32 1 acq_rel, align 4
  %i.ir = icmp eq i32 %i.iq, 1
  br i1 %i.ir, label %.sink.split.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit

.sink.split.i.i.i:                                ; preds = %bb.bc
  %i.is = load ptr, ptr %i.io, align 8, !tbaa !50
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 64
  %i.iu = load ptr, ptr %i.it, align 8
  invoke void %i.iu(ptr noundef nonnull align 8 dereferenceable(64) %i.io)
          to label %.noexc.i.i53 unwind label %bb.bd, !inline_history !124

.noexc.i.i53:                                     ; preds = %.sink.split.i.i.i
  %i.iv = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !125
  %.not.i.i.i54 = icmp eq ptr %i.iw, null
  %i.ix = load ptr, ptr %i.io, align 8, !tbaa !50
  %..i.i.i = select i1 %.not.i.i.i54, i64 8, i64 48
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 %..i.i.i
  %i.iz = load ptr, ptr %i.iy, align 8
  invoke void %i.iz(ptr noundef nonnull align 8 dereferenceable(64) %i.io)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit unwind label %bb.bd, !inline_history !124

bb.bd:                                            ; preds = %.noexc.i.i53, %.sink.split.i.i.i
  %i.ja = landingpad { ptr, i32 }
          catch ptr null
  %i.jb = extractvalue { ptr, i32 } %i.ja, 0
  call void @__clang_call_terminate(ptr %i.jb) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit: ; preds = %bb.bc, %.noexc.i.i53
  %.pr = load ptr, ptr %13, align 8, !tbaa !109   ; 7 uses
  %.not.i55 = icmp eq ptr %.pr, null
  br i1 %.not.i55, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit
  %i.jc = getelementptr inbounds nuw i8, ptr %.pr, i64 40
  %i.jd = atomicrmw sub ptr %i.jc, i32 1 acq_rel, align 4
  %i.je = icmp eq i32 %i.jd, 1
  br i1 %i.je, label %.sink.split.i.i56, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i56:                                ; preds = %bb.be
  %i.jf = load ptr, ptr %.pr, align 8, !tbaa !50
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 64
  %i.jh = load ptr, ptr %i.jg, align 8
  invoke void %i.jh(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %.noexc.i57 unwind label %bb.bf, !inline_history !124

.noexc.i57:                                       ; preds = %.sink.split.i.i56
  %i.ji = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !125
  %.not.i.i58 = icmp eq ptr %i.jj, null
  %i.jk = load ptr, ptr %.pr, align 8, !tbaa !50
  %..i.i = select i1 %.not.i.i58, i64 8, i64 48
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 %..i.i
  %i.jm = load ptr, ptr %i.jl, align 8
  invoke void %i.jm(ptr noundef nonnull align 8 dereferenceable(64) %.pr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.bf, !inline_history !124

bb.bf:                                            ; preds = %.noexc.i57, %.sink.split.i.i56
  %i.jn = landingpad { ptr, i32 }
          catch ptr null
  %i.jo = extractvalue { ptr, i32 } %i.jn, 0
end_hunk_0
