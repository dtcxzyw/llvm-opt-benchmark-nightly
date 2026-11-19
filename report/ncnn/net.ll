Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/net?download=true
inline.NumInlined: 978
inline.NumDeleted: 433
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4ncnn3Net10load_paramERKNS_10DataReaderE:bb.a
  %i.ib = load i64, ptr %i.b, align 8, !tbaa !146
  store i64 %i.ib, ptr %i.bn, align 8, !tbaa !72
  br label %._crit_edge.i.i819

._crit_edge.i.i819:                               ; preds = %.noexc821, %bb.bg
  %i.ic = phi ptr [ %i.ia, %.noexc821 ], [ %i.bn, %bb.bg ] ; 2 uses
  switch i64 %i.hy, label %bb.bi [
    i64 1, label %bb.bh
    i64 0, label %bb.bj
  ]

bb.bh:                                            ; preds = %._crit_edge.i.i819
  %i.id = load i8, ptr %i.l, align 16, !tbaa !72
  store i8 %i.id, ptr %i.ic, align 1, !tbaa !72
  br label %bb.bj

bb.bi:                                            ; preds = %._crit_edge.i.i819
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ic, ptr nonnull align 16 %i.l, i64 %i.hy, i1 false)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %._crit_edge.i.i819
  %i.ie = load i64, ptr %i.b, align 8, !tbaa !146 ; 2 uses
  store i64 %i.ie, ptr %i.bo, align 8, !tbaa !147
  %i.if = load ptr, ptr %5, align 8, !tbaa !71
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.ie
  store i8 0, ptr %i.ig, align 1, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.ih = load ptr, ptr %i.hx, align 8, !tbaa !71 ; 6 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hx, i64 16 ; 4 uses
  %i.ij = icmp eq ptr %i.ih, %i.ii
  %i.ik = load ptr, ptr %5, align 8, !tbaa !71    ; 6 uses
  %i.il = icmp eq ptr %i.ik, %i.bn                ; 2 uses
  br i1 %i.ij, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i829, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i823

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i829: ; preds = %bb.bj
  br i1 %i.il, label %bb.bk, label %.thread.i830

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i823: ; preds = %bb.bj
  br i1 %i.il, label %bb.bk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i824

bb.bk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i823, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i829
  %i.im = load i64, ptr %i.bo, align 8, !tbaa !147 ; 3 uses
  %i.in = icmp ult i64 %i.im, 16
  call void @llvm.assume(i1 %i.in)
  %.not21.i826 = icmp eq ptr %5, %i.hx
  br i1 %.not21.i826, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit831, label %bb.bl, !prof !148

bb.bl:                                            ; preds = %bb.bk
  switch i64 %i.im, label %bb.bn [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i827
    i64 1, label %bb.bm
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.io = load i8, ptr %i.ik, align 1, !tbaa !72
  store i8 %i.io, ptr %i.ih, align 1, !tbaa !72
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i827

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ih, ptr align 1 %i.ik, i64 %i.im, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i827

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i827: ; preds = %bb.bn, %bb.bm, %bb.bl
  %i.ip = load i64, ptr %i.bo, align 8, !tbaa !147 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store i64 %i.ip, ptr %i.iq, align 8, !tbaa !147
  %i.ir = load ptr, ptr %i.hx, align 8, !tbaa !71
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.ip
  store i8 0, ptr %i.is, align 1, !tbaa !72
  %.pre.i828 = load ptr, ptr %5, align 8, !tbaa !71
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit831

.thread.i830:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i829
  %i.it = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store ptr %i.ik, ptr %i.hx, align 8, !tbaa !71
  %i.iu = load i64, ptr %i.bo, align 8, !tbaa !147
  store i64 %i.iu, ptr %i.it, align 8, !tbaa !147
  %i.iv = load i64, ptr %i.bn, align 8, !tbaa !72
  store i64 %i.iv, ptr %i.ii, align 8, !tbaa !72
  br label %bb.bp

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i824: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i823
  %i.iw = load i64, ptr %i.ii, align 8, !tbaa !72
  store ptr %i.ik, ptr %i.hx, align 8, !tbaa !71
  %i.ix = load i64, ptr %i.bo, align 8, !tbaa !147
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store i64 %i.ix, ptr %i.iy, align 8, !tbaa !147
  %i.iz = load i64, ptr %i.bn, align 8, !tbaa !72
  store i64 %i.iz, ptr %i.ii, align 8, !tbaa !72
  %.not.i825 = icmp eq ptr %i.ih, null
  br i1 %.not.i825, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i824
  store ptr %i.ih, ptr %5, align 8, !tbaa !71
  store i64 %i.iw, ptr %i.bn, align 8, !tbaa !72
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit831

bb.bp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i824, %.thread.i830
  store ptr %i.bn, ptr %5, align 8, !tbaa !71
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit831

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit831: ; preds = %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i827, %bb.bo, %bb.bp
  %i.ja = phi ptr [ %.pre.i828, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i827 ], [ %i.ih, %bb.bo ], [ %i.bn, %bb.bp ], [ %i.ik, %bb.bk ]
  store i64 0, ptr %i.bo, align 8, !tbaa !147
  store i8 0, ptr %i.ja, align 1, !tbaa !72
  %i.jb = load ptr, ptr %5, align 8, !tbaa !71    ; 2 uses
  %i.jc = icmp eq ptr %i.jb, %i.bn
  br i1 %i.jc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit834, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i832

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i832: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit831
  %i.jd = load i64, ptr %i.bn, align 8, !tbaa !72
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.je) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit834

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit834: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit831, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i832
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.jf = add nsw i32 %.13191356, 1
  %.pre1463 = load ptr, ptr %i.ao, align 8, !tbaa !24
  %.phi.trans.insert1464 = getelementptr inbounds nuw i8, ptr %.pre1463, i64 8
  %.pre1465 = load ptr, ptr %.phi.trans.insert1464, align 8, !tbaa !64
  br label %bb.bs

bb.bq:                                            ; preds = %.lr.ph
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.br:                                            ; preds = %.noexc.i820
  %i.jh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.bt

bb.bs:                                            ; preds = %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit834
  %.pre-phi = phi i64 [ %.pre1492, %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit._crit_edge ], [ %i.hw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit834 ]
  %i.ji = phi ptr [ %i.gy, %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit._crit_edge ], [ %.pre1465, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit834 ]
  %.2320 = phi i32 [ %.13191356, %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit._crit_edge ], [ %i.jf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit834 ] ; 2 uses
  %.0271 = phi i32 [ %.3.i, %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit._crit_edge ], [ %.13191356, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit834 ]
  %i.jj = getelementptr inbounds nuw [112 x i8], ptr %i.ji, i64 %.pre-phi
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 36
  store i32 %i.gl, ptr %i.jk, align 4, !tbaa !109
  %i.jl = load ptr, ptr %i.fw, align 8, !tbaa !81
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %indvars.iv
  store i32 %.0271, ptr %i.jm, align 4, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jn = load i32, ptr %i.j, align 4, !tbaa !82
  %i.jo = sext i32 %i.jn to i64
  %.not359 = icmp slt i64 %indvars.iv.next, %i.jo
  br i1 %.not359, label %.lr.ph, label %.thread1086, !llvm.loop !201

bb.bt:                                            ; preds = %bb.bq, %bb.br
  %.pn.pn = phi { ptr, i32 } [ %i.jg, %bb.bq ], [ %i.jh, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #28
  br label %.loopexit.split-lp1137

.thread1086:                                      ; preds = %bb.bs, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %.1319.lcssa = phi i32 [ %.03181375, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ], [ %.2320, %bb.bs ] ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.12741079, i64 136 ; 5 uses
  %i.jq = load i32, ptr %i.k, align 4, !tbaa !82  ; 4 uses
  %i.jr = sext i32 %i.jq to i64                   ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.12741079, i64 144 ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !80 ; 2 uses
  %i.ju = load ptr, ptr %i.jp, align 8, !tbaa !81 ; 2 uses
  %i.jv = ptrtoint ptr %i.jt to i64
  %i.jw = ptrtoint ptr %i.ju to i64
  %i.jx = sub i64 %i.jv, %i.jw
  %i.jy = ashr exact i64 %i.jx, 2                 ; 3 uses
  %i.jz = icmp ult i64 %i.jy, %i.jr
  br i1 %i.jz, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.thread1086
  %i.ka = sub nuw nsw i64 %i.jr, %i.jy
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.jp, i64 noundef %i.ka)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit838_crit_edge unwind label %.loopexit.split-lp1137.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNSt6vectorIiSaIiEE6resizeEm.exit838_crit_edge: ; preds = %bb.bu
  %.pre1466 = load i32, ptr %i.k, align 4, !tbaa !82
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit838

bb.bv:                                            ; preds = %.thread1086
  %i.kb = icmp ugt i64 %i.jy, %i.jr
  br i1 %i.kb, label %bb.bw, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit838

bb.bw:                                            ; preds = %bb.bv
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %i.jr ; 2 uses
  %.not.i.i835 = icmp eq ptr %i.jt, %i.kc
  br i1 %.not.i.i835, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit838, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i836

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i836:     ; preds = %bb.bw
  store ptr %i.kc, ptr %i.js, align 8, !tbaa !80
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit838

_ZNSt6vectorIiSaIiEE6resizeEm.exit838:            ; preds = %._ZNSt6vectorIiSaIiEE6resizeEm.exit838_crit_edge, %bb.bv, %bb.bw, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i836
  %i.kd = phi i32 [ %.pre1466, %._ZNSt6vectorIiSaIiEE6resizeEm.exit838_crit_edge ], [ %i.jq, %bb.bv ], [ %i.jq, %bb.bw ], [ %i.jq, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i836 ]
  %.not3661360 = icmp sgt i32 %i.kd, 0
  br i1 %.not3661360, label %.lr.ph1363.preheader, label %._crit_edge

.lr.ph1363.preheader:                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit838
  %9 = sext i32 %.1319.lcssa to i64
  %i.ke = trunc nuw nsw i64 %indvars.iv1456 to i32
  br label %.lr.ph1363

.lr.ph1363:                                       ; preds = %.lr.ph1363.preheader, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i853
  %indvars.iv1442 = phi i64 [ %9, %.lr.ph1363.preheader ], [ %indvars.iv.next1443, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i853 ] ; 3 uses
  %indvars.iv1440 = phi i64 [ 0, %.lr.ph1363.preheader ], [ %indvars.iv.next1441, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i853 ] ; 2 uses
  %i.kf = load ptr, ptr %i.ao, align 8, !tbaa !24
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !64
  %i.ki = getelementptr inbounds nuw [112 x i8], ptr %i.kh, i64 %indvars.iv1442 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #28
  %i.kj = load ptr, ptr %1, align 8, !tbaa !17
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %i.kl = load ptr, ptr %i.kk, align 8
  %i.km = invoke noundef i32 %i.kl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.m)
          to label %bb.bx unwind label %bb.by

bb.bx:                                            ; preds = %.lr.ph1363
  %.not360 = icmp eq i32 %i.km, 1
  br i1 %.not360, label %bb.bz, label %.thread1093

bb.by:                                            ; preds = %.lr.ph1363
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.bz:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store ptr %i.bp, ptr %6, align 8, !tbaa !145
  %i.ko = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.ko, ptr %i.a, align 8, !tbaa !146
  %i.kp = icmp ugt i64 %i.ko, 15
  br i1 %i.kp, label %.noexc.i840, label %._crit_edge.i.i839

.noexc.i840:                                      ; preds = %bb.bz
  %i.kq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc841 unwind label %bb.cj ; 2 uses

.noexc841:                                        ; preds = %.noexc.i840
  store ptr %i.kq, ptr %6, align 8, !tbaa !71
  %i.kr = load i64, ptr %i.a, align 8, !tbaa !146
  store i64 %i.kr, ptr %i.bp, align 8, !tbaa !72
  br label %._crit_edge.i.i839

._crit_edge.i.i839:                               ; preds = %.noexc841, %bb.bz
  %i.ks = phi ptr [ %i.kq, %.noexc841 ], [ %i.bp, %bb.bz ] ; 2 uses
  switch i64 %i.ko, label %bb.cb [
    i64 1, label %bb.ca
    i64 0, label %bb.cc
  ]

bb.ca:                                            ; preds = %._crit_edge.i.i839
  %i.kt = load i8, ptr %i.m, align 16, !tbaa !72
  store i8 %i.kt, ptr %i.ks, align 1, !tbaa !72
  br label %bb.cc

bb.cb:                                            ; preds = %._crit_edge.i.i839
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ks, ptr nonnull align 16 %i.m, i64 %i.ko, i1 false)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %._crit_edge.i.i839
  %i.ku = load i64, ptr %i.a, align 8, !tbaa !146 ; 2 uses
  store i64 %i.ku, ptr %i.bq, align 8, !tbaa !147
  %i.kv = load ptr, ptr %6, align 8, !tbaa !71
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.ku
  store i8 0, ptr %i.kw, align 1, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.kx = load ptr, ptr %i.ki, align 8, !tbaa !71 ; 6 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ki, i64 16 ; 4 uses
  %i.kz = icmp eq ptr %i.kx, %i.ky
  %i.la = load ptr, ptr %6, align 8, !tbaa !71    ; 6 uses
  %i.lb = icmp eq ptr %i.la, %i.bp                ; 2 uses
  br i1 %i.kz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i849, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i843

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i849: ; preds = %bb.cc
  br i1 %i.lb, label %bb.cd, label %.thread.i850

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i843: ; preds = %bb.cc
  br i1 %i.lb, label %bb.cd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i844

bb.cd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i843, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i849
  %i.lc = load i64, ptr %i.bq, align 8, !tbaa !147 ; 3 uses
  %i.ld = icmp ult i64 %i.lc, 16
  call void @llvm.assume(i1 %i.ld)
  %.not21.i846 = icmp eq ptr %6, %i.ki
  br i1 %.not21.i846, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit851, label %bb.ce, !prof !148

bb.ce:                                            ; preds = %bb.cd
  switch i64 %i.lc, label %bb.cg [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i847
    i64 1, label %bb.cf
  ]

bb.cf:                                            ; preds = %bb.ce
  %i.le = load i8, ptr %i.la, align 1, !tbaa !72
  store i8 %i.le, ptr %i.kx, align 1, !tbaa !72
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i847

bb.cg:                                            ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kx, ptr align 1 %i.la, i64 %i.lc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i847

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i847: ; preds = %bb.cg, %bb.cf, %bb.ce
  %i.lf = load i64, ptr %i.bq, align 8, !tbaa !147 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  store i64 %i.lf, ptr %i.lg, align 8, !tbaa !147
  %i.lh = load ptr, ptr %i.ki, align 8, !tbaa !71
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.lf
  store i8 0, ptr %i.li, align 1, !tbaa !72
  %.pre.i848 = load ptr, ptr %6, align 8, !tbaa !71
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit851

.thread.i850:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i849
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  store ptr %i.la, ptr %i.ki, align 8, !tbaa !71
  %i.lk = load i64, ptr %i.bq, align 8, !tbaa !147
  store i64 %i.lk, ptr %i.lj, align 8, !tbaa !147
  %i.ll = load i64, ptr %i.bp, align 8, !tbaa !72
  store i64 %i.ll, ptr %i.ky, align 8, !tbaa !72
  br label %bb.ci

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i844: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i843
  %i.lm = load i64, ptr %i.ky, align 8, !tbaa !72
  store ptr %i.la, ptr %i.ki, align 8, !tbaa !71
  %i.ln = load i64, ptr %i.bq, align 8, !tbaa !147
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  store i64 %i.ln, ptr %i.lo, align 8, !tbaa !147
  %i.lp = load i64, ptr %i.bp, align 8, !tbaa !72
  store i64 %i.lp, ptr %i.ky, align 8, !tbaa !72
  %.not.i845 = icmp eq ptr %i.kx, null
  br i1 %.not.i845, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i844
  store ptr %i.kx, ptr %6, align 8, !tbaa !71
  store i64 %i.lm, ptr %i.bp, align 8, !tbaa !72
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit851

bb.ci:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i844, %.thread.i850
  store ptr %i.bp, ptr %6, align 8, !tbaa !71
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit851

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit851: ; preds = %bb.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i847, %bb.ch, %bb.ci
  %i.lq = phi ptr [ %.pre.i848, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i847 ], [ %i.kx, %bb.ch ], [ %i.bp, %bb.ci ], [ %i.la, %bb.cd ]
  store i64 0, ptr %i.bq, align 8, !tbaa !147
  store i8 0, ptr %i.lq, align 1, !tbaa !72
  %i.lr = load ptr, ptr %6, align 8, !tbaa !71    ; 2 uses
  %i.ls = icmp eq ptr %i.lr, %i.bp
  br i1 %i.ls, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i853, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i852

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i852: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit851
  %i.lt = load i64, ptr %i.bp, align 8, !tbaa !72
  %i.lu = add i64 %i.lt, 1
  call void @_ZdlPvm(ptr noundef %i.lr, i64 noundef %i.lu) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i853

.thread1093:                                      ; preds = %bb.bx
  %i.lv = load ptr, ptr @stderr, align 8, !tbaa !135
  %fwrite363 = call i64 @fwrite(ptr nonnull @.str.23, i64 22, i64 1, ptr %i.lv) #34 ; 0 uses
  %i.lw = load ptr, ptr @stderr, align 8, !tbaa !135
  %fputc365 = call i32 @fputc(i32 10, ptr %i.lw)  ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #28
  br label %.thread1122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i853: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit851, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i852
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ki, i64 32
  store i32 %i.ke, ptr %i.lx, align 8, !tbaa !86
  %i.ly = load ptr, ptr %i.jp, align 8, !tbaa !81
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %indvars.iv1440
  %10 = trunc nsw i64 %indvars.iv1442 to i32
  store i32 %10, ptr %i.lz, align 4, !tbaa !82
  %indvars.iv.next1443 = add nsw i64 %indvars.iv1442, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #28
  %indvars.iv.next1441 = add nuw nsw i64 %indvars.iv1440, 1 ; 2 uses
  %i.ma = load i32, ptr %i.k, align 4, !tbaa !82
  %i.mb = sext i32 %i.ma to i64
  %.not366 = icmp slt i64 %indvars.iv.next1441, %i.mb
  br i1 %.not366, label %.lr.ph1363, label %._crit_edge.loopexit, !llvm.loop !202

bb.cj:                                            ; preds = %.noexc.i840
  %i.mc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.by
  %.pn361 = phi { ptr, i32 } [ %i.mc, %bb.cj ], [ %i.kn, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #28
  br label %.loopexit.split-lp1137

._crit_edge.loopexit:                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i853
  %11 = trunc nsw i64 %indvars.iv.next1443 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIiSaIiEE6resizeEm.exit838
  %.5323.lcssa = phi i32 [ %.1319.lcssa, %_ZNSt6vectorIiSaIiEE6resizeEm.exit838 ], [ %11, %._crit_edge.loopexit ]
  %i.md = getelementptr inbounds nuw i8, ptr %.12741079, i64 10 ; 2 uses
  %i.me = load i8, ptr %i.md, align 2, !tbaa !149, !range !92, !noundef !93
  %i.mf = trunc nuw i8 %i.me to i1
  %i.mg = invoke noundef i32 @_ZN4ncnn9ParamDict10load_paramERKNS_10DataReaderE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.cl unwind label %.loopexit.split-lp1137.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cl:                                            ; preds = %._crit_edge
  %.not367 = icmp eq i32 %i.mg, 0
  br i1 %.not367, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.mh = trunc nuw nsw i64 %indvars.iv1456 to i32
  %i.mi = load ptr, ptr @stderr, align 8, !tbaa !135
  %i.mj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mi, ptr noundef nonnull @.str.24, i32 noundef %i.mh, ptr noundef nonnull %i.i) #35 ; 0 uses
  %i.mk = load ptr, ptr @stderr, align 8, !tbaa !135
  %fputc401 = call i32 @fputc(i32 10, ptr %i.mk)  ; 0 uses
  %i.ml = load ptr, ptr %.12741079, align 8, !tbaa !17
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.mn = load ptr, ptr %i.mm, align 8
  call void %i.mn(ptr noundef nonnull align 8 dereferenceable(208) %.12741079) #28
  br label %.invoke

.loopexit.split-lp1137.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bu, %bb.az, %bb.aa, %bb.ac, %bb.ae, %bb.x, %bb.u, %bb.r, %bb.o, %._crit_edge, %.invoke
  %lpad.loopexit.split-lp1800 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1137

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store i64 0, ptr %i.bt, align 8, !tbaa !70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %8, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bs, i8 0, i64 28, i1 false)
  invoke void @_ZNK4ncnn9ParamDict3getEiRKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 30, ptr noundef nonnull align 8 dereferenceable(72) %8)
          to label %bb.co unwind label %bb.cw

bb.co:                                            ; preds = %bb.cn
  %i.mo = load ptr, ptr %i.br, align 8, !tbaa !67 ; 2 uses
  %.not.i = icmp eq ptr %i.mo, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit467, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.mp = atomicrmw add ptr %i.mo, i32 -1 acq_rel, align 4
  %i.mq = icmp eq i32 %i.mp, 1
  br i1 %i.mq, label %bb.cq, label %_ZN4ncnn3MatD2Ev.exit467

bb.cq:                                            ; preds = %bb.cp
  %i.mr = load ptr, ptr %i.bs, align 8, !tbaa !68 ; 3 uses
  %.not3.i = icmp eq ptr %i.mr, null
  %i.ms = load ptr, ptr %8, align 8, !tbaa !69    ; 3 uses
  br i1 %.not3.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.mt = load ptr, ptr %i.mr, align 8, !tbaa !17
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 24
  %i.mv = load ptr, ptr %i.mu, align 8
  invoke void %i.mv(ptr noundef nonnull align 8 dereferenceable(8) %i.mr, ptr noundef %i.ms)
          to label %_ZN4ncnn3MatD2Ev.exit467 unwind label %bb.cu, !inline_history !0

bb.cs:                                            ; preds = %bb.cq
  %.not.i665 = icmp eq ptr %i.ms, null
  br i1 %.not.i665, label %_ZN4ncnn3MatD2Ev.exit467, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @free(ptr noundef nonnull %i.ms) #28
  br label %_ZN4ncnn3MatD2Ev.exit467

bb.cu:                                            ; preds = %bb.cr
  %i.mw = landingpad { ptr, i32 }
          catch ptr null
  %i.mx = extractvalue { ptr, i32 } %i.mw, 0
  call void @__clang_call_terminate(ptr %i.mx) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit467:                         ; preds = %bb.cp, %bb.co, %bb.cr, %bb.cs, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.my = load ptr, ptr %7, align 8, !tbaa !69    ; 2 uses
  %i.mz = icmp eq ptr %i.my, null
  br i1 %i.mz, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %_ZN4ncnn3MatD2Ev.exit467
  %i.na = load i64, ptr %i.bu, align 8, !tbaa !70
  %i.nb = load i32, ptr %i.bv, align 8, !tbaa !101
  %i.nc = sext i32 %i.nb to i64
  %i.nd = mul i64 %i.na, %i.nc
  %i.ne = icmp eq i64 %i.nd, 0
  br i1 %i.ne, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.cv

bb.cv:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.nf = load i32, ptr %i.k, align 4, !tbaa !82  ; 2 uses
  %i.ng = icmp sgt i32 %i.nf, 0
  br i1 %i.ng, label %.lr.ph1368, label %_ZNK4ncnn3Mat5emptyEv.exit.thread

.lr.ph1368:                                       ; preds = %bb.cv
  %i.nh = load i32, ptr %i.bw, align 4, !tbaa !105
  %i.ni = sdiv i32 %i.nh, %i.nf                   ; 2 uses
  %i.nj = icmp eq i32 %i.ni, 5
  %i.nk = sext i32 %i.ni to i64
  br label %bb.dd

bb.cw:                                            ; preds = %bb.cn
  %i.nl = landingpad { ptr, i32 }
          cleanup
  %i.nm = load ptr, ptr %i.br, align 8, !tbaa !67 ; 2 uses
  %.not.i468 = icmp eq ptr %i.nm, null
  br i1 %.not.i468, label %_ZN4ncnn3MatD2Ev.exit466, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.nn = atomicrmw add ptr %i.nm, i32 -1 acq_rel, align 4
  %i.no = icmp eq i32 %i.nn, 1
  br i1 %i.no, label %bb.cy, label %_ZN4ncnn3MatD2Ev.exit466

bb.cy:                                            ; preds = %bb.cx
  %i.np = load ptr, ptr %i.bs, align 8, !tbaa !68 ; 3 uses
  %.not3.i469 = icmp eq ptr %i.np, null
  %i.nq = load ptr, ptr %8, align 8, !tbaa !69    ; 3 uses
  br i1 %.not3.i469, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.nr = load ptr, ptr %i.np, align 8, !tbaa !17
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 24
  %i.nt = load ptr, ptr %i.ns, align 8
  invoke void %i.nt(ptr noundef nonnull align 8 dereferenceable(8) %i.np, ptr noundef %i.nq)
          to label %_ZN4ncnn3MatD2Ev.exit466 unwind label %bb.dc, !inline_history !0

bb.da:                                            ; preds = %bb.cy
  %.not.i663 = icmp eq ptr %i.nq, null
  br i1 %.not.i663, label %_ZN4ncnn3MatD2Ev.exit466, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @free(ptr noundef nonnull %i.nq) #28
  br label %_ZN4ncnn3MatD2Ev.exit466

bb.dc:                                            ; preds = %bb.cz
  %i.nu = landingpad { ptr, i32 }
          catch ptr null
  %i.nv = extractvalue { ptr, i32 } %i.nu, 0
  call void @__clang_call_terminate(ptr %i.nv) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit466:                         ; preds = %bb.cx, %bb.cw, %bb.cz, %bb.da, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZN4ncnn3MatD2Ev.exit

bb.dd:                                            ; preds = %.lr.ph1368, %bb.ee
  %indvars.iv1447 = phi i64 [ 0, %.lr.ph1368 ], [ %indvars.iv.next1448, %bb.ee ] ; 2 uses
  %.02661365 = phi ptr [ %i.my, %.lr.ph1368 ], [ %i.se, %bb.ee ] ; 13 uses
  %i.nw = load ptr, ptr %i.ao, align 8, !tbaa !24
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  %i.ny = load ptr, ptr %i.jp, align 8, !tbaa !81
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %indvars.iv1447
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !82
  %i.ob = sext i32 %i.oa to i64
  %i.oc = load ptr, ptr %i.nx, align 8, !tbaa !64
  %i.od = getelementptr inbounds nuw [112 x i8], ptr %i.oc, i64 %i.ob ; 22 uses
  %i.oe = load i32, ptr %.02661365, align 4, !tbaa !82 ; 2 uses
  switch i32 %i.oe, label %bb.ee [
    i32 1, label %bb.de
    i32 2, label %bb.dj
    i32 3, label %bb.do
    i32 4, label %bb.dz
  ]

bb.de:                                            ; preds = %bb.dd
  %i.of = getelementptr inbounds nuw i8, ptr %.02661365, i64 4
  %i.og = load i32, ptr %i.of, align 4, !tbaa !82 ; 6 uses
  %i.oh = sext i32 %i.og to i64
  %i.oi = add nsw i64 %i.oh, 3
  %i.oj = and i64 %i.oi, 4611686018427387900      ; 5 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.od, i64 40 ; 6 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.od, i64 48
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !67 ; 2 uses
  %.not.i.i790 = icmp eq ptr %i.om, null
  br i1 %.not.i.i790, label %.sink.split, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.on = atomicrmw add ptr %i.om, i32 -1 acq_rel, align 4
  %i.oo = icmp eq i32 %i.on, 1
  br i1 %i.oo, label %bb.dg, label %.sink.split

bb.dg:                                            ; preds = %bb.df
  %i.op = getelementptr inbounds nuw i8, ptr %i.od, i64 72
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !68 ; 3 uses
  %.not3.i.i792 = icmp eq ptr %i.oq, null
  %i.or = load ptr, ptr %i.ok, align 8, !tbaa !69 ; 3 uses
  br i1 %.not3.i.i792, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.os = load ptr, ptr %i.oq, align 8, !tbaa !17
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 24
  %i.ou = load ptr, ptr %i.ot, align 8
  invoke void %i.ou(ptr noundef nonnull align 8 dereferenceable(8) %i.oq, ptr noundef %i.or)
          to label %.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2

bb.di:                                            ; preds = %bb.dg
  %.not.i18.i793 = icmp eq ptr %i.or, null
  br i1 %.not.i18.i793, label %.sink.split, label %.sink.split.sink.split

bb.dj:                                            ; preds = %bb.dd
  %i.ov = getelementptr inbounds nuw i8, ptr %.02661365, i64 4
end_hunk_0
