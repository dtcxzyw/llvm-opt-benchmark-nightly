Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfScanLineInputFile?download=true
inline.NumInlined: 627
inline.NumDeleted: 358
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7Imf_3_417ScanLineInputFile4Data10readPixelsERKNS_11FrameBufferEii:bb.a
  br label %bb.ce

bb.az:                                            ; preds = %bb.ay, %bb.ai
  %.pn44.pn = phi { ptr, i32 } [ %.pn44, %bb.ay ], [ %i.cu, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %.body

bb.ba:                                            ; preds = %bb.ac
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i, %bb.az
  %.pn44.pn.pn = phi { ptr, i32 } [ %.pn44.pn, %bb.az ], [ %i.el, %bb.ba ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i ]
  call fastcc void @_ZN13IlmThread_3_412ProcessGroupIN7Imf_3_412_GLOBAL__N_115ScanLineProcessELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.cf

bb.bb:                                            ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.en = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.em) #22, !noalias !221 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.en, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @_ZSt20__throw_system_errori(i32 noundef %i.en) #24, !noalias !221
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %bb.bb
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %.val.i = load ptr, ptr %i.eo, align 8, !noalias !221 ; 3 uses
  %.not.i67 = icmp eq ptr %.val.i, null
  br i1 %.not.i67, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.ep = ptrtoint ptr %.val.i to i64
  store i64 %i.ep, ptr %10, align 8, !tbaa !86, !alias.scope !221
  store ptr null, ptr %i.eo, align 8, !tbaa !86, !noalias !221
  br label %_ZN7Imf_3_417ScanLineInputFile4Data12checkoutScanEv.exit

bb.be:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.eq = invoke noalias noundef nonnull dereferenceable(584) ptr @_Znwm(i64 noundef 584) #21
          to label %_ZSt11make_uniqueIN7Imf_3_412_GLOBAL__N_115ScanLineProcessEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i unwind label %bb.bf, !noalias !221 ; 5 uses

_ZSt11make_uniqueIN7Imf_3_412_GLOBAL__N_115ScanLineProcessEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i: ; preds = %bb.be
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(584) %i.eq, i8 0, i64 584, i1 false), !noalias !223
  store i32 33, ptr %i.eq, align 16, !tbaa !109, !noalias !223
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  store i8 1, ptr %i.er, align 4, !tbaa !93, !noalias !223
  store ptr %i.eq, ptr %10, align 8, !tbaa !86, !alias.scope !223
  br label %_ZN7Imf_3_417ScanLineInputFile4Data12checkoutScanEv.exit

bb.bf:                                            ; preds = %bb.be
  %i.es = landingpad { ptr, i32 }
          cleanup
  %i.et = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.em) #22, !noalias !221 ; 0 uses
  br label %common.resume

_ZN7Imf_3_417ScanLineInputFile4Data12checkoutScanEv.exit: ; preds = %bb.bd, %_ZSt11make_uniqueIN7Imf_3_412_GLOBAL__N_115ScanLineProcessEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i
  %i.eu = phi ptr [ %.val.i, %bb.bd ], [ %i.eq, %_ZSt11make_uniqueIN7Imf_3_412_GLOBAL__N_115ScanLineProcessEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i ] ; 17 uses
  %i.ev = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.em) #22, !noalias !221 ; 0 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 168
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eu, i64 172 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eu, i64 20
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eu, i64 88 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eu, i64 80
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eu, i64 72
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eu, i64 144
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eu, i64 328
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.fk = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.bl

bb.bg:                                            ; preds = %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess10run_unpackEPK19_priv_exr_context_tiPKNS_11FrameBufferEiiRKSt6vectorINS_5SliceESaIS9_EE.exit
  %i.fl = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.em) #22 ; 2 uses
  %.not.i.i.i68 = icmp eq i32 %i.fl, 0
  br i1 %.not.i.i.i68, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i69, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.fl) #24
          to label %.noexc71 unwind label %bb.cd

.noexc71:                                         ; preds = %bb.bh
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i69:      ; preds = %bb.bg
  %i.fm = load ptr, ptr %i.eo, align 8, !tbaa !86 ; 5 uses
  store ptr %i.eu, ptr %i.eo, align 8, !tbaa !86
  %.not.i.i.i.i.i70 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i.i.i70, label %_ZNSt10unique_ptrIN7Imf_3_412_GLOBAL__N_115ScanLineProcessESt14default_deleteIS2_EED2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i69
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  %i.fo = load i8, ptr %i.fn, align 4, !tbaa !93, !range !83, !noundef !84
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %_ZNKSt14default_deleteIN7Imf_3_412_GLOBAL__N_115ScanLineProcessEEclEPS2_.exit.i.i.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 72
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 96
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !94
  %i.ft = invoke i32 @exr_decoding_destroy(ptr noundef %i.fs, ptr noundef nonnull %i.fq)
          to label %_ZNKSt14default_deleteIN7Imf_3_412_GLOBAL__N_115ScanLineProcessEEclEPS2_.exit.i.i.i.i.i unwind label %bb.bk ; 0 uses

bb.bk:                                            ; preds = %bb.bj
  %i.fu = landingpad { ptr, i32 }
          catch ptr null
  %i.fv = extractvalue { ptr, i32 } %i.fu, 0
  call void @__clang_call_terminate(ptr %i.fv) #25
  unreachable

_ZNKSt14default_deleteIN7Imf_3_412_GLOBAL__N_115ScanLineProcessEEclEPS2_.exit.i.i.i.i.i: ; preds = %bb.bj, %bb.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef 584) #23
  br label %_ZNSt10unique_ptrIN7Imf_3_412_GLOBAL__N_115ScanLineProcessESt14default_deleteIS2_EED2Ev.exit

bb.bl:                                            ; preds = %_ZN7Imf_3_417ScanLineInputFile4Data12checkoutScanEv.exit, %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess10run_unpackEPK19_priv_exr_context_tiPKNS_11FrameBufferEiiRKSt6vectorINS_5SliceESaIS9_EE.exit
  %.0114 = phi i32 [ %spec.select, %_ZN7Imf_3_417ScanLineInputFile4Data12checkoutScanEv.exit ], [ %i.ir, %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess10run_unpackEPK19_priv_exr_context_tiPKNS_11FrameBufferEiiRKSt6vectorINS_5SliceESaIS9_EE.exit ] ; 5 uses
  %i.fw = load ptr, ptr %0, align 8, !tbaa !62
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !107
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !108
  %i.fz = load i32, ptr %i.c, align 8, !tbaa !71
  %i.ga = invoke i32 @exr_read_scanline_chunk_info(ptr noundef %i.fy, i32 noundef %i.fz, i32 noundef %.0114, ptr noundef nonnull %5)
          to label %bb.bm unwind label %.loopexit.split-lp102.loopexit

bb.bm:                                            ; preds = %bb.bl
  %.not39 = icmp eq i32 %i.ga, 0
  br i1 %.not39, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gb = call ptr @__cxa_allocate_exception(i64 72) #22 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.gb, ptr noundef nonnull @.str.16)
          to label %.invoke unwind label %bb.bo

.loopexit101:                                     ; preds = %.lr.ph.i.i
  %lpad.loopexit103 = landingpad { ptr, i32 }
          cleanup
  br label %.body77

.loopexit.split-lp102.loopexit:                   ; preds = %bb.cb, %bb.by, %bb.cc, %bb.bl
  %lpad.loopexit106 = landingpad { ptr, i32 }
          cleanup
  br label %.body77

.loopexit.split-lp102.loopexit.split-lp:          ; preds = %.invoke
  %lpad.loopexit.split-lp107 = landingpad { ptr, i32 }
          cleanup
  br label %.body77

bb.bo:                                            ; preds = %bb.bn
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.gb) #22
  br label %.body77

bb.bp:                                            ; preds = %bb.bm
  %i.gd = load i8, ptr %i.ew, align 4, !tbaa !93, !range !83, !noundef !84
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %bb.cc, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gf = load i32, ptr %i.ex, align 8, !tbaa !224
  %i.gg = load i32, ptr %5, align 8, !tbaa !225
  %i.gh = icmp eq i32 %i.gf, %i.gg
  br i1 %i.gh, label %bb.br, label %bb.cc

bb.br:                                            ; preds = %bb.bq
  %i.gi = load i32, ptr %i.eu, align 8, !tbaa !109
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %bb.bs, label %bb.cc

bb.bs:                                            ; preds = %bb.br
  %i.gk = load i32, ptr %i.ez, align 8, !tbaa !129 ; 2 uses
  %i.gl = sub nsw i32 %.0114, %i.gk
  store i32 %i.gl, ptr %i.fa, align 8, !tbaa !130
  store i32 0, ptr %i.fb, align 4, !tbaa !131
  %i.gm = sext i32 %i.gk to i64
  %i.gn = load i32, ptr %i.fc, align 4, !tbaa !132
  %i.go = sext i32 %i.gn to i64
  %i.gp = add nsw i64 %i.gm, -1
  %i.gq = add nsw i64 %i.gp, %i.go                ; 2 uses
  %i.gr = icmp sgt i64 %i.gq, %i.aj
  br i1 %i.gr, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.gs = trunc i64 %i.gq to i32
  %i.gt = sub i32 %i.gs, %spec.select97
  store i32 %i.gt, ptr %i.fb, align 4, !tbaa !131
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.gu = load i16, ptr %i.fd, align 8, !tbaa !133
  %i.gv = icmp sgt i16 %i.gu, 0
  br i1 %i.gv, label %.lr.ph.i.i, label %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_11FrameBufferEii.exit.i

.lr.ph.i.i:                                       ; preds = %bb.bu, %bb.bw
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.bw ], [ 0, %bb.bu ] ; 2 uses
  %i.gw = load ptr, ptr %i.fe, align 8, !tbaa !134
  %i.gx = getelementptr inbounds nuw [48 x i8], ptr %i.gw, i64 %indvars.iv.i.i ; 7 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !136
  %i.gz = invoke noundef ptr @_ZNK7Imf_3_411FrameBuffer9findSliceEPKc(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.gy)
          to label %.noexc74 unwind label %.loopexit101 ; 7 uses

.noexc74:                                         ; preds = %.lr.ph.i.i
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !137
  %i.hc = icmp ne i32 %i.hb, 0
  %i.hd = icmp ne ptr %i.gz, null
  %or.cond.i.i = and i1 %i.hd, %i.hc
  br i1 %or.cond.i.i, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %.noexc74
  %i.he = load i32, ptr %i.gz, align 8, !tbaa !138 ; 2 uses
  %i.hf = icmp eq i32 %i.he, 1
  %i.hg = select i1 %i.hf, i16 2, i16 4
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gx, i64 28
  store i16 %i.hg, ptr %i.hh, align 4, !tbaa !139
  %i.hi = trunc i32 %i.he to i16
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gx, i64 30
  store i16 %i.hi, ptr %i.hj, align 2, !tbaa !140
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !141 ; 2 uses
  %i.hm = trunc i64 %i.hl to i32
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !142 ; 2 uses
  %i.hp = trunc i64 %i.ho to i32
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !143
  %i.hs = load i32, ptr %i.ff, align 4, !tbaa !144
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  %11 = load i32, ptr %i.ht, align 8, !tbaa !102
  %12 = sdiv i32 %i.hs, %11
  %13 = sext i32 %12 to i64
  %14 = mul nsw i64 %i.hl, %13
  %15 = getelementptr inbounds i8, ptr %i.hr, i64 %14
  %16 = getelementptr inbounds nuw i8, ptr %i.gz, i64 36
  %17 = load i32, ptr %16, align 4, !tbaa !103
  %18 = sdiv i32 %.0114, %17
  %i.hu = sext i32 %18 to i64
  %i.hv = mul nsw i64 %i.ho, %i.hu
  %i.hw = getelementptr inbounds i8, ptr %15, i64 %i.hv
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %.noexc74
  %.sink40.i.i = phi i32 [ %i.hm, %bb.bv ], [ 0, %.noexc74 ]
  %.sink39.i.i = phi i32 [ %i.hp, %bb.bv ], [ 0, %.noexc74 ]
  %.sink.i.i = phi ptr [ %i.hw, %bb.bv ], [ null, %.noexc74 ]
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  store i32 %.sink40.i.i, ptr %i.hx, align 8, !tbaa !145
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gx, i64 36
  store i32 %.sink39.i.i, ptr %i.hy, align 4, !tbaa !146
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
  store ptr %.sink.i.i, ptr %i.hz, align 8, !tbaa !15
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ia = load i16, ptr %i.fd, align 8, !tbaa !133
  %i.ib = sext i16 %i.ia to i64
  %i.ic = icmp slt i64 %indvars.iv.next.i.i, %i.ib
  br i1 %i.ic, label %.lr.ph.i.i, label %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_11FrameBufferEii.exit.i, !llvm.loop !0

_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_11FrameBufferEii.exit.i: ; preds = %bb.bw, %bb.bu
  %i.id = load i64, ptr %i.fh, align 8, !tbaa !226
  %.not.i72 = icmp eq i64 %i.id, 0
  br i1 %.not.i72, label %bb.cb, label %bb.bx

bb.bx:                                            ; preds = %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_11FrameBufferEii.exit.i
  %i.ie = load ptr, ptr %i.fi, align 8, !tbaa !227 ; 2 uses
  %.not8.i = icmp eq ptr %i.ie, null
  br i1 %.not8.i, label %bb.cb, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.if = invoke noundef i32 %i.ie(ptr noundef nonnull %i.fg)
          to label %.noexc75 unwind label %.loopexit.split-lp102.loopexit, !inline_history !195 ; 2 uses

.noexc75:                                         ; preds = %bb.by
  store i32 %i.if, ptr %i.eu, align 8, !tbaa !109
  %.not9.i = icmp eq i32 %i.if, 0
  br i1 %.not9.i, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %.noexc75
  %i.ig = call ptr @__cxa_allocate_exception(i64 72) #22 ; 3 uses
  invoke void @_ZN7Iex_3_45IoExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ig, ptr noundef nonnull @.str.23)
          to label %.invoke unwind label %bb.ca

.invoke:                                          ; preds = %bb.bn, %bb.bz
  %i.ih = phi ptr [ %i.ig, %bb.bz ], [ %i.gb, %bb.bn ]
  %i.ii = phi ptr [ @_ZTIN7Iex_3_45IoExcE, %bb.bz ], [ @_ZTIN7Iex_3_48InputExcE, %bb.bn ]
  %i.ij = phi ptr [ @_ZN7Iex_3_45IoExcD1Ev, %bb.bz ], [ @_ZN7Iex_3_48InputExcD1Ev, %bb.bn ]
  invoke void @__cxa_throw(ptr nonnull %i.ih, ptr nonnull %i.ii, ptr nonnull %i.ij) #24
          to label %.cont unwind label %.loopexit.split-lp102.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ca:                                            ; preds = %bb.bz
  %i.ik = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ig) #22
  br label %.body77

bb.cb:                                            ; preds = %.noexc75, %bb.bx, %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_11FrameBufferEii.exit.i
  %.val.i73 = load ptr, ptr %i.ey, align 8, !tbaa !147
  %.val10.i = load ptr, ptr %i.fj, align 8, !tbaa !147
  invoke fastcc void @_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess8run_fillEPKNS_11FrameBufferEiRKSt6vectorINS_5SliceESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(584) %i.eu, i32 noundef %.0114, ptr %.val.i73, ptr %.val10.i)
          to label %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess10run_unpackEPK19_priv_exr_context_tiPKNS_11FrameBufferEiiRKSt6vectorINS_5SliceESaIS9_EE.exit unwind label %.loopexit.split-lp102.loopexit

bb.cc:                                            ; preds = %bb.br, %bb.bq, %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ex, ptr noundef nonnull align 8 dereferenceable(64) %5, i64 64, i1 false), !tbaa.struct !219
  %i.il = load ptr, ptr %0, align 8, !tbaa !62
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !107
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !108
  %i.io = load i32, ptr %i.c, align 8, !tbaa !71
  invoke fastcc void @_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess10run_decodeEPK19_priv_exr_context_tiPKNS_11FrameBufferEiiRKSt6vectorINS_5SliceESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(584) %i.eu, ptr noundef %i.in, i32 noundef %i.io, ptr noundef nonnull %1, i32 noundef %.0114, i32 noundef %spec.select97, ptr noundef nonnull align 8 dereferenceable(24) %i.ey)
          to label %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess10run_unpackEPK19_priv_exr_context_tiPKNS_11FrameBufferEiiRKSt6vectorINS_5SliceESaIS9_EE.exit unwind label %.loopexit.split-lp102.loopexit

_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess10run_unpackEPK19_priv_exr_context_tiPKNS_11FrameBufferEiiRKSt6vectorINS_5SliceESaIS9_EE.exit: ; preds = %bb.cb, %bb.cc
  %i.ip = load i32, ptr %i.a, align 4, !tbaa !16
  %i.iq = load i32, ptr %i.fk, align 8, !tbaa !220
  %i.ir = add i32 %i.iq, %i.ip                    ; 2 uses
  %.not38 = icmp sgt i32 %i.ir, %spec.select97
  br i1 %.not38, label %bb.bg, label %bb.bl, !llvm.loop !196

_ZNSt10unique_ptrIN7Imf_3_412_GLOBAL__N_115ScanLineProcessESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i69, %_ZNKSt14default_deleteIN7Imf_3_412_GLOBAL__N_115ScanLineProcessEEclEPS2_.exit.i.i.i.i.i
  %i.is = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.em) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.ce

bb.cd:                                            ; preds = %bb.bh
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %.body77

.body77:                                          ; preds = %.loopexit101, %.loopexit.split-lp102.loopexit.split-lp, %.loopexit.split-lp102.loopexit, %bb.ca, %bb.bo, %bb.cd
  %.pn.pn = phi { ptr, i32 } [ %i.it, %bb.cd ], [ %i.gc, %bb.bo ], [ %i.ik, %bb.ca ], [ %lpad.loopexit103, %.loopexit101 ], [ %lpad.loopexit106, %.loopexit.split-lp102.loopexit ], [ %lpad.loopexit.split-lp107, %.loopexit.split-lp102.loopexit.split-lp ]
  call fastcc void @_ZNSt10unique_ptrIN7Imf_3_412_GLOBAL__N_115ScanLineProcessESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.cf

bb.ce:                                            ; preds = %_ZNSt10unique_ptrIN7Imf_3_412_GLOBAL__N_115ScanLineProcessESt14default_deleteIS2_EED2Ev.exit, %_ZN13IlmThread_3_412ProcessGroupIN7Imf_3_412_GLOBAL__N_115ScanLineProcessELb1EE16throw_on_failureEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.cf:                                            ; preds = %.body, %.body77, %bb.r, %bb.h
  %.pn51.pn = phi { ptr, i32 } [ %.pn51, %bb.h ], [ %.pn49, %bb.r ], [ %.pn44.pn.pn, %.body ], [ %.pn.pn, %.body77 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %common.resume

bb.cg:                                            ; preds = %bb.am, %bb.o, %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_417ScanLineInputFile10readPixelsERKNS_11FrameBufferEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  tail call void @_ZN7Imf_3_417ScanLineInputFile4Data10readPixelsERKNS_11FrameBufferEii(ptr noundef nonnull align 8 dereferenceable(224) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_417ScanLineInputFile10readPixelsEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 2 uses
  %i.d = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #22 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZN7Imf_3_417ScanLineInputFile10readPixelsEii.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #24
  unreachable

_ZN7Imf_3_417ScanLineInputFile10readPixelsEii.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.g = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #22 ; 0 uses
  tail call void @_ZN7Imf_3_417ScanLineInputFile4Data10readPixelsERKNS_11FrameBufferEii(ptr noundef nonnull align 8 dereferenceable(224) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i32 noundef %1, i32 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_417ScanLineInputFile12rawPixelDataEiRPKcRi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 0, ptr %i.a, align 8, !tbaa !98
  %i.b = load ptr, ptr %0, align 8, !tbaa !107
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !108
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !71
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
  %i.k = invoke noundef ptr @_ZNK7Imf_3_47Context8fileNameEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZNK7Imf_3_417ScanLineInputFile8fileNameEv.exit unwind label %bb.e

_ZNK7Imf_3_417ScanLineInputFile8fileNameEv.exit:  ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %i.k)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZNK7Imf_3_417ScanLineInputFile8fileNameEv.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10: ; preds = %bb.c
  %i.n = call ptr @__cxa_allocate_exception(i64 72) #22 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.n, ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #24
          to label %bb.p unwind label %bb.e

bb.e:                                             ; preds = %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %bb.d, %_ZNK7Imf_3_417ScanLineInputFile8fileNameEv.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.n) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
end_hunk_0
begin_hunk_1_@exr_read_scanline_chunk_info
declare i32 @exr_read_scanline_chunk_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

declare i32 @exr_read_chunk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef i32 @_ZNK7Imf_3_47Context7storageEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #4

declare { i64, i64 } @_ZNK7Imf_3_47Context10dataWindowEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #4

declare i32 @exr_get_scanlines_per_chunk(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN13IlmThread_3_49TaskGroupC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN7Iex_3_48InputExcD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #6

declare void @_ZN13IlmThread_3_410ThreadPool13addGlobalTaskEPNS_4TaskE(ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZN13IlmThread_3_49TaskGroupD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN13IlmThread_3_412ProcessGroupIN7Imf_3_412_GLOBAL__N_115ScanLineProcessELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load atomic ptr, ptr %i.a seq_cst, align 8 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !117  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !15
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #23
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !111  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !112  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.j, %i.l
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7Imf_3_412_GLOBAL__N_115ScanLineProcessES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_ZSt8_DestroyIN7Imf_3_412_GLOBAL__N_115ScanLineProcessEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyIN7Imf_3_412_GLOBAL__N_115ScanLineProcessEEvPT_.exit.i.i.i ], [ %i.j, %bb.c ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 4
  %i.n = load i8, ptr %i.m, align 4, !tbaa !93, !range !83, !noundef !84
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZSt8_DestroyIN7Imf_3_412_GLOBAL__N_115ScanLineProcessEEvPT_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !94
  %i.s = invoke i32 @exr_decoding_destroy(ptr noundef %i.r, ptr noundef nonnull %i.p)
          to label %_ZSt8_DestroyIN7Imf_3_412_GLOBAL__N_115ScanLineProcessEEvPT_.exit.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #25
  unreachable

_ZSt8_DestroyIN7Imf_3_412_GLOBAL__N_115ScanLineProcessEEvPT_.exit.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 584 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.l
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7Imf_3_412_GLOBAL__N_115ScanLineProcessES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN7Imf_3_412_GLOBAL__N_115ScanLineProcessES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7Imf_3_412_GLOBAL__N_115ScanLineProcessEEvPT_.exit.i.i.i
  %.val.pr.i = load ptr, ptr %i.i, align 8, !tbaa !111
  br label %_ZSt8_DestroyIPN7Imf_3_412_GLOBAL__N_115ScanLineProcessES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7Imf_3_412_GLOBAL__N_115ScanLineProcessES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7Imf_3_412_GLOBAL__N_115ScanLineProcessES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.c
  %.val.i = phi ptr [ %.val.pr.i, %_ZSt8_DestroyIPN7Imf_3_412_GLOBAL__N_115ScanLineProcessES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.j, %bb.c ] ; 3 uses
  %.not.i.i2.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i2.i, label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_115ScanLineProcessESaIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN7Imf_3_412_GLOBAL__N_115ScanLineProcessES2_EvT_S4_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1.i = load ptr, ptr %i.w, align 8, !tbaa !113
  %i.x = ptrtoint ptr %.val1.i to i64
  %i.y = ptrtoint ptr %.val.i to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i, i64 noundef %i.z) #23
  br label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_115ScanLineProcessESaIS2_EED2Ev.exit

_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_115ScanLineProcessESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7Imf_3_412_GLOBAL__N_115ScanLineProcessES2_EvT_S4_RSaIT0_E.exit.i, %bb.f
  tail call void @_ZN13IlmThread_3_49SemaphoreD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #22
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess10run_decodeEPK19_priv_exr_context_tiPKNS_11FrameBufferEiiRKSt6vectorINS_5SliceESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(584) initializes((0, 4)) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 33, ptr %0, align 8, !tbaa !109
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !93, !range !83, !noundef !84
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @exr_decoding_initialize(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  %.not18 = icmp eq i32 %i.f, 0
  br i1 %.not18, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__cxa_allocate_exception(i64 72) #22 ; 3 uses
  invoke void @_ZN7Iex_3_45IoExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull @.str.20)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN7Iex_3_45IoExcE, ptr nonnull @_ZN7Iex_3_45IoExcD1Ev) #24
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.f:                                             ; preds = %bb.b
  store i8 0, ptr %i.a, align 4, !tbaa !93
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  %i.i = tail call i32 @exr_decoding_update(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = tail call ptr @__cxa_allocate_exception(i64 72) #22 ; 3 uses
  invoke void @_ZN7Iex_3_45IoExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull @.str.21)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN7Iex_3_45IoExcE, ptr nonnull @_ZN7Iex_3_45IoExcD1Ev) #24
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.k:                                             ; preds = %bb.g, %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !129  ; 2 uses
  %i.n = sub nsw i32 %4, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %i.n, ptr %i.o, align 8, !tbaa !130
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  store i32 0, ptr %i.p, align 4, !tbaa !131
  %i.q = sext i32 %i.m to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !132
  %i.t = sext i32 %i.s to i64
  %i.u = add nsw i64 %i.q, -1
  %i.v = add nsw i64 %i.u, %i.t                   ; 2 uses
  %i.w = sext i32 %5 to i64
  %i.x = icmp sgt i64 %i.v, %i.w
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = trunc i64 %i.v to i32
  %i.z = sub i32 %i.y, %5
  store i32 %i.z, ptr %i.p, align 4, !tbaa !131
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 8, !tbaa !133
  %i.ac = icmp sgt i16 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i, label %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_11FrameBufferEii.exit

.lr.ph.i:                                         ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.p ] ; 2 uses
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !134
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.af, i64 %indvars.iv.i ; 7 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !136
  %i.ai = tail call noundef ptr @_ZNK7Imf_3_411FrameBuffer9findSliceEPKc(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.ah) ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !137
  %i.al = icmp ne i32 %i.ak, 0
  %i.am = icmp ne ptr %i.ai, null
  %or.cond.i = and i1 %i.am, %i.al
  br i1 %or.cond.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.an = load i32, ptr %i.ai, align 8, !tbaa !138 ; 2 uses
  %i.ao = icmp eq i32 %i.an, 1
  %i.ap = select i1 %i.ao, i16 2, i16 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  store i16 %i.ap, ptr %i.aq, align 4, !tbaa !139
  %i.ar = trunc i32 %i.an to i16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 30
  store i16 %i.ar, ptr %i.as, align 2, !tbaa !140
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !141 ; 2 uses
  %i.av = trunc i64 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !142 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !143
  %i.bb = load i32, ptr %i.ae, align 4, !tbaa !144
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %7 = load i32, ptr %i.bc, align 8, !tbaa !102
  %8 = sdiv i32 %i.bb, %7
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %i.au, %9
  %11 = getelementptr inbounds i8, ptr %i.ba, i64 %10
  %12 = getelementptr inbounds nuw i8, ptr %i.ai, i64 36
  %13 = load i32, ptr %12, align 4, !tbaa !103
  %14 = sdiv i32 %4, %13
  %i.bd = sext i32 %14 to i64
  %i.be = mul nsw i64 %i.ax, %i.bd
  %i.bf = getelementptr inbounds i8, ptr %11, i64 %i.be
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink40.i = phi i32 [ %i.av, %bb.o ], [ 0, %bb.n ]
  %.sink39.i = phi i32 [ %i.ay, %bb.o ], [ 0, %bb.n ]
  %.sink.i = phi ptr [ %i.bf, %bb.o ], [ null, %bb.n ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store i32 %.sink40.i, ptr %i.bg, align 8, !tbaa !145
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 36
  store i32 %.sink39.i, ptr %i.bh, align 4, !tbaa !146
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store ptr %.sink.i, ptr %i.bi, align 8, !tbaa !15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bj = load i16, ptr %i.aa, align 8, !tbaa !133
  %i.bk = sext i16 %i.bj to i64
  %i.bl = icmp slt i64 %indvars.iv.next.i, %i.bk
  br i1 %i.bl, label %bb.n, label %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_11FrameBufferEii.exit, !llvm.loop !0

_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_11FrameBufferEii.exit: ; preds = %bb.p, %bb.m
  br i1 %i.c, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_11FrameBufferEii.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bn = tail call i32 @exr_decoding_choose_default_routines(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.bm)
  %.not19 = icmp eq i32 %i.bn, 0
  br i1 %.not19, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = tail call ptr @__cxa_allocate_exception(i64 72) #22 ; 3 uses
  invoke void @_ZN7Iex_3_45IoExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.bo, ptr noundef nonnull @.str.22)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @__cxa_throw(ptr nonnull %i.bo, ptr nonnull @_ZTIN7Iex_3_45IoExcE, ptr nonnull @_ZN7Iex_3_45IoExcD1Ev) #24
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.u:                                             ; preds = %bb.q, %_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_11FrameBufferEii.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.br = tail call i32 @exr_decoding_run(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.bq) ; 2 uses
  store i32 %i.br, ptr %0, align 8, !tbaa !109
  %.not20 = icmp eq i32 %i.br, 0
  br i1 %.not20, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = tail call ptr @__cxa_allocate_exception(i64 72) #22 ; 3 uses
  invoke void @_ZN7Iex_3_45IoExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.bs, ptr noundef nonnull @.str.23)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @__cxa_throw(ptr nonnull %i.bs, ptr nonnull @_ZTIN7Iex_3_45IoExcE, ptr nonnull @_ZN7Iex_3_45IoExcD1Ev) #24
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.u
  %.val = load ptr, ptr %6, align 8, !tbaa !147
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val22 = load ptr, ptr %i.bu, align 8, !tbaa !147
  tail call fastcc void @_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess8run_fillEPKNS_11FrameBufferEiRKSt6vectorINS_5SliceESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(584) %0, i32 noundef %4, ptr %.val, ptr %.val22)
  ret void

bb.z:                                             ; preds = %bb.x, %bb.t, %bb.j, %bb.e
  %.sink = phi ptr [ %i.bs, %bb.x ], [ %i.bo, %bb.t ], [ %i.j, %bb.j ], [ %i.g, %bb.e ]
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.x ], [ %i.bp, %bb.t ], [ %i.k, %bb.j ], [ %i.h, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt10unique_ptrIN7Imf_3_412_GLOBAL__N_115ScanLineProcessESt14default_deleteIS2_EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !86     ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i8, ptr %i.b, align 4, !tbaa !93, !range !83, !noundef !84
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZNKSt14default_deleteIN7Imf_3_412_GLOBAL__N_115ScanLineProcessEEclEPS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !94
  %i.h = invoke i32 @exr_decoding_destroy(ptr noundef %i.g, ptr noundef nonnull %i.e)
          to label %_ZNKSt14default_deleteIN7Imf_3_412_GLOBAL__N_115ScanLineProcessEEclEPS2_.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #25
  unreachable

_ZNKSt14default_deleteIN7Imf_3_412_GLOBAL__N_115ScanLineProcessEEclEPS2_.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 584) #23
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt14default_deleteIN7Imf_3_412_GLOBAL__N_115ScanLineProcessEEclEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7Imf_3_417ScanLineInputFile4Data14LineBufferTask7executeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !124  ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !107
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !71
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !123
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !125
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.o = load i32, ptr %i.n, align 4, !tbaa !126
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  invoke fastcc void @_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess10run_decodeEPK19_priv_exr_context_tiPKNS_11FrameBufferEiiRKSt6vectorINS_5SliceESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(584) %i.b, ptr noundef %i.g, i32 noundef %i.i, ptr noundef %i.k, i32 noundef %i.m, i32 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = extractvalue { ptr, i32 } %i.q, 1
  %i.t = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #22
  %i.u = icmp eq i32 %i.s, %i.t
  %i.v = tail call ptr @__cxa_begin_catch(ptr %i.r) #22 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !128  ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.v) #22
  invoke fastcc void @_ZN13IlmThread_3_412ProcessGroupIN7Imf_3_412_GLOBAL__N_115ScanLineProcessELb1EE14record_failureEPKc(ptr noundef nonnull align 8 dereferenceable(80) %i.x, ptr noundef %i.ab)
          to label %.sink.split unwind label %bb.g

.sink.split:                                      ; preds = %bb.c, %bb.e
  tail call void @__cxa_end_catch()
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  ret void

bb.e:                                             ; preds = %bb.b
  invoke fastcc void @_ZN13IlmThread_3_412ProcessGroupIN7Imf_3_412_GLOBAL__N_115ScanLineProcessELb1EE14record_failureEPKc(ptr noundef nonnull align 8 dereferenceable(80) %i.x, ptr noundef nonnull @.str.17)
          to label %.sink.split unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.f ], [ %i.ad, %bb.g ]
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #25
  unreachable
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #11

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN13IlmThread_3_412ProcessGroupIN7Imf_3_412_GLOBAL__N_115ScanLineProcessELb1EE14record_failureEPKc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load atomic ptr, ptr %i.b seq_cst, align 8
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE7_M_copyILb0ENSB_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_:bb.a

bb.k:                                             ; preds = %bb.i, %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE13_M_clone_nodeILb0ENSB_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_RT0_.exit
  %.030.in46 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.03047 = load ptr, ptr %.030.in46, align 8, !tbaa !155 ; 2 uses
  %.not3248 = icmp eq ptr %.03047, null
  br i1 %.not3248, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.x
  %.03050 = phi ptr [ %.030, %bb.x ], [ %.03047, %bb.k ] ; 4 uses
  %.03149 = phi ptr [ %.sink12.i.i36, %bb.x ], [ %.sink12.i.i, %bb.k ] ; 2 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !153  ; 7 uses
  %.not.i.i.i34 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i34, label %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !154 ; 5 uses
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !153
  %.not9.i.i.i35 = icmp eq ptr %i.ab, null
  br i1 %.not9.i.i.i35, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !156
  %i.ae = icmp eq ptr %i.ad, %i.z
  br i1 %i.ae, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %i.ac, align 8, !tbaa !156
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !155 ; 2 uses
  %.not10.i.i.i37 = icmp eq ptr %i.ag, null
  br i1 %.not10.i.i.i37, label %bb.r, label %.preheader.i.i.i38

.preheader.i.i.i38:                               ; preds = %bb.n, %.preheader.i.i.i38
  %storemerge.i.i.i39 = phi ptr [ %i.ai, %.preheader.i.i.i38 ], [ %i.ag, %bb.n ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i39, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !156 ; 2 uses
  %.not11.i.i.i40 = icmp eq ptr %i.ai, null
  br i1 %.not11.i.i.i40, label %bb.o, label %.preheader.i.i.i38, !llvm.loop !238

bb.o:                                             ; preds = %.preheader.i.i.i38
  %i.aj = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i39, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !155 ; 2 uses
  %.not12.i.i.i41 = icmp eq ptr %i.ak, null
  %spec.store.select.i.i.i42 = select i1 %.not12.i.i.i41, ptr %storemerge.i.i.i39, ptr %i.ak
  store ptr %spec.store.select.i.i.i42, ptr %i.a, align 8
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr null, ptr %i.al, align 8, !tbaa !155
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  store ptr null, ptr %3, align 8, !tbaa !152
  br label %bb.r

_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43: ; preds = %.lr.ph
  %i.am = invoke noalias noundef nonnull dereferenceable(344) ptr @_Znwm(i64 noundef 344) #21
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43
  %.sink12.i.i36 = phi ptr [ %i.z, %bb.q ], [ %i.z, %bb.n ], [ %i.z, %bb.o ], [ %i.z, %bb.p ], [ %i.am, %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43 ] ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.03050, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %.sink12.i.i36, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.ao, ptr noundef nonnull align 8 dereferenceable(312) %i.an, i64 312, i1 false)
  %i.ap = load i32, ptr %.03050, align 8, !tbaa !240
  store i32 %i.ap, ptr %.sink12.i.i36, align 8, !tbaa !240
  %i.aq = getelementptr inbounds nuw i8, ptr %.sink12.i.i36, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %.03149, i64 16
  store ptr %.sink12.i.i36, ptr %i.ar, align 8, !tbaa !155
  %i.as = getelementptr inbounds nuw i8, ptr %.sink12.i.i36, i64 8
  store ptr %.03149, ptr %i.as, align 8, !tbaa !154
  %i.at = getelementptr inbounds nuw i8, ptr %.03050, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !156 ; 2 uses
  %.not33 = icmp eq ptr %i.au, null
  br i1 %.not33, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = invoke noundef ptr @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE7_M_copyILb0ENSB_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.au, ptr noundef nonnull %.sink12.i.i36, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.aw = getelementptr inbounds nuw i8, ptr %.sink12.i.i36, i64 24
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !156
  br label %bb.x

bb.u:                                             ; preds = %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43, %bb.s
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.u ], [ %i.y, %bb.j ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.ay = tail call ptr @__cxa_begin_catch(ptr %.0) #22 ; 0 uses
  invoke void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %.sink12.i.i)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  invoke void @__cxa_rethrow() #24
          to label %bb.ab unwind label %bb.y

bb.x:                                             ; preds = %bb.t, %bb.r
  %.030.in = getelementptr inbounds nuw i8, ptr %.03050, i64 16
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !155 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !239

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  resume { ptr, i32 } %i.az

._crit_edge:                                      ; preds = %bb.x, %bb.k
  ret ptr %.sink12.i.i

bb.aa:                                            ; preds = %bb.y
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #25
  unreachable

bb.ab:                                            ; preds = %bb.w
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !156
  tail call void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !155  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 344) #23
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !241

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @_ZN13IlmThread_3_44TaskC2EPNS_9TaskGroupE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN13IlmThread_3_44TaskD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

declare void @_ZN13IlmThread_3_49Semaphore4waitEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #16

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #4

declare i32 @exr_decoding_destroy(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @exr_decoding_initialize(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN7Iex_3_45IoExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN7Iex_3_45IoExcD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #6

declare i32 @exr_decoding_update(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @exr_decoding_choose_default_routines(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @exr_decoding_run(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess8run_fillEPKNS_11FrameBufferEiRKSt6vectorINS_5SliceESaIS6_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(584) %0, i32 noundef %1, ptr nofree readonly captures(address) %.0.val, ptr nofree readnone captures(address) %.8.val) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not513 = icmp eq ptr %.0.val, %.8.val
  br i1 %.not513, label %._crit_edge17, label %.lr.ph16

.lr.ph16:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

._crit_edge17:                                    ; preds = %._crit_edge12, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph16, %._crit_edge12
  %.sroa.02.014 = phi ptr [ %.0.val, %.lr.ph16 ], [ %i.ab, %._crit_edge12 ] ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.02.014, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.02.014, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !141  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.014, i64 36 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.02.014, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !142  ; 2 uses
  %i.l = load i32, ptr %i.b, align 8, !tbaa !129
  %i.m = load i32, ptr %i.c, align 4, !tbaa !132
  %i.n = add nsw i32 %i.m, %i.l
  %i.o = load i32, ptr %i.d, align 4, !tbaa !131
  %i.p = sub i32 %i.n, %i.o                       ; 2 uses
  %i.q = icmp slt i32 %1, %i.p
  br i1 %i.q, label %.lr.ph11, label %._crit_edge12

.lr.ph11:                                         ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.02.014, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !143
  %i.t = load i32, ptr %i.a, align 4, !tbaa !144
  %2 = load i32, ptr %i.f, align 8, !tbaa !102
  %3 = sdiv i32 %i.t, %2
  %i.u = sext i32 %3 to i64
  %i.v = mul nsw i64 %i.h, %i.u
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 %i.v
  %4 = load i32, ptr %i.i, align 4, !tbaa !103
  %5 = sdiv i32 %1, %4
  %i.x = sext i32 %5 to i64
  %i.y = mul nsw i64 %i.k, %i.x
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.02.014, i64 40 ; 3 uses
  br label %bb.c

._crit_edge12:                                    ; preds = %bb.x, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.02.014, i64 56 ; 2 uses
  %.not5 = icmp eq ptr %i.ab, %.8.val
  br i1 %.not5, label %._crit_edge17, label %bb.b

bb.c:                                             ; preds = %.lr.ph11, %bb.x
  %.09 = phi ptr [ %i.z, %.lr.ph11 ], [ %.1, %bb.x ] ; 3 uses
  %.0418 = phi i32 [ %1, %.lr.ph11 ], [ %i.cn, %bb.x ] ; 2 uses
  %i.ac = load i32, ptr %i.i, align 4, !tbaa !103
  %i.ad = srem i32 %.0418, %i.ac
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.d, label %bb.x

bb.d:                                             ; preds = %bb.c
  %i.ae = load i32, ptr %i.a, align 4, !tbaa !144 ; 2 uses
  %i.af = load i32, ptr %i.e, align 8, !tbaa !244 ; 2 uses
  %i.ag = add nsw i32 %i.af, %i.ae
  %i.ah = icmp sgt i32 %i.af, 0
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.w, %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.09, i64 %i.k
  br label %bb.x

.lr.ph:                                           ; preds = %bb.d, %bb.w
  %.0387 = phi i32 [ %i.cl, %bb.w ], [ %i.ae, %bb.d ] ; 2 uses
  %.0396 = phi ptr [ %.140, %bb.w ], [ %.09, %bb.d ] ; 5 uses
  %i.aj = load i32, ptr %i.f, align 8, !tbaa !102
  %i.ak = srem i32 %.0387, %i.aj
  %.not42 = icmp eq i32 %i.ak, 0
  br i1 %.not42, label %bb.e, label %bb.w

bb.e:                                             ; preds = %.lr.ph
  %i.al = load i32, ptr %.sroa.02.014, align 8, !tbaa !138
  switch i32 %i.al, label %bb.s [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.r
  ]

bb.f:                                             ; preds = %bb.e
  %i.am = load double, ptr %i.aa, align 8, !tbaa !245
  %i.an = fptoui double %i.am to i32
  store i32 %i.an, ptr %.0396, align 4, !tbaa !16
  br label %bb.v

bb.g:                                             ; preds = %bb.e
  %i.ao = load double, ptr %i.aa, align 8, !tbaa !245
  %i.ap = fptrunc double %i.ao to float           ; 2 uses
  %i.aq = bitcast float %i.ap to i32
  %i.ar = tail call float @llvm.fabs.f32(float %i.ap)
  %i.as = bitcast float %i.ar to i32              ; 10 uses
  %i.at = lshr i32 %i.aq, 16                      ; 3 uses
  %i.au = trunc nuw i32 %i.at to i16
  %i.av = and i16 %i.au, -32768                   ; 3 uses
  %i.aw = icmp samesign ugt i32 %i.as, 947912703
  br i1 %i.aw, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.ax = icmp samesign ugt i32 %i.as, 2139095039
  br i1 %i.ax, label %bb.i, label %bb.k, !prof !72

bb.i:                                             ; preds = %bb.h
  %i.ay = or disjoint i16 %i.av, 31744            ; 2 uses
  %i.az = icmp eq i32 %i.as, 2139095040
  br i1 %i.az, label %_ZN9Imath_3_24halfC2Ef.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = lshr i32 %i.as, 13
  %i.bb = and i32 %i.ba, 1023                     ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  %i.bd = zext i1 %i.bc to i16
  %i.be = trunc nuw nsw i32 %i.bb to i16
  %i.bf = or i16 %i.be, %i.bd
  %i.bg = or disjoint i16 %i.bf, %i.ay
  br label %_ZN9Imath_3_24halfC2Ef.exit

bb.k:                                             ; preds = %bb.h
  %i.bh = icmp samesign ugt i32 %i.as, 1199566847
  br i1 %i.bh, label %bb.l, label %bb.m, !prof !72

bb.l:                                             ; preds = %bb.k
  %i.bi = or disjoint i16 %i.av, 31744
  br label %_ZN9Imath_3_24halfC2Ef.exit

bb.m:                                             ; preds = %bb.k
  %i.bj = add nuw nsw i32 %i.as, 134221823
  %i.bk = lshr i32 %i.as, 13
  %i.bl = and i32 %i.bk, 1
  %i.bm = add nuw nsw i32 %i.bj, %i.bl
  %i.bn = lshr i32 %i.bm, 13
  %i.bo = and i32 %i.at, 32768
  %i.bp = or i32 %i.bn, %i.bo
  %i.bq = trunc i32 %i.bp to i16
  br label %_ZN9Imath_3_24halfC2Ef.exit

bb.n:                                             ; preds = %bb.g
  %i.br = icmp samesign ult i32 %i.as, 855638017
  br i1 %i.br, label %_ZN9Imath_3_24halfC2Ef.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = lshr i32 %i.as, 23                      ; 2 uses
  %i.bt = sub nuw nsw i32 126, %i.bs
  %i.bu = and i32 %i.as, 8388607
  %i.bv = or disjoint i32 %i.bu, 8388608          ; 2 uses
  %i.bw = add nsw i32 %i.bs, -94
  %i.bx = shl i32 %i.bv, %i.bw                    ; 2 uses
  %i.by = lshr i32 %i.bv, %i.bt                   ; 2 uses
  %i.bz = and i32 %i.at, 32768
  %i.ca = or i32 %i.by, %i.bz
  %i.cb = trunc nuw i32 %i.ca to i16              ; 2 uses
  %i.cc = icmp ugt i32 %i.bx, -2147483648
  br i1 %i.cc, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cd = icmp ne i32 %i.bx, -2147483648
  %i.ce = and i32 %i.by, 1
  %.not.i.i = icmp eq i32 %i.ce, 0
  %or.cond.i.i = select i1 %i.cd, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %_ZN9Imath_3_24halfC2Ef.exit, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cf = add nuw i16 %i.cb, 1
  br label %_ZN9Imath_3_24halfC2Ef.exit

_ZN9Imath_3_24halfC2Ef.exit:                      ; preds = %bb.i, %bb.j, %bb.l, %bb.m, %bb.n, %bb.p, %bb.q
  %.033.i.i = phi i16 [ %i.av, %bb.n ], [ %i.bg, %bb.j ], [ %i.bi, %bb.l ], [ %i.bq, %bb.m ], [ %i.ay, %bb.i ], [ %i.cf, %bb.q ], [ %i.cb, %bb.p ]
  store i16 %.033.i.i, ptr %.0396, align 2, !tbaa !246
  br label %bb.v

bb.r:                                             ; preds = %bb.e
  %i.cg = load double, ptr %i.aa, align 8, !tbaa !245
  %i.ch = fptrunc double %i.cg to float
  store float %i.ch, ptr %.0396, align 4, !tbaa !64
  br label %bb.v

bb.s:                                             ; preds = %bb.e
  %i.ci = tail call ptr @__cxa_allocate_exception(i64 72) #22 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ci, ptr noundef nonnull @.str.24)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @__cxa_throw(ptr nonnull %i.ci, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #24
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cj = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ci) #22
  resume { ptr, i32 } %i.cj

bb.v:                                             ; preds = %bb.r, %_ZN9Imath_3_24halfC2Ef.exit, %bb.f
  %i.ck = getelementptr inbounds nuw i8, ptr %.0396, i64 %i.h
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %bb.v
  %.140 = phi ptr [ %.0396, %.lr.ph ], [ %i.ck, %bb.v ]
  %i.cl = add nsw i32 %.0387, 1                   ; 2 uses
  %i.cm = icmp slt i32 %i.cl, %i.ag
  br i1 %i.cm, label %.lr.ph, label %._crit_edge, !llvm.loop !242

bb.x:                                             ; preds = %bb.c, %._crit_edge
  %.1 = phi ptr [ %.09, %bb.c ], [ %i.ai, %._crit_edge ]
  %i.cn = add nsw i32 %.0418, 1                   ; 2 uses
  %i.co = icmp slt i32 %i.cn, %i.p
  br i1 %i.co, label %bb.c, label %._crit_edge12, !llvm.loop !243
}

declare noundef ptr @_ZNK7Imf_3_411FrameBuffer9findSliceEPKc(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #4

declare void @_ZN13IlmThread_3_49Semaphore4postEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN7Imf_3_417ScanLineInputFile4DataESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #2 comdat align 2 {
bb.a:
end_hunk_2
