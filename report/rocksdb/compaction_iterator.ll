Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/compaction_iterator?download=true
inline.NumInlined: 2880
inline.NumDeleted: 1272
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN7rocksdb18CompactionIterator32ExtractLargeColumnValuesIfNeededEv:bb.a
          cleanup
  br label %bb.ab

.loopexit.split-lp126:                            ; preds = %bb.af
  %lpad.loopexit.split-lp128 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit.split-lp126, %.loopexit125
  %lpad.phi129 = phi { ptr, i32 } [ %lpad.loopexit127, %.loopexit125 ], [ %lpad.loopexit.split-lp128, %.loopexit.split-lp126 ] ; 2 uses
  %i.ck = load ptr, ptr %i.ax, align 8, !tbaa !62 ; 2 uses
  %.not.i.i61 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i61, label %_ZN7rocksdb6StatusD2Ev.exit63, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i62

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i62: ; preds = %bb.ab
  call void @_ZdaPv(ptr noundef nonnull %i.ck) #29
  br label %_ZN7rocksdb6StatusD2Ev.exit63

bb.ac:                                            ; preds = %bb.v
  %.not.i = icmp eq ptr %i.bf, %i.be
  br i1 %.not.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i64 %storemerge138, ptr %i.bf, align 8, !tbaa !100
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cl, ptr noundef nonnull align 8 dereferenceable(64) %10, i64 64, i1 false), !tbaa.struct !469
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bf, i64 72 ; 2 uses
  store ptr %i.cm, ptr %i.ba, align 8, !tbaa !443
  br label %_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EE12emplace_backIJRmRS2_EEERS3_DpOT_.exit

bb.ae:                                            ; preds = %bb.ac
  %i.cn = ptrtoint ptr %i.be to i64
  %i.co = ptrtoint ptr %i.bd to i64
  %i.cp = sub i64 %i.cn, %i.co                    ; 4 uses
  %i.cq = icmp eq i64 %i.cp, 9223372036854775800
  br i1 %i.cq, label %bb.af, label %_ZNKSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #31
          to label %.noexc65 unwind label %.loopexit.split-lp126

.noexc65:                                         ; preds = %bb.af
  unreachable

_ZNKSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ae
  %i.cr = sdiv exact i64 %i.cp, 72                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cr, i64 1)
  %i.cs = add nsw i64 %.sroa.speculated.i.i.i, %i.cr ; 2 uses
  %i.ct = icmp ult i64 %i.cs, %i.cr
  %i.cu = call i64 @llvm.umin.i64(i64 %i.cs, i64 128102389400760775)
  %i.cv = select i1 %i.ct, i64 128102389400760775, i64 %i.cu ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cv, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cw = mul nuw nsw i64 %i.cv, 72
  %i.cx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cw) #30
          to label %.noexc66 unwind label %.loopexit125 ; 6 uses

.noexc66:                                         ; preds = %_ZNKSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cp ; 2 uses
  store i64 %storemerge138, ptr %i.cy, align 8, !tbaa !100
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cz, ptr noundef nonnull align 8 dereferenceable(64) %10, i64 64, i1 false), !tbaa.struct !469
  %.not10.i.i.i.i.i = icmp eq ptr %i.bd, %i.be
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc66, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i ], [ %i.cx, %.noexc66 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i ], [ %i.bd, %.noexc66 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.0911.i.i.i.i.i, i64 72, i1 false), !alias.scope !810
  %i.da = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 72 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i.i64 = icmp eq ptr %i.da, %i.be
  br i1 %.not.i.i.i.i.i64, label %_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !10

_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc66
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cx, %.noexc66 ], [ %i.db, %.lr.ph.i.i.i.i.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i24.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i24.i.i, label %_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EE17_M_realloc_insertIJRmRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.cp) #29
  br label %_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EE17_M_realloc_insertIJRmRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EE17_M_realloc_insertIJRmRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.ag, %_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i
  store ptr %i.cx, ptr %7, align 8, !tbaa !414
  store ptr %i.dc, ptr %i.ba, align 8, !tbaa !443
  %i.dd = getelementptr inbounds nuw [72 x i8], ptr %i.cx, i64 %i.cv ; 2 uses
  store ptr %i.dd, ptr %i.bb, align 8, !tbaa !415
  br label %_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EE12emplace_backIJRmRS2_EEERS3_DpOT_.exit

_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EE12emplace_backIJRmRS2_EEERS3_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EE17_M_realloc_insertIJRmRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.ad, %bb.z
  %i.de = phi ptr [ %i.cx, %_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EE17_M_realloc_insertIJRmRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.bd, %bb.ad ], [ %i.bd, %bb.z ]
  %i.df = phi ptr [ %i.dd, %_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EE17_M_realloc_insertIJRmRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.be, %bb.ad ], [ %i.be, %bb.z ]
  %i.dg = phi ptr [ %i.dc, %_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EE17_M_realloc_insertIJRmRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.cm, %bb.ad ], [ %i.bf, %bb.z ]
  %i.dh = load ptr, ptr %i.ax, align 8, !tbaa !62 ; 2 uses
  %.not.i.i67 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i67, label %_ZN7rocksdb6StatusD2Ev.exit69, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i68

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i68: ; preds = %_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EE12emplace_backIJRmRS2_EEERS3_DpOT_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.dh) #29
  br label %_ZN7rocksdb6StatusD2Ev.exit69

_ZN7rocksdb6StatusD2Ev.exit69:                    ; preds = %_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EE12emplace_backIJRmRS2_EEERS3_DpOT_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br i1 %i.cd, label %.critedge, label %.loopexit130

_ZN7rocksdb6StatusD2Ev.exit63:                    ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i62, %bb.ab, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.cj, %bb.aa ], [ %lpad.phi129, %bb.ab ], [ %lpad.phi129, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i62 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.ah

.critedge:                                        ; preds = %_ZN7rocksdb6StatusD2Ev.exit69, %bb.t
  %i.di = phi ptr [ %i.de, %_ZN7rocksdb6StatusD2Ev.exit69 ], [ %i.bd, %bb.t ]
  %i.dj = phi ptr [ %i.df, %_ZN7rocksdb6StatusD2Ev.exit69 ], [ %i.be, %bb.t ]
  %i.dk = phi ptr [ %i.dg, %_ZN7rocksdb6StatusD2Ev.exit69 ], [ %i.bf, %bb.t ] ; 2 uses
  %i.dl = load ptr, ptr %i.bc, align 8, !tbaa !62 ; 2 uses
  %.not.i.i70 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i70, label %_ZN7rocksdb6StatusD2Ev.exit72, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i71

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i71: ; preds = %.critedge
  call void @_ZdaPv(ptr noundef nonnull %i.dl) #29
  br label %_ZN7rocksdb6StatusD2Ev.exit72

_ZN7rocksdb6StatusD2Ev.exit72:                    ; preds = %.critedge, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.dm = add nuw i64 %storemerge138, 1           ; 2 uses
  %i.dn = load ptr, ptr %i.e, align 8, !tbaa !80  ; 3 uses
  %i.do = load ptr, ptr %i.c, align 8, !tbaa !81  ; 4 uses
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = ashr exact i64 %i.dr, 5
  %.not28 = icmp ult i64 %i.dm, %i.ds
  br i1 %.not28, label %bb.l, label %.critedge35, !llvm.loop !803

.loopexit130:                                     ; preds = %_ZN7rocksdb6StatusD2Ev.exit69, %bb.q
  %i.dt = load ptr, ptr %i.bc, align 8, !tbaa !62 ; 2 uses
  %.not.i.i73 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i73, label %_ZN7rocksdb6StatusD2Ev.exit75, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i74

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i74: ; preds = %.loopexit130
  call void @_ZdaPv(ptr noundef nonnull %i.dt) #29
  br label %_ZN7rocksdb6StatusD2Ev.exit75

_ZN7rocksdb6StatusD2Ev.exit75:                    ; preds = %.loopexit130, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %.critedge35.thread

bb.ah:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit63, %bb.s
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN7rocksdb6StatusD2Ev.exit63 ], [ %i.by, %bb.s ] ; 2 uses
  %i.du = load ptr, ptr %i.bc, align 8, !tbaa !62 ; 2 uses
  %.not.i.i76 = icmp eq ptr %i.du, null
  br i1 %.not.i.i76, label %_ZN7rocksdb6StatusD2Ev.exit78, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i77

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i77: ; preds = %bb.ah
  call void @_ZdaPv(ptr noundef nonnull %i.du) #29
  br label %_ZN7rocksdb6StatusD2Ev.exit78

_ZN7rocksdb6StatusD2Ev.exit78:                    ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i77, %bb.ah, %bb.r
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.r ], [ %.pn.pn.pn, %bb.ah ], [ %.pn.pn.pn, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i77 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.bc

.critedge35:                                      ; preds = %_ZN7rocksdb6StatusD2Ev.exit72
  %.pre = load ptr, ptr %7, align 8, !tbaa !95
  %i.dv = icmp eq ptr %.pre, %i.dk
  br i1 %i.dv, label %.critedge35.thread, label %bb.ai

bb.ai:                                            ; preds = %.critedge35
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 6 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !81 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 7 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !80 ; 2 uses
  %.not.i.i79 = icmp eq ptr %i.dz, %i.dx
  br i1 %.not.i.i79, label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE5clearEv.exit81, label %_ZSt8_DestroyIPN7rocksdb10WideColumnES1_EvT_S3_RSaIT0_E.exit.i.i80

_ZSt8_DestroyIPN7rocksdb10WideColumnES1_EvT_S3_RSaIT0_E.exit.i.i80: ; preds = %bb.ai
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !80
  br label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE5clearEv.exit81

_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE5clearEv.exit81: ; preds = %bb.ai, %_ZSt8_DestroyIPN7rocksdb10WideColumnES1_EvT_S3_RSaIT0_E.exit.i.i80
  %i.ea = phi ptr [ %i.dz, %bb.ai ], [ %i.dx, %_ZSt8_DestroyIPN7rocksdb10WideColumnES1_EvT_S3_RSaIT0_E.exit.i.i80 ] ; 2 uses
  %i.eb = ptrtoint ptr %i.dn to i64
  %i.ec = ptrtoint ptr %i.do to i64
  %i.ed = sub i64 %i.eb, %i.ec                    ; 4 uses
  %i.ee = icmp ugt i64 %i.ed, 9223372036854775776
  br i1 %i.ee, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE5clearEv.exit81
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #31
          to label %.noexc82 unwind label %bb.am

.noexc82:                                         ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE5clearEv.exit81
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 6 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !413
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = ptrtoint ptr %i.dx to i64               ; 2 uses
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = icmp ult i64 %i.ej, %i.ed
  br i1 %i.ek, label %_ZNSt12_Vector_baseIN7rocksdb10WideColumnESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIN7rocksdb10WideColumnESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.ak
  %i.el = ptrtoint ptr %i.ea to i64
  %i.em = sub i64 %i.el, %i.ei
  %i.en = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #30
          to label %.noexc83 unwind label %bb.am  ; 4 uses

.noexc83:                                         ; preds = %_ZNSt12_Vector_baseIN7rocksdb10WideColumnESaIS1_EE11_M_allocateEm.exit.i
  %i.eo = load ptr, ptr %i.dw, align 8, !tbaa !81 ; 5 uses
  %i.ep = load ptr, ptr %i.dy, align 8, !tbaa !80 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.eo, %i.ep
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc83, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.er, %.lr.ph.i.i.i.i ], [ %i.en, %.noexc83 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.eq, %.lr.ph.i.i.i.i ], [ %i.eo, %.noexc83 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i, i64 32, i1 false), !tbaa.struct !455, !alias.scope !811
  %i.eq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %.not.i.i.i.i = icmp eq ptr %i.eq, %i.ep
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !8

_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc83
  %.not.i8.i = icmp eq ptr %i.eo, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN7rocksdb10WideColumnESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.es = load ptr, ptr %i.ef, align 8, !tbaa !413
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = ptrtoint ptr %i.eo to i64
  %i.ev = sub i64 %i.et, %i.eu
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef %i.ev) #29
  br label %_ZNSt12_Vector_baseIN7rocksdb10WideColumnESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN7rocksdb10WideColumnESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.al, %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.en, ptr %i.dw, align 8, !tbaa !81
  %i.ew = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.em ; 2 uses
  store ptr %i.ew, ptr %i.dy, align 8, !tbaa !80
  %i.ex = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ed
  store ptr %i.ex, ptr %i.ef, align 8, !tbaa !413
  %.pre149 = load ptr, ptr %i.c, align 8, !tbaa !464
  %.pre150 = load ptr, ptr %i.e, align 8, !tbaa !464
  br label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN7rocksdb10WideColumnESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.ak
  %i.ey = phi ptr [ %i.ew, %_ZNSt12_Vector_baseIN7rocksdb10WideColumnESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.ea, %bb.ak ]
  %i.ez = phi ptr [ %.pre150, %_ZNSt12_Vector_baseIN7rocksdb10WideColumnESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.dn, %bb.ak ] ; 2 uses
  %i.fa = phi ptr [ %.pre149, %_ZNSt12_Vector_baseIN7rocksdb10WideColumnESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.do, %bb.ak ] ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.ez
  br i1 %i.fb, label %._crit_edge, label %.lr.ph141

._crit_edge:                                      ; preds = %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE12emplace_backIJRKNS0_5SliceES7_EEERS1_DpOT_.exit, %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE7reserveEm.exit
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  store i64 0, ptr %i.fd, align 8, !tbaa !113
  %i.fe = load ptr, ptr %i.fc, align 8, !tbaa !39
  store i8 0, ptr %i.fe, align 1, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  invoke void @_ZN7rocksdb23WideColumnSerialization11SerializeV2ERKSt6vectorINS_10WideColumnESaIS2_EERKS1_ISt4pairImNS_9BlobIndexEESaIS9_EERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %i.dw, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.fc)
          to label %bb.ar unwind label %bb.aw

bb.am:                                            ; preds = %_ZNSt12_Vector_baseIN7rocksdb10WideColumnESaIS1_EE11_M_allocateEm.exit.i, %bb.aj
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.lr.ph141:                                        ; preds = %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE7reserveEm.exit, %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE12emplace_backIJRKNS0_5SliceES7_EEERS1_DpOT_.exit
  %i.fg = phi ptr [ %i.gf, %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE12emplace_backIJRKNS0_5SliceES7_EEERS1_DpOT_.exit ], [ %i.ey, %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE7reserveEm.exit ] ; 6 uses
  %.sroa.0118.0140.a = phi ptr [ %i.gg, %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE12emplace_backIJRKNS0_5SliceES7_EEERS1_DpOT_.exit ], [ %i.fa, %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE7reserveEm.exit ] ; 4 uses
  %13 = getelementptr inbounds nuw i8, ptr %.sroa.0118.0140.a, i64 16 ; 2 uses
  %14 = load ptr, ptr %i.ef, align 8, !tbaa !413
  %.not.i84 = icmp eq ptr %i.fg, %14
  br i1 %.not.i84, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.lr.ph141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fg, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0118.0140.a, i64 16, i1 false), !tbaa.struct !64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fh, ptr noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false), !tbaa.struct !64
  %i.fi = load ptr, ptr %i.dy, align 8, !tbaa !80
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 32 ; 2 uses
  store ptr %i.fj, ptr %i.dy, align 8, !tbaa !80
  br label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE12emplace_backIJRKNS0_5SliceES7_EEERS1_DpOT_.exit

bb.ao:                                            ; preds = %.lr.ph141
  %i.fk = load ptr, ptr %i.dw, align 8, !tbaa !81 ; 5 uses
  %i.fl = ptrtoint ptr %i.fg to i64
  %i.fm = ptrtoint ptr %i.fk to i64               ; 2 uses
  %i.fn = sub i64 %i.fl, %i.fm                    ; 3 uses
  %i.fo = icmp eq i64 %i.fn, 9223372036854775776
  br i1 %i.fo, label %bb.ap, label %_ZNKSt6vectorIN7rocksdb10WideColumnESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #31
          to label %.noexc93 unwind label %.loopexit.split-lp

.noexc93:                                         ; preds = %bb.ap
  unreachable

_ZNKSt6vectorIN7rocksdb10WideColumnESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ao
  %i.fp = ashr exact i64 %i.fn, 5                 ; 3 uses
  %.sroa.speculated.i.i.i85 = call i64 @llvm.umax.i64(i64 %i.fp, i64 1)
  %i.fq = add nsw i64 %.sroa.speculated.i.i.i85, %i.fp ; 2 uses
  %i.fr = icmp ult i64 %i.fq, %i.fp
  %i.fs = call i64 @llvm.umin.i64(i64 %i.fq, i64 288230376151711743)
  %i.ft = select i1 %i.fr, i64 288230376151711743, i64 %i.fs ; 3 uses
  %.not.i.i.i86 = icmp ne i64 %i.ft, 0
  call void @llvm.assume(i1 %.not.i.i.i86)
  %i.fu = shl nuw nsw i64 %i.ft, 5
  %i.fv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fu) #30
          to label %.noexc94 unwind label %.loopexit ; 5 uses

.noexc94:                                         ; preds = %_ZNKSt6vectorIN7rocksdb10WideColumnESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fn ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fw, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0118.0140.a, i64 16, i1 false), !tbaa.struct !64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fx, ptr noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false), !tbaa.struct !64
  %.not10.i.i.i.i.i87 = icmp eq ptr %i.fk, %i.fg
  br i1 %.not10.i.i.i.i.i87, label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i88

.lr.ph.i.i.i.i.i88:                               ; preds = %.noexc94, %.lr.ph.i.i.i.i.i88
  %.012.i.i.i.i.i89 = phi ptr [ %i.fz, %.lr.ph.i.i.i.i.i88 ], [ %i.fv, %.noexc94 ] ; 2 uses
  %.0911.i.i.i.i.i90 = phi ptr [ %i.fy, %.lr.ph.i.i.i.i.i88 ], [ %i.fk, %.noexc94 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i89, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i90, i64 32, i1 false), !tbaa.struct !455, !alias.scope !812
  %i.fy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i90, i64 32 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i89, i64 32 ; 2 uses
  %.not.i.i.i.i.i91 = icmp eq ptr %i.fy, %i.fg
  br i1 %.not.i.i.i.i.i91, label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i88, !llvm.loop !8

_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i88, %.noexc94
  %.0.lcssa.i.i.i.i.i92 = phi ptr [ %i.fv, %.noexc94 ], [ %i.fz, %.lr.ph.i.i.i.i.i88 ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i92, i64 32 ; 2 uses
  %.not.i34.i.i = icmp eq ptr %i.fk, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE17_M_realloc_insertIJRKNS0_5SliceES7_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  %i.gb = load ptr, ptr %i.ef, align 8, !tbaa !413
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = sub i64 %i.gc, %i.fm
  call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef %i.gd) #29
  br label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE17_M_realloc_insertIJRKNS0_5SliceES7_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE17_M_realloc_insertIJRKNS0_5SliceES7_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.aq, %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.fv, ptr %i.dw, align 8, !tbaa !81
  store ptr %i.ga, ptr %i.dy, align 8, !tbaa !80
  %i.ge = getelementptr inbounds nuw [32 x i8], ptr %i.fv, i64 %i.ft
  store ptr %i.ge, ptr %i.ef, align 8, !tbaa !413
  br label %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE12emplace_backIJRKNS0_5SliceES7_EEERS1_DpOT_.exit

_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE12emplace_backIJRKNS0_5SliceES7_EEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE17_M_realloc_insertIJRKNS0_5SliceES7_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.an
  %i.gf = phi ptr [ %i.ga, %_ZNSt6vectorIN7rocksdb10WideColumnESaIS1_EE17_M_realloc_insertIJRKNS0_5SliceES7_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.fj, %bb.an ]
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.0118.0140.a, i64 32 ; 2 uses
  %i.gh = icmp eq ptr %i.gg, %i.ez
  br i1 %i.gh, label %._crit_edge, label %.lr.ph141

.loopexit:                                        ; preds = %_ZNKSt6vectorIN7rocksdb10WideColumnESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit.split-lp:                               ; preds = %bb.ap
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ar:                                            ; preds = %._crit_edge
  %i.gi = load i8, ptr %12, align 8, !tbaa !429   ; 2 uses
  %i.gj = icmp eq i8 %i.gi, 0
  br i1 %i.gj, label %bb.ay, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i8 %i.gi, ptr %i.gk, align 8, !tbaa !429
  %i.gl = getelementptr inbounds nuw i8, ptr %12, i64 1
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 361
  %i.gn = load <4 x i8>, ptr %i.gl, align 1, !tbaa !40
  store <4 x i8> %i.gn, ptr %i.gm, align 1, !tbaa !40
  %i.go = getelementptr inbounds nuw i8, ptr %12, i64 5
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !93
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 365
  store i8 %i.gp, ptr %i.gq, align 1, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.gr = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !62 ; 2 uses
  %.not.i.i96 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i96, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %1, ptr noundef nonnull %i.gs)
          to label %.noexc103 unwind label %bb.ax

.noexc103:                                        ; preds = %bb.at
  %.pre.i97 = load ptr, ptr %1, align 8, !tbaa !62
  br label %bb.au

bb.au:                                            ; preds = %.noexc103, %bb.as
  %i.gt = phi ptr [ %.pre.i97, %.noexc103 ], [ null, %bb.as ]
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  store ptr null, ptr %1, align 8, !tbaa !62
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !62 ; 2 uses
  store ptr %i.gt, ptr %i.gu, align 8, !tbaa !62
  %.not.i.i.i.i.i98 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i.i.i98, label %bb.av, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i99

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i99: ; preds = %bb.au
  call void @_ZdaPv(ptr noundef nonnull %i.gv) #29
  %.pr.i100 = load ptr, ptr %1, align 8, !tbaa !62 ; 2 uses
  %.not.i12.i101 = icmp eq ptr %.pr.i100, null
  br i1 %.not.i12.i101, label %bb.av, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i102

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i102: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i99
  call void @_ZdaPv(ptr noundef nonnull %.pr.i100) #29
  br label %bb.av

bb.av:                                            ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i102, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i99, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i8 0, ptr %i.gw, align 8, !tbaa !242
  br label %bb.az

bb.aw:                                            ; preds = %._crit_edge
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit107

bb.ax:                                            ; preds = %bb.at
  %i.gy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gz = load ptr, ptr %i.gr, align 8, !tbaa !62 ; 2 uses
  %.not.i.i105 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i105, label %_ZN7rocksdb6StatusD2Ev.exit107, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i106

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i106: ; preds = %bb.ax
  call void @_ZdaPv(ptr noundef nonnull %i.gz) #29
  br label %_ZN7rocksdb6StatusD2Ev.exit107

bb.ay:                                            ; preds = %bb.ar
  %i.ha = load ptr, ptr %i.fc, align 8, !tbaa !39
  %i.hb = load i64, ptr %i.fd, align 8, !tbaa !113
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %i.ha, ptr %i.hc, align 8, !tbaa !62
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i64 %i.hb, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !63
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.av
  %i.hd = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !62 ; 2 uses
  %.not.i.i108 = icmp eq ptr %i.he, null
  br i1 %.not.i.i108, label %_ZN7rocksdb6StatusD2Ev.exit110, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i109

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i109: ; preds = %bb.az
  call void @_ZdaPv(ptr noundef nonnull %i.he) #29
  br label %_ZN7rocksdb6StatusD2Ev.exit110

_ZN7rocksdb6StatusD2Ev.exit110:                   ; preds = %bb.az, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %.critedge35.thread

.critedge35.thread:                               ; preds = %bb.k, %_ZN7rocksdb6StatusD2Ev.exit75, %.critedge35, %_ZN7rocksdb6StatusD2Ev.exit110
  %i.hf = load ptr, ptr %8, align 8, !tbaa !39    ; 2 uses
  %i.hg = icmp eq ptr %i.hf, %i.ak
  br i1 %i.hg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge35.thread
  %i.hh = load i64, ptr %i.ak, align 8, !tbaa !40
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hi) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge35.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.hj = load ptr, ptr %7, align 8, !tbaa !414   ; 3 uses
  %.not.i.i.i111 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i.i111, label %_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hk = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !415
  %i.hm = ptrtoint ptr %i.hl to i64
  %i.hn = ptrtoint ptr %i.hj to i64
  %i.ho = sub i64 %i.hm, %i.hn
  call void @_ZdlPvm(ptr noundef nonnull %i.hj, i64 noundef %i.ho) #29
  br label %_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EED2Ev.exit

_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit42, %bb.j, %bb.a, %_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EED2Ev.exit
  ret void

_ZN7rocksdb6StatusD2Ev.exit107:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i106, %bb.ax, %bb.aw
  %.pn29 = phi { ptr, i32 } [ %i.gx, %bb.aw ], [ %i.gy, %bb.ax ], [ %i.gy, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i106 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZN7rocksdb6StatusD2Ev.exit107, %bb.am, %_ZN7rocksdb6StatusD2Ev.exit78
  %.pn31 = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZN7rocksdb6StatusD2Ev.exit78 ], [ %.pn29, %_ZN7rocksdb6StatusD2Ev.exit107 ], [ %i.ff, %bb.am ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.hp = load ptr, ptr %8, align 8, !tbaa !39    ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.ak
  br i1 %i.hq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %bb.bc
  %i.hr = load i64, ptr %i.ak, align 8, !tbaa !40
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.hs) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.ht = load ptr, ptr %7, align 8, !tbaa !414   ; 3 uses
  %.not.i.i.i115 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i115, label %_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EED2Ev.exit116, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  %i.hu = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !415
  %i.hw = ptrtoint ptr %i.hv to i64
  %i.hx = ptrtoint ptr %i.ht to i64
  %i.hy = sub i64 %i.hw, %i.hx
  call void @_ZdlPvm(ptr noundef nonnull %i.ht, i64 noundef %i.hy) #29
  br label %_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EED2Ev.exit116

_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EED2Ev.exit116: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EED2Ev.exit116, %_ZN7rocksdb6StatusD2Ev.exit
  %.pn31.pn = phi { ptr, i32 } [ %.pn31, %_ZNSt6vectorISt4pairImN7rocksdb9BlobIndexEESaIS3_EED2Ev.exit116 ], [ %i.ab, %_ZN7rocksdb6StatusD2Ev.exit ]
  resume { ptr, i32 } %.pn31.pn
}

declare void @_ZN7rocksdb23WideColumnSerialization11SerializeV2ERKSt6vectorINS_10WideColumnESaIS2_EERKS1_ISt4pairImNS_9BlobIndexEESaIS9_EERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb18CompactionIterator19FetchBlobsNeedingGCERKSt6vectorINS_10WideColumnESaIS2_EERKS1_ISt4pairImNS_9BlobIndexEESaIS9_EEPS1_IS7_ImNS_13PinnableSliceEESaISF_EE(ptr noundef nonnull align 8 dereferenceable(1505) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.rocksdb::PinnableSlice", align 8 ; 15 uses
  %5 = alloca %"class.rocksdb::Status", align 8   ; 10 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !95     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !95   ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
end_hunk_0
