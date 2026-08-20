inline.NumInlined: 1899
inline.NumDeleted: 771
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5faiss16IndexIVFFastScan12add_with_idsElPKfPKl:bb.a
  invoke fastcc void @"_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5faiss16IndexIVFFastScan12add_with_idsElPKfPKlE3$_0EEEvT_SH_T0_"(ptr nonnull %i.df, ptr %.0.i.i.i.i.i.ph, ptr nonnull %5)
          to label %bb.aq unwind label %.body.thread262

bb.ap:                                            ; preds = %bb.an
  invoke fastcc void @"_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES2_lNS0_5__ops15_Iter_comp_iterIZN5faiss16IndexIVFFastScan12add_with_idsElPKfPKlE3$_0EEEvT_SH_T0_T1_T2_"(ptr nonnull %i.df, ptr %.0.i.i.i.i.i.ph, ptr noundef nonnull %.sroa.12.0.i.i, i64 noundef %.sroa.5.0.i.i, ptr nonnull %5)
          to label %bb.aq unwind label %.body.thread262

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.am
  %i.ek = shl i64 %.sroa.5.0.i.i, 3
  call void @_ZdlPvm(ptr noundef %.sroa.12.0.i.i, i64 noundef %i.ek) #26
  br label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEZN5faiss16IndexIVFFastScan12add_with_idsElPKfPKlE3$_0EvT_SE_T0_.exit"

bb.ar:                                            ; preds = %bb.ak, %bb.aj
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit152

.lr.ph:                                           ; preds = %.lr.ph.preheader284, %.lr.ph
  %.0106203 = phi i64 [ %i.en, %.lr.ph ], [ %.0106203.ph, %.lr.ph.preheader284 ] ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.0106203
  store i64 %.0106203, ptr %i.em, align 8, !tbaa !61
  %i.en = add nuw nsw i64 %.0106203, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.en, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !68

"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEZN5faiss16IndexIVFFastScan12add_with_idsElPKfPKlE3$_0EvT_SE_T0_.exit": ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i, %bb.aq, %._crit_edge
  %.sroa.0163.0246260 = phi ptr [ %i.df, %._crit_edge ], [ %i.df, %bb.aq ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ] ; 12 uses
  %.sroa.18.0251259 = phi ptr [ %i.dg, %._crit_edge ], [ %i.dg, %bb.aq ], [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ] ; 4 uses
  %i.eo = load ptr, ptr %0, align 8, !tbaa !9
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 376
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = invoke noundef i64 %i.eq(ptr noundef nonnull align 8 dereferenceable(352) %0)
          to label %.preheader200 unwind label %.body

.preheader200:                                    ; preds = %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEZN5faiss16IndexIVFFastScan12add_with_idsElPKfPKlE3$_0EvT_SE_T0_.exit"
  br i1 %.not.i.i.i.i, label %._crit_edge211, label %.lr.ph210

.lr.ph210:                                        ; preds = %.preheader200
  %.not120 = icmp eq ptr %3, null
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %i.cn, i64 80
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cn, i64 56
  %.pre221 = load ptr, ptr %5, align 8, !tbaa !32
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph210, %bb.bk
  %i.ey = phi ptr [ %.pre221, %.lr.ph210 ], [ %i.hr, %bb.bk ] ; 3 uses
  %.090.neg209 = phi i64 [ 0, %.lr.ph210 ], [ %.090.neg, %bb.bk ] ; 2 uses
  %.090208 = phi i64 [ 0, %.lr.ph210 ], [ %.089.lcssa, %bb.bk ] ; 8 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0163.0246260, i64 %.090208
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !61
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.fa
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !61 ; 8 uses
  %i.fd = add nsw i64 %.090208, 1
  %smax217 = call i64 @llvm.smax.i64(i64 %1, i64 %i.fd) ; 3 uses
  %i.fe = add nsw i64 %smax217, -1                ; 4 uses
  %exitcond218.not271 = icmp eq i64 %.090208, %i.fe
  br i1 %exitcond218.not271, label %.critedge, label %.lr.ph274

bb.at:                                            ; preds = %.lr.ph274
  %exitcond218.not = icmp eq i64 %.089, %i.fe
  br i1 %exitcond218.not, label %.critedge, label %.lr.ph274, !llvm.loop !69

.lr.ph274:                                        ; preds = %bb.as, %bb.at
  %.089.in272 = phi i64 [ %.089, %bb.at ], [ %.090208, %bb.as ] ; 2 uses
  %.089 = add nsw i64 %.089.in272, 1              ; 4 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0163.0246260, i64 %.089
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !61
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !61
  %i.fj = icmp eq i64 %i.fi, %i.fc
  br i1 %i.fj, label %bb.at, label %..critedge_crit_edge276, !llvm.loop !69

..critedge_crit_edge276:                          ; preds = %.lr.ph274
  br label %.critedge, !llvm.loop !69

.critedge:                                        ; preds = %bb.at, %..critedge_crit_edge276, %bb.as
  %.089.in.lcssa = phi i64 [ %i.fe, %bb.as ], [ %.089.in272, %..critedge_crit_edge276 ], [ %i.fe, %bb.at ] ; 3 uses
  %.089.lcssa = phi i64 [ %smax217, %bb.as ], [ %.089, %..critedge_crit_edge276 ], [ %smax217, %bb.at ] ; 4 uses
  %i.fk = icmp eq i64 %i.fc, -1
  br i1 %i.fk, label %bb.bk, label %bb.au, !llvm.loop !70

bb.au:                                            ; preds = %.critedge
  %i.fl = sub nsw i64 %.089.lcssa, %.090208       ; 2 uses
  %i.fm = load i64, ptr %i.bs, align 8, !tbaa !41
  %i.fn = mul i64 %i.fm, %i.fl                    ; 3 uses
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %_ZN5faiss12AlignedTableIhLi32EEC2Em.exit150, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fp = icmp ult i64 %i.fn, 256
  br i1 %i.fp, label %.loopexit.i143, label %.preheader.i.i141

.preheader.i.i141:                                ; preds = %bb.av, %.preheader.i.i141
  %.0.i.i142 = phi i64 [ %i.fr, %.preheader.i.i141 ], [ 256, %bb.av ] ; 3 uses
  %i.fq = icmp ult i64 %.0.i.i142, %i.fn
  %i.fr = shl i64 %.0.i.i142, 1
  br i1 %i.fq, label %.preheader.i.i141, label %.loopexit.i143, !llvm.loop !58

.loopexit.i143:                                   ; preds = %.preheader.i.i141, %bb.av
  %.07.i.ph.i144 = phi i64 [ 256, %bb.av ], [ %.0.i.i142, %.preheader.i.i141 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.fs = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %.07.i.ph.i144) #26
  %.not1.i.i.i145 = icmp eq i32 %i.fs, 0
  br i1 %.not1.i.i.i145, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.loopexit.i143
  %i.ft = call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ft, align 8, !tbaa !9
  invoke void @__cxa_throw(ptr nonnull %i.ft, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
          to label %.noexc149 unwind label %bb.az

.noexc149:                                        ; preds = %bb.aw
  unreachable

bb.ax:                                            ; preds = %.loopexit.i143
  %i.fu = load ptr, ptr %i.a, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN5faiss12AlignedTableIhLi32EEC2Em.exit150

_ZN5faiss12AlignedTableIhLi32EEC2Em.exit150:      ; preds = %bb.ax, %bb.au
  %.sroa.0.0 = phi ptr [ %i.fu, %bb.ax ], [ null, %bb.au ] ; 5 uses
  %i.fv = load ptr, ptr %i.cn, align 8, !tbaa !9
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = invoke noundef i64 %i.fx(ptr noundef nonnull align 8 dereferenceable(104) %i.cn, i64 noundef %i.fc)
          to label %bb.ay unwind label %bb.ba     ; 4 uses

bb.ay:                                            ; preds = %_ZN5faiss12AlignedTableIhLi32EEC2Em.exit150
  %i.fz = add i64 %.089.lcssa, %.090.neg209
  %i.ga = add i64 %i.fz, %i.fy                    ; 2 uses
  %i.gb = load ptr, ptr %i.cn, align 8, !tbaa !9
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 128
  %i.gd = load ptr, ptr %i.gc, align 8
  invoke void %i.gd(ptr noundef nonnull align 8 dereferenceable(104) %i.cn, i64 noundef %i.fc, i64 noundef %i.ga)
          to label %.preheader unwind label %bb.ba

.preheader:                                       ; preds = %bb.ay
  %.not119204 = icmp sgt i64 %.090208, %.089.in.lcssa
  br i1 %.not119204, label %._crit_edge207, label %.lr.ph206

.lr.ph206:                                        ; preds = %.preheader
  %i.ge = add i64 %i.fy, %.090.neg209
  br label %bb.bb

._crit_edge207:                                   ; preds = %bb.bf, %.preheader
  %i.gf = load i64, ptr %i.eu, align 8, !tbaa !71
  %i.gg = load i32, ptr %i.ev, align 4, !tbaa !74
  %i.gh = load i64, ptr %i.ew, align 8, !tbaa !75
  %i.gi = load ptr, ptr %i.ex, align 8, !tbaa !76
  %i.gj = getelementptr inbounds nuw [24 x i8], ptr %i.gi, i64 %i.fc
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !79
  %i.gl = invoke noundef i64 @_ZNK5faiss16IndexIVFFastScan16get_block_strideEv(ptr noundef nonnull align 8 dereferenceable(352) %0)
          to label %bb.bh unwind label %bb.ba

bb.az:                                            ; preds = %bb.aw
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.ba:                                            ; preds = %bb.bi, %bb.bh, %._crit_edge207, %bb.ay, %_ZN5faiss12AlignedTableIhLi32EEC2Em.exit150
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bb:                                            ; preds = %.lr.ph206, %bb.bf
  %.0205 = phi i64 [ %.090208, %.lr.ph206 ], [ %i.hl, %bb.bf ] ; 7 uses
  %i.go = add i64 %i.ge, %.0205                   ; 2 uses
  br i1 %.not120, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0163.0246260, i64 %.0205
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !61 ; 2 uses
  %i.gr = getelementptr inbounds [8 x i8], ptr %3, i64 %i.gq
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !61
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.gt = load i64, ptr %i.es, align 8, !tbaa !81
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0163.0246260, i64 %.0205
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !61 ; 2 uses
  %i.gw = add nsw i64 %i.gv, %i.gt
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.gx = phi i64 [ %i.gq, %bb.bc ], [ %i.gv, %bb.bd ]
  %i.gy = phi i64 [ %i.gs, %bb.bc ], [ %i.gw, %bb.bd ]
  invoke void @_ZN5faiss12DirectMapAdd3addEmlm(ptr noundef nonnull align 8 dereferenceable(64) %6, i64 noundef %i.gx, i64 noundef %i.fc, i64 noundef %i.go)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0163.0246260, i64 %.0205
  %i.ha = load ptr, ptr %i.et, align 8, !tbaa !82
  %i.hb = getelementptr inbounds nuw [24 x i8], ptr %i.ha, i64 %i.fc
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !85
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.go
  store i64 %i.gy, ptr %i.hd, align 8, !tbaa !61
  %i.he = sub nsw i64 %.0205, %.090208
  %i.hf = load i64, ptr %i.bs, align 8, !tbaa !41 ; 3 uses
  %i.hg = mul i64 %i.hf, %i.he
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.hg
  %i.hi = load i64, ptr %i.gz, align 8, !tbaa !61
  %i.hj = mul i64 %i.hi, %i.hf
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0174.0, i64 %i.hj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hh, ptr align 1 %i.hk, i64 %i.hf, i1 false)
  %i.hl = add i64 %.0205, 1
  %exitcond219.not = icmp eq i64 %.0205, %.089.in.lcssa
  br i1 %exitcond219.not, label %._crit_edge207, label %bb.bb, !llvm.loop !86

bb.bg:                                            ; preds = %bb.be
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bh:                                            ; preds = %._crit_edge207
  %i.hn = sext i32 %i.gg to i64
  invoke void @_ZN5faiss20pq4_pack_codes_rangeEPKhmmmmmPhmm(ptr noundef %.sroa.0.0, i64 noundef %i.gf, i64 noundef %i.fy, i64 noundef %i.ga, i64 noundef %i.hn, i64 noundef %i.gh, ptr noundef %i.gk, i64 noundef %i.er, i64 noundef %i.gl)
          to label %bb.bi unwind label %bb.ba

bb.bi:                                            ; preds = %bb.bh
  %i.ho = load ptr, ptr %0, align 8, !tbaa !9
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 384
  %i.hq = load ptr, ptr %i.hp, align 8
  invoke void %i.hq(ptr noundef nonnull align 8 dereferenceable(352) %0, i64 noundef %i.fc, i64 noundef %i.fy, i64 noundef %i.fl, ptr noundef %.sroa.0.0)
          to label %bb.bj unwind label %bb.ba

bb.bj:                                            ; preds = %bb.bi
  call void @free(ptr noundef %.sroa.0.0) #26
  %.pre = load ptr, ptr %5, align 8, !tbaa !32
  br label %bb.bk

bb.bk:                                            ; preds = %.critedge, %bb.bj
  %i.hr = phi ptr [ %i.ey, %.critedge ], [ %.pre, %bb.bj ]
  %.090.neg = xor i64 %.089.in.lcssa, -1
  %i.hs = icmp slt i64 %.089.lcssa, %1
  br i1 %i.hs, label %bb.as, label %._crit_edge211.thread

._crit_edge211.thread:                            ; preds = %bb.bk
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !81
  %i.hv = add nsw i64 %i.hu, %1
  store i64 %i.hv, ptr %i.ht, align 8, !tbaa !81
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bg, %bb.ba
  %.pn121 = phi { ptr, i32 } [ %i.hm, %bb.bg ], [ %i.gn, %bb.ba ]
  call void @free(ptr noundef %.sroa.0.0) #26
  br label %.body.thread

._crit_edge211:                                   ; preds = %.preheader200
  %.not.i.i.i = icmp eq ptr %.sroa.0163.0246260, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %._crit_edge211.thread, %._crit_edge211
  %i.hw = ptrtoint ptr %.sroa.18.0251259 to i64
  %i.hx = ptrtoint ptr %.sroa.0163.0246260 to i64
  %i.hy = sub i64 %i.hw, %i.hx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0163.0246260, i64 noundef %i.hy) #39
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge211, %bb.bm
  call void @_ZN5faiss12DirectMapAddD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @free(ptr noundef %.sroa.0174.0) #26
  %i.hz = load ptr, ptr %5, align 8, !tbaa !32    ; 2 uses
  %.not.i = icmp eq ptr %i.hz, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.hz) #39
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit
  ret void

.body:                                            ; preds = %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEZN5faiss16IndexIVFFastScan12add_with_idsElPKfPKlE3$_0EvT_SE_T0_.exit"
  %i.ia = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i151 = icmp eq ptr %.sroa.0163.0246260, null
  br i1 %.not.i.i.i151, label %_ZNSt6vectorIlSaIlEED2Ev.exit152, label %.body.thread

.body.thread:                                     ; preds = %.body.thread262, %bb.bl, %bb.az, %.body
  %.sroa.18.0251257 = phi ptr [ %.sroa.18.0251259, %.body ], [ %.sroa.18.0251259, %bb.az ], [ %.sroa.18.0251259, %bb.bl ], [ %i.dg, %.body.thread262 ]
  %.sroa.0163.0247 = phi ptr [ %.sroa.0163.0246260, %.body ], [ %.sroa.0163.0246260, %bb.az ], [ %.sroa.0163.0246260, %bb.bl ], [ %i.df, %.body.thread262 ] ; 2 uses
  %.pn121.pn.pn.pn198 = phi { ptr, i32 } [ %i.ia, %.body ], [ %i.gm, %bb.az ], [ %.pn121, %bb.bl ], [ %i.eh, %.body.thread262 ]
  %i.ib = ptrtoint ptr %.sroa.18.0251257 to i64
  %i.ic = ptrtoint ptr %.sroa.0163.0247 to i64
  %i.id = sub i64 %i.ib, %i.ic
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0163.0247, i64 noundef %i.id) #39
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit152

_ZNSt6vectorIlSaIlEED2Ev.exit152:                 ; preds = %bb.ar, %.body, %.body.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  %.pn121.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137 ], [ %i.el, %bb.ar ], [ %i.ia, %.body ], [ %.pn121.pn.pn.pn198, %.body.thread ]
  call void @_ZN5faiss12DirectMapAddD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #26
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit152, %bb.z
  %.pn121.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn121.pn.pn.pn.pn.pn, %_ZNSt6vectorIlSaIlEED2Ev.exit152 ], [ %i.cm, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.y
  %.pn121.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn121.pn.pn.pn.pn.pn.pn, %bb.bn ], [ %i.cl, %bb.y ]
  call void @free(ptr noundef %.sroa.0174.0) #26
  br label %bb.bp

bb.bp:                                            ; preds = %bb.x, %bb.bo, %bb.w
  %.pn121.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cj, %bb.w ], [ %.pn121.pn.pn.pn.pn.pn.pn.pn, %bb.bo ], [ %i.ck, %bb.x ]
  %i.ie = load ptr, ptr %5, align 8, !tbaa !32    ; 2 uses
  %.not.i153 = icmp eq ptr %i.ie, null
  br i1 %.not.i153, label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit155, label %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i154

_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i154: ; preds = %bb.bp
  call void @_ZdaPv(ptr noundef nonnull %i.ie) #39
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit155

_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit155: ; preds = %bb.bp, %_ZNKSt14default_deleteIA_lEclIlEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i154
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn121.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn121.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit155 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn121.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn

bb.br:                                            ; preds = %bb.af, %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5faiss5Index15add_with_ids_exElPKvNS_11NumericTypeEPKl(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.7", align 1  ; 5 uses
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1, ptr noundef %2, ptr noundef %4)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.49, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss5Index15add_with_ids_exElPKvNS_11NumericTypeEPKl, ptr noundef nonnull @.str.46, i32 noundef 192)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #38
          to label %bb.i unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %5, align 8, !tbaa !11     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !17
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn13 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #26
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  %.pn12 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn13, %bb.g ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
end_hunk_0
begin_hunk_1_@_ZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS0_15CoarseQuantizedEiRKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFE:bb.a
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !182
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ai = phi ptr [ %i.ah, %bb.l ], [ null, %bb.k ]
  store ptr %i.ai, ptr %i.f, align 8, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !107
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.am = load i64, ptr %i.al, align 8, !tbaa !75
  %i.an = mul i64 %i.am, %i.ak
  store i64 %i.an, ptr %i.g, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.ao = and i64 %1, 6917529027641081856
  %.not60 = icmp eq i64 %i.ao, 0
  %i.ap = shl i64 %1, 3
  %i.aq = select i1 %.not60, i64 %i.ap, i64 -1
  %i.ar = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aq) #40
          to label %bb.n unwind label %bb.ae      ; 4 uses

bb.n:                                             ; preds = %bb.m
  store ptr %i.ar, ptr %13, align 8, !tbaa !97
  %i.as = load ptr, ptr %0, align 8, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 352
  %i.au = load ptr, ptr %i.at, align 8
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(352) %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull %i.ar, ptr noundef nonnull align 8 dereferenceable(26) %8)
          to label %bb.o unwind label %.thread

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  %i.av = load ptr, ptr %0, align 8, !tbaa !9
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 336
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = invoke noundef zeroext i1 %i.ax(ptr noundef nonnull align 8 dereferenceable(352) %0)
          to label %bb.p unwind label %.thread190

bb.p:                                             ; preds = %bb.o
  %i.az = xor i1 %i.ay, true
  %i.ba = zext i1 %i.az to i8
  store i8 %i.ba, ptr %i.h, align 1, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  %i.bb = load i64, ptr %6, align 8, !tbaa !94    ; 4 uses
  store i64 %i.bb, ptr %i.i, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.bc = icmp sgt i64 %1, 0
  br i1 %i.bc, label %.preheader.lr.ph, label %._crit_edge130.thread

.preheader.lr.ph:                                 ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 16
  %.not137 = icmp eq i64 %i.bb, 0
  br i1 %.not137, label %._crit_edge130.thread, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.pre152 = phi i64 [ %.pre153, %._crit_edge ], [ %i.bb, %.preheader.lr.ph ] ; 2 uses
  %i.bg = phi i64 [ %i.dh, %._crit_edge ], [ %1, %.preheader.lr.ph ]
  %i.bh = phi i64 [ %i.di, %._crit_edge ], [ %i.bb, %.preheader.lr.ph ] ; 2 uses
  %.val18.i.i.i142 = phi ptr [ %.val18.i.i.i143, %._crit_edge ], [ null, %.preheader.lr.ph ] ; 2 uses
  %i.bi = phi ptr [ %i.dj, %._crit_edge ], [ null, %.preheader.lr.ph ] ; 2 uses
  %i.bj = phi ptr [ %i.dk, %._crit_edge ], [ null, %.preheader.lr.ph ] ; 2 uses
  %i.bk = phi i64 [ %i.dl, %._crit_edge ], [ 1, %.preheader.lr.ph ]
  %.044129 = phi i64 [ %i.dm, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.045128 = phi i64 [ %.146.lcssa, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.not138 = icmp eq i64 %i.bk, 0
  br i1 %.not138, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bl = trunc i64 %.044129 to i32               ; 2 uses
  br label %bb.af

._crit_edge130.thread:                            ; preds = %bb.p, %.preheader.lr.ph
  %i.bm = getelementptr inbounds nuw i8, ptr %14, i64 8
  br label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEEZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EvT_SO_T0_.exit"

._crit_edge130:                                   ; preds = %._crit_edge
  %.val.pre = load ptr, ptr %14, align 8, !tbaa !210 ; 17 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  %i.bo = icmp eq ptr %.val.pre, %i.dk
  br i1 %i.bo, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEEZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EvT_SO_T0_.exit", label %bb.q

bb.q:                                             ; preds = %._crit_edge130
  %i.bp = ptrtoint ptr %i.dk to i64
  %i.bq = ptrtoint ptr %.val.pre to i64           ; 2 uses
  %i.br = sub i64 %i.bp, %i.bq                    ; 2 uses
  %i.bs = sdiv exact i64 %i.br, 12
  %i.bt = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bs, i1 true)
  %i.bu = shl nuw nsw i64 %i.bt, 1
  %i.bv = xor i64 %i.bu, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEElNS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_SR_T0_T1_"(ptr %.val.pre, ptr %i.dk, i64 noundef %i.bv)
  %i.bw = icmp sgt i64 %i.br, 192
  br i1 %i.bw, label %.lr.ph.i.i.i.i, label %.preheader.i28.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.q
  %i.bx = getelementptr i8, ptr %.val.pre, i64 4
  %scevgep.i.i.i = getelementptr i8, ptr %.val.pre, i64 12
  br label %bb.r

bb.r:                                             ; preds = %bb.w, %.lr.ph.i.i.i.i
  %.sroa.0.019.i.idx.i.i.i = phi i64 [ 12, %.lr.ph.i.i.i.i ], [ %.sroa.0.019.i.add.i.i.i, %bb.w ] ; 4 uses
  %.pn18.i.i.i.i = phi ptr [ %.val.pre, %.lr.ph.i.i.i.i ], [ %.sroa.0.019.i.ptr.i.i.i, %bb.w ] ; 4 uses
  %.sroa.0.019.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %.val.pre, i64 %.sroa.0.019.i.idx.i.i.i ; 5 uses
  %i.by = getelementptr i8, ptr %.pn18.i.i.i.i, i64 16
  %.val2.i.i.i.i.i = load i32, ptr %i.by, align 4, !tbaa !212 ; 4 uses
  %.val3.i.i.i.i.i = load i32, ptr %i.bx, align 4, !tbaa !212
  %i.bz = icmp slt i32 %.val2.i.i.i.i.i, %.val3.i.i.i.i.i
  br i1 %i.bz, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %.sroa.0.0.copyload = load <3 x i32>, ptr %.sroa.0.019.i.ptr.i.i.i, align 4
  %i.ca = icmp samesign ugt i64 %.sroa.0.019.i.idx.i.i.i, 12
  br i1 %i.ca, label %bb.t, label %bb.u, !prof !66

bb.t:                                             ; preds = %bb.s
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 4 dereferenceable(1) %.val.pre, i64 %.sroa.0.019.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEESM_ET0_T_SO_SN_.exit.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cb, ptr noundef nonnull readonly align 4 dereferenceable(12) %.val.pre, i64 12, i1 false), !tbaa.struct !214
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEESM_ET0_T_SO_SN_.exit.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEESM_ET0_T_SO_SN_.exit.i.i.i.i: ; preds = %bb.u, %bb.t
  store <3 x i32> %.sroa.0.0.copyload, ptr %.val.pre, align 4
  br label %bb.w

bb.v:                                             ; preds = %bb.r
  %.sroa.06.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.0.019.i.ptr.i.i.i, align 4, !tbaa !98
  %.sroa.5.0..val3.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i, i64 20
  %.sroa.5.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.5.0..val3.sroa_idx.i.i.i.i.i, align 4, !tbaa !98
  %i.cc = getelementptr i8, ptr %.pn18.i.i.i.i, i64 4
  %.val3.i11.i.i.i.i.i = load i32, ptr %i.cc, align 4, !tbaa !212
  %i.cd = icmp slt i32 %.val2.i.i.i.i.i, %.val3.i11.i.i.i.i.i
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.v, %.lr.ph.i.i.i.i.i
  %.sroa.010.012.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.019.i.ptr.i.i.i, %bb.v ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.010.012.i.i.i.i.i, i64 -12 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.010.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.0.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !214
  %i.ce = getelementptr i8, ptr %.sroa.010.012.i.i.i.i.i, i64 -20
  %.val3.i.i.i.i.i.i = load i32, ptr %i.ce, align 4, !tbaa !212
  %i.cf = icmp slt i32 %.val2.i.i.i.i.i, %.val3.i.i.i.i.i.i
  br i1 %i.cf, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i.i.i.i", !llvm.loop !215

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i, %bb.v
  %.sroa.010.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.019.i.ptr.i.i.i, %bb.v ], [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  store i32 %.sroa.06.0.copyload.i.i.i.i.i, ptr %.sroa.010.0.lcssa.i.i.i.i.i, align 4, !tbaa !98
  %.sroa.4.0..val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i.i.i.i.i, i64 4
  store i32 %.val2.i.i.i.i.i, ptr %.sroa.4.0..val.sroa_idx.i.i.i.i.i, align 4, !tbaa !98
  %.sroa.5.0..val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i.i.i.i.i, i64 8
  store i32 %.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.5.0..val.sroa_idx.i.i.i.i.i, align 4, !tbaa !98
  br label %bb.w

bb.w:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEESM_ET0_T_SO_SN_.exit.i.i.i.i
  %.sroa.0.019.i.add.i.i.i = add nuw nsw i64 %.sroa.0.019.i.idx.i.i.i, 12 ; 2 uses
  %i.cg = icmp eq i64 %.sroa.0.019.i.add.i.i.i, 192
  br i1 %i.cg, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_SR_T0_.exit.i.i.i", label %bb.r, !llvm.loop !216

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_SR_T0_.exit.i.i.i": ; preds = %bb.w
  %i.ch = getelementptr inbounds nuw i8, ptr %.val.pre, i64 192 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.dk
  br i1 %i.ci, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEEZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EvT_SO_T0_.exit", label %.lr.ph.i15.i.i.i

.lr.ph.i15.i.i.i:                                 ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_SR_T0_.exit.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i20.i.i.i"
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.co, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i20.i.i.i" ], [ %i.ch, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_SR_T0_.exit.i.i.i" ] ; 7 uses
  %.sroa.4.0..val3.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 4
  %.sroa.4.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.4.0..val3.sroa_idx.i.i.i.i.i, align 4, !tbaa !98 ; 2 uses
  %i.cj = load <2 x i32>, ptr %.sroa.0.06.i.i.i.i, align 4, !tbaa !98
  %.sroa.5.0..val3.sroa_idx.i.i17.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 8
  %.sroa.5.0.copyload.i.i18.i.i.i = load i32, ptr %.sroa.5.0..val3.sroa_idx.i.i17.i.i.i, align 4, !tbaa !98
  %i.ck = getelementptr i8, ptr %.sroa.0.06.i.i.i.i, i64 -8
  %.val3.i11.i.i19.i.i.i = load i32, ptr %i.ck, align 4, !tbaa !212
  %i.cl = icmp slt i32 %.sroa.4.0.copyload.i.i.i.i.i, %.val3.i11.i.i19.i.i.i
  br i1 %i.cl, label %.lr.ph.i.i24.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i20.i.i.i"

.lr.ph.i.i24.i.i.i:                               ; preds = %.lr.ph.i15.i.i.i, %.lr.ph.i.i24.i.i.i
  %.sroa.010.012.i.i25.i.i.i = phi ptr [ %.sroa.0.0.i.i26.i.i.i, %.lr.ph.i.i24.i.i.i ], [ %.sroa.0.06.i.i.i.i, %.lr.ph.i15.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i26.i.i.i = getelementptr inbounds i8, ptr %.sroa.010.012.i.i25.i.i.i, i64 -12 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.010.012.i.i25.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.0.i.i26.i.i.i, i64 12, i1 false), !tbaa.struct !214
  %i.cm = getelementptr i8, ptr %.sroa.010.012.i.i25.i.i.i, i64 -20
  %.val3.i.i.i27.i.i.i = load i32, ptr %i.cm, align 4, !tbaa !212
  %i.cn = icmp slt i32 %.sroa.4.0.copyload.i.i.i.i.i, %.val3.i.i.i27.i.i.i
  br i1 %i.cn, label %.lr.ph.i.i24.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i20.i.i.i", !llvm.loop !215

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i20.i.i.i": ; preds = %.lr.ph.i.i24.i.i.i, %.lr.ph.i15.i.i.i
  %.sroa.010.0.lcssa.i.i21.i.i.i = phi ptr [ %.sroa.0.06.i.i.i.i, %.lr.ph.i15.i.i.i ], [ %.sroa.0.0.i.i26.i.i.i, %.lr.ph.i.i24.i.i.i ] ; 2 uses
  store <2 x i32> %i.cj, ptr %.sroa.010.0.lcssa.i.i21.i.i.i, align 4, !tbaa !98
  %.sroa.5.0..val.sroa_idx.i.i23.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i.i21.i.i.i, i64 8
  store i32 %.sroa.5.0.copyload.i.i18.i.i.i, ptr %.sroa.5.0..val.sroa_idx.i.i23.i.i.i, align 4, !tbaa !98
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 12 ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.dk
  br i1 %i.cp, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEEZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EvT_SO_T0_.exit", label %.lr.ph.i15.i.i.i, !llvm.loop !217

.preheader.i28.i.i.i:                             ; preds = %bb.q
  %.sroa.0.017.i29.i.i.i = getelementptr inbounds nuw i8, ptr %.val.pre, i64 12 ; 2 uses
  %i.cq = icmp eq ptr %.sroa.0.017.i29.i.i.i, %i.dk
  br i1 %i.cq, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEEZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EvT_SO_T0_.exit", label %.lr.ph.i30.i.i.i

.lr.ph.i30.i.i.i:                                 ; preds = %.preheader.i28.i.i.i
  %i.cr = getelementptr i8, ptr %.val.pre, i64 4
  br label %bb.x

bb.x:                                             ; preds = %bb.ad, %.lr.ph.i30.i.i.i
  %.sroa.0.019.i31.i.i.i = phi ptr [ %.sroa.0.017.i29.i.i.i, %.lr.ph.i30.i.i.i ], [ %.sroa.0.0.i43.i.i.i, %bb.ad ] ; 7 uses
  %.pn18.i32.i.i.i = phi ptr [ %.val.pre, %.lr.ph.i30.i.i.i ], [ %.sroa.0.019.i31.i.i.i, %bb.ad ] ; 5 uses
  %i.cs = getelementptr i8, ptr %.pn18.i32.i.i.i, i64 16
  %.val2.i.i33.i.i.i = load i32, ptr %i.cs, align 4, !tbaa !212 ; 4 uses
  %.val3.i.i34.i.i.i = load i32, ptr %i.cr, align 4, !tbaa !212
  %i.ct = icmp slt i32 %.val2.i.i33.i.i.i, %.val3.i.i34.i.i.i
  br i1 %i.ct, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %.sroa.0220.0.copyload = load <3 x i32>, ptr %.sroa.0.019.i31.i.i.i, align 4
  %i.cu = ptrtoint ptr %.sroa.0.019.i31.i.i.i to i64
  %i.cv = sub i64 %i.cu, %i.bq                    ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 12
  br i1 %i.cw, label %bb.z, label %bb.aa, !prof !66

bb.z:                                             ; preds = %bb.y
  %19 = getelementptr inbounds nuw i8, ptr %.pn18.i32.i.i.i, i64 24
  %.neg23.i49.i.i.i = udiv exact i64 %i.cv, 12
  %.neg23.neg.i50.i.i.i = sub nsw i64 0, %.neg23.i49.i.i.i
  %20 = getelementptr inbounds [12 x i8], ptr %19, i64 %.neg23.neg.i50.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %20, ptr noundef nonnull align 4 dereferenceable(1) %.val.pre, i64 %i.cv, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEESM_ET0_T_SO_SN_.exit.i48.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.cx = icmp eq i64 %i.cv, 12
  br i1 %i.cx, label %bb.ab, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEESM_ET0_T_SO_SN_.exit.i48.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.cy = getelementptr inbounds nuw i8, ptr %.pn18.i32.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cy, ptr noundef nonnull readonly align 4 dereferenceable(12) %.val.pre, i64 12, i1 false), !tbaa.struct !214
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEESM_ET0_T_SO_SN_.exit.i48.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEESM_ET0_T_SO_SN_.exit.i48.i.i.i: ; preds = %bb.ab, %bb.aa, %bb.z
  store <3 x i32> %.sroa.0220.0.copyload, ptr %.val.pre, align 4
  br label %bb.ad

bb.ac:                                            ; preds = %bb.x
  %.sroa.06.0.copyload.i.i35.i.i.i = load i32, ptr %.sroa.0.019.i31.i.i.i, align 4, !tbaa !98
  %.sroa.5.0..val3.sroa_idx.i.i36.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i32.i.i.i, i64 20
  %.sroa.5.0.copyload.i.i37.i.i.i = load i32, ptr %.sroa.5.0..val3.sroa_idx.i.i36.i.i.i, align 4, !tbaa !98
  %i.cz = getelementptr i8, ptr %.pn18.i32.i.i.i, i64 4
  %.val3.i11.i.i38.i.i.i = load i32, ptr %i.cz, align 4, !tbaa !212
  %i.da = icmp slt i32 %.val2.i.i33.i.i.i, %.val3.i11.i.i38.i.i.i
  br i1 %i.da, label %.lr.ph.i.i44.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i39.i.i.i"

.lr.ph.i.i44.i.i.i:                               ; preds = %bb.ac, %.lr.ph.i.i44.i.i.i
  %.sroa.010.012.i.i45.i.i.i = phi ptr [ %.sroa.0.0.i.i46.i.i.i, %.lr.ph.i.i44.i.i.i ], [ %.sroa.0.019.i31.i.i.i, %bb.ac ] ; 3 uses
  %.sroa.0.0.i.i46.i.i.i = getelementptr inbounds i8, ptr %.sroa.010.012.i.i45.i.i.i, i64 -12 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.010.012.i.i45.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.0.i.i46.i.i.i, i64 12, i1 false), !tbaa.struct !214
  %i.db = getelementptr i8, ptr %.sroa.010.012.i.i45.i.i.i, i64 -20
  %.val3.i.i.i47.i.i.i = load i32, ptr %i.db, align 4, !tbaa !212
  %i.dc = icmp slt i32 %.val2.i.i33.i.i.i, %.val3.i.i.i47.i.i.i
  br i1 %i.dc, label %.lr.ph.i.i44.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i39.i.i.i", !llvm.loop !215

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i39.i.i.i": ; preds = %.lr.ph.i.i44.i.i.i, %bb.ac
  %.sroa.010.0.lcssa.i.i40.i.i.i = phi ptr [ %.sroa.0.019.i31.i.i.i, %bb.ac ], [ %.sroa.0.0.i.i46.i.i.i, %.lr.ph.i.i44.i.i.i ] ; 3 uses
  store i32 %.sroa.06.0.copyload.i.i35.i.i.i, ptr %.sroa.010.0.lcssa.i.i40.i.i.i, align 4, !tbaa !98
  %.sroa.4.0..val.sroa_idx.i.i41.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i.i40.i.i.i, i64 4
  store i32 %.val2.i.i33.i.i.i, ptr %.sroa.4.0..val.sroa_idx.i.i41.i.i.i, align 4, !tbaa !98
  %.sroa.5.0..val.sroa_idx.i.i42.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i.i40.i.i.i, i64 8
  store i32 %.sroa.5.0.copyload.i.i37.i.i.i, ptr %.sroa.5.0..val.sroa_idx.i.i42.i.i.i, align 4, !tbaa !98
  br label %bb.ad

bb.ad:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i39.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEESM_ET0_T_SO_SN_.exit.i48.i.i.i
  %.sroa.0.0.i43.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i31.i.i.i, i64 12 ; 2 uses
  %i.dd = icmp eq ptr %.sroa.0.0.i43.i.i.i, %i.dk
  br i1 %i.dd, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEEZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EvT_SO_T0_.exit", label %bb.x, !llvm.loop !216

bb.ae:                                            ; preds = %bb.m
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit101

.thread:                                          ; preds = %bb.n
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i100

.thread190:                                       ; preds = %bb.o
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  br label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i100

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit
  %.pre146 = load i64, ptr %i.a, align 8, !tbaa !61
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.pre153 = phi i64 [ %.pre152, %.preheader ], [ %.pre155, %._crit_edge.loopexit ]
  %i.dh = phi i64 [ %i.bg, %.preheader ], [ %.pre146, %._crit_edge.loopexit ] ; 2 uses
  %i.di = phi i64 [ %i.bh, %.preheader ], [ %i.eo, %._crit_edge.loopexit ]
  %.val18.i.i.i143 = phi ptr [ %.val18.i.i.i142, %.preheader ], [ %.val18.i.i.i145, %._crit_edge.loopexit ]
  %i.dj = phi ptr [ %i.bi, %.preheader ], [ %i.ep, %._crit_edge.loopexit ]
  %i.dk = phi ptr [ %i.bj, %.preheader ], [ %i.eq, %._crit_edge.loopexit ] ; 8 uses
  %i.dl = phi i64 [ 0, %.preheader ], [ %i.eo, %._crit_edge.loopexit ]
  %.146.lcssa = phi i64 [ %.045128, %.preheader ], [ %i.er, %._crit_edge.loopexit ]
  %i.dm = add nuw nsw i64 %.044129, 1             ; 2 uses
  %i.dn = icmp slt i64 %i.dm, %i.dh
  br i1 %i.dn, label %.preheader, label %._crit_edge130, !llvm.loop !218

bb.af:                                            ; preds = %.lr.ph, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit
  %.pre154 = phi i64 [ %.pre152, %.lr.ph ], [ %.pre155, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit ] ; 3 uses
  %i.do = phi i64 [ %i.bh, %.lr.ph ], [ %i.eo, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit ] ; 2 uses
  %.val18.i.i.i = phi ptr [ %.val18.i.i.i142, %.lr.ph ], [ %.val18.i.i.i145, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit ] ; 7 uses
  %i.dp = phi ptr [ %i.bi, %.lr.ph ], [ %i.ep, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit ] ; 5 uses
  %i.dq = phi ptr [ %i.bj, %.lr.ph ], [ %i.eq, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit ] ; 6 uses
  %.043127 = phi i64 [ 0, %.lr.ph ], [ %i.es, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit ] ; 2 uses
  %.146126 = phi i64 [ %.045128, %.lr.ph ], [ %i.er, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit ] ; 2 uses
  %i.dr = load ptr, ptr %i.bd, align 8, !tbaa !101
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.146126
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !61 ; 2 uses
  %i.du = icmp sgt i64 %i.dt, -1
  br i1 %i.du, label %bb.ag, label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit

bb.ag:                                            ; preds = %bb.af
  %i.dv = trunc i64 %i.dt to i32                  ; 2 uses
  %i.dw = trunc i64 %.043127 to i32               ; 2 uses
  %.not.i.i = icmp eq ptr %i.dq, %i.dp
  br i1 %.not.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i32 %i.bl, ptr %i.dq, align 4, !tbaa !98
  %.sroa.6109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store i32 %i.dv, ptr %.sroa.6109.0..sroa_idx, align 4, !tbaa !98
  %.sroa.7112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store i32 %i.dw, ptr %.sroa.7112.0..sroa_idx, align 4, !tbaa !98
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 12 ; 2 uses
  store ptr %i.dx, ptr %i.be, align 8, !tbaa !220
  br label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.dy = ptrtoint ptr %i.dp to i64
  %i.dz = ptrtoint ptr %.val18.i.i.i to i64
  %i.ea = sub i64 %i.dy, %i.dz                    ; 6 uses
  %i.eb = icmp eq i64 %i.ea, 9223372036854775800
  br i1 %i.eb, label %bb.aj, label %_ZNKSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE12_M_check_lenEmPKc.exit.i.i.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #38
          to label %.noexc unwind label %.loopexit.split-lp120

.noexc:                                           ; preds = %bb.aj
  unreachable

_ZNKSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ai
  %i.ec = sdiv exact i64 %i.ea, 12                ; 3 uses
  %i.ed = icmp eq ptr %i.dp, %.val18.i.i.i
  %.sroa.speculated.i.i.i.i = select i1 %i.ed, i64 1, i64 %i.ec
  %i.ee = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ec ; 2 uses
  %i.ef = icmp ult i64 %i.ee, %i.ec
  %i.eg = call i64 @llvm.umin.i64(i64 %i.ee, i64 768614336404564650)
  %i.eh = select i1 %i.ef, i64 768614336404564650, i64 %i.eg ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.eh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ei = mul nuw nsw i64 %i.eh, 12
  %i.ej = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ei) #40
          to label %.noexc87 unwind label %.loopexit119 ; 5 uses

.noexc87:                                         ; preds = %_ZNKSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 %i.ea ; 4 uses
  store i32 %i.bl, ptr %i.ek, align 4, !tbaa !98
  %.sroa.6109.0..sroa_idx110 = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  store i32 %i.dv, ptr %.sroa.6109.0..sroa_idx110, align 4, !tbaa !98
  %.sroa.7112.0..sroa_idx113 = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i32 %i.dw, ptr %.sroa.7112.0..sroa_idx113, align 4, !tbaa !98
  %i.el = icmp sgt i64 %i.ea, 0
  br i1 %i.el, label %bb.ak, label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit20.i.i.i

bb.ak:                                            ; preds = %.noexc87
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ej, ptr align 4 %.val18.i.i.i, i64 %i.ea, i1 false)
  br label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit20.i.i.i

_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit20.i.i.i: ; preds = %bb.ak, %.noexc87
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 12 ; 2 uses
  %.not.i21.i.i.i = icmp eq ptr %.val18.i.i.i, null
  br i1 %.not.i21.i.i.i, label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit20.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val18.i.i.i, i64 noundef %i.ea) #39
  %.pre.pre = load i64, ptr %i.i, align 8, !tbaa !61
  br label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i

_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i: ; preds = %bb.al, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit20.i.i.i
  %.pre = phi i64 [ %.pre.pre, %bb.al ], [ %.pre154, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit20.i.i.i ] ; 2 uses
  store ptr %i.ej, ptr %14, align 8, !tbaa !222
  store ptr %i.em, ptr %i.be, align 8, !tbaa !220
  %i.en = getelementptr inbounds nuw [12 x i8], ptr %i.ej, i64 %i.eh ; 2 uses
  store ptr %i.en, ptr %i.bf, align 8, !tbaa !223
  br label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit

.loopexit119:                                     ; preds = %_ZNKSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit121 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit.split-lp120:                            ; preds = %bb.aj
  %lpad.loopexit.split-lp122 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE9push_backEOSF_.exit: ; preds = %bb.ah, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i, %bb.af
  %.pre155 = phi i64 [ %.pre154, %bb.ah ], [ %.pre, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i ], [ %.pre154, %bb.af ] ; 2 uses
  %i.eo = phi i64 [ %i.do, %bb.ah ], [ %.pre, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i ], [ %i.do, %bb.af ] ; 4 uses
  %.val18.i.i.i145 = phi ptr [ %.val18.i.i.i, %bb.ah ], [ %i.ej, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i ], [ %.val18.i.i.i, %bb.af ] ; 2 uses
  %i.ep = phi ptr [ %i.dp, %bb.ah ], [ %i.en, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i ], [ %i.dp, %bb.af ] ; 2 uses
  %i.eq = phi ptr [ %i.dx, %bb.ah ], [ %i.em, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS1_15CoarseQuantizedEiRKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFEE2QCSaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i ], [ %i.dq, %bb.af ] ; 2 uses
  %i.er = add i64 %.146126, 1                     ; 2 uses
  %i.es = add nuw i64 %.043127, 1                 ; 2 uses
  %i.et = icmp ult i64 %i.es, %i.eo
  br i1 %i.et, label %bb.af, label %._crit_edge.loopexit, !llvm.loop !224

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEEZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EvT_SO_T0_.exit": ; preds = %bb.ad, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i20.i.i.i", %._crit_edge130.thread, %.preheader.i28.i.i.i, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_SR_T0_.exit.i.i.i", %._crit_edge130
  %i.eu = phi ptr [ %i.bm, %._crit_edge130.thread ], [ %i.bn, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_T0_.exit.i20.i.i.i" ], [ %i.bn, %._crit_edge130 ], [ %i.bn, %.preheader.i28.i.i.i ], [ %i.bn, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_14ElPKflPfPlRKNS3_15CoarseQuantizedEiRKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFEE2QCSt6vectorISH_SaISH_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_14ElS5_lS6_S7_SA_iSD_SG_E3$_0EEEvT_SR_T0_.exit.i.i.i" ], [ %i.bn, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %.val75131 = load ptr, ptr %14, align 8, !tbaa !222 ; 3 uses
  %.val76132 = load ptr, ptr %i.eu, align 8, !tbaa !220 ; 2 uses
  %.not139 = icmp eq ptr %.val76132, %.val75131
  br i1 %.not139, label %._crit_edge136, label %.lr.ph135

end_hunk_1
begin_hunk_2_@_ZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS_24SIMDResultHandlerToFloatERKNS0_15CoarseQuantizedEPmS8_RKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFERNS_19FastScanCodeScannerE:bb.a

bb.q:                                             ; preds = %bb.p
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  %i.az = trunc i64 %.0134512.us to i32           ; 2 uses
  %.not.i.i.us = icmp eq ptr %.sroa.15293.1508.us, %.sroa.22.1509.us
  br i1 %.not.i.i.us, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %i.at, ptr %.sroa.15293.1508.us, align 4, !tbaa !98
  %.sroa.6287.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.sroa.15293.1508.us, i64 4
  store i32 %i.ay, ptr %.sroa.6287.0..sroa_idx.us, align 4, !tbaa !98
  %.sroa.7.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.sroa.15293.1508.us, i64 8
  store i32 %i.az, ptr %.sroa.7.0..sroa_idx.us, align 4, !tbaa !98
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.15293.1508.us, i64 12
  br label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE9push_backEOSI_.exit.us

bb.s:                                             ; preds = %bb.q
  %i.bb = ptrtoint ptr %.sroa.22.1509.us to i64
  %i.bc = ptrtoint ptr %.sroa.0292.1510.us to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 6 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775800
  br i1 %i.be, label %.split.us, label %_ZNKSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE12_M_check_lenEmPKc.exit.i.i.i.us

_ZNKSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE12_M_check_lenEmPKc.exit.i.i.i.us: ; preds = %bb.s
  %i.bf = sdiv exact i64 %i.bd, 12                ; 3 uses
  %i.bg = icmp eq ptr %.sroa.22.1509.us, %.sroa.0292.1510.us
  %.sroa.speculated.i.i.i.i.us = select i1 %i.bg, i64 1, i64 %i.bf
  %i.bh = add nsw i64 %.sroa.speculated.i.i.i.i.us, %i.bf ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bf
  %i.bj = call i64 @llvm.umin.i64(i64 %i.bh, i64 768614336404564650)
  %i.bk = select i1 %i.bi, i64 768614336404564650, i64 %i.bj ; 3 uses
  %.not.i.i.i.i.us = icmp ne i64 %i.bk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.us)
  %i.bl = mul nuw nsw i64 %i.bk, 12
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #40
          to label %.noexc186.us unwind label %.loopexit364.split.us ; 4 uses

.noexc186.us:                                     ; preds = %_ZNKSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE12_M_check_lenEmPKc.exit.i.i.i.us
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %i.bd ; 4 uses
  store i32 %i.at, ptr %i.bn, align 4, !tbaa !98
  %.sroa.6287.0..sroa_idx288.us = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i32 %i.ay, ptr %.sroa.6287.0..sroa_idx288.us, align 4, !tbaa !98
  %.sroa.7.0..sroa_idx290.us = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i32 %i.az, ptr %.sroa.7.0..sroa_idx290.us, align 4, !tbaa !98
  %i.bo = icmp sgt i64 %i.bd, 0
  br i1 %i.bo, label %bb.t, label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE11_S_relocateEPSI_SL_SL_RSJ_.exit20.i.i.i.us

bb.t:                                             ; preds = %.noexc186.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bm, ptr align 4 %.sroa.0292.1510.us, i64 %i.bd, i1 false)
  br label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE11_S_relocateEPSI_SL_SL_RSJ_.exit20.i.i.i.us

_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE11_S_relocateEPSI_SL_SL_RSJ_.exit20.i.i.i.us: ; preds = %bb.t, %.noexc186.us
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %.not.i21.i.i.i.us = icmp eq ptr %.sroa.0292.1510.us, null
  br i1 %.not.i21.i.i.i.us, label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE17_M_realloc_insertIJSI_EEEvN9__gnu_cxx17__normal_iteratorIPSI_SK_EEDpOT_.exit.i.i.us, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE11_S_relocateEPSI_SL_SL_RSJ_.exit20.i.i.i.us
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0292.1510.us, i64 noundef %i.bd) #39
  br label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE17_M_realloc_insertIJSI_EEEvN9__gnu_cxx17__normal_iteratorIPSI_SK_EEDpOT_.exit.i.i.us

_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE17_M_realloc_insertIJSI_EEEvN9__gnu_cxx17__normal_iteratorIPSI_SK_EEDpOT_.exit.i.i.us: ; preds = %bb.u, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE11_S_relocateEPSI_SL_SL_RSJ_.exit20.i.i.i.us
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %i.bk
  br label %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE9push_backEOSI_.exit.us

_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE9push_backEOSI_.exit.us: ; preds = %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE17_M_realloc_insertIJSI_EEEvN9__gnu_cxx17__normal_iteratorIPSI_SK_EEDpOT_.exit.i.i.us, %bb.r, %bb.p
  %.sroa.15293.2.us = phi ptr [ %.sroa.15293.1508.us, %bb.p ], [ %i.bp, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE17_M_realloc_insertIJSI_EEEvN9__gnu_cxx17__normal_iteratorIPSI_SK_EEDpOT_.exit.i.i.us ], [ %i.ba, %bb.r ] ; 14 uses
  %.sroa.22.2.us = phi ptr [ %.sroa.22.1509.us, %bb.p ], [ %i.bq, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE17_M_realloc_insertIJSI_EEEvN9__gnu_cxx17__normal_iteratorIPSI_SK_EEDpOT_.exit.i.i.us ], [ %.sroa.22.1509.us, %bb.r ] ; 7 uses
  %.sroa.0292.2.us = phi ptr [ %.sroa.0292.1510.us, %bb.p ], [ %i.bm, %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE17_M_realloc_insertIJSI_EEEvN9__gnu_cxx17__normal_iteratorIPSI_SK_EEDpOT_.exit.i.i.us ], [ %.sroa.0292.1510.us, %bb.r ] ; 24 uses
  %i.br = add i64 %.1137511.us, 1                 ; 2 uses
  %i.bs = add nuw i64 %.0134512.us, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.bs, %i.aq
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.p, !llvm.loop !236

._crit_edge.us:                                   ; preds = %_ZNSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE9push_backEOSI_.exit.us
  %i.bt = add nuw nsw i64 %.0135520.us, 1         ; 2 uses
  %exitcond641.not = icmp eq i64 %i.bt, %1
  br i1 %exitcond641.not, label %._crit_edge521, label %.preheader363.us, !llvm.loop !237

.loopexit364.split.us:                            ; preds = %_ZNKSt6vectorIZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS0_24SIMDResultHandlerToFloatERKNS1_15CoarseQuantizedEPmS9_RKNS0_30FastScanDistancePostProcessingEPKNS0_19SearchParametersIVFERNS0_19FastScanCodeScannerEE2QCSaISI_EE12_M_check_lenEmPKc.exit.i.i.i.us
  %lpad.loopexit366.us = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit223

._crit_edge521:                                   ; preds = %._crit_edge.us
  %i.bu = icmp eq ptr %.sroa.0292.2.us, %.sroa.15293.2.us
  br i1 %i.bu, label %.loopexit361, label %bb.v

bb.v:                                             ; preds = %._crit_edge521
  %i.bv = ptrtoint ptr %.sroa.15293.2.us to i64
  %i.bw = ptrtoint ptr %.sroa.0292.2.us to i64    ; 2 uses
  %i.bx = sub i64 %i.bv, %i.bw                    ; 2 uses
  %i.by = sdiv exact i64 %i.bx, 12
  %i.bz = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.by, i1 true)
  %i.ca = shl nuw nsw i64 %i.bz, 1
  %i.cb = xor i64 %i.ca, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEElNS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_T0_T1_"(ptr %.sroa.0292.2.us, ptr %.sroa.15293.2.us, i64 noundef %i.cb)
  %i.cc = icmp sgt i64 %i.bx, 192
  br i1 %i.cc, label %.lr.ph.i.i.i.i, label %.preheader.i28.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.v
  %i.cd = getelementptr i8, ptr %.sroa.0292.2.us, i64 4
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.0292.2.us, i64 12
  br label %bb.w

bb.w:                                             ; preds = %bb.ab, %.lr.ph.i.i.i.i
  %.sroa.0.019.i.idx.i.i.i = phi i64 [ 12, %.lr.ph.i.i.i.i ], [ %.sroa.0.019.i.add.i.i.i, %bb.ab ] ; 4 uses
  %.pn18.i.i.i.i = phi ptr [ %.sroa.0292.2.us, %.lr.ph.i.i.i.i ], [ %.sroa.0.019.i.ptr.i.i.i, %bb.ab ] ; 4 uses
  %.sroa.0.019.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0292.2.us, i64 %.sroa.0.019.i.idx.i.i.i ; 5 uses
  %i.ce = getelementptr i8, ptr %.pn18.i.i.i.i, i64 16
  %.val2.i.i.i.i.i = load i32, ptr %i.ce, align 4, !tbaa !238 ; 4 uses
  %.val3.i.i.i.i.i = load i32, ptr %i.cd, align 4, !tbaa !238
  %i.cf = icmp slt i32 %.val2.i.i.i.i.i, %.val3.i.i.i.i.i
  br i1 %i.cf, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.copyload = load <3 x i32>, ptr %.sroa.0.019.i.ptr.i.i.i, align 4
  %i.cg = icmp samesign ugt i64 %.sroa.0.019.i.idx.i.i.i, 12
  br i1 %i.cg, label %bb.y, label %bb.z, !prof !66

bb.y:                                             ; preds = %bb.x
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0292.2.us, i64 %.sroa.0.019.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEESP_ET0_T_SR_SQ_.exit.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.ch = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ch, ptr noundef nonnull readonly align 4 dereferenceable(12) %.sroa.0292.2.us, i64 12, i1 false), !tbaa.struct !214
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEESP_ET0_T_SR_SQ_.exit.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEESP_ET0_T_SR_SQ_.exit.i.i.i.i: ; preds = %bb.z, %bb.y
  store <3 x i32> %.sroa.0.0.copyload, ptr %.sroa.0292.2.us, align 4
  br label %bb.ab

bb.aa:                                            ; preds = %bb.w
  %.sroa.06.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.0.019.i.ptr.i.i.i, align 4, !tbaa !98
  %.sroa.5.0..val3.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i, i64 20
  %.sroa.5.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.5.0..val3.sroa_idx.i.i.i.i.i, align 4, !tbaa !98
  %i.ci = getelementptr i8, ptr %.pn18.i.i.i.i, i64 4
  %.val3.i11.i.i.i.i.i = load i32, ptr %i.ci, align 4, !tbaa !238
  %i.cj = icmp slt i32 %.val2.i.i.i.i.i, %.val3.i11.i.i.i.i.i
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.aa, %.lr.ph.i.i.i.i.i
  %.sroa.010.012.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.019.i.ptr.i.i.i, %bb.aa ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.010.012.i.i.i.i.i, i64 -12 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.010.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.0.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !214
  %i.ck = getelementptr i8, ptr %.sroa.010.012.i.i.i.i.i, i64 -20
  %.val3.i.i.i.i.i.i = load i32, ptr %i.ck, align 4, !tbaa !238
  %i.cl = icmp slt i32 %.val2.i.i.i.i.i, %.val3.i.i.i.i.i.i
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i.i.i.i", !llvm.loop !240

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i, %bb.aa
  %.sroa.010.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.019.i.ptr.i.i.i, %bb.aa ], [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  store i32 %.sroa.06.0.copyload.i.i.i.i.i, ptr %.sroa.010.0.lcssa.i.i.i.i.i, align 4, !tbaa !98
  %.sroa.4.0..val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i.i.i.i.i, i64 4
  store i32 %.val2.i.i.i.i.i, ptr %.sroa.4.0..val.sroa_idx.i.i.i.i.i, align 4, !tbaa !98
  %.sroa.5.0..val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i.i.i.i.i, i64 8
  store i32 %.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.5.0..val.sroa_idx.i.i.i.i.i, align 4, !tbaa !98
  br label %bb.ab

bb.ab:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEESP_ET0_T_SR_SQ_.exit.i.i.i.i
  %.sroa.0.019.i.add.i.i.i = add nuw nsw i64 %.sroa.0.019.i.idx.i.i.i, 12 ; 2 uses
  %i.cm = icmp eq i64 %.sroa.0.019.i.add.i.i.i, 192
  br i1 %i.cm, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_T0_.exit.i.i.i", label %bb.w, !llvm.loop !241

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_T0_.exit.i.i.i": ; preds = %bb.ab
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0292.2.us, i64 192 ; 2 uses
  %i.co = icmp eq ptr %i.cn, %.sroa.15293.2.us
  br i1 %i.co, label %.loopexit361, label %.lr.ph.i15.i.i.i

.lr.ph.i15.i.i.i:                                 ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_T0_.exit.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i20.i.i.i"
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.cu, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i20.i.i.i" ], [ %i.cn, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_T0_.exit.i.i.i" ] ; 7 uses
  %.sroa.4.0..val3.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 4
  %.sroa.4.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.4.0..val3.sroa_idx.i.i.i.i.i, align 4, !tbaa !98 ; 2 uses
  %i.cp = load <2 x i32>, ptr %.sroa.0.06.i.i.i.i, align 4, !tbaa !98
  %.sroa.5.0..val3.sroa_idx.i.i17.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 8
  %.sroa.5.0.copyload.i.i18.i.i.i = load i32, ptr %.sroa.5.0..val3.sroa_idx.i.i17.i.i.i, align 4, !tbaa !98
  %i.cq = getelementptr i8, ptr %.sroa.0.06.i.i.i.i, i64 -8
  %.val3.i11.i.i19.i.i.i = load i32, ptr %i.cq, align 4, !tbaa !238
  %i.cr = icmp slt i32 %.sroa.4.0.copyload.i.i.i.i.i, %.val3.i11.i.i19.i.i.i
  br i1 %i.cr, label %.lr.ph.i.i24.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i20.i.i.i"

.lr.ph.i.i24.i.i.i:                               ; preds = %.lr.ph.i15.i.i.i, %.lr.ph.i.i24.i.i.i
  %.sroa.010.012.i.i25.i.i.i = phi ptr [ %.sroa.0.0.i.i26.i.i.i, %.lr.ph.i.i24.i.i.i ], [ %.sroa.0.06.i.i.i.i, %.lr.ph.i15.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i26.i.i.i = getelementptr inbounds i8, ptr %.sroa.010.012.i.i25.i.i.i, i64 -12 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.010.012.i.i25.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.0.i.i26.i.i.i, i64 12, i1 false), !tbaa.struct !214
  %i.cs = getelementptr i8, ptr %.sroa.010.012.i.i25.i.i.i, i64 -20
  %.val3.i.i.i27.i.i.i = load i32, ptr %i.cs, align 4, !tbaa !238
  %i.ct = icmp slt i32 %.sroa.4.0.copyload.i.i.i.i.i, %.val3.i.i.i27.i.i.i
  br i1 %i.ct, label %.lr.ph.i.i24.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i20.i.i.i", !llvm.loop !240

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i20.i.i.i": ; preds = %.lr.ph.i.i24.i.i.i, %.lr.ph.i15.i.i.i
  %.sroa.010.0.lcssa.i.i21.i.i.i = phi ptr [ %.sroa.0.06.i.i.i.i, %.lr.ph.i15.i.i.i ], [ %.sroa.0.0.i.i26.i.i.i, %.lr.ph.i.i24.i.i.i ] ; 2 uses
  store <2 x i32> %i.cp, ptr %.sroa.010.0.lcssa.i.i21.i.i.i, align 4, !tbaa !98
  %.sroa.5.0..val.sroa_idx.i.i23.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i.i21.i.i.i, i64 8
  store i32 %.sroa.5.0.copyload.i.i18.i.i.i, ptr %.sroa.5.0..val.sroa_idx.i.i23.i.i.i, align 4, !tbaa !98
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 12 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %.sroa.15293.2.us
  br i1 %i.cv, label %.loopexit361, label %.lr.ph.i15.i.i.i, !llvm.loop !242

.preheader.i28.i.i.i:                             ; preds = %bb.v
  %.sroa.0.017.i29.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0292.2.us, i64 12 ; 2 uses
  %i.cw = icmp eq ptr %.sroa.0.017.i29.i.i.i, %.sroa.15293.2.us
  br i1 %i.cw, label %.loopexit361, label %.lr.ph.i30.i.i.i

.lr.ph.i30.i.i.i:                                 ; preds = %.preheader.i28.i.i.i
  %i.cx = getelementptr i8, ptr %.sroa.0292.2.us, i64 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ai, %.lr.ph.i30.i.i.i
  %.sroa.0.019.i31.i.i.i = phi ptr [ %.sroa.0.017.i29.i.i.i, %.lr.ph.i30.i.i.i ], [ %.sroa.0.0.i43.i.i.i, %bb.ai ] ; 7 uses
  %.pn18.i32.i.i.i = phi ptr [ %.sroa.0292.2.us, %.lr.ph.i30.i.i.i ], [ %.sroa.0.019.i31.i.i.i, %bb.ai ] ; 5 uses
  %i.cy = getelementptr i8, ptr %.pn18.i32.i.i.i, i64 16
  %.val2.i.i33.i.i.i = load i32, ptr %i.cy, align 4, !tbaa !238 ; 4 uses
  %.val3.i.i34.i.i.i = load i32, ptr %i.cx, align 4, !tbaa !238
  %i.cz = icmp slt i32 %.val2.i.i33.i.i.i, %.val3.i.i34.i.i.i
  br i1 %i.cz, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %.sroa.0933.0.copyload = load <3 x i32>, ptr %.sroa.0.019.i31.i.i.i, align 4
  %i.da = ptrtoint ptr %.sroa.0.019.i31.i.i.i to i64
  %i.db = sub i64 %i.da, %i.bw                    ; 4 uses
  %i.dc = icmp sgt i64 %i.db, 12
  br i1 %i.dc, label %bb.ae, label %bb.af, !prof !66

bb.ae:                                            ; preds = %bb.ad
  %14 = getelementptr inbounds nuw i8, ptr %.pn18.i32.i.i.i, i64 24
  %.neg23.i49.i.i.i = udiv exact i64 %i.db, 12
  %.neg23.neg.i50.i.i.i = sub nsw i64 0, %.neg23.i49.i.i.i
  %15 = getelementptr inbounds [12 x i8], ptr %14, i64 %.neg23.neg.i50.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %15, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0292.2.us, i64 %i.db, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEESP_ET0_T_SR_SQ_.exit.i48.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.dd = icmp eq i64 %i.db, 12
  br i1 %i.dd, label %bb.ag, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEESP_ET0_T_SR_SQ_.exit.i48.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.de = getelementptr inbounds nuw i8, ptr %.pn18.i32.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.de, ptr noundef nonnull readonly align 4 dereferenceable(12) %.sroa.0292.2.us, i64 12, i1 false), !tbaa.struct !214
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEESP_ET0_T_SR_SQ_.exit.i48.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEESP_ET0_T_SR_SQ_.exit.i48.i.i.i: ; preds = %bb.ag, %bb.af, %bb.ae
  store <3 x i32> %.sroa.0933.0.copyload, ptr %.sroa.0292.2.us, align 4
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ac
  %.sroa.06.0.copyload.i.i35.i.i.i = load i32, ptr %.sroa.0.019.i31.i.i.i, align 4, !tbaa !98
  %.sroa.5.0..val3.sroa_idx.i.i36.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i32.i.i.i, i64 20
  %.sroa.5.0.copyload.i.i37.i.i.i = load i32, ptr %.sroa.5.0..val3.sroa_idx.i.i36.i.i.i, align 4, !tbaa !98
  %i.df = getelementptr i8, ptr %.pn18.i32.i.i.i, i64 4
  %.val3.i11.i.i38.i.i.i = load i32, ptr %i.df, align 4, !tbaa !238
  %i.dg = icmp slt i32 %.val2.i.i33.i.i.i, %.val3.i11.i.i38.i.i.i
  br i1 %i.dg, label %.lr.ph.i.i44.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i39.i.i.i"

.lr.ph.i.i44.i.i.i:                               ; preds = %bb.ah, %.lr.ph.i.i44.i.i.i
  %.sroa.010.012.i.i45.i.i.i = phi ptr [ %.sroa.0.0.i.i46.i.i.i, %.lr.ph.i.i44.i.i.i ], [ %.sroa.0.019.i31.i.i.i, %bb.ah ] ; 3 uses
  %.sroa.0.0.i.i46.i.i.i = getelementptr inbounds i8, ptr %.sroa.010.012.i.i45.i.i.i, i64 -12 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.010.012.i.i45.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.0.i.i46.i.i.i, i64 12, i1 false), !tbaa.struct !214
  %i.dh = getelementptr i8, ptr %.sroa.010.012.i.i45.i.i.i, i64 -20
  %.val3.i.i.i47.i.i.i = load i32, ptr %i.dh, align 4, !tbaa !238
  %i.di = icmp slt i32 %.val2.i.i33.i.i.i, %.val3.i.i.i47.i.i.i
  br i1 %i.di, label %.lr.ph.i.i44.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i39.i.i.i", !llvm.loop !240

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i39.i.i.i": ; preds = %.lr.ph.i.i44.i.i.i, %bb.ah
  %.sroa.010.0.lcssa.i.i40.i.i.i = phi ptr [ %.sroa.0.019.i31.i.i.i, %bb.ah ], [ %.sroa.0.0.i.i46.i.i.i, %.lr.ph.i.i44.i.i.i ] ; 3 uses
  store i32 %.sroa.06.0.copyload.i.i35.i.i.i, ptr %.sroa.010.0.lcssa.i.i40.i.i.i, align 4, !tbaa !98
  %.sroa.4.0..val.sroa_idx.i.i41.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i.i40.i.i.i, i64 4
  store i32 %.val2.i.i33.i.i.i, ptr %.sroa.4.0..val.sroa_idx.i.i41.i.i.i, align 4, !tbaa !98
  %.sroa.5.0..val.sroa_idx.i.i42.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i.i40.i.i.i, i64 8
  store i32 %.sroa.5.0.copyload.i.i37.i.i.i, ptr %.sroa.5.0..val.sroa_idx.i.i42.i.i.i, align 4, !tbaa !98
  br label %bb.ai

bb.ai:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i39.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEESP_ET0_T_SR_SQ_.exit.i48.i.i.i
  %.sroa.0.0.i43.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i31.i.i.i, i64 12 ; 2 uses
  %i.dj = icmp eq ptr %.sroa.0.0.i43.i.i.i, %.sroa.15293.2.us
  br i1 %i.dj, label %.loopexit361, label %bb.ac, !llvm.loop !241

bb.aj:                                            ; preds = %bb.k
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.ak:                                            ; preds = %bb.m, %bb.l
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit228

bb.al:                                            ; preds = %bb.n
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit228

.split.us:                                        ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #38
          to label %.noexc unwind label %.loopexit.split-lp365

.noexc:                                           ; preds = %.split.us
  unreachable

.loopexit.split-lp365:                            ; preds = %.split.us
  %lpad.loopexit.split-lp367 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit223

.loopexit361:                                     ; preds = %bb.ai, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i20.i.i.i", %.preheader363.lr.ph, %bb.o, %._crit_edge521, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_T0_.exit.i.i.i", %.preheader.i28.i.i.i
  %i.dn = phi i1 [ false, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i20.i.i.i" ], [ true, %.preheader363.lr.ph ], [ false, %.preheader.i28.i.i.i ], [ true, %._crit_edge521 ], [ false, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_T0_.exit.i.i.i" ], [ true, %bb.o ], [ false, %bb.ai ]
  %.sroa.0292.0.lcssa681 = phi ptr [ %.sroa.0292.2.us, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i20.i.i.i" ], [ null, %.preheader363.lr.ph ], [ %.sroa.0292.2.us, %.preheader.i28.i.i.i ], [ %.sroa.0292.2.us, %._crit_edge521 ], [ %.sroa.0292.2.us, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_T0_.exit.i.i.i" ], [ null, %bb.o ], [ %.sroa.0292.2.us, %bb.ai ] ; 20 uses
  %.sroa.22.0.lcssa680 = phi ptr [ %.sroa.22.2.us, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i20.i.i.i" ], [ null, %.preheader363.lr.ph ], [ %.sroa.22.2.us, %.preheader.i28.i.i.i ], [ %.sroa.22.2.us, %._crit_edge521 ], [ %.sroa.22.2.us, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_T0_.exit.i.i.i" ], [ null, %bb.o ], [ %.sroa.22.2.us, %bb.ai ] ; 4 uses
  %.sroa.15293.0.lcssa679 = phi ptr [ %.sroa.15293.2.us, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops14_Val_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_T0_.exit.i20.i.i.i" ], [ null, %.preheader363.lr.ph ], [ %.sroa.15293.2.us, %.preheader.i28.i.i.i ], [ %.sroa.15293.2.us, %._crit_edge521 ], [ %.sroa.15293.2.us, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS2_24SIMDResultHandlerToFloatERKNS3_15CoarseQuantizedEPmSB_RKNS2_30FastScanDistancePostProcessingEPKNS2_19SearchParametersIVFERNS2_19FastScanCodeScannerEE2QCSt6vectorISK_SaISK_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_16search_implem_12ElS5_S7_SA_SB_SB_SE_SH_SJ_E3$_0EEEvT_SU_T0_.exit.i.i.i" ], [ null, %bb.o ], [ %.sroa.15293.2.us, %bb.ai ]
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !225 ; 2 uses
  %.not144 = icmp eq i64 %i.dp, 0
  %sext = shl i64 %i.dp, 32
  %i.dq = ashr exact i64 %sext, 32
  %i.dr = select i1 %.not144, i64 11, i64 %i.dq   ; 10 uses
  %i.ds = load ptr, ptr %12, align 8, !tbaa !175
  %.not145 = icmp eq ptr %i.ds, null
  br i1 %.not145, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %.loopexit361
  %.not355 = icmp eq i64 %i.dr, 0
  br i1 %.not355, label %.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dt = icmp ugt i64 %i.dr, 4611686018427387903
  br i1 %i.dt, label %bb.ao, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #38
          to label %.noexc230 unwind label %.thread341

.noexc230:                                        ; preds = %bb.ao
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.an
  %i.du = shl nuw nsw i64 %i.dr, 1
  %i.dv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.du) #40
          to label %.noexc231 unwind label %.thread341 ; 4 uses

.noexc231:                                        ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i
  store i16 0, ptr %i.dv, align 2, !tbaa !243
  %i.dw = add nsw i64 %i.dr, -1                   ; 2 uses
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %.noexc188, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc231
  %i.dy = getelementptr i8, ptr %i.dv, i64 2
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.dw, 1
  call void @llvm.memset.p0.i64(ptr align 2 %i.dy, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !243
  br label %.noexc188

.noexc188:                                        ; preds = %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc231
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.dr
  br label %.thread

.thread:                                          ; preds = %bb.am, %.noexc188
  %.sroa.0275.2 = phi ptr [ %i.dv, %.noexc188 ], [ null, %bb.am ] ; 2 uses
  %.sroa.16.2 = phi ptr [ %i.dz, %.noexc188 ], [ null, %bb.am ]
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %.sroa.0275.2, ptr %i.ea, align 8, !tbaa !244
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  br label %bb.ar

.thread341:                                       ; preds = %bb.ao, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit223

bb.ap:                                            ; preds = %.loopexit361
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.ec = icmp ugt i64 %i.dr, 2305843009213693951
  br i1 %i.ec, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #38
          to label %.noexc189 unwind label %bb.au

.noexc189:                                        ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %.thread, %bb.ap
  %.sroa.16.0314 = phi ptr [ %.sroa.16.2, %.thread ], [ null, %bb.ap ] ; 8 uses
  %.sroa.0275.0307 = phi ptr [ %.sroa.0275.2, %.thread ], [ null, %bb.ap ] ; 11 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %.not675 = icmp eq i64 %i.dr, 0
  br i1 %.not675, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.ar
  %i.ee = shl nuw nsw i64 %i.dr, 2
  %i.ef = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ee) #40
          to label %.noexc190 unwind label %bb.au ; 3 uses

.noexc190:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.eg = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.ef, ptr %13, align 8, !tbaa !247
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !249
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.dr
  store ptr %i.eh, ptr %i.ed, align 8, !tbaa !250
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %bb.ar, %.noexc190
  %i.ei = ptrtoint ptr %.sroa.15293.0.lcssa679 to i64
  %i.ej = ptrtoint ptr %.sroa.0292.0.lcssa681 to i64 ; 2 uses
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = sdiv exact i64 %i.ek, 12                ; 2 uses
  br i1 %i.dn, label %._crit_edge542, label %.lr.ph541

.lr.ph541:                                        ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.en = trunc i64 %i.aq to i32
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.er = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %scevgep847 = getelementptr i8, ptr %.sroa.0292.0.lcssa681, i64 8
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph541, %_ZNSt6vectorIiSaIiEED2Ev.exit210
  %.0108540 = phi i64 [ 0, %.lr.ph541 ], [ %.0107.lcssa, %_ZNSt6vectorIiSaIiEED2Ev.exit210 ] ; 17 uses
  %.0109539 = phi i64 [ 0, %.lr.ph541 ], [ %.1110, %_ZNSt6vectorIiSaIiEED2Ev.exit210 ] ; 2 uses
  %.0111538 = phi i64 [ 0, %.lr.ph541 ], [ %.1112, %_ZNSt6vectorIiSaIiEED2Ev.exit210 ] ; 2 uses
  %i.es = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0292.0.lcssa681, i64 %.0108540
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !238 ; 2 uses
  %i.ev = add i64 %.0108540, %i.dr
  %.fr = freeze i64 %i.ev
  %invariant.umin = call i64 @llvm.umin.i64(i64 %i.el, i64 %.fr)
  %i.ew = add nuw i64 %.0108540, 1                ; 3 uses
end_hunk_2
begin_hunk_3_@_ZNK5faiss16IndexIVFFastScan16search_implem_12ElPKfRNS_24SIMDResultHandlerToFloatERKNS0_15CoarseQuantizedEPmS8_RKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFERNS_19FastScanCodeScannerE:bb.a

_ZNSt6vectorItSaItEED2Ev.exit223.thread:          ; preds = %_ZNSt6vectorItSaItEED2Ev.exit223
  %i.nq = ptrtoint ptr %.sroa.22.3 to i64
  %i.nr = ptrtoint ptr %.sroa.0292.3 to i64
  %i.ns = sub i64 %i.nq, %i.nr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0292.3, i64 noundef %i.ns) #39
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit228

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit228: ; preds = %_ZNSt6vectorItSaItEED2Ev.exit223.thread, %_ZNSt6vectorItSaItEED2Ev.exit223, %bb.al, %bb.ak
  %.pn164.pn.pn.pn = phi { ptr, i32 } [ %i.dl, %bb.ak ], [ %i.dm, %bb.al ], [ %.pn164.pn, %_ZNSt6vectorItSaItEED2Ev.exit223 ], [ %.pn164.pn, %_ZNSt6vectorItSaItEED2Ev.exit223.thread ]
  call void @_ZdaPv(ptr noundef nonnull %i.ad) #39
  %.pre = load ptr, ptr %12, align 8, !tbaa !175
  br label %bb.co

bb.co:                                            ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit228, %bb.aj
  %i.nt = phi ptr [ %.pre, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit228 ], [ null, %bb.aj ]
  %.pn164.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn164.pn.pn.pn, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit228 ], [ %i.dk, %bb.aj ]
  call void @free(ptr noundef %i.nt) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.nu = load ptr, ptr %11, align 8, !tbaa !79
  call void @free(ptr noundef %i.nu) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn164.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn164.pn.pn.pn.pn, %bb.co ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn164.pn.pn.pn.pn.pn.pn

bb.cq:                                            ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5faiss16IndexIVFFastScan16search_implem_10ElPKflRNS_24SIMDResultHandlerToFloatERKNS0_15CoarseQuantizedEPmS8_RKNS_30FastScanDistancePostProcessingEPKNS_19SearchParametersIVFERNS_19FastScanCodeScannerE(ptr noundef nonnull align 8 dereferenceable(352) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef writeonly captures(none) %7, ptr noundef nonnull align 8 dereferenceable(26) %8, ptr nofree noundef readonly captures(address_is_null) %9, ptr noundef nonnull align 8 dereferenceable(8) %10) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %"struct.faiss::AlignedTable", align 8 ; 9 uses
  %12 = alloca %"struct.faiss::AlignedTable.40", align 8 ; 8 uses
  %i.a = alloca [1 x i32], align 4                ; 6 uses
  %13 = alloca %"class.std::vector.74", align 8   ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.c = load i64, ptr %i.b, align 8, !tbaa !107
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !75
  %i.f = mul i64 %i.e, %i.c                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.g = and i64 %1, 6917529027641081856
  %.not = icmp eq i64 %i.g, 0
  %i.h = shl i64 %1, 3
  %i.i = select i1 %.not, i64 %i.h, i64 -1
  %i.j = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #40
          to label %bb.b unwind label %bb.af      ; 4 uses

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 352
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(352) %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(26) %8)
          to label %bb.c unwind label %bb.ag

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %0, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 336
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(352) %0)
          to label %bb.d unwind label %bb.ah      ; 2 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.a, ptr %i.r, align 8, !tbaa !258
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.t = load i32, ptr %i.s, align 4, !tbaa !235
  %i.u = and i32 %i.t, 16
  %.not160 = icmp eq i32 %i.u, 0
  %spec.select250 = select i1 %.not160, ptr %i.j, ptr null
  %i.v = load ptr, ptr %4, align 8, !tbaa !9
  %i.w = load ptr, ptr %i.v, align 8
  invoke void %i.w(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef %spec.select250)
          to label %bb.e unwind label %bb.ai

bb.e:                                             ; preds = %bb.d
  %i.x = load i64, ptr %5, align 8, !tbaa !94     ; 5 uses
  %.not406 = icmp eq ptr %9, null
  br i1 %.not406, label %.thread227.thread, label %bb.f

.thread227.thread:                                ; preds = %bb.e
  %i.y = icmp eq i64 %3, 0
  br label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !93  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !87
  %.fr = freeze i64 %i.ac                         ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !92, !range !23, !noundef !24
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = icmp eq i64 %i.aa, 0
  %spec.select251 = select i1 %i.ag, i64 -1, i64 %i.aa ; 2 uses
  %i.ah = icmp eq i64 %.fr, 0
  %..fr = select i1 %i.ah, i64 %i.x, i64 %.fr     ; 2 uses
  br i1 %i.af, label %bb.g, label %.thread227

bb.g:                                             ; preds = %bb.f
  %i.ai = call i64 @llvm.umax.i64(i64 %spec.select251, i64 %3)
  %.pre = call i64 @llvm.umax.i64(i64 %..fr, i64 %3)
  br label %.thread227

.thread227:                                       ; preds = %bb.f, %bb.g
  %i.aj = phi i64 [ %.pre, %bb.g ], [ %..fr, %bb.f ] ; 2 uses
  %i.ak = phi i64 [ %i.ai, %bb.g ], [ %spec.select251, %bb.f ] ; 2 uses
  %i.al = icmp eq i64 %3, 0
  br i1 %i.al, label %bb.h, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

bb.h:                                             ; preds = %.thread227
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.an = load i64, ptr %i.am, align 8, !tbaa !99
  br label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %.thread227.thread, %.thread227, %bb.h
  %i.ao = phi i1 [ true, %bb.h ], [ false, %.thread227 ], [ %i.y, %.thread227.thread ] ; 2 uses
  %i.ap = phi i64 [ %i.ak, %bb.h ], [ %i.ak, %.thread227 ], [ -1, %.thread227.thread ]
  %i.aq = phi i64 [ %i.aj, %bb.h ], [ %i.aj, %.thread227 ], [ %i.x, %.thread227.thread ]
  %i.ar = phi i64 [ %i.an, %bb.h ], [ 0, %.thread227 ], [ 0, %.thread227.thread ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  %i.at = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #40
          to label %.noexc unwind label %bb.aj    ; 3 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  store ptr %i.at, ptr %13, align 8, !tbaa !247
  store ptr %i.at, ptr %i.au, align 8, !tbaa !249
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store ptr %i.av, ptr %i.as, align 8, !tbaa !250
  %i.aw = icmp sgt i64 %1, 0
  br i1 %i.aw, label %.lr.ph308, label %._crit_edge

.lr.ph308:                                        ; preds = %.noexc
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %.not338 = icmp eq i64 %i.x, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 276
  %.not176 = icmp eq i64 %i.ar, 0                 ; 3 uses
  br i1 %.not338, label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread243.preheader, label %.lr.ph.us

_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread243.preheader: ; preds = %.lr.ph308
  %i.bf = trunc i64 %1 to i32
  %i.bg = add i32 %i.bf, -1
  store i32 %i.bg, ptr %i.a, align 4, !tbaa !98
  br label %._crit_edge

.lr.ph.us:                                        ; preds = %.lr.ph308, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread243.us
  %.0114307.us = phi i64 [ %i.ev, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread243.us ], [ 0, %.lr.ph308 ] ; 4 uses
  %.0115306.us = phi i64 [ %.4119.us, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread243.us ], [ 0, %.lr.ph308 ]
  %.0120305.us = phi i64 [ %.4124.us, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread243.us ], [ 0, %.lr.ph308 ]
  %i.bh = trunc i64 %.0114307.us to i32
  store i32 %i.bh, ptr %i.a, align 4, !tbaa !98
  %i.bi = load ptr, ptr %11, align 8
  %i.bj = mul i64 %.0114307.us, %i.f
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bj
  %.0108.us = select i1 %i.q, ptr null, ptr %i.bk
  %i.bl = load i64, ptr %i.ax, align 8, !tbaa !267
  %i.bm = mul i64 %.0114307.us, %i.x
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph.us, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread.us
  %.0292.us = phi i64 [ 0, %.lr.ph.us ], [ %i.eu, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread.us ] ; 3 uses
  %.099291.us = phi i64 [ 0, %.lr.ph.us ], [ %.6240.us, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread.us ] ; 6 uses
  %.0100290.us = phi i64 [ 0, %.lr.ph.us ], [ %.2102239.us, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread.us ] ; 6 uses
  %.0103289.us = phi i64 [ 0, %.lr.ph.us ], [ %.4107238.us, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread.us ]
  %.1109288.us = phi ptr [ %.0108.us, %.lr.ph.us ], [ %.2110.us, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread.us ]
  %.1116287.us = phi i64 [ %.0115306.us, %.lr.ph.us ], [ %.3118237.us, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread.us ] ; 8 uses
  %.1121286.us = phi i64 [ %.0120305.us, %.lr.ph.us ], [ %.3123236.us, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread.us ] ; 8 uses
  br i1 %i.ao, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = load i64, ptr %i.ax, align 8, !tbaa !267
  %i.bo = sub i64 %i.bn, %i.bl
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1104.us = phi i64 [ %.0103289.us, %bb.i ], [ %i.bo, %bb.j ] ; 6 uses
  %.not162.us = icmp ult i64 %.1104.us, %i.ap
  %.not163.us = icmp ult i64 %.0100290.us, %i.aq
  %or.cond182.us = select i1 %.not162.us, i1 %.not163.us, i1 false
  br i1 %or.cond182.us, label %bb.l, label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread243.us

bb.l:                                             ; preds = %bb.k
  %i.bp = load i64, ptr %i.ay, align 8, !tbaa !268
  %i.bq = add i64 %.0292.us, %i.bm                ; 3 uses
  %i.br = load ptr, ptr %11, align 8
  %i.bs = mul i64 %i.bq, %i.f
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bs
  %.2110.us = select i1 %i.q, ptr %i.bt, ptr %.1109288.us ; 2 uses
  %i.bu = load ptr, ptr %12, align 8, !tbaa !175  ; 2 uses
  %.not164.us = icmp eq ptr %i.bu, null
  br i1 %.not164.us, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.bq
  store ptr %i.bv, ptr %i.az, align 8, !tbaa !244
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bw = load ptr, ptr %i.ba, align 8, !tbaa !101
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bq
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !61 ; 9 uses
  %i.bz = icmp slt i64 %i.by, 0
  br i1 %i.bz, label %bb.ad, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ca = load ptr, ptr %i.bb, align 8, !tbaa !60 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !9
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = invoke noundef i64 %i.cd(ptr noundef nonnull align 8 dereferenceable(25) %i.ca, i64 noundef %i.by)
          to label %bb.p unwind label %.split312.us ; 5 uses

bb.p:                                             ; preds = %bb.o
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.ab, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = load ptr, ptr %i.bb, align 8, !tbaa !60 ; 6 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !9
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = invoke noundef ptr %i.cj(ptr noundef nonnull align 8 dereferenceable(25) %i.cg, i64 noundef %i.by)
          to label %_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_m.exit.us unwind label %.split314.us, !inline_history !102 ; 3 uses

_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_m.exit.us: ; preds = %bb.q
  %i.cl = load ptr, ptr %i.bb, align 8, !tbaa !60 ; 6 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !9
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = invoke noundef ptr %i.co(ptr noundef nonnull align 8 dereferenceable(25) %i.cl, i64 noundef %i.by)
          to label %_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit.us unwind label %.split317.us, !inline_history !256 ; 3 uses

_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit.us: ; preds = %_ZN5faiss13InvertedLists11ScopedCodesC2EPKS0_m.exit.us
  store i64 %i.ce, ptr %i.bc, align 8, !tbaa !257
  store ptr %i.cp, ptr %i.bd, align 8, !tbaa !259
  %i.cq = load ptr, ptr %i.au, align 8, !tbaa !249 ; 6 uses
  %i.cr = load ptr, ptr %13, align 8, !tbaa !247  ; 8 uses
  %i.cs = ptrtoint ptr %i.cq to i64               ; 2 uses
  %i.ct = ptrtoint ptr %i.cr to i64               ; 2 uses
  %i.cu = sub i64 %i.cs, %i.ct                    ; 2 uses
  %i.cv = ashr exact i64 %i.cu, 2                 ; 4 uses
  %i.cw = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cw, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit.us
  %i.cx = icmp ugt i64 %i.cv, 1
  br i1 %i.cx, label %bb.s, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.us

bb.s:                                             ; preds = %bb.r
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cr, i64 4 ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.cq, %i.cy
  br i1 %.not.i.i.us, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.us, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.us

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.us:     ; preds = %bb.s
  store ptr %i.cy, ptr %i.au, align 8, !tbaa !249
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.us

bb.t:                                             ; preds = %_ZN5faiss13InvertedLists9ScopedIdsC2EPKS0_m.exit.us
  %i.cz = sub nuw nsw i64 1, %i.cv
  %i.da = load ptr, ptr %i.as, align 8, !tbaa !250
  %i.db = ptrtoint ptr %i.da to i64               ; 2 uses
  %i.dc = sub i64 %i.db, %i.cs
  %i.dd = ashr exact i64 %i.dc, 2                 ; 2 uses
  %i.de = icmp samesign ult i64 %i.cv, 2305843009213693952
  call void @llvm.assume(i1 %i.de)
  %i.df = xor i64 %i.cv, 2305843009213693951
  %i.dg = icmp ule i64 %i.dd, %i.df
  call void @llvm.assume(i1 %i.dg)
  %.not28.i.us = icmp ult i64 %i.dd, %i.cz
  br i1 %.not28.i.us, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.us, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.us

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.us: ; preds = %bb.t
  store i32 0, ptr %i.cq, align 4, !tbaa !98
  %i.dh = getelementptr i8, ptr %i.cq, i64 4
  store ptr %i.dh, ptr %i.au, align 8, !tbaa !249
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.us

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.us: ; preds = %bb.t
  %i.di = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #40
          to label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.us unwind label %.split323.us ; 4 uses

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.us: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.us
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.cu ; 2 uses
  store i32 0, ptr %i.dj, align 4, !tbaa !98
  %.not.i35.i.us = icmp eq ptr %i.cq, null
  br i1 %.not.i35.i.us, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.us, label %bb.u

bb.u:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.us
  %i.dk = sub i64 %i.db, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.dk) #39
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.us

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.us: ; preds = %bb.u, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.us
  store ptr %i.di, ptr %13, align 8, !tbaa !247
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  store ptr %i.dl, ptr %i.au, align 8, !tbaa !249
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  store ptr %i.dm, ptr %i.as, align 8, !tbaa !250
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.us

_ZNSt6vectorIiSaIiEE6resizeEm.exit.us:            ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.us, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.us, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.us, %bb.s, %bb.r
  %i.dn = phi ptr [ %i.di, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.us ], [ %i.cr, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.us ], [ %i.cr, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.us ], [ %i.cr, %bb.s ], [ %i.cr, %bb.r ]
  %i.do = trunc i64 %.0292.us to i32
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !98
  %i.dp = load ptr, ptr %4, align 8, !tbaa !9
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8
  invoke void %i.dr(ptr noundef nonnull align 8 dereferenceable(88) %4, i64 noundef %i.by, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.v unwind label %.split323.us

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.us
  %i.ds = load i32, ptr %i.be, align 4, !tbaa !74 ; 2 uses
  %i.dt = load i64, ptr %i.d, align 8, !tbaa !75
  %i.du = load i32, ptr %8, align 8, !tbaa !207
  %i.dv = invoke noundef i64 @_ZNK5faiss16IndexIVFFastScan16get_block_strideEv(ptr noundef nonnull align 8 dereferenceable(352) %0)
          to label %bb.w unwind label %.split323.us

bb.w:                                             ; preds = %bb.v
  %i.dw = add i64 %i.ce, -1
  %i.dx = sext i32 %i.ds to i64                   ; 2 uses
  %i.dy = add i64 %i.dw, %i.dx                    ; 2 uses
  %i.dz = urem i64 %i.dy, %i.dx
  %i.ea = sub nuw i64 %i.dy, %i.dz
  %i.eb = trunc i64 %i.dt to i32
  %i.ec = load ptr, ptr %10, align 8, !tbaa !9
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8
  invoke void %i.ee(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 1, i64 noundef %i.ea, i32 noundef %i.ds, i32 noundef %i.eb, ptr noundef %i.ck, ptr noundef %.2110.us, i32 noundef %i.du, i64 noundef %i.dv)
          to label %bb.x unwind label %.split323.us

bb.x:                                             ; preds = %bb.w
  %i.ef = add i64 %i.ce, %.1121286.us             ; 2 uses
  %i.eg = add i64 %.1116287.us, 1                 ; 2 uses
  %i.eh = select i1 %i.ao, i64 %i.ce, i64 0
  %spec.select.us = add i64 %i.eh, %.1104.us
  %i.ei = add nuw i64 %.0100290.us, 1
  br i1 %.not176, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ej = load i64, ptr %i.ay, align 8, !tbaa !268
  %i.ek = icmp eq i64 %i.ej, %i.bp
  br i1 %i.ek, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.el = add i64 %.099291.us, 1                  ; 2 uses
  %.not177.us = icmp ult i64 %i.el, %i.ar
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %.0111.us = phi i1 [ %.not177.us, %bb.z ], [ true, %bb.y ], [ true, %bb.x ]
  %.4.us = phi i64 [ %i.el, %bb.z ], [ 0, %bb.y ], [ %.099291.us, %bb.x ]
  %i.em = load ptr, ptr %i.cl, align 8, !tbaa !9
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.eo = load ptr, ptr %i.en, align 8
  invoke void %i.eo(ptr noundef nonnull align 8 dereferenceable(25) %i.cl, i64 noundef %i.by, ptr noundef %i.cp)
          to label %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit190.us unwind label %.split331.us

_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit190.us: ; preds = %bb.aa
  %i.ep = load ptr, ptr %i.cg, align 8, !tbaa !9
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 40
  %i.er = load ptr, ptr %i.eq, align 8
  invoke void %i.er(ptr noundef nonnull align 8 dereferenceable(25) %i.cg, i64 noundef %i.by, ptr noundef %i.ck)
          to label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.us unwind label %.split334.us

_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.us: ; preds = %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit190.us
  br i1 %.0111.us, label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread.us, label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread243.us

bb.ab:                                            ; preds = %bb.p
  br i1 %.not176, label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread.us, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.es = add i64 %.099291.us, 1                  ; 2 uses
  %.not179.us = icmp ult i64 %i.es, %i.ar
  br i1 %.not179.us, label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread.us, label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread243.us

bb.ad:                                            ; preds = %bb.n
  br i1 %.not176, label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread.us, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.et = add i64 %.099291.us, 1                  ; 2 uses
  %.not181.us = icmp ult i64 %i.et, %i.ar
  br i1 %.not181.us, label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread.us, label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread243.us

_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.thread.us: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.us
end_hunk_3
