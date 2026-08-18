inline.NumInlined: 32602
inline.NumDeleted: 6515
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 75
loop-unroll.NumUnrolled: 85
begin_hunk_0_@_ZN8facebook5velox10saveVectorERKNS0_10BaseVectorERSo:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as) #31
  %i.cq = load ptr, ptr %i.ci, align 8, !tbaa !82 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !88
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !83
  %i.cv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.cs, i64 noundef %i.cu) ; 0 uses
  br label %_ZN8facebook5velox12_GLOBAL__N_119writeOptionalBufferERKN5boost13intrusive_ptrINS0_6BufferEEERSo.exit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar) #31
  store i8 0, ptr %i.ar, align 1, !tbaa !23
  %i.cw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.ar, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #31
  br label %_ZN8facebook5velox12_GLOBAL__N_119writeOptionalBufferERKN5boost13intrusive_ptrINS0_6BufferEEERSo.exit.i

_ZN8facebook5velox12_GLOBAL__N_119writeOptionalBufferERKN5boost13intrusive_ptrINS0_6BufferEEERSo.exit.i: ; preds = %bb.m, %bb.l
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.val25.i = load i8, ptr %i.cx, align 8, !tbaa !89
  %i.cy = add i8 %.val25.i, -7
  %spec.select.i.i = icmp ult i8 %i.cy, 2
  %i.cz = load ptr, ptr %0, align 8, !tbaa !14
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 296
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = call noundef nonnull align 8 dereferenceable(8) ptr %i.db(ptr noundef nonnull align 8 dereferenceable(94) %0), !inline_history !90 ; 5 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !82
  %.not.i = icmp eq ptr %i.dd, null               ; 2 uses
  br i1 %spec.select.i.i, label %bb.n, label %bb.bi

bb.n:                                             ; preds = %_ZN8facebook5velox12_GLOBAL__N_119writeOptionalBufferERKN5boost13intrusive_ptrINS0_6BufferEEERSo.exit.i
  br i1 %.not.i, label %bb.bh, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq) #31
  store i8 1, ptr %i.aq, align 1, !tbaa !23
  %i.de = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.aq, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #31
  %i.df = load ptr, ptr %0, align 8, !tbaa !14
  %i.dg = icmp eq ptr %i.df, getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorINS0_10StringViewEEE, i64 16)
  %i.dh = select i1 %i.dg, ptr %0, ptr null       ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 224 ; 4 uses
  %i.dj = load i32, ptr %i.ce, align 8, !tbaa !81 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am) #31
  %i.dk = load ptr, ptr %i.dc, align 8, !tbaa !82
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !83
  %i.dn = trunc i64 %i.dm to i32
  store i32 %i.dn, ptr %i.am, align 4, !tbaa !21
  %i.do = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.am, i64 noundef 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #31
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 232 ; 4 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !91 ; 4 uses
  %i.dr = load ptr, ptr %i.di, align 8, !tbaa !94 ; 4 uses
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt                    ; 3 uses
  %i.dv = icmp ugt i64 %i.du, 9223372036854775800
  br i1 %i.dv, label %.noexc.i.i, label %bb.p

.noexc.i.i:                                       ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.147) #41
  unreachable

bb.p:                                             ; preds = %bb.o
  %.not.i26.i = icmp eq ptr %i.dq, %i.dr
  br i1 %.not.i26.i, label %._crit_edge.thread.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.p
  %i.dw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.du) #42 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.du
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit.i.i
  %.pre.i.i = load ptr, ptr %i.dp, align 8, !tbaa !91 ; 2 uses
  %.pre233.i.i = load ptr, ptr %i.di, align 8, !tbaa !94 ; 2 uses
  %.pre236.i.i = ptrtoint ptr %.pre.i.i to i64
  %.pre237.i.i = ptrtoint ptr %.pre233.i.i to i64
  %.pre239.i.i = sub i64 %.pre236.i.i, %.pre237.i.i
  %i.dy = ashr exact i64 %.pre239.i.i, 3          ; 2 uses
  %i.dz = icmp ugt i64 %i.dy, 384307168202282325
  br i1 %i.dz, label %bb.q, label %._crit_edge.thread.i.i

bb.q:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.147) #41
          to label %.noexc77.i.i unwind label %.thread.i.i

.noexc77.i.i:                                     ; preds = %bb.q
  unreachable

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.p
  %i.ea = phi i64 [ %i.dy, %._crit_edge.i.i ], [ 0, %bb.p ] ; 2 uses
  %.sroa.17127.0.lcssa273.i.i = phi ptr [ %.sroa.17127.3.i.i, %._crit_edge.i.i ], [ null, %bb.p ] ; 4 uses
  %.sroa.11.0.lcssa272.i.i = phi ptr [ %.sroa.11.2.i.i, %._crit_edge.i.i ], [ null, %bb.p ]
  %.sroa.0122.0.lcssa267.i.i = phi ptr [ %.sroa.0122.3.i.i, %._crit_edge.i.i ], [ null, %bb.p ] ; 8 uses
  %i.eb = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.dq, %bb.p ] ; 2 uses
  %i.ec = phi ptr [ %.pre233.i.i, %._crit_edge.i.i ], [ %i.dr, %bb.p ] ; 2 uses
  %.not143.i.i = icmp eq ptr %i.eb, %i.ec
  br i1 %.not143.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEEZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISE_SaISE_EERSoE3$_0EvT_SN_T0_.exit.thread.i.i", label %_ZNSt12_Vector_baseIN8facebook5velox12_GLOBAL__N_114BufferMetadataESaIS3_EE11_M_allocateEm.exit.i.i.i

_ZNSt12_Vector_baseIN8facebook5velox12_GLOBAL__N_114BufferMetadataESaIS3_EE11_M_allocateEm.exit.i.i.i: ; preds = %._crit_edge.thread.i.i
  %i.ed = mul nuw nsw i64 %i.ea, 24
  %i.ee = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #42
          to label %.lr.ph198.preheader.i.i unwind label %.thread.i.i ; 3 uses

.lr.ph198.preheader.i.i:                          ; preds = %_ZNSt12_Vector_baseIN8facebook5velox12_GLOBAL__N_114BufferMetadataESaIS3_EE11_M_allocateEm.exit.i.i.i
  %i.ef = getelementptr inbounds nuw [24 x i8], ptr %i.ee, i64 %i.ea
  br label %.lr.ph198.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0117.0191.i.i = phi ptr [ %i.ey, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit.i.i ], [ %i.dr, %.lr.ph.preheader.i.i ] ; 2 uses
  %.0131190.i.i = phi i64 [ %i.ex, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.17127.0189.i.i = phi ptr [ %.sroa.17127.3.i.i, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit.i.i ], [ %i.dx, %.lr.ph.preheader.i.i ] ; 5 uses
  %.sroa.11.0188.i.i = phi ptr [ %.sroa.11.2.i.i, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit.i.i ], [ %i.dw, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.0122.0187.i.i = phi ptr [ %.sroa.0122.3.i.i, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit.i.i ], [ %i.dw, %.lr.ph.preheader.i.i ] ; 6 uses
  %.not.i.i.i = icmp eq ptr %.sroa.11.0188.i.i, %.sroa.17127.0189.i.i
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i
  store i64 %.0131190.i.i, ptr %.sroa.11.0188.i.i, align 8, !tbaa !95
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit.i.i

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.eg = ptrtoint ptr %.sroa.17127.0189.i.i to i64
  %i.eh = ptrtoint ptr %.sroa.0122.0187.i.i to i64
  %i.ei = sub i64 %i.eg, %i.eh                    ; 6 uses
  %i.ej = icmp eq i64 %i.ei, 9223372036854775800
  br i1 %i.ej, label %bb.t, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #41
          to label %.noexc79.i.i unwind label %.loopexit.split-lp156.i.i

.noexc79.i.i:                                     ; preds = %bb.t
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.s
  %i.ek = ashr exact i64 %i.ei, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ek, i64 1)
  %i.el = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ek ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.ek
  %i.en = call i64 @llvm.umin.i64(i64 %i.el, i64 1152921504606846975)
  %i.eo = select i1 %i.em, i64 1152921504606846975, i64 %i.en ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.eo, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ep = shl nuw nsw i64 %i.eo, 3
  %i.eq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ep) #42
          to label %.noexc80.i.i unwind label %.loopexit155.i.i ; 4 uses

.noexc80.i.i:                                     ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 %i.ei ; 2 uses
  store i64 %.0131190.i.i, ptr %i.er, align 8, !tbaa !95
  %i.es = icmp sgt i64 %i.ei, 0
  br i1 %i.es, label %bb.u, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i

bb.u:                                             ; preds = %.noexc80.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eq, ptr align 8 %.sroa.0122.0187.i.i, i64 %i.ei, i1 false)
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i: ; preds = %bb.u, %.noexc80.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0122.0187.i.i, i64 noundef %i.ei) #40
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.eo
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit.i.i

_ZNSt6vectorIlSaIlEE9push_backERKl.exit.i.i:      ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i, %bb.r
  %.sroa.0122.3.i.i = phi ptr [ %i.eq, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i ], [ %.sroa.0122.0187.i.i, %bb.r ] ; 3 uses
  %.pn.i.i = phi ptr [ %i.er, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i ], [ %.sroa.11.0188.i.i, %bb.r ]
  %.sroa.17127.3.i.i = phi ptr [ %i.et, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i ], [ %.sroa.17127.0189.i.i, %bb.r ] ; 3 uses
  %.sroa.11.2.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 8 ; 2 uses
  %i.eu = load ptr, ptr %.sroa.0117.0191.i.i, align 8, !tbaa !82
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !83
  %i.ex = add i64 %i.ew, %.0131190.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0117.0191.i.i, i64 8 ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.dq
  br i1 %i.ez, label %._crit_edge.i.i, label %.lr.ph.i.i

.loopexit155.i.i:                                 ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit157.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN8facebook5velox12_GLOBAL__N_114BufferMetadataESaIS3_EED2Ev.exit96.i.i

.loopexit.split-lp156.i.i:                        ; preds = %bb.t
  %lpad.loopexit.split-lp158.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN8facebook5velox12_GLOBAL__N_114BufferMetadataESaIS3_EED2Ev.exit96.i.i

._crit_edge199.i.i:                               ; preds = %_ZNSt6vectorIN8facebook5velox12_GLOBAL__N_114BufferMetadataESaIS3_EE9push_backEOS3_.exit.i.i
  %i.fa = icmp eq ptr %.sroa.0114.3.i.i, %.sroa.17.2.i.i
  br i1 %i.fa, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEEZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISE_SaISE_EERSoE3$_0EvT_SN_T0_.exit.thread.i.i", label %bb.v

bb.v:                                             ; preds = %._crit_edge199.i.i
  %i.fb = ptrtoint ptr %.sroa.17.2.i.i to i64
  %i.fc = ptrtoint ptr %.sroa.0114.3.i.i to i64   ; 2 uses
  %i.fd = sub i64 %i.fb, %i.fc                    ; 2 uses
  %i.fe = sdiv exact i64 %i.fd, 24                ; 3 uses
  %i.ff = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fe, i1 true)
  %i.fg = shl nuw nsw i64 %i.ff, 1
  %i.fh = xor i64 %i.fg, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_SQ_T0_T1_"(ptr %.sroa.0114.3.i.i, ptr nonnull %.sroa.17.2.i.i, i64 noundef %i.fh)
  %i.fi = icmp sgt i64 %i.fd, 384
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %.sroa.0114.3.i.i, i64 24 ; 3 uses
  br i1 %i.fi, label %.lr.ph.i.i.i.i.i.i, label %bb.ab

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.v, %bb.aa
  %.sroa.0.019.i.idx.i.i.i.i.i = phi i64 [ %.sroa.0.019.i.add.i.i.i.i.i, %bb.aa ], [ 24, %bb.v ] ; 4 uses
  %.pn18.i.i.i.i.i.i = phi ptr [ %.sroa.0.019.i.ptr.i.i.i.i.i, %bb.aa ], [ %.sroa.0114.3.i.i, %bb.v ] ; 4 uses
  %.sroa.0.019.i.ptr.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0114.3.i.i, i64 %.sroa.0.019.i.idx.i.i.i.i.i ; 5 uses
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.019.i.ptr.i.i.i.i.i, align 8, !tbaa !96 ; 4 uses
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0114.3.i.i, align 8, !tbaa !96
  %i.fj = icmp ult ptr %.val2.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i
  br i1 %i.fj, label %bb.w, label %bb.z

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.019.i.ptr.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !98
  %i.fk = icmp samesign ugt i64 %.sroa.0.019.i.idx.i.i.i.i.i, 24
  br i1 %i.fk, label %bb.x, label %bb.y, !prof !27

bb.x:                                             ; preds = %bb.w
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0114.3.i.i, i64 %.sroa.0.019.i.idx.i.i.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.fl = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fl, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.0114.3.i.i, i64 24, i1 false), !tbaa.struct !98
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0114.3.i.i, ptr noundef nonnull align 8 dereferenceable(24) %15, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i)
  %.sroa.5.0..val3.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..val3.sroa_idx.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !100
  %.val3.i10.i.i.i.i.i.i.i = load ptr, ptr %.pn18.i.i.i.i.i.i, align 8, !tbaa !96
  %i.fm = icmp ult ptr %.val2.i.i.i.i.i.i.i, %.val3.i10.i.i.i.i.i.i.i
  br i1 %i.fm, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_T0_.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.z, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.pn18.i.i.i.i.i.i, %bb.z ] ; 4 uses
  %.sroa.08.011.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.012.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.019.i.ptr.i.i.i.i.i, %bb.z ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.011.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.012.i.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !98
  %.sroa.0.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i.i.i.i.i.i, i64 -24 ; 2 uses
  %.val3.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i.i, align 8, !tbaa !96
  %i.fn = icmp ult ptr %.val2.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i.i
  br i1 %i.fn, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_T0_.exit.i.i.i.i.i.i", !llvm.loop !101

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_T0_.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.z
  %.sroa.08.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.019.i.ptr.i.i.i.i.i, %bb.z ], [ %.sroa.0.012.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  store ptr %.val2.i.i.i.i.i.i.i, ptr %.sroa.08.0.lcssa.i.i.i.i.i.i.i, align 8, !tbaa !99
  %.sroa.5.0..val.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..val.sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !100
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i)
  br label %bb.aa

bb.aa:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_T0_.exit.i.i.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i.i
  %.sroa.0.019.i.add.i.i.i.i.i = add nuw nsw i64 %.sroa.0.019.i.idx.i.i.i.i.i, 24 ; 2 uses
  %i.fo = icmp eq i64 %.sroa.0.019.i.add.i.i.i.i.i, 384
  br i1 %i.fo, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_SQ_T0_.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i, !llvm.loop !103

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_SQ_T0_.exit.i.i.i.i.i": ; preds = %bb.aa
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0114.3.i.i, i64 384 ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %.sroa.17.2.i.i
  br i1 %i.fq, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEEZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISE_SaISE_EERSoE3$_0EvT_SN_T0_.exit.thread132.i.i", label %.lr.ph.i16.i.i.i.i.i

.lr.ph.i16.i.i.i.i.i:                             ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_SQ_T0_.exit.i.i.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_T0_.exit.i19.i.i.i.i.i"
  %.sroa.0.06.i.i.i.i.i.i = phi ptr [ %i.ft, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_T0_.exit.i19.i.i.i.i.i" ], [ %i.fp, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_SQ_T0_.exit.i.i.i.i.i" ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i15.i.i.i.i.i)
  %.sroa.06.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.06.i.i.i.i.i.i, align 8, !tbaa !99 ; 3 uses
  %.sroa.5.0..val3.sroa_idx.i.i17.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i15.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..val3.sroa_idx.i.i17.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !100
  %.sroa.0.09.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.06.i.i.i.i.i.i, i64 -24 ; 2 uses
  %.val3.i10.i.i18.i.i.i.i.i = load ptr, ptr %.sroa.0.09.i.i.i.i.i.i.i, align 8, !tbaa !96
  %i.fr = icmp ult ptr %.sroa.06.0.copyload.i.i.i.i.i.i.i, %.val3.i10.i.i18.i.i.i.i.i
  br i1 %i.fr, label %.lr.ph.i.i22.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_T0_.exit.i19.i.i.i.i.i"

.lr.ph.i.i22.i.i.i.i.i:                           ; preds = %.lr.ph.i16.i.i.i.i.i, %.lr.ph.i.i22.i.i.i.i.i
  %.sroa.0.012.i.i23.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i25.i.i.i.i.i, %.lr.ph.i.i22.i.i.i.i.i ], [ %.sroa.0.09.i.i.i.i.i.i.i, %.lr.ph.i16.i.i.i.i.i ] ; 4 uses
  %.sroa.08.011.i.i24.i.i.i.i.i = phi ptr [ %.sroa.0.012.i.i23.i.i.i.i.i, %.lr.ph.i.i22.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i, %.lr.ph.i16.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.011.i.i24.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.012.i.i23.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !98
  %.sroa.0.0.i.i25.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i23.i.i.i.i.i, i64 -24 ; 2 uses
  %.val3.i.i.i26.i.i.i.i.i = load ptr, ptr %.sroa.0.0.i.i25.i.i.i.i.i, align 8, !tbaa !96
  %i.fs = icmp ult ptr %.sroa.06.0.copyload.i.i.i.i.i.i.i, %.val3.i.i.i26.i.i.i.i.i
  br i1 %i.fs, label %.lr.ph.i.i22.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_T0_.exit.i19.i.i.i.i.i", !llvm.loop !101

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_T0_.exit.i19.i.i.i.i.i": ; preds = %.lr.ph.i.i22.i.i.i.i.i, %.lr.ph.i16.i.i.i.i.i
  %.sroa.08.0.lcssa.i.i20.i.i.i.i.i = phi ptr [ %.sroa.0.06.i.i.i.i.i.i, %.lr.ph.i16.i.i.i.i.i ], [ %.sroa.0.012.i.i23.i.i.i.i.i, %.lr.ph.i.i22.i.i.i.i.i ] ; 2 uses
  store ptr %.sroa.06.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.08.0.lcssa.i.i20.i.i.i.i.i, align 8, !tbaa !99
  %.sroa.5.0..val.sroa_idx.i.i21.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i20.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..val.sroa_idx.i.i21.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i15.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !100
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i15.i.i.i.i.i)
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i.i.i, i64 24
  %i.fu = icmp eq ptr %.sroa.0.06.i.i.i.i.i.i, %.pn145.i.i
  br i1 %i.fu, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEEZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISE_SaISE_EERSoE3$_0EvT_SN_T0_.exit.thread132.i.i", label %.lr.ph.i16.i.i.i.i.i, !llvm.loop !104

bb.ab:                                            ; preds = %bb.v
  %i.fv = icmp eq ptr %.sroa.0114.3.i.i, %.pn145.i.i
  br i1 %i.fv, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEEZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISE_SaISE_EERSoE3$_0EvT_SN_T0_.exit.thread132.i.i", label %.lr.ph.i30.i.i.i.i.i

.lr.ph.i30.i.i.i.i.i:                             ; preds = %bb.ab, %bb.ah
  %.sroa.0.019.i31.i.i.i.i.i = phi ptr [ %.sroa.0.0.i40.i.i.i.i.i, %bb.ah ], [ %scevgep.i.i.i.i.i, %bb.ab ] ; 8 uses
  %.pn18.i32.i.i.i.i.i = phi ptr [ %.sroa.0.019.i31.i.i.i.i.i, %bb.ah ], [ %.sroa.0114.3.i.i, %bb.ab ] ; 4 uses
  %.val2.i.i33.i.i.i.i.i = load ptr, ptr %.sroa.0.019.i31.i.i.i.i.i, align 8, !tbaa !96 ; 4 uses
  %.val3.i.i34.i.i.i.i.i = load ptr, ptr %.sroa.0114.3.i.i, align 8, !tbaa !96
  %i.fw = icmp ult ptr %.val2.i.i33.i.i.i.i.i, %.val3.i.i34.i.i.i.i.i
  br i1 %i.fw, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %.lr.ph.i30.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.019.i31.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !98
  %i.fx = ptrtoint ptr %.sroa.0.019.i31.i.i.i.i.i to i64
  %i.fy = sub i64 %i.fx, %i.fc                    ; 3 uses
  %i.fz = icmp sgt i64 %i.fy, 24
  br i1 %i.fz, label %bb.ad, label %bb.ae, !prof !27

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0114.3.i.i, i64 %i.fy, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i46.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.ga = icmp eq i64 %i.fy, 24
  br i1 %i.ga, label %bb.af, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i46.i.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.gb = getelementptr inbounds nuw i8, ptr %.pn18.i32.i.i.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gb, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.0114.3.i.i, i64 24, i1 false), !tbaa.struct !98
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i46.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i46.i.i.i.i.i: ; preds = %bb.af, %bb.ae, %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0114.3.i.i, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i30.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i27.i.i.i.i.i)
  %.sroa.5.0..val3.sroa_idx.i.i35.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i32.i.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i27.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..val3.sroa_idx.i.i35.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !100
  %.val3.i10.i.i36.i.i.i.i.i = load ptr, ptr %.pn18.i32.i.i.i.i.i, align 8, !tbaa !96
  %i.gc = icmp ult ptr %.val2.i.i33.i.i.i.i.i, %.val3.i10.i.i36.i.i.i.i.i
  br i1 %i.gc, label %.lr.ph.i.i41.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_T0_.exit.i37.i.i.i.i.i"

.lr.ph.i.i41.i.i.i.i.i:                           ; preds = %bb.ag, %.lr.ph.i.i41.i.i.i.i.i
  %.sroa.0.012.i.i42.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i44.i.i.i.i.i, %.lr.ph.i.i41.i.i.i.i.i ], [ %.pn18.i32.i.i.i.i.i, %bb.ag ] ; 4 uses
  %.sroa.08.011.i.i43.i.i.i.i.i = phi ptr [ %.sroa.0.012.i.i42.i.i.i.i.i, %.lr.ph.i.i41.i.i.i.i.i ], [ %.sroa.0.019.i31.i.i.i.i.i, %bb.ag ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.011.i.i43.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.012.i.i42.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !98
  %.sroa.0.0.i.i44.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i42.i.i.i.i.i, i64 -24 ; 2 uses
  %.val3.i.i.i45.i.i.i.i.i = load ptr, ptr %.sroa.0.0.i.i44.i.i.i.i.i, align 8, !tbaa !96
  %i.gd = icmp ult ptr %.val2.i.i33.i.i.i.i.i, %.val3.i.i.i45.i.i.i.i.i
  br i1 %i.gd, label %.lr.ph.i.i41.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_T0_.exit.i37.i.i.i.i.i", !llvm.loop !101

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_T0_.exit.i37.i.i.i.i.i": ; preds = %.lr.ph.i.i41.i.i.i.i.i, %bb.ag
  %.sroa.08.0.lcssa.i.i38.i.i.i.i.i = phi ptr [ %.sroa.0.019.i31.i.i.i.i.i, %bb.ag ], [ %.sroa.0.012.i.i42.i.i.i.i.i, %.lr.ph.i.i41.i.i.i.i.i ] ; 2 uses
  store ptr %.val2.i.i33.i.i.i.i.i, ptr %.sroa.08.0.lcssa.i.i38.i.i.i.i.i, align 8, !tbaa !99
  %.sroa.5.0..val.sroa_idx.i.i39.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i38.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..val.sroa_idx.i.i39.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i27.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !100
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i27.i.i.i.i.i)
  br label %bb.ah

bb.ah:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_T0_.exit.i37.i.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i46.i.i.i.i.i
  %.sroa.0.0.i40.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i31.i.i.i.i.i, i64 24
  %i.ge = icmp eq ptr %.sroa.0.019.i31.i.i.i.i.i, %.pn145.i.i
  br i1 %i.ge, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEEZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISE_SaISE_EERSoE3$_0EvT_SN_T0_.exit.thread132.i.i", label %.lr.ph.i30.i.i.i.i.i, !llvm.loop !103

.thread.i.i:                                      ; preds = %_ZNSt12_Vector_baseIN8facebook5velox12_GLOBAL__N_114BufferMetadataESaIS3_EE11_M_allocateEm.exit.i.i.i, %bb.q
  %.sroa.17127.0.lcssa277.i.i = phi ptr [ %.sroa.17127.3.i.i, %bb.q ], [ %.sroa.17127.0.lcssa273.i.i, %_ZNSt12_Vector_baseIN8facebook5velox12_GLOBAL__N_114BufferMetadataESaIS3_EE11_M_allocateEm.exit.i.i.i ]
  %.sroa.0122.0.lcssa271.i.i = phi ptr [ %.sroa.0122.3.i.i, %bb.q ], [ %.sroa.0122.0.lcssa267.i.i, %_ZNSt12_Vector_baseIN8facebook5velox12_GLOBAL__N_114BufferMetadataESaIS3_EE11_M_allocateEm.exit.i.i.i ]
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN8facebook5velox12_GLOBAL__N_114BufferMetadataESaIS3_EED2Ev.exit96.i.i

.lr.ph198.i.i:                                    ; preds = %_ZNSt6vectorIN8facebook5velox12_GLOBAL__N_114BufferMetadataESaIS3_EE9push_backEOS3_.exit.i.i, %.lr.ph198.preheader.i.i
  %i.gg = phi ptr [ %i.he, %_ZNSt6vectorIN8facebook5velox12_GLOBAL__N_114BufferMetadataESaIS3_EE9push_backEOS3_.exit.i.i ], [ %i.ec, %.lr.ph198.preheader.i.i ] ; 2 uses
  %i.gh = phi ptr [ %i.hf, %_ZNSt6vectorIN8facebook5velox12_GLOBAL__N_114BufferMetadataESaIS3_EE9push_backEOS3_.exit.i.i ], [ %i.eb, %.lr.ph198.preheader.i.i ]
  %.052197.i.i = phi i64 [ %i.hg, %_ZNSt6vectorIN8facebook5velox12_GLOBAL__N_114BufferMetadataESaIS3_EE9push_backEOS3_.exit.i.i ], [ 0, %.lr.ph198.preheader.i.i ] ; 4 uses
  %.sroa.26.0196.i.i = phi ptr [ %.sroa.26.3.i.i, %_ZNSt6vectorIN8facebook5velox12_GLOBAL__N_114BufferMetadataESaIS3_EE9push_backEOS3_.exit.i.i ], [ %i.ef, %.lr.ph198.preheader.i.i ] ; 6 uses
  %.sroa.17.0195.i.i = phi ptr [ %.sroa.17.2.i.i, %_ZNSt6vectorIN8facebook5velox12_GLOBAL__N_114BufferMetadataESaIS3_EE9push_backEOS3_.exit.i.i ], [ %i.ee, %.lr.ph198.preheader.i.i ] ; 5 uses
  %.sroa.0114.0194.i.i = phi ptr [ %.sroa.0114.3.i.i, %_ZNSt6vectorIN8facebook5velox12_GLOBAL__N_114BufferMetadataESaIS3_EE9push_backEOS3_.exit.i.i ], [ %i.ee, %.lr.ph198.preheader.i.i ] ; 7 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.052197.i.i
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !82 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !88 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !83
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gn ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.17.0195.i.i, %.sroa.26.0196.i.i
  br i1 %.not.i.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph198.i.i
  store ptr %i.gl, ptr %.sroa.17.0195.i.i, align 8, !tbaa !99
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.17.0195.i.i, i64 8
  store ptr %i.go, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !99
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.17.0195.i.i, i64 16
  store i64 %.052197.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !95
  br label %_ZNSt6vectorIN8facebook5velox12_GLOBAL__N_114BufferMetadataESaIS3_EE9push_backEOS3_.exit.i.i

bb.aj:                                            ; preds = %.lr.ph198.i.i
  %i.gp = ptrtoint ptr %.sroa.26.0196.i.i to i64
  %i.gq = ptrtoint ptr %.sroa.0114.0194.i.i to i64
  %i.gr = sub i64 %i.gp, %i.gq                    ; 6 uses
  %i.gs = icmp eq i64 %i.gr, 9223372036854775800
  br i1 %i.gs, label %bb.ak, label %_ZNKSt6vectorIN8facebook5velox12_GLOBAL__N_114BufferMetadataESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.137) #41
          to label %.noexc81.i.i unwind label %.loopexit.split-lp151.i.i

.noexc81.i.i:                                     ; preds = %bb.ak
  unreachable

_ZNKSt6vectorIN8facebook5velox12_GLOBAL__N_114BufferMetadataESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.aj
  %i.gt = sdiv exact i64 %i.gr, 24                ; 3 uses
  %i.gu = icmp eq ptr %.sroa.26.0196.i.i, %.sroa.0114.0194.i.i
  %.sroa.speculated.i.i.i.i.i.i = select i1 %i.gu, i64 1, i64 %i.gt
  %i.gv = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.gt ; 2 uses
  %i.gw = icmp ult i64 %i.gv, %i.gt
  %i.gx = call i64 @llvm.umin.i64(i64 %i.gv, i64 384307168202282325)
  %i.gy = select i1 %i.gw, i64 384307168202282325, i64 %i.gx ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.gy, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.gz = mul nuw nsw i64 %i.gy, 24
  %i.ha = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gz) #42
          to label %.noexc82.i.i unwind label %.loopexit150.i.i ; 4 uses

.noexc82.i.i:                                     ; preds = %_ZNKSt6vectorIN8facebook5velox12_GLOBAL__N_114BufferMetadataESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.hb = getelementptr inbounds i8, ptr %i.ha, i64 %i.gr ; 4 uses
  store ptr %i.gl, ptr %i.hb, align 8, !tbaa !99
  %.sroa.6.0..sroa_idx110.i.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store ptr %i.go, ptr %.sroa.6.0..sroa_idx110.i.i, align 8, !tbaa !99
  %.sroa.7.0..sroa_idx112.i.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store i64 %.052197.i.i, ptr %.sroa.7.0..sroa_idx112.i.i, align 8, !tbaa !95
  %i.hc = icmp sgt i64 %i.gr, 0
  br i1 %i.hc, label %bb.al, label %_ZNSt6vectorIN8facebook5velox12_GLOBAL__N_114BufferMetadataESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i

bb.al:                                            ; preds = %.noexc82.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ha, ptr align 8 %.sroa.0114.0194.i.i, i64 %i.gr, i1 false)
  br label %_ZNSt6vectorIN8facebook5velox12_GLOBAL__N_114BufferMetadataESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN8facebook5velox12_GLOBAL__N_114BufferMetadataESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i: ; preds = %bb.al, %.noexc82.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0114.0194.i.i, i64 noundef %i.gr) #40
  %.pre235.i.pre.i = load ptr, ptr %i.di, align 8, !tbaa !94
  %.pre234.i.pre.i = load ptr, ptr %i.dp, align 8, !tbaa !91
  %i.hd = getelementptr inbounds nuw [24 x i8], ptr %i.ha, i64 %i.gy
  br label %_ZNSt6vectorIN8facebook5velox12_GLOBAL__N_114BufferMetadataESaIS3_EE9push_backEOS3_.exit.i.i

_ZNSt6vectorIN8facebook5velox12_GLOBAL__N_114BufferMetadataESaIS3_EE9push_backEOS3_.exit.i.i: ; preds = %_ZNSt6vectorIN8facebook5velox12_GLOBAL__N_114BufferMetadataESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, %bb.ai
  %i.he = phi ptr [ %.pre235.i.pre.i, %_ZNSt6vectorIN8facebook5velox12_GLOBAL__N_114BufferMetadataESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ], [ %i.gg, %bb.ai ] ; 2 uses
  %i.hf = phi ptr [ %.pre234.i.pre.i, %_ZNSt6vectorIN8facebook5velox12_GLOBAL__N_114BufferMetadataESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ], [ %i.gh, %bb.ai ] ; 2 uses
  %.sroa.0114.3.i.i = phi ptr [ %i.ha, %_ZNSt6vectorIN8facebook5velox12_GLOBAL__N_114BufferMetadataESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ], [ %.sroa.0114.0194.i.i, %bb.ai ] ; 24 uses
  %.pn145.i.i = phi ptr [ %i.hb, %_ZNSt6vectorIN8facebook5velox12_GLOBAL__N_114BufferMetadataESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ], [ %.sroa.17.0195.i.i, %bb.ai ] ; 4 uses
  %.sroa.26.3.i.i = phi ptr [ %i.hd, %_ZNSt6vectorIN8facebook5velox12_GLOBAL__N_114BufferMetadataESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ], [ %.sroa.26.0196.i.i, %bb.ai ] ; 5 uses
  %.sroa.17.2.i.i = getelementptr inbounds nuw i8, ptr %.pn145.i.i, i64 24 ; 5 uses
  %i.hg = add nuw nsw i64 %.052197.i.i, 1         ; 2 uses
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = ptrtoint ptr %i.he to i64
  %i.hj = sub i64 %i.hh, %i.hi
  %i.hk = ashr exact i64 %i.hj, 3
  %i.hl = icmp ult i64 %i.hg, %i.hk
  br i1 %i.hl, label %.lr.ph198.i.i, label %._crit_edge199.i.i, !llvm.loop !105

.loopexit150.i.i:                                 ; preds = %_ZNKSt6vectorIN8facebook5velox12_GLOBAL__N_114BufferMetadataESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %lpad.loopexit152.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.loopexit.split-lp151.i.i:                        ; preds = %bb.ak
  %lpad.loopexit.split-lp153.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEEZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISE_SaISE_EERSoE3$_0EvT_SN_T0_.exit.thread132.i.i": ; preds = %bb.ah, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_T0_.exit.i19.i.i.i.i.i", %bb.ab, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISG_SaISG_EERSoE3$_0EEEvT_SQ_T0_.exit.i.i.i.i.i"
  %.not144203.i.i = icmp ugt i64 %i.fe, 1
  br i1 %.not144203.i.i, label %.lr.ph206.preheader.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEEZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISE_SaISE_EERSoE3$_0EvT_SN_T0_.exit.thread.i.i"

.lr.ph206.preheader.i.i:                          ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEEZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISE_SaISE_EERSoE3$_0EvT_SN_T0_.exit.thread132.i.i"
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0114.3.i.i, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !106
  br label %.lr.ph206.i.i

.lr.ph206.i.i:                                    ; preds = %bb.am, %.lr.ph206.preheader.i.i
  %.049205.i.i = phi i64 [ %i.ht, %bb.am ], [ 1, %.lr.ph206.preheader.i.i ] ; 2 uses
  %.0204.i.i = phi ptr [ %.sroa.speculated.i.i, %bb.am ], [ %i.hn, %.lr.ph206.preheader.i.i ] ; 3 uses
  %i.ho = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0114.3.i.i, i64 %.049205.i.i ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !96
  %.not304.i.not.i.not.not = icmp uge ptr %i.hp, %.0204.i.i ; 3 uses
  br i1 %.not304.i.not.i.not.not, label %bb.am, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEEZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISE_SaISE_EERSoE3$_0EvT_SN_T0_.exit.thread.i.i"

bb.am:                                            ; preds = %.lr.ph206.i.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !99 ; 2 uses
  %i.hs = icmp ult ptr %.0204.i.i, %i.hr
  %.sroa.speculated.i.i = select i1 %i.hs, ptr %i.hr, ptr %.0204.i.i
  %i.ht = add nuw i64 %.049205.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ht, %i.fe
  br i1 %exitcond.not.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEEZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISE_SaISE_EERSoE3$_0EvT_SN_T0_.exit.thread.i.i", label %.lr.ph206.i.i, !llvm.loop !107

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEEZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISE_SaISE_EERSoE3$_0EvT_SN_T0_.exit.thread.i.i": ; preds = %bb.am, %.lr.ph206.i.i, %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEEZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISE_SaISE_EERSoE3$_0EvT_SN_T0_.exit.thread132.i.i", %._crit_edge199.i.i, %._crit_edge.thread.i.i
  %.sroa.26.0.lcssa284.i.i = phi ptr [ %.sroa.26.3.i.i, %._crit_edge199.i.i ], [ %.sroa.26.3.i.i, %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEEZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISE_SaISE_EERSoE3$_0EvT_SN_T0_.exit.thread132.i.i" ], [ null, %._crit_edge.thread.i.i ], [ %.sroa.26.3.i.i, %.lr.ph206.i.i ], [ %.sroa.26.3.i.i, %bb.am ] ; 5 uses
  %.sroa.0114.0.lcssa283.i.i = phi ptr [ %.sroa.0114.3.i.i, %._crit_edge199.i.i ], [ %.sroa.0114.3.i.i, %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEEZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISE_SaISE_EERSoE3$_0EvT_SN_T0_.exit.thread132.i.i" ], [ null, %._crit_edge.thread.i.i ], [ %.sroa.0114.3.i.i, %.lr.ph206.i.i ], [ %.sroa.0114.3.i.i, %bb.am ] ; 8 uses
  %.051.i.i = phi i1 [ false, %._crit_edge199.i.i ], [ true, %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEEZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISE_SaISE_EERSoE3$_0EvT_SN_T0_.exit.thread132.i.i" ], [ false, %._crit_edge.thread.i.i ], [ %.not304.i.not.i.not.not, %.lr.ph206.i.i ], [ %.not304.i.not.i.not.not, %bb.am ]
  %i.hu = load ptr, ptr %i.dc, align 8, !tbaa !82
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !88 ; 2 uses
  %i.hx = icmp sgt i32 %i.dj, 0
  br i1 %i.hx, label %.lr.ph211.i.i, label %._crit_edge212.i.i

.lr.ph211.i.i:                                    ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEEZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISE_SaISE_EERSoE3$_0EvT_SN_T0_.exit.thread.i.i"
  %i.hy = ptrtoint ptr %.sroa.11.0.lcssa272.i.i to i64
  %i.hz = ptrtoint ptr %.sroa.0122.0.lcssa267.i.i to i64
  %i.ia = sub i64 %i.hy, %i.hz
  %i.ib = ashr exact i64 %i.ia, 3                 ; 2 uses
  %.not9.i.i.i = icmp slt i64 %i.ib, 1
  %i.ic = add nsw i64 %i.ib, -1
  %wide.trip.count.i.i = zext nneg i32 %i.dj to i64
  br label %bb.ap

._crit_edge212.i.i:                               ; preds = %bb.bd, %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox12_GLOBAL__N_114BufferMetadataESt6vectorIS5_SaIS5_EEEEZNS4_16writeStringViewsEiRKN5boost13intrusive_ptrINS3_6BufferEEERKS7_ISE_SaISE_EERSoE3$_0EvT_SN_T0_.exit.thread.i.i"
  %.not.i.i.i83.i.i = icmp eq ptr %.sroa.0114.0.lcssa283.i.i, null
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElNS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_T0_T1_:bb.a
bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_SM_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph50
  %i.cf = icmp ult ptr %i.bz, %i.cc
  br i1 %i.cf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_SM_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.cg = icmp ult ptr %i.ca, %i.cc
  br i1 %i.cg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_SM_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_SM_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_SM_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_SM_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_SM_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_SM_T0_.exit.i.preheader, %bb.v
  %.sroa.012.0.i.i = phi ptr [ %i.ck, %bb.v ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_SM_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2649, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_SM_T0_.exit.i.preheader ]
  %i.ch = load ptr, ptr %0, align 8, !tbaa !1924  ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_SM_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_SM_T0_.exit.i ], [ %i.ck, %bb.t ] ; 9 uses
  %i.ci = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !1924
  %i.cj = icmp ult ptr %i.ci, %i.ch
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 24 ; 2 uses
  br i1 %i.cj, label %bb.t, label %.preheader.i.i, !llvm.loop !1961

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 6 uses
  %i.cl = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !1924
  %i.cm = icmp ult ptr %i.ch, %i.cl
  br i1 %i.cm, label %.preheader.i.i, label %bb.u, !llvm.loop !1962

bb.u:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEET_SM_SM_T0_.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.012.1.i.i, i64 24, i1 false), !tbaa.struct !98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.1.i.i, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_SM_T0_.exit.i, !llvm.loop !1963

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEET_SM_SM_T0_.exit: ; preds = %bb.u
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEElNS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2649, i64 noundef %i.bv)
  %i.cn = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.co = sub i64 %i.cn, %i.a                     ; 3 uses
  %i.cp = icmp sgt i64 %i.co, 384
  br i1 %i.cp, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_T0_.exit, !llvm.loop !1956

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEET_SM_SM_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_SM_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.5.i.i22 = alloca { ptr, i64 }, align 8   ; 4 uses
  %2 = alloca %struct.StringBufferRemapping, align 8 ; 4 uses
  %.sroa.5.i.i12 = alloca { ptr, i64 }, align 8   ; 4 uses
  %.sroa.5.i.i = alloca { ptr, i64 }, align 8     ; 4 uses
  %3 = alloca %struct.StringBufferRemapping, align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.018.i.idx = phi i64 [ 24, %.lr.ph.i ], [ %.sroa.0.018.i.add, %bb.g ] ; 4 uses
  %.pn17.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.018.i.ptr, %bb.g ] ; 4 uses
  %.sroa.0.018.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.018.i.idx ; 5 uses
  %i.e = load ptr, ptr %.sroa.0.018.i.ptr, align 8, !tbaa !1924 ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !1924
  %i.g = icmp ult ptr %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.018.i.ptr, i64 24, i1 false), !tbaa.struct !98
  %i.h = icmp samesign ugt i64 %.sroa.0.018.i.idx, 24
  br i1 %i.h, label %bb.d, label %bb.e, !prof !27

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.018.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEESF_ET0_T_SH_SG_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !98
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEESF_ET0_T_SH_SG_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEESF_ET0_T_SH_SG_.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i64 16, i1 false), !tbaa.struct !100
  %i.j = load ptr, ptr %.pn17.i, align 8, !tbaa !1924
  %i.k = icmp ult ptr %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops14_Val_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn17.i, %bb.f ] ; 4 uses
  %.sroa.06.010.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i ], [ %.sroa.0.018.i.ptr, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.010.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.011.i.i, i64 24, i1 false), !tbaa.struct !98
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i, i64 -24 ; 2 uses
  %i.l = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !1924
  %i.m = icmp ult ptr %i.e, %i.l
  br i1 %i.m, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops14_Val_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_T0_.exit.i, !llvm.loop !1964

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops14_Val_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.06.0.lcssa.i.i = phi ptr [ %.sroa.0.018.i.ptr, %bb.f ], [ %.sroa.0.011.i.i, %.lr.ph.i.i ] ; 2 uses
  store ptr %i.e, ptr %.sroa.06.0.lcssa.i.i, align 8, !tbaa !99
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, i64 16, i1 false), !tbaa.struct !100
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops14_Val_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEESF_ET0_T_SH_SG_.exit.i
  %.sroa.0.018.i.add = add nuw nsw i64 %.sroa.0.018.i.idx, 24 ; 2 uses
  %i.n = icmp eq i64 %.sroa.0.018.i.add, 384
  br i1 %i.n, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_T0_.exit, label %bb.b, !llvm.loop !1965

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_T0_.exit: ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.p = icmp eq ptr %i.o, %1
  br i1 %i.p, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_T0_.exit, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops14_Val_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_T0_.exit.i15
  %.sroa.0.06.i = phi ptr [ %i.u, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops14_Val_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_T0_.exit.i15 ], [ %i.o, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_T0_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i12)
  %.sroa.03.0.copyload.i.i = load ptr, ptr %.sroa.0.06.i, align 8, !tbaa !99 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i14 = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i12, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i14, i64 16, i1 false), !tbaa.struct !100
  %.sroa.0.09.i.i = getelementptr inbounds i8, ptr %.sroa.0.06.i, i64 -24 ; 2 uses
  %i.q = load ptr, ptr %.sroa.0.09.i.i, align 8, !tbaa !1924
  %i.r = icmp ult ptr %.sroa.03.0.copyload.i.i, %i.q
  br i1 %i.r, label %.lr.ph.i.i18, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops14_Val_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_T0_.exit.i15

.lr.ph.i.i18:                                     ; preds = %.lr.ph.i13, %.lr.ph.i.i18
  %.sroa.0.011.i.i19 = phi ptr [ %.sroa.0.0.i.i21, %.lr.ph.i.i18 ], [ %.sroa.0.09.i.i, %.lr.ph.i13 ] ; 4 uses
  %.sroa.06.010.i.i20 = phi ptr [ %.sroa.0.011.i.i19, %.lr.ph.i.i18 ], [ %.sroa.0.06.i, %.lr.ph.i13 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.010.i.i20, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.011.i.i19, i64 24, i1 false), !tbaa.struct !98
  %.sroa.0.0.i.i21 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i19, i64 -24 ; 2 uses
  %i.s = load ptr, ptr %.sroa.0.0.i.i21, align 8, !tbaa !1924
  %i.t = icmp ult ptr %.sroa.03.0.copyload.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i18, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops14_Val_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_T0_.exit.i15, !llvm.loop !1964

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops14_Val_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_T0_.exit.i15: ; preds = %.lr.ph.i.i18, %.lr.ph.i13
  %.sroa.06.0.lcssa.i.i16 = phi ptr [ %.sroa.0.06.i, %.lr.ph.i13 ], [ %.sroa.0.011.i.i19, %.lr.ph.i.i18 ] ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i, ptr %.sroa.06.0.lcssa.i.i16, align 8, !tbaa !99
  %.sroa.5.0..sroa_idx5.i.i17 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i16, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx5.i.i17, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i12, i64 16, i1 false), !tbaa.struct !100
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i12)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i, i64 24 ; 2 uses
  %i.v = icmp eq ptr %i.u, %1
  br i1 %i.v, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_T0_.exit, label %.lr.ph.i13, !llvm.loop !1966

bb.h:                                             ; preds = %bb.a
  %i.w = icmp eq ptr %0, %1
  %.sroa.0.016.i24 = getelementptr i8, ptr %0, i64 24 ; 3 uses
  %i.x = icmp eq ptr %.sroa.0.016.i24, %1
  %or.cond = or i1 %i.w, %i.x
  br i1 %or.cond, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_T0_.exit, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %bb.h, %bb.n
  %.sroa.0.018.i26 = phi ptr [ %.sroa.0.0.i32, %bb.n ], [ %.sroa.0.016.i24, %bb.h ] ; 7 uses
  %.pn17.i27 = phi ptr [ %.sroa.0.018.i26, %bb.n ], [ %0, %bb.h ] ; 4 uses
  %i.y = load ptr, ptr %.sroa.0.018.i26, align 8, !tbaa !1924 ; 4 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !1924
  %i.aa = icmp ult ptr %i.y, %i.z
  br i1 %i.aa, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.lr.ph.i25
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.018.i26, i64 24, i1 false), !tbaa.struct !98
  %i.ab = ptrtoint ptr %.sroa.0.018.i26 to i64
  %i.ac = sub i64 %i.ab, %i.b                     ; 3 uses
  %i.ad = icmp sgt i64 %i.ac, 24
  br i1 %i.ad, label %bb.j, label %bb.k, !prof !27

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0.016.i24, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ac, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEESF_ET0_T_SH_SG_.exit.i37

bb.k:                                             ; preds = %bb.i
  %i.ae = icmp eq i64 %i.ac, 24
  br i1 %i.ae, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEESF_ET0_T_SH_SG_.exit.i37

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %.pn17.i27, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !98
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEESF_ET0_T_SH_SG_.exit.i37

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEESF_ET0_T_SH_SG_.exit.i37: ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.i25
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i22)
  %.sroa.5.0..sroa_idx.i.i28 = getelementptr inbounds nuw i8, ptr %.pn17.i27, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i22, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i28, i64 16, i1 false), !tbaa.struct !100
  %i.ag = load ptr, ptr %.pn17.i27, align 8, !tbaa !1924
  %i.ah = icmp ult ptr %i.y, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i33, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops14_Val_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_T0_.exit.i29

.lr.ph.i.i33:                                     ; preds = %bb.m, %.lr.ph.i.i33
  %.sroa.0.011.i.i34 = phi ptr [ %.sroa.0.0.i.i36, %.lr.ph.i.i33 ], [ %.pn17.i27, %bb.m ] ; 4 uses
  %.sroa.06.010.i.i35 = phi ptr [ %.sroa.0.011.i.i34, %.lr.ph.i.i33 ], [ %.sroa.0.018.i26, %bb.m ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.010.i.i35, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.011.i.i34, i64 24, i1 false), !tbaa.struct !98
  %.sroa.0.0.i.i36 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i34, i64 -24 ; 2 uses
  %i.ai = load ptr, ptr %.sroa.0.0.i.i36, align 8, !tbaa !1924
  %i.aj = icmp ult ptr %i.y, %i.ai
  br i1 %i.aj, label %.lr.ph.i.i33, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops14_Val_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_T0_.exit.i29, !llvm.loop !1964

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops14_Val_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_T0_.exit.i29: ; preds = %.lr.ph.i.i33, %bb.m
  %.sroa.06.0.lcssa.i.i30 = phi ptr [ %.sroa.0.018.i26, %bb.m ], [ %.sroa.0.011.i.i34, %.lr.ph.i.i33 ] ; 2 uses
  store ptr %i.y, ptr %.sroa.06.0.lcssa.i.i30, align 8, !tbaa !99
  %.sroa.5.0..sroa_idx5.i.i31 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i30, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx5.i.i31, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i22, i64 16, i1 false), !tbaa.struct !100
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i22)
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops14_Val_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_T0_.exit.i29, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEESF_ET0_T_SH_SG_.exit.i37
  %.sroa.0.0.i32 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i26, i64 24 ; 2 uses
  %i.ak = icmp eq ptr %.sroa.0.0.i32, %1
  br i1 %i.ak, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_T0_.exit, label %.lr.ph.i25, !llvm.loop !1965

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_T0_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops14_Val_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_T0_.exit.i15, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN8facebook5velox10FlatVectorINS3_10StringViewEE30transferAndUpdateStringBuffersEPNS3_6memory10MemoryPoolEE21StringBufferRemappingSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_comp_iterIZNS6_30transferAndUpdateStringBuffersES9_EUlRKSA_SJ_E_EEEvT_SM_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox10FlatVectorINS1_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox10FlatVectorINS1_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN8facebook5velox10FlatVectorINS4_10StringViewEEEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEED2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %i.a) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox10FlatVectorINS1_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox10FlatVectorINS2_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox10FlatVectorINS1_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !778  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !23
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #31
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN8facebook5velox10FlatVectorINS1_10StringViewEEEJRKPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEN5boost13intrusive_ptrINS1_6BufferEEERiSJ_St6vectorISJ_SaISJ_EEEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %8 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %9 = alloca %"struct.facebook::velox::SimpleVectorStats", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !258
  %i.b = load ptr, ptr %3, align 8, !tbaa !82
  store ptr %i.b, ptr %7, align 8, !tbaa !82
  store ptr null, ptr %3, align 8, !tbaa !82
  %i.c = load i32, ptr %4, align 4, !tbaa !21
  %i.d = load ptr, ptr %5, align 8, !tbaa !82
  store ptr %i.d, ptr %8, align 8, !tbaa !82
  store ptr null, ptr %5, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 0, ptr %i.e, align 8, !tbaa !688
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i8 0, ptr %i.f, align 8, !tbaa !688
  invoke void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSG_OSt6vectorISG_SaISG_EERKNS0_17SimpleVectorStatsIS2_EESt8optionalIiESQ_SP_IbESQ_SQ_(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 %7, i32 noundef %i.c, ptr noundef nonnull align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(48) %9, i64 0, i64 0, i16 0, i64 0, i64 0)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.g = load ptr, ptr %8, align 8, !tbaa !82     ; 7 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = atomicrmw sub ptr %i.h, i32 1 acq_rel, align 4
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.c
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %.noexc.i unwind label %bb.d, !inline_history !270

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !271
  %.not.i.i = icmp eq ptr %i.o, null
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !14
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %..i.i
  %i.r = load ptr, ptr %i.q, align 8
  invoke void %i.r(ptr noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.d, !inline_history !270

bb.d:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.b, %bb.c, %.noexc.i
  %i.u = load ptr, ptr %7, align 8, !tbaa !82     ; 7 uses
  %.not.i8 = icmp eq ptr %i.u, null
  br i1 %.not.i8, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13, label %bb.e

bb.e:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = atomicrmw sub ptr %i.v, i32 1 acq_rel, align 4
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %.sink.split.i.i9, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13

.sink.split.i.i9:                                 ; preds = %bb.e
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %.noexc.i10 unwind label %bb.f, !inline_history !270

.noexc.i10:                                       ; preds = %.sink.split.i.i9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !271
  %.not.i.i11 = icmp eq ptr %i.ac, null
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !14
  %..i.i12 = select i1 %.not.i.i11, i64 8, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %..i.i12
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13 unwind label %bb.f, !inline_history !270

bb.f:                                             ; preds = %.noexc.i10, %.sink.split.i.i9
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #43
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.e, %.noexc.i10
end_hunk_1
