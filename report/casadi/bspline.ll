Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/bspline?download=true
inline.NumInlined: 2692
inline.NumDeleted: 811
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6casadi9do_inlineERKNS_2MXERKSt6vectorIS3_IdSaIdEESaIS5_EES2_xRKS3_IxSaIxEESD_:bb.a
  %26 = alloca %"class.casadi::Matrix", align 8   ; 9 uses
  %27 = alloca %"class.casadi::Matrix", align 8   ; 9 uses
  %28 = alloca %"class.casadi::Matrix", align 8   ; 9 uses
  %29 = alloca %"class.casadi::Matrix", align 8   ; 9 uses
  %30 = alloca %"class.casadi::Matrix", align 8   ; 9 uses
  %31 = alloca %"class.std::vector.13", align 8   ; 8 uses
  %32 = alloca %"class.std::vector.3", align 8    ; 13 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %33 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %34 = alloca %"class.casadi::MX", align 8       ; 9 uses
  %35 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %36 = alloca %"class.casadi::SubIndex", align 8 ; 7 uses
  %37 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %38 = alloca %"class.casadi::MX", align 8       ; 9 uses
  %39 = alloca %"class.casadi::MX", align 8       ; 9 uses
  %40 = alloca %"class.casadi::MX", align 8       ; 10 uses
  %41 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %42 = alloca %"class.casadi::MX", align 8       ; 8 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.c = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !180  ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !183    ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 5 uses
  %i.j = sdiv exact i64 %i.i, 24                  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @_ZN6casadi17SparsityInterfaceINS_2MXEE9vertsplitERKS1_x(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.3") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZNSt6vectorIN6casadi2MXESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.j, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.k = icmp ugt i64 %i.j, 384307168202282325
  br i1 %i.k, label %bb.c, label %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #26
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.f          ; 3 uses
  br i1 %.not.i.i.i.i, label %.thread, label %.lr.ph.preheader.i.i.i.i.i

.thread:                                          ; preds = %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  br label %._crit_edge

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #25
          to label %.lr.ph unwind label %bb.e     ; 4 uses

.lr.ph:                                           ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.n, ptr %10, align 8, !tbaa !184
  %i.o = getelementptr i8, ptr %i.n, i64 %i.i     ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.n, i8 0, i64 %i.i, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.o, ptr %i.q, align 8, !tbaa !187
  store ptr %i.o, ptr %i.p, align 8, !tbaa !188
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit, %.thread
  %i.t = phi ptr [ %i.m, %.thread ], [ %i.q, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit ]
  %i.u = phi ptr [ %i.l, %.thread ], [ %i.p, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.v = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #25
          to label %bb.v unwind label %bb.w       ; 4 uses

bb.d:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.ek

bb.e:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

bb.f:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit
  %.044249 = phi i64 [ 0, %.lr.ph ], [ %i.be, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZN6casadi2MXC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %7, align 8, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.z = load ptr, ptr %2, align 8, !tbaa !183
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %.044249
  invoke void @_ZN6casadi2MXC1ERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.044249
  %i.ac = load ptr, ptr %5, align 8, !tbaa !65
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.044249
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !68
  %i.af = load ptr, ptr %6, align 8, !tbaa !65
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.044249
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !68
  %i.ai = load ptr, ptr %8, align 8, !tbaa !169
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.044249
  invoke void @_ZN6casadi8get_boorERKNS_2MXES2_xxRS0_S3_(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %i.ae, i64 noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  invoke void @_ZNK6casadi2MX1TEv(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6casadi17SparsityInterfaceINS_2MXEE9horzsplitERKS1_x(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.3") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef 1)
          to label %_ZN6casadi9horzsplitERKNS_2MXEx.exit unwind label %bb.r

_ZN6casadi9horzsplitERKNS_2MXEx.exit:             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.044249 ; 4 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !169 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !173 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !170
  %i.aq = load <2 x ptr>, ptr %13, align 16, !tbaa !168
  store <2 x ptr> %i.aq, ptr %i.ak, align 8, !tbaa !168
  %i.ar = load ptr, ptr %i.s, align 16, !tbaa !170
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !170
  %.not4.i.i.i.i.i = icmp eq ptr %i.al, %i.an
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN6casadi9horzsplitERKNS_2MXEx.exit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i ], [ %i.al, %_ZN6casadi9horzsplitERKNS_2MXEx.exit ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i) #23
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.as, %i.an
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !174

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZN6casadi9horzsplitERKNS_2MXEx.exit
  %.not.i.i1.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = ptrtoint ptr %i.al to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.av) #24
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit

_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit:    ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.k
  %i.aw = load ptr, ptr %13, align 16, !tbaa !169 ; 3 uses
  %i.ax = load ptr, ptr %i.r, align 8, !tbaa !173 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.aw, %i.ax
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %i.aw, %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i) #23
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ay, %i.ax
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !174

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %13, align 16, !tbaa !169
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit
  %i.az = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.aw, %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i
  %i.ba = load ptr, ptr %i.s, align 16, !tbaa !170
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = sub i64 %i.bb, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bd) #24
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit

_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit:       ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i, %bb.l
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.be = add nuw nsw i64 %.044249, 1             ; 2 uses
  %43 = icmp slt i64 %i.be, %i.j
  br i1 %43, label %bb.f, label %._crit_edge, !llvm.loop !189

bb.m:                                             ; preds = %bb.f
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.n:                                             ; preds = %bb.g
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.h
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #23
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn122 = phi { ptr, i32 } [ %i.bh, %bb.o ], [ %i.bg, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.t

bb.q:                                             ; preds = %bb.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.j
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #23
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn124 = phi { ptr, i32 } [ %i.bj, %bb.r ], [ %i.bi, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %.pn124.pn = phi { ptr, i32 } [ %.pn124, %bb.s ], [ %.pn122, %bb.p ]
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #23
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %.pn124.pn.pn = phi { ptr, i32 } [ %.pn124.pn, %bb.t ], [ %i.bf, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.ei

bb.v:                                             ; preds = %._crit_edge
  store ptr %i.v, ptr %15, align 8, !tbaa !65
  %i.bk = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !66
  store i64 %4, ptr %i.v, align 8, !tbaa !68
  %i.bm = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !62
  %44 = add nsw i64 %i.j, -1
  %i.bn = icmp sgt i64 %i.i, 24
  br i1 %i.bn, label %.lr.ph252, label %._crit_edge253

._crit_edge253:                                   ; preds = %_ZNSt6vectorIxSaIxEE9push_backEOx.exit, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  invoke void @_ZN6casadi6MatrixIdEC2IxEERKSt6vectorIT_SaIS4_EE(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.ab unwind label %bb.al

bb.w:                                             ; preds = %._crit_edge
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit245

.lr.ph252:                                        ; preds = %bb.v, %_ZNSt6vectorIxSaIxEE9push_backEOx.exit
  %i.bp = phi ptr [ %i.cz, %_ZNSt6vectorIxSaIxEE9push_backEOx.exit ], [ %i.v, %bb.v ] ; 4 uses
  %i.bq = phi ptr [ %i.da, %_ZNSt6vectorIxSaIxEE9push_backEOx.exit ], [ %i.bk, %bb.v ] ; 3 uses
  %i.br = phi ptr [ %i.db, %_ZNSt6vectorIxSaIxEE9push_backEOx.exit ], [ %i.bk, %bb.v ] ; 4 uses
  %.043250 = phi i64 [ %i.dc, %_ZNSt6vectorIxSaIxEE9push_backEOx.exit ], [ 0, %bb.v ] ; 3 uses
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !68
  %i.bu = load ptr, ptr %2, align 8, !tbaa !183
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %.043250 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !52
  %i.by = load ptr, ptr %i.bv, align 8, !tbaa !55
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 3
  %i.cd = load ptr, ptr %5, align 8, !tbaa !65
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.043250
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !68
  %i.cg = xor i64 %i.cf, -1
  %i.ch = add i64 %i.cc, %i.cg
  %i.ci = mul i64 %i.ch, %i.bt                    ; 2 uses
  %.not.i.i = icmp eq ptr %i.br, %i.bq
  br i1 %.not.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph252
  store i64 %i.ci, ptr %i.br, align 8, !tbaa !68
  %i.cj = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  store ptr %i.cj, ptr %i.bm, align 8, !tbaa !62
  br label %_ZNSt6vectorIxSaIxEE9push_backEOx.exit

bb.y:                                             ; preds = %.lr.ph252
  %i.ck = ptrtoint ptr %i.bq to i64
  %i.cl = ptrtoint ptr %i.bp to i64
  %i.cm = sub i64 %i.ck, %i.cl                    ; 6 uses
  %i.cn = icmp eq i64 %i.cm, 9223372036854775800
  br i1 %i.cn, label %bb.z, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #26
          to label %.noexc135 unwind label %.loopexit.split-lp

.noexc135:                                        ; preds = %bb.z
  unreachable

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.y
  %i.co = ashr exact i64 %i.cm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.co, i64 1)
  %i.cp = add nsw i64 %.sroa.speculated.i.i.i.i, %i.co ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.co
  %i.cr = call i64 @llvm.umin.i64(i64 %i.cp, i64 1152921504606846975)
  %i.cs = select i1 %i.cq, i64 1152921504606846975, i64 %i.cr ; 3 uses
  %.not.i.i.i.i134 = icmp ne i64 %i.cs, 0
  call void @llvm.assume(i1 %.not.i.i.i.i134)
  %i.ct = shl nuw nsw i64 %i.cs, 3
  %i.cu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #25
          to label %.noexc136 unwind label %.loopexit ; 5 uses

.noexc136:                                        ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 %i.cm ; 2 uses
  store i64 %i.ci, ptr %i.cv, align 8, !tbaa !68
  %i.cw = icmp sgt i64 %i.cm, 0
  br i1 %i.cw, label %bb.aa, label %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.i

bb.aa:                                            ; preds = %.noexc136
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cu, ptr align 8 %i.bp, i64 %i.cm, i1 false)
  br label %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.i

_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.i: ; preds = %bb.aa, %.noexc136
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.cm) #24
  store ptr %i.cu, ptr %15, align 8, !tbaa !65
  store ptr %i.cx, ptr %i.bm, align 8, !tbaa !62
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cs ; 2 uses
  store ptr %i.cy, ptr %i.bl, align 8, !tbaa !66
  br label %_ZNSt6vectorIxSaIxEE9push_backEOx.exit

_ZNSt6vectorIxSaIxEE9push_backEOx.exit:           ; preds = %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.i, %bb.x
  %i.cz = phi ptr [ %i.cu, %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.i ], [ %i.bp, %bb.x ]
  %i.da = phi ptr [ %i.cy, %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.i ], [ %i.bq, %bb.x ]
  %i.db = phi ptr [ %i.cx, %_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_.exit.i.i ], [ %i.cj, %bb.x ]
  %i.dc = add nuw nsw i64 %.043250, 1             ; 2 uses
  %45 = icmp slt i64 %i.dc, %44
  br i1 %45, label %.lr.ph252, label %._crit_edge253, !llvm.loop !190

.loopexit:                                        ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

.loopexit.split-lp:                               ; preds = %bb.z
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.ab:                                            ; preds = %._crit_edge253
  invoke void @_ZNK6casadi6MatrixIdE1TEv(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Matrix") align 8 %18, ptr noundef nonnull align 8 dereferenceable(40) %19)
          to label %bb.ac unwind label %bb.am

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN6casadi2MXC1ERKNS_6MatrixIdEE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(40) %18)
          to label %bb.ad unwind label %bb.an

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  invoke void @_ZN6casadi2MX7vertcatERKSt6vectorIS0_SaIS0_EE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %_ZN6casadi7vertcatERKSt6vectorINS_2MXESaIS1_EE.exit unwind label %bb.ao

_ZN6casadi7vertcatERKSt6vectorINS_2MXESaIS1_EE.exit: ; preds = %bb.ad
  invoke void @_ZN6casadi2MX6mtimesERKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %_ZN6casadi6mtimesERKNS_2MXES2_.exit unwind label %bb.ap

_ZN6casadi6mtimesERKNS_2MXES2_.exit:              ; preds = %_ZN6casadi7vertcatERKSt6vectorINS_2MXESaIS1_EE.exit
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #23
  %i.dd = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !55 ; 3 uses
  %.not.i.i.i.i139 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i.i139, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN6casadi6mtimesERKNS_2MXES2_.exit
  %i.df = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !57
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.de to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.dj) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i:                  ; preds = %bb.ae, %_ZN6casadi6mtimesERKNS_2MXES2_.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %18, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dk)
          to label %_ZN6casadi6MatrixIdED2Ev.exit unwind label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  %i.dm = extractvalue { ptr, i32 } %i.dl, 0
  call void @__clang_call_terminate(ptr %i.dm) #27
  unreachable

_ZN6casadi6MatrixIdED2Ev.exit:                    ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %i.dn = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !55 ; 3 uses
  %.not.i.i.i.i140 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i.i140, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i141, label %bb.ag

bb.ag:                                            ; preds = %_ZN6casadi6MatrixIdED2Ev.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !57
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.do to i64
  %i.dt = sub i64 %i.dr, %i.ds
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.dt) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i141

_ZNSt6vectorIdSaIdEED2Ev.exit.i141:               ; preds = %bb.ag, %_ZN6casadi6MatrixIdED2Ev.exit
  %i.du = getelementptr inbounds nuw i8, ptr %19, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.du)
          to label %_ZN6casadi6MatrixIdED2Ev.exit142 unwind label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i141
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #27
  unreachable

_ZN6casadi6MatrixIdED2Ev.exit142:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  invoke void @_ZN6casadi5rangeEx(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.13") align 8 %22, i64 noundef %4)
          to label %bb.ai unwind label %bb.au

bb.ai:                                            ; preds = %_ZN6casadi6MatrixIdED2Ev.exit142
  invoke void @_ZN6casadi6MatrixIdEC2IxEERKSt6vectorIT_SaIS4_EE(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull align 8 dereferenceable(24) %22)
          to label %bb.aj unwind label %bb.av

bb.aj:                                            ; preds = %bb.ai
  %i.dx = load ptr, ptr %22, align 8, !tbaa !65   ; 3 uses
  %.not.i.i.i143 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i143, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dy = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !66
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %i.dx to i64
  %i.ec = sub i64 %i.ea, %i.eb
  call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.ec) #24
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br i1 %.not.i.i.i.i, label %._crit_edge256, label %.lr.ph255

.lr.ph255:                                        ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.ef = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %26, i64 32
  %i.el = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.eo = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.er = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.eu = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.ey = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.fa = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.fb = getelementptr inbounds nuw i8, ptr %25, i64 8
  br label %bb.ax

._crit_edge256:                                   ; preds = %_ZN6casadi6MatrixIdED2Ev.exit184, %_ZNSt6vectorIxSaIxEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %32, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !tbaa !68
  %i.fc = icmp sgt i64 %i.c, 0
  br i1 %i.fc, label %.lr.ph261, label %._crit_edge262

.lr.ph261:                                        ; preds = %._crit_edge256
  %i.fd = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %32, i64 16
  br label %bb.cp

bb.al:                                            ; preds = %._crit_edge253
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.am:                                            ; preds = %bb.ab
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.an:                                            ; preds = %bb.ac
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ao:                                            ; preds = %bb.ad
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %_ZN6casadi7vertcatERKSt6vectorINS_2MXESaIS1_EE.exit
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #23
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn = phi { ptr, i32 } [ %i.fj, %bb.ap ], [ %i.fi, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #23
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.aq ], [ %i.fh, %bb.an ]
  call void @_ZN6casadi6MatrixIdED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %18) #23
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.am
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ar ], [ %i.fg, %bb.am ]
  call void @_ZN6casadi6MatrixIdED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %19) #23
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.al
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.as ], [ %i.ff, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %bb.ef

bb.au:                                            ; preds = %_ZN6casadi6MatrixIdED2Ev.exit142
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit145

bb.av:                                            ; preds = %bb.ai
  %i.fl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fm = load ptr, ptr %22, align 8, !tbaa !65   ; 3 uses
  %.not.i.i.i144 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i144, label %_ZNSt6vectorIxSaIxEED2Ev.exit145, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fn = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !66
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = ptrtoint ptr %i.fm to i64
  %i.fr = sub i64 %i.fp, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef %i.fr) #24
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit145

_ZNSt6vectorIxSaIxEED2Ev.exit145:                 ; preds = %bb.aw, %bb.av, %bb.au
  %.pn89 = phi { ptr, i32 } [ %i.fk, %bb.au ], [ %i.fl, %bb.av ], [ %i.fl, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %bb.ee

bb.ax:                                            ; preds = %.lr.ph255, %_ZN6casadi6MatrixIdED2Ev.exit184
  %.042254 = phi i64 [ 0, %.lr.ph255 ], [ %i.ir, %_ZN6casadi6MatrixIdED2Ev.exit184 ] ; 3 uses
  %i.fs = load ptr, ptr %5, align 8, !tbaa !65
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %.042254
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !68
  %i.fv = add nsw i64 %i.fu, 1                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  invoke void @_ZN6casadi17SparsityInterfaceINS_6MatrixIdEEE6repmatERKS2_xx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Matrix") align 8 %25, ptr noundef nonnull align 8 dereferenceable(40) %21, i64 noundef 1, i64 noundef %i.fv)
          to label %_ZN6casadi6repmatERKNS_6MatrixIdEExx.exit unwind label %bb.bw

_ZN6casadi6repmatERKNS_6MatrixIdEExx.exit:        ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  %i.fw = load ptr, ptr %15, align 8, !tbaa !65
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %.042254
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !68
  %i.fz = sitofp i64 %i.fy to double
  invoke void @_ZN6casadi6MatrixIdEC1Ed(ptr noundef nonnull align 8 dereferenceable(40) %28, double noundef %i.fz)
          to label %bb.ay unwind label %bb.bx

bb.ay:                                            ; preds = %_ZN6casadi6repmatERKNS_6MatrixIdEExx.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  invoke void @_ZN6casadi5rangeEx(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.13") align 8 %31, i64 noundef %i.fv)
          to label %bb.az unwind label %bb.by

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN6casadi6MatrixIdEC2IxEERKSt6vectorIT_SaIS4_EE(ptr noundef nonnull align 8 dereferenceable(40) %30, ptr noundef nonnull align 8 dereferenceable(24) %31)
          to label %bb.ba unwind label %bb.bz

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZNK6casadi6MatrixIdE1TEv(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Matrix") align 8 %29, ptr noundef nonnull align 8 dereferenceable(40) %30)
          to label %bb.bb unwind label %bb.ca

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZN6casadi6MatrixIdE6binaryExRKS1_S3_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Matrix") align 8 %27, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(40) %28, ptr noundef nonnull align 8 dereferenceable(40) %29)
          to label %_ZN6casadimlERKNS_6MatrixIdEES3_.exit unwind label %bb.cb

_ZN6casadimlERKNS_6MatrixIdEES3_.exit:            ; preds = %bb.bb
  %i.ga = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi6MatrixIdE8sparsityEv(ptr noundef nonnull align 8 dereferenceable(40) %21)
          to label %.noexc148 unwind label %bb.cc

.noexc148:                                        ; preds = %_ZN6casadimlERKNS_6MatrixIdEES3_.exit
  %i.gb = invoke noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ga)
          to label %_ZNK6casadi13GenericMatrixINS_6MatrixIdEEE5size1Ev.exit unwind label %bb.cc

_ZNK6casadi13GenericMatrixINS_6MatrixIdEEE5size1Ev.exit: ; preds = %.noexc148
  invoke void @_ZN6casadi17SparsityInterfaceINS_6MatrixIdEEE6repmatERKS2_xx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Matrix") align 8 %26, ptr noundef nonnull align 8 dereferenceable(40) %27, i64 noundef %i.gb, i64 noundef 1)
          to label %_ZN6casadi6repmatERKNS_6MatrixIdEExx.exit151 unwind label %bb.cc

_ZN6casadi6repmatERKNS_6MatrixIdEExx.exit151:     ; preds = %_ZNK6casadi13GenericMatrixINS_6MatrixIdEEE5size1Ev.exit
  invoke void @_ZN6casadi6MatrixIdE6binaryExRKS1_S3_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Matrix") align 8 %24, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(40) %25, ptr noundef nonnull align 8 dereferenceable(40) %26)
          to label %_ZN6casadiplERKNS_6MatrixIdEES3_.exit unwind label %bb.cd

_ZN6casadiplERKNS_6MatrixIdEES3_.exit:            ; preds = %_ZN6casadi6repmatERKNS_6MatrixIdEExx.exit151
  %i.gc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi6MatrixIdE8sparsityEv(ptr noundef nonnull align 8 dereferenceable(40) %24)
          to label %.noexc153 unwind label %bb.ce

.noexc153:                                        ; preds = %_ZN6casadiplERKNS_6MatrixIdEES3_.exit
  %i.gd = invoke noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.gc)
          to label %.noexc154 unwind label %bb.ce

.noexc154:                                        ; preds = %.noexc153
  %i.ge = icmp eq i64 %i.gd, 1
  br i1 %i.ge, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.noexc154
  invoke void @_ZN6casadi6MatrixIdEC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %23, ptr noundef nonnull align 8 dereferenceable(40) %24)
          to label %_ZN6casadi3vecERKNS_6MatrixIdEE.exit unwind label %bb.ce

bb.bd:                                            ; preds = %.noexc154
  %i.gf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi6MatrixIdE8sparsityEv(ptr noundef nonnull align 8 dereferenceable(40) %24)
          to label %.noexc156 unwind label %bb.ce

.noexc156:                                        ; preds = %bb.bd
  %i.gg = invoke noundef i64 @_ZNK6casadi8Sparsity5numelEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gf)
          to label %.noexc157 unwind label %bb.ce

.noexc157:                                        ; preds = %.noexc156
  invoke void @_ZN6casadi6MatrixIdE7reshapeERKS1_xx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Matrix") align 8 %23, ptr noundef nonnull align 8 dereferenceable(40) %24, i64 noundef %i.gg, i64 noundef 1)
          to label %_ZN6casadi3vecERKNS_6MatrixIdEE.exit unwind label %bb.ce

_ZN6casadi3vecERKNS_6MatrixIdEE.exit:             ; preds = %bb.bc, %.noexc157
  %i.gh = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN6casadi6MatrixIdEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull align 8 dereferenceable(40) %23)
          to label %bb.be unwind label %bb.cf     ; 0 uses

bb.be:                                            ; preds = %_ZN6casadi3vecERKNS_6MatrixIdEE.exit
  %i.gi = load ptr, ptr %i.ed, align 8, !tbaa !55 ; 3 uses
  %.not.i.i.i.i159 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i.i159, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i160, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gj = load ptr, ptr %i.ee, align 8, !tbaa !57
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = ptrtoint ptr %i.gi to i64
  %i.gm = sub i64 %i.gk, %i.gl
  call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef %i.gm) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i160

_ZNSt6vectorIdSaIdEED2Ev.exit.i160:               ; preds = %bb.bf, %bb.be
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ef)
          to label %_ZN6casadi6MatrixIdED2Ev.exit161 unwind label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i160
  %i.gn = landingpad { ptr, i32 }
          catch ptr null
  %i.go = extractvalue { ptr, i32 } %i.gn, 0
  call void @__clang_call_terminate(ptr %i.go) #27
  unreachable

_ZN6casadi6MatrixIdED2Ev.exit161:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i160
  %i.gp = load ptr, ptr %i.eg, align 8, !tbaa !55 ; 3 uses
  %.not.i.i.i.i162 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i162, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i163, label %bb.bh

bb.bh:                                            ; preds = %_ZN6casadi6MatrixIdED2Ev.exit161
  %i.gq = load ptr, ptr %i.eh, align 8, !tbaa !57
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = ptrtoint ptr %i.gp to i64
  %i.gt = sub i64 %i.gr, %i.gs
  call void @_ZdlPvm(ptr noundef nonnull %i.gp, i64 noundef %i.gt) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i163

_ZNSt6vectorIdSaIdEED2Ev.exit.i163:               ; preds = %bb.bh, %_ZN6casadi6MatrixIdED2Ev.exit161
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ei)
          to label %_ZN6casadi6MatrixIdED2Ev.exit164 unwind label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i163
  %i.gu = landingpad { ptr, i32 }
          catch ptr null
  %i.gv = extractvalue { ptr, i32 } %i.gu, 0
  call void @__clang_call_terminate(ptr %i.gv) #27
  unreachable

_ZN6casadi6MatrixIdED2Ev.exit164:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i163
  %i.gw = load ptr, ptr %i.ej, align 8, !tbaa !55 ; 3 uses
  %.not.i.i.i.i165 = icmp eq ptr %i.gw, null
  br i1 %.not.i.i.i.i165, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i166, label %bb.bj

bb.bj:                                            ; preds = %_ZN6casadi6MatrixIdED2Ev.exit164
  %i.gx = load ptr, ptr %i.ek, align 8, !tbaa !57
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = ptrtoint ptr %i.gw to i64
  %i.ha = sub i64 %i.gy, %i.gz
  call void @_ZdlPvm(ptr noundef nonnull %i.gw, i64 noundef %i.ha) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i166

_ZNSt6vectorIdSaIdEED2Ev.exit.i166:               ; preds = %bb.bj, %_ZN6casadi6MatrixIdED2Ev.exit164
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.el)
          to label %_ZN6casadi6MatrixIdED2Ev.exit167 unwind label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i166
  %i.hb = landingpad { ptr, i32 }
          catch ptr null
  %i.hc = extractvalue { ptr, i32 } %i.hb, 0
  call void @__clang_call_terminate(ptr %i.hc) #27
  unreachable

_ZN6casadi6MatrixIdED2Ev.exit167:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i166
  %i.hd = load ptr, ptr %i.em, align 8, !tbaa !55 ; 3 uses
  %.not.i.i.i.i168 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i.i168, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i169, label %bb.bl

bb.bl:                                            ; preds = %_ZN6casadi6MatrixIdED2Ev.exit167
  %i.he = load ptr, ptr %i.en, align 8, !tbaa !57
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = ptrtoint ptr %i.hd to i64
  %i.hh = sub i64 %i.hf, %i.hg
  call void @_ZdlPvm(ptr noundef nonnull %i.hd, i64 noundef %i.hh) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i169

_ZNSt6vectorIdSaIdEED2Ev.exit.i169:               ; preds = %bb.bl, %_ZN6casadi6MatrixIdED2Ev.exit167
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eo)
          to label %_ZN6casadi6MatrixIdED2Ev.exit170 unwind label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i169
  %i.hi = landingpad { ptr, i32 }
          catch ptr null
  %i.hj = extractvalue { ptr, i32 } %i.hi, 0
  call void @__clang_call_terminate(ptr %i.hj) #27
  unreachable

_ZN6casadi6MatrixIdED2Ev.exit170:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i169
  %i.hk = load ptr, ptr %i.ep, align 8, !tbaa !55 ; 3 uses
  %.not.i.i.i.i171 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i.i171, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i172, label %bb.bn

bb.bn:                                            ; preds = %_ZN6casadi6MatrixIdED2Ev.exit170
  %i.hl = load ptr, ptr %i.eq, align 8, !tbaa !57
  %i.hm = ptrtoint ptr %i.hl to i64
  %i.hn = ptrtoint ptr %i.hk to i64
  %i.ho = sub i64 %i.hm, %i.hn
  call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef %i.ho) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i172

_ZNSt6vectorIdSaIdEED2Ev.exit.i172:               ; preds = %bb.bn, %_ZN6casadi6MatrixIdED2Ev.exit170
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.er)
          to label %_ZN6casadi6MatrixIdED2Ev.exit173 unwind label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i172
  %i.hp = landingpad { ptr, i32 }
          catch ptr null
  %i.hq = extractvalue { ptr, i32 } %i.hp, 0
  call void @__clang_call_terminate(ptr %i.hq) #27
  unreachable

_ZN6casadi6MatrixIdED2Ev.exit173:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i172
  %i.hr = load ptr, ptr %i.es, align 8, !tbaa !55 ; 3 uses
  %.not.i.i.i.i174 = icmp eq ptr %i.hr, null
  br i1 %.not.i.i.i.i174, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i175, label %bb.bp

bb.bp:                                            ; preds = %_ZN6casadi6MatrixIdED2Ev.exit173
  %i.hs = load ptr, ptr %i.et, align 8, !tbaa !57
  %i.ht = ptrtoint ptr %i.hs to i64
  %i.hu = ptrtoint ptr %i.hr to i64
  %i.hv = sub i64 %i.ht, %i.hu
  call void @_ZdlPvm(ptr noundef nonnull %i.hr, i64 noundef %i.hv) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i175

_ZNSt6vectorIdSaIdEED2Ev.exit.i175:               ; preds = %bb.bp, %_ZN6casadi6MatrixIdED2Ev.exit173
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eu)
          to label %_ZN6casadi6MatrixIdED2Ev.exit176 unwind label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i175
  %i.hw = landingpad { ptr, i32 }
          catch ptr null
  %i.hx = extractvalue { ptr, i32 } %i.hw, 0
  call void @__clang_call_terminate(ptr %i.hx) #27
  unreachable

_ZN6casadi6MatrixIdED2Ev.exit176:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i175
  %i.hy = load ptr, ptr %31, align 8, !tbaa !65   ; 3 uses
  %.not.i.i.i177 = icmp eq ptr %i.hy, null
  br i1 %.not.i.i.i177, label %_ZNSt6vectorIxSaIxEED2Ev.exit178, label %bb.br

bb.br:                                            ; preds = %_ZN6casadi6MatrixIdED2Ev.exit176
  %i.hz = load ptr, ptr %i.ev, align 8, !tbaa !66
  %i.ia = ptrtoint ptr %i.hz to i64
  %i.ib = ptrtoint ptr %i.hy to i64
  %i.ic = sub i64 %i.ia, %i.ib
  call void @_ZdlPvm(ptr noundef nonnull %i.hy, i64 noundef %i.ic) #24
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit178

_ZNSt6vectorIxSaIxEED2Ev.exit178:                 ; preds = %_ZN6casadi6MatrixIdED2Ev.exit176, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  %i.id = load ptr, ptr %i.ew, align 8, !tbaa !55 ; 3 uses
  %.not.i.i.i.i179 = icmp eq ptr %i.id, null
  br i1 %.not.i.i.i.i179, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i180, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit178
  %i.ie = load ptr, ptr %i.ex, align 8, !tbaa !57
  %i.if = ptrtoint ptr %i.ie to i64
  %i.ig = ptrtoint ptr %i.id to i64
  %i.ih = sub i64 %i.if, %i.ig
  call void @_ZdlPvm(ptr noundef nonnull %i.id, i64 noundef %i.ih) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i180

_ZNSt6vectorIdSaIdEED2Ev.exit.i180:               ; preds = %bb.bs, %_ZNSt6vectorIxSaIxEED2Ev.exit178
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ey)
          to label %_ZN6casadi6MatrixIdED2Ev.exit181 unwind label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i180
  %i.ii = landingpad { ptr, i32 }
          catch ptr null
  %i.ij = extractvalue { ptr, i32 } %i.ii, 0
  call void @__clang_call_terminate(ptr %i.ij) #27
  unreachable

_ZN6casadi6MatrixIdED2Ev.exit181:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i180
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  %i.ik = load ptr, ptr %i.ez, align 8, !tbaa !55 ; 3 uses
  %.not.i.i.i.i182 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i.i.i182, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i183, label %bb.bu

bb.bu:                                            ; preds = %_ZN6casadi6MatrixIdED2Ev.exit181
  %i.il = load ptr, ptr %i.fa, align 8, !tbaa !57
  %i.im = ptrtoint ptr %i.il to i64
  %i.in = ptrtoint ptr %i.ik to i64
  %i.io = sub i64 %i.im, %i.in
  call void @_ZdlPvm(ptr noundef nonnull %i.ik, i64 noundef %i.io) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i183

_ZNSt6vectorIdSaIdEED2Ev.exit.i183:               ; preds = %bb.bu, %_ZN6casadi6MatrixIdED2Ev.exit181
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fb)
          to label %_ZN6casadi6MatrixIdED2Ev.exit184 unwind label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i183
  %i.ip = landingpad { ptr, i32 }
          catch ptr null
  %i.iq = extractvalue { ptr, i32 } %i.ip, 0
  call void @__clang_call_terminate(ptr %i.iq) #27
  unreachable

_ZN6casadi6MatrixIdED2Ev.exit184:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i183
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  %i.ir = add nuw nsw i64 %.042254, 1             ; 2 uses
  %46 = icmp slt i64 %i.ir, %i.j
  br i1 %46, label %bb.ax, label %._crit_edge256, !llvm.loop !191

bb.bw:                                            ; preds = %bb.ax
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.bx:                                            ; preds = %_ZN6casadi6repmatERKNS_6MatrixIdEExx.exit
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.by:                                            ; preds = %bb.ay
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit186

bb.bz:                                            ; preds = %bb.az
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ca:                                            ; preds = %bb.ba
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cb:                                            ; preds = %bb.bb
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.cc:                                            ; preds = %_ZNK6casadi13GenericMatrixINS_6MatrixIdEEE5size1Ev.exit, %.noexc148, %_ZN6casadimlERKNS_6MatrixIdEES3_.exit
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.cd:                                            ; preds = %_ZN6casadi6repmatERKNS_6MatrixIdEExx.exit151
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.ce:                                            ; preds = %.noexc157, %.noexc156, %bb.bd, %bb.bc, %.noexc153, %_ZN6casadiplERKNS_6MatrixIdEES3_.exit
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.cf:                                            ; preds = %_ZN6casadi3vecERKNS_6MatrixIdEE.exit
  %i.jb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6MatrixIdED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %23) #23
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.pn106 = phi { ptr, i32 } [ %i.jb, %bb.cf ], [ %i.ja, %bb.ce ]
  call void @_ZN6casadi6MatrixIdED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %24) #23
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cd
  %.pn106.pn = phi { ptr, i32 } [ %.pn106, %bb.cg ], [ %i.iz, %bb.cd ]
  call void @_ZN6casadi6MatrixIdED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %26) #23
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cc
  %.pn106.pn.pn = phi { ptr, i32 } [ %.pn106.pn, %bb.ch ], [ %i.iy, %bb.cc ]
  call void @_ZN6casadi6MatrixIdED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %27) #23
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.cb
  %.pn106.pn.pn.pn = phi { ptr, i32 } [ %.pn106.pn.pn, %bb.ci ], [ %i.ix, %bb.cb ]
  call void @_ZN6casadi6MatrixIdED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %29) #23
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ca
  %.pn106.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn106.pn.pn.pn, %bb.cj ], [ %i.iw, %bb.ca ]
  call void @_ZN6casadi6MatrixIdED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %30) #23
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.bz
  %.pn106.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn106.pn.pn.pn.pn, %bb.ck ], [ %i.iv, %bb.bz ] ; 2 uses
  %i.jc = load ptr, ptr %31, align 8, !tbaa !65   ; 3 uses
  %.not.i.i.i185 = icmp eq ptr %i.jc, null
  br i1 %.not.i.i.i185, label %_ZNSt6vectorIxSaIxEED2Ev.exit186, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.jd = load ptr, ptr %i.ev, align 8, !tbaa !66
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = ptrtoint ptr %i.jc to i64
  %i.jg = sub i64 %i.je, %i.jf
  call void @_ZdlPvm(ptr noundef nonnull %i.jc, i64 noundef %i.jg) #24
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit186

_ZNSt6vectorIxSaIxEED2Ev.exit186:                 ; preds = %bb.cm, %bb.cl, %bb.by
  %.pn106.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.iu, %bb.by ], [ %.pn106.pn.pn.pn.pn.pn, %bb.cl ], [ %.pn106.pn.pn.pn.pn.pn, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  call void @_ZN6casadi6MatrixIdED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %28) #23
  br label %bb.cn

bb.cn:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit186, %bb.bx
  %.pn106.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn106.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit186 ], [ %i.it, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  call void @_ZN6casadi6MatrixIdED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %25) #23
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.bw
  %.pn106.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn106.pn.pn.pn.pn.pn.pn.pn, %bb.cn ], [ %i.is, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %bb.ed

._crit_edge262:                                   ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit, %._crit_edge256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  invoke void @_ZN6casadi2MX7horzcatERKSt6vectorIS0_SaIS0_EE(ptr dead_on_unwind writable sret(%"class.casadi::MX") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %32)
          to label %_ZN6casadi7horzcatERKSt6vectorINS_2MXESaIS1_EE.exit unwind label %bb.eb

bb.cp:                                            ; preds = %.lr.ph261, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #23
  invoke void @_ZN6casadi8SubIndexINS_2MXExEC2ERS1_RKx(ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6casadi13GenericMatrixINS_2MXEEclIxEENS_8SubIndexIS1_T_EERKS5_.exit unwind label %bb.cs

_ZN6casadi13GenericMatrixINS_2MXEEclIxEENS_8SubIndexIS1_T_EERKS5_.exit: ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #23
  invoke void @_ZN6casadi2MXC1ERKNS_6MatrixIdEE(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull align 8 dereferenceable(40) %21)
          to label %bb.cq unwind label %bb.ct

bb.cq:                                            ; preds = %_ZN6casadi13GenericMatrixINS_2MXEEclIxEENS_8SubIndexIS1_T_EERKS5_.exit
  invoke void @_ZN6casadi2MX6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %35, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %_ZN6casadiplERKNS_2MXES2_.exit unwind label %bb.cu

_ZN6casadiplERKNS_2MXES2_.exit:                   ; preds = %bb.cq
  invoke void @_ZN6casadi2MXC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %.noexc190 unwind label %bb.cv

.noexc190:                                        ; preds = %_ZN6casadiplERKNS_2MXES2_.exit
  invoke void @_ZNK6casadi2MX3getERS0_bRKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %34, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %_ZNK6casadi13GenericMatrixINS_2MXEEclIS1_EEKS1_RKT_.exit unwind label %bb.cr

bb.cr:                                            ; preds = %.noexc190
  %i.jh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %34) #23
  br label %.body

_ZNK6casadi13GenericMatrixINS_2MXEEclIS1_EEKS1_RKT_.exit: ; preds = %.noexc190
  invoke void @_ZN6casadi2MX7reshapeERKS0_xx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %33, ptr noundef nonnull align 8 dereferenceable(8) %34, i64 noundef %4, i64 noundef -1)
          to label %_ZN6casadi7reshapeERKNS_2MXExx.exit unwind label %bb.cw

_ZN6casadi7reshapeERKNS_2MXExx.exit:              ; preds = %_ZNK6casadi13GenericMatrixINS_2MXEEclIS1_EEKS1_RKT_.exit
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %34) #23
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #23
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %37) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23
  call void @_ZN6casadi2MXD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %36) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #23
  invoke void @_ZN6casadi2MXC1Ed(ptr noundef nonnull align 8 dereferenceable(8) %38, double noundef 1.000000e+00)
          to label %.preheader unwind label %bb.da

.preheader:                                       ; preds = %_ZN6casadi7reshapeERKNS_2MXExx.exit
  br i1 %.not.i.i.i.i, label %._crit_edge259, label %.lr.ph258.preheader

.lr.ph258.preheader:                              ; preds = %.preheader
  %.pre = load ptr, ptr %10, align 8, !tbaa !184
  br label %.lr.ph258

._crit_edge259:                                   ; preds = %_ZN6casadi2MXaSERKS0_.exit, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #23
  invoke void @_ZN6casadi2MX6mtimesERKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %42, ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull align 8 dereferenceable(8) %38)
          to label %_ZN6casadi6mtimesERKNS_2MXES2_.exit193 unwind label %bb.dn

bb.cs:                                            ; preds = %bb.cp
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.ct:                                            ; preds = %_ZN6casadi13GenericMatrixINS_2MXEEclIxEENS_8SubIndexIS1_T_EERKS5_.exit
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.cu:                                            ; preds = %bb.cq
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.cv:                                            ; preds = %_ZN6casadiplERKNS_2MXES2_.exit
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cw:                                            ; preds = %_ZNK6casadi13GenericMatrixINS_2MXEEclIS1_EEKS1_RKT_.exit
  %i.jm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %34) #23
  br label %.body

.body:                                            ; preds = %bb.cv, %bb.cr, %bb.cw
  %.pn91 = phi { ptr, i32 } [ %i.jm, %bb.cw ], [ %i.jl, %bb.cv ], [ %i.jh, %bb.cr ]
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #23
  br label %bb.cx

bb.cx:                                            ; preds = %.body, %bb.cu
  %.pn91.pn = phi { ptr, i32 } [ %.pn91, %.body ], [ %i.jk, %bb.cu ]
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %37) #23
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.ct
  %.pn91.pn.pn = phi { ptr, i32 } [ %.pn91.pn, %bb.cx ], [ %i.jj, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23
  call void @_ZN6casadi2MXD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %36) #23
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cs
  %.pn91.pn.pn.pn = phi { ptr, i32 } [ %.pn91.pn.pn, %bb.cy ], [ %i.ji, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  br label %bb.ds

bb.da:                                            ; preds = %_ZN6casadi7reshapeERKNS_2MXExx.exit
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

.lr.ph258:                                        ; preds = %.lr.ph258.preheader, %_ZN6casadi2MXaSERKS0_.exit
  %.0257 = phi i64 [ %i.jz, %_ZN6casadi2MXaSERKS0_.exit ], [ 0, %.lr.ph258.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #23
  %i.jo = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %.0257
  %i.jp = load i64, ptr %i.a, align 8, !tbaa !68
  %i.jq = load ptr, ptr %i.jo, align 8, !tbaa !169
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %i.jp
  invoke void @_ZNK6casadi2MX1TEv(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %41, ptr noundef nonnull align 8 dereferenceable(8) %i.jr)
          to label %bb.db unwind label %bb.de

bb.db:                                            ; preds = %.lr.ph258
  invoke void @_ZN6casadi2MX6mtimesERKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %40, ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef nonnull align 8 dereferenceable(8) %41)
          to label %_ZN6casadi6mtimesERKNS_2MXES2_.exit195 unwind label %bb.df

_ZN6casadi6mtimesERKNS_2MXES2_.exit195:           ; preds = %bb.db
  call void @llvm.experimental.noalias.scope.decl(metadata !192)
  call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.js = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %40)
          to label %.noexc196 unwind label %bb.dg

.noexc196:                                        ; preds = %_ZN6casadi6mtimesERKNS_2MXES2_.exit195
  %i.jt = invoke noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.js)
          to label %.noexc197 unwind label %bb.dg

.noexc197:                                        ; preds = %.noexc196
  %i.ju = icmp eq i64 %i.jt, 1
  br i1 %i.ju, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %.noexc197
  %i.jv = load ptr, ptr %40, align 8, !tbaa !167, !noalias !198
  store ptr %i.jv, ptr %39, align 8, !tbaa !167, !alias.scope !198
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %_ZN6casadi3vecERKNS_2MXE.exit unwind label %bb.dg

bb.dd:                                            ; preds = %.noexc197
  %i.jw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %40)
          to label %.noexc199 unwind label %bb.dg

.noexc199:                                        ; preds = %bb.dd
  %i.jx = invoke noundef i64 @_ZNK6casadi8Sparsity5numelEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jw)
          to label %.noexc200 unwind label %bb.dg

.noexc200:                                        ; preds = %.noexc199
  invoke void @_ZN6casadi2MX7reshapeERKS0_xx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %39, ptr noundef nonnull align 8 dereferenceable(8) %40, i64 noundef %i.jx, i64 noundef 1)
          to label %_ZN6casadi3vecERKNS_2MXE.exit unwind label %bb.dg

_ZN6casadi3vecERKNS_2MXE.exit:                    ; preds = %bb.dc, %.noexc200
  %i.jy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %_ZN6casadi2MXaSERKS0_.exit unwind label %bb.dh ; 0 uses

_ZN6casadi2MXaSERKS0_.exit:                       ; preds = %_ZN6casadi3vecERKNS_2MXE.exit
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %39) #23
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #23
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %41) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  %i.jz = add nuw nsw i64 %.0257, 1               ; 2 uses
  %47 = icmp slt i64 %i.jz, %i.j
  br i1 %47, label %.lr.ph258, label %._crit_edge259, !llvm.loop !199

bb.de:                                            ; preds = %.lr.ph258
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.df:                                            ; preds = %bb.db
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.dg:                                            ; preds = %.noexc200, %.noexc199, %bb.dd, %bb.dc, %.noexc196, %_ZN6casadi6mtimesERKNS_2MXES2_.exit195
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.dh:                                            ; preds = %_ZN6casadi3vecERKNS_2MXE.exit
  %i.kd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %39) #23
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.pn98 = phi { ptr, i32 } [ %i.kd, %bb.dh ], [ %i.kc, %bb.dg ]
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %40) #23
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.df
  %.pn98.pn = phi { ptr, i32 } [ %.pn98, %bb.di ], [ %i.kb, %bb.df ]
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %41) #23
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.de
  %.pn98.pn.pn = phi { ptr, i32 } [ %.pn98.pn, %bb.dj ], [ %i.ka, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  br label %bb.dq

_ZN6casadi6mtimesERKNS_2MXES2_.exit193:           ; preds = %._crit_edge259
  %i.ke = load ptr, ptr %i.fd, align 8, !tbaa !173 ; 4 uses
  %i.kf = load ptr, ptr %i.fe, align 8, !tbaa !170
  %.not.i.i203 = icmp eq ptr %i.ke, %i.kf
  br i1 %.not.i.i203, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %_ZN6casadi6mtimesERKNS_2MXES2_.exit193
  %i.kg = load ptr, ptr %42, align 8, !tbaa !167
  store ptr %i.kg, ptr %i.ke, align 8, !tbaa !167
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ke)
          to label %.noexc204 unwind label %bb.do

.noexc204:                                        ; preds = %bb.dl
  %i.kh = load ptr, ptr %i.fd, align 8, !tbaa !173
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  store ptr %i.ki, ptr %i.fd, align 8, !tbaa !173
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit

bb.dm:                                            ; preds = %_ZN6casadi6mtimesERKNS_2MXES2_.exit193
  invoke void @_ZNSt6vectorIN6casadi2MXESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %32, ptr %i.ke, ptr noundef nonnull align 8 dereferenceable(8) %42)
          to label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit unwind label %bb.do

_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit: ; preds = %.noexc204, %bb.dm
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %42) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #23
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %38) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #23
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  %i.kj = load i64, ptr %i.a, align 8, !tbaa !68
  %i.kk = add nsw i64 %i.kj, 1                    ; 2 uses
  store i64 %i.kk, ptr %i.a, align 8, !tbaa !68
  %i.kl = icmp slt i64 %i.kk, %i.c
  br i1 %i.kl, label %bb.cp, label %._crit_edge262, !llvm.loop !200

bb.dn:                                            ; preds = %._crit_edge259
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.do:                                            ; preds = %bb.dm, %bb.dl
  %i.kn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %42) #23
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.pn96 = phi { ptr, i32 } [ %i.kn, %bb.do ], [ %i.km, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #23
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.dk
  %.pn98.pn.pn.pn = phi { ptr, i32 } [ %.pn98.pn.pn, %bb.dk ], [ %.pn96, %bb.dp ]
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %38) #23
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.da
  %.pn98.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn98.pn.pn.pn, %bb.dq ], [ %i.jn, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #23
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #23
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.cz
  %.pn98.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn98.pn.pn.pn.pn, %bb.dr ], [ %.pn91.pn.pn.pn, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.ec

_ZN6casadi7horzcatERKSt6vectorINS_2MXESaIS1_EE.exit: ; preds = %._crit_edge262
  %i.ko = load ptr, ptr %32, align 8, !tbaa !169  ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !173 ; 2 uses
  %.not4.i.i.i206 = icmp eq ptr %i.ko, %i.kq
  br i1 %.not4.i.i.i206, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i212, label %.lr.ph.i.i.i207

.lr.ph.i.i.i207:                                  ; preds = %_ZN6casadi7horzcatERKSt6vectorINS_2MXESaIS1_EE.exit, %.lr.ph.i.i.i207
  %.05.i.i.i208 = phi ptr [ %i.kr, %.lr.ph.i.i.i207 ], [ %i.ko, %_ZN6casadi7horzcatERKSt6vectorINS_2MXESaIS1_EE.exit ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i208) #23
  %i.kr = getelementptr inbounds nuw i8, ptr %.05.i.i.i208, i64 8 ; 2 uses
  %.not.i.i.i209 = icmp eq ptr %i.kr, %i.kq
  br i1 %.not.i.i.i209, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i210, label %.lr.ph.i.i.i207, !llvm.loop !174

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i210: ; preds = %.lr.ph.i.i.i207
  %.pr.i211 = load ptr, ptr %32, align 8, !tbaa !169
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i212

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i212: ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i210, %_ZN6casadi7horzcatERKSt6vectorINS_2MXESaIS1_EE.exit
  %i.ks = phi ptr [ %.pr.i211, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i210 ], [ %i.ko, %_ZN6casadi7horzcatERKSt6vectorINS_2MXESaIS1_EE.exit ] ; 3 uses
  %.not.i.i1.i213 = icmp eq ptr %i.ks, null
  br i1 %.not.i.i1.i213, label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit214, label %bb.dt

bb.dt:                                            ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i212
  %i.kt = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !170
  %i.kv = ptrtoint ptr %i.ku to i64
  %i.kw = ptrtoint ptr %i.ks to i64
  %i.kx = sub i64 %i.kv, %i.kw
  call void @_ZdlPvm(ptr noundef nonnull %i.ks, i64 noundef %i.kx) #24
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit214

_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit214:    ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i212, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  %i.ky = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !55 ; 3 uses
  %.not.i.i.i.i215 = icmp eq ptr %i.kz, null
  br i1 %.not.i.i.i.i215, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i216, label %bb.du

bb.du:                                            ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit214
  %i.la = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !57
  %i.lc = ptrtoint ptr %i.lb to i64
  %i.ld = ptrtoint ptr %i.kz to i64
  %i.le = sub i64 %i.lc, %i.ld
  call void @_ZdlPvm(ptr noundef nonnull %i.kz, i64 noundef %i.le) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i216

_ZNSt6vectorIdSaIdEED2Ev.exit.i216:               ; preds = %bb.du, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit214
  %i.lf = getelementptr inbounds nuw i8, ptr %21, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lf)
          to label %_ZN6casadi6MatrixIdED2Ev.exit217 unwind label %bb.dv

bb.dv:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i216
  %i.lg = landingpad { ptr, i32 }
          catch ptr null
  %i.lh = extractvalue { ptr, i32 } %i.lg, 0
  call void @__clang_call_terminate(ptr %i.lh) #27
  unreachable

_ZN6casadi6MatrixIdED2Ev.exit217:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i216
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.li = load ptr, ptr %15, align 8, !tbaa !65   ; 3 uses
  %.not.i.i.i218 = icmp eq ptr %i.li, null
  br i1 %.not.i.i.i218, label %_ZNSt6vectorIxSaIxEED2Ev.exit219, label %bb.dw

bb.dw:                                            ; preds = %_ZN6casadi6MatrixIdED2Ev.exit217
  %i.lj = load ptr, ptr %i.bl, align 8, !tbaa !66
  %i.lk = ptrtoint ptr %i.lj to i64
  %i.ll = ptrtoint ptr %i.li to i64
  %i.lm = sub i64 %i.lk, %i.ll
  call void @_ZdlPvm(ptr noundef nonnull %i.li, i64 noundef %i.lm) #24
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit219

_ZNSt6vectorIxSaIxEED2Ev.exit219:                 ; preds = %_ZN6casadi6MatrixIdED2Ev.exit217, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %i.ln = load ptr, ptr %10, align 8, !tbaa !184  ; 5 uses
  %i.lo = load ptr, ptr %i.u, align 8, !tbaa !188 ; 2 uses
  %.not4.i.i.i220 = icmp eq ptr %i.ln, %i.lo
  br i1 %.not4.i.i.i220, label %_ZSt8_DestroyIPSt6vectorIN6casadi2MXESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i221

.lr.ph.i.i.i221:                                  ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit219, %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i222 = phi ptr [ %i.lz, %_ZSt8_DestroyISt6vectorIN6casadi2MXESaIS2_EEEvPT_.exit.i.i.i ], [ %i.ln, %_ZNSt6vectorIxSaIxEED2Ev.exit219 ] ; 5 uses
  %i.lp = load ptr, ptr %.05.i.i.i222, align 8, !tbaa !169 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.05.i.i.i222, i64 8
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !173 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.lp, %i.lr
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i221, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ls, %.lr.ph.i.i.i.i.i.i.i ], [ %i.lp, %.lr.ph.i.i.i221 ] ; 2 uses
end_hunk_0
