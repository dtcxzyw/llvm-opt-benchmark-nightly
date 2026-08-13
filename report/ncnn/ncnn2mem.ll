inline.NumInlined: 390
inline.NumDeleted: 160
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@main:bb.a

bb.ef:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i367.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i373.i
  %i.tf = load i64, ptr %i.ez, align 8, !tbaa !28 ; 3 uses
  %i.tg = icmp ult i64 %i.tf, 16
  call void @llvm.assume(i1 %i.tg)
  switch i64 %i.tf, label %bb.eh [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i371.i
    i64 1, label %bb.eg
  ]

bb.eg:                                            ; preds = %bb.ef
  %i.th = load i8, ptr %i.td, align 1, !tbaa !27
  store i8 %i.th, ptr %i.tb, align 1, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i371.i

bb.eh:                                            ; preds = %bb.ef
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tb, ptr align 1 %i.td, i64 %i.tf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i371.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i371.i: ; preds = %bb.eh, %bb.eg, %bb.ef
  %i.ti = load i64, ptr %i.ez, align 8, !tbaa !28 ; 2 uses
  store i64 %i.ti, ptr %i.em, align 8, !tbaa !28
  %i.tj = load ptr, ptr %10, align 8, !tbaa !15
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 %i.ti
  store i8 0, ptr %i.tk, align 1, !tbaa !27
  %.pre.i372.i = load ptr, ptr %15, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit375.i

.thread.i374.i:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i373.i
  store ptr %i.td, ptr %10, align 8, !tbaa !15
  %i.tl = load <2 x i64>, ptr %i.ez, align 8, !tbaa !27
  store <2 x i64> %i.tl, ptr %i.em, align 8, !tbaa !27
  br label %bb.ej

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i368.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i367.i
  %i.tm = load i64, ptr %i.el, align 8, !tbaa !27
  store ptr %i.td, ptr %10, align 8, !tbaa !15
  %i.tn = load <2 x i64>, ptr %i.ez, align 8, !tbaa !27
  store <2 x i64> %i.tn, ptr %i.em, align 8, !tbaa !27
  %.not.i369.i = icmp eq ptr %i.tb, null
  br i1 %.not.i369.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i368.i
  store ptr %i.tb, ptr %15, align 8, !tbaa !15
  store i64 %i.tm, ptr %i.ey, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit375.i

bb.ej:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i368.i, %.thread.i374.i
  store ptr %i.ey, ptr %15, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit375.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit375.i: ; preds = %bb.ej, %bb.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i371.i
  %i.to = phi ptr [ %i.tb, %bb.ei ], [ %i.ey, %bb.ej ], [ %.pre.i372.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i371.i ]
  store i64 0, ptr %i.ez, align 8, !tbaa !28
  store i8 0, ptr %i.to, align 1, !tbaa !27
  %i.tp = load ptr, ptr %15, align 8, !tbaa !15   ; 2 uses
  %i.tq = icmp eq ptr %i.tp, %i.ey
  br i1 %i.tq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit375.i
  call void @_ZdlPv(ptr noundef %i.tp) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit375.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.ev

bb.ek:                                            ; preds = %.noexc.i364.i
  %i.tr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.fb

bb.el:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store ptr %i.ew, ptr %16, align 8, !tbaa !25
  %i.ts = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.ts, ptr %i.b, align 8, !tbaa !26
  %i.tt = icmp ugt i64 %i.ts, 15
  br i1 %i.tt, label %.noexc.i380.i, label %._crit_edge.i.i379.i

.noexc.i380.i:                                    ; preds = %bb.el
  %i.tu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc381.i unwind label %bb.eu ; 2 uses

.noexc381.i:                                      ; preds = %.noexc.i380.i
  store ptr %i.tu, ptr %16, align 8, !tbaa !15
  %i.tv = load i64, ptr %i.b, align 8, !tbaa !26
  store i64 %i.tv, ptr %i.ew, align 8, !tbaa !27
  br label %._crit_edge.i.i379.i

._crit_edge.i.i379.i:                             ; preds = %.noexc381.i, %bb.el
  %i.tw = phi ptr [ %i.tu, %.noexc381.i ], [ %i.ew, %bb.el ] ; 2 uses
  switch i64 %i.ts, label %bb.en [
    i64 1, label %bb.em
    i64 0, label %bb.eo
  ]

bb.em:                                            ; preds = %._crit_edge.i.i379.i
  %i.tx = load i8, ptr %i.y, align 16, !tbaa !27
  store i8 %i.tx, ptr %i.tw, align 1, !tbaa !27
  br label %bb.eo

bb.en:                                            ; preds = %._crit_edge.i.i379.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tw, ptr nonnull align 16 %i.y, i64 %i.ts, i1 false)
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em, %._crit_edge.i.i379.i
  %i.ty = load i64, ptr %i.b, align 8, !tbaa !26  ; 2 uses
  store i64 %i.ty, ptr %i.ex, align 8, !tbaa !28
  %i.tz = load ptr, ptr %16, align 8, !tbaa !15
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 %i.ty
  store i8 0, ptr %i.ua, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.ub = load ptr, ptr %10, align 8, !tbaa !15   ; 6 uses
  %i.uc = icmp eq ptr %i.ub, %i.el
  %i.ud = load ptr, ptr %16, align 8, !tbaa !15   ; 5 uses
  %i.ue = icmp eq ptr %i.ud, %i.ew                ; 2 uses
  br i1 %i.uc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i389.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i383.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i389.i: ; preds = %bb.eo
  br i1 %i.ue, label %bb.ep, label %.thread.i390.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i383.i: ; preds = %bb.eo
  br i1 %i.ue, label %bb.ep, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i384.i

bb.ep:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i383.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i389.i
  %i.uf = load i64, ptr %i.ex, align 8, !tbaa !28 ; 3 uses
  %i.ug = icmp ult i64 %i.uf, 16
  call void @llvm.assume(i1 %i.ug)
  switch i64 %i.uf, label %bb.er [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i387.i
    i64 1, label %bb.eq
  ]

bb.eq:                                            ; preds = %bb.ep
  %i.uh = load i8, ptr %i.ud, align 1, !tbaa !27
  store i8 %i.uh, ptr %i.ub, align 1, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i387.i

bb.er:                                            ; preds = %bb.ep
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ub, ptr align 1 %i.ud, i64 %i.uf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i387.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i387.i: ; preds = %bb.er, %bb.eq, %bb.ep
  %i.ui = load i64, ptr %i.ex, align 8, !tbaa !28 ; 2 uses
  store i64 %i.ui, ptr %i.em, align 8, !tbaa !28
  %i.uj = load ptr, ptr %10, align 8, !tbaa !15
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 %i.ui
  store i8 0, ptr %i.uk, align 1, !tbaa !27
  %.pre.i388.i = load ptr, ptr %16, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit391.i

.thread.i390.i:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i389.i
  store ptr %i.ud, ptr %10, align 8, !tbaa !15
  %i.ul = load <2 x i64>, ptr %i.ex, align 8, !tbaa !27
  store <2 x i64> %i.ul, ptr %i.em, align 8, !tbaa !27
  br label %bb.et

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i384.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i383.i
  %i.um = load i64, ptr %i.el, align 8, !tbaa !27
  store ptr %i.ud, ptr %10, align 8, !tbaa !15
  %i.un = load <2 x i64>, ptr %i.ex, align 8, !tbaa !27
  store <2 x i64> %i.un, ptr %i.em, align 8, !tbaa !27
  %.not.i385.i = icmp eq ptr %i.ub, null
  br i1 %.not.i385.i, label %bb.et, label %bb.es

bb.es:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i384.i
  store ptr %i.ub, ptr %16, align 8, !tbaa !15
  store i64 %i.um, ptr %i.ew, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit391.i

bb.et:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i384.i, %.thread.i390.i
  store ptr %i.ew, ptr %16, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit391.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit391.i: ; preds = %bb.et, %bb.es, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i387.i
  %i.uo = phi ptr [ %i.ub, %bb.es ], [ %i.ew, %bb.et ], [ %.pre.i388.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i387.i ]
  store i64 0, ptr %i.ex, align 8, !tbaa !28
  store i8 0, ptr %i.uo, align 1, !tbaa !27
  %i.up = load ptr, ptr %16, align 8, !tbaa !15   ; 2 uses
  %i.uq = icmp eq ptr %i.up, %i.ew
  br i1 %i.uq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit391.i
  call void @_ZdlPv(ptr noundef %i.up) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit391.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.ev

bb.eu:                                            ; preds = %.noexc.i380.i
  %i.ur = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.fb

bb.ev:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330.i
  %i.us = load i64, ptr %i.em, align 8, !tbaa !28 ; 3 uses
  %20 = load ptr, ptr %10, align 8, !tbaa !15
  %21 = getelementptr i8, ptr %20, i64 %i.us
  %i.ut = getelementptr i8, ptr %21, i64 -1
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !27
  %i.uv = icmp eq i8 %i.uu, 34
  br i1 %i.uv, label %bb.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i

bb.ew:                                            ; preds = %bb.ev
  %22 = add i64 %i.us, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %22, i8 noundef signext 0)
          to label %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit_crit_edge.i unwind label %bb.ex

._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit_crit_edge.i: ; preds = %bb.ew
  %.pre823.i = load i64, ptr %i.em, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i

bb.ex:                                            ; preds = %bb.ew
  %i.uw = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i: ; preds = %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit_crit_edge.i, %bb.ev
  %i.ux = phi i64 [ %.pre823.i, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit_crit_edge.i ], [ %i.us, %bb.ev ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #23
  %i.uy = trunc i64 %i.ux to i32
  store i32 %i.uy, ptr %i.ab, align 4, !tbaa !32
  %i.uz = add i64 %i.ux, 3
  %i.va = and i64 %i.uz, -4
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.va, i8 noundef signext 0)
          to label %bb.ez unwind label %bb.ey

bb.ey:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i
  %i.vb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #23
  br label %bb.fb

bb.ez:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i
  %i.vc = call i64 @fwrite(ptr noundef nonnull %i.ab, i64 noundef 4, i64 noundef 1, ptr noundef %i.cd) ; 0 uses
  %i.vd = load ptr, ptr %10, align 8, !tbaa !15
  %i.ve = load i64, ptr %i.em, align 8, !tbaa !28
  %i.vf = call i64 @fwrite(ptr noundef %i.vd, i64 noundef 1, i64 noundef %i.ve, ptr noundef %i.cd) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #23
  %i.vg = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.vh = icmp eq ptr %i.vg, %i.el
  br i1 %i.vh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398.jt14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i396.jt14.i

bb.fa:                                            ; preds = %bb.cw
  %i.vi = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.vj = load i32, ptr %i.t, align 4, !tbaa !32
  %i.vk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.vi, ptr noundef nonnull @.str.30, i32 noundef %i.vj) #22 ; 0 uses
  %i.vl = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.vm = icmp eq ptr %i.vl, %i.el
  br i1 %i.vm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398.jt1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i396.jt1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i396.jt14.i: ; preds = %bb.ez
  call void @_ZdlPv(ptr noundef %i.vg) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398.jt14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i396.jt1.i: ; preds = %bb.fa
  call void @_ZdlPv(ptr noundef %i.vl) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398.jt1.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398.jt14.i: ; preds = %bb.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i396.jt14.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.jt14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398.jt1.i: ; preds = %bb.fa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i396.jt1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.jt1.i

bb.fb:                                            ; preds = %bb.ey, %bb.ex, %bb.eu, %bb.ek, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333.i
  %.pn245.i = phi { ptr, i32 } [ %i.vb, %bb.ey ], [ %i.uw, %bb.ex ], [ %.pn243.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333.i ], [ %.pn241.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit362.i ], [ %i.tr, %bb.ek ], [ %i.ur, %bb.eu ]
  %i.vn = load ptr, ptr %10, align 8, !tbaa !15   ; 2 uses
  %i.vo = icmp eq ptr %i.vn, %i.el
  br i1 %i.vo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i399.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i399.i: ; preds = %bb.fb
  call void @_ZdlPv(ptr noundef %i.vn) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401.i: ; preds = %bb.fb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i399.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.fc

bb.fc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401.i, %bb.cu, %bb.cs
  %.pn245.pn.i = phi { ptr, i32 } [ %.pn245.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401.i ], [ %i.oy, %bb.cs ], [ %i.pa, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit434.i

bb.fd:                                            ; preds = %bb.cp
  %i.vp = call fastcc noundef zeroext i1 @_ZL13vstr_is_floatPKc(ptr noundef %i.y) ; 3 uses
  %i.vq = invoke i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.ca, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.z)
          to label %bb.fe unwind label %bb.fg

bb.fe:                                            ; preds = %bb.fd
  %i.vr = icmp eq i32 %i.vq, 1
  br i1 %i.vr, label %bb.ff, label %bb.gf

bb.ff:                                            ; preds = %bb.fe
  %i.vs = load i32, ptr %i.t, align 4, !tbaa !32
  %i.vt = sub i32 -23300, %i.vs
  store i32 %i.vt, ptr %i.t, align 4, !tbaa !32
  %i.vu = call i64 @fwrite(ptr noundef nonnull %i.t, i64 noundef 4, i64 noundef 1, ptr noundef %i.cd) ; 0 uses
  br i1 %i.vp, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.i, label %bb.fi

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.ff
  %i.vv = call fastcc noundef float @_ZL13vstr_to_floatPKc(ptr noundef %i.y)
  %i.vw = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #26
          to label %.split.us.preheader.i unwind label %bb.fh ; 3 uses

bb.fg:                                            ; preds = %bb.fd
  %i.vx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit434.i

bb.fh:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.vy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit434.i

bb.fi:                                            ; preds = %bb.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #23
  store i32 0, ptr %i.ac, align 4, !tbaa !32
  %i.vz = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.y, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.ac) #23 ; 2 uses
  %.not230.i = icmp eq i32 %i.vz, 1
  br i1 %.not230.i, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit436.thread.i

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.fi
  %i.wa = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #26
          to label %.split.preheader.i unwind label %bb.fj ; 3 uses

_ZNSt6vectorIiSaIiEED2Ev.exit436.thread.i:        ; preds = %bb.fi
  %i.wb = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.wc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.wb, ptr noundef nonnull @.str.32, i32 noundef %i.vz) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.jt1.i

bb.fj:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.wd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit434.i

.split.preheader.i:                               ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.we = load i32, ptr %i.ac, align 4, !tbaa !32
  store i32 %i.we, ptr %i.wa, align 4, !tbaa !32
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wa, i64 4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #23
  br label %.split.i

.split.us.preheader.i:                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.i
  store float %i.vv, ptr %i.vw, align 4, !tbaa !47
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vw, i64 4 ; 2 uses
  br label %.split.us.i

.split.us.i:                                      ; preds = %bb.fp, %.split.us.preheader.i
  %.sroa.21491.1.us.i = phi ptr [ %.sroa.21491.2.us.i, %bb.fp ], [ %i.wg, %.split.us.preheader.i ] ; 3 uses
  %.sroa.14488.1.us.i = phi ptr [ %.sroa.14488.2.us.i, %bb.fp ], [ %i.wg, %.split.us.preheader.i ] ; 4 uses
  %.sroa.0481.1.us.i = phi ptr [ %.sroa.0481.3.us.i, %bb.fp ], [ %i.vw, %.split.us.preheader.i ] ; 8 uses
  %i.wh = invoke i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.ca, ptr noundef nonnull @.str.26, ptr noundef nonnull %i.y)
          to label %bb.fk unwind label %.split692.us.i

bb.fk:                                            ; preds = %.split.us.i
  %.not231.us.i = icmp eq i32 %i.wh, 1
  br i1 %.not231.us.i, label %bb.fl, label %.split697.us.i.loopexit

bb.fl:                                            ; preds = %bb.fk
  %i.wi = call fastcc noundef float @_ZL13vstr_to_floatPKc(ptr noundef %i.y) ; 2 uses
  %.not.i.i409.us.i = icmp eq ptr %.sroa.14488.1.us.i, %.sroa.21491.1.us.i
  br i1 %.not.i.i409.us.i, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  store float %i.wi, ptr %.sroa.14488.1.us.i, align 4, !tbaa !47
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit418.us.i

bb.fn:                                            ; preds = %bb.fl
  %i.wj = ptrtoint ptr %.sroa.21491.1.us.i to i64
  %i.wk = ptrtoint ptr %.sroa.0481.1.us.i to i64
  %i.wl = sub i64 %i.wj, %i.wk                    ; 5 uses
  %i.wm = icmp eq i64 %i.wl, 9223372036854775804
  br i1 %i.wm, label %.split703.us.i, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i410.us.i

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i410.us.i: ; preds = %bb.fn
  %i.wn = ashr exact i64 %i.wl, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i411.us.i = call i64 @llvm.umax.i64(i64 %i.wn, i64 1)
  %i.wo = add nsw i64 %.sroa.speculated.i.i.i.i411.us.i, %i.wn ; 2 uses
  %i.wp = icmp ult i64 %i.wo, %i.wn
  %i.wq = call i64 @llvm.umin.i64(i64 %i.wo, i64 2305843009213693951)
  %i.wr = select i1 %i.wp, i64 2305843009213693951, i64 %i.wq ; 3 uses
  %.not.i.i.i.i412.us.i = icmp ne i64 %i.wr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i412.us.i)
  %i.ws = shl nuw nsw i64 %i.wr, 2
  %i.wt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ws) #26
          to label %.noexc417.us.i unwind label %.loopexit555.split.us.i ; 4 uses

.noexc417.us.i:                                   ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i410.us.i
  %i.wu = getelementptr inbounds i8, ptr %i.wt, i64 %i.wl ; 2 uses
  store float %i.wi, ptr %i.wu, align 4, !tbaa !47
  %i.wv = icmp sgt i64 %i.wl, 0
  br i1 %i.wv, label %bb.fo, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i415.us.i

bb.fo:                                            ; preds = %.noexc417.us.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.wt, ptr align 4 %.sroa.0481.1.us.i, i64 %i.wl, i1 false)
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i415.us.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i415.us.i: ; preds = %bb.fo, %.noexc417.us.i
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0481.1.us.i) #21
end_hunk_0
