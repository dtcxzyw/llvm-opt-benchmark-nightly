inline.NumInlined: 1854
inline.NumDeleted: 788
begin_hunk_0_@_ZN3re213PrefilterTree15AssignUniqueIdsEPN4absl12lts_2024011613flat_hash_setIPNS_9PrefilterENS0_13PrefilterHashENS0_14PrefilterEqualESaIS5_EEEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISH_EE:bb.a
.noexc156:                                        ; preds = %_ZNKSt6vectorIPN3re29PrefilterESaIS2_EE12_M_check_lenEmPKc.exit.i.i149
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 %i.co ; 2 uses
  %i.cy = load ptr, ptr %i.ck, align 8, !tbaa !37
  store ptr %i.cy, ptr %i.cx, align 8, !tbaa !37
  %i.cz = icmp sgt i64 %i.co, 0
  br i1 %i.cz, label %bb.s, label %_ZNSt6vectorIPN3re29PrefilterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i152

bb.s:                                             ; preds = %.noexc156
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cw, ptr align 8 %.sroa.0265.2421, i64 %i.co, i1 false)
  br label %_ZNSt6vectorIPN3re29PrefilterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i152

_ZNSt6vectorIPN3re29PrefilterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i152: ; preds = %bb.s, %.noexc156
  %.not.i17.i.i153 = icmp eq ptr %.sroa.0265.2421, null
  br i1 %.not.i17.i.i153, label %_ZNSt6vectorIPN3re29PrefilterESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i154, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIPN3re29PrefilterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i152
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0265.2421, i64 noundef %i.co) #30
  br label %_ZNSt6vectorIPN3re29PrefilterESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i154

_ZNSt6vectorIPN3re29PrefilterESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i154: ; preds = %bb.t, %_ZNSt6vectorIPN3re29PrefilterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i152
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cu
  %.pre = load ptr, ptr %i.cf, align 8, !tbaa !27
  %.pre534 = load ptr, ptr %i.ce, align 8, !tbaa !28
  br label %_ZNSt6vectorIPN3re29PrefilterESaIS2_EE9push_backERKS2_.exit157

_ZNSt6vectorIPN3re29PrefilterESaIS2_EE9push_backERKS2_.exit157: ; preds = %_ZNSt6vectorIPN3re29PrefilterESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i154, %bb.p
  %i.db = phi ptr [ %.pre534, %_ZNSt6vectorIPN3re29PrefilterESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i154 ], [ %i.ci, %bb.p ] ; 2 uses
  %i.dc = phi ptr [ %.pre, %_ZNSt6vectorIPN3re29PrefilterESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i154 ], [ %i.cj, %bb.p ] ; 2 uses
  %.sroa.28.6 = phi ptr [ %i.da, %_ZNSt6vectorIPN3re29PrefilterESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i154 ], [ %.sroa.28.2419, %bb.p ] ; 2 uses
  %.pn300 = phi ptr [ %i.cx, %_ZNSt6vectorIPN3re29PrefilterESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i154 ], [ %.sroa.18277.2420, %bb.p ]
  %.sroa.0265.6 = phi ptr [ %i.cw, %_ZNSt6vectorIPN3re29PrefilterESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i154 ], [ %.sroa.0265.2421, %bb.p ] ; 2 uses
  %.sroa.18277.5 = getelementptr inbounds nuw i8, ptr %.pn300, i64 8 ; 2 uses
  %i.dd = add nuw i64 %.0109422, 1                ; 2 uses
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = ptrtoint ptr %i.db to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = ashr exact i64 %i.dg, 3
  %i.di = icmp ult i64 %i.dd, %i.dh
  br i1 %i.di, label %.lr.ph423, label %.loopexit322, !llvm.loop !70

.loopexit323:                                     ; preds = %_ZNKSt6vectorIPN3re29PrefilterESaIS2_EE12_M_check_lenEmPKc.exit.i.i149
  %lpad.loopexit325 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit219

.loopexit.split-lp324:                            ; preds = %bb.r
  %lpad.loopexit.split-lp326 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit219

.loopexit322:                                     ; preds = %_ZNSt6vectorIPN3re29PrefilterESaIS2_EE9push_backERKS2_.exit157, %bb.o, %bb.n, %.lr.ph431
  %.sroa.28.3 = phi ptr [ %.sroa.28.1427, %.lr.ph431 ], [ %.sroa.28.1427, %bb.n ], [ %.sroa.28.1427, %bb.o ], [ %.sroa.28.6, %_ZNSt6vectorIPN3re29PrefilterESaIS2_EE9push_backERKS2_.exit157 ] ; 6 uses
  %.sroa.18277.3 = phi ptr [ %.sroa.18277.1428, %.lr.ph431 ], [ %.sroa.18277.1428, %bb.n ], [ %.sroa.18277.1428, %bb.o ], [ %.sroa.18277.5, %_ZNSt6vectorIPN3re29PrefilterESaIS2_EE9push_backERKS2_.exit157 ] ; 2 uses
  %.sroa.0265.3 = phi ptr [ %.sroa.0265.1429, %.lr.ph431 ], [ %.sroa.0265.1429, %bb.n ], [ %.sroa.0265.1429, %bb.o ], [ %.sroa.0265.6, %_ZNSt6vectorIPN3re29PrefilterESaIS2_EE9push_backERKS2_.exit157 ] ; 8 uses
  %i.dj = add nuw i64 %.0105430, 1                ; 2 uses
  %i.dk = ptrtoint ptr %.sroa.18277.3 to i64
  %i.dl = ptrtoint ptr %.sroa.0265.3 to i64       ; 4 uses
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 3                 ; 6 uses
  %i.do = icmp ult i64 %i.dj, %i.dn
  br i1 %i.do, label %.lr.ph431, label %._crit_edge, !llvm.loop !71

._crit_edge441.thread:                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, %.preheader, %._crit_edge
  %.ph629 = phi i32 [ %i.br, %._crit_edge ], [ 0, %.preheader ], [ 0, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit ]
  %.lcssa377628.ph = phi i64 [ %i.dn, %._crit_edge ], [ 0, %.preheader ], [ 0, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit ]
  %.lcssa380627.ph = phi i64 [ %i.dl, %._crit_edge ], [ %i.w, %.preheader ], [ 0, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit ]
  %.sroa.0265.1.lcssa626.ph = phi ptr [ %.sroa.0265.3, %._crit_edge ], [ %.sroa.0265.5, %.preheader ], [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit ]
  %.sroa.28.1.lcssa624.ph = phi ptr [ %.sroa.28.3, %._crit_edge ], [ %.sroa.28.5, %.preheader ], [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit ]
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !33 ; 2 uses
  %i.dr = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = sdiv exact i64 %i.du, 56
  br label %bb.v

._crit_edge441:                                   ; preds = %bb.as
  %i.dw = sext i32 %.1 to i64                     ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !33 ; 2 uses
  %i.dz = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = sdiv exact i64 %i.ec, 56                ; 3 uses
  %i.ee = icmp ult i64 %i.ed, %i.dw
  br i1 %i.ee, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge441
  %i.ef = sub nuw nsw i64 %i.dw, %i.ed
  invoke void @_ZNSt6vectorIN3re213PrefilterTree5EntryESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ef)
          to label %_ZNSt6vectorIN3re213PrefilterTree5EntryESaIS2_EE6resizeEm.exit unwind label %bb.au

bb.v:                                             ; preds = %._crit_edge441.thread, %._crit_edge441
  %i.eg = phi i64 [ %i.dv, %._crit_edge441.thread ], [ %i.ed, %._crit_edge441 ]
  %i.eh = phi ptr [ %i.dr, %._crit_edge441.thread ], [ %i.dz, %._crit_edge441 ]
  %i.ei = phi ptr [ %i.dq, %._crit_edge441.thread ], [ %i.dy, %._crit_edge441 ] ; 2 uses
  %i.ej = phi ptr [ %i.dp, %._crit_edge441.thread ], [ %i.dx, %._crit_edge441 ]
  %.0286.lcssa643 = phi i64 [ 0, %._crit_edge441.thread ], [ %i.dw, %._crit_edge441 ] ; 2 uses
  %.sroa.28.1.lcssa624642 = phi ptr [ %.sroa.28.1.lcssa624.ph, %._crit_edge441.thread ], [ %.sroa.28.3, %._crit_edge441 ] ; 3 uses
  %.sroa.0265.1.lcssa626640 = phi ptr [ %.sroa.0265.1.lcssa626.ph, %._crit_edge441.thread ], [ %.sroa.0265.3, %._crit_edge441 ] ; 3 uses
  %.lcssa380627638 = phi i64 [ %.lcssa380627.ph, %._crit_edge441.thread ], [ %i.dl, %._crit_edge441 ] ; 3 uses
  %.lcssa377628636 = phi i64 [ %.lcssa377628.ph, %._crit_edge441.thread ], [ %i.dn, %._crit_edge441 ] ; 3 uses
  %i.ek = phi i32 [ %.ph629, %._crit_edge441.thread ], [ %i.br, %._crit_edge441 ] ; 3 uses
  %i.el = phi i1 [ false, %._crit_edge441.thread ], [ true, %._crit_edge441 ] ; 3 uses
  %i.em = icmp ugt i64 %i.eg, %.0286.lcssa643
  br i1 %i.em, label %bb.w, label %_ZNSt6vectorIN3re213PrefilterTree5EntryESaIS2_EE6resizeEm.exit

bb.w:                                             ; preds = %bb.v
  %i.en = getelementptr inbounds nuw [56 x i8], ptr %i.eh, i64 %.0286.lcssa643 ; 3 uses
  %.not.i.i158 = icmp eq ptr %i.ei, %i.en
  br i1 %.not.i.i158, label %_ZNSt6vectorIN3re213PrefilterTree5EntryESaIS2_EE6resizeEm.exit, label %.lr.ph.i.i.i.i159

.lr.ph.i.i.i.i159:                                ; preds = %bb.w, %_ZSt8_DestroyIN3re213PrefilterTree5EntryEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i160 = phi ptr [ %i.fc, %_ZSt8_DestroyIN3re213PrefilterTree5EntryEEvPT_.exit.i.i.i.i ], [ %i.en, %bb.w ] ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i160, i64 32
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !29 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.i159
  %i.eq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i160, i64 48
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !30
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %i.ep to i64
  %i.eu = sub i64 %i.es, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef %i.eu) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i.i.i:      ; preds = %bb.x, %.lr.ph.i.i.i.i159
  %i.ev = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i160, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !29 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN3re213PrefilterTree5EntryEEvPT_.exit.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i160, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !30
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = ptrtoint ptr %i.ew to i64
  %i.fb = sub i64 %i.ez, %i.fa
  call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef %i.fb) #30
  br label %_ZSt8_DestroyIN3re213PrefilterTree5EntryEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN3re213PrefilterTree5EntryEEvPT_.exit.i.i.i.i: ; preds = %bb.y, %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i160, i64 56 ; 2 uses
  %.not.i.i.i.i161 = icmp eq ptr %i.fc, %i.ei
  br i1 %.not.i.i.i.i161, label %_ZSt8_DestroyIPN3re213PrefilterTree5EntryES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i159, !llvm.loop !34

_ZSt8_DestroyIPN3re213PrefilterTree5EntryES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN3re213PrefilterTree5EntryEEvPT_.exit.i.i.i.i
  store ptr %i.en, ptr %i.ej, align 8, !tbaa !33
  br label %_ZNSt6vectorIN3re213PrefilterTree5EntryESaIS2_EE6resizeEm.exit

bb.z:                                             ; preds = %.lr.ph440, %bb.as
  %indvars.iv = phi i64 [ %i.by, %.lr.ph440 ], [ %indvars.iv.next, %bb.as ] ; 2 uses
  %.0286437 = phi i32 [ 0, %.lr.ph440 ], [ %.1, %bb.as ] ; 6 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0265.3, i64 %indvars.iv.next
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !37 ; 4 uses
  store ptr %i.fe, ptr %i.e, align 8, !tbaa !37
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %bb.as, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 48
  store i32 -1, ptr %i.fg, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.fe, ptr %i.d, align 8, !tbaa !37
  %i.fh = invoke { ptr, ptr } @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re29PrefilterEEENS4_13PrefilterTree13PrefilterHashENS8_14PrefilterEqualESaIS6_EE4findIS6_EENSC_8iteratorERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc164 unwind label %.loopexit317 ; 2 uses

.noexc164:                                        ; preds = %bb.aa
  %i.fi = extractvalue { ptr, ptr } %i.fh, 0
  %.not.i163 = icmp eq ptr %i.fi, null
  br i1 %.not.i163, label %.thread, label %bb.ab

.thread:                                          ; preds = %.noexc164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ac

bb.ab:                                            ; preds = %.noexc164
  %i.fj = extractvalue { ptr, ptr } %i.fh, 1
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !37 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %bb.ac, label %bb.ar

bb.ac:                                            ; preds = %.thread, %bb.ab
  %i.fm = invoke { i64, i8 } @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re29PrefilterEEENS4_13PrefilterTree13PrefilterHashENS8_14PrefilterEqualESaIS6_EE22find_or_prepare_insertIS6_EESt4pairImbERKT_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc165 unwind label %bb.aq ; 2 uses

.noexc165:                                        ; preds = %bb.ac
  %.fca.1.extract.i.i.i.i.i = extractvalue { i64, i8 } %i.fm, 1
  %i.fn = trunc i8 %.fca.1.extract.i.i.i.i.i to i1
  %.pre535 = load ptr, ptr %i.e, align 8, !tbaa !37 ; 4 uses
  br i1 %i.fn, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.noexc165
  %.fca.0.extract.i.i.i.i.i = extractvalue { i64, i8 } %i.fm, 0
  %4 = load ptr, ptr %i.bt, align 8, !tbaa !73, !noalias !74
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.fca.0.extract.i.i.i.i.i
  store ptr %.pre535, ptr %i.fo, align 8, !tbaa !37, !noalias !74
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.noexc165
  %i.fp = load i32, ptr %.pre535, align 8, !tbaa !43
  %i.fq = icmp eq i32 %i.fp, 2
  br i1 %i.fq, label %bb.af, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.af:                                            ; preds = %bb.ae
  %i.fr = getelementptr inbounds nuw i8, ptr %.pre535, i64 16 ; 2 uses
  %i.fs = load ptr, ptr %i.h, align 8, !tbaa !64  ; 6 uses
  %i.ft = load ptr, ptr %i.bu, align 8, !tbaa !85
  %.not.i166 = icmp eq ptr %i.fs, %i.ft
  br i1 %.not.i166, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 16 ; 3 uses
  store ptr %i.fu, ptr %i.fs, align 8, !tbaa !86
  %i.fv = load ptr, ptr %i.fr, align 8, !tbaa !65 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.pre535, i64 24
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !53 ; 8 uses
  %i.fy = icmp ugt i64 %i.fx, 15
  br i1 %i.fy, label %bb.ah, label %._crit_edge.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.fz = icmp slt i64 %i.fx, 0
  br i1 %i.fz, label %.noexc.i.i.i.invoke, label %bb.ai

.noexc.i.i.i.invoke:                              ; preds = %bb.an, %bb.ah
  %i.ga = phi ptr [ @.str.22, %bb.ah ], [ @.str.20, %bb.an ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.ga) #34
          to label %.noexc.i.i.i.cont unwind label %.loopexit.split-lp318

.noexc.i.i.i.cont:                                ; preds = %.noexc.i.i.i.invoke
  unreachable

bb.ai:                                            ; preds = %bb.ah
  %i.gb = add nuw i64 %i.fx, 1                    ; 2 uses
  %i.gc = icmp slt i64 %i.gb, 0
  br i1 %i.gc, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !87

.noexc6.i.i.i:                                    ; preds = %bb.ai
  invoke void @_ZSt17__throw_bad_allocv() #34
          to label %.noexc168 unwind label %.loopexit.split-lp318

.noexc168:                                        ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.ai
  %i.gd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gb) #35
          to label %.noexc169 unwind label %.loopexit317 ; 2 uses

.noexc169:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.gd, ptr %i.fs, align 8, !tbaa !65
  store i64 %i.fx, ptr %i.fu, align 8, !tbaa !66
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc169, %bb.ag
  %i.ge = phi ptr [ %i.gd, %.noexc169 ], [ %i.fu, %bb.ag ] ; 3 uses
  switch i64 %i.fx, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i
  %i.gf = load i8, ptr %i.fv, align 1, !tbaa !66
  store i8 %i.gf, ptr %i.ge, align 1, !tbaa !66
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ge, ptr align 1 %i.fv, i64 %i.fx, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i: ; preds = %bb.ak, %bb.aj, %._crit_edge.i.i.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store i64 %i.fx, ptr %i.gg, align 8, !tbaa !53
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.fx
  store i8 0, ptr %i.gh, align 1, !tbaa !66
  %i.gi = load ptr, ptr %i.h, align 8, !tbaa !64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  store ptr %i.gj, ptr %i.h, align 8, !tbaa !64
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.al:                                            ; preds = %bb.af
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.fs, ptr noundef nonnull align 8 dereferenceable(32) %i.fr)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %.loopexit317

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i, %bb.al
  %i.gk = load ptr, ptr %i.bw, align 8, !tbaa !68 ; 4 uses
  %i.gl = load ptr, ptr %i.bx, align 8, !tbaa !30
  %.not.i171 = icmp eq ptr %i.gk, %i.gl
  br i1 %.not.i171, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  store i32 %.0286437, ptr %i.gk, align 4, !tbaa !3
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  store ptr %i.gm, ptr %i.bw, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.an:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.gn = load ptr, ptr %i.bv, align 8, !tbaa !29 ; 4 uses
  %i.go = ptrtoint ptr %i.gk to i64
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = sub i64 %i.go, %i.gp                    ; 6 uses
  %i.gr = icmp eq i64 %i.gq, 9223372036854775804
  br i1 %i.gr, label %.noexc.i.i.i.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.an
  %i.gs = ashr exact i64 %i.gq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i172 = call i64 @llvm.umax.i64(i64 %i.gs, i64 1)
  %i.gt = add nsw i64 %.sroa.speculated.i.i.i172, %i.gs ; 2 uses
  %i.gu = icmp ult i64 %i.gt, %i.gs
  %i.gv = call i64 @llvm.umin.i64(i64 %i.gt, i64 2305843009213693951)
  %i.gw = select i1 %i.gu, i64 2305843009213693951, i64 %i.gv ; 3 uses
  %.not.i.i.i173 = icmp ne i64 %i.gw, 0
  call void @llvm.assume(i1 %.not.i.i.i173)
  %i.gx = shl nuw nsw i64 %i.gw, 2
  %i.gy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gx) #35
          to label %.noexc176 unwind label %.loopexit317 ; 4 uses

.noexc176:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.gz = getelementptr inbounds i8, ptr %i.gy, i64 %i.gq ; 2 uses
  store i32 %.0286437, ptr %i.gz, align 4, !tbaa !3
  %i.ha = icmp sgt i64 %i.gq, 0
  br i1 %i.ha, label %bb.ao, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.ao:                                            ; preds = %.noexc176
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gy, ptr align 4 %i.gn, i64 %i.gq, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.ao, %.noexc176
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  %.not.i17.i.i174 = icmp eq ptr %i.gn, null
  br i1 %.not.i17.i.i174, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gn, i64 noundef %i.gq) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.ap, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.gy, ptr %i.bv, align 8, !tbaa !29
  store ptr %i.hb, ptr %i.bw, align 8, !tbaa !68
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.gw
  store ptr %i.hc, ptr %i.bx, align 8, !tbaa !30
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.loopexit317:                                     ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.al, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit319 = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

.loopexit.split-lp318:                            ; preds = %.noexc.i.i.i.invoke, %.noexc6.i.i.i
  %lpad.loopexit.split-lp320 = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.aq:                                            ; preds = %bb.ac
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.am, %bb.ae
  %i.he = add nsw i32 %.0286437, 1
  br label %.sink.split

bb.ar:                                            ; preds = %bb.ab
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fk, i64 48
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !72
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ar, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.0286437.sink = phi i32 [ %.0286437, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.hg, %bb.ar ]
  %.1.ph = phi i32 [ %i.he, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.0286437, %bb.ar ]
  %.sink691 = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.hh = getelementptr inbounds nuw i8, ptr %.sink691, i64 48
  store i32 %.0286437.sink, ptr %i.hh, align 8, !tbaa !72
  br label %bb.as

bb.as:                                            ; preds = %.sink.split, %bb.z
  %.1 = phi i32 [ %.0286437, %bb.z ], [ %.1.ph, %.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  %i.hi = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.hi, label %bb.z, label %._crit_edge441, !llvm.loop !88

bb.at:                                            ; preds = %.loopexit317, %.loopexit.split-lp318, %bb.aq
  %.pn137 = phi { ptr, i32 } [ %i.hd, %bb.aq ], [ %lpad.loopexit319, %.loopexit317 ], [ %lpad.loopexit.split-lp320, %.loopexit.split-lp318 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  br label %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit219.thread

_ZNSt6vectorIN3re213PrefilterTree5EntryESaIS2_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN3re213PrefilterTree5EntryES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.w, %bb.v, %bb.u
  %.sroa.28.1.lcssa624641 = phi ptr [ %.sroa.28.1.lcssa624642, %_ZSt8_DestroyIPN3re213PrefilterTree5EntryES2_EvT_S4_RSaIT0_E.exit.i.i ], [ %.sroa.28.1.lcssa624642, %bb.w ], [ %.sroa.28.1.lcssa624642, %bb.v ], [ %.sroa.28.3, %bb.u ] ; 10 uses
  %.sroa.0265.1.lcssa626639 = phi ptr [ %.sroa.0265.1.lcssa626640, %_ZSt8_DestroyIPN3re213PrefilterTree5EntryES2_EvT_S4_RSaIT0_E.exit.i.i ], [ %.sroa.0265.1.lcssa626640, %bb.w ], [ %.sroa.0265.1.lcssa626640, %bb.v ], [ %.sroa.0265.3, %bb.u ] ; 13 uses
  %.lcssa380627637 = phi i64 [ %.lcssa380627638, %_ZSt8_DestroyIPN3re213PrefilterTree5EntryES2_EvT_S4_RSaIT0_E.exit.i.i ], [ %.lcssa380627638, %bb.w ], [ %.lcssa380627638, %bb.v ], [ %i.dl, %bb.u ]
  %.lcssa377628635 = phi i64 [ %.lcssa377628636, %_ZSt8_DestroyIPN3re213PrefilterTree5EntryES2_EvT_S4_RSaIT0_E.exit.i.i ], [ %.lcssa377628636, %bb.w ], [ %.lcssa377628636, %bb.v ], [ %i.dn, %bb.u ] ; 2 uses
  %i.hj = phi i32 [ %i.ek, %_ZSt8_DestroyIPN3re213PrefilterTree5EntryES2_EvT_S4_RSaIT0_E.exit.i.i ], [ %i.ek, %bb.w ], [ %i.ek, %bb.v ], [ %i.br, %bb.u ]
  %i.hk = phi i1 [ %i.el, %_ZSt8_DestroyIPN3re213PrefilterTree5EntryES2_EvT_S4_RSaIT0_E.exit.i.i ], [ %i.el, %bb.w ], [ %i.el, %bb.v ], [ true, %bb.u ]
  %i.hl = icmp slt i32 %i.hj, 1
  br i1 %i.hl, label %.critedge.preheader, label %.lr.ph451.preheader

end_hunk_0
begin_hunk_1_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_:bb.a
.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.035.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.08, %.split ] ; 2 uses
  %i.ap = shl i64 %.035.i, 1                      ; 2 uses
  %i.aq = add i64 %i.ap, 2                        ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aq
  %i.as = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %0, i64 %i.as
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.av = load i32, ptr %i.at, align 4, !tbaa !3
  %i.aw = icmp slt i32 %i.au, %i.av
  %spec.select.i = select i1 %i.aw, i64 %i.as, i64 %i.aq ; 4 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = getelementptr inbounds [4 x i8], ptr %0, i64 %.035.i
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !3
  %i.ba = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !179

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.08, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bb = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bc = load i32, ptr %i.n, align 4, !tbaa !3
  store i32 %i.bc, ptr %i.o, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bd = icmp sgt i64 %.1.i, %.08
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3  ; 2 uses
  %i.bg = icmp slt i32 %i.bf, %i.an
  br i1 %i.bg, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i
  store i32 %i.bf, ptr %i.bh, align 4, !tbaa !3
  %i.bi = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.bi, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, !llvm.loop !180

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.an, ptr %i.bj, align 4, !tbaa !3
  %.not = icmp eq i64 %.08, 0
  %i.bk = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !188

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #18

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2024011612log_internal10LogMessagelsImTnNSt9enable_ifIXntsr4absl16HasAbslStringifyIT_EE5valueEiE4typeELi0EEERS2_RKS5_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2024011612log_internal10LogMessagelsIiTnNSt9enable_ifIXntsr4absl16HasAbslStringifyIT_EE5valueEiE4typeELi0EEERS2_RKS5_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !53   ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !65     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 3 uses
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.k = load i64, ptr %i.h, align 8              ; 2 uses
  %i.l = select i1 %i.i, i64 15, i64 %i.k         ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #34
  unreachable

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0 = phi i64 [ %spec.store.select.i, %bb.f ], [ %i.f, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !87

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #34
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.g
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #35 ; 5 uses
  switch i64 %1, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !66
  store i8 %i.t, ptr %i.s, align 1, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.j, %bb.i
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = load i8, ptr %3, align 1, !tbaa !66
  store i8 %i.x, ptr %i.w, align 1, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond29 = icmp eq i64 %i.d, 1
  br i1 %cond29, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !66
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.ae) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.s, ptr %0, align 8, !tbaa !65
  store i64 %.0, ptr %i.h, align 8, !tbaa !66
  ret void
}

declare void @_ZN4absl12lts_2024011612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re29PrefilterEEENS4_13PrefilterTree13PrefilterHashENS8_14PrefilterEqualESaIS6_EE4findIS6_EENSC_8iteratorERKS6_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !59, !noalias !189 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !57, !noalias !189 ; 2 uses
  %i.d = lshr i64 %2, 7
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = lshr i64 %i.e, 12
  %i.g = xor i64 %i.f, %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !73   ; 2 uses
  %i.j = trunc i64 %2 to i8
  %i.k = and i8 %i.j, 127
  %i.l = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.n = load ptr, ptr %1, align 8                ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %.pn = phi i64 [ %i.g, %bb.a ], [ %i.bs, %bb.i ]
  %.sroa.12.0 = phi i64 [ 0, %bb.a ], [ %i.br, %bb.i ]
  %.sroa.6.0 = and i64 %.pn, %i.c                 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.6.0
  %i.s = load <16 x i8>, ptr %i.r, align 1, !tbaa !66 ; 3 uses
  %i.t = icmp eq <16 x i8> %i.m, %i.s
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not63 = icmp eq i16 %i.u, 0
  br i1 %.not63, label %.thread33, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.loopexit
  %.sroa.016.064 = phi i16 [ %i.bn, %.loopexit ], [ %i.u, %bb.b ] ; 3 uses
  %i.v = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.016.064, i1 true)
  %i.w = zext nneg i16 %i.v to i64
  %i.x = add i64 %.sroa.6.0, %i.w
  %i.y = and i64 %i.x, %i.c                       ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !37  ; 5 uses
  %i.ab = icmp eq ptr %i.aa, %i.n
  br i1 %i.ab, label %.loopexit54.sink.split, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ac = load i32, ptr %i.aa, align 8, !tbaa !43 ; 2 uses
  %i.ad = load i32, ptr %i.n, align 8, !tbaa !43
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ac, %i.ad
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %.loopexit, !prof !192

bb.d:                                             ; preds = %bb.c
  switch i32 %i.ac, label %.loopexit54.sink.split [
    i32 2, label %bb.e
    i32 3, label %bb.g
    i32 4, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !53 ; 3 uses
  %i.ah = load i64, ptr %i.q, align 8, !tbaa !53
  %i.ai = icmp eq i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.f, label %.loopexit, !prof !192

bb.f:                                             ; preds = %bb.e
  %i.aj = icmp eq i64 %i.ag, 0
  br i1 %i.aj, label %.loopexit54.sink.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.ak = load ptr, ptr %i.p, align 8, !tbaa !65
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !65
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.al, ptr %i.ak, i64 %i.ag)
  %i.am = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.am, label %.loopexit54.sink.split, label %.loopexit

bb.g:                                             ; preds = %bb.d, %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !51 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !27 ; 2 uses
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !28 ; 3 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at                    ; 2 uses
  %i.av = ashr exact i64 %i.au, 3
  %i.aw = load ptr, ptr %i.o, align 8, !tbaa !51  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !27
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !28 ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %.not24.i.i.i.i.i.i = icmp eq i64 %i.au, %i.bc
  br i1 %.not24.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.loopexit

.preheader.i.i.i.i.i.i:                           ; preds = %bb.g
  %.not29.i.i.i.i.i.i = icmp eq ptr %i.aq, %i.ar
  br i1 %.not29.i.i.i.i.i.i, label %.loopexit54.sink.split, label %.lr.ph.i.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bd = add nuw i64 %.01928.i.i.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.bd, %i.av
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit54.sink.split, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !193

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.h
  %.01928.i.i.i.i.i.i = phi i64 [ %i.bd, %bb.h ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.01928.i.i.i.i.i.i
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !37
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !72
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.01928.i.i.i.i.i.i
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !37
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !72
  %.not25.i.i.i.i.i.i = icmp eq i32 %i.bh, %i.bl
  br i1 %.not25.i.i.i.i.i.i, label %bb.h, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %bb.g, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i, %bb.c, %bb.e
  %i.bm = add i16 %.sroa.016.064, -1
  %i.bn = and i16 %i.bm, %.sroa.016.064           ; 2 uses
  %.not = icmp eq i16 %i.bn, 0
  br i1 %.not, label %.thread33, label %.lr.ph

.thread33:                                        ; preds = %.loopexit, %bb.b
  %i.bo = tail call <16 x i8> @llvm.x86.ssse3.psign.b.128(<16 x i8> %i.s, <16 x i8> %i.s)
  %i.bp = icmp slt <16 x i8> %i.bo, zeroinitializer
  %i.bq = bitcast <16 x i1> %i.bp to i16
  %.not53 = icmp eq i16 %i.bq, 0
  br i1 %.not53, label %bb.i, label %.loopexit54, !prof !87

bb.i:                                             ; preds = %.thread33
  %i.br = add i64 %.sroa.12.0, 16                 ; 2 uses
  %i.bs = add i64 %i.br, %.sroa.6.0
  br label %bb.b, !llvm.loop !194

.loopexit54.sink.split:                           ; preds = %.preheader.i.i.i.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i, %bb.f, %bb.d, %.lr.ph, %bb.h
  %3 = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.y
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.y ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  br label %.loopexit54

.loopexit54:                                      ; preds = %.thread33, %.loopexit54.sink.split
  %.sroa.0.4.ph = phi ptr [ %4, %.loopexit54.sink.split ], [ null, %.thread33 ]
  %.sroa.3.4.ph = phi ptr [ %3, %.loopexit54.sink.split ], [ undef, %.thread33 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.3.4.ph, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.ssse3.psign.b.128(<16 x i8>, <16 x i8>) #22

; Function Attrs: mustprogress uwtable
define linkonce_odr i64 @_ZN4absl12lts_2024011613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %2, 16
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %2, 1024
  br i1 %i.b, label %bb.c, label %bb.d, !prof !87

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef i64 @_ZN4absl12lts_2024011613hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef %0, ptr noundef %1, i64 noundef %2)
  br label %_ZN4absl12lts_2024011613hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.d:                                             ; preds = %bb.b
  %i.d = tail call noundef i64 @_ZN4absl12lts_2024011613hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef %1, i64 noundef %2)
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.e = icmp samesign ugt i64 %2, 8
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.0.copyload.i.i.i = load i64, ptr %1, align 1  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  %.0.copyload.i4.i.i = load i64, ptr %i.g, align 1
  %i.h = tail call i64 @llvm.fshl.i64(i64 %.0.copyload.i.i.i, i64 %.0.copyload.i.i.i, i64 11)
  %i.i = add i64 %0, -7070675565921424023         ; 2 uses
  %i.j = add i64 %i.h, %i.i
  %i.k = xor i64 %.0.copyload.i4.i.i, %i.i
  %i.l = zext i64 %i.k to i128
  %i.m = zext i64 %i.j to i128
  %i.n = mul nuw i128 %i.l, %i.m                  ; 2 uses
  %i.o = lshr i128 %i.n, 64
  %i.p = xor i128 %i.o, %i.n
  %i.q = trunc i128 %i.p to i64
  br label %_ZN4absl12lts_2024011613hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.g:                                             ; preds = %bb.e
  %i.r = icmp samesign ugt i64 %2, 3
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.0.copyload.i.i32.i = load i32, ptr %1, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4
  %.0.copyload.i7.i.i = load i32, ptr %i.t, align 1
  %i.u = zext i32 %.0.copyload.i7.i.i to i64
  %i.v = shl nuw nsw i64 %2, 3
  %i.w = add nsw i64 %i.v, -32
  %i.x = shl nuw i64 %i.u, %i.w
  %i.y = zext i32 %.0.copyload.i.i32.i to i64
  %i.z = or i64 %i.x, %i.y
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN4absl12lts_2024011613hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load i8, ptr %1, align 1, !tbaa !66
  %i.ab = lshr i64 %2, 1                          ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !66
  %i.ae = add nsw i64 %2, -1                      ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !66
  %i.ah = zext i8 %i.aa to i32
  %i.ai = zext i8 %i.ad to i32
  %i.aj = shl nuw nsw i64 %i.ab, 3
  %i.ak = trunc nuw nsw i64 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ai, %i.ak
  %i.am = or i32 %i.al, %i.ah
  %i.an = zext i8 %i.ag to i32
  %.tr.i.i = trunc nuw nsw i64 %i.ae to i32
  %i.ao = shl nuw nsw i32 %.tr.i.i, 3
  %i.ap = shl nuw nsw i32 %i.an, %i.ao
  %i.aq = or i32 %i.am, %i.ap
  %i.ar = zext nneg i32 %i.aq to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.d
  %.030.i = phi i64 [ %i.d, %bb.d ], [ %i.z, %bb.h ], [ %i.ar, %bb.j ]
  %i.as = add i64 %.030.i, %0
  %i.at = zext i64 %i.as to i128
  %i.au = mul nuw i128 %i.at, 11376068507788127593 ; 2 uses
  %i.av = lshr i128 %i.au, 64
  %i.aw = xor i128 %i.av, %i.au
  %i.ax = trunc i128 %i.aw to i64
  br label %_ZN4absl12lts_2024011613hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

_ZN4absl12lts_2024011613hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit: ; preds = %bb.c, %bb.f, %bb.i, %bb.k
  %.0.i = phi i64 [ %i.c, %bb.c ], [ %i.ax, %bb.k ], [ %i.q, %bb.f ], [ %0, %bb.i ]
  ret i64 %.0.i
}

declare noundef i64 @_ZN4absl12lts_2024011613hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare noundef i64 @_ZN4absl12lts_2024011613hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef, i64 noundef) local_unnamed_addr #10

declare void @_ZN4absl12lts_2024011612log_internal10LogMessage11OstreamViewC1ERNS2_14LogMessageDataE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 1) unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2024011612log_internal10LogMessage11OstreamView6streamEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZN4absl12lts_2024011612log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, i8 } @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re29PrefilterEEENS4_13PrefilterTree13PrefilterHashENS8_14PrefilterEqualESaIS6_EE22find_or_prepare_insertIS6_EESt4pairImbERKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !59     ; 5 uses
  tail call void @llvm.prefetch.p0(ptr %i.a, i32 0, i32 1, i32 1)
  %i.b = load ptr, ptr %1, align 8, !tbaa !37     ; 8 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !52   ; 2 uses
  %i.d = zext i32 %i.c to i64
  %i.e = add i64 %i.d, ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64)
  %i.f = zext i64 %i.e to i128
  %i.g = mul nuw i128 %i.f, 11376068507788127593  ; 2 uses
  %i.h = lshr i128 %i.g, 64
  %i.i = xor i128 %i.h, %i.g
  %i.j = trunc i128 %i.i to i64                   ; 3 uses
  switch i32 %i.c, label %_ZNK3re213PrefilterTree13PrefilterHashclEPKNS_9PrefilterE.exit [
    i32 2, label %bb.b
    i32 3, label %bb.c
    i32 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !65
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !53   ; 2 uses
  %i.o = tail call i64 @_ZN4absl12lts_2024011613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %i.j, ptr noundef %i.l, i64 noundef %i.n)
  %i.p = add i64 %i.o, %i.n
  %i.q = zext i64 %i.p to i128
  %i.r = mul nuw i128 %i.q, 11376068507788127593  ; 2 uses
  %i.s = lshr i128 %i.r, 64
  %i.t = xor i128 %i.s, %i.r
  %i.u = trunc i128 %i.t to i64
  %.pre = load ptr, ptr %0, align 8, !tbaa !59, !noalias !195
  %.pre71 = load ptr, ptr %1, align 8
  br label %_ZNK3re213PrefilterTree13PrefilterHashclEPKNS_9PrefilterE.exit

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !51   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !27   ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !28   ; 5 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  %i.ad = ashr exact i64 %i.ac, 3                 ; 3 uses
  %i.ae = add i64 %i.ad, %i.j
  %i.af = zext i64 %i.ae to i128
  %i.ag = mul nuw i128 %i.af, 11376068507788127593 ; 2 uses
  %i.ah = lshr i128 %i.ag, 64
  %i.ai = xor i128 %i.ah, %i.ag
  %i.aj = trunc i128 %i.ai to i64                 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i.i.i, label %_ZNK3re213PrefilterTree13PrefilterHashclEPKNS_9PrefilterE.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.c
  %i.ak = icmp eq i64 %i.ac, 8
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.ad, -2
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.new
  %.sroa.017.025.i.i.i.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.bf, %.lr.ph.i.i.i.i.i.i ]
  %.024.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.bg, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.024.i.i.i.i.i.i
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !37
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %.0.copyload.i.i32.i.i.i.i.i23.i.i.i.i.i.i = load i32, ptr %i.an, align 1
  %i.ao = zext i32 %.0.copyload.i.i32.i.i.i.i.i23.i.i.i.i.i.i to i64
  %i.ap = add i64 %.sroa.017.025.i.i.i.i.i.i, %i.ao
end_hunk_1
