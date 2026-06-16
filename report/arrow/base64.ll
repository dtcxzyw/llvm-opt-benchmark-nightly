inline.NumInlined: 90
inline.NumDeleted: 46
begin_hunk_0_@_ZN5arrow4util13base64_encodeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.cy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cw) #17
          to label %.noexc38.2.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i ; 4 uses

.noexc38.2.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.2.i
  switch i64 %i.ci, label %bb.r [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.2.i
    i64 1, label %bb.q
  ]

bb.q:                                             ; preds = %.noexc38.2.i
  %i.cz = load i8, ptr %i.ck, align 1, !tbaa !13
  store i8 %i.cz, ptr %i.cy, align 1, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.2.i

bb.r:                                             ; preds = %.noexc38.2.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cy, ptr align 1 %i.ck, i64 %i.ci, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.2.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.2.i: ; preds = %bb.r, %bb.q, %.noexc38.2.i
  br i1 %i.cl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i35.2.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.2.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.2.i
  %i.da = add i64 %i.cr, 1
  tail call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.da) #14
  br label %.noexc.2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i35.2.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.2.i
  %i.db = icmp samesign ult i64 %i.ci, 16
  tail call void @llvm.assume(i1 %i.db)
  br label %.noexc.2.i

.noexc.2.i:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i35.2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.2.i
  store ptr %i.cy, ptr %0, align 8, !tbaa !7, !alias.scope !14
  store i64 %.0.i.2.i, ptr %i.d, align 8, !tbaa !13, !alias.scope !14
  br label %bb.s

bb.s:                                             ; preds = %.noexc.2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.2.i
  %i.dc = phi ptr [ %i.cy, %.noexc.2.i ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.2.i ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.2.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.ci
  store i8 %i.ch, ptr %i.dd, align 1, !tbaa !13
  store i64 %i.cj, ptr %i.e, align 8, !tbaa !18, !alias.scope !14
  %i.de = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !14
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.cj
  store i8 0, ptr %i.df, align 1, !tbaa !13
  %i.dg = zext nneg i8 %i.z to i64
  %i.dh = load ptr, ptr @_ZN5arrow4utilL12base64_charsB5cxx11E, align 8, !tbaa !7, !noalias !14
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dg
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !13
  %i.dk = load i64, ptr %i.e, align 8, !tbaa !18, !alias.scope !14 ; 6 uses
  %i.dl = add i64 %i.dk, 1                        ; 7 uses
  %i.dm = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !14 ; 6 uses
  %i.dn = icmp eq ptr %i.dm, %i.d                 ; 2 uses
  br i1 %i.dn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.3.i: ; preds = %bb.s
  %i.do = load i64, ptr %i.d, align 8, !alias.scope !14 ; 3 uses
  %i.dp = icmp ugt i64 %i.dl, %i.do
  br i1 %i.dp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.3.i, label %.loopexit44.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.3.i: ; preds = %bb.s
  %i.dq = icmp samesign ult i64 %i.dk, 16
  tail call void @llvm.assume(i1 %i.dq)
  %i.dr = icmp samesign ugt i64 %i.dl, 15
  br i1 %i.dr, label %bb.t, label %.loopexit44.i.thread

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.3.i
  %i.ds = load i64, ptr %i.d, align 8, !alias.scope !14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.3.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.3.i
  %i.dt = phi i64 [ %i.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.3.i ], [ %i.ds, %bb.t ]
  %i.du = phi i64 [ %i.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.3.i ], [ 15, %bb.t ]
  %i.dv = icmp slt i64 %i.dl, 0
  br i1 %i.dv, label %bb.d, label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.3.i
  %i.dw = shl nuw i64 %i.du, 1                    ; 2 uses
  %i.dx = icmp ult i64 %i.dl, %i.dw
  %spec.store.select.i.i.3.i = tail call i64 @llvm.umin.i64(i64 %i.dw, i64 9223372036854775807)
  %.0.i.3.i = select i1 %i.dx, i64 %spec.store.select.i.i.3.i, i64 %i.dl ; 2 uses
  %i.dy = add nuw i64 %.0.i.3.i, 1                ; 2 uses
  %i.dz = icmp slt i64 %i.dy, 0
  br i1 %i.dz, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.3.i, !prof !21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.3.i: ; preds = %bb.u
  %i.ea = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #17
          to label %.noexc38.3.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i ; 4 uses

.noexc38.3.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.3.i
  switch i64 %i.dk, label %bb.w [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.3.i
    i64 1, label %bb.v
  ]

bb.v:                                             ; preds = %.noexc38.3.i
  %i.eb = load i8, ptr %i.dm, align 1, !tbaa !13
  store i8 %i.eb, ptr %i.ea, align 1, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.3.i

bb.w:                                             ; preds = %.noexc38.3.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ea, ptr align 1 %i.dm, i64 %i.dk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.3.i: ; preds = %bb.w, %bb.v, %.noexc38.3.i
  br i1 %i.dn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i35.3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.3.i
  %i.ec = add i64 %i.dt, 1
  tail call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.ec) #14
  br label %.noexc.3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i35.3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.3.i
  %i.ed = icmp samesign ult i64 %i.dk, 16
  tail call void @llvm.assume(i1 %i.ed)
  br label %.noexc.3.i

.noexc.3.i:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i35.3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.3.i
  store ptr %i.ea, ptr %0, align 8, !tbaa !7, !alias.scope !14
  store i64 %.0.i.3.i, ptr %i.d, align 8, !tbaa !13, !alias.scope !14
  br label %.loopexit44.i.thread

.loopexit39.i.loopexit:                           ; preds = %bb.ad
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit39.i.loopexit.split-lp:                  ; preds = %bb.y
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.aa
  %lpad.loopexit40.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.3.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.2.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.1.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %lpad.loopexit45.i = landingpad { ptr, i32 }
          cleanup
  store i8 %i.ei, ptr %i.a, align 1, !tbaa !13, !noalias !14
  store i8 %i.el, ptr %i.f, align 1
  store i8 %i.p, ptr %i.h, align 1
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.f, %bb.d
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit39.i.loopexit, %.loopexit39.i.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit40.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit45.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit, %.loopexit39.i.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit39.i.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15, !noalias !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !14
  %i.ee = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !14 ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.d
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.loopexit.split-lp.i
  %i.eg = load i64, ptr %i.d, align 8, !tbaa !13, !alias.scope !14
  %i.eh = add i64 %i.eg, 1
  tail call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %.loopexit.split-lp.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %lpad.phi.i

.loopexit44.i.1:                                  ; preds = %.lr.ph.i, %.outer
  %i.ei = phi i8 [ %i.l, %.outer ], [ %i.k, %.lr.ph.i ] ; 7 uses
  %.053.i.ph186 = phi ptr [ %i.o, %.outer ], [ %2, %.lr.ph.i ] ; 3 uses
  %.in.i.ph185 = phi i32 [ %i.n, %.outer ], [ %i.c, %.lr.ph.i ] ; 2 uses
  %.ph184 = phi i8 [ %i.z, %.outer ], [ undef, %.lr.ph.i ]
  %i.ej = phi i8 [ %i.p, %.outer ], [ %.promoted152, %.lr.ph.i ]
  %i.ek = getelementptr i8, ptr %.053.i.ph186, i64 1
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !13, !noalias !14 ; 8 uses
  %.not.i.1 = icmp ne i32 %.in.i.ph185, 2         ; 3 uses
  br i1 %.not.i.1, label %bb.b, label %.lr.ph60.preheader.i

.loopexit44.i.thread:                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.3.i, %.noexc.3.i
  %i.em = phi ptr [ %i.ea, %.noexc.3.i ], [ %i.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.3.i ], [ %i.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread.3.i ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.dk
  store i8 %i.dj, ptr %i.en, align 1, !tbaa !13
  store i64 %i.dl, ptr %i.e, align 8, !tbaa !18, !alias.scope !14
  %i.eo = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !14
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.dl
  store i8 0, ptr %i.ep, align 1, !tbaa !13
  %.not.i2 = icmp eq i32 %i.n, 0
  br i1 %.not.i2, label %._crit_edge.i.thread, label %.outer, !llvm.loop !19

._crit_edge.i.thread:                             ; preds = %.loopexit44.i.thread
  store i8 %i.ei, ptr %i.a, align 1, !tbaa !13, !noalias !14
  store i8 %i.el, ptr %i.f, align 1
  store i8 %i.p, ptr %i.h, align 1
  br label %_ZN5arrow4utilL13base64_encodeB5cxx11EPKhj.exit

.lr.ph60.preheader.i:                             ; preds = %.outer, %.loopexit44.i.1, %.lr.ph.i
  %.lcssa170 = phi i8 [ %.promoted152, %.lr.ph.i ], [ %i.p, %.outer ], [ %i.ej, %.loopexit44.i.1 ]
  %.ph.lcssa = phi i8 [ undef, %.lr.ph.i ], [ %i.z, %.outer ], [ %.ph184, %.loopexit44.i.1 ]
  %.lcssa = phi i8 [ %i.k, %.lr.ph.i ], [ %i.l, %.outer ], [ %i.ei, %.loopexit44.i.1 ]
  %.not.i.not.lcssa = phi i1 [ true, %.lr.ph.i ], [ %.not.i.1, %.loopexit44.i.1 ], [ %.not.i.1, %.outer ]
  %i.eq = phi i8 [ %.promoted, %.lr.ph.i ], [ %i.el, %.loopexit44.i.1 ], [ %i.el, %.outer ]
  %.02152.i.lcssa51.wide.ph = phi i32 [ 0, %.lr.ph.i ], [ 0, %.outer ], [ 1, %.loopexit44.i.1 ] ; 2 uses
  %.lcssa46.wide.ph.a = phi i64 [ 1, %.lr.ph.i ], [ 1, %.outer ], [ 2, %.loopexit44.i.1 ]
  store i8 %.lcssa, ptr %i.a, align 1, !tbaa !13, !noalias !14
  store i8 %i.eq, ptr %i.f, align 1
  store i8 %.lcssa170, ptr %i.h, align 1
  store i8 %.ph.lcssa, ptr %i.j, align 1, !noalias !14
  %scevgep.i = getelementptr i8, ptr %i.a, i64 %.lcssa46.wide.ph.a
  %narrow.i = sub nuw nsw i32 2, %.02152.i.lcssa51.wide.ph
  %3 = zext nneg i32 %narrow.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i, i8 0, i64 %3, i1 false), !tbaa !13, !noalias !14
  %i.er = load i8, ptr %i.a, align 1, !tbaa !13, !noalias !14 ; 2 uses
  %i.es = lshr i8 %i.er, 2
  store i8 %i.es, ptr %i.b, align 1, !tbaa !13, !noalias !14
  %i.et = shl i8 %i.er, 4
  %i.eu = and i8 %i.et, 48
  %i.ev = load i8, ptr %i.f, align 1, !tbaa !13, !noalias !14 ; 2 uses
  %i.ew = lshr i8 %i.ev, 4
  %i.ex = or disjoint i8 %i.ew, %i.eu
  store i8 %i.ex, ptr %i.g, align 1, !tbaa !13, !noalias !14
  %i.ey = shl i8 %i.ev, 2
  %i.ez = and i8 %i.ey, 60
  %i.fa = load i8, ptr %i.h, align 1, !tbaa !13, !noalias !14
  %i.fb = lshr i8 %i.fa, 6
  %i.fc = or disjoint i8 %i.fb, %i.ez
  store i8 %i.fc, ptr %i.i, align 1, !tbaa !13, !noalias !14
  %4 = or disjoint i32 %.02152.i.lcssa51.wide.ph, 2
  %wide.trip.count.i = zext nneg i32 %4 to i64
  br label %.lr.ph60.i

.lr.ph62.preheader.i:                             ; preds = %bb.ab
  %i.fd = load i64, ptr %i.e, align 8, !tbaa !18, !alias.scope !14 ; 4 uses
  %i.fe = add i64 %i.fd, 1                        ; 3 uses
  %i.ff = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !14 ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.d                 ; 2 uses
  br i1 %i.fg, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30.i.peel

bb.x:                                             ; preds = %.lr.ph62.preheader.i
  %i.fh = icmp ult i64 %i.fd, 16
  tail call void @llvm.assume(i1 %i.fh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30.i.peel: ; preds = %bb.x, %.lr.ph62.preheader.i
  %i.fi = load i64, ptr %i.d, align 8, !alias.scope !14
  %i.fj = select i1 %i.fg, i64 15, i64 %i.fi
  %i.fk = icmp ugt i64 %i.fe, %i.fj
  br i1 %i.fk, label %bb.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit33.i.peel

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30.i.peel
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.fd, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc32.i.peel unwind label %.loopexit39.i.loopexit.split-lp

.noexc32.i.peel:                                  ; preds = %bb.y
  %.pre.i.i31.i.peel = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit33.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit33.i.peel: ; preds = %.noexc32.i.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30.i.peel
  %i.fl = phi ptr [ %.pre.i.i31.i.peel, %.noexc32.i.peel ], [ %i.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30.i.peel ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fd
  store i8 61, ptr %i.fm, align 1, !tbaa !13
  store i64 %i.fe, ptr %i.e, align 8, !tbaa !18, !alias.scope !14
  %i.fn = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !14
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fe
  store i8 0, ptr %i.fo, align 1, !tbaa !13
  br i1 %.not.i.not.lcssa, label %.lr.ph62.i, label %_ZN5arrow4utilL13base64_encodeB5cxx11EPKhj.exit

.lr.ph60.i:                                       ; preds = %bb.ab, %.lr.ph60.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph60.preheader.i ], [ %indvars.iv.next.i, %bb.ab ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !13, !noalias !14
  %i.fr = zext i8 %i.fq to i64
  %i.fs = load ptr, ptr @_ZN5arrow4utilL12base64_charsB5cxx11E, align 8, !tbaa !7, !noalias !14
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fr
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !13
  %i.fv = load i64, ptr %i.e, align 8, !tbaa !18, !alias.scope !14 ; 4 uses
  %i.fw = add i64 %i.fv, 1                        ; 3 uses
  %i.fx = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !14 ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.d                 ; 2 uses
  br i1 %i.fy, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26.i

bb.z:                                             ; preds = %.lr.ph60.i
  %i.fz = icmp ult i64 %i.fv, 16
  tail call void @llvm.assume(i1 %i.fz)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26.i: ; preds = %bb.z, %.lr.ph60.i
  %i.ga = load i64, ptr %i.d, align 8, !alias.scope !14
  %i.gb = select i1 %i.fy, i64 15, i64 %i.ga
  %i.gc = icmp ugt i64 %i.fw, %i.gb
  br i1 %i.gc, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.fv, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc28.i unwind label %.loopexit.split-lp.loopexit.i

.noexc28.i:                                       ; preds = %bb.aa
  %.pre.i.i27.i = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !14
  br label %bb.ab

bb.ab:                                            ; preds = %.noexc28.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26.i
  %i.gd = phi ptr [ %.pre.i.i27.i, %.noexc28.i ], [ %i.fx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26.i ]
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.fv
  store i8 %i.fu, ptr %i.ge, align 1, !tbaa !13
  store i64 %i.fw, ptr %i.e, align 8, !tbaa !18, !alias.scope !14
  %i.gf = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !14
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.fw
  store i8 0, ptr %i.gg, align 1, !tbaa !13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph62.preheader.i, label %.lr.ph60.i, !llvm.loop !22

.lr.ph62.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit33.i.peel
  %i.gh = load i64, ptr %i.e, align 8, !tbaa !18, !alias.scope !14 ; 4 uses
  %i.gi = add i64 %i.gh, 1                        ; 3 uses
  %i.gj = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !14 ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.d                 ; 2 uses
  br i1 %i.gk, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30.i

bb.ac:                                            ; preds = %.lr.ph62.i
  %i.gl = icmp ult i64 %i.gh, 16
  tail call void @llvm.assume(i1 %i.gl)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30.i: ; preds = %bb.ac, %.lr.ph62.i
  %i.gm = load i64, ptr %i.d, align 8, !alias.scope !14
  %i.gn = select i1 %i.gk, i64 15, i64 %i.gm
  %i.go = icmp ugt i64 %i.gi, %i.gn
  br i1 %i.go, label %bb.ad, label %_ZN5arrow4utilL13base64_encodeB5cxx11EPKhj.exit.loopexit.loopexit

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.gh, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc32.i unwind label %.loopexit39.i.loopexit

.noexc32.i:                                       ; preds = %bb.ad
  %.pre.i.i31.i = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !14
  br label %_ZN5arrow4utilL13base64_encodeB5cxx11EPKhj.exit.loopexit.loopexit

_ZN5arrow4utilL13base64_encodeB5cxx11EPKhj.exit.loopexit.loopexit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30.i, %.noexc32.i
  %i.gp = phi ptr [ %.pre.i.i31.i, %.noexc32.i ], [ %i.gj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30.i ]
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gh
  store i8 61, ptr %i.gq, align 1, !tbaa !13
  store i64 %i.gi, ptr %i.e, align 8, !tbaa !18, !alias.scope !14
  %i.gr = load ptr, ptr %0, align 8, !tbaa !7, !alias.scope !14
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gi
  store i8 0, ptr %i.gs, align 1, !tbaa !13
  br label %_ZN5arrow4utilL13base64_encodeB5cxx11EPKhj.exit

_ZN5arrow4utilL13base64_encodeB5cxx11EPKhj.exit:  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit33.i.peel, %_ZN5arrow4utilL13base64_encodeB5cxx11EPKhj.exit.loopexit.loopexit, %._crit_edge.i.thread, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15, !noalias !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !14
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow4util13base64_decodeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr nofree readonly captures(none) %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 15 uses
  %i.b = alloca [3 x i8], align 1                 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 18 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  store i64 0, ptr %i.d, align 8, !tbaa !18
  store i8 0, ptr %i.c, align 8, !tbaa !13
  %.not63 = icmp eq i64 %1, 0
  br i1 %.not63, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit53
  %i.j = phi i8 [ undef, %.lr.ph ], [ %i.ep, %.loopexit53 ] ; 3 uses
  %i.k = phi i8 [ undef, %.lr.ph ], [ %i.eq, %.loopexit53 ] ; 3 uses
  %i.l = phi i8 [ undef, %.lr.ph ], [ %i.er, %.loopexit53 ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit53 ] ; 2 uses
  %.in = phi i64 [ %1, %.lr.ph ], [ %i.m, %.loopexit53 ]
  %.02665 = phi i32 [ 0, %.lr.ph ], [ %.3, %.loopexit53 ] ; 4 uses
  %i.m = add i64 %.in, -1                         ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.o = load i8, ptr %i.n, align 1, !tbaa !13    ; 4 uses
  %.not31 = icmp eq i8 %i.o, 61
  br i1 %.not31, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = zext i8 %i.o to i32
  %i.q = tail call i32 @isalnum(i32 noundef %i.p) #18
  %i.r = icmp ne i32 %i.q, 0
  %i.s = and i8 %i.o, -5
  %i.t = icmp eq i8 %i.s, 43
  %spec.select.i = or i1 %i.t, %i.r
  br i1 %spec.select.i, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.u = add nsw i32 %.02665, 1                   ; 2 uses
  %i.v = sext i32 %.02665 to i64
  %i.w = getelementptr inbounds i8, ptr %i.a, i64 %i.v
  store i8 %i.o, ptr %i.w, align 1, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.x = icmp eq i32 %i.u, 4
  br i1 %i.x, label %.preheader57, label %.loopexit53

.preheader57:                                     ; preds = %bb.d
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow4utilL12base64_charsB5cxx11E, i64 8), align 8, !tbaa !18 ; 5 uses
  %.not50 = icmp eq i64 %i.y, 0
  br i1 %.not50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.us.preheader, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.preheader

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.preheader: ; preds = %.preheader57
  %i.z = load ptr, ptr @_ZN5arrow4utilL12base64_charsB5cxx11E, align 8 ; 5 uses
  %i.aa = ptrtoint ptr %i.z to i64                ; 4 uses
  %i.ab = load i8, ptr %i.a, align 4, !tbaa !13
  %i.ac = sext i8 %i.ab to i32
  %i.ad = tail call ptr @memchr(ptr noundef %i.z, i32 noundef %i.ac, i64 noundef %i.y) #15 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, null
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.aa
  %i.ag = trunc i64 %i.af to i8
  %i.ah = select i1 %.not.i, i8 -1, i8 %i.ag      ; 2 uses
  store i8 %i.ah, ptr %i.a, align 4, !tbaa !13
  %i.ai = load i8, ptr %i.e, align 1, !tbaa !13
  %i.aj = sext i8 %i.ai to i32
  %i.ak = tail call ptr @memchr(ptr noundef %i.z, i32 noundef %i.aj, i64 noundef %i.y) #15 ; 2 uses
end_hunk_0
