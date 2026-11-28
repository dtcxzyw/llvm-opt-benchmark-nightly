Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/sysinfo?download=true
inline.NumInlined: 626
inline.NumDeleted: 265
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN9benchmark7CPUInfoC2Ev:bb.a
  %i.uw = icmp ugt i64 %spec.select.i.i.i.i.i.i, 15
  br i1 %i.uw, label %.noexc10.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc10.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i8
  %i.ux = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc57.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc57.i.i:                                     ; preds = %.noexc10.i.i.i.i.i
  store ptr %i.ux, ptr %1, align 8, !tbaa !25, !alias.scope !111, !noalias !108
  %i.uy = load i64, ptr %i.d, align 8, !tbaa !27, !noalias !112
  store i64 %i.uy, ptr %i.qw, align 8, !tbaa !24, !alias.scope !111, !noalias !108
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc57.i.i, %.lr.ph.i.i.i8
  %i.uz = phi ptr [ %i.ux, %.noexc57.i.i ], [ %i.qw, %.lr.ph.i.i.i8 ] ; 2 uses
  switch i64 %spec.select.i.i.i.i.i.i, label %bb.eo [
    i64 1, label %bb.en
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i.i.i
  ]

bb.en:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.va = load i8, ptr %i.uv, align 1, !tbaa !24
  store i8 %i.va, ptr %i.uz, align 1, !tbaa !24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i.i.i

bb.eo:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.uz, ptr align 1 %i.uv, i64 %spec.select.i.i.i.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i.i.i: ; preds = %bb.eo, %bb.en, %._crit_edge.i.i.i.i.i.i
  %i.vb = load i64, ptr %i.d, align 8, !tbaa !27, !noalias !112 ; 2 uses
  store i64 %i.vb, ptr %i.qx, align 8, !tbaa !23, !alias.scope !111, !noalias !108
  %i.vc = load ptr, ptr %1, align 8, !tbaa !25, !alias.scope !111, !noalias !108
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 %i.vb
  store i8 0, ptr %i.vd, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22, !noalias !112
  %i.ve = invoke fastcc noundef i32 @"_ZZN9benchmark12_GLOBAL__N_120CountSetBitsInCPUMapENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clES6_"(ptr noundef align 8 %1)
          to label %bb.ep unwind label %bb.ey

bb.ep:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i.i.i
  %i.vf = add nuw nsw i32 %i.ve, %.0735.i.i.i     ; 2 uses
  %i.vg = load ptr, ptr %1, align 8, !tbaa !25, !noalias !108 ; 2 uses
  %i.vh = icmp eq ptr %i.vg, %i.qw
  br i1 %i.vh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ep
  %i.vi = load i64, ptr %i.qw, align 8, !tbaa !24, !noalias !108
  %i.vj = add i64 %i.vi, 1
  call void @_ZdlPvm(ptr noundef %i.vg, i64 noundef %i.vj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !108
  %i.vk = add nuw i64 %i.ut, 1                    ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.vl = load i64, ptr %i.qv, align 8, !tbaa !23, !noalias !114 ; 3 uses
  %.not26.i.i.i = icmp ult i64 %i.ut, %i.vl
  br i1 %.not26.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i, label %bb.eq

bb.eq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.17, i64 noundef %i.vk, i64 noundef %i.vl) #26
          to label %.noexc58.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !113

.noexc58.i.i:                                     ; preds = %bb.eq
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  store ptr %i.qy, ptr %2, align 8, !tbaa !20, !alias.scope !113, !noalias !108
  %i.vm = load ptr, ptr %15, align 8, !tbaa !25, !noalias !114
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 %i.vk ; 2 uses
  %i.vo = sub nuw i64 %i.vl, %i.vk                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22, !noalias !114
  store i64 %i.vo, ptr %i.c, align 8, !tbaa !27, !noalias !114
  %i.vp = icmp ugt i64 %i.vo, 15
  br i1 %i.vp, label %.noexc10.i.i12.i.i.i, label %._crit_edge.i.i.i11.i.i.i

.noexc10.i.i12.i.i.i:                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i
  %i.vq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc59.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc59.i.i:                                     ; preds = %.noexc10.i.i12.i.i.i
  store ptr %i.vq, ptr %2, align 8, !tbaa !25, !alias.scope !113, !noalias !108
  %i.vr = load i64, ptr %i.c, align 8, !tbaa !27, !noalias !114
  store i64 %i.vr, ptr %i.qy, align 8, !tbaa !24, !alias.scope !113, !noalias !108
  br label %._crit_edge.i.i.i11.i.i.i

._crit_edge.i.i.i11.i.i.i:                        ; preds = %.noexc59.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i
  %i.vs = phi ptr [ %i.vq, %.noexc59.i.i ], [ %i.qy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i ] ; 2 uses
  switch i64 %i.vo, label %bb.es [
    i64 1, label %bb.er
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit13.i.i.i
  ]

bb.er:                                            ; preds = %._crit_edge.i.i.i11.i.i.i
  %i.vt = load i8, ptr %i.vn, align 1, !tbaa !24
  store i8 %i.vt, ptr %i.vs, align 1, !tbaa !24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit13.i.i.i

bb.es:                                            ; preds = %._crit_edge.i.i.i11.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vs, ptr nonnull align 1 %i.vn, i64 %i.vo, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit13.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit13.i.i.i: ; preds = %bb.es, %bb.er, %._crit_edge.i.i.i11.i.i.i
  %i.vu = load i64, ptr %i.c, align 8, !tbaa !27, !noalias !114 ; 2 uses
  store i64 %i.vu, ptr %i.qz, align 8, !tbaa !23, !alias.scope !113, !noalias !108
  %i.vv = load ptr, ptr %2, align 8, !tbaa !25, !alias.scope !113, !noalias !108
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 %i.vu
  store i8 0, ptr %i.vw, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22, !noalias !114
  %i.vx = load ptr, ptr %15, align 8, !tbaa !25, !noalias !108 ; 6 uses
  %i.vy = icmp eq ptr %i.vx, %i.qu
  %i.vz = load ptr, ptr %2, align 8, !tbaa !25, !noalias !108 ; 5 uses
  %i.wa = icmp eq ptr %i.vz, %i.qy                ; 2 uses
  br i1 %i.vy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i54.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit13.i.i.i
  br i1 %i.wa, label %bb.et, label %.thread.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i54.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit13.i.i.i
  br i1 %i.wa, label %bb.et, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i

bb.et:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i54.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i.i
  %i.wb = load i64, ptr %i.qz, align 8, !tbaa !23, !noalias !108 ; 3 uses
  %i.wc = icmp ult i64 %i.wb, 16
  call void @llvm.assume(i1 %i.wc)
  switch i64 %i.wb, label %bb.ev [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i
    i64 1, label %bb.eu
  ]

bb.eu:                                            ; preds = %bb.et
  %i.wd = load i8, ptr %i.vz, align 1, !tbaa !24
  store i8 %i.wd, ptr %i.vx, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i

bb.ev:                                            ; preds = %bb.et
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vx, ptr align 1 %i.vz, i64 %i.wb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i: ; preds = %bb.ev, %bb.eu, %bb.et
  %i.we = load i64, ptr %i.qz, align 8, !tbaa !23, !noalias !108 ; 2 uses
  store i64 %i.we, ptr %i.qv, align 8, !tbaa !23, !noalias !108
  %i.wf = load ptr, ptr %15, align 8, !tbaa !25, !noalias !108
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 %i.we
  store i8 0, ptr %i.wg, align 1, !tbaa !24
  %.pre.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !25, !noalias !108
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i

.thread.i.i.i.i:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i.i
  store ptr %i.vz, ptr %15, align 8, !tbaa !25, !noalias !108
  %i.wh = load <2 x i64>, ptr %i.qz, align 8, !tbaa !24, !noalias !108
  store <2 x i64> %i.wh, ptr %i.qv, align 8, !tbaa !24, !noalias !108
  br label %bb.ex

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i54.i.i
  %i.wi = load i64, ptr %i.qu, align 8, !tbaa !24, !noalias !108
  store ptr %i.vz, ptr %15, align 8, !tbaa !25, !noalias !108
  %i.wj = load <2 x i64>, ptr %i.qz, align 8, !tbaa !24, !noalias !108
  store <2 x i64> %i.wj, ptr %i.qv, align 8, !tbaa !24, !noalias !108
  %.not.i.i.i.i9 = icmp eq ptr %i.vx, null
  br i1 %.not.i.i.i.i9, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i
  store ptr %i.vx, ptr %2, align 8, !tbaa !25, !noalias !108
  store i64 %i.wi, ptr %i.qy, align 8, !tbaa !24, !noalias !108
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i

bb.ex:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i, %.thread.i.i.i.i
  store ptr %i.qy, ptr %2, align 8, !tbaa !25, !noalias !108
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i: ; preds = %bb.ex, %bb.ew, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i
  %i.wk = phi ptr [ %.pre.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i ], [ %i.vx, %bb.ew ], [ %i.qy, %bb.ex ]
  store i64 0, ptr %i.qz, align 8, !tbaa !23, !noalias !108
  store i8 0, ptr %i.wk, align 1, !tbaa !24
  %i.wl = load ptr, ptr %2, align 8, !tbaa !25, !noalias !108 ; 2 uses
  %i.wm = icmp eq ptr %i.wl, %i.qy
  br i1 %i.wm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i
  %i.wn = load i64, ptr %i.qy, align 8, !tbaa !24, !noalias !108
  %i.wo = add i64 %i.wn, 1
  call void @_ZdlPvm(ptr noundef %i.wl, i64 noundef %i.wo) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !108
  %i.wp = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i8 noundef signext 44, i64 noundef 0) #22 ; 2 uses
  %.not.i55.i.i = icmp eq i64 %i.wp, -1
  br i1 %.not.i55.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i8, !llvm.loop !69

bb.ey:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i.i.i
  %i.wq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wr = load ptr, ptr %1, align 8, !tbaa !25, !noalias !108 ; 2 uses
  %i.ws = icmp eq ptr %i.wr, %i.qw
  br i1 %i.ws, label %.body61.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i.i.i: ; preds = %bb.ey
  %i.wt = load i64, ptr %i.qw, align 8, !tbaa !24, !noalias !108
  %32 = add i64 %i.wt, 1
  call void @_ZdlPvm(ptr noundef %i.wr, i64 noundef %32) #24
  br label %.body61.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i.i, %bb.em
  %.07.lcssa.i.i.i = phi i32 [ 0, %bb.em ], [ %i.vf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i.i ] ; 2 uses
  %i.wu = load i64, ptr %i.qv, align 8, !tbaa !23, !noalias !108 ; 5 uses
  %i.wv = icmp eq i64 %i.wu, 0
  br i1 %i.wv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i21.i.i.i, label %bb.ez

bb.ez:                                            ; preds = %._crit_edge.i.i.i
  store ptr %i.ra, ptr %3, align 8, !tbaa !20, !noalias !108
  %i.ww = load ptr, ptr %15, align 8, !tbaa !25, !noalias !108 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22, !noalias !108
  store i64 %i.wu, ptr %i.b, align 8, !tbaa !27, !noalias !108
  %i.wx = icmp ugt i64 %i.wu, 15
  br i1 %i.wx, label %._crit_edge.i.i.thread.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.thread.i.i.i:                     ; preds = %bb.ez
  %i.wy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc60.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc60.i.i:                                     ; preds = %._crit_edge.i.i.thread.i.i.i
  store ptr %i.wy, ptr %3, align 8, !tbaa !25, !noalias !108
  %i.wz = load i64, ptr %i.b, align 8, !tbaa !27, !noalias !108
  store i64 %i.wz, ptr %i.ra, align 8, !tbaa !24, !noalias !108
  br label %bb.fb

._crit_edge.i.i.i.i.i:                            ; preds = %bb.ez
  %cond.i.i.i = icmp eq i64 %i.wu, 1
  br i1 %cond.i.i.i, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.xa = load i8, ptr %i.ww, align 1, !tbaa !24
  store i8 %i.xa, ptr %i.ra, align 8, !tbaa !24, !noalias !108
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i

bb.fb:                                            ; preds = %._crit_edge.i.i.i.i.i, %.noexc60.i.i
  %i.xb = phi ptr [ %i.wy, %.noexc60.i.i ], [ %i.ra, %._crit_edge.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xb, ptr align 1 %i.ww, i64 %i.wu, i1 false)
  %.pre253.i.i = load i64, ptr %i.b, align 8, !tbaa !27, !noalias !108
  %.pre254.i.i = load ptr, ptr %3, align 8, !tbaa !25, !noalias !108
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i: ; preds = %bb.fb, %bb.fa
  %i.xc = phi ptr [ %.pre254.i.i, %bb.fb ], [ %i.ra, %bb.fa ]
  %i.xd = phi i64 [ %.pre253.i.i, %bb.fb ], [ 1, %bb.fa ] ; 2 uses
  store i64 %i.xd, ptr %i.rb, align 8, !tbaa !23, !noalias !108
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xc, i64 %i.xd
  store i8 0, ptr %i.xe, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22, !noalias !108
  %i.xf = invoke fastcc noundef i32 @"_ZZN9benchmark12_GLOBAL__N_120CountSetBitsInCPUMapENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clES6_"(ptr noundef align 8 %3)
          to label %bb.fc unwind label %bb.fd

bb.fc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i
  %i.xg = add nuw nsw i32 %i.xf, %.07.lcssa.i.i.i ; 2 uses
  %i.xh = load ptr, ptr %3, align 8, !tbaa !25, !noalias !108 ; 2 uses
  %i.xi = icmp eq ptr %i.xh, %i.ra
  br i1 %i.xi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i21.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20.i.i.i: ; preds = %bb.fc
  %i.xj = load i64, ptr %i.ra, align 8, !tbaa !24, !noalias !108
  %i.xk = add i64 %i.xj, 1
  call void @_ZdlPvm(ptr noundef %i.xh, i64 noundef %i.xk) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i21.i.i.i

bb.fd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i
  %i.xl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xm = load ptr, ptr %3, align 8, !tbaa !25, !noalias !108 ; 2 uses
  %i.xn = icmp eq ptr %i.xm, %i.ra
  br i1 %i.xn, label %.body61.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.i.i: ; preds = %bb.fd
  %i.xo = load i64, ptr %i.ra, align 8, !tbaa !24, !noalias !108
  %33 = add i64 %i.xo, 1
  call void @_ZdlPvm(ptr noundef %i.xm, i64 noundef %33) #24
  br label %.body61.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i21.i.i.i: ; preds = %bb.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20.i.i.i, %._crit_edge.i.i.i
  %.1.i.i.i = phi i32 [ %.07.lcssa.i.i.i, %._crit_edge.i.i.i ], [ %i.xg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20.i.i.i ], [ %i.xg, %bb.fc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !108
  store i32 %.1.i.i.i, ptr %i.rc, align 8, !tbaa !115, !noalias !108
  %i.xp = load ptr, ptr %15, align 8, !tbaa !25, !noalias !108 ; 2 uses
  %i.xq = icmp eq ptr %i.xp, %i.qu
  br i1 %i.xq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i21.i.i.i
  %i.xr = load i64, ptr %i.qu, align 8, !tbaa !24, !noalias !108
  %i.xs = add i64 %i.xr, 1
  call void @_ZdlPvm(ptr noundef %i.xp, i64 noundef %i.xs) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i21.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i.i
  %i.xt = load ptr, ptr %i.rd, align 8, !tbaa !39, !alias.scope !108 ; 9 uses
  %i.xu = load ptr, ptr %i.re, align 8, !tbaa !40, !alias.scope !108
  %.not.i66.i.i = icmp eq ptr %i.xt, %i.xu
  br i1 %.not.i66.i.i, label %bb.fh, label %bb.fe

bb.fe:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i.i
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xt, i64 16 ; 3 uses
  store ptr %i.xv, ptr %i.xt, align 8, !tbaa !20
  %i.xw = load ptr, ptr %6, align 8, !tbaa !25, !noalias !108 ; 2 uses
  %i.xx = load i64, ptr %i.qh, align 8, !tbaa !23, !noalias !108 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !108
  store i64 %i.xx, ptr %i.a, align 8, !tbaa !27, !noalias !108
  %i.xy = icmp ugt i64 %i.xx, 15
  br i1 %i.xy, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i67.i.i

.noexc.i.i.i.i.i:                                 ; preds = %bb.fe
  %i.xz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(44) %i.xt, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc68.i.i unwind label %.loopexit.split-lp111.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc68.i.i:                                     ; preds = %.noexc.i.i.i.i.i
  store ptr %i.xz, ptr %i.xt, align 8, !tbaa !25
  %i.ya = load i64, ptr %i.a, align 8, !tbaa !27, !noalias !108
  store i64 %i.ya, ptr %i.xv, align 8, !tbaa !24
  br label %._crit_edge.i.i.i.i67.i.i

._crit_edge.i.i.i.i67.i.i:                        ; preds = %.noexc68.i.i, %bb.fe
  %i.yb = phi ptr [ %i.xz, %.noexc68.i.i ], [ %i.xv, %bb.fe ] ; 2 uses
  switch i64 %i.xx, label %bb.fg [
    i64 1, label %bb.ff
    i64 0, label %_ZN9benchmark7CPUInfo9CacheInfoC2ERKS1_.exit.i.i.i
  ]

bb.ff:                                            ; preds = %._crit_edge.i.i.i.i67.i.i
  %i.yc = load i8, ptr %i.xw, align 1, !tbaa !24
  store i8 %i.yc, ptr %i.yb, align 1, !tbaa !24
  br label %_ZN9benchmark7CPUInfo9CacheInfoC2ERKS1_.exit.i.i.i

bb.fg:                                            ; preds = %._crit_edge.i.i.i.i67.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yb, ptr align 1 %i.xw, i64 %i.xx, i1 false)
  br label %_ZN9benchmark7CPUInfo9CacheInfoC2ERKS1_.exit.i.i.i

_ZN9benchmark7CPUInfo9CacheInfoC2ERKS1_.exit.i.i.i: ; preds = %bb.fg, %bb.ff, %._crit_edge.i.i.i.i67.i.i
  %i.yd = load i64, ptr %i.a, align 8, !tbaa !27, !noalias !108 ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xt, i64 8
  store i64 %i.yd, ptr %i.ye, align 8, !tbaa !23
  %i.yf = load ptr, ptr %i.xt, align 8, !tbaa !25
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.yd
  store i8 0, ptr %i.yg, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !108
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xt, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.yh, ptr noundef nonnull align 8 dereferenceable(12) %i.qo, i64 12, i1 false)
  %i.yi = load ptr, ptr %i.rd, align 8, !tbaa !39, !alias.scope !108
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 48
  store ptr %i.yj, ptr %i.rd, align 8, !tbaa !39, !alias.scope !108
  br label %_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE9push_backERKS2_.exit.i.i

bb.fh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i.i
  invoke void @_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.qa, ptr %i.xt, ptr noundef nonnull align 8 dereferenceable(44) %6)
          to label %_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE9push_backERKS2_.exit.i.i unwind label %.loopexit.split-lp111.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE9push_backERKS2_.exit.i.i: ; preds = %bb.fh, %_ZN9benchmark7CPUInfo9CacheInfoC2ERKS1_.exit.i.i.i
  %i.yk = load ptr, ptr %13, align 8, !tbaa !25, !noalias !108 ; 2 uses
  %i.yl = icmp eq ptr %i.yk, %i.qr
  br i1 %i.yl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i.i: ; preds = %_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE9push_backERKS2_.exit.i.i
  %i.ym = load i64, ptr %i.qr, align 8, !tbaa !24, !noalias !108
  %i.yn = add i64 %i.ym, 1
  call void @_ZdlPvm(ptr noundef %i.yk, i64 noundef %i.yn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i: ; preds = %_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE9push_backERKS2_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22, !noalias !108
  %i.yo = load ptr, ptr %10, align 8, !tbaa !25, !noalias !108 ; 2 uses
  %i.yp = icmp eq ptr %i.yo, %i.qk
  br i1 %i.yp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i
  %i.yq = load i64, ptr %i.qk, align 8, !tbaa !24, !noalias !108
  %i.yr = add i64 %i.yq, 1
  call void @_ZdlPvm(ptr noundef %i.yo, i64 noundef %i.yr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22, !noalias !108
  br label %bb.fi

bb.fi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !108
  %i.ys = load ptr, ptr %7, align 8, !tbaa !25, !noalias !108 ; 2 uses
  %i.yt = icmp eq ptr %i.ys, %i.rf
  br i1 %i.yt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76.i.i: ; preds = %bb.fi
  %i.yu = load i64, ptr %i.rf, align 8, !tbaa !24, !noalias !108
  %i.yv = add i64 %i.yu, 1
  call void @_ZdlPvm(ptr noundef %i.ys, i64 noundef %i.yv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i.i: ; preds = %bb.fi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !108
  %i.yw = load ptr, ptr %6, align 8, !tbaa !25, !noalias !108 ; 2 uses
  %i.yx = icmp eq ptr %i.yw, %i.qg
  br i1 %i.yx, label %_ZN9benchmark7CPUInfo9CacheInfoD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i.i
  %i.yy = load i64, ptr %i.qg, align 8, !tbaa !24, !noalias !108
  %i.yz = add i64 %i.yy, 1
  call void @_ZdlPvm(ptr noundef %i.yw, i64 noundef %i.yz) #24
  br label %_ZN9benchmark7CPUInfo9CacheInfoD2Ev.exit.i.i

_ZN9benchmark7CPUInfo9CacheInfoD2Ev.exit.i.i:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !108
  br i1 %i.rm, label %bb.cr, label %bb.fk

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc10.i.i12.i.i.i, %.noexc10.i.i.i.i.i, %._crit_edge.i.i.thread.i.i.i, %bb.eq
  %lpad.loopexit.split-lp284 = landingpad { ptr, i32 }
          cleanup
  br label %.body61.i.i

.body61.i.i:                                      ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fd, %bb.ey, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i.i.i
  %eh.lpad-body62.i.i = phi { ptr, i32 } [ %i.xl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.i.i ], [ %i.wq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i.i.i ], [ %i.xl, %bb.fd ], [ %i.wq, %bb.ey ], [ %lpad.loopexit.split-lp284, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.za = load ptr, ptr %15, align 8, !tbaa !25, !noalias !108 ; 2 uses
  %i.zb = icmp eq ptr %i.za, %i.qu
  br i1 %i.zb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i.i: ; preds = %.body61.i.i
  %i.zc = load i64, ptr %i.qu, align 8, !tbaa !24, !noalias !108
  %i.zd = add i64 %i.zc, 1
  call void @_ZdlPvm(ptr noundef %i.za, i64 noundef %i.zd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i.i: ; preds = %.body61.i.i, %.loopexit.split-lp111.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i.i
  %.pn22.i.i = phi { ptr, i32 } [ %eh.lpad-body62.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i.i ], [ %.pn20.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i.i ], [ %lpad.loopexit.split-lp281, %.loopexit.split-lp111.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %eh.lpad-body62.i.i, %.body61.i.i ]
  %i.ze = load ptr, ptr %13, align 8, !tbaa !25, !noalias !108 ; 2 uses
  %i.zf = icmp eq ptr %i.ze, %i.qr
  br i1 %i.zf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i.i
  %i.zg = load i64, ptr %i.qr, align 8, !tbaa !24, !noalias !108
  %i.zh = add i64 %i.zg, 1
  call void @_ZdlPvm(ptr noundef %i.ze, i64 noundef %i.zh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22, !noalias !108
  br label %.loopexit.split-lp106.i.loopexit.split-lp.i

.loopexit.split-lp106.i.loopexit.split-lp.i:      ; preds = %.loopexit.split-lp106.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i.i
  %.pn24.i.i = phi { ptr, i32 } [ %.pn16.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i.i ], [ %.pn22.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i.i ], [ %.pn18.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i.i ], [ %lpad.loopexit.split-lp278, %.loopexit.split-lp106.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.zi = load ptr, ptr %10, align 8, !tbaa !25, !noalias !108 ; 2 uses
  %i.zj = icmp eq ptr %i.zi, %i.qk
  br i1 %i.zj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88.i.i: ; preds = %.loopexit.split-lp106.i.loopexit.split-lp.i
  %i.zk = load i64, ptr %i.qk, align 8, !tbaa !24, !noalias !108
  %i.zl = add i64 %i.zk, 1
  call void @_ZdlPvm(ptr noundef %i.zi, i64 noundef %i.zl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i.i: ; preds = %.loopexit.split-lp106.i.loopexit.split-lp.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22, !noalias !108
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %8) #22
  br label %bb.fj

bb.fj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i.i
  %.pn24.pn.i.i = phi { ptr, i32 } [ %.pn24.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i.i ], [ %.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !108
  %i.zm = load ptr, ptr %7, align 8, !tbaa !25, !noalias !108 ; 2 uses
  %i.zn = icmp eq ptr %i.zm, %i.rf
  br i1 %i.zn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91.i.i: ; preds = %bb.fj
  %i.zo = load i64, ptr %i.rf, align 8, !tbaa !24, !noalias !108
  %i.zp = add i64 %i.zo, 1
  call void @_ZdlPvm(ptr noundef %i.zm, i64 noundef %i.zp) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.i.i: ; preds = %bb.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91.i.i, %bb.cw
  %.pn24.pn.pn.i.i = phi { ptr, i32 } [ %i.ro, %bb.cw ], [ %.pn24.pn.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91.i.i ], [ %.pn24.pn.i.i, %bb.fj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !108
  %i.zq = load ptr, ptr %6, align 8, !tbaa !25, !noalias !108 ; 2 uses
  %i.zr = icmp eq ptr %i.zq, %i.qg
  br i1 %i.zr, label %_ZN9benchmark7CPUInfo9CacheInfoD2Ev.exit97.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i94.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i94.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.i.i
  %i.zs = load i64, ptr %i.qg, align 8, !tbaa !24, !noalias !108
  %i.zt = add i64 %i.zs, 1
  call void @_ZdlPvm(ptr noundef %i.zq, i64 noundef %i.zt) #24
  br label %_ZN9benchmark7CPUInfo9CacheInfoD2Ev.exit97.i.i

_ZN9benchmark7CPUInfo9CacheInfoD2Ev.exit97.i.i:   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i94.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !108
  %i.zu = load ptr, ptr %5, align 8, !tbaa !25, !noalias !108 ; 2 uses
  %i.zv = icmp eq ptr %i.zu, %i.qb
  br i1 %i.zv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98.i.i: ; preds = %_ZN9benchmark7CPUInfo9CacheInfoD2Ev.exit97.i.i
  %i.zw = load i64, ptr %i.qb, align 8, !tbaa !24, !noalias !108
  %i.zx = add i64 %i.zw, 1
  call void @_ZdlPvm(ptr noundef %i.zu, i64 noundef %i.zx) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.i.i

bb.fk:                                            ; preds = %_ZN9benchmark7CPUInfo9CacheInfoD2Ev.exit.i.i
  %i.zy = load ptr, ptr %5, align 8, !tbaa !25, !noalias !108 ; 2 uses
  %i.zz = icmp eq ptr %i.zy, %i.qb
  br i1 %i.zz, label %_ZN9benchmark12_GLOBAL__N_113GetCacheSizesEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101.i.i: ; preds = %bb.fk
  %i.aaa = load i64, ptr %i.qb, align 8, !tbaa !24, !noalias !108
  %i.aab = add i64 %i.aaa, 1
  call void @_ZdlPvm(ptr noundef %i.zy, i64 noundef %i.aab) #24
  br label %_ZN9benchmark12_GLOBAL__N_113GetCacheSizesEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.i.i: ; preds = %_ZN9benchmark7CPUInfo9CacheInfoD2Ev.exit97.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98.i.i, %bb.cv
  %.pn24.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.rn, %bb.cv ], [ %.pn24.pn.pn.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98.i.i ], [ %.pn24.pn.pn.i.i, %_ZN9benchmark7CPUInfo9CacheInfoD2Ev.exit97.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !108
  call void @_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.qa) #22
  br label %common.resume

_ZN9benchmark12_GLOBAL__N_113GetCacheSizesEv.exit: ; preds = %bb.fk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %15), !noalias !106
  %i.aac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.aad = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23
          to label %.noexc unwind label %bb.fq, !noalias !116 ; 6 uses

.noexc:                                           ; preds = %_ZN9benchmark12_GLOBAL__N_113GetCacheSizesEv.exit
  store ptr %i.aad, ptr %i.aac, align 8, !tbaa !41, !alias.scope !116
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 24 ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.aae, ptr %i.aaf, align 8, !tbaa !42, !alias.scope !116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aad, i8 0, i64 24, i1 false), !tbaa !43, !noalias !116
  %i.aag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.aae, ptr %i.aag, align 8, !tbaa !44, !alias.scope !116
  %i.aah = call i32 @getloadavg(ptr noundef nonnull %i.aad, i32 noundef 3) #22, !noalias !116 ; 4 uses
  %i.aai = icmp slt i32 %i.aah, 1
  br i1 %i.aai, label %_ZNSt6vectorIdSaIdEE5clearEv.exit.sink.split.i, label %bb.fl

bb.fl:                                            ; preds = %.noexc
  %i.aaj = zext nneg i32 %i.aah to i64            ; 2 uses
  %i.aak = icmp samesign ugt i32 %i.aah, 3
  br i1 %i.aak, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.aal = add nsw i64 %i.aaj, -3
  invoke void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aac, i64 noundef %i.aal)
          to label %_ZN9benchmark12_GLOBAL__N_110GetLoadAvgEv.exit unwind label %bb.fo

bb.fn:                                            ; preds = %bb.fl
  %.not.i11 = icmp eq i32 %i.aah, 3
  br i1 %.not.i11, label %_ZN9benchmark12_GLOBAL__N_110GetLoadAvgEv.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i8.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i8.i:     ; preds = %bb.fn
  %.idx.i = shl nuw nsw i64 %i.aaj, 3
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aad, i64 %.idx.i
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit.sink.split.i

bb.fo:                                            ; preds = %bb.fm
  %i.aan = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aao = load ptr, ptr %i.aac, align 8, !tbaa !41, !alias.scope !116 ; 3 uses
  %.not.i.i.i.i12 = icmp eq ptr %i.aao, null
  br i1 %.not.i.i.i.i12, label %.body, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.aap = load ptr, ptr %i.aaf, align 8, !tbaa !42, !alias.scope !116
  %i.aaq = ptrtoint ptr %i.aap to i64
  %i.aar = ptrtoint ptr %i.aao to i64
  %i.aas = sub i64 %i.aaq, %i.aar
  call void @_ZdlPvm(ptr noundef nonnull %i.aao, i64 noundef %i.aas) #24
  br label %.body

_ZNSt6vectorIdSaIdEE5clearEv.exit.sink.split.i:   ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i8.i, %.noexc
  %.sink.i = phi ptr [ %i.aam, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i8.i ], [ %i.aad, %.noexc ]
  store ptr %.sink.i, ptr %i.aag, align 8, !tbaa !44, !alias.scope !116
  br label %_ZN9benchmark12_GLOBAL__N_110GetLoadAvgEv.exit

_ZN9benchmark12_GLOBAL__N_110GetLoadAvgEv.exit:   ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.sink.split.i, %bb.fn, %bb.fm
  ret void

bb.fq:                                            ; preds = %_ZN9benchmark12_GLOBAL__N_113GetCacheSizesEv.exit
  %i.aat = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.fo, %bb.fp, %bb.fq
  %eh.lpad-body = phi { ptr, i32 } [ %i.aat, %bb.fq ], [ %i.aan, %bb.fp ], [ %i.aan, %bb.fo ]
  call void @_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.qa) #22
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN9benchmark7CPUInfo9CacheInfoES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN9benchmark7CPUInfo9CacheInfoEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN9benchmark7CPUInfo9CacheInfoEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !25 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyIN9benchmark7CPUInfo9CacheInfoEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !24
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #24
  br label %_ZSt8_DestroyIN9benchmark7CPUInfo9CacheInfoEEvPT_.exit.i.i

_ZSt8_DestroyIN9benchmark7CPUInfo9CacheInfoEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN9benchmark7CPUInfo9CacheInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !117

_ZSt8_DestroyIPN9benchmark7CPUInfo9CacheInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN9benchmark7CPUInfo9CacheInfoEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !45
end_hunk_0
