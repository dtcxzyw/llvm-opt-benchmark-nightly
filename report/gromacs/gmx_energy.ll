Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_energy?download=true
inline.NumInlined: 676
inline.NumDeleted: 290
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_Z10gmx_energyiPPc:bb.a

bb.bf:                                            ; preds = %._crit_edge.i.i352
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gr, ptr nonnull align 16 %i.ak, i64 %i.gn, i1 false)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %._crit_edge.i.i352
  %i.gt = load i64, ptr %i.ad, align 8, !tbaa !34 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %48, i64 8
  store i64 %i.gt, ptr %i.gu, align 8, !tbaa !33
  %i.gv = load ptr, ptr %48, align 8, !tbaa !23
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gt
  store i8 0, ptr %i.gw, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #27
  %i.gx = load ptr, ptr %i.al, align 8, !tbaa !171
  %i.gy = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %46, ptr noundef nonnull @.str.152, ptr noundef nonnull align 8 dereferenceable(32) %47, ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef %i.gx)
          to label %bb.bh unwind label %bb.bm     ; 3 uses

bb.bh:                                            ; preds = %bb.bg
  %i.gz = load ptr, ptr %48, align 8, !tbaa !23   ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.gm
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bh
  %i.hb = load i64, ptr %i.gm, align 8, !tbaa !24
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #27
  %i.hd = load ptr, ptr %47, align 8, !tbaa !23   ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.gj
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hf = load i64, ptr %i.gj, align 8, !tbaa !24
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hg) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #27
  %i.hh = getelementptr inbounds nuw i8, ptr %46, i64 32 ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i359 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i359, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i360, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.hh, ptr noundef nonnull %i.hi) #27
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i360

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i360: ; preds = %bb.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358
  %i.hj = load ptr, ptr %46, align 8, !tbaa !23   ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 2 uses
  %i.hl = icmp eq ptr %i.hj, %i.hk
  br i1 %i.hl, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit363, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i361

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i361: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i360
  %i.hm = load i64, ptr %i.hk, align 8, !tbaa !24
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hn) #28
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit363

_ZNSt10filesystem7__cxx114pathD2Ev.exit363:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i360, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #27
  %i.ho = icmp sgt i32 %i.fc, 0                   ; 2 uses
  br i1 %i.ho, label %.lr.ph1026.preheader, label %._crit_edge1027

.lr.ph1026.preheader:                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit363
  %wide.trip.count1333 = zext nneg i32 %i.fc to i64
  br label %.lr.ph1026

.lr.ph1026:                                       ; preds = %.lr.ph1026.preheader, %bb.bj
  %indvars.iv1330 = phi i64 [ 0, %.lr.ph1026.preheader ], [ %indvars.iv.next1331, %bb.bj ] ; 2 uses
  %i.hp = load ptr, ptr %i.ag, align 8, !tbaa !13
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.0649, i64 %indvars.iv1330
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !11
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds [16 x i8], ptr %i.hp, i64 %i.hs
  %i.hu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRPcEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 8 dereferenceable(8) %i.ht)
          to label %bb.bj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp2606 ; 0 uses

bb.bj:                                            ; preds = %.lr.ph1026
  %indvars.iv.next1331 = add nuw nsw i64 %indvars.iv1330, 1 ; 2 uses
  %exitcond1334.not = icmp eq i64 %indvars.iv.next1331, %wide.trip.count1333
  br i1 %exitcond1334.not, label %._crit_edge1027, label %.lr.ph1026, !llvm.loop !83

bb.bk:                                            ; preds = %bb.bd, %._crit_edge
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bl:                                            ; preds = %.noexc.i353
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366

bb.bm:                                            ; preds = %bb.bg
  %i.hx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hy = load ptr, ptr %48, align 8, !tbaa !23   ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.gm
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364: ; preds = %bb.bm
  %i.ia = load i64, ptr %i.gm, align 8, !tbaa !24
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ib) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364, %bb.bl
  %.pn299 = phi { ptr, i32 } [ %i.hw, %bb.bl ], [ %i.hx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364 ], [ %i.hx, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #27
  %i.ic = load ptr, ptr %47, align 8, !tbaa !23   ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.gj
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i367

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i367: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366
  %i.ie = load i64, ptr %i.gj, align 8, !tbaa !24
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.if) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i367
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #27
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %46) #27
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369, %bb.bk
  %.pn299.pn.pn = phi { ptr, i32 } [ %.pn299, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369 ], [ %i.hv, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #27
  br label %.body

._crit_edge1027:                                  ; preds = %bb.bj, %_ZNSt10filesystem7__cxx114pathD2Ev.exit363
  %i.ig = load i8, ptr @_ZZ10gmx_energyiPPcE4bSum, align 1, !tbaa !36, !range !37, !noundef !38
  %i.ih = trunc nuw i8 %i.ig to i1
  br i1 %i.ih, label %bb.bo, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit

bb.bo:                                            ; preds = %._crit_edge1027
  %i.ii = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !39 ; 7 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !40
  %.not.i = icmp eq ptr %i.ij, %i.il
  br i1 %.not.i, label %bb.bp, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.bo
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 16 ; 2 uses
  store ptr %i.im, ptr %i.ij, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.im, ptr noundef nonnull align 1 dereferenceable(4) @.str.154, i64 3, i1 false)
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store i64 3, ptr %i.in, align 8, !tbaa !33
  %i.io = getelementptr inbounds nuw i8, ptr %i.ij, i64 19
  store i8 0, ptr %i.io, align 1, !tbaa !24
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ij, i64 32
  store ptr %i.ip, ptr %i.ii, align 8, !tbaa !39
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA4_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr %i.ij, ptr noundef nonnull align 1 dereferenceable(4) @.str.154)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp2606

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit: ; preds = %bb.bp, %._crit_edge.i.i.i, %._crit_edge1027
  %i.iq = load ptr, ptr %37, align 8, !tbaa !41   ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !39
  %i.it = ptrtoint ptr %i.is to i64
  %i.iu = ptrtoint ptr %i.iq to i64
  %i.iv = sub i64 %i.it, %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.iv
  %i.ix = load ptr, ptr %i.al, align 8, !tbaa !171
  invoke void @_Z10xvgrLegendP8_IO_FILEN3gmx8ArrayRefIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPK16gmx_output_env_t(ptr noundef %i.gy, ptr %i.iq, ptr %i.iw, ptr noundef %i.ix)
          to label %bb.bq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp2606

bb.bq:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA4_KcEEERS5_DpOT_.exit
  %i.iy = sext i32 %i.fc to i64
  %i.iz = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.140, i32 noundef 1986, i64 noundef range(i64 -2147483648, 2147483648) %i.iy, i64 noundef 1)
          to label %_ZL13gmx_snew_implIbEvPKcS1_iRPT_m.exit.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp2606 ; 3 uses

_ZL13gmx_snew_implIbEvPKcS1_iRPT_m.exit.preheader: ; preds = %bb.bq
  br i1 %i.ho, label %.lr.ph1032, label %_ZL13gmx_snew_implIbEvPKcS1_iRPT_m.exit._crit_edge.thread

.lr.ph1032:                                       ; preds = %_ZL13gmx_snew_implIbEvPKcS1_iRPT_m.exit.preheader
  %i.ja = load ptr, ptr @pvEnergyFieldName, align 8 ; 4 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 7 uses
  %i.jc = icmp eq ptr %i.ja, null
  %i.jd = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.je = load ptr, ptr @enthalpyEnergyFieldName, align 8 ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 7 uses
  %i.jg = icmp eq ptr %i.je, null
  %i.jh = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.ji = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 7 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %51, i64 8
  %wide.trip.count1342 = zext nneg i32 %i.fc to i64
  br label %bb.br

bb.br:                                            ; preds = %.lr.ph1032, %_ZL13gmx_snew_implIbEvPKcS1_iRPT_m.exit
  %indvars.iv1339 = phi i64 [ 0, %.lr.ph1032 ], [ %indvars.iv.next1340, %_ZL13gmx_snew_implIbEvPKcS1_iRPT_m.exit ] ; 6 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.iz, i64 %indvars.iv1339 ; 10 uses
  store i8 0, ptr %i.jk, align 1, !tbaa !36
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bv
  %i.jl = phi i8 [ 0, %bb.br ], [ %i.jw, %bb.bv ]
  %indvars.iv1335 = phi i64 [ 0, %bb.br ], [ %indvars.iv.next1336, %bb.bv ] ; 2 uses
  %i.jm = trunc nuw i8 %i.jl to i1
  br i1 %i.jm, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jn = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %indvars.iv1335
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !173
  %i.jq = load ptr, ptr %37, align 8, !tbaa !41
  %i.jr = getelementptr inbounds nuw [32 x i8], ptr %i.jq, i64 %indvars.iv1339
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !23
  %i.jt = invoke noundef i32 @_Z14gmx_strcasecmpPKcS0_(ptr noundef %i.jp, ptr noundef %i.js)
          to label %bb.bu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp2606

bb.bu:                                            ; preds = %bb.bt
  %i.ju = icmp eq i32 %i.jt, 0
  %i.jv = zext i1 %i.ju to i8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bs
  %i.jw = phi i8 [ 1, %bb.bs ], [ %i.jv, %bb.bu ] ; 3 uses
  store i8 %i.jw, ptr %i.jk, align 1, !tbaa !36
  %indvars.iv.next1336 = add nuw nsw i64 %indvars.iv1335, 1 ; 2 uses
  %exitcond1338.not = icmp eq i64 %indvars.iv.next1336, 82
  br i1 %exitcond1338.not, label %bb.bw, label %bb.bs, !llvm.loop !84

bb.bw:                                            ; preds = %bb.bv
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %.critedge337.thread, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #27
  store ptr %i.jb, ptr %49, align 8, !tbaa !32
  br i1 %i.jc, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.171) #30
          to label %.noexc375 unwind label %.loopexit.split-lp778.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc375:                                        ; preds = %bb.by
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.jy = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ja) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #27
  store i64 %i.jy, ptr %i.ac, align 8, !tbaa !34
  %i.jz = icmp ugt i64 %i.jy, 15
  br i1 %i.jz, label %.noexc.i374, label %._crit_edge.i.i373

.noexc.i374:                                      ; preds = %bb.bz
  %i.ka = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %49, ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i64 noundef 0)
          to label %.noexc376 unwind label %.loopexit.split-lp778.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc376:                                        ; preds = %.noexc.i374
  store ptr %i.ka, ptr %49, align 8, !tbaa !23
  %i.kb = load i64, ptr %i.ac, align 8, !tbaa !34
  store i64 %i.kb, ptr %i.jb, align 8, !tbaa !24
  br label %._crit_edge.i.i373

._crit_edge.i.i373:                               ; preds = %.noexc376, %bb.bz
  %i.kc = phi ptr [ %i.ka, %.noexc376 ], [ %i.jb, %bb.bz ] ; 2 uses
  switch i64 %i.jy, label %bb.cb [
    i64 1, label %bb.ca
    i64 0, label %bb.cc
  ]

bb.ca:                                            ; preds = %._crit_edge.i.i373
  %i.kd = load i8, ptr %i.ja, align 1, !tbaa !24
  store i8 %i.kd, ptr %i.kc, align 1, !tbaa !24
  br label %bb.cc

bb.cb:                                            ; preds = %._crit_edge.i.i373
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kc, ptr nonnull align 1 %i.ja, i64 %i.jy, i1 false)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %._crit_edge.i.i373
  %i.ke = load i64, ptr %i.ac, align 8, !tbaa !34 ; 2 uses
  store i64 %i.ke, ptr %i.jd, align 8, !tbaa !33
  %i.kf = load ptr, ptr %49, align 8, !tbaa !23
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.ke
  store i8 0, ptr %i.kg, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #27
  %i.kh = load ptr, ptr %37, align 8, !tbaa !41
  %i.ki = getelementptr inbounds nuw [32 x i8], ptr %i.kh, i64 %indvars.iv1339
  %i.kj = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %49, ptr noundef nonnull align 8 dereferenceable(32) %i.ki)
          to label %bb.cd unwind label %bb.cl

bb.cd:                                            ; preds = %bb.cc
  %i.kk = zext i1 %i.kj to i8
  store i8 %i.kk, ptr %i.jk, align 1, !tbaa !36
  %i.kl = load ptr, ptr %49, align 8, !tbaa !23   ; 2 uses
  %i.km = icmp eq ptr %i.kl, %i.jb
  br i1 %i.km, label %.critedge337, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378: ; preds = %bb.cd
  %i.kn = load i64, ptr %i.jb, align 8, !tbaa !24
  %i.ko = add i64 %i.kn, 1
  call void @_ZdlPvm(ptr noundef %i.kl, i64 noundef %i.ko) #28
  br label %.critedge337

.critedge337.thread:                              ; preds = %bb.bw
  store i8 1, ptr %i.jk, align 1, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388

.critedge337:                                     ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #27
  %.pre1380 = load i8, ptr %i.jk, align 1, !tbaa !36, !range !37
  %i.kp = trunc nuw i8 %.pre1380 to i1
  br i1 %i.kp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388, label %bb.ce

bb.ce:                                            ; preds = %.critedge337
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #27
  store ptr %i.jf, ptr %50, align 8, !tbaa !32
  br i1 %i.jg, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.171) #30
          to label %.noexc383 unwind label %.loopexit.split-lp783.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc383:                                        ; preds = %bb.cf
  unreachable

bb.cg:                                            ; preds = %bb.ce
  %i.kq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.je) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #27
  store i64 %i.kq, ptr %i.ab, align 8, !tbaa !34
  %i.kr = icmp ugt i64 %i.kq, 15
  br i1 %i.kr, label %.noexc.i382, label %._crit_edge.i.i381

.noexc.i382:                                      ; preds = %bb.cg
  %i.ks = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %50, ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i64 noundef 0)
          to label %.noexc384 unwind label %.loopexit.split-lp783.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc384:                                        ; preds = %.noexc.i382
  store ptr %i.ks, ptr %50, align 8, !tbaa !23
  %i.kt = load i64, ptr %i.ab, align 8, !tbaa !34
  store i64 %i.kt, ptr %i.jf, align 8, !tbaa !24
  br label %._crit_edge.i.i381

._crit_edge.i.i381:                               ; preds = %.noexc384, %bb.cg
  %i.ku = phi ptr [ %i.ks, %.noexc384 ], [ %i.jf, %bb.cg ] ; 2 uses
  switch i64 %i.kq, label %bb.ci [
    i64 1, label %bb.ch
    i64 0, label %bb.cj
  ]

bb.ch:                                            ; preds = %._crit_edge.i.i381
  %i.kv = load i8, ptr %i.je, align 1, !tbaa !24
  store i8 %i.kv, ptr %i.ku, align 1, !tbaa !24
  br label %bb.cj

bb.ci:                                            ; preds = %._crit_edge.i.i381
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ku, ptr nonnull align 1 %i.je, i64 %i.kq, i1 false)
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %._crit_edge.i.i381
  %i.kw = load i64, ptr %i.ab, align 8, !tbaa !34 ; 2 uses
  store i64 %i.kw, ptr %i.jh, align 8, !tbaa !33
  %i.kx = load ptr, ptr %50, align 8, !tbaa !23
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.kw
  store i8 0, ptr %i.ky, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #27
  %i.kz = load ptr, ptr %37, align 8, !tbaa !41
  %i.la = getelementptr inbounds nuw [32 x i8], ptr %i.kz, i64 %indvars.iv1339
  %i.lb = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %50, ptr noundef nonnull align 8 dereferenceable(32) %i.la)
          to label %bb.ck unwind label %bb.cm

bb.ck:                                            ; preds = %bb.cj
  %i.lc = zext i1 %i.lb to i8
  store i8 %i.lc, ptr %i.jk, align 1, !tbaa !36
  %i.ld = load ptr, ptr %50, align 8, !tbaa !23   ; 2 uses
  %i.le = icmp eq ptr %i.ld, %i.jf
  br i1 %i.le, label %.critedge341, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386: ; preds = %bb.ck
  %i.lf = load i64, ptr %i.jf, align 8, !tbaa !24
  %i.lg = add i64 %i.lf, 1
  call void @_ZdlPvm(ptr noundef %i.ld, i64 noundef %i.lg) #28
  br label %.critedge341

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388: ; preds = %.critedge337.thread, %.critedge337
  store i8 1, ptr %i.jk, align 1, !tbaa !36
  br label %.critedge343.preheader

.critedge341:                                     ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #27
  br label %.critedge343.preheader

.critedge343.preheader:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388, %.critedge341
  br label %.critedge343

_ZL13gmx_snew_implIbEvPKcS1_iRPT_m.exit:          ; preds = %.critedge349
  %indvars.iv.next1340 = add nuw nsw i64 %indvars.iv1339, 1 ; 2 uses
  %exitcond1343.not = icmp eq i64 %indvars.iv.next1340, %wide.trip.count1342
  br i1 %exitcond1343.not, label %_ZL13gmx_snew_implIbEvPKcS1_iRPT_m.exit._crit_edge, label %bb.br, !llvm.loop !85

.loopexit.split-lp778.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i374, %bb.by
  %lpad.loopexit.split-lp2590 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391

bb.cl:                                            ; preds = %bb.cc
  %i.lh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.li = load ptr, ptr %49, align 8, !tbaa !23   ; 2 uses
  %i.lj = icmp eq ptr %i.li, %i.jb
  br i1 %i.lj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389: ; preds = %bb.cl
  %i.lk = load i64, ptr %i.jb, align 8, !tbaa !24
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.li, i64 noundef %i.ll) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391: ; preds = %bb.cl, %.loopexit.split-lp778.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389
  %.pn305 = phi { ptr, i32 } [ %i.lh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389 ], [ %lpad.loopexit.split-lp2590, %.loopexit.split-lp778.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.lh, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #27
  br label %.body

.loopexit.split-lp783.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i382, %bb.cf
  %lpad.loopexit.split-lp2593 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394

bb.cm:                                            ; preds = %bb.cj
  %i.lm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ln = load ptr, ptr %50, align 8, !tbaa !23   ; 2 uses
  %i.lo = icmp eq ptr %i.ln, %i.jf
  br i1 %i.lo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392: ; preds = %bb.cm
  %i.lp = load i64, ptr %i.jf, align 8, !tbaa !24
  %i.lq = add i64 %i.lp, 1
  call void @_ZdlPvm(ptr noundef %i.ln, i64 noundef %i.lq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394: ; preds = %bb.cm, %.loopexit.split-lp783.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392
  %.pn307 = phi { ptr, i32 } [ %i.lm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392 ], [ %lpad.loopexit.split-lp2593, %.loopexit.split-lp783.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.lm, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #27
  br label %.body

.critedge343:                                     ; preds = %.critedge343.preheader, %.critedge349
  %.0221.idx1029 = phi i64 [ %.0221.add, %.critedge349 ], [ 0, %.critedge343.preheader ] ; 2 uses
  %i.lr = load i8, ptr %i.jk, align 1, !tbaa !36, !range !37, !noundef !38
  %i.ls = trunc nuw i8 %i.lr to i1
  br i1 %i.ls, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402, label %bb.cn

bb.cn:                                            ; preds = %.critedge343
  %.0221.ptr1030 = getelementptr inbounds nuw i8, ptr @virialEnergyFieldNames, i64 %.0221.idx1029
  %i.lt = load ptr, ptr %.0221.ptr1030, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #27
  store ptr %i.ji, ptr %51, align 8, !tbaa !32
  %i.lu = icmp eq ptr %i.lt, null
  br i1 %i.lu, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.171) #30
          to label %.noexc397 unwind label %.loopexit.split-lp770.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc397:                                        ; preds = %bb.co
  unreachable

bb.cp:                                            ; preds = %bb.cn
  %i.lv = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lt) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #27
  store i64 %i.lv, ptr %i.aa, align 8, !tbaa !34
  %i.lw = icmp ugt i64 %i.lv, 15
  br i1 %i.lw, label %.noexc.i396, label %._crit_edge.i.i395

.noexc.i396:                                      ; preds = %bb.cp
  %i.lx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %51, ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i64 noundef 0)
          to label %.noexc398 unwind label %.loopexit.split-lp770.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc398:                                        ; preds = %.noexc.i396
  store ptr %i.lx, ptr %51, align 8, !tbaa !23
  %i.ly = load i64, ptr %i.aa, align 8, !tbaa !34
  store i64 %i.ly, ptr %i.ji, align 8, !tbaa !24
  br label %._crit_edge.i.i395

._crit_edge.i.i395:                               ; preds = %.noexc398, %bb.cp
  %i.lz = phi ptr [ %i.lx, %.noexc398 ], [ %i.ji, %bb.cp ] ; 2 uses
  switch i64 %i.lv, label %bb.cr [
    i64 1, label %bb.cq
    i64 0, label %bb.cs
  ]

bb.cq:                                            ; preds = %._crit_edge.i.i395
  %i.ma = load i8, ptr %i.lt, align 1, !tbaa !24
  store i8 %i.ma, ptr %i.lz, align 1, !tbaa !24
  br label %bb.cs

bb.cr:                                            ; preds = %._crit_edge.i.i395
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lz, ptr nonnull align 1 %i.lt, i64 %i.lv, i1 false)
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq, %._crit_edge.i.i395
  %i.mb = load i64, ptr %i.aa, align 8, !tbaa !34 ; 2 uses
  store i64 %i.mb, ptr %i.jj, align 8, !tbaa !33
  %i.mc = load ptr, ptr %51, align 8, !tbaa !23
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.mb
  store i8 0, ptr %i.md, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #27
  %i.me = load ptr, ptr %37, align 8, !tbaa !41
  %i.mf = getelementptr inbounds nuw [32 x i8], ptr %i.me, i64 %indvars.iv1339
  %i.mg = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %51, ptr noundef nonnull align 8 dereferenceable(32) %i.mf)
          to label %bb.ct unwind label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.mh = zext i1 %i.mg to i8
  store i8 %i.mh, ptr %i.jk, align 1, !tbaa !36
  %i.mi = load ptr, ptr %51, align 8, !tbaa !23   ; 2 uses
  %i.mj = icmp eq ptr %i.mi, %i.ji
  br i1 %i.mj, label %.critedge347, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400: ; preds = %bb.ct
  %i.mk = load i64, ptr %i.ji, align 8, !tbaa !24
  %i.ml = add i64 %i.mk, 1
  call void @_ZdlPvm(ptr noundef %i.mi, i64 noundef %i.ml) #28
  br label %.critedge347

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402: ; preds = %.critedge343
  store i8 1, ptr %i.jk, align 1, !tbaa !36
  br label %.critedge349

.critedge347:                                     ; preds = %bb.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #27
  br label %.critedge349

.critedge349:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402, %.critedge347
  %.0221.add = add nuw nsw i64 %.0221.idx1029, 8  ; 2 uses
  %.not = icmp eq i64 %.0221.add, 72
  br i1 %.not, label %_ZL13gmx_snew_implIbEvPKcS1_iRPT_m.exit, label %.critedge343

.loopexit.split-lp770.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i396, %bb.co
  %lpad.loopexit.split-lp2580 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405

bb.cu:                                            ; preds = %bb.cs
  %i.mm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mn = load ptr, ptr %51, align 8, !tbaa !23   ; 2 uses
  %i.mo = icmp eq ptr %i.mn, %i.ji
  br i1 %i.mo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403: ; preds = %bb.cu
  %i.mp = load i64, ptr %i.ji, align 8, !tbaa !24
  %i.mq = add i64 %i.mp, 1
  call void @_ZdlPvm(ptr noundef %i.mn, i64 noundef %i.mq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405: ; preds = %bb.cu, %.loopexit.split-lp770.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403
  %.pn309 = phi { ptr, i32 } [ %i.mm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403 ], [ %lpad.loopexit.split-lp2580, %.loopexit.split-lp770.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.mm, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #27
  br label %.body

_ZL13gmx_snew_implIbEvPKcS1_iRPT_m.exit._crit_edge: ; preds = %_ZL13gmx_snew_implIbEvPKcS1_iRPT_m.exit
  %i.mr = load i8, ptr @_ZZ10gmx_energyiPPcE6bPrAll, align 1, !tbaa !36, !range !37, !noundef !38
  %i.ms = trunc nuw i8 %i.mr to i1
  %or.cond3 = and i1 %i.fk, %i.ms
  br i1 %or.cond3, label %bb.cv, label %_ZL13gmx_snew_implIbEvPKcS1_iRPT_m.exit._crit_edge.thread

bb.cv:                                            ; preds = %_ZL13gmx_snew_implIbEvPKcS1_iRPT_m.exit._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #27
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %52, ptr noundef nonnull align 1 dereferenceable(66) @.str.140, i8 noundef zeroext 2)
          to label %bb.cw unwind label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %52, i32 noundef 2006, ptr noundef nonnull @.str.156) #30
          to label %bb.cx unwind label %bb.cz

bb.cx:                                            ; preds = %bb.cw
  unreachable

bb.cy:                                            ; preds = %bb.cv
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cz:                                            ; preds = %bb.cw
  %i.mu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %52) #27
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.pn303 = phi { ptr, i32 } [ %i.mu, %bb.cz ], [ %i.mt, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #27
  br label %.body

bb.db:                                            ; preds = %bb.p
  %i.mv = invoke noundef ptr @_Z6ftp2fniiPK8t_filenm(i32 noundef 27, i32 noundef 12, ptr noundef nonnull %38)
          to label %bb.dc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp2606

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %i.mv, ptr %i.x, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #27
  invoke void @_ZN10gmx_mtop_tC1Ev(ptr noundef nonnull align 8 dereferenceable(768) %33)
          to label %.noexc406 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp2606

.noexc406:                                        ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #27
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %34, ptr noundef nonnull align 8 dereferenceable(8) %i.x, i8 noundef zeroext 2)
          to label %bb.dd unwind label %bb.dg

bb.dd:                                            ; preds = %.noexc406
  %i.mw = invoke noundef i32 @_Z8read_tpxRKNSt10filesystem7__cxx114pathEP10t_inputrecPA3_fPiS7_S7_P10gmx_mtop_t(ptr noundef nonnull align 8 dereferenceable(40) %34, ptr noundef nonnull %40, ptr noundef nonnull %i.z, ptr noundef nonnull %i.y, ptr noundef null, ptr noundef null, ptr noundef nonnull %33)
          to label %bb.de unwind label %bb.dh     ; 0 uses

bb.de:                                            ; preds = %bb.dd
  %i.mx = getelementptr inbounds nuw i8, ptr %34, i64 32 ; 2 uses
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.my, null
  br i1 %.not.i.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.mx, ptr noundef nonnull %i.my) #27
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i: ; preds = %bb.df, %bb.de
  %i.mz = load ptr, ptr %34, align 8, !tbaa !23   ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.nb = icmp eq ptr %i.mz, %i.na
  br i1 %i.nb, label %_ZL14get_dhdl_parmsPKcP10t_inputrec.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i
  %i.nc = load i64, ptr %i.na, align 8, !tbaa !24
  %i.nd = add i64 %i.nc, 1
  call void @_ZdlPvm(ptr noundef %i.mz, i64 noundef %i.nd) #28
  br label %_ZL14get_dhdl_parmsPKcP10t_inputrec.exit

bb.dg:                                            ; preds = %.noexc406
  %i.ne = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.dh:                                            ; preds = %bb.dd
  %i.nf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %34) #27
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.pn.i = phi { ptr, i32 } [ %i.nf, %bb.dh ], [ %i.ne, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #27
  call void @_ZN10gmx_mtop_tD1Ev(ptr noundef nonnull align 8 dead_on_return(768) dereferenceable(768) %33) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  br label %.body

_ZL14get_dhdl_parmsPKcP10t_inputrec.exit:         ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #27
  call void @_ZN10gmx_mtop_tD1Ev(ptr noundef nonnull align 8 dead_on_return(768) dereferenceable(768) %33) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %_ZL13gmx_snew_implIbEvPKcS1_iRPT_m.exit._crit_edge.thread

_ZL13gmx_snew_implIbEvPKcS1_iRPT_m.exit._crit_edge.thread: ; preds = %_ZL13gmx_snew_implIbEvPKcS1_iRPT_m.exit.preheader, %_ZL14get_dhdl_parmsPKcP10t_inputrec.exit, %_ZL13gmx_snew_implIbEvPKcS1_iRPT_m.exit._crit_edge
  %i.ng = phi i32 [ 0, %_ZL14get_dhdl_parmsPKcP10t_inputrec.exit ], [ %i.fc, %_ZL13gmx_snew_implIbEvPKcS1_iRPT_m.exit._crit_edge ], [ %i.fc, %_ZL13gmx_snew_implIbEvPKcS1_iRPT_m.exit.preheader ]
  %.0651 = phi ptr [ null, %_ZL14get_dhdl_parmsPKcP10t_inputrec.exit ], [ %i.iz, %_ZL13gmx_snew_implIbEvPKcS1_iRPT_m.exit._crit_edge ], [ %i.iz, %_ZL13gmx_snew_implIbEvPKcS1_iRPT_m.exit.preheader ] ; 3 uses
  %.1650 = phi ptr [ null, %_ZL14get_dhdl_parmsPKcP10t_inputrec.exit ], [ %.0649, %_ZL13gmx_snew_implIbEvPKcS1_iRPT_m.exit._crit_edge ], [ %.0649, %_ZL13gmx_snew_implIbEvPKcS1_iRPT_m.exit.preheader ] ; 33 uses
  %.0289 = phi ptr [ null, %_ZL14get_dhdl_parmsPKcP10t_inputrec.exit ], [ %i.gy, %_ZL13gmx_snew_implIbEvPKcS1_iRPT_m.exit._crit_edge ], [ %i.gy, %_ZL13gmx_snew_implIbEvPKcS1_iRPT_m.exit.preheader ] ; 9 uses
  %.3269 = phi float [ -1.000000e+00, %_ZL14get_dhdl_parmsPKcP10t_inputrec.exit ], [ %.2268, %_ZL13gmx_snew_implIbEvPKcS1_iRPT_m.exit._crit_edge ], [ %.2268, %_ZL13gmx_snew_implIbEvPKcS1_iRPT_m.exit.preheader ] ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 7 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 10 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %36, i64 24 ; 4 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %36, i64 32 ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %36, i64 40 ; 4 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %36, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %36, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nj, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.nm, align 8, !tbaa !44
  %i.nn = getelementptr inbounds nuw i8, ptr %36, i64 48 ; 12 uses
  %i.no = sext i32 %i.ng to i64
  %i.np = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.140, i32 noundef 2022, i64 noundef range(i64 -2147483648, 2147483648) %i.no, i64 noundef 56)
          to label %_ZL13gmx_snew_implI9enerdat_tEvPKcS2_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp2606

_ZL13gmx_snew_implI9enerdat_tEvPKcS2_iRPT_m.exit: ; preds = %_ZL13gmx_snew_implIbEvPKcS1_iRPT_m.exit._crit_edge.thread
  store ptr %i.np, ptr %i.nn, align 8, !tbaa !13
  %i.nq = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 7 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ns = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 7 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.nu = getelementptr inbounds nuw i8, ptr %27, i64 32 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %40, i64 448 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.ny = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 4 uses
  br label %.thread677.outer

.thread677.outer:                                 ; preds = %_ZL7do_dhdlP10t_enxframePK10t_inputrecPP8_IO_FILEPKcbPiS9_S9_S9_PK16gmx_output_env_t.exit, %_ZL13gmx_snew_implI9enerdat_tEvPKcS2_iRPT_m.exit
  %.pre1381 = phi i32 [ %.pre1381.pre, %_ZL7do_dhdlP10t_enxframePK10t_inputrecPP8_IO_FILEPKcbPiS9_S9_S9_PK16gmx_output_env_t.exit ], [ 0, %_ZL13gmx_snew_implI9enerdat_tEvPKcS2_iRPT_m.exit ]
  %.0661.ph = phi i32 [ %.2663, %_ZL7do_dhdlP10t_enxframePK10t_inputrecPP8_IO_FILEPKcbPiS9_S9_S9_PK16gmx_output_env_t.exit ], [ 0, %_ZL13gmx_snew_implI9enerdat_tEvPKcS2_iRPT_m.exit ] ; 2 uses
  %.0658.ph = phi i32 [ %.2660, %_ZL7do_dhdlP10t_enxframePK10t_inputrecPP8_IO_FILEPKcbPiS9_S9_S9_PK16gmx_output_env_t.exit ], [ 0, %_ZL13gmx_snew_implI9enerdat_tEvPKcS2_iRPT_m.exit ] ; 5 uses
  %.0655.ph = phi i32 [ %.2657, %_ZL7do_dhdlP10t_enxframePK10t_inputrecPP8_IO_FILEPKcbPiS9_S9_S9_PK16gmx_output_env_t.exit ], [ 0, %_ZL13gmx_snew_implI9enerdat_tEvPKcS2_iRPT_m.exit ] ; 4 uses
  %.0652.ph = phi i32 [ %.2654, %_ZL7do_dhdlP10t_enxframePK10t_inputrecPP8_IO_FILEPKcbPiS9_S9_S9_PK16gmx_output_env_t.exit ], [ 0, %_ZL13gmx_snew_implI9enerdat_tEvPKcS2_iRPT_m.exit ] ; 4 uses
  %.0.ph = phi ptr [ %.3, %_ZL7do_dhdlP10t_enxframePK10t_inputrecPP8_IO_FILEPKcbPiS9_S9_S9_PK16gmx_output_env_t.exit ], [ null, %_ZL13gmx_snew_implI9enerdat_tEvPKcS2_iRPT_m.exit ] ; 5 uses
  %.0283.ph = phi i32 [ %.1284, %_ZL7do_dhdlP10t_enxframePK10t_inputrecPP8_IO_FILEPKcbPiS9_S9_S9_PK16gmx_output_env_t.exit ], [ 0, %_ZL13gmx_snew_implI9enerdat_tEvPKcS2_iRPT_m.exit ]
  %.0279.ph = phi i64 [ %.2281, %_ZL7do_dhdlP10t_enxframePK10t_inputrecPP8_IO_FILEPKcbPiS9_S9_S9_PK16gmx_output_env_t.exit ], [ 0, %_ZL13gmx_snew_implI9enerdat_tEvPKcS2_iRPT_m.exit ]
  %.0275.ph = phi float [ %.2277, %_ZL7do_dhdlP10t_enxframePK10t_inputrecPP8_IO_FILEPKcbPiS9_S9_S9_PK16gmx_output_env_t.exit ], [ 0.000000e+00, %_ZL13gmx_snew_implI9enerdat_tEvPKcS2_iRPT_m.exit ]
  %.0271.ph = phi i1 [ %.2273, %_ZL7do_dhdlP10t_enxframePK10t_inputrecPP8_IO_FILEPKcbPiS9_S9_S9_PK16gmx_output_env_t.exit ], [ false, %_ZL13gmx_snew_implI9enerdat_tEvPKcS2_iRPT_m.exit ]
  br label %.thread677.outer759

.thread677.outer759:                              ; preds = %.thread677.outer759.backedge, %.thread677.outer
  %i.nz = phi i32 [ %.pre1381, %.thread677.outer ], [ %.be, %.thread677.outer759.backedge ] ; 3 uses
  %.0645.ph760 = phi ptr [ null, %.thread677.outer ], [ %.0645.ph760.be, %.thread677.outer759.backedge ] ; 7 uses
  %.0283.ph762 = phi i32 [ %.0283.ph, %.thread677.outer ], [ %.1284, %.thread677.outer759.backedge ]
  %.0279.ph763 = phi i64 [ %.0279.ph, %.thread677.outer ], [ %.2281, %.thread677.outer759.backedge ]
  %.0275.ph764 = phi float [ %.0275.ph, %.thread677.outer ], [ %.2277, %.thread677.outer759.backedge ]
  %.0271.ph765 = phi i1 [ %.0271.ph, %.thread677.outer ], [ %.2273, %.thread677.outer759.backedge ]
  %.promoted = load ptr, ptr %i.nj, align 8
  %.promoted1052 = load ptr, ptr %i.nk, align 8
  %.promoted1053 = load ptr, ptr %i.nl, align 8
  %.promoted1054 = load i64, ptr %36, align 8
  %.promoted1055 = load i64, ptr %i.nh, align 8
  %i.oa = srem i32 %i.nz, 1000
  %i.ob = icmp eq i32 %i.oa, 0
  %i.oc = add nsw i32 %i.nz, 1000
  %i.od = sext i32 %i.oc to i64                   ; 5 uses
  %i.oe = sext i32 %i.nz to i64                   ; 28 uses
  %i.of = load i32, ptr %i.aj, align 4            ; 9 uses
  %i.og = icmp sgt i32 %i.of, 0                   ; 5 uses
  %i.oh = load ptr, ptr %i.nn, align 8            ; 12 uses
end_hunk_0
