inline.NumInlined: 41205
inline.NumDeleted: 6297
begin_hunk_0_@_ZN6duckdb11UnionVector18CheckUnionValidityERNS_6VectorEmRKNS_15SelectionVectorE:bb.a
  %i.hi = load i8, ptr %0, align 8, !tbaa !484
  %i.hj = icmp eq i8 %i.hi, 3
  br i1 %i.hj, label %tailrecurse.i, label %tailrecurse._crit_edge.i

tailrecurse.i:                                    ; preds = %bb.aw, %.noexc130
  %.tr5.i = phi ptr [ %i.hm, %.noexc130 ], [ %0, %bb.aw ] ; 2 uses
  invoke void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5.i)
          to label %.noexc129 unwind label %.loopexit191, !inline_history !507

.noexc129:                                        ; preds = %tailrecurse.i
  %i.hk = getelementptr inbounds nuw i8, ptr %.tr5.i, i64 88
  %i.hl = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hk)
          to label %.noexc130 unwind label %.loopexit191, !inline_history !507

.noexc130:                                        ; preds = %.noexc129
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 48 ; 3 uses
  %i.hn = load i8, ptr %i.hm, align 8, !tbaa !484
  %i.ho = icmp eq i8 %i.hn, 3
  br i1 %i.ho, label %tailrecurse.i, label %tailrecurse._crit_edge.i

tailrecurse._crit_edge.i:                         ; preds = %.noexc130, %bb.aw
  %.tr.lcssa.i = phi ptr [ %0, %bb.aw ], [ %i.hm, %.noexc130 ]
  %i.hp = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i, i64 88
  %i.hq = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hp)
          to label %bb.ax unwind label %.loopexit.split-lp, !inline_history !507 ; 2 uses

bb.ax:                                            ; preds = %tailrecurse._crit_edge.i
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #47
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 56 ; 3 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !544
  %i.hu = load ptr, ptr %i.hr, align 8, !tbaa !546
  %i.hv = ptrtoint ptr %i.ht to i64
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = sub i64 %i.hv, %i.hw
  %i.hy = ashr exact i64 %i.hx, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #47
  invoke void @_ZNSt6vectorIN6duckdb19UnifiedVectorFormatESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.hy, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %_ZN6duckdb6vectorINS_19UnifiedVectorFormatELb1ESaIS1_EECI2St6vectorIS1_S2_EEmRKS2_.exit unwind label %bb.ba

_ZN6duckdb6vectorINS_19UnifiedVectorFormatELb1ESaIS1_EECI2St6vectorIS1_S2_EEmRKS2_.exit: ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47
  %i.hz = load ptr, ptr %i.hs, align 8, !tbaa !544
  %i.ia = load ptr, ptr %i.hr, align 8, !tbaa !546
  %.not207 = icmp eq ptr %i.hz, %i.ia
  br i1 %.not207, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.be, %_ZN6duckdb6vectorINS_19UnifiedVectorFormatELb1ESaIS1_EECI2St6vectorIS1_S2_EEmRKS2_.exit
  %i.ib = invoke noundef nonnull align 8 dereferenceable(73) ptr @_ZN6duckdb6vectorINS_19UnifiedVectorFormatELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef 0)
          to label %.preheader188 unwind label %bb.bg ; 4 uses

.preheader188:                                    ; preds = %._crit_edge
  %.not208 = icmp eq i64 %1, 0
  br i1 %.not208, label %.loopexit187, label %.lr.ph203

.lr.ph203:                                        ; preds = %.preheader188
  %i.ic = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  br label %bb.bh

bb.ay:                                            ; preds = %bb.au
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.az:                                            ; preds = %bb.av
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

.loopexit191:                                     ; preds = %tailrecurse.i, %.noexc129
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

.loopexit.split-lp:                               ; preds = %tailrecurse._crit_edge.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ba:                                            ; preds = %bb.ax
  %i.ih = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47
  br label %bb.ch

.lr.ph:                                           ; preds = %_ZN6duckdb6vectorINS_19UnifiedVectorFormatELb1ESaIS1_EECI2St6vectorIS1_S2_EEmRKS2_.exit, %bb.be
  %.095197 = phi i64 [ %i.il, %bb.be ], [ 0, %_ZN6duckdb6vectorINS_19UnifiedVectorFormatELb1ESaIS1_EECI2St6vectorIS1_S2_EEmRKS2_.exit ] ; 3 uses
  %i.ii = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hr, i64 noundef %.095197)
          to label %bb.bb unwind label %bb.bf

bb.bb:                                            ; preds = %.lr.ph
  %i.ij = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ii)
          to label %bb.bc unwind label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.ik = invoke noundef nonnull align 8 dereferenceable(73) ptr @_ZN6duckdb6vectorINS_19UnifiedVectorFormatELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %.095197)
          to label %bb.bd unwind label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.ij, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(73) %i.ik)
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.il = add nuw i64 %.095197, 1                 ; 2 uses
  %i.im = load ptr, ptr %i.hs, align 8, !tbaa !544
  %i.in = load ptr, ptr %i.hr, align 8, !tbaa !546
  %i.io = ptrtoint ptr %i.im to i64
  %i.ip = ptrtoint ptr %i.in to i64
  %i.iq = sub i64 %i.io, %i.ip
  %i.ir = ashr exact i64 %i.iq, 3
  %i.is = icmp ult i64 %i.il, %i.ir
  br i1 %i.is, label %.lr.ph, label %._crit_edge, !llvm.loop !2699

bb.bf:                                            ; preds = %bb.bd, %bb.bc, %bb.bb, %.lr.ph
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.bg:                                            ; preds = %._crit_edge
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.bh:                                            ; preds = %.lr.ph203, %.loopexit
  %.088201 = phi i64 [ 0, %.lr.ph203 ], [ %i.lb, %.loopexit ] ; 7 uses
  %i.iv = load ptr, ptr %.059, align 8, !tbaa !390 ; 2 uses
  %.not.i133 = icmp eq ptr %i.iv, null
  br i1 %.not.i133, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %.088201
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !3
  %i.iy = zext i32 %i.ix to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.bi, %bb.bh
  %i.iz = phi i64 [ %i.iy, %bb.bi ], [ %.088201, %bb.bh ] ; 2 uses
  %i.ja = load ptr, ptr %i.ic, align 8, !tbaa !520 ; 2 uses
  %.not.i134 = icmp eq ptr %i.ja, null
  br i1 %.not.i134, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.jb = lshr i64 %i.iz, 6
  %i.jc = and i64 %i.iz, 63
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.jb
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !108
  %i.jf = shl nuw i64 1, %i.jc
  %i.jg = and i64 %i.je, %i.jf
  %.not184 = icmp eq i64 %i.jg, 0
  br i1 %.not184, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.jh = load ptr, ptr %i.ib, align 8, !tbaa !773
  %i.ji = load ptr, ptr %2, align 8, !tbaa !390   ; 2 uses
  %.not.i135 = icmp eq ptr %i.ji, null
  br i1 %.not.i135, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit136, label %bb.bj

bb.bj:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %.088201
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !3
  %i.jl = zext i32 %i.jk to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit136

_ZNK6duckdb15SelectionVector9get_indexEm.exit136: ; preds = %bb.bj, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.jm = phi i64 [ %i.jl, %bb.bj ], [ %.088201, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ] ; 2 uses
  %i.jn = load ptr, ptr %i.jh, align 8, !tbaa !390 ; 2 uses
  %.not.i137 = icmp eq ptr %i.jn, null
  br i1 %.not.i137, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit138, label %bb.bk

bb.bk:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit136
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.jm
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !3
  %i.jq = zext i32 %i.jp to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit138

_ZNK6duckdb15SelectionVector9get_indexEm.exit138: ; preds = %bb.bk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit136
  %i.jr = phi i64 [ %i.jq, %bb.bk ], [ %i.jm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit136 ] ; 3 uses
  %i.js = load ptr, ptr %i.id, align 8, !tbaa !520 ; 2 uses
  %.not.i139 = icmp eq ptr %i.js, null
  br i1 %.not.i139, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit141.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit141

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit141: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit138
  %i.jt = lshr i64 %i.jr, 6
  %i.ju = and i64 %i.jr, 63
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %i.jt
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !108
  %i.jx = shl nuw i64 1, %i.ju
  %i.jy = and i64 %i.jw, %i.jx
  %.not185 = icmp eq i64 %i.jy, 0
  br i1 %.not185, label %.loopexit187, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit141.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit141.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit138, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit141
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIhEEvv(ptr noundef nonnull align 8 dereferenceable(73) %i.ib)
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit141.thread
  %i.jz = load ptr, ptr %i.ie, align 8, !tbaa !774
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.jr
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !153
  %.fr = freeze i8 %i.kb                          ; 2 uses
  %i.kc = zext i8 %.fr to i64
  %.not = icmp ugt i64 %i.hf, %i.kc
  br i1 %.not, label %.preheader, label %.loopexit187

bb.bm:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit141.thread
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

.preheader:                                       ; preds = %bb.bl, %select.unfold
  %.060199 = phi i64 [ %i.ke, %select.unfold ], [ 0, %bb.bl ] ; 2 uses
  %.061198 = phi i1 [ %.162, %select.unfold ], [ false, %bb.bl ] ; 2 uses
  %i.ke = add nuw i64 %.060199, 1                 ; 3 uses
  %i.kf = invoke noundef nonnull align 8 dereferenceable(73) ptr @_ZN6duckdb6vectorINS_19UnifiedVectorFormatELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.ke)
          to label %bb.bn unwind label %bb.bq     ; 2 uses

bb.bn:                                            ; preds = %.preheader
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !773
  %i.kh = load ptr, ptr %2, align 8, !tbaa !390   ; 2 uses
  %.not.i143 = icmp eq ptr %i.kh, null
  br i1 %.not.i143, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit144, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %.088201
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !3
  %i.kk = zext i32 %i.kj to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit144

_ZNK6duckdb15SelectionVector9get_indexEm.exit144: ; preds = %bb.bo, %bb.bn
  %i.kl = phi i64 [ %i.kk, %bb.bo ], [ %.088201, %bb.bn ] ; 2 uses
  %i.km = load ptr, ptr %i.kg, align 8, !tbaa !390 ; 2 uses
  %.not.i145 = icmp eq ptr %i.km, null
  br i1 %.not.i145, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit146, label %bb.bp

bb.bp:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit144
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %i.kl
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !3
  %i.kp = zext i32 %i.ko to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit146

_ZNK6duckdb15SelectionVector9get_indexEm.exit146: ; preds = %bb.bp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit144
  %i.kq = phi i64 [ %i.kp, %bb.bp ], [ %i.kl, %_ZNK6duckdb15SelectionVector9get_indexEm.exit144 ] ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !520 ; 2 uses
  %.not.i147 = icmp eq ptr %i.ks, null
  br i1 %.not.i147, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit149.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit149

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit149: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit146
  %i.kt = lshr i64 %i.kq, 6
  %i.ku = and i64 %i.kq, 63
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.kt
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !108
  %i.kx = shl nuw i64 1, %i.ku
  %i.ky = and i64 %i.kw, %i.kx
  %.not186 = icmp eq i64 %i.ky, 0
  br i1 %.not186, label %select.unfold, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit149.thread

bb.bq:                                            ; preds = %.preheader
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit149.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit146, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit149
  br i1 %.061198, label %.loopexit187, label %bb.br

bb.br:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit149.thread
  %i.la = trunc i64 %.060199 to i8
  %.not106 = icmp eq i8 %.fr, %i.la
  br i1 %.not106, label %select.unfold, label %.loopexit187

select.unfold:                                    ; preds = %bb.br, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit149
  %.162 = phi i1 [ %.061198, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit149 ], [ true, %bb.br ]
  %exitcond.not = icmp eq i64 %i.ke, %i.hf
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !2700

.loopexit:                                        ; preds = %select.unfold, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.lb = add nuw i64 %.088201, 1                 ; 2 uses
  %exitcond214.not = icmp eq i64 %i.lb, %1
  br i1 %exitcond214.not, label %.loopexit187, label %bb.bh, !llvm.loop !2701

.loopexit187:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit141, %bb.bl, %.loopexit, %bb.br, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit149.thread, %.preheader188
  %i.lc = phi i8 [ 0, %.preheader188 ], [ 3, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit149.thread ], [ 4, %bb.br ], [ 5, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit141 ], [ 0, %.loopexit ], [ 1, %bb.bl ]
  %i.ld = load ptr, ptr %7, align 8, !tbaa !2702
  %i.le = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !2703
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6duckdb19UnifiedVectorFormatEEEvT_S5_(ptr noundef %i.ld, ptr noundef %i.lf)
          to label %_ZSt8_DestroyIPN6duckdb19UnifiedVectorFormatES1_EvT_S3_RSaIT0_E.exit.i unwind label %bb.bt

_ZSt8_DestroyIPN6duckdb19UnifiedVectorFormatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %.loopexit187
  %i.lg = load ptr, ptr %7, align 8, !tbaa !2702  ; 2 uses
  %.not.i.i.i150 = icmp eq ptr %i.lg, null
  br i1 %.not.i.i.i150, label %_ZNSt6vectorIN6duckdb19UnifiedVectorFormatESaIS1_EED2Ev.exit, label %bb.bs

bb.bs:                                            ; preds = %_ZSt8_DestroyIPN6duckdb19UnifiedVectorFormatES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.lg) #48
  br label %_ZNSt6vectorIN6duckdb19UnifiedVectorFormatESaIS1_EED2Ev.exit

bb.bt:                                            ; preds = %.loopexit187
  %i.lh = landingpad { ptr, i32 }
          catch ptr null
  %i.li = extractvalue { ptr, i32 } %i.lh, 0
  call void @__clang_call_terminate(ptr %i.li) #51
  unreachable

_ZNSt6vectorIN6duckdb19UnifiedVectorFormatESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb19UnifiedVectorFormatES1_EvT_S3_RSaIT0_E.exit.i, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  %i.lj = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !409 ; 8 uses
  %.not.i.i.i.i.i151 = icmp eq ptr %i.lk, null
  br i1 %.not.i.i.i.i.i151, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIN6duckdb19UnifiedVectorFormatESaIS1_EED2Ev.exit
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8 ; 4 uses
  %i.lm = load atomic i64, ptr %i.ll acquire, align 8 ; 2 uses
  %i.ln = icmp eq i64 %i.lm, 4294967297
  %i.lo = trunc i64 %i.lm to i32                  ; 2 uses
  br i1 %i.ln, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  store i32 0, ptr %i.ll, align 8, !tbaa !410
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lk, i64 12
  store i32 0, ptr %i.lp, align 4, !tbaa !412
  %i.lq = load ptr, ptr %i.lk, align 8, !tbaa !413
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %i.ls = load ptr, ptr %i.lr, align 8
  call void %i.ls(ptr noundef nonnull align 8 dereferenceable(16) %i.lk) #47, !inline_history !849
  %i.lt = load ptr, ptr %i.lk, align 8, !tbaa !413
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 24
  %i.lv = load ptr, ptr %i.lu, align 8
  call void %i.lv(ptr noundef nonnull align 8 dereferenceable(16) %i.lk) #47, !inline_history !849
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.bw:                                            ; preds = %bb.bu
  %i.lw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i.i152 = icmp eq i8 %i.lw, 0
  br i1 %.not.i.i.i.i.i.i152, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lx = add nsw i32 %i.lo, -1
  store i32 %i.lx, ptr %i.ll, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i153

bb.by:                                            ; preds = %bb.bw
  %i.ly = atomicrmw volatile add ptr %i.ll, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i153

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i153: ; preds = %bb.by, %bb.bx
  %.0.i.i.i.i.i.i.i154 = phi i32 [ %i.lo, %bb.bx ], [ %i.ly, %bb.by ]
  %i.lz = icmp eq i32 %.0.i.i.i.i.i.i.i154, 1
  br i1 %i.lz, label %bb.bz, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !88

bb.bz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i153
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lk) #47
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.bz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i153, %bb.bv, %_ZNSt6vectorIN6duckdb19UnifiedVectorFormatESaIS1_EED2Ev.exit
  %i.ma = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !409 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.mb, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.ca

bb.ca:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8 ; 4 uses
  %i.md = load atomic i64, ptr %i.mc acquire, align 8 ; 2 uses
  %i.me = icmp eq i64 %i.md, 4294967297
  %i.mf = trunc i64 %i.md to i32                  ; 2 uses
  br i1 %i.me, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  store i32 0, ptr %i.mc, align 8, !tbaa !410
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mb, i64 12
  store i32 0, ptr %i.mg, align 4, !tbaa !412
  %i.mh = load ptr, ptr %i.mb, align 8, !tbaa !413
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  %i.mj = load ptr, ptr %i.mi, align 8
  call void %i.mj(ptr noundef nonnull align 8 dereferenceable(16) %i.mb) #47, !inline_history !850
  %i.mk = load ptr, ptr %i.mb, align 8, !tbaa !413
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 24
  %i.mm = load ptr, ptr %i.ml, align 8
  call void %i.mm(ptr noundef nonnull align 8 dereferenceable(16) %i.mb) #47, !inline_history !850
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.cc:                                            ; preds = %bb.ca
  %i.mn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.mn, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mo = add nsw i32 %i.mf, -1
  store i32 %i.mo, ptr %i.mc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.ce:                                            ; preds = %bb.cc
  %i.mp = atomicrmw volatile add ptr %i.mc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.ce, %bb.cd
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.mf, %bb.cd ], [ %i.mp, %bb.ce ]
  %i.mq = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.mq, label %bb.cf, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !88

bb.cf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mb) #47
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.cb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  br label %bb.ck

bb.cg:                                            ; preds = %bb.bg, %bb.bq, %bb.bm, %bb.bf
  %.pn107 = phi { ptr, i32 } [ %i.it, %bb.bf ], [ %i.iu, %bb.bg ], [ %i.kz, %bb.bq ], [ %i.kd, %bb.bm ]
  call void @_ZNSt6vectorIN6duckdb19UnifiedVectorFormatESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #47
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.ba
  %.pn107.pn = phi { ptr, i32 } [ %.pn107, %bb.cg ], [ %i.ih, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  br label %bb.ci

bb.ci:                                            ; preds = %.loopexit191, %.loopexit.split-lp, %bb.ch, %bb.az
  %.pn107.pn.pn.pn = phi { ptr, i32 } [ %i.ig, %bb.az ], [ %.pn107.pn, %bb.ch ], [ %lpad.loopexit, %.loopexit191 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %6) #47
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ay
  %.pn107.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn107.pn.pn.pn, %bb.ci ], [ %i.if, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  br label %bb.cr

bb.ck:                                            ; preds = %bb.as, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %.9 = phi i8 [ %i.lc, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit ], [ 2, %bb.as ]
  %i.mr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !409 ; 8 uses
  %.not.i.i.i.i155 = icmp eq ptr %i.ms, null
  br i1 %.not.i.i.i.i155, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8 ; 4 uses
  %i.mu = load atomic i64, ptr %i.mt acquire, align 8 ; 2 uses
  %i.mv = icmp eq i64 %i.mu, 4294967297
  %i.mw = trunc i64 %i.mu to i32                  ; 2 uses
  br i1 %i.mv, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  store i32 0, ptr %i.mt, align 8, !tbaa !410
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ms, i64 12
  store i32 0, ptr %i.mx, align 4, !tbaa !412
  %i.my = load ptr, ptr %i.ms, align 8, !tbaa !413
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  %i.na = load ptr, ptr %i.mz, align 8
  call void %i.na(ptr noundef nonnull align 8 dereferenceable(16) %i.ms) #47, !inline_history !763
  %i.nb = load ptr, ptr %i.ms, align 8, !tbaa !413
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 24
  %i.nd = load ptr, ptr %i.nc, align 8
  call void %i.nd(ptr noundef nonnull align 8 dereferenceable(16) %i.ms) #47, !inline_history !763
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.cn:                                            ; preds = %bb.cl
  %i.ne = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i156 = icmp eq i8 %i.ne, 0
  br i1 %.not.i.i.i.i.i156, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.nf = add nsw i32 %i.mw, -1
  store i32 %i.nf, ptr %i.mt, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.cp:                                            ; preds = %bb.cn
end_hunk_0
begin_hunk_1_@_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre9) #48
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !89   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.y) #48
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7

_ZN6duckdb20ExceptionFormatValueD2Ev.exit7:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  resume { ptr, i32 } %i.w
}

declare void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES0_RKT_(ptr dead_on_unwind writable sret(%"struct.duckdb::ExceptionFormatValue") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #33

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #20

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #20

declare void @_ZN6duckdb20ColumnDataCollectionC1ERS0_(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #5

declare void @_ZN6duckdb20ColumnDataCollectionC1ERNS_13BufferManagerENS_6vectorINS_11LogicalTypeELb1ESaIS4_EEENS_28ColumnDataCollectionLifetimeE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !62     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ugt i64 %i.g, 384307168202282325
  br i1 %i.h, label %.noexc.i, label %_ZNSt15__new_allocatorIN6duckdb11LogicalTypeEE8allocateEmPKv.exit.i.i.i, !prof !88

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #50
  unreachable

_ZNSt15__new_allocatorIN6duckdb11LogicalTypeEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #49
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN6duckdb11LogicalTypeEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.j = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorIN6duckdb11LogicalTypeEE8allocateEmPKv.exit.i.i.i ] ; 7 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !63
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !12
  %i.n = load ptr, ptr %1, align 8, !tbaa !10     ; 2 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6duckdb11LogicalTypeESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.q, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.j, %bb.c ] ; 4 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6duckdb11LogicalTypeESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4100

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  %i.t = tail call ptr @__cxa_begin_catch(ptr %i.s) #47 ; 0 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.j, %.014.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i ], [ %i.j, %bb.d ] ; 2 uses
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i.i.i.i) #47
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, %.014.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !64

_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  invoke void @__cxa_rethrow() #50
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #51
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6duckdb11LogicalTypeESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.j, %bb.c ], [ %i.q, %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.k, align 8, !tbaa !63
  ret void

.body:                                            ; preds = %bb.e
  %i.y = load ptr, ptr %0, align 8, !tbaa !62     ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  tail call void @_ZdlPv(ptr noundef nonnull %i.y) #48
  br label %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.v
}

declare void @_ZN6duckdb20ColumnDataCollectionC1ERNS_9AllocatorENS_6vectorINS_11LogicalTypeELb1ESaIS4_EEE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_20ColumnDataCollectionESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE17_M_emplace_uniqueIJS0_ImS7_EEEES0_ISt17_Rb_tree_iteratorIS8_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #49 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i64, ptr %1, align 8, !tbaa !108    ; 4 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !142
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !72   ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !72
  store ptr null, ptr %i.e, align 8, !tbaa !72
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02022.i = load ptr, ptr %i.g, align 8, !tbaa !66 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  %i.i = inttoptr i64 %i.f to ptr                 ; 2 uses
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.02024.i = phi ptr [ %.020.i, %.lr.ph.i ], [ %.02022.i, %bb.a ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !108  ; 2 uses
  %i.l = icmp ult i64 %i.c, %i.k                  ; 2 uses
  %.in.v.i = select i1 %i.l, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !66 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !4101

._crit_edge.i:                                    ; preds = %.lr.ph.i
  br i1 %i.l, label %._crit_edge.thread.i, label %bb.c

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.h, %bb.a ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54
  %i.o = icmp eq ptr %.019.lcssa29.i, %i.n
  br i1 %i.o, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread.i
  %i.p = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #52 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !108
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i
  %i.q = phi i64 [ %.pre, %bb.b ], [ %i.k, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.b ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.p, %bb.b ], [ %.02024.i, %._crit_edge.i ]
  %i.r = icmp ult i64 %i.q, %i.c
  %cond.fr = freeze i1 %i.r
  br i1 %cond.fr, label %select.unfold, label %bb.e

select.unfold:                                    ; preds = %bb.c, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %.019.lcssa28.i, %bb.c ] ; 3 uses
  %i.s = icmp eq ptr %.sroa.4.0.i.ph, %i.h
  br i1 %i.s, label %.thread18, label %bb.d

bb.d:                                             ; preds = %select.unfold
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.u = load i64, ptr %i.t, align 8, !tbaa !108
  %i.v = icmp ult i64 %i.c, %i.u
  br label %.thread18

.thread18:                                        ; preds = %select.unfold, %bb.d
  %i.w = phi i1 [ %i.v, %bb.d ], [ true, %select.unfold ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.w, ptr noundef nonnull %i.a, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.h) #47
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !56
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.x, align 8, !tbaa !56
  br label %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_20ColumnDataCollectionESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %.not.i.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_20ColumnDataCollectionESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i, label %_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.e
  tail call void @_ZN6duckdb20ColumnDataCollectionD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.i) #47
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #48
  br label %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_20ColumnDataCollectionESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i

_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_20ColumnDataCollectionESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i.i.i.i.i, %bb.e
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #48
  br label %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_20ColumnDataCollectionESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_20ColumnDataCollectionESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread18, %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_20ColumnDataCollectionESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i
  %.sroa.3.023 = phi i8 [ 1, %.thread18 ], [ 0, %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_20ColumnDataCollectionESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i ]
  %.sroa.010.022 = phi ptr [ %i.a, %.thread18 ], [ %.sroa.05.0.i, %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_20ColumnDataCollectionESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.010.022, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.023, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_20ColumnDataCollectionESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !4102 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !72   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_20ColumnDataCollectionESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i.i.i.i: ; preds = %bb.b
  tail call void @_ZN6duckdb20ColumnDataCollectionD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.d) #47
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #48
  br label %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_20ColumnDataCollectionESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_20ColumnDataCollectionESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #48
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_20ColumnDataCollectionESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #41

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_20ColumnDataCollectionELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !106
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #47 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.438, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #50
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !89     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #47
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #41

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_20ColumnDataCollectionESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<unsigned long, std::pair<const unsigned long, duckdb::unique_ptr<duckdb::ColumnDataCollection>>, std::_Select1st<std::pair<const unsigned long, duckdb::unique_ptr<duckdb::ColumnDataCollection>>>, std::less<unsigned long>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  store ptr %0, ptr %5, align 8, !tbaa !4106
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #49 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = load i64, ptr %3, align 8, !tbaa !110
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8, !tbaa !108
  store i64 %i.f, ptr %i.c, align 8, !tbaa !142
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !139
  store ptr %i.b, ptr %i.a, align 8, !tbaa !4102
  %i.h = invoke { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_20ColumnDataCollectionESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.h, 1        ; 4 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.l
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.n = load i64, ptr %i.c, align 8, !tbaa !108
  %i.o = load i64, ptr %i.m, align 8, !tbaa !108
  %i.p = icmp ult i64 %i.n, %i.o
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.q = phi i1 [ %i.p, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.q, ptr noundef nonnull %i.b, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.k) #47
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !56
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.r, align 8, !tbaa !56
  br label %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_20ColumnDataCollectionESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_20ColumnDataCollectionESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  resume { ptr, i32 } %i.u

end_hunk_1
