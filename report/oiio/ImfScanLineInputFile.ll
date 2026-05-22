inline.NumInlined: 624
inline.NumDeleted: 357
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile4Data10readPixelsERKNS_11FrameBufferEii:bb.a
.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.i.loopexit, %.loopexit.split-lp.i.loopexit.split-lp, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit98, %.loopexit.split-lp.i.loopexit ], [ %lpad.loopexit.split-lp99, %.loopexit.split-lp.i.loopexit.split-lp ]
  call void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_54TaskD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(56) %i.cw) #22
  br label %.body65

bb.ar:                                            ; preds = %.noexc15.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  store ptr %.0.i.i, ptr %i.dy, align 8, !tbaa !172
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  store ptr %8, ptr %i.dz, align 8, !tbaa !173
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ea, ptr noundef nonnull readonly align 8 dereferenceable(64) %5, i64 64, i1 false), !tbaa.struct !174
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_510ThreadPool13addGlobalTaskEPNS_4TaskE(ptr noundef nonnull %i.cw)
          to label %bb.as unwind label %.loopexit

bb.as:                                            ; preds = %bb.ar
  %i.eb = load i32, ptr %i.a, align 4, !tbaa !3
  %i.ec = load i32, ptr %i.by, align 8, !tbaa !175
  %i.ed = add i32 %i.ec, %i.eb                    ; 2 uses
  %.not42 = icmp sgt i32 %i.ed, %spec.select97
  br i1 %.not42, label %bb.x, label %bb.af, !llvm.loop !176

bb.at:                                            ; preds = %bb.al
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body65

.body65:                                          ; preds = %.loopexit.split-lp.i, %bb.at
  %eh.lpad-body66 = phi { ptr, i32 } [ %i.ee, %bb.at ], [ %lpad.phi.i, %.loopexit.split-lp.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef 56) #23
  br label %bb.au

bb.au:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.body65, %bb.aj
  %.pn44 = phi { ptr, i32 } [ %eh.lpad-body66, %.body65 ], [ %i.cv, %bb.aj ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59TaskGroupD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #22
  br label %bb.av

_ZN33OpenImageIO_v3_1_IlmThread__3_3_512ProcessGroupIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessELb1EE16throw_on_failureEv.exit: ; preds = %bb.x
  call fastcc void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_512ProcessGroupIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.ca

bb.av:                                            ; preds = %bb.au, %bb.ae
  %.pn44.pn = phi { ptr, i32 } [ %.pn44, %bb.au ], [ %i.co, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %.body

bb.aw:                                            ; preds = %bb.y
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i, %bb.av
  %.pn44.pn.pn = phi { ptr, i32 } [ %.pn44.pn, %bb.av ], [ %i.ef, %bb.aw ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i ]
  call fastcc void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_512ProcessGroupIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.cb

bb.ax:                                            ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.eh = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.eg) #22, !noalias !177 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.eh, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZSt20__throw_system_errori(i32 noundef %i.eh) #24, !noalias !177
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %bb.ax
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %.val.i = load ptr, ptr %i.ei, align 8, !noalias !177 ; 3 uses
  %.not.i67 = icmp eq ptr %.val.i, null
  br i1 %.not.i67, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.ej = ptrtoint ptr %.val.i to i64
  store i64 %i.ej, ptr %10, align 8, !tbaa !180, !alias.scope !177
  store ptr null, ptr %i.ei, align 8, !tbaa !180, !noalias !177
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile4Data12checkoutScanEv.exit

bb.ba:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.ek = invoke noalias noundef nonnull dereferenceable(584) ptr @_Znwm(i64 noundef 584) #21
          to label %_ZSt11make_uniqueIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i unwind label %bb.bb, !noalias !177 ; 5 uses

_ZSt11make_uniqueIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i: ; preds = %bb.ba
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(584) %i.ek, i8 0, i64 584, i1 false), !noalias !184
  store i32 33, ptr %i.ek, align 8, !tbaa !123, !noalias !184
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  store i8 1, ptr %i.el, align 4, !tbaa !129, !noalias !184
  store ptr %i.ek, ptr %10, align 8, !tbaa !180, !alias.scope !184
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile4Data12checkoutScanEv.exit

bb.bb:                                            ; preds = %bb.ba
  %i.em = landingpad { ptr, i32 }
          cleanup
  %i.en = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.eg) #22, !noalias !177 ; 0 uses
  br label %common.resume

_ZN27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile4Data12checkoutScanEv.exit: ; preds = %bb.az, %_ZSt11make_uniqueIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i
  %.val58 = phi ptr [ %.val.i, %bb.az ], [ %i.ek, %_ZSt11make_uniqueIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i ] ; 16 uses
  %i.eo = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.eg) #22, !noalias !177 ; 0 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.val58, i64 4
  %i.eq = getelementptr inbounds nuw i8, ptr %.val58, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.val58, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %.val58, i64 168
  %i.eu = getelementptr inbounds nuw i8, ptr %.val58, i64 172 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.val58, i64 20
  %i.ew = getelementptr inbounds nuw i8, ptr %.val58, i64 88 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.val58, i64 80
  %i.ey = getelementptr inbounds nuw i8, ptr %.val58, i64 12
  %i.ez = getelementptr inbounds nuw i8, ptr %.val58, i64 72
  %i.fa = getelementptr inbounds nuw i8, ptr %.val58, i64 144
  %i.fb = getelementptr inbounds nuw i8, ptr %.val58, i64 328
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.fd = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.bh

bb.bc:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcess10run_unpackEPK19_priv_exr_context_tiPKNS_11FrameBufferEiiRKSt6vectorINS_5SliceESaIS9_EE.exit
  %i.fe = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.eg) #22 ; 2 uses
  %.not.i.i.i68 = icmp eq i32 %i.fe, 0
  br i1 %.not.i.i.i68, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i69, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.fe) #24
          to label %.noexc71 unwind label %bb.bz

.noexc71:                                         ; preds = %bb.bd
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i69:      ; preds = %bb.bc
  %i.ff = load ptr, ptr %10, align 8, !tbaa !180
  %i.fg = load ptr, ptr %i.ei, align 8, !tbaa !180 ; 5 uses
  store ptr %i.ff, ptr %i.ei, align 8, !tbaa !180
  %.not.i.i.i.i.i70 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i.i.i70, label %_ZNSt10unique_ptrIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessESt14default_deleteIS2_EED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i69
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fi = load i8, ptr %i.fh, align 4, !tbaa !129, !range !87, !noundef !88
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %_ZNKSt14default_deleteIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessEEclEPS2_.exit.i.i.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 72
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 96
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !185
  %i.fn = invoke i32 @exr_decoding_destroy(ptr noundef %i.fm, ptr noundef nonnull %i.fk)
          to label %_ZNKSt14default_deleteIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessEEclEPS2_.exit.i.i.i.i.i unwind label %bb.bg ; 0 uses

bb.bg:                                            ; preds = %bb.bf
  %i.fo = landingpad { ptr, i32 }
          catch ptr null
  %i.fp = extractvalue { ptr, i32 } %i.fo, 0
  call void @__clang_call_terminate(ptr %i.fp) #26
  unreachable

_ZNKSt14default_deleteIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessEEclEPS2_.exit.i.i.i.i.i: ; preds = %bb.bf, %bb.be
  call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef 584) #23
  br label %_ZNSt10unique_ptrIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessESt14default_deleteIS2_EED2Ev.exit

bb.bh:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile4Data12checkoutScanEv.exit, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcess10run_unpackEPK19_priv_exr_context_tiPKNS_11FrameBufferEiiRKSt6vectorINS_5SliceESaIS9_EE.exit
  %.0114 = phi i32 [ %spec.select, %_ZN27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile4Data12checkoutScanEv.exit ], [ %i.it, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcess10run_unpackEPK19_priv_exr_context_tiPKNS_11FrameBufferEiiRKSt6vectorINS_5SliceESaIS9_EE.exit ] ; 5 uses
  %i.fq = load ptr, ptr %0, align 8, !tbaa !24
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !117
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !121
  %i.ft = load i32, ptr %i.c, align 8, !tbaa !70
  %i.fu = invoke i32 @exr_read_scanline_chunk_info(ptr noundef %i.fs, i32 noundef %i.ft, i32 noundef %.0114, ptr noundef nonnull %5)
          to label %bb.bi unwind label %.loopexit.split-lp102.loopexit

bb.bi:                                            ; preds = %bb.bh
  %.not39 = icmp eq i32 %i.fu, 0
  br i1 %.not39, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fv = call ptr @__cxa_allocate_exception(i64 72) #22 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.fv, ptr noundef nonnull @.str.16)
          to label %.invoke unwind label %bb.bk

.loopexit101:                                     ; preds = %.lr.ph.i.i
  %lpad.loopexit103 = landingpad { ptr, i32 }
          cleanup
  br label %.body77

.loopexit.split-lp102.loopexit:                   ; preds = %bb.bx, %bb.bu, %bb.by, %bb.bh
  %lpad.loopexit106 = landingpad { ptr, i32 }
          cleanup
  br label %.body77

.loopexit.split-lp102.loopexit.split-lp:          ; preds = %.invoke
  %lpad.loopexit.split-lp107 = landingpad { ptr, i32 }
          cleanup
  br label %.body77

bb.bk:                                            ; preds = %bb.bj
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fv) #22
  br label %.body77

bb.bl:                                            ; preds = %bb.bi
  %i.fx = load i8, ptr %i.ep, align 4, !tbaa !129, !range !87, !noundef !88
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %bb.by, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fz = load i32, ptr %i.eq, align 8, !tbaa !186
  %i.ga = load i32, ptr %5, align 8, !tbaa !187
  %i.gb = icmp eq i32 %i.fz, %i.ga
  br i1 %i.gb, label %bb.bn, label %bb.by

bb.bn:                                            ; preds = %bb.bm
  %i.gc = load i32, ptr %.val58, align 8, !tbaa !123
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.bo, label %bb.by

bb.bo:                                            ; preds = %bb.bn
  %i.ge = load i32, ptr %i.es, align 8, !tbaa !188 ; 2 uses
  %i.gf = sub nsw i32 %.0114, %i.ge
  store i32 %i.gf, ptr %i.et, align 8, !tbaa !189
  store i32 0, ptr %i.eu, align 4, !tbaa !190
  %i.gg = sext i32 %i.ge to i64
  %i.gh = load i32, ptr %i.ev, align 4, !tbaa !191
  %i.gi = sext i32 %i.gh to i64
  %i.gj = add nsw i64 %i.gg, -1
  %i.gk = add nsw i64 %i.gj, %i.gi                ; 2 uses
  %i.gl = icmp sgt i64 %i.gk, %i.aj
  br i1 %i.gl, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.gm = trunc i64 %i.gk to i32
  %i.gn = sub i32 %i.gm, %spec.select97
  store i32 %i.gn, ptr %i.eu, align 4, !tbaa !190
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.go = load i16, ptr %i.ew, align 8, !tbaa !192
  %i.gp = icmp sgt i16 %i.go, 0
  br i1 %i.gp, label %.lr.ph.i.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_11FrameBufferEii.exit.i

.lr.ph.i.i:                                       ; preds = %bb.bq, %bb.bs
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.bs ], [ 0, %bb.bq ] ; 2 uses
  %i.gq = load ptr, ptr %i.ex, align 8, !tbaa !193
  %i.gr = getelementptr inbounds nuw [48 x i8], ptr %i.gq, i64 %indvars.iv.i.i ; 7 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !194
  %i.gt = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511FrameBuffer9findSliceEPKc(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.gs)
          to label %.noexc74 unwind label %.loopexit101 ; 7 uses

.noexc74:                                         ; preds = %.lr.ph.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !196
  %i.gw = icmp ne i32 %i.gv, 0
  %i.gx = icmp ne ptr %i.gt, null
  %or.cond.i.i = and i1 %i.gx, %i.gw
  br i1 %or.cond.i.i, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.noexc74
  %i.gy = load i32, ptr %i.gt, align 8, !tbaa !197 ; 2 uses
  %i.gz = icmp eq i32 %i.gy, 1
  %i.ha = select i1 %i.gz, i16 2, i16 4
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gr, i64 28
  store i16 %i.ha, ptr %i.hb, align 4, !tbaa !198
  %i.hc = trunc i32 %i.gy to i16
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gr, i64 30
  store i16 %i.hc, ptr %i.hd, align 2, !tbaa !199
  %i.he = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !200 ; 2 uses
  %i.hg = trunc i64 %i.hf to i32
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !201 ; 2 uses
  %i.hj = trunc i64 %i.hi to i32
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !202
  %i.hm = load i32, ptr %i.ey, align 4, !tbaa !203
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !110
  %i.hp = sdiv i32 %i.hm, %i.ho
  %i.hq = sext i32 %i.hp to i64
  %i.hr = mul nsw i64 %i.hf, %i.hq
  %i.hs = getelementptr inbounds i8, ptr %i.hl, i64 %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gt, i64 36
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !113
  %i.hv = sdiv i32 %.0114, %i.hu
  %i.hw = sext i32 %i.hv to i64
  %i.hx = mul nsw i64 %i.hi, %i.hw
  %i.hy = getelementptr inbounds i8, ptr %i.hs, i64 %i.hx
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.noexc74
  %.sink40.i.i = phi i32 [ %i.hg, %bb.br ], [ 0, %.noexc74 ]
  %.sink39.i.i = phi i32 [ %i.hj, %bb.br ], [ 0, %.noexc74 ]
  %.sink.i.i = phi ptr [ %i.hy, %bb.br ], [ null, %.noexc74 ]
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  store i32 %.sink40.i.i, ptr %i.hz, align 8, !tbaa !204
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gr, i64 36
  store i32 %.sink39.i.i, ptr %i.ia, align 4, !tbaa !205
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gr, i64 40
  store ptr %.sink.i.i, ptr %i.ib, align 8, !tbaa !12
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ic = load i16, ptr %i.ew, align 8, !tbaa !192
  %i.id = sext i16 %i.ic to i64
  %i.ie = icmp slt i64 %indvars.iv.next.i.i, %i.id
  br i1 %i.ie, label %.lr.ph.i.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_11FrameBufferEii.exit.i, !llvm.loop !206

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_11FrameBufferEii.exit.i: ; preds = %bb.bs, %bb.bq
  %i.if = load i64, ptr %i.fa, align 8, !tbaa !207
  %.not.i72 = icmp eq i64 %i.if, 0
  br i1 %.not.i72, label %bb.bx, label %bb.bt

bb.bt:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_11FrameBufferEii.exit.i
  %i.ig = load ptr, ptr %i.fb, align 8, !tbaa !208 ; 2 uses
  %.not8.i = icmp eq ptr %i.ig, null
  br i1 %.not8.i, label %bb.bx, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ih = invoke noundef i32 %i.ig(ptr noundef nonnull %i.ez)
          to label %.noexc75 unwind label %.loopexit.split-lp102.loopexit, !inline_history !209 ; 2 uses

.noexc75:                                         ; preds = %bb.bu
  store i32 %i.ih, ptr %.val58, align 8, !tbaa !123
  %.not9.i = icmp eq i32 %i.ih, 0
  br i1 %.not9.i, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %.noexc75
  %i.ii = call ptr @__cxa_allocate_exception(i64 72) #22 ; 3 uses
  invoke void @_ZN7Iex_3_35IoExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ii, ptr noundef nonnull @.str.23)
          to label %.invoke unwind label %bb.bw

.invoke:                                          ; preds = %bb.bj, %bb.bv
  %i.ij = phi ptr [ %i.ii, %bb.bv ], [ %i.fv, %bb.bj ]
  %i.ik = phi ptr [ @_ZTIN7Iex_3_35IoExcE, %bb.bv ], [ @_ZTIN7Iex_3_38InputExcE, %bb.bj ]
  %i.il = phi ptr [ @_ZN7Iex_3_35IoExcD1Ev, %bb.bv ], [ @_ZN7Iex_3_38InputExcD1Ev, %bb.bj ]
  invoke void @__cxa_throw(ptr nonnull %i.ij, ptr nonnull %i.ik, ptr nonnull %i.il) #24
          to label %.cont unwind label %.loopexit.split-lp102.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.bw:                                            ; preds = %bb.bv
  %i.im = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ii) #22
  br label %.body77

bb.bx:                                            ; preds = %.noexc75, %bb.bt, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_11FrameBufferEii.exit.i
  %.val.i73 = load ptr, ptr %i.er, align 8, !tbaa !210
  %.val10.i = load ptr, ptr %i.fc, align 8, !tbaa !210
  invoke fastcc void @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcess8run_fillEPKNS_11FrameBufferEiRKSt6vectorINS_5SliceESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(584) %.val58, i32 noundef %.0114, ptr %.val.i73, ptr %.val10.i)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcess10run_unpackEPK19_priv_exr_context_tiPKNS_11FrameBufferEiiRKSt6vectorINS_5SliceESaIS9_EE.exit unwind label %.loopexit.split-lp102.loopexit

bb.by:                                            ; preds = %bb.bn, %bb.bm, %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.eq, ptr noundef nonnull align 8 dereferenceable(64) %5, i64 64, i1 false), !tbaa.struct !174
  %i.in = load ptr, ptr %0, align 8, !tbaa !24
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !117
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !121
  %i.iq = load i32, ptr %i.c, align 8, !tbaa !70
  invoke fastcc void @_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcess10run_decodeEPK19_priv_exr_context_tiPKNS_11FrameBufferEiiRKSt6vectorINS_5SliceESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(584) %.val58, ptr noundef %i.ip, i32 noundef %i.iq, ptr noundef nonnull %1, i32 noundef %.0114, i32 noundef %spec.select97, ptr noundef nonnull align 8 dereferenceable(24) %i.er)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcess10run_unpackEPK19_priv_exr_context_tiPKNS_11FrameBufferEiiRKSt6vectorINS_5SliceESaIS9_EE.exit unwind label %.loopexit.split-lp102.loopexit

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcess10run_unpackEPK19_priv_exr_context_tiPKNS_11FrameBufferEiiRKSt6vectorINS_5SliceESaIS9_EE.exit: ; preds = %bb.bx, %bb.by
  %i.ir = load i32, ptr %i.a, align 4, !tbaa !3
  %i.is = load i32, ptr %i.fd, align 8, !tbaa !175
  %i.it = add i32 %i.is, %i.ir                    ; 2 uses
  %.not38 = icmp sgt i32 %i.it, %spec.select97
  br i1 %.not38, label %bb.bc, label %bb.bh, !llvm.loop !211

_ZNSt10unique_ptrIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i69, %_ZNKSt14default_deleteIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessEEclEPS2_.exit.i.i.i.i.i
  %i.iu = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.eg) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bd
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %.body77

.body77:                                          ; preds = %.loopexit101, %.loopexit.split-lp102.loopexit.split-lp, %.loopexit.split-lp102.loopexit, %bb.bw, %bb.bk, %bb.bz
  %.pn.pn = phi { ptr, i32 } [ %i.iv, %bb.bz ], [ %i.fw, %bb.bk ], [ %i.im, %bb.bw ], [ %lpad.loopexit103, %.loopexit101 ], [ %lpad.loopexit106, %.loopexit.split-lp102.loopexit ], [ %lpad.loopexit.split-lp107, %.loopexit.split-lp102.loopexit.split-lp ]
  call fastcc void @_ZNSt10unique_ptrIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.cb

bb.ca:                                            ; preds = %_ZNSt10unique_ptrIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessESt14default_deleteIS2_EED2Ev.exit, %_ZN33OpenImageIO_v3_1_IlmThread__3_3_512ProcessGroupIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessELb1EE16throw_on_failureEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.cb:                                            ; preds = %.body, %.body77, %bb.r, %bb.h
  %.pn51.pn = phi { ptr, i32 } [ %.pn51, %bb.h ], [ %.pn49, %bb.r ], [ %.pn44.pn.pn, %.body ], [ %.pn.pn, %.body77 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %common.resume

bb.cc:                                            ; preds = %bb.ai, %bb.o, %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile10readPixelsERKNS_11FrameBufferEii(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile4Data10readPixelsERKNS_11FrameBufferEii(ptr noundef nonnull align 8 dereferenceable(224) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile10readPixelsEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 2 uses
  %i.d = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #22 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile10readPixelsEii.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #24
  unreachable

_ZN27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile10readPixelsEii.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.g = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #22 ; 0 uses
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile4Data10readPixelsERKNS_11FrameBufferEii(ptr noundef nonnull align 8 dereferenceable(224) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i32 noundef %1, i32 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile12rawPixelDataEiRPKcRi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 0, ptr %i.a, align 8, !tbaa !96
  %i.b = load ptr, ptr %0, align 8, !tbaa !117
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !70
  %i.h = call i32 @exr_get_chunk_unpacked_size(ptr noundef %i.c, i32 noundef %i.g, ptr noundef nonnull %i.a)
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_Z13iex_debugTrapv()
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.3, i64 noundef 44)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.k = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57Context8fileNameEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZNK27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile8fileNameEv.exit unwind label %bb.e

_ZNK27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile8fileNameEv.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %i.k)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile8fileNameEv.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10: ; preds = %bb.c
  %i.n = call ptr @__cxa_allocate_exception(i64 72) #22 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.n, ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #24
          to label %bb.n unwind label %bb.e

bb.e:                                             ; preds = %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %bb.d, %_ZNK27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile8fileNameEv.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.n) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.p, %bb.f ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 184 ; 3 uses
  %i.s = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.r) #22 ; 2 uses
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_system_errori(i32 noundef %i.s) #24
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.h
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.v = load i64, ptr %i.a, align 8, !tbaa !96
  invoke void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 noundef %i.v)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !212  ; 2 uses
  store ptr %i.y, ptr %2, align 8, !tbaa !95
  %i.z = load i64, ptr %i.a, align 8, !tbaa !96
  %i.aa = trunc i64 %i.z to i32
  store i32 %i.aa, ptr %3, align 4, !tbaa !3
  invoke void @_ZNK27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile20rawPixelDataToBufferEiPcRi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %i.y, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.r) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void

bb.l:                                             ; preds = %bb.j, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.r) #22 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.g ], [ %i.ac, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  resume { ptr, i32 } %.pn.pn

bb.n:                                             ; preds = %bb.d
  unreachable
}

declare i32 @exr_get_chunk_unpacked_size(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213  ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !212    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !214
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28.i = icmp ult i64 %i.l, %i.h
  br i1 %.not28.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.q = add nsw i64 %i.h, -1                     ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.b, i64 %i.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.q, i1 false)
end_hunk_0
