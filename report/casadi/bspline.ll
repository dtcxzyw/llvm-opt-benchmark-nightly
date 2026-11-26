Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/bspline?download=true
inline.NumInlined: 2692
inline.NumDeleted: 811
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6casadi9do_inlineERKNS_2MXERKSt6vectorIS3_IdSaIdEESaIS5_EES2_xRKS3_IxSaIxEESD_:bb.a
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !64
  br label %.body.sink.split

bb.f:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.ek

bb.g:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

bb.h:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit
  %.044256 = phi i64 [ 0, %.lr.ph ], [ %i.bi, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZN6casadi2MXC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %7, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.ad = load ptr, ptr %2, align 8, !tbaa !128
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.044256
  invoke void @_ZN6casadi2MXC1ERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.044256
  %i.ag = load ptr, ptr %5, align 8, !tbaa !63
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.044256
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !67
  %i.aj = load ptr, ptr %6, align 8, !tbaa !63
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.044256
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !67
  %i.am = load ptr, ptr %8, align 8, !tbaa !121
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.044256
  invoke void @_ZN6casadi8get_boorERKNS_2MXES2_xxRS0_S3_(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %i.ai, i64 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  invoke void @_ZNK6casadi2MX1TEv(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN6casadi17SparsityInterfaceINS_2MXEE9horzsplitERKS1_x(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.3") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef 1)
          to label %_ZN6casadi9horzsplitERKNS_2MXEx.exit unwind label %bb.t

_ZN6casadi9horzsplitERKNS_2MXEx.exit:             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.044256 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !121 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !123 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !122
  %i.au = load <2 x ptr>, ptr %13, align 16, !tbaa !120
  store <2 x ptr> %i.au, ptr %i.ao, align 8, !tbaa !120
  %i.av = load ptr, ptr %i.s, align 16, !tbaa !122
  store ptr %i.av, ptr %i.as, align 8, !tbaa !122
  %.not4.i.i.i.i.i = icmp eq ptr %i.ap, %i.ar
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN6casadi9horzsplitERKNS_2MXEx.exit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i ], [ %i.ap, %_ZN6casadi9horzsplitERKNS_2MXEx.exit ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i) #23
  %i.aw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aw, %i.ar
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZN6casadi9horzsplitERKNS_2MXEx.exit
  %.not.i.i1.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = ptrtoint ptr %i.ap to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.az) #24
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit

_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit:    ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.m
  %i.ba = load ptr, ptr %13, align 16, !tbaa !121 ; 3 uses
  %i.bb = load ptr, ptr %i.r, align 8, !tbaa !123 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ba, %i.bb
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i ], [ %i.ba, %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i) #23
  %i.bc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bc, %i.bb
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %13, align 16, !tbaa !121
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit
  %i.bd = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ba, %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i
  %i.be = load ptr, ptr %i.s, align 16, !tbaa !122
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bh) #24
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit

_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit:       ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i, %bb.n
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.bi = add nuw nsw i64 %.044256, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.bi, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !225

bb.o:                                             ; preds = %bb.h
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.p:                                             ; preds = %bb.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.j
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #23
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn122 = phi { ptr, i32 } [ %i.bl, %bb.q ], [ %i.bk, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.v

bb.s:                                             ; preds = %bb.k
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.l
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #23
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn124 = phi { ptr, i32 } [ %i.bn, %bb.t ], [ %i.bm, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %.pn124.pn = phi { ptr, i32 } [ %.pn124, %bb.u ], [ %.pn122, %bb.r ]
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #23
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.o
  %.pn124.pn.pn = phi { ptr, i32 } [ %.pn124.pn, %bb.v ], [ %i.bj, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.ei

bb.x:                                             ; preds = %._crit_edge
  store ptr %i.v, ptr %15, align 8, !tbaa !63
  %i.bo = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !64
  store i64 %4, ptr %i.v, align 8, !tbaa !67
  %i.bq = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !62
  %i.br = icmp sgt i64 %i.i, 24
  br i1 %i.br, label %.lr.ph259.preheader, label %._crit_edge260

.lr.ph259.preheader:                              ; preds = %bb.x
  %i.bs = call i64 @llvm.smax.i64(i64 %i.j, i64 2)
  %i.bt = add nsw i64 %i.bs, -2
  br label %.lr.ph259

._crit_edge260:                                   ; preds = %_ZNSt6vectorIxSaIxEE9push_backEOx.exit, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  invoke void @_ZN6casadi6MatrixIdEC2IxEERKSt6vectorIT_SaIS4_EE(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.ac unwind label %bb.am

.lr.ph259:                                        ; preds = %.lr.ph259.preheader, %_ZNSt6vectorIxSaIxEE9push_backEOx.exit
  %i.bu = phi ptr [ %i.dh, %_ZNSt6vectorIxSaIxEE9push_backEOx.exit ], [ %i.v, %.lr.ph259.preheader ] ; 4 uses
  %i.bv = phi ptr [ %i.di, %_ZNSt6vectorIxSaIxEE9push_backEOx.exit ], [ %i.bo, %.lr.ph259.preheader ] ; 3 uses
  %i.bw = phi ptr [ %i.dj, %_ZNSt6vectorIxSaIxEE9push_backEOx.exit ], [ %i.bo, %.lr.ph259.preheader ] ; 4 uses
  %.043257 = phi i64 [ %i.dk, %_ZNSt6vectorIxSaIxEE9push_backEOx.exit ], [ 0, %.lr.ph259.preheader ] ; 4 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !67
  %i.bz = load ptr, ptr %2, align 8, !tbaa !128
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %.043257 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !52
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !53
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 3
  %i.ci = load ptr, ptr %5, align 8, !tbaa !63
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %.043257
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !67
  %i.cl = xor i64 %i.ck, -1
  %i.cm = add i64 %i.ch, %i.cl
  %i.cn = mul i64 %i.cm, %i.by                    ; 2 uses
  %.not.i.i = icmp eq ptr %i.bw, %i.bv
  br i1 %.not.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph259
  store i64 %i.cn, ptr %i.bw, align 8, !tbaa !67
  %i.co = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  store ptr %i.co, ptr %i.bq, align 8, !tbaa !62
  br label %_ZNSt6vectorIxSaIxEE9push_backEOx.exit

bb.z:                                             ; preds = %.lr.ph259
  %i.cp = ptrtoint ptr %i.bv to i64
  %i.cq = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.cr = sub i64 %i.cp, %i.cq                    ; 5 uses
  %i.cs = icmp eq i64 %i.cr, 9223372036854775800
  br i1 %i.cs, label %bb.aa, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #26
          to label %.noexc134 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc134:                                        ; preds = %bb.aa
  unreachable

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.z
  %i.ct = ashr exact i64 %i.cr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ct, i64 1)
  %i.cu = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ct ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.ct
  %i.cw = call i64 @llvm.umin.i64(i64 %i.cu, i64 1152921504606846975)
  %i.cx = select i1 %i.cv, i64 1152921504606846975, i64 %i.cw ; 3 uses
  %.not.i.i.i.i133 = icmp ne i64 %i.cx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i133)
  %i.cy = shl nuw nsw i64 %i.cx, 3
  %i.cz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #25
          to label %.noexc135 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc135:                                        ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i.i
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 %i.cr ; 2 uses
  store i64 %i.cn, ptr %i.da, align 8, !tbaa !67
  %i.db = icmp sgt i64 %i.cr, 0
  br i1 %i.db, label %bb.ab, label %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.i

bb.ab:                                            ; preds = %.noexc135
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cz, ptr align 8 %i.bu, i64 %i.cr, i1 false)
  br label %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.i

_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.i: ; preds = %bb.ab, %.noexc135
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dd = load ptr, ptr %i.bp, align 8, !tbaa !64
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = sub i64 %i.de, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.df) #24
  store ptr %i.cz, ptr %15, align 8, !tbaa !63
  store ptr %i.dc, ptr %i.bq, align 8, !tbaa !62
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cx ; 2 uses
  store ptr %i.dg, ptr %i.bp, align 8, !tbaa !64
  br label %_ZNSt6vectorIxSaIxEE9push_backEOx.exit

_ZNSt6vectorIxSaIxEE9push_backEOx.exit:           ; preds = %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.i, %bb.y
  %i.dh = phi ptr [ %i.cz, %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.i ], [ %i.bu, %bb.y ]
  %i.di = phi ptr [ %i.dg, %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.i ], [ %i.bv, %bb.y ]
  %i.dj = phi ptr [ %i.dc, %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.i ], [ %i.co, %bb.y ]
  %i.dk = add nuw nsw i64 %.043257, 1
  %exitcond274.not = icmp eq i64 %.043257, %i.bt
  br i1 %exitcond274.not, label %._crit_edge260, label %.lr.ph259, !llvm.loop !226

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i.i, %bb.aa
  %lpad.loopexit.split-lp341 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ac:                                            ; preds = %._crit_edge260
  invoke void @_ZNK6casadi6MatrixIdE1TEv(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Matrix") align 8 %18, ptr noundef nonnull align 8 dereferenceable(40) %19)
          to label %bb.ad unwind label %bb.an

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN6casadi2MXC1ERKNS_6MatrixIdEE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(40) %18)
          to label %bb.ae unwind label %bb.ao

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  invoke void @_ZN6casadi2MX7vertcatERKSt6vectorIS0_SaIS0_EE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %_ZN6casadi7vertcatERKSt6vectorINS_2MXESaIS1_EE.exit unwind label %bb.ap

_ZN6casadi7vertcatERKSt6vectorINS_2MXESaIS1_EE.exit: ; preds = %bb.ae
  invoke void @_ZN6casadi2MX6mtimesERKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %_ZN6casadi6mtimesERKNS_2MXES2_.exit unwind label %bb.aq

_ZN6casadi6mtimesERKNS_2MXES2_.exit:              ; preds = %_ZN6casadi7vertcatERKSt6vectorINS_2MXESaIS1_EE.exit
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #23
  %i.dl = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !53 ; 3 uses
  %.not.i.i.i.i138 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i138, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZN6casadi6mtimesERKNS_2MXES2_.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !55
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dr) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i:                  ; preds = %bb.af, %_ZN6casadi6mtimesERKNS_2MXES2_.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %18, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ds)
          to label %_ZN6casadi6MatrixIdED2Ev.exit unwind label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #27
  unreachable

_ZN6casadi6MatrixIdED2Ev.exit:                    ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %i.dv = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !53 ; 3 uses
  %.not.i.i.i.i139 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i139, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i140, label %bb.ah

bb.ah:                                            ; preds = %_ZN6casadi6MatrixIdED2Ev.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !55
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dw to i64
  %i.eb = sub i64 %i.dz, %i.ea
  call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.eb) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i140

_ZNSt6vectorIdSaIdEED2Ev.exit.i140:               ; preds = %bb.ah, %_ZN6casadi6MatrixIdED2Ev.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %19, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ec)
          to label %_ZN6casadi6MatrixIdED2Ev.exit141 unwind label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i140
  %i.ed = landingpad { ptr, i32 }
          catch ptr null
  %i.ee = extractvalue { ptr, i32 } %i.ed, 0
  call void @__clang_call_terminate(ptr %i.ee) #27
  unreachable

_ZN6casadi6MatrixIdED2Ev.exit141:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  invoke void @_ZN6casadi5rangeEx(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.13") align 8 %22, i64 noundef %4)
          to label %bb.aj unwind label %bb.av

bb.aj:                                            ; preds = %_ZN6casadi6MatrixIdED2Ev.exit141
  invoke void @_ZN6casadi6MatrixIdEC2IxEERKSt6vectorIT_SaIS4_EE(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull align 8 dereferenceable(24) %22)
          to label %bb.ak unwind label %bb.aw

bb.ak:                                            ; preds = %bb.aj
  %i.ef = load ptr, ptr %22, align 8, !tbaa !63   ; 3 uses
  %.not.i.i.i142 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i142, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eg = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !64
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.ef to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.ek) #24
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br i1 %.not.i.i.i.i, label %._crit_edge263, label %.lr.ph262

.lr.ph262:                                        ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit
  %i.el = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.en = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.ep = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.eq = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %26, i64 32
  %i.et = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.ew = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.ey = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.ez = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.fc = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.ff = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.fg = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.fj = getelementptr inbounds nuw i8, ptr %25, i64 8
  br label %bb.ay

._crit_edge263:                                   ; preds = %_ZN6casadi6MatrixIdED2Ev.exit186, %_ZNSt6vectorIxSaIxEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %32, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !tbaa !67
  %i.fk = icmp sgt i64 %i.c, 0
  br i1 %i.fk, label %.lr.ph268, label %._crit_edge269
end_hunk_0
begin_hunk_1_@_ZN6casadi8SubIndexINS_6MatrixIdEESt6vectorIxSaIxEEEC2ERS2_RKS5_:bb.a
  %i.t = icmp sgt i64 %i.s, 8
  br i1 %i.t, label %bb.c, label %bb.d, !prof !57

bb.c:                                             ; preds = %.noexc10
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.k, ptr align 8 %i.o, i64 %i.s, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc10
  %i.u = icmp eq i64 %i.s, 8
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.o, align 8, !tbaa !67
  store i64 %i.v, ptr %i.k, align 8, !tbaa !67
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.w = getelementptr inbounds i8, ptr %i.k, i64 %i.s
  store ptr %i.w, ptr %i.l, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZN6casadi6MatrixIxEC1ERKSt6vectorIxSaIxEE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNK6casadi6MatrixIdE3getERS1_bRKNS0_IxEE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %0, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !63   ; 3 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i11, label %_ZNSt6vectorIxSaIxEED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !64
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #24
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit.i

_ZNSt6vectorIxSaIxEED2Ev.exit.i:                  ; preds = %bb.i, %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %_ZN6casadi6MatrixIxED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit.i
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #27
  unreachable

_ZN6casadi6MatrixIxED2Ev.exit:                    ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

bb.l:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6MatrixIxED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.m ], [ %i.ai, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !63  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !64
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ao) #24
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.o, %bb.n, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.k ], [ %.pn, %bb.n ], [ %.pn, %bb.o ]
  call void @_ZN6casadi6MatrixIdED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #23
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZNK6casadi6MatrixIdE3getERS1_bRKNS0_IxEE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #7

declare void @_ZN6casadi8Sparsity9vertsplitERKS0_RKSt6vectorIxSaIxEE(ptr dead_on_unwind writable sret(%"class.std::vector.150") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

declare void @_ZN6casadi8Sparsity4diagExx(ptr dead_on_unwind writable sret(%"class.casadi::Sparsity") align 8, i64 noundef, i64 noundef) local_unnamed_addr #7

declare void @_ZN6casadi6MatrixIdEC1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #7

declare void @_ZNK6casadi6MatrixIdE6get_nzERS1_bRKNS0_IxEE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #7

declare void @_ZN6casadi6MatrixIdE6mtimesERKS1_S3_(ptr dead_on_unwind writable sret(%"class.casadi::Matrix") align 8, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #7

declare noundef zeroext i1 @_ZN6casadi14is_permutationERKSt6vectorIxSaIxEE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi12vector_sliceIxEESt6vectorIT_SaIS2_EERKS4_RKS1_IxSaIxEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::vector.20", align 8   ; 5 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %30 = alloca %"class.std::vector.20", align 8   ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62   ; 3 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !63     ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %i.i = icmp ugt i64 %i.h, 9223372036854775800
  br i1 %i.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.79) #26
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %.not284 = icmp eq ptr %i.d, %i.e
  br i1 %.not284, label %_ZNSt6vectorIxSaIxEE7reserveEm.exit, label %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #25 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %0, align 8, !tbaa !63
  store ptr %i.k, ptr %i.l, align 8, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h ; 2 uses
  store ptr %i.m, ptr %i.j, align 8, !tbaa !64
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !62
  %.pre217 = load ptr, ptr %2, align 8, !tbaa !63
  br label %_ZNSt6vectorIxSaIxEE7reserveEm.exit

_ZNSt6vectorIxSaIxEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i, %bb.b
  %i.n = phi ptr [ %.pre217, %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i ], [ %i.e, %bb.b ] ; 2 uses
  %i.o = phi ptr [ %.pre, %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i ], [ %i.d, %bb.b ] ; 2 uses
  %.promoted195 = phi ptr [ %i.k, %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 3 uses
  %.promoted = phi ptr [ %i.m, %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !tbaa !67
  %.not = icmp eq ptr %i.o, %i.n
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIxSaIxEE7reserveEm.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIxSaIxEE9push_backERKx.exit, %_ZNSt6vectorIxSaIxEE7reserveEm.exit
  %.lcssa196 = phi ptr [ %.promoted195, %_ZNSt6vectorIxSaIxEE7reserveEm.exit ], [ %i.he, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit ]
  %.lcssa = phi ptr [ %.promoted, %_ZNSt6vectorIxSaIxEE7reserveEm.exit ], [ %i.hf, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit ]
  store ptr %.lcssa, ptr %i.j, align 8
  store ptr %.lcssa196, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit
  %i.r = phi ptr [ %i.n, %.lr.ph ], [ %i.hb, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit ] ; 2 uses
  %i.s = phi ptr [ %i.o, %.lr.ph ], [ %i.hc, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit ]
  %i.t = phi ptr [ %.promoted195, %.lr.ph ], [ %i.hd, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit ] ; 4 uses
  %storemerge201 = phi i64 [ 0, %.lr.ph ], [ %i.hh, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit ]
  %i.u = phi ptr [ %.promoted, %.lr.ph ], [ %i.hf, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit ] ; 7 uses
  %i.v = phi ptr [ %.promoted195, %.lr.ph ], [ %i.he, %_ZNSt6vectorIxSaIxEE9push_backERKx.exit ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %storemerge201
  %i.x = load i64, ptr %i.w, align 8, !tbaa !67   ; 4 uses
  store i64 %i.x, ptr %i.b, align 8, !tbaa !67
  %i.y = icmp sgt i64 %i.x, -1
  br i1 %i.y, label %bb.ad, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.u, ptr %i.j, align 8
  store ptr %i.v, ptr %0, align 8
  %i.z = tail call ptr @__cxa_allocate_exception(i64 40) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.2)
          to label %bb.g unwind label %bb.r

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  invoke void @_ZN6casadi3strIxEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.h unwind label %bb.s

bb.h:                                             ; preds = %bb.g
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull @.str.74, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.i unwind label %bb.t

bb.i:                                             ; preds = %bb.h
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.75)
          to label %bb.j unwind label %bb.u

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  invoke void @_ZN6casadi3strIxEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.k unwind label %bb.v

bb.k:                                             ; preds = %bb.j
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.l unwind label %bb.w

bb.l:                                             ; preds = %bb.k
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.76)
          to label %bb.m unwind label %bb.x

bb.m:                                             ; preds = %bb.l
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull @.str.73, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.n unwind label %bb.y

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false), !alias.scope !405
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.o unwind label %bb.z

bb.o:                                             ; preds = %bb.n
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.p unwind label %bb.aa

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.q unwind label %bb.ab

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #26
          to label %bb.bm unwind label %bb.ab

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123.thread: ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.r:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

bb.s:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

bb.t:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

bb.u:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

bb.v:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

bb.w:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

bb.x:                                             ; preds = %bb.l
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

bb.y:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

bb.z:                                             ; preds = %bb.n
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

bb.aa:                                            ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ab:                                            ; preds = %bb.q, %bb.p
  %.09 = phi i1 [ false, %bb.q ], [ true, %bb.p ] ; 2 uses
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ab
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !26
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.aa ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.al, %bb.ab ] ; 2 uses
  %.110 = phi i1 [ true, %bb.aa ], [ %.09, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.09, %bb.ab ] ; 2 uses
  %i.ar = load ptr, ptr %8, align 8, !tbaa !27    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.au = load i64, ptr %i.as, align 8, !tbaa !26
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %bb.z
  %.pn.pn = phi { ptr, i32 } [ %i.aj, %bb.z ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.211 = phi i1 [ true, %bb.z ], [ %.110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %.110, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.aw = load ptr, ptr %9, align 8, !tbaa !27    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !26
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %bb.y
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.y ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ] ; 2 uses
  %.312 = phi i1 [ true, %bb.y ], [ %.211, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %.211, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ] ; 2 uses
  %i.bb = load ptr, ptr %10, align 8, !tbaa !27   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !26
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %bb.x
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.x ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ] ; 2 uses
  %.413 = phi i1 [ true, %bb.x ], [ %.312, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ], [ %.312, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ] ; 2 uses
  %i.bg = load ptr, ptr %11, align 8, !tbaa !27   ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6casadi12vector_sliceIxEESt6vectorIT_SaIS2_EERKS4_RKS1_IxSaIxEE:bb.a
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %30) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  %i.ee = load ptr, ptr %23, align 8, !tbaa !27   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !26
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130, %bb.az
  %.pn74.pn.pn = phi { ptr, i32 } [ %i.dq, %bb.az ], [ %.pn74.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130 ], [ %.pn74.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ] ; 2 uses
  %.3 = phi i1 [ true, %bb.az ], [ %.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130 ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ] ; 2 uses
  %i.ej = load ptr, ptr %24, align 8, !tbaa !27   ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !26
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.en) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133, %bb.ay
  %.pn74.pn.pn.pn = phi { ptr, i32 } [ %i.dp, %bb.ay ], [ %.pn74.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133 ], [ %.pn74.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ] ; 2 uses
  %.4 = phi i1 [ true, %bb.ay ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133 ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ] ; 2 uses
  %i.eo = load ptr, ptr %25, align 8, !tbaa !27   ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !26
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.es) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136, %bb.ax
  %.pn74.pn.pn.pn.pn = phi { ptr, i32 } [ %i.do, %bb.ax ], [ %.pn74.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136 ], [ %.pn74.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135 ] ; 2 uses
  %.5 = phi i1 [ true, %bb.ax ], [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136 ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135 ] ; 2 uses
  %i.et = load ptr, ptr %29, align 8, !tbaa !27   ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !26
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139, %bb.aw
  %.pn74.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dn, %bb.aw ], [ %.pn74.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139 ], [ %.pn74.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ] ; 2 uses
  %.6 = phi i1 [ true, %bb.aw ], [ %.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139 ], [ %.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  %i.ey = load ptr, ptr %26, align 8, !tbaa !27   ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !26
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142, %bb.av
  %.pn74.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dm, %bb.av ], [ %.pn74.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142 ], [ %.pn74.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ] ; 2 uses
  %.7 = phi i1 [ true, %bb.av ], [ %.6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142 ], [ %.6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ] ; 2 uses
  %i.fd = load ptr, ptr %27, align 8, !tbaa !27   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !26
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145, %bb.au
  %.pn74.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dl, %bb.au ], [ %.pn74.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145 ], [ %.pn74.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ] ; 2 uses
  %.8 = phi i1 [ true, %bb.au ], [ %.7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145 ], [ %.7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ] ; 2 uses
  %i.fi = load ptr, ptr %28, align 8, !tbaa !27   ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.fk = icmp eq ptr %i.fi, %i.fj
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147
  %i.fl = load i64, ptr %i.fj, align 8, !tbaa !26
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fm) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148, %bb.at
  %.pn74.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dk, %bb.at ], [ %.pn74.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148 ], [ %.pn74.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147 ] ; 2 uses
  %.9 = phi i1 [ true, %bb.at ], [ %.8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148 ], [ %.8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  %i.fn = load ptr, ptr %18, align 8, !tbaa !27   ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.fp = icmp eq ptr %i.fn, %i.fo
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150
  %i.fq = load i64, ptr %i.fo, align 8, !tbaa !26
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151, %bb.as
  %.pn74.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dj, %bb.as ], [ %.pn74.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151 ], [ %.pn74.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150 ] ; 4 uses
  %.10 = phi i1 [ true, %bb.as ], [ %.9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151 ], [ %.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150 ] ; 2 uses
  %i.fs = load ptr, ptr %19, align 8, !tbaa !27   ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !26
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154
  %i.fx = load ptr, ptr %20, align 8, !tbaa !27   ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.thread: ; preds = %bb.af
  %i.ga = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gb = load ptr, ptr %20, align 8, !tbaa !27   ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.gd = icmp eq ptr %i.gb, %i.gc
  br i1 %i.gd, label %.sink.split300, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.thread
  %i.ge = load i64, ptr %i.gc, align 8, !tbaa !26
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.gf) #24
  br label %.sink.split300

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156
  %i.gg = load i64, ptr %i.fy, align 8, !tbaa !26
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gh) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br i1 %.10, label %bb.bd, label %bb.bk

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br i1 %.10, label %bb.bd, label %bb.bk

.sink.split300:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157.thread
  %.pn74.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn177.ph = phi { ptr, i32 } [ %i.ga, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157.thread ], [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.thread ], [ %i.ga, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %bb.bd

bb.bd:                                            ; preds = %.sink.split300, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159
  %.pn74.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn177 = phi { ptr, i32 } [ %.pn74.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157 ], [ %.pn74.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159 ], [ %.pn74.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn177.ph, %.sink.split300 ]
  call void @__cxa_free_exception(ptr %i.dh) #23
  br label %bb.bk

bb.be:                                            ; preds = %bb.ad
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.x ; 2 uses
  %.not.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !67
  store i64 %i.gj, ptr %i.t, align 8, !tbaa !67
  %i.gk = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store ptr %i.gk, ptr %i.q, align 8, !tbaa !62
  br label %_ZNSt6vectorIxSaIxEE9push_backERKx.exit

bb.bg:                                            ; preds = %bb.be
  %i.gl = ptrtoint ptr %i.t to i64
  %i.gm = ptrtoint ptr %i.v to i64
  %i.gn = sub i64 %i.gl, %i.gm                    ; 6 uses
  %i.go = icmp eq i64 %i.gn, 9223372036854775800
  br i1 %i.go, label %bb.bh, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i

bb.bh:                                            ; preds = %bb.bg
  store ptr %i.u, ptr %i.j, align 8
  store ptr %i.v, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #26
          to label %.noexc160 unwind label %.loopexit.split-lp

.noexc160:                                        ; preds = %bb.bh
  unreachable

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bg
  %i.gp = ashr exact i64 %i.gn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.gp, i64 1)
  %i.gq = add nsw i64 %.sroa.speculated.i.i.i, %i.gp ; 2 uses
  %i.gr = icmp ult i64 %i.gq, %i.gp
  %i.gs = tail call i64 @llvm.umin.i64(i64 %i.gq, i64 1152921504606846975)
  %i.gt = select i1 %i.gr, i64 1152921504606846975, i64 %i.gs ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.gt, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.gu = shl nuw nsw i64 %i.gt, 3
  %i.gv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gu) #25
          to label %.noexc161 unwind label %.loopexit ; 4 uses

.noexc161:                                        ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i
  %i.gw = getelementptr inbounds i8, ptr %i.gv, i64 %i.gn ; 2 uses
  %i.gx = load i64, ptr %i.gi, align 8, !tbaa !67
  store i64 %i.gx, ptr %i.gw, align 8, !tbaa !67
  %i.gy = icmp sgt i64 %i.gn, 0
  br i1 %i.gy, label %bb.bi, label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i

bb.bi:                                            ; preds = %.noexc161
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gv, ptr align 8 %i.v, i64 %i.gn, i1 false)
  br label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i: ; preds = %bb.bi, %.noexc161
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.gn) #24
  br label %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i

_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i: ; preds = %bb.bj, %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit16.i.i
  store ptr %i.gz, ptr %i.q, align 8, !tbaa !62
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.gt
  %.pre218 = load ptr, ptr %i.c, align 8, !tbaa !62
  %.pre219 = load ptr, ptr %2, align 8, !tbaa !63
  br label %_ZNSt6vectorIxSaIxEE9push_backERKx.exit

_ZNSt6vectorIxSaIxEE9push_backERKx.exit:          ; preds = %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i, %bb.bf
  %i.hb = phi ptr [ %.pre219, %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i ], [ %i.r, %bb.bf ] ; 2 uses
  %i.hc = phi ptr [ %.pre218, %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i ], [ %i.s, %bb.bf ] ; 2 uses
  %i.hd = phi ptr [ %i.gz, %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i ], [ %i.gk, %bb.bf ]
  %i.he = phi ptr [ %i.gv, %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i ], [ %i.v, %bb.bf ] ; 2 uses
  %i.hf = phi ptr [ %i.ha, %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i ], [ %i.u, %bb.bf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.hg = load i64, ptr %i.a, align 8, !tbaa !67
  %i.hh = add nsw i64 %i.hg, 1                    ; 3 uses
  store i64 %i.hh, ptr %i.a, align 8, !tbaa !67
  %i.hi = ptrtoint ptr %i.hc to i64
  %i.hj = ptrtoint ptr %i.hb to i64
  %i.hk = sub i64 %i.hi, %i.hj
  %i.hl = ashr exact i64 %i.hk, 3
  %i.hm = icmp ult i64 %i.hh, %i.hl
  br i1 %i.hm, label %bb.c, label %._crit_edge, !llvm.loop !404

.loopexit:                                        ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.u, ptr %i.j, align 8
  store ptr %i.v, ptr %0, align 8
  br label %bb.bk

.loopexit.split-lp:                               ; preds = %bb.bh
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bk:                                            ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, %bb.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157, %.loopexit.split-lp, %.loopexit
  %.pn87 = phi { ptr, i32 } [ %.pn74.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157 ], [ %.pn74.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn177, %bb.bd ], [ %.pn74.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn165, %bb.ac ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not.i.i.i162 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i162, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hn = ptrtoint ptr %i.u to i64
  %i.ho = ptrtoint ptr %i.v to i64
  %i.hp = sub i64 %i.hn, %i.ho
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.hp) #24
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.bk, %bb.bl
  resume { ptr, i32 } %.pn87

bb.bm:                                            ; preds = %bb.ar, %bb.q
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi8NonZerosINS_6MatrixIdEESt6vectorIxSaIxEEEC2ERS2_RKS5_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::Matrix.129", align 8 ; 9 uses
  tail call void @_ZN6casadi6MatrixIdEC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.a, align 8, !tbaa !150
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62   ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !63     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %.noexc10, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.h, 9223372036854775800
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i, !prof !54

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #25
          to label %.noexc10 unwind label %bb.k

.noexc10:                                         ; preds = %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.k = phi ptr [ null, %bb.a ], [ %i.j, %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.k, ptr %i.b, align 8, !tbaa !63
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !64
  %i.o = load ptr, ptr %2, align 8, !tbaa !65     ; 3 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !65
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = icmp sgt i64 %i.s, 8
  br i1 %i.t, label %bb.c, label %bb.d, !prof !57

bb.c:                                             ; preds = %.noexc10
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.k, ptr align 8 %i.o, i64 %i.s, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc10
  %i.u = icmp eq i64 %i.s, 8
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.o, align 8, !tbaa !67
  store i64 %i.v, ptr %i.k, align 8, !tbaa !67
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.w = getelementptr inbounds i8, ptr %i.k, i64 %i.s
  store ptr %i.w, ptr %i.l, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZN6casadi6MatrixIxEC1ERKSt6vectorIxSaIxEE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNK6casadi6MatrixIdE6get_nzERS1_bRKNS0_IxEE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %0, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !63   ; 3 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i11, label %_ZNSt6vectorIxSaIxEED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !64
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #24
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit.i

_ZNSt6vectorIxSaIxEED2Ev.exit.i:                  ; preds = %bb.i, %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %_ZN6casadi6MatrixIxED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit.i
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #27
  unreachable

_ZN6casadi6MatrixIxED2Ev.exit:                    ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

bb.l:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6MatrixIxED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.m ], [ %i.ai, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !63  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !64
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ao) #24
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.o, %bb.n, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.k ], [ %.pn, %bb.n ], [ %.pn, %bb.o ]
  call void @_ZN6casadi6MatrixIdED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #23
  resume { ptr, i32 } %.pn.pn
}

end_hunk_2
