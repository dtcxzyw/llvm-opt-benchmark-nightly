inline.NumInlined: 4599
inline.NumDeleted: 1879
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN4bzla10preprocess4pass24PassVariableSubstitution23compute_non_overlappingERNS_11NodeManagerEmRSt13unordered_mapISt4pairImmESt6vectorINS_4NodeESaIS9_EESt4hashIS7_ESt8equal_toIS7_ESaIS6_IKS7_SB_EEE:bb.a
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit79.i

bb.bp:                                            ; preds = %bb.bh
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bq:                                            ; preds = %bb.bk, %bb.bj
  %i.ix = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #23
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.pn.i = phi { ptr, i32 } [ %i.ix, %bb.bq ], [ %i.iw, %bb.bp ] ; 2 uses
  %i.iy = load ptr, ptr %12, align 8, !tbaa !38   ; 3 uses
  %.not.i.i.i78.i = icmp eq ptr %i.iy, null
  br i1 %.not.i.i.i78.i, label %_ZNSt6vectorImSaImEED2Ev.exit79.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.iz = load ptr, ptr %i.do, align 8, !tbaa !41
  %i.ja = ptrtoint ptr %i.iz to i64
  %i.jb = ptrtoint ptr %i.iy to i64
  %i.jc = sub i64 %i.ja, %i.jb
  call void @_ZdlPvm(ptr noundef nonnull %i.iy, i64 noundef %i.jc) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit79.i

_ZNSt6vectorImSaImEED2Ev.exit79.i:                ; preds = %bb.bs, %bb.br, %bb.bo
  %.pn.pn.i = phi { ptr, i32 } [ %i.iv, %bb.bo ], [ %.pn.i, %bb.br ], [ %.pn.i, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #23
  br label %.body57.i

.body57.i:                                        ; preds = %_ZNSt6vectorImSaImEED2Ev.exit79.i, %bb.bg, %.body96.i, %.body96.thread.i
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %_ZNSt6vectorImSaImEED2Ev.exit79.i ], [ %i.hu, %.body96.i ], [ %i.hu, %bb.bg ], [ %i.hx, %.body96.thread.i ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #23
  br label %.loopexit12.i

.loopexit12.i:                                    ; preds = %.body57.i, %bb.bn
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.iu, %bb.bn ], [ %.pn.pn.pn.i, %.body57.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %.body

bb.bt:                                            ; preds = %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit77.i, %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit.i
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.08.039.i, i64 8 ; 2 uses
  %.not.i111 = icmp eq ptr %i.jd, %.val85
  br i1 %.not.i111, label %_ZN4bzla10preprocess4pass12_GLOBAL__N_113extract_termsERNS_11NodeManagerEmmmRKSt6vectorINS_4NodeESaIS6_EERS8_.exit, label %.lr.ph.i

bb.bu:                                            ; preds = %bb.ai, %.lr.ph.i
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN4bzla10preprocess4pass12_GLOBAL__N_113extract_termsERNS_11NodeManagerEmmmRKSt6vectorINS_4NodeESaIS6_EERS8_.exit: ; preds = %bb.bt, %bb.af, %bb.ah, %.lr.ph316, %bb.ad
  %.168 = phi i1 [ %.067314, %.lr.ph316 ], [ %.067314, %bb.ad ], [ true, %bb.af ], [ true, %bb.ah ], [ true, %bb.bt ] ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.0162.0313, i64 40 ; 2 uses
  %.not211 = icmp eq ptr %i.jf, %i.ew
  br i1 %.not211, label %._crit_edge317, label %.lr.ph316

bb.bv:                                            ; preds = %._crit_edge317
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  store i64 %i.eu, ptr %17, align 8, !tbaa !356
  store i64 %i.er, ptr %i.dw, align 8, !tbaa !361
  store ptr %.pre348, ptr %i.dx, align 8, !tbaa !33
  store ptr %.pre350, ptr %i.dy, align 8, !tbaa !37
  %i.jg = load ptr, ptr %i.dr, align 8, !tbaa !36
  store ptr %i.jg, ptr %i.dz, align 8, !tbaa !36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %i.jh = load ptr, ptr %i.ea, align 8, !tbaa !242 ; 5 uses
  %i.ji = load ptr, ptr %i.eb, align 8, !tbaa !244
  %.not.i.i123 = icmp eq ptr %i.jh, %i.ji
  br i1 %.not.i.i123, label %bb.bw, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i132.thread

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i132.thread: ; preds = %bb.bv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.jh, ptr noundef nonnull align 8 dereferenceable(40) %17, i64 16, i1 false)
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jk = load <2 x ptr>, ptr %i.dx, align 8, !tbaa !94
  store <2 x ptr> %i.jk, ptr %i.jj, align 8, !tbaa !94
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jh, i64 32
  %i.jm = load ptr, ptr %i.dz, align 8, !tbaa !36
  store ptr %i.jm, ptr %i.jl, align 8, !tbaa !36
  %i.jn = load ptr, ptr %i.ea, align 8, !tbaa !242
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 40
  store ptr %i.jo, ptr %i.ea, align 8, !tbaa !242
  br label %_ZN4bzla10preprocess4pass24PassVariableSubstitution5RangeD2Ev.exit135

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZNSt6vectorIN4bzla10preprocess4pass24PassVariableSubstitution5RangeESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.jh, ptr noundef nonnull align 8 dereferenceable(40) %17)
          to label %_ZNSt6vectorIN4bzla10preprocess4pass24PassVariableSubstitution5RangeESaIS4_EE9push_backEOS4_.exit125 unwind label %bb.by

_ZNSt6vectorIN4bzla10preprocess4pass24PassVariableSubstitution5RangeESaIS4_EE9push_backEOS4_.exit125: ; preds = %bb.bw
  %.pre345 = load ptr, ptr %i.dx, align 8, !tbaa !33 ; 3 uses
  %.pre346 = load ptr, ptr %i.dy, align 8, !tbaa !37 ; 2 uses
  %.not4.i.i.i.i126 = icmp eq ptr %.pre345, %.pre346
  br i1 %.not4.i.i.i.i126, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i132, label %.lr.ph.i.i.i.i127

.lr.ph.i.i.i.i127:                                ; preds = %_ZNSt6vectorIN4bzla10preprocess4pass24PassVariableSubstitution5RangeESaIS4_EE9push_backEOS4_.exit125, %.lr.ph.i.i.i.i127
  %.05.i.i.i.i128 = phi ptr [ %i.jp, %.lr.ph.i.i.i.i127 ], [ %.pre345, %_ZNSt6vectorIN4bzla10preprocess4pass24PassVariableSubstitution5RangeESaIS4_EE9push_backEOS4_.exit125 ] ; 2 uses
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i128) #23
  %i.jp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i128, i64 8 ; 2 uses
  %.not.i.i.i.i129 = icmp eq ptr %i.jp, %.pre346
  br i1 %.not.i.i.i.i129, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i130, label %.lr.ph.i.i.i.i127, !llvm.loop !42

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i130: ; preds = %.lr.ph.i.i.i.i127
  %.pr.i.i131 = load ptr, ptr %i.dx, align 8, !tbaa !33
  br label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i132

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i132: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i130, %_ZNSt6vectorIN4bzla10preprocess4pass24PassVariableSubstitution5RangeESaIS4_EE9push_backEOS4_.exit125
  %i.jq = phi ptr [ %.pr.i.i131, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i130 ], [ %.pre345, %_ZNSt6vectorIN4bzla10preprocess4pass24PassVariableSubstitution5RangeESaIS4_EE9push_backEOS4_.exit125 ] ; 3 uses
  %.not.i.i1.i.i133 = icmp eq ptr %i.jq, null
  br i1 %.not.i.i1.i.i133, label %_ZN4bzla10preprocess4pass24PassVariableSubstitution5RangeD2Ev.exit135, label %bb.bx

bb.bx:                                            ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i132
  %i.jr = load ptr, ptr %i.dz, align 8, !tbaa !36
  %i.js = ptrtoint ptr %i.jr to i64
  %i.jt = ptrtoint ptr %i.jq to i64
  %i.ju = sub i64 %i.js, %i.jt
  call void @_ZdlPvm(ptr noundef nonnull %i.jq, i64 noundef %i.ju) #27
  br label %_ZN4bzla10preprocess4pass24PassVariableSubstitution5RangeD2Ev.exit135

_ZN4bzla10preprocess4pass24PassVariableSubstitution5RangeD2Ev.exit135: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i132.thread, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i132, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %.pre347 = load ptr, ptr %16, align 8, !tbaa !33
  %.pre349 = load ptr, ptr %i.dq, align 8, !tbaa !37
  br label %.critedge325

bb.by:                                            ; preds = %bb.bw
  %i.jv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla10preprocess4pass24PassVariableSubstitution5RangeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %.body

.critedge325:                                     ; preds = %_ZN4bzla10preprocess4pass24PassVariableSubstitution5RangeD2Ev.exit135, %._crit_edge317
  %i.jw = phi ptr [ %.pre350, %._crit_edge317 ], [ %.pre349, %_ZN4bzla10preprocess4pass24PassVariableSubstitution5RangeD2Ev.exit135 ] ; 2 uses
  %i.jx = phi ptr [ %.pre348, %._crit_edge317 ], [ %.pre347, %_ZN4bzla10preprocess4pass24PassVariableSubstitution5RangeD2Ev.exit135 ] ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.jx, %i.jw
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i136

.lr.ph.i.i.i136:                                  ; preds = %.critedge325, %.lr.ph.i.i.i136
  %.05.i.i.i = phi ptr [ %i.jy, %.lr.ph.i.i.i136 ], [ %i.jx, %.critedge325 ] ; 2 uses
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i) #23
  %i.jy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i137 = icmp eq ptr %i.jy, %i.jw
  br i1 %.not.i.i.i137, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i136, !llvm.loop !42

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i136
  %.pr.i138 = load ptr, ptr %16, align 8, !tbaa !33
  br label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %.critedge325
  %i.jz = phi ptr [ %.pr.i138, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.jx, %.critedge325 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.jz, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit, label %bb.bz

bb.bz:                                            ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i
  %i.ka = load ptr, ptr %i.dr, align 8, !tbaa !36
  %i.kb = ptrtoint ptr %i.ka to i64
  %i.kc = ptrtoint ptr %i.jz to i64
  %i.kd = sub i64 %i.kb, %i.kc
  call void @_ZdlPvm(ptr noundef nonnull %i.jz, i64 noundef %i.kd) #27
  br label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit

_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit:       ; preds = %bb.ac, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.ke = add nuw i64 %i.ep, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ke, %i.dj
  br i1 %exitcond.not, label %._crit_edge321, label %bb.ac, !llvm.loop !366

.body:                                            ; preds = %bb.ag, %.loopexit.i, %.loopexit12.i, %bb.bu, %bb.by
  %.pn77.pn = phi { ptr, i32 } [ %i.jv, %bb.by ], [ %i.fo, %bb.ag ], [ %i.je, %bb.bu ], [ %.pn43.pn.pn.pn.i, %.loopexit.i ], [ %.pn.pn.pn.pn.i, %.loopexit12.i ]
  call void @_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.ch

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4bzla10preprocess4pass24PassVariableSubstitution5RangeESt6vectorIS6_SaIS6_EEEEZNS5_23compute_non_overlappingERNS2_11NodeManagerEmRSt13unordered_mapISt4pairImmES8_INS2_4NodeESaISH_EESt4hashISG_ESt8equal_toISG_ESaISF_IKSG_SJ_EEEE3$_0EvT_SU_T0_.exit": ; preds = %.lr.ph.i.i.i.i108, %bb.ab, %bb.aa, %._crit_edge321
  %i.kf = load ptr, ptr %0, align 8, !tbaa !234   ; 7 uses
  %i.kg = load ptr, ptr %i.ed, align 8, !tbaa !234 ; 4 uses
  %i.kh = icmp eq ptr %i.kf, %i.kg
  br i1 %i.kh, label %.critedge, label %bb.ca

bb.ca:                                            ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4bzla10preprocess4pass24PassVariableSubstitution5RangeESt6vectorIS6_SaIS6_EEEEZNS5_23compute_non_overlappingERNS2_11NodeManagerEmRSt13unordered_mapISt4pairImmES8_INS2_4NodeESaISH_EESt4hashISG_ESt8equal_toISG_ESaISF_IKSG_SJ_EEEE3$_0EvT_SU_T0_.exit"
  %i.ki = load i64, ptr %i.kf, align 8, !tbaa !356
  %i.kj = add i64 %3, -1
  %i.kk = icmp eq i64 %i.ki, %i.kj
  br i1 %i.kk, label %bb.cb, label %.lr.ph.i.i.i.i140.preheader

bb.cb:                                            ; preds = %bb.ca
  %i.kl = getelementptr inbounds i8, ptr %i.kg, i64 -32
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !361
  %i.kn = icmp eq i64 %i.km, 0
  br i1 %i.kn, label %.lr.ph324, label %.lr.ph.i.i.i.i140.preheader

.lr.ph324:                                        ; preds = %bb.cb
  %i.ko = ptrtoint ptr %i.kg to i64
  %i.kp = ptrtoint ptr %i.kf to i64
  %i.kq = sub i64 %i.ko, %i.kp
  %i.kr = sdiv exact i64 %i.kq, 40                ; 2 uses
  %18 = call i64 @llvm.usub.sat.i64(i64 %i.kr, i64 1)
  %exitcond342.not501 = icmp ult i64 %i.kr, 2
  br i1 %exitcond342.not501, label %.critedge, label %.lr.ph503

bb.cc:                                            ; preds = %.lr.ph503
  %exitcond342.not = icmp eq i64 %i.ks, %18
  br i1 %exitcond342.not, label %.critedge, label %.lr.ph503, !llvm.loop !367

.lr.ph503:                                        ; preds = %.lr.ph324, %bb.cc
  %.0322502 = phi i64 [ %i.ks, %bb.cc ], [ 0, %.lr.ph324 ] ; 2 uses
  %i.ks = add nuw i64 %.0322502, 1                ; 3 uses
  %i.kt = getelementptr inbounds nuw [40 x i8], ptr %i.kf, i64 %.0322502
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !361
  %i.kw = getelementptr inbounds nuw [40 x i8], ptr %i.kf, i64 %i.ks
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !356
  %i.ky = add i64 %i.kx, 1
  %i.kz = icmp eq i64 %i.kv, %i.ky
  br i1 %i.kz, label %bb.cc, label %.lr.ph.i.i.i.i140.preheader, !llvm.loop !367

.lr.ph.i.i.i.i140.preheader:                      ; preds = %.lr.ph503, %bb.ca, %bb.cb
  br label %.lr.ph.i.i.i.i140

.lr.ph.i.i.i.i140:                                ; preds = %.lr.ph.i.i.i.i140.preheader, %_ZSt8_DestroyIN4bzla10preprocess4pass24PassVariableSubstitution5RangeEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i141 = phi ptr [ %i.ll, %_ZSt8_DestroyIN4bzla10preprocess4pass24PassVariableSubstitution5RangeEEvPT_.exit.i.i.i.i ], [ %i.kf, %.lr.ph.i.i.i.i140.preheader ] ; 4 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i141, i64 16 ; 2 uses
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !33 ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i141, i64 24
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !37 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.lb, %i.ld
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i140, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.le, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.lb, %.lr.ph.i.i.i.i140 ] ; 2 uses
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i.i.i) #23
  %i.le = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.le, %i.ld
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !42

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load ptr, ptr %i.la, align 8, !tbaa !33
  br label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i140
  %i.lf = phi ptr [ %.pr.i.i.i.i.i.i.i, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i ], [ %i.lb, %.lr.ph.i.i.i.i140 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.lf, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4bzla10preprocess4pass24PassVariableSubstitution5RangeEEvPT_.exit.i.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i
  %i.lg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i141, i64 32
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !36
  %i.li = ptrtoint ptr %i.lh to i64
  %i.lj = ptrtoint ptr %i.lf to i64
  %i.lk = sub i64 %i.li, %i.lj
  call void @_ZdlPvm(ptr noundef nonnull %i.lf, i64 noundef %i.lk) #27
  br label %_ZSt8_DestroyIN4bzla10preprocess4pass24PassVariableSubstitution5RangeEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN4bzla10preprocess4pass24PassVariableSubstitution5RangeEEvPT_.exit.i.i.i.i: ; preds = %bb.cd, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i
  %i.ll = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i141, i64 40 ; 2 uses
  %.not.i.i.i.i142 = icmp eq ptr %i.ll, %i.kg
  br i1 %.not.i.i.i.i142, label %_ZNSt6vectorIN4bzla10preprocess4pass24PassVariableSubstitution5RangeESaIS4_EE5clearEv.exit, label %.lr.ph.i.i.i.i140, !llvm.loop !243

_ZNSt6vectorIN4bzla10preprocess4pass24PassVariableSubstitution5RangeESaIS4_EE5clearEv.exit: ; preds = %_ZSt8_DestroyIN4bzla10preprocess4pass24PassVariableSubstitution5RangeEEvPT_.exit.i.i.i.i
  store ptr %i.kf, ptr %i.ed, align 8, !tbaa !242
  br label %.critedge

.critedge:                                        ; preds = %bb.cc, %.lr.ph324, %_ZNSt6vectorIN4bzla10preprocess4pass24PassVariableSubstitution5RangeESaIS4_EE5clearEv.exit, %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN4bzla10preprocess4pass24PassVariableSubstitution5RangeESt6vectorIS6_SaIS6_EEEEZNS5_23compute_non_overlappingERNS2_11NodeManagerEmRSt13unordered_mapISt4pairImmES8_INS2_4NodeESaISH_EESt4hashISG_ESt8equal_toISG_ESaISF_IKSG_SJ_EEEE3$_0EvT_SU_T0_.exit"
  %.not.i.i.i143 = icmp eq ptr %.sroa.0178.0.lcssa445, null
  br i1 %.not.i.i.i143, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ce

bb.ce:                                            ; preds = %.critedge
  %i.lm = ptrtoint ptr %.sroa.33.0.lcssa433 to i64
  %i.ln = sub i64 %i.lm, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0178.0.lcssa445, i64 noundef %i.ln) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %.critedge, %bb.ce
  %i.lo = load ptr, ptr %14, align 8, !tbaa !240  ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !242 ; 2 uses
  %.not4.i.i.i144 = icmp eq ptr %i.lo, %i.lq
  br i1 %.not4.i.i.i144, label %_ZSt8_DestroyIPN4bzla10preprocess4pass24PassVariableSubstitution5RangeES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i145

.lr.ph.i.i.i145:                                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %_ZSt8_DestroyIN4bzla10preprocess4pass24PassVariableSubstitution5RangeEEvPT_.exit.i.i.i
  %.05.i.i.i146 = phi ptr [ %i.mc, %_ZSt8_DestroyIN4bzla10preprocess4pass24PassVariableSubstitution5RangeEEvPT_.exit.i.i.i ], [ %i.lo, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 4 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.05.i.i.i146, i64 16 ; 2 uses
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !33 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.05.i.i.i146, i64 24
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !37 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i147 = icmp eq ptr %i.ls, %i.lu
  br i1 %.not4.i.i.i.i.i.i.i.i147, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i153, label %.lr.ph.i.i.i.i.i.i.i.i148

.lr.ph.i.i.i.i.i.i.i.i148:                        ; preds = %.lr.ph.i.i.i145, %.lr.ph.i.i.i.i.i.i.i.i148
  %.05.i.i.i.i.i.i.i.i149 = phi ptr [ %i.lv, %.lr.ph.i.i.i.i.i.i.i.i148 ], [ %i.ls, %.lr.ph.i.i.i145 ] ; 2 uses
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i.i149) #23
  %i.lv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i149, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i150 = icmp eq ptr %i.lv, %i.lu
  br i1 %.not.i.i.i.i.i.i.i.i150, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i151, label %.lr.ph.i.i.i.i.i.i.i.i148, !llvm.loop !42

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i151: ; preds = %.lr.ph.i.i.i.i.i.i.i.i148
  %.pr.i.i.i.i.i.i152 = load ptr, ptr %i.lr, align 8, !tbaa !33
  br label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i153

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i153: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i151, %.lr.ph.i.i.i145
  %i.lw = phi ptr [ %.pr.i.i.i.i.i.i152, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i151 ], [ %i.ls, %.lr.ph.i.i.i145 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i154 = icmp eq ptr %i.lw, null
  br i1 %.not.i.i1.i.i.i.i.i.i154, label %_ZSt8_DestroyIN4bzla10preprocess4pass24PassVariableSubstitution5RangeEEvPT_.exit.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i153
  %i.lx = getelementptr inbounds nuw i8, ptr %.05.i.i.i146, i64 32
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !36
  %i.lz = ptrtoint ptr %i.ly to i64
  %i.ma = ptrtoint ptr %i.lw to i64
  %i.mb = sub i64 %i.lz, %i.ma
  call void @_ZdlPvm(ptr noundef nonnull %i.lw, i64 noundef %i.mb) #27
  br label %_ZSt8_DestroyIN4bzla10preprocess4pass24PassVariableSubstitution5RangeEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4bzla10preprocess4pass24PassVariableSubstitution5RangeEEvPT_.exit.i.i.i: ; preds = %bb.cf, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i153
  %i.mc = getelementptr inbounds nuw i8, ptr %.05.i.i.i146, i64 40 ; 2 uses
  %.not.i.i.i155 = icmp eq ptr %i.mc, %i.lq
  br i1 %.not.i.i.i155, label %_ZSt8_DestroyIPN4bzla10preprocess4pass24PassVariableSubstitution5RangeES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i145, !llvm.loop !243

_ZSt8_DestroyIPN4bzla10preprocess4pass24PassVariableSubstitution5RangeES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4bzla10preprocess4pass24PassVariableSubstitution5RangeEEvPT_.exit.i.i.i
  %.pr.i156 = load ptr, ptr %14, align 8, !tbaa !240
  br label %_ZSt8_DestroyIPN4bzla10preprocess4pass24PassVariableSubstitution5RangeES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4bzla10preprocess4pass24PassVariableSubstitution5RangeES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4bzla10preprocess4pass24PassVariableSubstitution5RangeES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorImSaImEED2Ev.exit
  %i.md = phi ptr [ %.pr.i156, %_ZSt8_DestroyIPN4bzla10preprocess4pass24PassVariableSubstitution5RangeES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.lo, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i157 = icmp eq ptr %i.md, null
  br i1 %.not.i.i1.i157, label %_ZNSt6vectorIN4bzla10preprocess4pass24PassVariableSubstitution5RangeESaIS4_EED2Ev.exit, label %bb.cg

bb.cg:                                            ; preds = %_ZSt8_DestroyIPN4bzla10preprocess4pass24PassVariableSubstitution5RangeES4_EvT_S6_RSaIT0_E.exit.i
  %i.me = load ptr, ptr %i.f, align 8, !tbaa !244
  %i.mf = ptrtoint ptr %i.me to i64
  %i.mg = ptrtoint ptr %i.md to i64
  %i.mh = sub i64 %i.mf, %i.mg
  call void @_ZdlPvm(ptr noundef nonnull %i.md, i64 noundef %i.mh) #27
  br label %_ZNSt6vectorIN4bzla10preprocess4pass24PassVariableSubstitution5RangeESaIS4_EED2Ev.exit

_ZNSt6vectorIN4bzla10preprocess4pass24PassVariableSubstitution5RangeESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4bzla10preprocess4pass24PassVariableSubstitution5RangeES4_EvT_S6_RSaIT0_E.exit.i, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @_ZN4bzla4util5TimerD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  ret void

bb.ch:                                            ; preds = %.loopexit212, %.loopexit.split-lp213, %.loopexit, %.loopexit.split-lp, %bb.v, %.body, %bb.h
  %.sroa.33.3 = phi ptr [ %.sroa.33.1, %bb.h ], [ %.sroa.33.0306, %bb.v ], [ %.sroa.33.0.lcssa433, %.body ], [ %.sroa.18.0307, %.loopexit.split-lp ], [ %.sroa.18.0307, %.loopexit ], [ %.sroa.33.5, %.loopexit212 ], [ %.sroa.33.5, %.loopexit.split-lp213 ]
  %.sroa.0178.3 = phi ptr [ %.sroa.0178.1, %bb.h ], [ %.sroa.0178.0308, %bb.v ], [ %.sroa.0178.0.lcssa445, %.body ], [ %.sroa.0178.0308, %.loopexit.split-lp ], [ %.sroa.0178.0308, %.loopexit ], [ %.sroa.0178.5, %.loopexit212 ], [ %.sroa.0178.5, %.loopexit.split-lp213 ] ; 3 uses
  %.pn80.pn = phi { ptr, i32 } [ %i.ar, %bb.h ], [ %i.cq, %bb.v ], [ %.pn77.pn, %.body ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit214, %.loopexit212 ], [ %lpad.loopexit.split-lp215, %.loopexit.split-lp213 ]
  %.not.i.i.i158 = icmp eq ptr %.sroa.0178.3, null
  br i1 %.not.i.i.i158, label %_ZNSt6vectorImSaImEED2Ev.exit159, label %.thread

.thread:                                          ; preds = %bb.ch
  %i.mi = ptrtoint ptr %.sroa.33.3 to i64
  %i.mj = ptrtoint ptr %.sroa.0178.3 to i64
  %i.mk = sub i64 %i.mi, %i.mj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0178.3, i64 noundef %i.mk) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit159

_ZNSt6vectorImSaImEED2Ev.exit159:                 ; preds = %bb.ch, %.thread
  call void @_ZNSt6vectorIN4bzla10preprocess4pass24PassVariableSubstitution5RangeESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @_ZN4bzla4util5TimerD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %13) #23
  br label %bb.ci

bb.ci:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit159, %bb.g
  %.pn80.pn.pn = phi { ptr, i32 } [ %.pn80.pn, %_ZNSt6vectorImSaImEED2Ev.exit159 ], [ %i.aq, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @_ZNSt6vectorIN4bzla10preprocess4pass24PassVariableSubstitution5RangeESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  resume { ptr, i32 } %.pn80.pn.pn
}

declare void @_ZN4bzla4node5utils7mk_naryERNS_11NodeManagerENS0_4KindERKSt6vectorINS_4NodeESaIS6_EE(ptr dead_on_unwind writable sret(%"class.bzla::Node") align 8, ptr noundef nonnull align 8 dereferenceable(216), i8 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4bzla10preprocess4pass24PassVariableSubstitution5RangeESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !240    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !242  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4bzla10preprocess4pass24PassVariableSubstitution5RangeES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN4bzla10preprocess4pass24PassVariableSubstitution5RangeEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.o, %_ZSt8_DestroyIN4bzla10preprocess4pass24PassVariableSubstitution5RangeEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37   ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.i.i ], [ %i.e, %.lr.ph.i.i ] ; 2 uses
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i) #23
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !42

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !33
  br label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_assignIRKSH_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb1EEEEEEEEvOT_RKT0_:bb.a
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.h, i1 false)
  br label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla4NodeES4_ELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.e, %bb.c ], [ %i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla4NodeES4_ELb1EEEEE19_M_allocate_bucketsEm.exit.i ]
  store ptr %.0.i, ptr %0, align 8, !tbaa !142
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !166  ; 4 uses
  %.not29 = icmp eq ptr %i.k, null
  br i1 %.not29, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %2, align 8, !tbaa !548, !nonnull !27
  %i.n = invoke noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla4NodeES4_ELb1EEEEE16_M_allocate_nodeIJRKS6_EEEPS7_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEPNS6_10_Hash_nodeIS4_Lb1EEE.exit unwind label %bb.i ; 3 uses

_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEPNS6_10_Hash_nodeIS4_Lb1EEE.exit: ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !156  ; 2 uses
  store i64 %i.q, ptr %i.o, align 8, !tbaa !156
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.r, align 8, !tbaa !166
  %i.s = load ptr, ptr %0, align 8, !tbaa !142
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !143
  %i.v = urem i64 %i.q, %i.u
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.v
  store ptr %i.r, ptr %i.w, align 8, !tbaa !155
  %.02734 = load ptr, ptr %i.k, align 8, !tbaa !102 ; 2 uses
  %.not3035 = icmp eq ptr %.02734, null
  br i1 %.not3035, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEPNS6_10_Hash_nodeIS4_Lb1EEE.exit, %bb.k
  %.02737 = phi ptr [ %.027, %bb.k ], [ %.02734, %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEPNS6_10_Hash_nodeIS4_Lb1EEE.exit ] ; 3 uses
  %.036 = phi ptr [ %i.z, %bb.k ], [ %i.n, %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEPNS6_10_Hash_nodeIS4_Lb1EEE.exit ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.02737, i64 8
  %i.y = load ptr, ptr %2, align 8, !tbaa !548, !nonnull !27
  %i.z = invoke noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla4NodeES4_ELb1EEEEE16_M_allocate_nodeIJRKS6_EEEPS7_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.x)
          to label %_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeISt4pairIKN4bzla4NodeES4_ELb1EEEEEclIJRKS6_EEEPS7_DpOT_.exit33 unwind label %bb.j ; 3 uses

_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeISt4pairIKN4bzla4NodeES4_ELb1EEEEEclIJRKS6_EEEPS7_DpOT_.exit33: ; preds = %.lr.ph
  store ptr %i.z, ptr %.036, align 8, !tbaa !102
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %.02737, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !156 ; 2 uses
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !156
  %i.ad = load i64, ptr %i.t, align 8, !tbaa !143
  %i.ae = urem i64 %i.ac, %i.ad
  %i.af = load ptr, ptr %0, align 8, !tbaa !142
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ae ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !155
  %.not32 = icmp eq ptr %i.ah, null
  br i1 %.not32, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeISt4pairIKN4bzla4NodeES4_ELb1EEEEEclIJRKS6_EEEPS7_DpOT_.exit33
  store ptr %.036, ptr %i.ag, align 8, !tbaa !155
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.l

bb.j:                                             ; preds = %.lr.ph
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.l

bb.k:                                             ; preds = %bb.h, %_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeISt4pairIKN4bzla4NodeES4_ELb1EEEEEclIJRKS6_EEEPS7_DpOT_.exit33
  %.027 = load ptr, ptr %.02737, align 8, !tbaa !102 ; 2 uses
  %.not30 = icmp eq ptr %.027, null
  br i1 %.not30, label %.loopexit, label %.lr.ph, !llvm.loop !894

bb.l:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.j ], [ %i.ai, %bb.i ]
  %.026 = extractvalue { ptr, i32 } %.pn, 0
  %i.ak = tail call ptr @__cxa_begin_catch(ptr %.026) #23 ; 0 uses
  tail call void @_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #23
  br i1 %.not.not, label %bb.m, label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

bb.m:                                             ; preds = %bb.l
  %i.al = load ptr, ptr %0, align 8, !tbaa !142   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !143
  %i.aq = shl i64 %i.ap, 3
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.aq) #27
  br label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

bb.o:                                             ; preds = %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.p unwind label %bb.q

_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.n, %bb.m, %bb.l
  invoke void @__cxa_rethrow() #25
          to label %bb.r unwind label %bb.o

bb.p:                                             ; preds = %bb.o
  resume { ptr, i32 } %i.ar

.loopexit:                                        ; preds = %bb.k, %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEPNS6_10_Hash_nodeIS4_Lb1EEE.exit, %bb.f
  ret void

bb.q:                                             ; preds = %bb.o
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #26
  unreachable

bb.r:                                             ; preds = %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4bzla4NodeES4_ELb1EEEEE16_M_allocate_nodeIJRKS6_EEEPS7_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24 ; 5 uses
  store ptr null, ptr %i.a, align 8, !tbaa !102
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZNSt16allocator_traitsISaINSt8__detail10_Hash_nodeISt4pairIKN4bzla4NodeES4_ELb1EEEEE9constructIS6_JRKS6_EEEvRS8_PT_DpOT0_.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %i.b) #23
  br label %bb.d

_ZNSt16allocator_traitsISaINSt8__detail10_Hash_nodeISt4pairIKN4bzla4NodeES4_ELb1EEEEE9constructIS6_JRKS6_EEEvRS8_PT_DpOT0_.exit: ; preds = %.noexc
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  %i.g = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.h = tail call ptr @__cxa_begin_catch(ptr %i.g) #23 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #27
  invoke void @__cxa_rethrow() #25
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.i

bb.g:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #26
  unreachable

bb.h:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold noreturn }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { noreturn }
attributes #26 = { noreturn nounwind }
attributes #27 = { builtin nounwind }
attributes #28 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 8}
!9 = !{!"_ZTSN4bzla10preprocess17PreprocessingPassE", !10, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !15, i64 64, !19, i64 96}
!10 = !{!"p1 _ZTSN4bzla3EnvE", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTSN4bzla4util6LoggerE", !11, i64 0}
!13 = !{!"_ZTSN4bzla10preprocess17PreprocessingPass10StatisticsE", !14, i64 0}
!14 = !{!"p1 _ZTSN4bzla4util14TimerStatisticE", !11, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0, !18, i64 8, !6, i64 16}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !17, i64 0}
!17 = !{!"p1 omnipotent char", !11, i64 0}
!18 = !{!"long", !6, i64 0}
!19 = !{!"_ZTSSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EE", !20, i64 0}
!20 = !{!"_ZTSSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE", !21, i64 0, !18, i64 8, !23, i64 16, !18, i64 24, !25, i64 32, !24, i64 48}
!21 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !22, i64 0}
!22 = !{!"any p2 pointer", !11, i64 0}
!23 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !24, i64 0}
!24 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !11, i64 0}
!25 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !26, i64 0, !18, i64 8}
!26 = !{!"float", !6, i64 0}
!27 = !{}
!28 = !{i64 8}
!29 = !{!30, !31, i64 0}
!30 = !{!"_ZTSN4bzla4NodeE", !31, i64 0}
!31 = !{!"p1 _ZTSN4bzla4node8NodeDataE", !11, i64 0}
!32 = !{!5, !5, i64 0}
!33 = !{!34, !35, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIN4bzla4NodeESaIS1_EE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!35 = !{!"p1 _ZTSN4bzla4NodeE", !11, i64 0}
!36 = !{!34, !35, i64 16}
!37 = !{!34, !35, i64 8}
!38 = !{!39, !40, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!40 = !{!"p1 long", !11, i64 0}
!41 = !{!39, !40, i64 16}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!45, !40, i64 840}
!45 = !{!"_ZTSN4bzla10preprocess4pass24PassVariableSubstitutionE", !9, i64 0, !46, i64 152, !59, i64 272, !67, i64 392, !70, i64 512, !71, i64 632, !19, i64 720, !77, i64 776}
!46 = !{!"_ZTSN4bzla9backtrack13unordered_mapINS_4NodeESt4pairIS2_S2_EEE", !47, i64 0, !52, i64 40, !54, i64 96}
!47 = !{!"_ZTSN4bzla9backtrack13BacktrackableE", !48, i64 8, !49, i64 16}
!48 = !{!"p1 _ZTSN4bzla9backtrack16BacktrackManagerE", !11, i64 0}
!49 = !{!"_ZTSSt6vectorImSaImEE", !50, i64 0}
!50 = !{!"_ZTSSt12_Vector_baseImSaImEE", !51, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !39, i64 0}
!52 = !{!"_ZTSSt13unordered_mapIN4bzla4NodeESt4pairIS1_S1_ESt4hashIS1_ESt8equal_toIS1_ESaIS2_IKS1_S3_EEE", !53, i64 0}
!53 = !{!"_ZTSSt10_HashtableIN4bzla4NodeESt4pairIKS1_S2_IS1_S1_EESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE", !21, i64 0, !18, i64 8, !23, i64 16, !18, i64 24, !25, i64 32, !24, i64 48}
!54 = !{!"_ZTSSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE", !55, i64 0}
!55 = !{!"_ZTSSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE", !56, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE12_Vector_implE", !57, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!58 = !{!"p1 _ZTSSt17reference_wrapperIKN4bzla4NodeEE", !11, i64 0}
!59 = !{!"_ZTSN4bzla9backtrack13unordered_mapImNS_4NodeEEE", !47, i64 0, !60, i64 40, !62, i64 96}
!60 = !{!"_ZTSSt13unordered_mapImN4bzla4NodeESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE", !61, i64 0}
!61 = !{!"_ZTSSt10_HashtableImSt4pairIKmN4bzla4NodeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE", !21, i64 0, !18, i64 8, !23, i64 16, !18, i64 24, !25, i64 32, !24, i64 48}
!62 = !{!"_ZTSSt6vectorISt17reference_wrapperIKmESaIS2_EE", !63, i64 0}
!63 = !{!"_ZTSSt12_Vector_baseISt17reference_wrapperIKmESaIS2_EE", !64, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseISt17reference_wrapperIKmESaIS2_EE12_Vector_implE", !65, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseISt17reference_wrapperIKmESaIS2_EE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!66 = !{!"p1 _ZTSSt17reference_wrapperIKmE", !11, i64 0}
!67 = !{!"_ZTSN4bzla9backtrack13unordered_mapINS_4NodeEmEE", !47, i64 0, !68, i64 40, !54, i64 96}
!68 = !{!"_ZTSSt13unordered_mapIN4bzla4NodeEmSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_mEEE", !69, i64 0}
!69 = !{!"_ZTSSt10_HashtableIN4bzla4NodeESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE", !21, i64 0, !18, i64 8, !23, i64 16, !18, i64 24, !25, i64 32, !24, i64 48}
!70 = !{!"_ZTSN4bzla9backtrack13unordered_setINS_4NodeEEE", !47, i64 0, !19, i64 40, !54, i64 96}
!71 = !{!"_ZTSN4bzla10preprocess4pass24PassVariableSubstitution5CacheE", !47, i64 0, !72, i64 40, !72, i64 64}
!72 = !{!"_ZTSSt6vectorISt13unordered_mapIN4bzla4NodeES2_St4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S2_EEESaISB_EE", !73, i64 0}
!73 = !{!"_ZTSSt12_Vector_baseISt13unordered_mapIN4bzla4NodeES2_St4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S2_EEESaISB_EE", !74, i64 0}
!74 = !{!"_ZTSNSt12_Vector_baseISt13unordered_mapIN4bzla4NodeES2_St4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S2_EEESaISB_EE12_Vector_implE", !75, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseISt13unordered_mapIN4bzla4NodeES2_St4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S2_EEESaISB_EE17_Vector_impl_dataE", !76, i64 0, !76, i64 8, !76, i64 16}
!76 = !{!"p1 _ZTSSt13unordered_mapIN4bzla4NodeES1_St4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S1_EEE", !11, i64 0}
!77 = !{!"_ZTSN4bzla10preprocess4pass24PassVariableSubstitution10StatisticsE", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !40, i64 104, !40, i64 112}
!78 = !{!18, !18, i64 0}
!79 = !{!45, !40, i64 848}
!80 = !{!45, !40, i64 864}
!81 = !{!82, !83, i64 32}
!82 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !6, i64 0, !83, i64 32}
!83 = !{!"bool", !6, i64 0}
!84 = !{i8 0, i8 2}
!85 = !{!15, !17, i64 0}
!86 = !{!6, !6, i64 0}
!87 = !{!45, !40, i64 872}
!88 = !{!45, !14, i64 816}
!89 = !{!83, !83, i64 0}
!90 = !{!91, !21, i64 0}
!91 = !{!"_ZTSSt10_HashtableISt17reference_wrapperIKN4bzla4NodeEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS2_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE", !21, i64 0, !18, i64 8, !23, i64 16, !18, i64 24, !25, i64 32, !24, i64 48}
!92 = !{!91, !18, i64 8}
!93 = !{!25, !26, i64 0}
!94 = !{!35, !35, i64 0}
!95 = !{!96, !35, i64 0}
!96 = !{!"_ZTSSt17reference_wrapperIKN4bzla4NodeEE", !35, i64 0}
!97 = !{!98, !98, i64 0}
!98 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt17reference_wrapperIKN4bzla4NodeEELb1EEEEEE", !11, i64 0}
!99 = distinct !{!99, !43}
!100 = !{!45, !40, i64 856}
!101 = !{!91, !24, i64 16}
!102 = !{!23, !24, i64 0}
!103 = distinct !{!103, !43}
!104 = !{!16, !17, i64 0}
!105 = !{!15, !18, i64 8}
!106 = !{!107, !107, i64 0}
!107 = !{!"vtable pointer", !7, i64 0}
!108 = !{!53, !21, i64 0}
!109 = !{!53, !18, i64 8}
!110 = !{!61, !21, i64 0}
!111 = !{!61, !18, i64 8}
!112 = !{!69, !21, i64 0}
!113 = !{!69, !18, i64 8}
!114 = !{!20, !21, i64 0}
!115 = !{!20, !18, i64 8}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!118 = distinct !{!118, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!119 = !{!120, !117}
!120 = distinct !{!120, !121, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!121 = distinct !{!121, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!124 = distinct !{!124, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!125 = !{!20, !24, i64 16}
!126 = distinct !{!126, !43}
!127 = !{!57, !58, i64 0}
!128 = !{!57, !58, i64 16}
!129 = !{!69, !24, i64 16}
!130 = distinct !{!130, !43}
!131 = !{!65, !66, i64 0}
!132 = !{!65, !66, i64 16}
!133 = !{!61, !24, i64 16}
!134 = distinct !{!134, !43}
!135 = !{!53, !24, i64 16}
!136 = distinct !{!136, !43}
!137 = !{!9, !14, i64 24}
!138 = !{!9, !12, i64 16}
!139 = !{!76, !76, i64 0}
!140 = !{!141, !18, i64 24}
!141 = !{!"_ZTSSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE", !21, i64 0, !18, i64 8, !23, i64 16, !18, i64 24, !25, i64 32, !24, i64 48}
!142 = !{!141, !21, i64 0}
!143 = !{!141, !18, i64 8}
!144 = !{!145, !21, i64 0}
!145 = !{!"_ZTSSt10_HashtableIN4bzla4NodeESt4pairIKS1_St6vectorIS2_IS1_S1_ESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !21, i64 0, !18, i64 8, !23, i64 16, !18, i64 24, !25, i64 32, !24, i64 48}
!146 = !{!145, !18, i64 8}
!147 = !{!45, !14, i64 776}
!148 = !{!145, !18, i64 24}
!149 = !{!150, !151, i64 8}
!150 = !{!"_ZTSNSt12_Vector_baseISt4pairIN4bzla4NodeES2_ESaIS3_EE17_Vector_impl_dataE", !151, i64 0, !151, i64 8, !151, i64 16}
!151 = !{!"p1 _ZTSSt4pairIN4bzla4NodeES1_E", !11, i64 0}
!152 = !{!150, !151, i64 16}
!153 = !{!53, !18, i64 24}
!154 = distinct !{!154, !43}
!155 = !{!24, !24, i64 0}
!156 = !{!157, !18, i64 0}
!157 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !18, i64 0}
!158 = distinct !{!158, !43}
!159 = distinct !{!159, !43}
!160 = distinct !{!160, !43}
!161 = !{!20, !18, i64 24}
!162 = distinct !{!162, !43}
!163 = distinct !{!163, !43}
!164 = distinct !{!164, !43}
!165 = !{!45, !14, i64 792}
end_hunk_1
