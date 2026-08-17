inline.NumInlined: 1887
inline.NumDeleted: 837
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN9Stockfish10Tablebases9probe_dtzERNS_8PositionEPNS0_10ProbeStateE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i: ; preds = %bb.ao, %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
  %i.hg = phi ptr [ %i.gt, %bb.an ], [ %i.gh, %bb.ao ], [ %.pre.i46.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ]
  store i64 0, ptr %i.gs, align 8, !tbaa !90
  store i8 0, ptr %i.hg, align 1, !tbaa !156
  %i.hh = load ptr, ptr %7, align 8, !tbaa !175   ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.gh
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i
  %i.hj = load i64, ptr %i.gh, align 8, !tbaa !156
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hk) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i.i
  %i.hl = load ptr, ptr %8, align 8, !tbaa !175   ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.hn = icmp eq ptr %i.hl, %i.hm
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.i
  %i.ho = load i64, ptr %i.hm, align 8, !tbaa !156
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.hp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i.i
  br i1 %.not25.i.i, label %.critedge30.i.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i.i
  %i.hq = load ptr, ptr %10, align 8, !tbaa !175  ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.hs = icmp eq ptr %i.hq, %i.hr
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i.i: ; preds = %.critedge.i.i
  %i.ht = load i64, ptr %i.hr, align 8, !tbaa !156
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.hu) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i.i: ; preds = %.critedge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.critedge29.i.i

.critedge30.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i.i
  %i.hv = load ptr, ptr %9, align 8, !tbaa !175   ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i.i: ; preds = %.critedge30.i.i
  %i.hy = load i64, ptr %i.hw, align 8, !tbaa !156
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i.i: ; preds = %.critedge30.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %.critedge29.i.i

.critedge29.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call fastcc void @_ZN9Stockfish12_GLOBAL__N_16TBFileC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(288) %11, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.ia = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 8 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 24
  %i.ic = call fastcc noundef ptr @_ZN9Stockfish12_GLOBAL__N_16TBFile3mapEPPvPmNS0_6TBTypeE(ptr noundef nonnull align 8 dereferenceable(288) %11, ptr noundef %i.ia, ptr noundef %i.ib, i32 noundef 1) ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN9Stockfish12_GLOBAL__N_16TBFileE, i64 24), ptr %11, align 8, !tbaa !132
  %i.id = getelementptr inbounds nuw i8, ptr %11, i64 288 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN9Stockfish12_GLOBAL__N_16TBFileE, i64 64), ptr %i.id, align 8, !tbaa !132
  %i.ie = getelementptr inbounds nuw i8, ptr %11, i64 256
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !175 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %11, i64 272 ; 2 uses
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.critedge29.i.i
  %i.ii = load i64, ptr %i.ig, align 8, !tbaa !156
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ij) #30, !inline_history !230
  br label %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i.i

_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i.i:  ; preds = %.critedge29.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_St14basic_ifstreamIcSt11char_traitsIcEE, i64 24), ptr %11, align 8, !tbaa !132
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_St14basic_ifstreamIcSt11char_traitsIcEE, i64 64), ptr %i.id, align 8, !tbaa !132
  %i.ik = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt13basic_filebufIcSt11char_traitsIcEE, i64 16), ptr %i.ik, align 8, !tbaa !132
  %i.il = call noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.ik) #26, !inline_history !230 ; 0 uses
  %i.im = getelementptr inbounds nuw i8, ptr %11, i64 120
  call void @_ZNSt12__basic_fileIcED1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.im) #26, !inline_history !230
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ik, align 8, !tbaa !132
  %i.in = getelementptr inbounds nuw i8, ptr %11, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.in) #26, !inline_history !230
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_Si, i64 24), ptr %11, align 8, !tbaa !132
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN9Stockfish12_GLOBAL__N_16TBFileE0_Si, i64 64), ptr %i.id, align 8, !tbaa !132
  %i.io = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.io, align 8, !tbaa !231
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.id) #26, !inline_history !233
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %.not26.i.i = icmp eq ptr %i.ic, null
  br i1 %.not26.i.i, label %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ic, i64 1
  %i.iq = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 52 ; 4 uses
  %i.ir = load i8, ptr %i.iq, align 4, !tbaa !208, !range !206, !noundef !207 ; 2 uses
  %i.is = trunc nuw i8 %i.ir to i1                ; 9 uses
  %i.it = select i1 %i.is, i8 3, i8 0             ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 55 ; 2 uses
  %i.iv = load i8, ptr %i.iu, align 1
  %i.iw = icmp ne i8 %i.iv, 0
  %i.ix = select i1 %i.is, i1 %i.iw, i1 false
  %i.iy = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 56 ; 13 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 48 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 53 ; 2 uses
  %i.jb = add nuw nsw i8 %i.it, 1                 ; 11 uses
  %wide.trip.count181.i.i.i = zext nneg i8 %i.jb to i64 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 256
  %i.jd = add i64 %.0.val.i.i280, 184
  br label %.preheader131.i.i.i

.preheader131.i.i.i:                              ; preds = %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i.i, %bb.ap
  %i.je = phi i8 [ %i.ir, %bb.ap ], [ %.pre.i59.i.i, %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i.i ]
  %indvars.iv178.i.i.i = phi i64 [ 0, %bb.ap ], [ %indvars.iv.next179.i.i.i, %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i.i ] ; 4 uses
  %.078153.i.i.i = phi ptr [ %i.ip, %bb.ap ], [ %.1.lcssa214224239.i.i.i, %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i.i ] ; 4 uses
  %.078153.i.i.i281 = ptrtoaddr ptr %.078153.i.i.i to i64
  %i.jf = trunc nuw i8 %i.je to i1
  %i.jg = select i1 %i.jf, i64 %indvars.iv178.i.i.i, i64 0
  %i.jh = getelementptr inbounds nuw [240 x i8], ptr %i.iy, i64 %i.jg ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.jh, i8 0, i64 80, i1 false)
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 80 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !281 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 96
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !284
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.jj, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ji, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i, label %bb.ar

bb.aq:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i.i
  %i.jm = ptrtoint ptr %.1.lcssa214224239.i.i.i to i64
  %i.jn = and i64 %i.jm, 1
  %i.jo = getelementptr inbounds nuw i8, ptr %.1.lcssa214224239.i.i.i, i64 %i.jn
  br label %.preheader127.i.i.i

bb.ar:                                            ; preds = %.preheader131.i.i.i
  %i.jp = ptrtoint ptr %i.jl to i64
  %i.jq = ptrtoint ptr %i.jj to i64
  %i.jr = sub i64 %i.jp, %i.jq
  call void @_ZdlPvm(ptr noundef nonnull %i.jj, i64 noundef %i.jr) #30
  br label %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i

_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i:         ; preds = %bb.ar, %.preheader131.i.i.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.jh, i64 104 ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !285 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jh, i64 120
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !287
  %.not.i.i.i.i.i5.i.i.i.i = icmp eq ptr %i.jt, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.js, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i5.i.i.i.i, label %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i
  %i.jw = ptrtoint ptr %i.jv to i64
  %i.jx = ptrtoint ptr %i.jt to i64
  %i.jy = sub i64 %i.jw, %i.jx
  call void @_ZdlPvm(ptr noundef nonnull %i.jt, i64 noundef %i.jy) #30
  br label %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i.i

_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i.i: ; preds = %bb.as, %_ZNSt6vectorImSaImEEaSEOS1_.exit.i.i.i.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jh, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.jz, i8 0, i64 112, i1 false)
  %i.ka = load i8, ptr %.078153.i.i.i, align 1, !tbaa !156
  %i.kb = and i8 %i.ka, 15                        ; 3 uses
  %i.kc = zext nneg i8 %i.kb to i32               ; 2 uses
  br i1 %i.ix, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i.i
  %i.kd = getelementptr inbounds nuw i8, ptr %.078153.i.i.i, i64 1
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !156
  %i.kf = and i8 %i.ke, 15
  %i.kg = zext nneg i8 %i.kf to i32
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i.i
  %i.kh = phi i32 [ %i.kg, %bb.at ], [ 15, %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i.i ] ; 6 uses
  %i.ki = phi i64 [ 2, %bb.at ], [ 1, %_ZN9Stockfish12_GLOBAL__N_19PairsDataD2Ev.exit.i.i.i ] ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.078153.i.i.i, i64 %i.ki ; 8 uses
  %i.kk = load i32, ptr %i.iz, align 8, !tbaa !204 ; 5 uses
  %i.kl = icmp sgt i32 %i.kk, 0
  %.pre.i59.i.i = load i8, ptr %i.iq, align 4, !tbaa !208, !range !206 ; 2 uses
  %i.km = trunc nuw i8 %.pre.i59.i.i to i1        ; 4 uses
  %i.kn = select i1 %i.km, i64 %indvars.iv178.i.i.i, i64 0 ; 4 uses
  br i1 %i.kl, label %iter.check, label %.preheader130.thread.i.i.i

.preheader130.thread.i.i.i:                       ; preds = %bb.au
  %i.ko = getelementptr inbounds nuw [240 x i8], ptr %i.iy, i64 %i.kn ; 4 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 200 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 136 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 144 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ko, i64 204 ; 3 uses
  %i.kt = icmp eq i8 %i.kb, 0                     ; 2 uses
  %i.ku = icmp eq i32 %i.kh, 0                    ; 2 uses
  %i.kv = load i8, ptr %i.ja, align 1, !range !206
  %i.kw = trunc nuw i8 %i.kv to i1
  store i32 1, ptr %i.kp, align 4, !tbaa !89
  store i32 0, ptr %i.ks, align 4, !tbaa !89
  br i1 %i.km, label %bb.az, label %.thread68.split.i.preheader.i.i.i

iter.check:                                       ; preds = %bb.au
  %i.kx = getelementptr inbounds nuw [240 x i8], ptr %.0.val.i.i, i64 %i.kn
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 184 ; 11 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.kk to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %i.kk, 16
  br i1 %min.iters.check, label %.preheader129.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.kz = mul i64 %i.kn, 240
  %i.la = add i64 %i.jd, %i.kz
  %i.lb = add i64 %i.ki, %.078153.i.i.i281
  %i.lc = sub i64 %i.lb, %i.la
  %diff.check = icmp ugt i64 %i.lc, -256
  br i1 %diff.check, label %.preheader129.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check282 = icmp ult i32 %i.kk, 256
  br i1 %min.iters.check282, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ld = and i64 %wide.trip.count.i.i.i, 240
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483392 ; 5 uses
  %i.le = getelementptr i8, ptr %i.kj, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.kj, i64 %index ; 4 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ky, i64 %index ; 4 uses
  %i.lg = getelementptr i8, ptr %next.gep, i64 64
  %i.lh = getelementptr i8, ptr %next.gep, i64 128
  %i.li = getelementptr i8, ptr %next.gep, i64 192
  %wide.load = load <64 x i8>, ptr %next.gep, align 1, !tbaa !156
  %wide.load283 = load <64 x i8>, ptr %i.lg, align 1, !tbaa !156
  %wide.load284 = load <64 x i8>, ptr %i.lh, align 1, !tbaa !156
  %wide.load285 = load <64 x i8>, ptr %i.li, align 1, !tbaa !156
  %i.lj = and <64 x i8> %wide.load, splat (i8 15)
  %i.lk = and <64 x i8> %wide.load283, splat (i8 15)
  %i.ll = and <64 x i8> %wide.load284, splat (i8 15)
  %i.lm = and <64 x i8> %wide.load285, splat (i8 15)
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lf, i64 64
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lf, i64 128
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lf, i64 192
  store <64 x i8> %i.lj, ptr %i.lf, align 1, !tbaa !241
  store <64 x i8> %i.lk, ptr %i.ln, align 1, !tbaa !241
  store <64 x i8> %i.ll, ptr %i.lo, align 1, !tbaa !241
  store <64 x i8> %i.lm, ptr %i.lp, align 1, !tbaa !241
  %index.next = add nuw i64 %index, 256           ; 2 uses
  %i.lq = icmp eq i64 %index.next, %n.vec
  br i1 %i.lq, label %middle.block, label %vector.body, !llvm.loop !288

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %.preheader130.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ld, 0
  br i1 %min.epilog.iters.check, label %.preheader129.i.i.i.preheader, label %vec.epilog.ph, !prof !289

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec286 = and i64 %wide.trip.count.i.i.i, 2147483632 ; 4 uses
  %i.lr = getelementptr i8, ptr %i.kj, i64 %n.vec286 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index287 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next290, %vec.epilog.vector.body ] ; 3 uses
  %next.gep288 = getelementptr i8, ptr %i.kj, i64 %index287
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ky, i64 %index287
  %wide.load289 = load <16 x i8>, ptr %next.gep288, align 1, !tbaa !156
  %i.lt = and <16 x i8> %wide.load289, splat (i8 15)
  store <16 x i8> %i.lt, ptr %i.ls, align 1, !tbaa !241
  %index.next290 = add nuw i64 %index287, 16      ; 2 uses
  %i.lu = icmp eq i64 %index.next290, %n.vec286
  br i1 %i.lu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !290

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n291 = icmp eq i64 %n.vec286, %wide.trip.count.i.i.i
  br i1 %cmp.n291, label %.preheader130.i.i.i, label %.preheader129.i.i.i.preheader

.preheader129.i.i.i.preheader:                    ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec286, %vec.epilog.middle.block ] ; 3 uses
  %.1134.i.i.i.ph = phi ptr [ %i.kj, %iter.check ], [ %i.kj, %vector.memcheck ], [ %i.le, %vec.epilog.iter.check ], [ %i.lr, %vec.epilog.middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 7   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader129.i.i.i.prol.loopexit, label %.preheader129.i.i.i.prol

.preheader129.i.i.i.prol:                         ; preds = %.preheader129.i.i.i.preheader, %.preheader129.i.i.i.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %.preheader129.i.i.i.prol ], [ %indvars.iv.i.i.i.ph, %.preheader129.i.i.i.preheader ] ; 2 uses
  %.1134.i.i.i.prol = phi ptr [ %i.ly, %.preheader129.i.i.i.prol ], [ %.1134.i.i.i.ph, %.preheader129.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader129.i.i.i.prol ], [ 0, %.preheader129.i.i.i.preheader ]
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ky, i64 %indvars.iv.i.i.i.prol
  %i.lw = load i8, ptr %.1134.i.i.i.prol, align 1, !tbaa !156
  %i.lx = and i8 %i.lw, 15
  store i8 %i.lx, ptr %i.lv, align 1, !tbaa !241
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.1134.i.i.i.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader129.i.i.i.prol.loopexit, label %.preheader129.i.i.i.prol, !llvm.loop !291

.preheader129.i.i.i.prol.loopexit:                ; preds = %.preheader129.i.i.i.prol, %.preheader129.i.i.i.preheader
  %.lcssa502.unr = phi ptr [ poison, %.preheader129.i.i.i.preheader ], [ %i.ly, %.preheader129.i.i.i.prol ]
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %.preheader129.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.preheader129.i.i.i.prol ]
  %.1134.i.i.i.unr = phi ptr [ %.1134.i.i.i.ph, %.preheader129.i.i.i.preheader ], [ %i.ly, %.preheader129.i.i.i.prol ]
  %i.lz = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ma = icmp ugt i64 %i.lz, -8
  br i1 %i.ma, label %.preheader130.i.i.i, label %.preheader129.i.i.i

.preheader130.i.i.i:                              ; preds = %.preheader129.i.i.i.prol.loopexit, %.preheader129.i.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa279 = phi ptr [ %i.lr, %vec.epilog.middle.block ], [ %i.le, %middle.block ], [ %.lcssa502.unr, %.preheader129.i.i.i.prol.loopexit ], [ %i.nx, %.preheader129.i.i.i ] ; 2 uses
  %i.mb = getelementptr inbounds nuw [240 x i8], ptr %i.iy, i64 %i.kn ; 5 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 200 ; 6 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 128
  %i.me = getelementptr inbounds nuw i8, ptr %i.mb, i64 136 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mb, i64 144 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mb, i64 204 ; 2 uses
  %i.mh = icmp eq i8 %i.kb, 0                     ; 2 uses
  %i.mi = icmp eq i32 %i.kh, 0                    ; 2 uses
  %i.mj = load i8, ptr %i.ja, align 1, !range !206
  %i.mk = trunc nuw i8 %i.mj to i1                ; 2 uses
  store i32 1, ptr %i.mc, align 4, !tbaa !89
  %.not.i61.i.i = icmp eq i32 %i.kk, 1
  br i1 %.not.i61.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.preheader129.i.i.i:                              ; preds = %.preheader129.i.i.i.prol.loopexit, %.preheader129.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.7, %.preheader129.i.i.i ], [ %indvars.iv.i.i.i.unr, %.preheader129.i.i.i.prol.loopexit ] ; 9 uses
  %.1134.i.i.i = phi ptr [ %i.nx, %.preheader129.i.i.i ], [ %.1134.i.i.i.unr, %.preheader129.i.i.i.prol.loopexit ] ; 9 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ky, i64 %indvars.iv.i.i.i
  %i.mm = load i8, ptr %.1134.i.i.i, align 1, !tbaa !156
  %i.mn = and i8 %i.mm, 15
  store i8 %i.mn, ptr %i.ml, align 1, !tbaa !241
  %i.mo = getelementptr inbounds nuw i8, ptr %.1134.i.i.i, i64 1
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ky, i64 %indvars.iv.i.i.i
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 1
  %i.mr = load i8, ptr %i.mo, align 1, !tbaa !156
  %i.ms = and i8 %i.mr, 15
  store i8 %i.ms, ptr %i.mq, align 1, !tbaa !241
  %i.mt = getelementptr inbounds nuw i8, ptr %.1134.i.i.i, i64 2
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ky, i64 %indvars.iv.i.i.i
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 2
  %i.mw = load i8, ptr %i.mt, align 1, !tbaa !156
  %i.mx = and i8 %i.mw, 15
  store i8 %i.mx, ptr %i.mv, align 1, !tbaa !241
  %i.my = getelementptr inbounds nuw i8, ptr %.1134.i.i.i, i64 3
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ky, i64 %indvars.iv.i.i.i
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 3
  %i.nb = load i8, ptr %i.my, align 1, !tbaa !156
  %i.nc = and i8 %i.nb, 15
  store i8 %i.nc, ptr %i.na, align 1, !tbaa !241
  %i.nd = getelementptr inbounds nuw i8, ptr %.1134.i.i.i, i64 4
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ky, i64 %indvars.iv.i.i.i
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 4
  %i.ng = load i8, ptr %i.nd, align 1, !tbaa !156
  %i.nh = and i8 %i.ng, 15
  store i8 %i.nh, ptr %i.nf, align 1, !tbaa !241
  %i.ni = getelementptr inbounds nuw i8, ptr %.1134.i.i.i, i64 5
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ky, i64 %indvars.iv.i.i.i
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 5
  %i.nl = load i8, ptr %i.ni, align 1, !tbaa !156
  %i.nm = and i8 %i.nl, 15
  store i8 %i.nm, ptr %i.nk, align 1, !tbaa !241
  %i.nn = getelementptr inbounds nuw i8, ptr %.1134.i.i.i, i64 6
  %i.no = getelementptr inbounds nuw i8, ptr %i.ky, i64 %indvars.iv.i.i.i
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 6
  %i.nq = load i8, ptr %i.nn, align 1, !tbaa !156
  %i.nr = and i8 %i.nq, 15
  store i8 %i.nr, ptr %i.np, align 1, !tbaa !241
  %i.ns = getelementptr inbounds nuw i8, ptr %.1134.i.i.i, i64 7
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ky, i64 %indvars.iv.i.i.i
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 7
  %i.nv = load i8, ptr %i.ns, align 1, !tbaa !156
  %i.nw = and i8 %i.nv, 15
  store i8 %i.nw, ptr %i.nu, align 1, !tbaa !241
  %indvars.iv.next.i.i.i.7 = add nuw nsw i64 %indvars.iv.i.i.i, 8 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.1134.i.i.i, i64 8 ; 2 uses
  %exitcond.not.i.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.i.7, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.7, label %.preheader130.i.i.i, label %.preheader129.i.i.i, !llvm.loop !293

.lr.ph.i.i.i.i:                                   ; preds = %.preheader130.i.i.i
  %i.ny = select i1 %i.mk, i32 3, i32 2
  %spec.select258 = select i1 %i.km, i32 0, i32 %i.ny
  br label %select.unfold.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.ay, %.preheader130.i.i.i
  %.064.lcssa.i.i.i.i = phi i32 [ 0, %.preheader130.i.i.i ], [ %.165.i.i.i.i, %bb.ay ] ; 3 uses
  %i.nz = add nsw i32 %.064.lcssa.i.i.i.i, 1
  %i.oa = sext i32 %i.nz to i64                   ; 3 uses
  %i.ob = getelementptr inbounds [4 x i8], ptr %i.mc, i64 %i.oa
  store i32 0, ptr %i.ob, align 4, !tbaa !89
  br i1 %i.km, label %bb.az, label %._crit_edge.i.i..thread68.split.i.preheader.i_crit_edge.i.i

._crit_edge.i.i..thread68.split.i.preheader.i_crit_edge.i.i: ; preds = %._crit_edge.i.i.i.i
  %.pre.i.i = load i32, ptr %i.mc, align 8, !tbaa !89
  br label %.thread68.split.i.preheader.i.i.i

select.unfold.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.ay
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.ay ], [ 1, %.lr.ph.i.i.i.i ] ; 2 uses
  %.06475.i.i.i.i = phi i32 [ %.165.i.i.i.i, %bb.ay ], [ 0, %.lr.ph.i.i.i.i ] ; 3 uses
  %.06772.i.i.i.i = phi i32 [ %i.oc, %bb.ay ], [ %spec.select258, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.oc = add nsw i32 %.06772.i.i.i.i, -1
  %i.od = icmp sgt i32 %.06772.i.i.i.i, 1
  br i1 %i.od, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %select.unfold.i.i.i
  %i.oe = getelementptr inbounds nuw i8, ptr %i.md, i64 %indvars.iv.i.i.i.i ; 2 uses
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !241
  %i.og = getelementptr i8, ptr %i.oe, i64 -1
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !241
  %i.oi = icmp eq i8 %i.of, %i.oh
  br i1 %i.oi, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av, %select.unfold.i.i.i
  %i.oj = sext i32 %.06475.i.i.i.i to i64
  %i.ok = getelementptr inbounds [4 x i8], ptr %i.mc, i64 %i.oj ; 2 uses
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !89
  %i.om = add nsw i32 %i.ol, 1
  store i32 %i.om, ptr %i.ok, align 4, !tbaa !89
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.on = add nsw i32 %.06475.i.i.i.i, 1          ; 2 uses
  %i.oo = sext i32 %i.on to i64
  %i.op = getelementptr inbounds [4 x i8], ptr %i.mc, i64 %i.oo
  store i32 1, ptr %i.op, align 4, !tbaa !89
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.165.i.i.i.i = phi i32 [ %.06475.i.i.i.i, %bb.aw ], [ %i.on, %bb.ax ] ; 2 uses
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.oq = load i32, ptr %i.iz, align 8, !tbaa !204
  %i.or = sext i32 %i.oq to i64
  %i.os = icmp slt i64 %indvars.iv.next.i.i.i.i, %i.or
  br i1 %i.os, label %select.unfold.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !294

bb.az:                                            ; preds = %._crit_edge.i.i.i.i, %.preheader130.thread.i.i.i
  %i.ot = phi i64 [ 1, %.preheader130.thread.i.i.i ], [ %i.oa, %._crit_edge.i.i.i.i ] ; 2 uses
  %.064.lcssa.i229.i.i.i = phi i32 [ 0, %.preheader130.thread.i.i.i ], [ %.064.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %.1.lcssa214225.i.i.i = phi ptr [ %i.kj, %.preheader130.thread.i.i.i ], [ %.lcssa279, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ou = phi ptr [ %i.kp, %.preheader130.thread.i.i.i ], [ %i.mc, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ov = phi ptr [ %i.kq, %.preheader130.thread.i.i.i ], [ %i.me, %._crit_edge.i.i.i.i ] ; 4 uses
  %i.ow = phi ptr [ %i.kr, %.preheader130.thread.i.i.i ], [ %i.mf, %._crit_edge.i.i.i.i ]
  %i.ox = phi ptr [ %i.ks, %.preheader130.thread.i.i.i ], [ %i.mg, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.oy = phi i1 [ %i.kt, %.preheader130.thread.i.i.i ], [ %i.mh, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.oz = phi i1 [ %i.ku, %.preheader130.thread.i.i.i ], [ %i.mi, %._crit_edge.i.i.i.i ]
  %invariant.gep215223.i.i.i = getelementptr [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_113LeadPawnsSizeE, i64 %indvars.iv178.i.i.i
  %i.pa = load i8, ptr %i.iu, align 1, !tbaa !156
  %.not69.i.i.i.i = icmp eq i8 %i.pa, 0
  br i1 %.not69.i.i.i.i, label %.thread68.split.us.i.preheader.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.pb = load i32, ptr %i.ox, align 4, !tbaa !89
  %i.pc = sub i32 64, %i.pb
  br label %.thread68.split.us.i.preheader.i.i.i

.thread68.split.i.preheader.i.i.i:                ; preds = %._crit_edge.i.i..thread68.split.i.preheader.i_crit_edge.i.i, %.preheader130.thread.i.i.i
  %i.pd = phi i32 [ 1, %.preheader130.thread.i.i.i ], [ %.pre.i.i, %._crit_edge.i.i..thread68.split.i.preheader.i_crit_edge.i.i ] ; 2 uses
  %i.pe = phi i64 [ 1, %.preheader130.thread.i.i.i ], [ %i.oa, %._crit_edge.i.i..thread68.split.i.preheader.i_crit_edge.i.i ] ; 2 uses
  %.064.lcssa.i228.i.i.i = phi i32 [ 0, %.preheader130.thread.i.i.i ], [ %.064.lcssa.i.i.i.i, %._crit_edge.i.i..thread68.split.i.preheader.i_crit_edge.i.i ] ; 2 uses
  %.1.lcssa214224.i.i.i = phi ptr [ %i.kj, %.preheader130.thread.i.i.i ], [ %.lcssa279, %._crit_edge.i.i..thread68.split.i.preheader.i_crit_edge.i.i ] ; 2 uses
  %i.pf = phi ptr [ %i.kq, %.preheader130.thread.i.i.i ], [ %i.me, %._crit_edge.i.i..thread68.split.i.preheader.i_crit_edge.i.i ] ; 4 uses
  %i.pg = phi ptr [ %i.kr, %.preheader130.thread.i.i.i ], [ %i.mf, %._crit_edge.i.i..thread68.split.i.preheader.i_crit_edge.i.i ]
  %i.ph = phi ptr [ %i.ks, %.preheader130.thread.i.i.i ], [ %i.mg, %._crit_edge.i.i..thread68.split.i.preheader.i_crit_edge.i.i ]
  %i.pi = phi i1 [ %i.kt, %.preheader130.thread.i.i.i ], [ %i.mh, %._crit_edge.i.i..thread68.split.i.preheader.i_crit_edge.i.i ] ; 2 uses
  %i.pj = phi i1 [ %i.ku, %.preheader130.thread.i.i.i ], [ %i.mi, %._crit_edge.i.i..thread68.split.i.preheader.i_crit_edge.i.i ]
  %i.pk = phi i1 [ %i.kw, %.preheader130.thread.i.i.i ], [ %i.mk, %._crit_edge.i.i..thread68.split.i.preheader.i_crit_edge.i.i ]
  %i.pl = sub nsw i32 48, %i.pd
  %i.pm = sext i32 %i.pl to i64
  %invariant.gep.i.i.i.i = getelementptr [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 %i.pm
  %i.pn = select i1 %i.pk, i32 31332, i32 462
  %.not.i136.i.i.i = icmp sgt i32 %.064.lcssa.i228.i.i.i, 0
  %or.cond80.i137.i.i.i = select i1 %.not.i136.i.i.i, i1 true, i1 %i.pi
  %or.cond119138.i.i.i = select i1 %or.cond80.i137.i.i.i, i1 true, i1 %i.pj
  br i1 %or.cond119138.i.i.i, label %.critedge.i.i.preheader.i.i, label %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i.i

.critedge.i.i.preheader.i.i:                      ; preds = %.thread68.split.i.preheader.i.i.i
  %i.po = sub i32 64, %i.pd
  br label %.critedge.i.i.i.i

.thread68.split.us.i.preheader.i.i.i:             ; preds = %bb.ba, %bb.az
  %.ph.i.i.i = phi i32 [ 1, %bb.az ], [ 2, %bb.ba ] ; 2 uses
  %.neg71.i.ph.i.i.i = phi i32 [ 64, %bb.az ], [ %i.pc, %bb.ba ]
  %i.pp = load i32, ptr %i.ou, align 8, !tbaa !89 ; 3 uses
  %i.pq = sub nsw i32 48, %i.pp
  %i.pr = sext i32 %i.pq to i64
  %invariant.gep.i236.i.i.i = getelementptr [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 %i.pr
  %i.ps = sext i32 %i.pp to i64
  %gep237.i.i.i = getelementptr [16 x i8], ptr %invariant.gep215223.i.i.i, i64 %i.ps
  %.not.us.i144.i.i.i = icmp sle i32 %.ph.i.i.i, %.064.lcssa.i229.i.i.i
  %or.cond.i145.i.i.i = select i1 %.not.us.i144.i.i.i, i1 true, i1 %i.oy
  %or.cond146.i.i.i = select i1 %or.cond.i145.i.i.i, i1 true, i1 %i.oz
  br i1 %or.cond146.i.i.i, label %.critedge.us.i.i.preheader.i.i, label %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i.i

.critedge.us.i.i.preheader.i.i:                   ; preds = %.thread68.split.us.i.preheader.i.i.i
  %i.pt = sub i32 %.neg71.i.ph.i.i.i, %i.pp
  br label %.critedge.us.i.i.i.i

.critedge.us.i.i.i.i:                             ; preds = %.thread68.split.us.i.i.i.i, %.critedge.us.i.i.preheader.i.i
  %i.pu = phi i1 [ %i.qj, %.thread68.split.us.i.i.i.i ], [ %i.oy, %.critedge.us.i.i.preheader.i.i ]
  %.0.us.i150.i.i.i = phi i32 [ %i.qi, %.thread68.split.us.i.i.i.i ], [ 0, %.critedge.us.i.i.preheader.i.i ] ; 2 uses
  %.059.us.i149.i.i.i = phi i64 [ %.1.us.i.i.i.i, %.thread68.split.us.i.i.i.i ], [ 1, %.critedge.us.i.i.preheader.i.i ] ; 4 uses
  %.060.us.i148.i.i.i = phi i32 [ %.161.us.i.i.i.i, %.thread68.split.us.i.i.i.i ], [ %i.pt, %.critedge.us.i.i.preheader.i.i ] ; 4 uses
  %.062.us.i147.i.i.i = phi i32 [ %.163.us.i.i.i.i, %.thread68.split.us.i.i.i.i ], [ %.ph.i.i.i, %.critedge.us.i.i.preheader.i.i ] ; 4 uses
  br i1 %i.pu, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %.critedge.us.i.i.i.i
  %i.pv = icmp eq i32 %.0.us.i150.i.i.i, %i.kh
  br i1 %i.pv, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.pw = sext i32 %.062.us.i147.i.i.i to i64     ; 2 uses
  %i.px = getelementptr inbounds [8 x i8], ptr %i.ov, i64 %i.pw
  store i64 %.059.us.i149.i.i.i, ptr %i.px, align 8, !tbaa !17
  %i.py = getelementptr inbounds [4 x i8], ptr %i.ou, i64 %i.pw
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !89 ; 2 uses
  %i.qa = sext i32 %i.pz to i64
  %i.qb = getelementptr inbounds [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 %i.qa
  %i.qc = sext i32 %.060.us.i148.i.i.i to i64
  %i.qd = getelementptr inbounds [4 x i8], ptr %i.qb, i64 %i.qc
  %i.qe = add nsw i32 %.062.us.i147.i.i.i, 1
  %i.qf = sub nsw i32 %.060.us.i148.i.i.i, %i.pz
  br label %.thread68.split.us.i.i.i.i

bb.bd:                                            ; preds = %bb.bb
  store i64 %.059.us.i149.i.i.i, ptr %i.ow, align 8, !tbaa !17
  %i.qg = load i32, ptr %i.ox, align 4, !tbaa !89
  %i.qh = sext i32 %i.qg to i64
  %gep.us.i.i.i.i = getelementptr [256 x i8], ptr %invariant.gep.i236.i.i.i, i64 %i.qh
  br label %.thread68.split.us.i.i.i.i

bb.be:                                            ; preds = %.critedge.us.i.i.i.i
  store i64 %.059.us.i149.i.i.i, ptr %i.ov, align 8, !tbaa !17
  br label %.thread68.split.us.i.i.i.i

.thread68.split.us.i.i.i.i:                       ; preds = %bb.be, %bb.bd, %bb.bc
  %.163.us.i.i.i.i = phi i32 [ %i.qe, %bb.bc ], [ %.062.us.i147.i.i.i, %bb.bd ], [ %.062.us.i147.i.i.i, %bb.be ] ; 2 uses
  %.161.us.i.i.i.i = phi i32 [ %i.qf, %bb.bc ], [ %.060.us.i148.i.i.i, %bb.bd ], [ %.060.us.i148.i.i.i, %bb.be ]
  %.pn.in.us.in.i.i.i.i = phi ptr [ %i.qd, %bb.bc ], [ %gep.us.i.i.i.i, %bb.bd ], [ %gep237.i.i.i, %bb.be ]
  %.pn.in.us.i.i.i.i = load i32, ptr %.pn.in.us.in.i.i.i.i, align 4, !tbaa !89
  %.pn.us.i.i.i.i = sext i32 %.pn.in.us.i.i.i.i to i64
  %.1.us.i.i.i.i = mul i64 %.059.us.i149.i.i.i, %.pn.us.i.i.i.i ; 2 uses
  %i.qi = add nuw nsw i32 %.0.us.i150.i.i.i, 1    ; 3 uses
  %.not.us.i.i.i.i = icmp sle i32 %.163.us.i.i.i.i, %.064.lcssa.i229.i.i.i
  %i.qj = icmp eq i32 %i.qi, %i.kc                ; 2 uses
  %or.cond.i.i.i.i = select i1 %.not.us.i.i.i.i, i1 true, i1 %i.qj
  %i.qk = icmp eq i32 %i.qi, %i.kh
  %or.cond.i.i.i = select i1 %or.cond.i.i.i.i, i1 true, i1 %i.qk
  br i1 %or.cond.i.i.i, label %.critedge.us.i.i.i.i, label %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i.i, !llvm.loop !295

.critedge.i.i.i.i:                                ; preds = %.thread68.split.i.i.i.i, %.critedge.i.i.preheader.i.i
  %i.ql = phi i1 [ %i.rc, %.thread68.split.i.i.i.i ], [ %i.pi, %.critedge.i.i.preheader.i.i ]
  %.0.i142.i.i.i = phi i32 [ %i.rb, %.thread68.split.i.i.i.i ], [ 0, %.critedge.i.i.preheader.i.i ] ; 2 uses
  %.059.i141.i.i.i = phi i64 [ %.1.i.i.i.i, %.thread68.split.i.i.i.i ], [ 1, %.critedge.i.i.preheader.i.i ] ; 4 uses
  %.060.i140.i.i.i = phi i32 [ %.161.i.i.i.i, %.thread68.split.i.i.i.i ], [ %i.po, %.critedge.i.i.preheader.i.i ] ; 4 uses
  %.062.i139.i.i.i = phi i32 [ %.163.i.i.i.i, %.thread68.split.i.i.i.i ], [ 1, %.critedge.i.i.preheader.i.i ] ; 4 uses
  br i1 %i.ql, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.critedge.i.i.i.i
  store i64 %.059.i141.i.i.i, ptr %i.pf, align 8, !tbaa !17
  br label %.thread68.split.i.i.i.i

bb.bg:                                            ; preds = %.critedge.i.i.i.i
  %i.qm = icmp eq i32 %.0.i142.i.i.i, %i.kh
  br i1 %i.qm, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i64 %.059.i141.i.i.i, ptr %i.pg, align 8, !tbaa !17
  %i.qn = load i32, ptr %i.ph, align 4, !tbaa !89
  %i.qo = sext i32 %i.qn to i64
  %gep.i.i.i.i = getelementptr [256 x i8], ptr %invariant.gep.i.i.i.i, i64 %i.qo
  %i.qp = load i32, ptr %gep.i.i.i.i, align 4, !tbaa !89
  br label %.thread68.split.i.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.qq = sext i32 %.062.i139.i.i.i to i64        ; 2 uses
  %i.qr = getelementptr inbounds [8 x i8], ptr %i.pf, i64 %i.qq
  store i64 %.059.i141.i.i.i, ptr %i.qr, align 8, !tbaa !17
  %i.qs = getelementptr inbounds [4 x i8], ptr %i.jc, i64 %i.qq
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !89 ; 2 uses
  %i.qu = sext i32 %i.qt to i64
  %i.qv = getelementptr inbounds [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 %i.qu
  %i.qw = sext i32 %.060.i140.i.i.i to i64
  %i.qx = getelementptr inbounds [4 x i8], ptr %i.qv, i64 %i.qw
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !89
  %i.qz = add nsw i32 %.062.i139.i.i.i, 1
  %i.ra = sub nsw i32 %.060.i140.i.i.i, %i.qt
  br label %.thread68.split.i.i.i.i

.thread68.split.i.i.i.i:                          ; preds = %bb.bi, %bb.bh, %bb.bf
  %.163.i.i.i.i = phi i32 [ %i.qz, %bb.bi ], [ %.062.i139.i.i.i, %bb.bh ], [ %.062.i139.i.i.i, %bb.bf ] ; 2 uses
  %.161.i.i.i.i = phi i32 [ %i.ra, %bb.bi ], [ %.060.i140.i.i.i, %bb.bh ], [ %.060.i140.i.i.i, %bb.bf ]
  %.pn.in.i.i.i.i = phi i32 [ %i.qy, %bb.bi ], [ %i.qp, %bb.bh ], [ %i.pn, %bb.bf ]
  %.pn.i.i.i.i = sext i32 %.pn.in.i.i.i.i to i64
  %.1.i.i.i.i = mul i64 %.059.i141.i.i.i, %.pn.i.i.i.i ; 2 uses
  %i.rb = add nuw nsw i32 %.0.i142.i.i.i, 1       ; 3 uses
  %.not.i.i60.i.i = icmp sle i32 %.163.i.i.i.i, %.064.lcssa.i228.i.i.i
  %i.rc = icmp eq i32 %i.rb, %i.kc                ; 2 uses
  %or.cond80.i.i.i.i = select i1 %.not.i.i60.i.i, i1 true, i1 %i.rc
  %i.rd = icmp eq i32 %i.rb, %i.kh
  %or.cond119.i.i.i = select i1 %or.cond80.i.i.i.i, i1 true, i1 %i.rd
  br i1 %or.cond119.i.i.i, label %.critedge.i.i.i.i, label %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i.i, !llvm.loop !295

_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i.i: ; preds = %.thread68.split.i.i.i.i, %.thread68.split.us.i.i.i.i, %.thread68.split.us.i.preheader.i.i.i, %.thread68.split.i.preheader.i.i.i
  %17 = phi i64 [ %i.ot, %.thread68.split.us.i.i.i.i ], [ %i.ot, %.thread68.split.us.i.preheader.i.i.i ], [ %i.pe, %.thread68.split.i.preheader.i.i.i ], [ %i.pe, %.thread68.split.i.i.i.i ]
  %.1.lcssa214224239.i.i.i = phi ptr [ %.1.lcssa214225.i.i.i, %.thread68.split.us.i.i.i.i ], [ %.1.lcssa214225.i.i.i, %.thread68.split.us.i.preheader.i.i.i ], [ %.1.lcssa214224.i.i.i, %.thread68.split.i.preheader.i.i.i ], [ %.1.lcssa214224.i.i.i, %.thread68.split.i.i.i.i ] ; 3 uses
  %18 = phi ptr [ %i.ov, %.thread68.split.us.i.i.i.i ], [ %i.ov, %.thread68.split.us.i.preheader.i.i.i ], [ %i.pf, %.thread68.split.i.preheader.i.i.i ], [ %i.pf, %.thread68.split.i.i.i.i ]
  %.us-phi.i.i.i.i = phi i64 [ %.1.us.i.i.i.i, %.thread68.split.us.i.i.i.i ], [ 1, %.thread68.split.us.i.preheader.i.i.i ], [ 1, %.thread68.split.i.preheader.i.i.i ], [ %.1.i.i.i.i, %.thread68.split.i.i.i.i ]
  %i.re = getelementptr inbounds [8 x i8], ptr %18, i64 %17
  store i64 %.us-phi.i.i.i.i, ptr %i.re, align 8, !tbaa !17
  %indvars.iv.next179.i.i.i = add nuw nsw i64 %indvars.iv178.i.i.i, 1 ; 2 uses
  %exitcond182.i.i.i = icmp eq i64 %indvars.iv.next179.i.i.i, %wide.trip.count181.i.i.i
  br i1 %exitcond182.i.i.i, label %bb.aq, label %.preheader131.i.i.i, !llvm.loop !296

.preheader127.i.i.i:                              ; preds = %.preheader127.i.i.i, %bb.aq
  %indvars.iv183.i.i.i = phi i64 [ 0, %bb.aq ], [ %indvars.iv.next184.i.i.i, %.preheader127.i.i.i ] ; 2 uses
  %.2156.i.i.i = phi ptr [ %i.jo, %bb.aq ], [ %i.rj, %.preheader127.i.i.i ]
  %i.rf = load i8, ptr %i.iq, align 4, !tbaa !208, !range !206, !noundef !207
  %i.rg = trunc nuw i8 %i.rf to i1
  %i.rh = select i1 %i.rg, i64 %indvars.iv183.i.i.i, i64 0
  %i.ri = getelementptr inbounds nuw [240 x i8], ptr %i.iy, i64 %i.rh
  %i.rj = call fastcc noundef ptr @_ZN9Stockfish12_GLOBAL__N_19set_sizesEPNS0_9PairsDataEPh(ptr noundef %i.ri, ptr noundef %.2156.i.i.i) ; 18 uses
  %indvars.iv.next184.i.i.i = add nuw nsw i64 %indvars.iv183.i.i.i, 1 ; 2 uses
  %exitcond187.i.i.i = icmp eq i64 %indvars.iv.next184.i.i.i, %wide.trip.count181.i.i.i
  br i1 %exitcond187.i.i.i, label %bb.bj, label %.preheader127.i.i.i, !llvm.loop !297

bb.bj:                                            ; preds = %.preheader127.i.i.i
  %i.rk = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 16
  store ptr %i.rj, ptr %i.rk, align 8, !tbaa !298
  %i.rl = load i8, ptr %i.iq, align 4, !tbaa !208, !range !206, !noundef !207 ; 3 uses
  %i.rm = trunc nuw i8 %i.rl to i1                ; 6 uses
  %i.rn = ptrtoint ptr %i.rj to i64               ; 75 uses
  %i.ro = load i8, ptr @_ZN9StockfishL14IsLittleEndianE, align 1, !range !206
  %.fr74.i.i.i.i = freeze i8 %i.ro
  %.not3.not.i.i.i.i.i = icmp eq i8 %.fr74.i.i.i.i, 0
  br i1 %.not3.not.i.i.i.i.i, label %.split41.us.i.i.i.i, label %.split41.i.i.i.i

.split41.us.i.i.i.i:                              ; preds = %bb.bj
  %i.rp = load i8, ptr %i.iy, align 8, !tbaa !299
  %i.rq = zext i8 %i.rp to i32                    ; 2 uses
  %i.rr = and i32 %i.rq, 2
  %.not28.us.i.i.i.i = icmp eq i32 %i.rr, 0
  br i1 %.not28.us.i.i.i.i, label %.loopexit.us.i.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %.split41.us.i.i.i.i
  %i.rs = and i32 %i.rq, 16
  %.not29.us.i.i.i.i = icmp eq i32 %i.rs, 0
  br i1 %.not29.us.i.i.i.i, label %.preheader.us.i.i.i.i, label %.split.us.us.i.i.i.i

.split.us.us.i.i.i.i:                             ; preds = %bb.bk
  %i.rt = ptrtoint ptr %i.rj to i64
  %i.ru = and i64 %i.rt, 1
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.ru ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 288
  store i16 1, ptr %i.rw, align 8, !tbaa !239
  %.1.val.us.us.i.i.i.i = load i16, ptr %i.rv, align 1
  %.sroa.0.0.insert.insert.i.us.us.i.i.i.i = call i16 @llvm.bswap.i16(i16 %.1.val.us.us.i.i.i.i) ; 2 uses
  %i.rx = zext i16 %.sroa.0.0.insert.insert.i.us.us.i.i.i.i to i64
  %i.ry = shl nuw nsw i64 %i.rx, 1                ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rv, i64 %i.ry
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 2 ; 2 uses
  %i.sb = add i16 %.sroa.0.0.insert.insert.i.us.us.i.i.i.i, 2
  %i.sc = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 290
  store i16 %i.sb, ptr %i.sc, align 2, !tbaa !239
  %.1.val.us.us.1.i.i.i.i = load i16, ptr %i.sa, align 1
  %.sroa.0.0.insert.insert.i.us.us.1.i.i.i.i = call i16 @llvm.bswap.i16(i16 %.1.val.us.us.1.i.i.i.i)
  %i.sd = zext i16 %.sroa.0.0.insert.insert.i.us.us.1.i.i.i.i to i64
  %i.se = shl nuw nsw i64 %i.sd, 1                ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sa, i64 %i.se
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 2 ; 2 uses
  %i.sh = add nuw nsw i64 %i.ry, %i.se
  %i.si = add nuw nsw i64 %i.sh, 4
  %i.sj = lshr exact i64 %i.si, 1
  %i.sk = trunc i64 %i.sj to i16
  %i.sl = add i16 %i.sk, 1
  %i.sm = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 292
  store i16 %i.sl, ptr %i.sm, align 4, !tbaa !239
  %.1.val.us.us.2.i.i.i.i = load i16, ptr %i.sg, align 1
  %.sroa.0.0.insert.insert.i.us.us.2.i.i.i.i = call i16 @llvm.bswap.i16(i16 %.1.val.us.us.2.i.i.i.i)
  %i.sn = zext i16 %.sroa.0.0.insert.insert.i.us.us.2.i.i.i.i to i64
  %i.so = shl nuw nsw i64 %i.sn, 1
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sg, i64 %i.so
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 2 ; 3 uses
  %i.sr = ptrtoint ptr %i.sq to i64
  %i.ss = sub i64 %i.sr, %i.rn
  %i.st = lshr exact i64 %i.ss, 1
  %i.su = trunc i64 %i.st to i16
  %i.sv = add i16 %i.su, 1
  %i.sw = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 294
  store i16 %i.sv, ptr %i.sw, align 2, !tbaa !239
  %.1.val.us.us.3.i.i.i.i = load i16, ptr %i.sq, align 1
  %.sroa.0.0.insert.insert.i.us.us.3.i.i.i.i = call i16 @llvm.bswap.i16(i16 %.1.val.us.us.3.i.i.i.i)
  %i.sx = zext i16 %.sroa.0.0.insert.insert.i.us.us.3.i.i.i.i to i64
  %i.sy = shl nuw nsw i64 %i.sx, 1
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sq, i64 %i.sy
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 2
  br label %.loopexit.us.i.i.i.i

.loopexit.us.i.i.i.i:                             ; preds = %.preheader.us.i.i.i.i, %.split.us.us.i.i.i.i, %.split41.us.i.i.i.i
  %.3.us.i.i.i.i = phi ptr [ %i.rj, %.split41.us.i.i.i.i ], [ %i.ady, %.preheader.us.i.i.i.i ], [ %i.ta, %.split.us.us.i.i.i.i ] ; 7 uses
  br i1 %i.is, label %.split41.us.i.i.i.i.1, label %_ZN9Stockfish12_GLOBAL__N_111set_dtz_mapERNS0_7TBTableILNS0_6TBTypeE1EEEPhNS_4FileE.exit.i.i.i

.split41.us.i.i.i.i.1:                            ; preds = %.loopexit.us.i.i.i.i
  %i.tb = zext nneg i8 %i.rl to i64
  %i.tc = getelementptr inbounds nuw [240 x i8], ptr %i.iy, i64 %i.tb ; 9 uses
  %i.td = load i8, ptr %i.tc, align 8, !tbaa !299
  %i.te = zext i8 %i.td to i32                    ; 2 uses
  %i.tf = and i32 %i.te, 2
  %.not28.us.i.i.i.i.1 = icmp eq i32 %i.tf, 0
  br i1 %.not28.us.i.i.i.i.1, label %.loopexit.us.i.i.i.i.1, label %bb.bl

bb.bl:                                            ; preds = %.split41.us.i.i.i.i.1
  %i.tg = and i32 %i.te, 16
  %.not29.us.i.i.i.i.1 = icmp eq i32 %i.tg, 0
  br i1 %.not29.us.i.i.i.i.1, label %.preheader.us.i.i.i.i.1, label %.split.us.us.i.i.i.i.1

.split.us.us.i.i.i.i.1:                           ; preds = %bb.bl
  %i.th = ptrtoint ptr %.3.us.i.i.i.i to i64
  %i.ti = and i64 %i.th, 1
  %i.tj = getelementptr inbounds nuw i8, ptr %.3.us.i.i.i.i, i64 %i.ti ; 3 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tc, i64 232
  %i.tl = ptrtoint ptr %i.tj to i64
  %i.tm = sub i64 %i.tl, %i.rn
  %i.tn = lshr exact i64 %i.tm, 1
  %i.to = trunc i64 %i.tn to i16
  %i.tp = add i16 %i.to, 1
  store i16 %i.tp, ptr %i.tk, align 8, !tbaa !239
  %.1.val.us.us.i.i.i.i.1 = load i16, ptr %i.tj, align 1
  %.sroa.0.0.insert.insert.i.us.us.i.i.i.i.1 = call i16 @llvm.bswap.i16(i16 %.1.val.us.us.i.i.i.i.1)
  %i.tq = zext i16 %.sroa.0.0.insert.insert.i.us.us.i.i.i.i.1 to i64
  %i.tr = shl nuw nsw i64 %i.tq, 1
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tj, i64 %i.tr
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 2 ; 3 uses
  %i.tu = ptrtoint ptr %i.tt to i64
  %i.tv = sub i64 %i.tu, %i.rn
  %i.tw = lshr exact i64 %i.tv, 1
  %i.tx = trunc i64 %i.tw to i16
  %i.ty = add i16 %i.tx, 1
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tc, i64 234
  store i16 %i.ty, ptr %i.tz, align 2, !tbaa !239
  %.1.val.us.us.1.i.i.i.i.1 = load i16, ptr %i.tt, align 1
  %.sroa.0.0.insert.insert.i.us.us.1.i.i.i.i.1 = call i16 @llvm.bswap.i16(i16 %.1.val.us.us.1.i.i.i.i.1)
  %i.ua = zext i16 %.sroa.0.0.insert.insert.i.us.us.1.i.i.i.i.1 to i64
  %i.ub = shl nuw nsw i64 %i.ua, 1
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tt, i64 %i.ub
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 2 ; 3 uses
  %i.ue = ptrtoint ptr %i.ud to i64
  %i.uf = sub i64 %i.ue, %i.rn
  %i.ug = lshr exact i64 %i.uf, 1
  %i.uh = trunc i64 %i.ug to i16
  %i.ui = add i16 %i.uh, 1
  %i.uj = getelementptr inbounds nuw i8, ptr %i.tc, i64 236
  store i16 %i.ui, ptr %i.uj, align 4, !tbaa !239
  %.1.val.us.us.2.i.i.i.i.1 = load i16, ptr %i.ud, align 1
  %.sroa.0.0.insert.insert.i.us.us.2.i.i.i.i.1 = call i16 @llvm.bswap.i16(i16 %.1.val.us.us.2.i.i.i.i.1)
  %i.uk = zext i16 %.sroa.0.0.insert.insert.i.us.us.2.i.i.i.i.1 to i64
  %i.ul = shl nuw nsw i64 %i.uk, 1
  %i.um = getelementptr inbounds nuw i8, ptr %i.ud, i64 %i.ul
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 2 ; 3 uses
  %i.uo = ptrtoint ptr %i.un to i64
  %i.up = sub i64 %i.uo, %i.rn
  %i.uq = lshr exact i64 %i.up, 1
  %i.ur = trunc i64 %i.uq to i16
  %i.us = add i16 %i.ur, 1
  %i.ut = getelementptr inbounds nuw i8, ptr %i.tc, i64 238
  store i16 %i.us, ptr %i.ut, align 2, !tbaa !239
  %.1.val.us.us.3.i.i.i.i.1 = load i16, ptr %i.un, align 1
  %.sroa.0.0.insert.insert.i.us.us.3.i.i.i.i.1 = call i16 @llvm.bswap.i16(i16 %.1.val.us.us.3.i.i.i.i.1)
  %i.uu = zext i16 %.sroa.0.0.insert.insert.i.us.us.3.i.i.i.i.1 to i64
  %i.uv = shl nuw nsw i64 %i.uu, 1
  %i.uw = getelementptr inbounds nuw i8, ptr %i.un, i64 %i.uv
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 2
  br label %.loopexit.us.i.i.i.i.1

.preheader.us.i.i.i.i.1:                          ; preds = %bb.bl
  %i.uy = getelementptr inbounds nuw i8, ptr %i.tc, i64 232
  %i.uz = ptrtoint ptr %.3.us.i.i.i.i to i64
  %i.va = sub i64 %i.uz, %i.rn
  %i.vb = trunc i64 %i.va to i16
  %i.vc = add i16 %i.vb, 1
  store i16 %i.vc, ptr %i.uy, align 8, !tbaa !239
  %i.vd = load i8, ptr %.3.us.i.i.i.i, align 1, !tbaa !156
  %i.ve = zext i8 %i.vd to i64
  %i.vf = getelementptr inbounds nuw i8, ptr %.3.us.i.i.i.i, i64 %i.ve
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 1 ; 3 uses
  %i.vh = ptrtoint ptr %i.vg to i64
  %i.vi = sub i64 %i.vh, %i.rn
  %i.vj = trunc i64 %i.vi to i16
  %i.vk = add i16 %i.vj, 1
  %i.vl = getelementptr inbounds nuw i8, ptr %i.tc, i64 234
  store i16 %i.vk, ptr %i.vl, align 2, !tbaa !239
  %i.vm = load i8, ptr %i.vg, align 1, !tbaa !156
  %i.vn = zext i8 %i.vm to i64
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vg, i64 %i.vn
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 1 ; 3 uses
  %i.vq = ptrtoint ptr %i.vp to i64
  %i.vr = sub i64 %i.vq, %i.rn
  %i.vs = trunc i64 %i.vr to i16
  %i.vt = add i16 %i.vs, 1
  %i.vu = getelementptr inbounds nuw i8, ptr %i.tc, i64 236
  store i16 %i.vt, ptr %i.vu, align 4, !tbaa !239
  %i.vv = load i8, ptr %i.vp, align 1, !tbaa !156
  %i.vw = zext i8 %i.vv to i64
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vp, i64 %i.vw
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 1 ; 3 uses
  %i.vz = ptrtoint ptr %i.vy to i64
  %i.wa = sub i64 %i.vz, %i.rn
  %i.wb = trunc i64 %i.wa to i16
  %i.wc = add i16 %i.wb, 1
end_hunk_0
begin_hunk_1_@_ZN9Stockfish12_GLOBAL__N_111probe_tableILNS0_6TBTypeE0ENS_10Tablebases8WDLScoreEEET0_RKNS_8PositionEPNS3_10ProbeStateES4_:bb.a
vec.epilog.middle.block67:                        ; preds = %vec.epilog.vector.body61
  %cmp.n68 = icmp eq i64 %n.vec60, %wide.trip.count.i.i
  br i1 %cmp.n68, label %.preheader133.i.i, label %.loopexit.i.i.preheader

.loopexit.i.i.preheader:                          ; preds = %vector.memcheck38, %iter.check55, %vec.epilog.iter.check57, %vec.epilog.middle.block67
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check55 ], [ 0, %vector.memcheck38 ], [ %n.vec45, %vec.epilog.iter.check57 ], [ %n.vec60, %vec.epilog.middle.block67 ] ; 3 uses
  %.1137.i.i.ph = phi ptr [ %i.jk, %iter.check55 ], [ %i.jk, %vector.memcheck38 ], [ %i.jy, %vec.epilog.iter.check57 ], [ %i.ke, %vec.epilog.middle.block67 ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 7     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i.prol.loopexit, label %.loopexit.i.i.prol

.loopexit.i.i.prol:                               ; preds = %.loopexit.i.i.preheader, %.loopexit.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.loopexit.i.i.prol ], [ %indvars.iv.i.i.ph, %.loopexit.i.i.preheader ] ; 3 uses
  %.1137.i.i.prol = phi ptr [ %i.kq, %.loopexit.i.i.prol ], [ %.1137.i.i.ph, %.loopexit.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.loopexit.i.i.prol ], [ 0, %.loopexit.i.i.preheader ]
  %i.kk = load i8, ptr %.1137.i.i.prol, align 1, !tbaa !156
  %i.kl = and i8 %i.kk, 15
  %i.km = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.i.prol
  store i8 %i.kl, ptr %i.km, align 1, !tbaa !241
  %i.kn = load i8, ptr %.1137.i.i.prol, align 1, !tbaa !156
  %i.ko = lshr i8 %i.kn, 4
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jt, i64 %indvars.iv.i.i.prol
  store i8 %i.ko, ptr %i.kp, align 1, !tbaa !241
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.1137.i.i.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.loopexit.i.i.prol.loopexit, label %.loopexit.i.i.prol, !llvm.loop !436

.loopexit.i.i.prol.loopexit:                      ; preds = %.loopexit.i.i.prol, %.loopexit.i.i.preheader
  %.lcssa281.unr = phi ptr [ poison, %.loopexit.i.i.preheader ], [ %i.kq, %.loopexit.i.i.prol ]
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.loopexit.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.loopexit.i.i.prol ]
  %.1137.i.i.unr = phi ptr [ %.1137.i.i.ph, %.loopexit.i.i.preheader ], [ %i.kq, %.loopexit.i.i.prol ]
  %i.kr = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.ks = icmp ugt i64 %i.kr, -8
  br i1 %i.ks, label %.preheader133.i.i, label %.loopexit.i.i

iter.check:                                       ; preds = %.preheader132.lr.ph.i.i
  %min.iters.check = icmp ult i32 %i.jl, 16
  br i1 %min.iters.check, label %.preheader132.lr.ph.i.split.us.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.kt = mul i64 %i.jp, 240
  %i.ku = add i64 %i.hr, %i.kt
  %i.kv = add i64 %i.ji, %.087143.i.i25
  %i.kw = sub i64 %i.kv, %i.ku
  %diff.check = icmp ugt i64 %i.kw, -256
  br i1 %diff.check, label %.preheader132.lr.ph.i.split.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check26 = icmp ult i32 %i.jl, 256
  br i1 %min.iters.check26, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.kx = and i64 %wide.trip.count.i.i, 240
  %n.vec = and i64 %wide.trip.count.i.i, 2147483392 ; 5 uses
  %i.ky = getelementptr i8, ptr %i.jk, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.jk, i64 %index ; 4 uses
  %i.kz = getelementptr i8, ptr %next.gep, i64 64
  %i.la = getelementptr i8, ptr %next.gep, i64 128
  %i.lb = getelementptr i8, ptr %next.gep, i64 192
  %wide.load = load <64 x i8>, ptr %next.gep, align 1, !tbaa !156
  %wide.load27 = load <64 x i8>, ptr %i.kz, align 1, !tbaa !156
  %wide.load28 = load <64 x i8>, ptr %i.la, align 1, !tbaa !156
  %wide.load29 = load <64 x i8>, ptr %i.lb, align 1, !tbaa !156
  %i.lc = and <64 x i8> %wide.load, splat (i8 15)
  %i.ld = and <64 x i8> %wide.load27, splat (i8 15)
  %i.le = and <64 x i8> %wide.load28, splat (i8 15)
  %i.lf = and <64 x i8> %wide.load29, splat (i8 15)
  %i.lg = getelementptr inbounds nuw i8, ptr %i.jr, i64 %index ; 4 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 64
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 128
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 192
  store <64 x i8> %i.lc, ptr %i.lg, align 1, !tbaa !241
  store <64 x i8> %i.ld, ptr %i.lh, align 1, !tbaa !241
  store <64 x i8> %i.le, ptr %i.li, align 1, !tbaa !241
  store <64 x i8> %i.lf, ptr %i.lj, align 1, !tbaa !241
  %index.next = add nuw i64 %index, 256           ; 2 uses
  %i.lk = icmp eq i64 %index.next, %n.vec
  br i1 %i.lk, label %middle.block, label %vector.body, !llvm.loop !437

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %.preheader133.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.kx, 0
  br i1 %min.epilog.iters.check, label %.preheader132.lr.ph.i.split.us.i.preheader, label %vec.epilog.ph, !prof !289

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec30 = and i64 %wide.trip.count.i.i, 2147483632 ; 4 uses
  %i.ll = getelementptr i8, ptr %i.jk, i64 %n.vec30 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index31 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next34, %vec.epilog.vector.body ] ; 3 uses
  %next.gep32 = getelementptr i8, ptr %i.jk, i64 %index31
  %wide.load33 = load <16 x i8>, ptr %next.gep32, align 1, !tbaa !156
  %i.lm = and <16 x i8> %wide.load33, splat (i8 15)
  %i.ln = getelementptr inbounds nuw i8, ptr %i.jr, i64 %index31
  store <16 x i8> %i.lm, ptr %i.ln, align 1, !tbaa !241
  %index.next34 = add nuw i64 %index31, 16        ; 2 uses
  %i.lo = icmp eq i64 %index.next34, %n.vec30
  br i1 %i.lo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !438

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n35 = icmp eq i64 %n.vec30, %wide.trip.count.i.i
  br i1 %cmp.n35, label %.preheader133.i.i, label %.preheader132.lr.ph.i.split.us.i.preheader

.preheader132.lr.ph.i.split.us.i.preheader:       ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.us.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec30, %vec.epilog.middle.block ] ; 3 uses
  %.1137.i.us.i.ph = phi ptr [ %i.jk, %iter.check ], [ %i.jk, %vector.memcheck ], [ %i.ky, %vec.epilog.iter.check ], [ %i.ll, %vec.epilog.middle.block ] ; 2 uses
  %xtraiter283 = and i64 %wide.trip.count.i.i, 7  ; 2 uses
  %lcmp.mod284.not = icmp eq i64 %xtraiter283, 0
  br i1 %lcmp.mod284.not, label %.preheader132.lr.ph.i.split.us.i.prol.loopexit, label %.preheader132.lr.ph.i.split.us.i.prol

.preheader132.lr.ph.i.split.us.i.prol:            ; preds = %.preheader132.lr.ph.i.split.us.i.preheader, %.preheader132.lr.ph.i.split.us.i.prol
  %indvars.iv.i.us.i.prol = phi i64 [ %indvars.iv.next.i.us.i.prol, %.preheader132.lr.ph.i.split.us.i.prol ], [ %indvars.iv.i.us.i.ph, %.preheader132.lr.ph.i.split.us.i.preheader ] ; 2 uses
  %.1137.i.us.i.prol = phi ptr [ %i.ls, %.preheader132.lr.ph.i.split.us.i.prol ], [ %.1137.i.us.i.ph, %.preheader132.lr.ph.i.split.us.i.preheader ] ; 2 uses
  %prol.iter285 = phi i64 [ %prol.iter285.next, %.preheader132.lr.ph.i.split.us.i.prol ], [ 0, %.preheader132.lr.ph.i.split.us.i.preheader ]
  %i.lp = load i8, ptr %.1137.i.us.i.prol, align 1, !tbaa !156
  %i.lq = and i8 %i.lp, 15
  %i.lr = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i.prol
  store i8 %i.lq, ptr %i.lr, align 1, !tbaa !241
  %indvars.iv.next.i.us.i.prol = add nuw nsw i64 %indvars.iv.i.us.i.prol, 1 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.1137.i.us.i.prol, i64 1 ; 3 uses
  %prol.iter285.next = add i64 %prol.iter285, 1   ; 2 uses
  %prol.iter285.cmp.not = icmp eq i64 %prol.iter285.next, %xtraiter283
  br i1 %prol.iter285.cmp.not, label %.preheader132.lr.ph.i.split.us.i.prol.loopexit, label %.preheader132.lr.ph.i.split.us.i.prol, !llvm.loop !439

.preheader132.lr.ph.i.split.us.i.prol.loopexit:   ; preds = %.preheader132.lr.ph.i.split.us.i.prol, %.preheader132.lr.ph.i.split.us.i.preheader
  %.lcssa282.unr = phi ptr [ poison, %.preheader132.lr.ph.i.split.us.i.preheader ], [ %i.ls, %.preheader132.lr.ph.i.split.us.i.prol ]
  %indvars.iv.i.us.i.unr = phi i64 [ %indvars.iv.i.us.i.ph, %.preheader132.lr.ph.i.split.us.i.preheader ], [ %indvars.iv.next.i.us.i.prol, %.preheader132.lr.ph.i.split.us.i.prol ]
  %.1137.i.us.i.unr = phi ptr [ %.1137.i.us.i.ph, %.preheader132.lr.ph.i.split.us.i.preheader ], [ %i.ls, %.preheader132.lr.ph.i.split.us.i.prol ]
  %i.lt = sub nsw i64 %indvars.iv.i.us.i.ph, %wide.trip.count.i.i
  %i.lu = icmp ugt i64 %i.lt, -8
  br i1 %i.lu, label %.preheader133.i.i, label %.preheader132.lr.ph.i.split.us.i

.preheader132.lr.ph.i.split.us.i:                 ; preds = %.preheader132.lr.ph.i.split.us.i.prol.loopexit, %.preheader132.lr.ph.i.split.us.i
  %indvars.iv.i.us.i = phi i64 [ %indvars.iv.next.i.us.i.7, %.preheader132.lr.ph.i.split.us.i ], [ %indvars.iv.i.us.i.unr, %.preheader132.lr.ph.i.split.us.i.prol.loopexit ] ; 9 uses
  %.1137.i.us.i = phi ptr [ %i.nh, %.preheader132.lr.ph.i.split.us.i ], [ %.1137.i.us.i.unr, %.preheader132.lr.ph.i.split.us.i.prol.loopexit ] ; 9 uses
  %i.lv = load i8, ptr %.1137.i.us.i, align 1, !tbaa !156
  %i.lw = and i8 %i.lv, 15
  %i.lx = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i
  store i8 %i.lw, ptr %i.lx, align 1, !tbaa !241
  %i.ly = getelementptr inbounds nuw i8, ptr %.1137.i.us.i, i64 1
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !156
  %i.ma = and i8 %i.lz, 15
  %i.mb = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 1
  store i8 %i.ma, ptr %i.mc, align 1, !tbaa !241
  %i.md = getelementptr inbounds nuw i8, ptr %.1137.i.us.i, i64 2
  %i.me = load i8, ptr %i.md, align 1, !tbaa !156
  %i.mf = and i8 %i.me, 15
  %i.mg = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 2
  store i8 %i.mf, ptr %i.mh, align 1, !tbaa !241
  %i.mi = getelementptr inbounds nuw i8, ptr %.1137.i.us.i, i64 3
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !156
  %i.mk = and i8 %i.mj, 15
  %i.ml = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 3
  store i8 %i.mk, ptr %i.mm, align 1, !tbaa !241
  %i.mn = getelementptr inbounds nuw i8, ptr %.1137.i.us.i, i64 4
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !156
  %i.mp = and i8 %i.mo, 15
  %i.mq = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 4
  store i8 %i.mp, ptr %i.mr, align 1, !tbaa !241
  %i.ms = getelementptr inbounds nuw i8, ptr %.1137.i.us.i, i64 5
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !156
  %i.mu = and i8 %i.mt, 15
  %i.mv = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 5
  store i8 %i.mu, ptr %i.mw, align 1, !tbaa !241
  %i.mx = getelementptr inbounds nuw i8, ptr %.1137.i.us.i, i64 6
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !156
  %i.mz = and i8 %i.my, 15
  %i.na = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 6
  store i8 %i.mz, ptr %i.nb, align 1, !tbaa !241
  %i.nc = getelementptr inbounds nuw i8, ptr %.1137.i.us.i, i64 7
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !156
  %i.ne = and i8 %i.nd, 15
  %i.nf = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.us.i
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 7
  store i8 %i.ne, ptr %i.ng, align 1, !tbaa !241
  %indvars.iv.next.i.us.i.7 = add nuw nsw i64 %indvars.iv.i.us.i, 8 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.1137.i.us.i, i64 8 ; 2 uses
  %exitcond181.not.i.us.i.7 = icmp eq i64 %indvars.iv.next.i.us.i.7, %wide.trip.count.i.i
  br i1 %exitcond181.not.i.us.i.7, label %.preheader133.i.i, label %.preheader132.lr.ph.i.split.us.i, !llvm.loop !440

.preheader133.i.i:                                ; preds = %.loopexit.i.i.prol.loopexit, %.loopexit.i.i, %.preheader132.lr.ph.i.split.us.i.prol.loopexit, %.preheader132.lr.ph.i.split.us.i, %middle.block52, %vec.epilog.middle.block67, %middle.block, %vec.epilog.middle.block, %..preheader133_crit_edge.i.i
  %i.ni = phi i8 [ %.pre.i60.i, %..preheader133_crit_edge.i.i ], [ %i.jn, %middle.block ], [ %i.jn, %middle.block52 ], [ %i.jn, %vec.epilog.middle.block ], [ %i.jn, %.preheader132.lr.ph.i.split.us.i.prol.loopexit ], [ %i.jn, %vec.epilog.middle.block67 ], [ %i.jn, %.preheader132.lr.ph.i.split.us.i ], [ %i.jn, %.loopexit.i.i ], [ %i.jn, %.loopexit.i.i.prol.loopexit ]
  %.1.lcssa.i.i = phi ptr [ %i.jk, %..preheader133_crit_edge.i.i ], [ %i.ky, %middle.block ], [ %i.jy, %middle.block52 ], [ %i.ll, %vec.epilog.middle.block ], [ %i.nh, %.preheader132.lr.ph.i.split.us.i ], [ %i.ke, %vec.epilog.middle.block67 ], [ %.lcssa282.unr, %.preheader132.lr.ph.i.split.us.i.prol.loopexit ], [ %.lcssa281.unr, %.loopexit.i.i.prol.loopexit ], [ %i.po, %.loopexit.i.i ] ; 3 uses
  %i.nj = trunc nuw i8 %i.ni to i1                ; 3 uses
  %i.nk = select i1 %i.nj, i64 %indvars.iv187.i.i, i64 0
  %invariant.gep.i.i = getelementptr inbounds nuw [240 x i8], ptr %i.hk, i64 %i.nk
  %invariant.gep139.i.i = getelementptr [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_113LeadPawnsSizeE, i64 %indvars.iv187.i.i
  br label %bb.ap

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.prol.loopexit, %.loopexit.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.7, %.loopexit.i.i ], [ %indvars.iv.i.i.unr, %.loopexit.i.i.prol.loopexit ] ; 10 uses
  %.1137.i.i = phi ptr [ %i.po, %.loopexit.i.i ], [ %.1137.i.i.unr, %.loopexit.i.i.prol.loopexit ] ; 10 uses
  %i.nl = load i8, ptr %.1137.i.i, align 1, !tbaa !156
  %i.nm = and i8 %i.nl, 15
  %i.nn = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.i.i
  store i8 %i.nm, ptr %i.nn, align 1, !tbaa !241
  %i.no = load i8, ptr %.1137.i.i, align 1, !tbaa !156
  %i.np = lshr i8 %i.no, 4
  %i.nq = getelementptr inbounds nuw i8, ptr %i.jt, i64 %indvars.iv.i.i
  store i8 %i.np, ptr %i.nq, align 1, !tbaa !241
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.1137.i.i, i64 1 ; 2 uses
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !156
  %i.nt = and i8 %i.ns, 15
  %i.nu = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.next.i.i
  store i8 %i.nt, ptr %i.nu, align 1, !tbaa !241
  %i.nv = load i8, ptr %i.nr, align 1, !tbaa !156
  %i.nw = lshr i8 %i.nv, 4
  %i.nx = getelementptr inbounds nuw i8, ptr %i.jt, i64 %indvars.iv.next.i.i
  store i8 %i.nw, ptr %i.nx, align 1, !tbaa !241
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.1137.i.i, i64 2 ; 2 uses
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !156
  %i.oa = and i8 %i.nz, 15
  %i.ob = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.next.i.i.1
  store i8 %i.oa, ptr %i.ob, align 1, !tbaa !241
  %i.oc = load i8, ptr %i.ny, align 1, !tbaa !156
  %i.od = lshr i8 %i.oc, 4
  %i.oe = getelementptr inbounds nuw i8, ptr %i.jt, i64 %indvars.iv.next.i.i.1
  store i8 %i.od, ptr %i.oe, align 1, !tbaa !241
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.1137.i.i, i64 3 ; 2 uses
  %i.og = load i8, ptr %i.of, align 1, !tbaa !156
  %i.oh = and i8 %i.og, 15
  %i.oi = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.next.i.i.2
  store i8 %i.oh, ptr %i.oi, align 1, !tbaa !241
  %i.oj = load i8, ptr %i.of, align 1, !tbaa !156
  %i.ok = lshr i8 %i.oj, 4
  %i.ol = getelementptr inbounds nuw i8, ptr %i.jt, i64 %indvars.iv.next.i.i.2
  store i8 %i.ok, ptr %i.ol, align 1, !tbaa !241
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.1137.i.i, i64 4 ; 2 uses
  %i.on = load i8, ptr %i.om, align 1, !tbaa !156
  %i.oo = and i8 %i.on, 15
  %i.op = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.next.i.i.3
  store i8 %i.oo, ptr %i.op, align 1, !tbaa !241
  %i.oq = load i8, ptr %i.om, align 1, !tbaa !156
  %i.or = lshr i8 %i.oq, 4
  %i.os = getelementptr inbounds nuw i8, ptr %i.jt, i64 %indvars.iv.next.i.i.3
  store i8 %i.or, ptr %i.os, align 1, !tbaa !241
  %indvars.iv.next.i.i.4 = add nuw nsw i64 %indvars.iv.i.i, 5 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.1137.i.i, i64 5 ; 2 uses
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !156
  %i.ov = and i8 %i.ou, 15
  %i.ow = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.next.i.i.4
  store i8 %i.ov, ptr %i.ow, align 1, !tbaa !241
  %i.ox = load i8, ptr %i.ot, align 1, !tbaa !156
  %i.oy = lshr i8 %i.ox, 4
  %i.oz = getelementptr inbounds nuw i8, ptr %i.jt, i64 %indvars.iv.next.i.i.4
  store i8 %i.oy, ptr %i.oz, align 1, !tbaa !241
  %indvars.iv.next.i.i.5 = add nuw nsw i64 %indvars.iv.i.i, 6 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.1137.i.i, i64 6 ; 2 uses
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !156
  %i.pc = and i8 %i.pb, 15
  %i.pd = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.next.i.i.5
  store i8 %i.pc, ptr %i.pd, align 1, !tbaa !241
  %i.pe = load i8, ptr %i.pa, align 1, !tbaa !156
  %i.pf = lshr i8 %i.pe, 4
  %i.pg = getelementptr inbounds nuw i8, ptr %i.jt, i64 %indvars.iv.next.i.i.5
  store i8 %i.pf, ptr %i.pg, align 1, !tbaa !241
  %indvars.iv.next.i.i.6 = add nuw nsw i64 %indvars.iv.i.i, 7 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %.1137.i.i, i64 7 ; 2 uses
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !156
  %i.pj = and i8 %i.pi, 15
  %i.pk = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.next.i.i.6
  store i8 %i.pj, ptr %i.pk, align 1, !tbaa !241
  %i.pl = load i8, ptr %i.ph, align 1, !tbaa !156
  %i.pm = lshr i8 %i.pl, 4
  %i.pn = getelementptr inbounds nuw i8, ptr %i.jt, i64 %indvars.iv.next.i.i.6
  store i8 %i.pm, ptr %i.pn, align 1, !tbaa !241
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.1137.i.i, i64 8 ; 2 uses
  %exitcond181.not.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.7, %wide.trip.count.i.i
  br i1 %exitcond181.not.i.i.7, label %.preheader133.i.i, label %.loopexit.i.i, !llvm.loop !441

bb.ao:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE0EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %indvars.iv.next188.i.i = add nuw nsw i64 %indvars.iv187.i.i, 1 ; 2 uses
  %exitcond191.i.i = icmp eq i64 %indvars.iv.next188.i.i, %wide.trip.count190.i.i
  br i1 %exitcond191.i.i, label %bb.ag, label %.preheader134.i.i, !llvm.loop !442

bb.ap:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE0EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i, %.preheader133.i.i
  %indvars.iv182.i.i = phi i64 [ 0, %.preheader133.i.i ], [ %indvars.iv.next183.i.i, %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE0EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i ] ; 3 uses
  %i.pp = and i64 %indvars.iv182.i.i, 1
  %gep.i.i = getelementptr inbounds nuw [960 x i8], ptr %invariant.gep.i.i, i64 %i.pp ; 10 uses
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv182.i.i ; 4 uses
  %i.pr = load i8, ptr %i.hp, align 1, !range !206
  %i.ps = trunc nuw i8 %i.pr to i1                ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 200 ; 8 uses
  store i32 1, ptr %i.pt, align 4, !tbaa !89
  %i.pu = load i32, ptr %i.ho, align 8, !tbaa !202
  %i.pv = icmp sgt i32 %i.pu, 1
  br i1 %i.pv, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ap
  %i.pw = select i1 %i.ps, i32 3, i32 2
  %i.px = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 128
  %spec.select = select i1 %i.nj, i32 0, i32 %i.pw
  br label %select.unfold.i.i

._crit_edge.i.i.i:                                ; preds = %bb.at, %bb.ap
  %.064.lcssa.i.i.i = phi i32 [ 0, %bb.ap ], [ %.165.i.i.i, %bb.at ] ; 3 uses
  %i.py = add nsw i32 %.064.lcssa.i.i.i, 1
  %i.pz = sext i32 %i.py to i64                   ; 2 uses
  %i.qa = getelementptr inbounds [4 x i8], ptr %i.pt, i64 %i.pz
  store i32 0, ptr %i.qa, align 4, !tbaa !89
  br i1 %i.nj, label %bb.au, label %.thread68.split.preheader.i.i.i

select.unfold.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.at
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.at ], [ 1, %.lr.ph.i.i.i ] ; 2 uses
  %.06475.i.i.i = phi i32 [ %.165.i.i.i, %bb.at ], [ 0, %.lr.ph.i.i.i ] ; 3 uses
  %.06772.i.i.i = phi i32 [ %i.qb, %bb.at ], [ %spec.select, %.lr.ph.i.i.i ] ; 2 uses
  %i.qb = add nsw i32 %.06772.i.i.i, -1
  %i.qc = icmp sgt i32 %.06772.i.i.i, 1
  br i1 %i.qc, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %select.unfold.i.i
  %i.qd = getelementptr inbounds nuw i8, ptr %i.px, i64 %indvars.iv.i.i.i ; 2 uses
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !241
  %i.qf = getelementptr i8, ptr %i.qd, i64 -1
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !241
  %i.qh = icmp eq i8 %i.qe, %i.qg
  br i1 %i.qh, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq, %select.unfold.i.i
  %i.qi = sext i32 %.06475.i.i.i to i64
  %i.qj = getelementptr inbounds [4 x i8], ptr %i.pt, i64 %i.qi ; 2 uses
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !89
  %i.ql = add nsw i32 %i.qk, 1
  store i32 %i.ql, ptr %i.qj, align 4, !tbaa !89
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.qm = add nsw i32 %.06475.i.i.i, 1            ; 2 uses
  %i.qn = sext i32 %i.qm to i64
  %i.qo = getelementptr inbounds [4 x i8], ptr %i.pt, i64 %i.qn
  store i32 1, ptr %i.qo, align 4, !tbaa !89
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.165.i.i.i = phi i32 [ %.06475.i.i.i, %bb.ar ], [ %i.qm, %bb.as ] ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.qp = load i32, ptr %i.ho, align 8, !tbaa !202
  %i.qq = sext i32 %i.qp to i64
  %i.qr = icmp slt i64 %indvars.iv.next.i.i.i, %i.qq
  br i1 %i.qr, label %select.unfold.i.i, label %._crit_edge.i.i.i, !llvm.loop !443

bb.au:                                            ; preds = %._crit_edge.i.i.i
  %i.qs = load i8, ptr %i.hg, align 1, !tbaa !156
  %.not69.i.i.i = icmp eq i8 %i.qs, 0
  br i1 %.not69.i.i.i, label %.thread68.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.qt = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 204
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !89
  %i.qv = sub i32 64, %i.qu
  br label %.thread68.i.i.i

.thread68.split.preheader.i.i.i:                  ; preds = %._crit_edge.i.i.i
  %12 = load i32, ptr %i.pt, align 8, !tbaa !89   ; 2 uses
  %13 = sub i32 64, %12
  %14 = getelementptr inbounds nuw i8, ptr %i.pq, i64 4 ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 136 ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 144
  %17 = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 204
  %18 = sub nsw i32 48, %12
  %19 = sext i32 %18 to i64
  %invariant.gep.i.i.i = getelementptr [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 %19
  %20 = select i1 %i.ps, i32 31332, i32 462
  %.pre.pre.i.i.i = load i32, ptr %i.pq, align 8, !tbaa !89
  br label %.thread68.split.i.i.i

.thread68.i.i.i:                                  ; preds = %bb.av, %bb.au
  %.ph.i.i.i = phi i32 [ 1, %bb.au ], [ 2, %bb.av ]
  %.neg71.ph.i.i.i = phi i32 [ 64, %bb.au ], [ %i.qv, %bb.av ]
  %i.qw = load i32, ptr %i.pt, align 8, !tbaa !89 ; 3 uses
  %i.qx = sub i32 %.neg71.ph.i.i.i, %i.qw
  %i.qy = getelementptr inbounds nuw i8, ptr %i.pq, i64 4 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 136 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 144
  %i.rb = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 204
  %i.rc = sub nsw i32 48, %i.qw
  %i.rd = sext i32 %i.rc to i64
  %invariant.gep.i.i.i.a = getelementptr [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 %i.rd
  %i.re = sext i32 %i.qw to i64
  %gep140.i.i = getelementptr [16 x i8], ptr %invariant.gep139.i.i, i64 %i.re
  %.pre78.pre.i.i.i = load i32, ptr %i.pq, align 8, !tbaa !89
  br label %.thread68.split.us.i.i.i

.thread68.split.us.i.i.i:                         ; preds = %bb.bb, %.thread68.i.i.i
  %.062.us.i.i.i = phi i32 [ %.163.us.i.i.i, %bb.bb ], [ %.ph.i.i.i, %.thread68.i.i.i ] ; 5 uses
  %.060.us.i.i.i = phi i32 [ %.161.us.i.i.i, %bb.bb ], [ %i.qx, %.thread68.i.i.i ] ; 4 uses
  %.059.us.i.i.i = phi i64 [ %.1.us.i.i.i, %bb.bb ], [ 1, %.thread68.i.i.i ] ; 5 uses
  %.0.us.i.i.i = phi i32 [ %i.rw, %bb.bb ], [ 0, %.thread68.i.i.i ] ; 4 uses
  %.not.us.i.i.i = icmp sle i32 %.062.us.i.i.i, %.064.lcssa.i.i.i
  %i.rf = icmp eq i32 %.0.us.i.i.i, %.pre78.pre.i.i.i ; 2 uses
  %or.cond.i.i.i = select i1 %.not.us.i.i.i, i1 true, i1 %i.rf
  br i1 %or.cond.i.i.i, label %.critedge.us.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %.thread68.split.us.i.i.i
  %i.rg = load i32, ptr %i.qy, align 4, !tbaa !89
  %i.rh = icmp eq i32 %.0.us.i.i.i, %i.rg
  br i1 %i.rh, label %.critedge.us.i.i.i, label %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE0EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i

.critedge.us.i.i.i:                               ; preds = %bb.aw, %.thread68.split.us.i.i.i
  br i1 %i.rf, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %.critedge.us.i.i.i
  %i.ri = load i32, ptr %i.qy, align 4, !tbaa !89
  %i.rj = icmp eq i32 %.0.us.i.i.i, %i.ri
  br i1 %i.rj, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.rk = sext i32 %.062.us.i.i.i to i64          ; 2 uses
  %i.rl = getelementptr inbounds [8 x i8], ptr %i.qz, i64 %i.rk
  store i64 %.059.us.i.i.i, ptr %i.rl, align 8, !tbaa !17
  %i.rm = getelementptr inbounds [4 x i8], ptr %i.pt, i64 %i.rk
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !89 ; 2 uses
  %i.ro = sext i32 %i.rn to i64
  %i.rp = getelementptr inbounds [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 %i.ro
  %i.rq = sext i32 %.060.us.i.i.i to i64
  %i.rr = getelementptr inbounds [4 x i8], ptr %i.rp, i64 %i.rq
  %i.rs = add nsw i32 %.062.us.i.i.i, 1
  %i.rt = sub nsw i32 %.060.us.i.i.i, %i.rn
  br label %bb.bb

bb.az:                                            ; preds = %bb.ax
  store i64 %.059.us.i.i.i, ptr %i.ra, align 8, !tbaa !17
  %i.ru = load i32, ptr %i.rb, align 4, !tbaa !89
  %i.rv = sext i32 %i.ru to i64
  %gep.us.i.i.i = getelementptr [256 x i8], ptr %invariant.gep.i.i.i.a, i64 %i.rv
  br label %bb.bb

bb.ba:                                            ; preds = %.critedge.us.i.i.i
  store i64 %.059.us.i.i.i, ptr %i.qz, align 8, !tbaa !17
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %.163.us.i.i.i = phi i32 [ %i.rs, %bb.ay ], [ %.062.us.i.i.i, %bb.az ], [ %.062.us.i.i.i, %bb.ba ]
  %.161.us.i.i.i = phi i32 [ %i.rt, %bb.ay ], [ %.060.us.i.i.i, %bb.az ], [ %.060.us.i.i.i, %bb.ba ]
  %.pn.in.us.in.i.i.i = phi ptr [ %i.rr, %bb.ay ], [ %gep.us.i.i.i, %bb.az ], [ %gep140.i.i, %bb.ba ]
  %.pn.in.us.i.i.i = load i32, ptr %.pn.in.us.in.i.i.i, align 4, !tbaa !89
  %.pn.us.i.i.i = sext i32 %.pn.in.us.i.i.i to i64
  %.1.us.i.i.i = mul i64 %.059.us.i.i.i, %.pn.us.i.i.i
  %i.rw = add nuw nsw i32 %.0.us.i.i.i, 1
  br label %.thread68.split.us.i.i.i, !llvm.loop !444

.thread68.split.i.i.i:                            ; preds = %bb.bh, %.thread68.split.preheader.i.i.i
  %.062.i.i.i = phi i32 [ %.163.i.i.i, %bb.bh ], [ 1, %.thread68.split.preheader.i.i.i ] ; 5 uses
  %.060.i.i.i = phi i32 [ %.161.i.i.i, %bb.bh ], [ %13, %.thread68.split.preheader.i.i.i ] ; 4 uses
  %.059.i.i.i = phi i64 [ %.1.i.i.i, %bb.bh ], [ 1, %.thread68.split.preheader.i.i.i ] ; 5 uses
  %.0.i.i.i = phi i32 [ %i.sq, %bb.bh ], [ 0, %.thread68.split.preheader.i.i.i ] ; 4 uses
  %.not.i.i61.i = icmp sle i32 %.062.i.i.i, %.064.lcssa.i.i.i
  %i.rx = icmp eq i32 %.0.i.i.i, %.pre.pre.i.i.i  ; 2 uses
  %or.cond80.i.i.i = select i1 %.not.i.i61.i, i1 true, i1 %i.rx
  br i1 %or.cond80.i.i.i, label %.critedge.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %.thread68.split.i.i.i
  %i.ry = load i32, ptr %14, align 4, !tbaa !89
  %i.rz = icmp eq i32 %.0.i.i.i, %i.ry
  br i1 %i.rz, label %.critedge.i.i.i, label %_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE0EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i

.critedge.i.i.i:                                  ; preds = %bb.bc, %.thread68.split.i.i.i
  br i1 %i.rx, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.critedge.i.i.i
  store i64 %.059.i.i.i, ptr %15, align 8, !tbaa !17
  br label %bb.bh

bb.be:                                            ; preds = %.critedge.i.i.i
  %i.sa = load i32, ptr %14, align 4, !tbaa !89
  %i.sb = icmp eq i32 %.0.i.i.i, %i.sa
  br i1 %i.sb, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i64 %.059.i.i.i, ptr %16, align 8, !tbaa !17
  %i.sc = load i32, ptr %17, align 4, !tbaa !89
  %i.sd = sext i32 %i.sc to i64
  %gep.i.i.i = getelementptr [256 x i8], ptr %invariant.gep.i.i.i, i64 %i.sd
  %i.se = load i32, ptr %gep.i.i.i, align 4, !tbaa !89
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.sf = sext i32 %.062.i.i.i to i64             ; 2 uses
  %i.sg = getelementptr inbounds [8 x i8], ptr %15, i64 %i.sf
  store i64 %.059.i.i.i, ptr %i.sg, align 8, !tbaa !17
  %i.sh = getelementptr inbounds [4 x i8], ptr %i.pt, i64 %i.sf
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !89 ; 2 uses
  %i.sj = sext i32 %i.si to i64
  %i.sk = getelementptr inbounds [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 %i.sj
  %i.sl = sext i32 %.060.i.i.i to i64
  %i.sm = getelementptr inbounds [4 x i8], ptr %i.sk, i64 %i.sl
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !89
  %i.so = add nsw i32 %.062.i.i.i, 1
  %i.sp = sub nsw i32 %.060.i.i.i, %i.si
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.bd
  %.163.i.i.i = phi i32 [ %i.so, %bb.bg ], [ %.062.i.i.i, %bb.bf ], [ %.062.i.i.i, %bb.bd ]
  %.161.i.i.i = phi i32 [ %i.sp, %bb.bg ], [ %.060.i.i.i, %bb.bf ], [ %.060.i.i.i, %bb.bd ]
  %.pn.in.i.i.i = phi i32 [ %i.sn, %bb.bg ], [ %i.se, %bb.bf ], [ %20, %bb.bd ]
  %.pn.i.i.i = sext i32 %.pn.in.i.i.i to i64
  %.1.i.i.i = mul i64 %.059.i.i.i, %.pn.i.i.i
  %i.sq = add nuw nsw i32 %.0.i.i.i, 1
  br label %.thread68.split.i.i.i, !llvm.loop !444

_ZN9Stockfish12_GLOBAL__N_110set_groupsINS0_7TBTableILNS0_6TBTypeE0EEEEEvRT_PNS0_9PairsDataEPiNS_4FileE.exit.i.i: ; preds = %bb.bc, %bb.aw
  %.us-phi.i.i.i = phi i64 [ %.059.us.i.i.i, %bb.aw ], [ %.059.i.i.i, %bb.bc ]
  %21 = getelementptr inbounds nuw i8, ptr %gep.i.i, i64 136
  %i.sr = getelementptr inbounds [8 x i8], ptr %21, i64 %i.pz
  store i64 %.us-phi.i.i.i, ptr %i.sr, align 8, !tbaa !17
  %indvars.iv.next183.i.i = add nuw nsw i64 %indvars.iv182.i.i, 1 ; 2 uses
  %exitcond186.not.i.i = icmp eq i64 %indvars.iv.next183.i.i, %wide.trip.count185.i.i
  br i1 %exitcond186.not.i.i, label %bb.ao, label %bb.ap, !llvm.loop !445

.preheader130.i.i:                                ; preds = %bb.bk, %bb.ag
  %indvars.iv193.i.i = phi i64 [ 0, %bb.ag ], [ %indvars.iv.next194.i.i, %bb.bk ] ; 2 uses
  %.2147.i.i = phi ptr [ %i.hu, %bb.ag ], [ %i.ts, %bb.bk ]
  br label %bb.bl

.preheader129.i.i:                                ; preds = %bb.bk
  %i.ss = load i8, ptr %i.hd, align 4, !tbaa !205, !range !206, !noundef !207
  %i.st = trunc nuw i8 %i.ss to i1                ; 3 uses
  br i1 %i.st, label %.preheader128.us.i.i.preheader, label %.preheader128.i.i.preheader

.preheader128.i.i.preheader:                      ; preds = %.preheader129.i.i
  %xtraiter290 = and i8 %i.hq, 1
  br i1 %i.hf, label %.preheader128.i.i.preheader.new, label %.preheader128.i.i.epil.preheader

.preheader128.i.i.preheader.new:                  ; preds = %.preheader128.i.i.preheader
  %unroll_iter297 = and i8 %i.hq, 4
  br label %.preheader128.i.i

.preheader128.us.i.i.preheader:                   ; preds = %.preheader129.i.i
  %xtraiter308 = and i64 %wide.trip.count190.i.i, 1
  br i1 %i.hf, label %.preheader128.us.i.i.preheader.new, label %.preheader128.us.i.i.epil.preheader

.preheader128.us.i.i.preheader.new:               ; preds = %.preheader128.us.i.i.preheader
  %unroll_iter315 = and i64 %wide.trip.count190.i.i, 4
  br label %.preheader128.us.i.i

.preheader128.us.i.i:                             ; preds = %.epilog-lcssa304.1, %.preheader128.us.i.i.preheader.new
  %indvars.iv201.i.i = phi i64 [ 0, %.preheader128.us.i.i.preheader.new ], [ %indvars.iv.next202.i.i.1, %.epilog-lcssa304.1 ] ; 3 uses
  %.4153.us.i.i = phi ptr [ %i.ts, %.preheader128.us.i.i.preheader.new ], [ %i.tj, %.epilog-lcssa304.1 ]
  %niter316 = phi i64 [ 0, %.preheader128.us.i.i.preheader.new ], [ %niter316.next.1, %.epilog-lcssa304.1 ]
  %invariant.gep148.us.i.i = getelementptr inbounds nuw [240 x i8], ptr %i.hk, i64 %indvars.iv201.i.i
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %.preheader128.us.i.i
  %.081151.us.i.i.epil = phi i32 [ 0, %.preheader128.us.i.i ], [ %i.tb, %bb.bi ] ; 2 uses
  %.5150.us.i.i.epil = phi ptr [ %.4153.us.i.i, %.preheader128.us.i.i ], [ %i.ta, %bb.bi ] ; 2 uses
  %epil.iter302 = phi i32 [ 0, %.preheader128.us.i.i ], [ %epil.iter302.next, %bb.bi ]
  %i.su = and i32 %.081151.us.i.i.epil, 1
  %i.sv = zext nneg i32 %i.su to i64
  %gep149.us.i.i.epil = getelementptr inbounds nuw [960 x i8], ptr %invariant.gep148.us.i.i, i64 %i.sv ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %gep149.us.i.i.epil, i64 56
  store ptr %.5150.us.i.i.epil, ptr %i.sw, align 8, !tbaa !310
  %i.sx = getelementptr inbounds nuw i8, ptr %gep149.us.i.i.epil, i64 64
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !309
  %i.sz = mul i64 %i.sy, 6
  %i.ta = getelementptr inbounds nuw i8, ptr %.5150.us.i.i.epil, i64 %i.sz ; 2 uses
  %i.tb = add nuw nsw i32 %.081151.us.i.i.epil, 1
  %epil.iter302.next = add i32 %epil.iter302, 1   ; 2 uses
  %epil.iter302.cmp.not = icmp eq i32 %epil.iter302.next, %i.hc
  br i1 %epil.iter302.cmp.not, label %.preheader128.us.i.i.1, label %bb.bi, !llvm.loop !446

.preheader128.us.i.i.1:                           ; preds = %bb.bi
  %i.tc = getelementptr inbounds nuw [240 x i8], ptr %i.hk, i64 %indvars.iv201.i.i
  %invariant.gep148.us.i.i.1 = getelementptr inbounds nuw i8, ptr %i.tc, i64 240
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %.preheader128.us.i.i.1
  %.081151.us.i.i.epil.1 = phi i32 [ 0, %.preheader128.us.i.i.1 ], [ %i.tk, %bb.bj ] ; 2 uses
  %.5150.us.i.i.epil.1 = phi ptr [ %i.ta, %.preheader128.us.i.i.1 ], [ %i.tj, %bb.bj ] ; 2 uses
  %epil.iter302.1 = phi i32 [ 0, %.preheader128.us.i.i.1 ], [ %epil.iter302.next.1, %bb.bj ]
  %i.td = and i32 %.081151.us.i.i.epil.1, 1
  %i.te = zext nneg i32 %i.td to i64
  %gep149.us.i.i.epil.1 = getelementptr inbounds nuw [960 x i8], ptr %invariant.gep148.us.i.i.1, i64 %i.te ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %gep149.us.i.i.epil.1, i64 56
  store ptr %.5150.us.i.i.epil.1, ptr %i.tf, align 8, !tbaa !310
  %i.tg = getelementptr inbounds nuw i8, ptr %gep149.us.i.i.epil.1, i64 64
  %i.th = load i64, ptr %i.tg, align 8, !tbaa !309
  %i.ti = mul i64 %i.th, 6
  %i.tj = getelementptr inbounds nuw i8, ptr %.5150.us.i.i.epil.1, i64 %i.ti ; 4 uses
  %i.tk = add nuw nsw i32 %.081151.us.i.i.epil.1, 1
  %epil.iter302.next.1 = add i32 %epil.iter302.1, 1 ; 2 uses
  %epil.iter302.cmp.1.not = icmp eq i32 %epil.iter302.next.1, %i.hc
  br i1 %epil.iter302.cmp.1.not, label %.epilog-lcssa304.1, label %bb.bj, !llvm.loop !446

.epilog-lcssa304.1:                               ; preds = %bb.bj
  %indvars.iv.next202.i.i.1 = add nuw nsw i64 %indvars.iv201.i.i, 2 ; 2 uses
  %niter316.next.1 = add i64 %niter316, 2         ; 2 uses
  %niter316.ncmp.1 = icmp eq i64 %niter316.next.1, %unroll_iter315
  br i1 %niter316.ncmp.1, label %.preheader127.i.i.loopexit.unr-lcssa, label %.preheader128.us.i.i, !llvm.loop !447

bb.bk:                                            ; preds = %bb.bl
  %indvars.iv.next194.i.i = add nuw nsw i64 %indvars.iv193.i.i, 1 ; 2 uses
  %exitcond197.i.i = icmp eq i64 %indvars.iv.next194.i.i, %wide.trip.count190.i.i
  br i1 %exitcond197.i.i, label %.preheader129.i.i, label %.preheader130.i.i, !llvm.loop !448

bb.bl:                                            ; preds = %bb.bl, %.preheader130.i.i
  %.082145.i.i = phi i32 [ 0, %.preheader130.i.i ], [ %i.tt, %bb.bl ] ; 2 uses
  %.3144.i.i = phi ptr [ %.2147.i.i, %.preheader130.i.i ], [ %i.ts, %bb.bl ]
  %i.tl = and i32 %.082145.i.i, 1
  %i.tm = zext nneg i32 %i.tl to i64
  %i.tn = getelementptr inbounds nuw [960 x i8], ptr %i.hk, i64 %i.tm
  %i.to = load i8, ptr %i.hd, align 4, !tbaa !205, !range !206, !noundef !207
  %i.tp = trunc nuw i8 %i.to to i1
  %i.tq = select i1 %i.tp, i64 %indvars.iv193.i.i, i64 0
  %i.tr = getelementptr inbounds nuw [240 x i8], ptr %i.tn, i64 %i.tq
  %i.ts = call fastcc noundef ptr @_ZN9Stockfish12_GLOBAL__N_19set_sizesEPNS0_9PairsDataEPh(ptr noundef %i.tr, ptr noundef %.3144.i.i) ; 6 uses
  %i.tt = add nuw nsw i32 %.082145.i.i, 1         ; 2 uses
  %exitcond192.not.i.i = icmp eq i32 %i.tt, %i.hc
  br i1 %exitcond192.not.i.i, label %bb.bk, label %bb.bl, !llvm.loop !449

.preheader128.i.i:                                ; preds = %.epilog-lcssa.1, %.preheader128.i.i.preheader.new
  %.4153.i.i = phi ptr [ %i.ts, %.preheader128.i.i.preheader.new ], [ %i.wj, %.epilog-lcssa.1 ]
  %niter298 = phi i8 [ 0, %.preheader128.i.i.preheader.new ], [ %niter298.next.1, %.epilog-lcssa.1 ]
  br label %bb.bs

.preheader127.i.i.loopexit.unr-lcssa:             ; preds = %.epilog-lcssa304.1
  %lcmp.mod312.not = icmp eq i64 %xtraiter308, 0
  br i1 %lcmp.mod312.not, label %.preheader127.i.i, label %.preheader128.us.i.i.epil.preheader

.preheader128.us.i.i.epil.preheader:              ; preds = %.preheader127.i.i.loopexit.unr-lcssa, %.preheader128.us.i.i.preheader
  %indvars.iv201.i.i.epil.init = phi i64 [ 0, %.preheader128.us.i.i.preheader ], [ %indvars.iv.next202.i.i.1, %.preheader127.i.i.loopexit.unr-lcssa ]
  %.4153.us.i.i.epil.init = phi ptr [ %i.ts, %.preheader128.us.i.i.preheader ], [ %i.tj, %.preheader127.i.i.loopexit.unr-lcssa ]
  %lcmp.mod314 = trunc i8 %i.hq to i1
  call void @llvm.assume(i1 %lcmp.mod314)
  %invariant.gep148.us.i.i.epil = getelementptr inbounds nuw [240 x i8], ptr %i.hk, i64 %indvars.iv201.i.i.epil.init
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %.preheader128.us.i.i.epil.preheader
  %.081151.us.i.i.epil.epil = phi i32 [ 0, %.preheader128.us.i.i.epil.preheader ], [ %i.ub, %bb.bm ] ; 2 uses
  %.5150.us.i.i.epil.epil = phi ptr [ %.4153.us.i.i.epil.init, %.preheader128.us.i.i.epil.preheader ], [ %i.ua, %bb.bm ] ; 2 uses
  %epil.iter302.epil = phi i32 [ 0, %.preheader128.us.i.i.epil.preheader ], [ %epil.iter302.next.epil, %bb.bm ]
  %i.tu = and i32 %.081151.us.i.i.epil.epil, 1
  %i.tv = zext nneg i32 %i.tu to i64
  %gep149.us.i.i.epil.epil = getelementptr inbounds nuw [960 x i8], ptr %invariant.gep148.us.i.i.epil, i64 %i.tv ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %gep149.us.i.i.epil.epil, i64 56
  store ptr %.5150.us.i.i.epil.epil, ptr %i.tw, align 8, !tbaa !310
  %i.tx = getelementptr inbounds nuw i8, ptr %gep149.us.i.i.epil.epil, i64 64
  %i.ty = load i64, ptr %i.tx, align 8, !tbaa !309
  %i.tz = mul i64 %i.ty, 6
  %i.ua = getelementptr inbounds nuw i8, ptr %.5150.us.i.i.epil.epil, i64 %i.tz ; 2 uses
  %i.ub = add nuw nsw i32 %.081151.us.i.i.epil.epil, 1
  %epil.iter302.next.epil = add i32 %epil.iter302.epil, 1 ; 2 uses
  %epil.iter302.cmp.epil.not = icmp eq i32 %epil.iter302.next.epil, %i.hc
  br i1 %epil.iter302.cmp.epil.not, label %.preheader127.i.i, label %bb.bm, !llvm.loop !446

.preheader127.i.i.loopexit276.unr-lcssa:          ; preds = %.epilog-lcssa.1
  %lcmp.mod294.not = icmp eq i8 %xtraiter290, 0
  br i1 %lcmp.mod294.not, label %.preheader127.i.i, label %.preheader128.i.i.epil.preheader

.preheader128.i.i.epil.preheader:                 ; preds = %.preheader127.i.i.loopexit276.unr-lcssa, %.preheader128.i.i.preheader
  %.4153.i.i.epil.init = phi ptr [ %i.ts, %.preheader128.i.i.preheader ], [ %i.wj, %.preheader127.i.i.loopexit276.unr-lcssa ]
  %lcmp.mod296 = trunc i8 %i.hq to i1
  call void @llvm.assume(i1 %lcmp.mod296)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %.preheader128.i.i.epil.preheader
  %.081151.i.i.epil.epil = phi i32 [ 0, %.preheader128.i.i.epil.preheader ], [ %i.uj, %bb.bn ] ; 2 uses
  %.5150.i.i.epil.epil = phi ptr [ %.4153.i.i.epil.init, %.preheader128.i.i.epil.preheader ], [ %i.ui, %bb.bn ] ; 2 uses
  %epil.iter.epil = phi i32 [ 0, %.preheader128.i.i.epil.preheader ], [ %epil.iter.next.epil, %bb.bn ]
  %i.uc = and i32 %.081151.i.i.epil.epil, 1
  %i.ud = zext nneg i32 %i.uc to i64
  %gep149.i.i.epil.epil = getelementptr inbounds nuw [960 x i8], ptr %i.hk, i64 %i.ud ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %gep149.i.i.epil.epil, i64 56
  store ptr %.5150.i.i.epil.epil, ptr %i.ue, align 8, !tbaa !310
  %i.uf = getelementptr inbounds nuw i8, ptr %gep149.i.i.epil.epil, i64 64
  %i.ug = load i64, ptr %i.uf, align 8, !tbaa !309
  %i.uh = mul i64 %i.ug, 6
  %i.ui = getelementptr inbounds nuw i8, ptr %.5150.i.i.epil.epil, i64 %i.uh ; 2 uses
  %i.uj = add nuw nsw i32 %.081151.i.i.epil.epil, 1
  %epil.iter.next.epil = add i32 %epil.iter.epil, 1 ; 2 uses
  %epil.iter.cmp.epil.not = icmp eq i32 %epil.iter.next.epil, %i.hc
  br i1 %epil.iter.cmp.epil.not, label %.preheader127.i.i, label %bb.bn, !llvm.loop !450

.preheader127.i.i:                                ; preds = %.preheader127.i.i.loopexit276.unr-lcssa, %bb.bn, %.preheader127.i.i.loopexit.unr-lcssa, %bb.bm
  %.us-phi.i.i = phi ptr [ %i.ua, %bb.bm ], [ %i.tj, %.preheader127.i.i.loopexit.unr-lcssa ], [ %i.wj, %.preheader127.i.i.loopexit276.unr-lcssa ], [ %i.ui, %bb.bn ] ; 4 uses
  br i1 %i.st, label %.preheader126.us.i.i.preheader, label %.preheader126.i.i.preheader

.preheader126.i.i.preheader:                      ; preds = %.preheader127.i.i
  %xtraiter326 = and i8 %i.hq, 1
  br i1 %i.hf, label %.preheader126.i.i.preheader.new, label %.preheader126.i.i.epil.preheader

.preheader126.i.i.preheader.new:                  ; preds = %.preheader126.i.i.preheader
  %unroll_iter333 = and i8 %i.hq, 4
  br label %.preheader126.i.i

.preheader126.us.i.i.preheader:                   ; preds = %.preheader127.i.i
  %xtraiter344 = and i64 %wide.trip.count190.i.i, 1
  br i1 %i.hf, label %.preheader126.us.i.i.preheader.new, label %.preheader126.us.i.i.epil.preheader

.preheader126.us.i.i.preheader.new:               ; preds = %.preheader126.us.i.i.preheader
  %unroll_iter351 = and i64 %wide.trip.count190.i.i, 4
  br label %.preheader126.us.i.i

.preheader126.us.i.i:                             ; preds = %.epilog-lcssa340.1, %.preheader126.us.i.i.preheader.new
  %indvars.iv209.i.i = phi i64 [ 0, %.preheader126.us.i.i.preheader.new ], [ %indvars.iv.next210.i.i.1, %.epilog-lcssa340.1 ] ; 3 uses
  %.6159.us.i.i = phi ptr [ %.us-phi.i.i, %.preheader126.us.i.i.preheader.new ], [ %i.vb, %.epilog-lcssa340.1 ]
  %niter352 = phi i64 [ 0, %.preheader126.us.i.i.preheader.new ], [ %niter352.next.1, %.epilog-lcssa340.1 ]
  %invariant.gep154.us.i.i = getelementptr inbounds nuw [240 x i8], ptr %i.hk, i64 %indvars.iv209.i.i
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %.preheader126.us.i.i
  %.080157.us.i.i.epil = phi i32 [ 0, %.preheader126.us.i.i ], [ %i.us, %bb.bo ] ; 2 uses
  %.7156.us.i.i.epil = phi ptr [ %.6159.us.i.i, %.preheader126.us.i.i ], [ %i.ur, %bb.bo ] ; 2 uses
  %epil.iter338 = phi i32 [ 0, %.preheader126.us.i.i ], [ %epil.iter338.next, %bb.bo ]
  %i.uk = and i32 %.080157.us.i.i.epil, 1
end_hunk_1
begin_hunk_2_@_ZSt22__merge_without_bufferIPN9Stockfish6SquareElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_S9_T0_SA_T1_:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt3_V28__rotateIPN9Stockfish6SquareEEET_S4_S4_S4_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.g = sub i64 %i.f, %i.d                       ; 10 uses
  %i.h = sub nsw i64 %i.e, %i.g
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %iter.check222, label %bb.d

iter.check222:                                    ; preds = %bb.c
  %min.iters.check200 = icmp ult i64 %i.g, 16
  br i1 %min.iters.check200, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check201

vector.main.loop.iter.check201:                   ; preds = %iter.check222
  %min.iters.check202 = icmp ult i64 %i.g, 256
  br i1 %min.iters.check202, label %vec.epilog.ph226, label %vector.ph203

vector.ph203:                                     ; preds = %vector.main.loop.iter.check201
  %i.j = and i64 %i.g, 240
  %n.vec204 = and i64 %i.g, -256                  ; 5 uses
  %i.k = getelementptr i8, ptr %1, i64 %n.vec204
  %i.l = getelementptr i8, ptr %0, i64 %n.vec204
  br label %vector.body205

vector.body205:                                   ; preds = %vector.body205, %vector.ph203
  %index206 = phi i64 [ 0, %vector.ph203 ], [ %index.next217, %vector.body205 ] ; 3 uses
  %next.gep207 = getelementptr i8, ptr %1, i64 %index206 ; 5 uses
  %next.gep208 = getelementptr i8, ptr %0, i64 %index206 ; 5 uses
  %i.m = getelementptr i8, ptr %next.gep208, i64 64 ; 2 uses
  %i.n = getelementptr i8, ptr %next.gep208, i64 128 ; 2 uses
  %i.o = getelementptr i8, ptr %next.gep208, i64 192 ; 2 uses
  %wide.load209 = load <64 x i8>, ptr %next.gep208, align 1, !tbaa !95, !alias.scope !532, !noalias !535
  %wide.load210 = load <64 x i8>, ptr %i.m, align 1, !tbaa !95, !alias.scope !532, !noalias !535
  %wide.load211 = load <64 x i8>, ptr %i.n, align 1, !tbaa !95, !alias.scope !532, !noalias !535
  %wide.load212 = load <64 x i8>, ptr %i.o, align 1, !tbaa !95, !alias.scope !532, !noalias !535
  %i.p = getelementptr i8, ptr %next.gep207, i64 64 ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep207, i64 128 ; 2 uses
  %i.r = getelementptr i8, ptr %next.gep207, i64 192 ; 2 uses
  %wide.load213 = load <64 x i8>, ptr %next.gep207, align 1, !tbaa !95, !alias.scope !535
  %wide.load214 = load <64 x i8>, ptr %i.p, align 1, !tbaa !95, !alias.scope !535
  %wide.load215 = load <64 x i8>, ptr %i.q, align 1, !tbaa !95, !alias.scope !535
  %wide.load216 = load <64 x i8>, ptr %i.r, align 1, !tbaa !95, !alias.scope !535
  store <64 x i8> %wide.load213, ptr %next.gep208, align 1, !tbaa !95, !alias.scope !532, !noalias !535
  store <64 x i8> %wide.load214, ptr %i.m, align 1, !tbaa !95, !alias.scope !532, !noalias !535
  store <64 x i8> %wide.load215, ptr %i.n, align 1, !tbaa !95, !alias.scope !532, !noalias !535
  store <64 x i8> %wide.load216, ptr %i.o, align 1, !tbaa !95, !alias.scope !532, !noalias !535
  store <64 x i8> %wide.load209, ptr %next.gep207, align 1, !tbaa !95, !alias.scope !535
  store <64 x i8> %wide.load210, ptr %i.p, align 1, !tbaa !95, !alias.scope !535
  store <64 x i8> %wide.load211, ptr %i.q, align 1, !tbaa !95, !alias.scope !535
  store <64 x i8> %wide.load212, ptr %i.r, align 1, !tbaa !95, !alias.scope !535
  %index.next217 = add nuw i64 %index206, 256     ; 2 uses
  %i.s = icmp eq i64 %index.next217, %n.vec204
  br i1 %i.s, label %middle.block218, label %vector.body205, !llvm.loop !537

middle.block218:                                  ; preds = %vector.body205
  %cmp.n219 = icmp eq i64 %i.g, %n.vec204
  br i1 %cmp.n219, label %_ZSt11swap_rangesIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit, label %vec.epilog.iter.check224

vec.epilog.iter.check224:                         ; preds = %middle.block218
  %min.epilog.iters.check225 = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check225, label %.lr.ph.i.preheader, label %vec.epilog.ph226, !prof !289

vec.epilog.ph226:                                 ; preds = %vector.main.loop.iter.check201, %vec.epilog.iter.check224
  %vec.epilog.resume.val220 = phi i64 [ %n.vec204, %vec.epilog.iter.check224 ], [ 0, %vector.main.loop.iter.check201 ]
  %n.vec227 = and i64 %i.g, -16                   ; 4 uses
  %i.t = getelementptr i8, ptr %1, i64 %n.vec227
  %i.u = getelementptr i8, ptr %0, i64 %n.vec227
  br label %vec.epilog.vector.body228

vec.epilog.vector.body228:                        ; preds = %vec.epilog.vector.body228, %vec.epilog.ph226
  %index229 = phi i64 [ %vec.epilog.resume.val220, %vec.epilog.ph226 ], [ %index.next234, %vec.epilog.vector.body228 ] ; 3 uses
  %next.gep230 = getelementptr i8, ptr %1, i64 %index229 ; 2 uses
  %next.gep231 = getelementptr i8, ptr %0, i64 %index229 ; 2 uses
  %wide.load232 = load <16 x i8>, ptr %next.gep231, align 1, !tbaa !95, !alias.scope !532, !noalias !535
  %wide.load233 = load <16 x i8>, ptr %next.gep230, align 1, !tbaa !95, !alias.scope !535
  store <16 x i8> %wide.load233, ptr %next.gep231, align 1, !tbaa !95, !alias.scope !532, !noalias !535
  store <16 x i8> %wide.load232, ptr %next.gep230, align 1, !tbaa !95, !alias.scope !535
  %index.next234 = add nuw i64 %index229, 16      ; 2 uses
  %i.v = icmp eq i64 %index.next234, %n.vec227
  br i1 %i.v, label %vec.epilog.middle.block235, label %vec.epilog.vector.body228, !llvm.loop !538

vec.epilog.middle.block235:                       ; preds = %vec.epilog.vector.body228
  %cmp.n236 = icmp eq i64 %i.g, %n.vec227
  br i1 %cmp.n236, label %_ZSt11swap_rangesIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check222, %vec.epilog.iter.check224, %vec.epilog.middle.block235
  %.010.i.ph = phi ptr [ %1, %iter.check222 ], [ %i.k, %vec.epilog.iter.check224 ], [ %i.t, %vec.epilog.middle.block235 ] ; 2 uses
  %.079.i.ph = phi ptr [ %0, %iter.check222 ], [ %i.l, %vec.epilog.iter.check224 ], [ %i.u, %vec.epilog.middle.block235 ] ; 3 uses
  %.079.i.ph248 = ptrtoaddr ptr %.079.i.ph to i64 ; 2 uses
  %i.w = sub i64 %i.f, %.079.i.ph248
  %xtraiter249 = and i64 %i.w, 7                  ; 2 uses
  %lcmp.mod250.not = icmp eq i64 %xtraiter249, 0
  br i1 %lcmp.mod250.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.010.i.prol = phi ptr [ %i.aa, %.lr.ph.i.prol ], [ %.010.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.079.i.prol = phi ptr [ %i.z, %.lr.ph.i.prol ], [ %.079.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter251 = phi i64 [ %prol.iter251.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.x = load i8, ptr %.079.i.prol, align 1, !tbaa !95
  %i.y = load i8, ptr %.010.i.prol, align 1, !tbaa !95
  store i8 %i.y, ptr %.079.i.prol, align 1, !tbaa !95
  store i8 %i.x, ptr %.010.i.prol, align 1, !tbaa !95
  %i.z = getelementptr inbounds nuw i8, ptr %.079.i.prol, i64 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.010.i.prol, i64 1 ; 2 uses
  %prol.iter251.next = add i64 %prol.iter251, 1   ; 2 uses
  %prol.iter251.cmp.not = icmp eq i64 %prol.iter251.next, %xtraiter249
  br i1 %prol.iter251.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !539

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.010.i.unr = phi ptr [ %.010.i.ph, %.lr.ph.i.preheader ], [ %i.aa, %.lr.ph.i.prol ]
  %.079.i.unr = phi ptr [ %.079.i.ph, %.lr.ph.i.preheader ], [ %i.z, %.lr.ph.i.prol ]
  %i.ab = sub i64 %.079.i.ph248, %i.f
  %i.ac = icmp ugt i64 %i.ab, -8
  br i1 %i.ac, label %_ZSt11swap_rangesIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.010.i = phi ptr [ %i.bi, %.lr.ph.i ], [ %.010.i.unr, %.lr.ph.i.prol.loopexit ] ; 10 uses
  %.079.i = phi ptr [ %i.bh, %.lr.ph.i ], [ %.079.i.unr, %.lr.ph.i.prol.loopexit ] ; 10 uses
  %i.ad = load i8, ptr %.079.i, align 1, !tbaa !95
  %i.ae = load i8, ptr %.010.i, align 1, !tbaa !95
  store i8 %i.ae, ptr %.079.i, align 1, !tbaa !95
  store i8 %i.ad, ptr %.010.i, align 1, !tbaa !95
  %i.af = getelementptr inbounds nuw i8, ptr %.079.i, i64 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.010.i, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.af, align 1, !tbaa !95
  %i.ai = load i8, ptr %i.ag, align 1, !tbaa !95
  store i8 %i.ai, ptr %i.af, align 1, !tbaa !95
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !95
  %i.aj = getelementptr inbounds nuw i8, ptr %.079.i, i64 2 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.010.i, i64 2 ; 2 uses
  %i.al = load i8, ptr %i.aj, align 1, !tbaa !95
  %i.am = load i8, ptr %i.ak, align 1, !tbaa !95
  store i8 %i.am, ptr %i.aj, align 1, !tbaa !95
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !95
  %i.an = getelementptr inbounds nuw i8, ptr %.079.i, i64 3 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.010.i, i64 3 ; 2 uses
  %i.ap = load i8, ptr %i.an, align 1, !tbaa !95
  %i.aq = load i8, ptr %i.ao, align 1, !tbaa !95
  store i8 %i.aq, ptr %i.an, align 1, !tbaa !95
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !95
  %i.ar = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %i.at = load i8, ptr %i.ar, align 1, !tbaa !95
  %i.au = load i8, ptr %i.as, align 1, !tbaa !95
  store i8 %i.au, ptr %i.ar, align 1, !tbaa !95
  store i8 %i.at, ptr %i.as, align 1, !tbaa !95
  %i.av = getelementptr inbounds nuw i8, ptr %.079.i, i64 5 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.010.i, i64 5 ; 2 uses
  %i.ax = load i8, ptr %i.av, align 1, !tbaa !95
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !95
  store i8 %i.ay, ptr %i.av, align 1, !tbaa !95
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !95
  %i.az = getelementptr inbounds nuw i8, ptr %.079.i, i64 6 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.010.i, i64 6 ; 2 uses
  %i.bb = load i8, ptr %i.az, align 1, !tbaa !95
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !95
  store i8 %i.bc, ptr %i.az, align 1, !tbaa !95
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !95
  %i.bd = getelementptr inbounds nuw i8, ptr %.079.i, i64 7 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.010.i, i64 7 ; 2 uses
  %i.bf = load i8, ptr %i.bd, align 1, !tbaa !95
  %i.bg = load i8, ptr %i.be, align 1, !tbaa !95
  store i8 %i.bg, ptr %i.bd, align 1, !tbaa !95
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !95
  %i.bh = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %.not.i.7 = icmp eq ptr %i.bh, %1
  br i1 %.not.i.7, label %_ZSt11swap_rangesIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit, label %.lr.ph.i, !llvm.loop !540

bb.d:                                             ; preds = %bb.c
  %i.bj = sub i64 %i.c, %i.f
  %i.bk = getelementptr inbounds i8, ptr %0, i64 %i.bj ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.086 = phi i64 [ %i.e, %bb.d ], [ %.086.be, %.backedge ] ; 11 uses
  %.082 = phi i64 [ %i.g, %bb.d ], [ %.082.be, %.backedge ] ; 20 uses
  %.058 = phi ptr [ %0, %bb.d ], [ %.058.be, %.backedge ] ; 26 uses
  %i.bl = sub nsw i64 %.086, %.082                ; 16 uses
  %i.bm = icmp slt i64 %.082, %i.bl
  br i1 %i.bm, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.bn = icmp eq i64 %.082, 1
  br i1 %i.bn, label %_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit, label %bb.g

_ZSt4moveIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit: ; preds = %bb.f
  %i.bo = load i8, ptr %.058, align 1, !tbaa !95
  %i.bp = getelementptr inbounds nuw i8, ptr %.058, i64 1
  %i.bq = getelementptr inbounds nuw i8, ptr %.058, i64 %.086
  %gepdiff = add nsw i64 %.086, -1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.058, ptr nonnull align 1 %i.bp, i64 %gepdiff, i1 false)
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -1
  store i8 %i.bo, ptr %i.br, align 1, !tbaa !95
  br label %_ZSt11swap_rangesIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit

bb.g:                                             ; preds = %bb.f
  %i.bs = icmp sgt i64 %i.bl, 0
  br i1 %i.bs, label %iter.check, label %._crit_edge110

iter.check:                                       ; preds = %bb.g
  %i.bt = getelementptr i8, ptr %.058, i64 %.082  ; 7 uses
  %min.iters.check = icmp ult i64 %i.bl, 8
  br i1 %min.iters.check, label %.lr.ph109.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.058, i64 %i.bl
  %scevgep135 = getelementptr i8, ptr %.058, i64 %.086
  %bound0 = icmp ult ptr %.058, %scevgep135
  %bound1 = icmp ult ptr %i.bt, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph109.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check136 = icmp ult i64 %i.bl, 128
  br i1 %min.iters.check136, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bu = and i64 %i.bl, 120
  %n.vec = and i64 %i.bl, 9223372036854775680     ; 6 uses
  %i.bv = getelementptr i8, ptr %i.bt, i64 %n.vec
  %i.bw = getelementptr i8, ptr %.058, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.bt, i64 %index ; 3 uses
  %next.gep137 = getelementptr i8, ptr %.058, i64 %index ; 3 uses
  %i.bx = getelementptr i8, ptr %next.gep137, i64 64 ; 2 uses
  %wide.load = load <64 x i8>, ptr %next.gep137, align 1, !tbaa !95, !alias.scope !541, !noalias !544
  %wide.load138 = load <64 x i8>, ptr %i.bx, align 1, !tbaa !95, !alias.scope !541, !noalias !544
  %i.by = getelementptr i8, ptr %next.gep, i64 64 ; 2 uses
  %wide.load139 = load <64 x i8>, ptr %next.gep, align 1, !tbaa !95, !alias.scope !544
  %wide.load140 = load <64 x i8>, ptr %i.by, align 1, !tbaa !95, !alias.scope !544
  store <64 x i8> %wide.load139, ptr %next.gep137, align 1, !tbaa !95, !alias.scope !541, !noalias !544
  store <64 x i8> %wide.load140, ptr %i.bx, align 1, !tbaa !95, !alias.scope !541, !noalias !544
  store <64 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !95, !alias.scope !544
  store <64 x i8> %wide.load138, ptr %i.by, align 1, !tbaa !95, !alias.scope !544
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !546

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %._crit_edge110, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bu, 0
  br i1 %min.epilog.iters.check, label %.lr.ph109.preheader, label %vec.epilog.ph, !prof !547

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec142 = and i64 %i.bl, 9223372036854775800  ; 5 uses
  %i.ca = getelementptr i8, ptr %i.bt, i64 %n.vec142
  %i.cb = getelementptr i8, ptr %.058, i64 %n.vec142 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index143 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next148, %vec.epilog.vector.body ] ; 3 uses
  %next.gep144 = getelementptr i8, ptr %i.bt, i64 %index143 ; 2 uses
  %next.gep145 = getelementptr i8, ptr %.058, i64 %index143 ; 2 uses
  %wide.load146 = load <8 x i8>, ptr %next.gep145, align 1, !tbaa !95, !alias.scope !541, !noalias !544
  %wide.load147 = load <8 x i8>, ptr %next.gep144, align 1, !tbaa !95, !alias.scope !544
  store <8 x i8> %wide.load147, ptr %next.gep145, align 1, !tbaa !95, !alias.scope !541, !noalias !544
  store <8 x i8> %wide.load146, ptr %next.gep144, align 1, !tbaa !95, !alias.scope !544
  %index.next148 = add nuw i64 %index143, 8       ; 2 uses
  %i.cc = icmp eq i64 %index.next148, %n.vec142
  br i1 %i.cc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !548

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n149 = icmp eq i64 %i.bl, %n.vec142
  br i1 %cmp.n149, label %._crit_edge110, label %.lr.ph109.preheader

.lr.ph109.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.054107.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec142, %vec.epilog.middle.block ] ; 3 uses
  %.055106.ph = phi ptr [ %i.bt, %iter.check ], [ %i.bt, %vector.memcheck ], [ %i.bv, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ] ; 2 uses
  %.159105.ph = phi ptr [ %.058, %iter.check ], [ %.058, %vector.memcheck ], [ %i.bw, %vec.epilog.iter.check ], [ %i.cb, %vec.epilog.middle.block ] ; 2 uses
  %i.cd = sub i64 %.086, %.082
  %xtraiter245 = and i64 %i.cd, 7                 ; 2 uses
  %lcmp.mod246.not = icmp eq i64 %xtraiter245, 0
  br i1 %lcmp.mod246.not, label %.lr.ph109.prol.loopexit, label %.lr.ph109.prol

.lr.ph109.prol:                                   ; preds = %.lr.ph109.preheader, %.lr.ph109.prol
  %.054107.prol = phi i64 [ %i.ci, %.lr.ph109.prol ], [ %.054107.ph, %.lr.ph109.preheader ]
  %.055106.prol = phi ptr [ %i.ch, %.lr.ph109.prol ], [ %.055106.ph, %.lr.ph109.preheader ] ; 3 uses
  %.159105.prol = phi ptr [ %i.cg, %.lr.ph109.prol ], [ %.159105.ph, %.lr.ph109.preheader ] ; 3 uses
  %prol.iter247 = phi i64 [ %prol.iter247.next, %.lr.ph109.prol ], [ 0, %.lr.ph109.preheader ]
  %i.ce = load i8, ptr %.159105.prol, align 1, !tbaa !95
  %i.cf = load i8, ptr %.055106.prol, align 1, !tbaa !95
  store i8 %i.cf, ptr %.159105.prol, align 1, !tbaa !95
  store i8 %i.ce, ptr %.055106.prol, align 1, !tbaa !95
  %i.cg = getelementptr inbounds nuw i8, ptr %.159105.prol, i64 1 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.055106.prol, i64 1 ; 2 uses
  %i.ci = add nuw nsw i64 %.054107.prol, 1        ; 2 uses
  %prol.iter247.next = add i64 %prol.iter247, 1   ; 2 uses
  %prol.iter247.cmp.not = icmp eq i64 %prol.iter247.next, %xtraiter245
  br i1 %prol.iter247.cmp.not, label %.lr.ph109.prol.loopexit, label %.lr.ph109.prol, !llvm.loop !549

.lr.ph109.prol.loopexit:                          ; preds = %.lr.ph109.prol, %.lr.ph109.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph109.preheader ], [ %i.cg, %.lr.ph109.prol ]
  %.054107.unr = phi i64 [ %.054107.ph, %.lr.ph109.preheader ], [ %i.ci, %.lr.ph109.prol ]
  %.055106.unr = phi ptr [ %.055106.ph, %.lr.ph109.preheader ], [ %i.ch, %.lr.ph109.prol ]
  %.159105.unr = phi ptr [ %.159105.ph, %.lr.ph109.preheader ], [ %i.cg, %.lr.ph109.prol ]
  %i.cj = sub i64 %.054107.ph, %.086
  %i.ck = add i64 %i.cj, %.082
  %i.cl = icmp ugt i64 %i.ck, -8
  br i1 %i.cl, label %._crit_edge110, label %.lr.ph109

._crit_edge110:                                   ; preds = %.lr.ph109.prol.loopexit, %.lr.ph109, %middle.block, %vec.epilog.middle.block, %bb.g
  %.159.lcssa = phi ptr [ %.058, %bb.g ], [ %i.cb, %vec.epilog.middle.block ], [ %i.bw, %middle.block ], [ %.lcssa.unr, %.lr.ph109.prol.loopexit ], [ %i.dr, %.lr.ph109 ]
  %i.cm = srem i64 %.086, %.082                   ; 2 uses
  %.not67 = icmp eq i64 %i.cm, 0
  br i1 %.not67, label %_ZSt11swap_rangesIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit, label %bb.h

.lr.ph109:                                        ; preds = %.lr.ph109.prol.loopexit, %.lr.ph109
  %.054107 = phi i64 [ %i.dt, %.lr.ph109 ], [ %.054107.unr, %.lr.ph109.prol.loopexit ]
  %.055106 = phi ptr [ %i.ds, %.lr.ph109 ], [ %.055106.unr, %.lr.ph109.prol.loopexit ] ; 10 uses
  %.159105 = phi ptr [ %i.dr, %.lr.ph109 ], [ %.159105.unr, %.lr.ph109.prol.loopexit ] ; 10 uses
  %i.cn = load i8, ptr %.159105, align 1, !tbaa !95
  %i.co = load i8, ptr %.055106, align 1, !tbaa !95
  store i8 %i.co, ptr %.159105, align 1, !tbaa !95
  store i8 %i.cn, ptr %.055106, align 1, !tbaa !95
  %i.cp = getelementptr inbounds nuw i8, ptr %.159105, i64 1 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.055106, i64 1 ; 2 uses
  %i.cr = load i8, ptr %i.cp, align 1, !tbaa !95
  %i.cs = load i8, ptr %i.cq, align 1, !tbaa !95
  store i8 %i.cs, ptr %i.cp, align 1, !tbaa !95
  store i8 %i.cr, ptr %i.cq, align 1, !tbaa !95
  %i.ct = getelementptr inbounds nuw i8, ptr %.159105, i64 2 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.055106, i64 2 ; 2 uses
  %i.cv = load i8, ptr %i.ct, align 1, !tbaa !95
  %i.cw = load i8, ptr %i.cu, align 1, !tbaa !95
  store i8 %i.cw, ptr %i.ct, align 1, !tbaa !95
  store i8 %i.cv, ptr %i.cu, align 1, !tbaa !95
  %i.cx = getelementptr inbounds nuw i8, ptr %.159105, i64 3 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.055106, i64 3 ; 2 uses
  %i.cz = load i8, ptr %i.cx, align 1, !tbaa !95
  %i.da = load i8, ptr %i.cy, align 1, !tbaa !95
  store i8 %i.da, ptr %i.cx, align 1, !tbaa !95
  store i8 %i.cz, ptr %i.cy, align 1, !tbaa !95
  %i.db = getelementptr inbounds nuw i8, ptr %.159105, i64 4 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.055106, i64 4 ; 2 uses
  %i.dd = load i8, ptr %i.db, align 1, !tbaa !95
  %i.de = load i8, ptr %i.dc, align 1, !tbaa !95
  store i8 %i.de, ptr %i.db, align 1, !tbaa !95
  store i8 %i.dd, ptr %i.dc, align 1, !tbaa !95
  %i.df = getelementptr inbounds nuw i8, ptr %.159105, i64 5 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.055106, i64 5 ; 2 uses
  %i.dh = load i8, ptr %i.df, align 1, !tbaa !95
  %i.di = load i8, ptr %i.dg, align 1, !tbaa !95
  store i8 %i.di, ptr %i.df, align 1, !tbaa !95
  store i8 %i.dh, ptr %i.dg, align 1, !tbaa !95
  %i.dj = getelementptr inbounds nuw i8, ptr %.159105, i64 6 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.055106, i64 6 ; 2 uses
  %i.dl = load i8, ptr %i.dj, align 1, !tbaa !95
  %i.dm = load i8, ptr %i.dk, align 1, !tbaa !95
  store i8 %i.dm, ptr %i.dj, align 1, !tbaa !95
  store i8 %i.dl, ptr %i.dk, align 1, !tbaa !95
  %i.dn = getelementptr inbounds nuw i8, ptr %.159105, i64 7 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.055106, i64 7 ; 2 uses
  %i.dp = load i8, ptr %i.dn, align 1, !tbaa !95
  %i.dq = load i8, ptr %i.do, align 1, !tbaa !95
  store i8 %i.dq, ptr %i.dn, align 1, !tbaa !95
  store i8 %i.dp, ptr %i.do, align 1, !tbaa !95
  %i.dr = getelementptr inbounds nuw i8, ptr %.159105, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.055106, i64 8
  %i.dt = add nuw nsw i64 %.054107, 8             ; 2 uses
  %exitcond118.not.7 = icmp eq i64 %i.dt, %i.bl
  br i1 %exitcond118.not.7, label %._crit_edge110, label %.lr.ph109, !llvm.loop !550

bb.h:                                             ; preds = %._crit_edge110
  %i.du = sub nsw i64 %.082, %i.cm
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.dv = icmp eq i64 %i.bl, 1
  %i.dw = getelementptr i8, ptr %.058, i64 %.086  ; 9 uses
  br i1 %i.dv, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -1 ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !95
  %i.dz = add nsw i64 %.086, -1                   ; 2 uses
  %i.ea = icmp sgt i64 %.086, 2
  br i1 %i.ea, label %bb.k, label %bb.l, !prof !190

bb.k:                                             ; preds = %bb.j
  %i.eb = getelementptr inbounds nuw i8, ptr %.058, i64 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.eb, ptr nonnull align 1 %.058, i64 %i.dz, i1 false)
  br label %_ZSt13move_backwardIPN9Stockfish6SquareES2_ET0_T_S4_S3_.exit
end_hunk_2
