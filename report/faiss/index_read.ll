inline.NumInlined: 10832
inline.NumDeleted: 4103
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5faissL9read_HNSWERNS_4HNSWEPNS_8IOReaderE:bb.a

bb.fn:                                            ; preds = %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  %i.sx = load ptr, ptr %i.id, align 8, !tbaa !92 ; 2 uses
  %i.sy = load ptr, ptr %i.ic, align 8, !tbaa !62 ; 5 uses
  %i.sz = ptrtoint ptr %i.sx to i64
  %i.ta = ptrtoint ptr %i.sy to i64
  %i.tb = sub i64 %i.sz, %i.ta
  %i.tc = ashr exact i64 %i.tb, 2                 ; 10 uses
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.te = load i64, ptr %i.td, align 8, !tbaa !778 ; 9 uses
  %i.tf = load ptr, ptr %i.eo, align 8, !tbaa !779 ; 7 uses
  %i.tg = load ptr, ptr %i.ep, align 8, !tbaa !779 ; 2 uses
  %i.th = icmp eq ptr %i.tf, %i.tg
  br i1 %i.th, label %.loopexit.i, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.ti = load i32, ptr %i.tf, align 4, !tbaa !21 ; 2 uses
  %i.tj = icmp eq i32 %i.ti, 0
  br i1 %i.tj, label %.preheader284.i, label %bb.fp

.preheader284.i:                                  ; preds = %bb.fo
  %i.tk = ptrtoint ptr %i.tg to i64
  %i.tl = ptrtoint ptr %i.tf to i64
  %i.tm = sub i64 %i.tk, %i.tl                    ; 3 uses
  %i.tn = ashr exact i64 %i.tm, 2                 ; 4 uses
  %i.to = icmp ugt i64 %i.tn, 1
  br i1 %i.to, label %.lr.ph.i, label %.loopexit.i

bb.fp:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.tp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.tp, ptr %2, align 8, !tbaa !13
  %i.tq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.tq, align 8, !tbaa !17
  store i8 0, ptr %i.tp, align 8, !tbaa !19
  %i.tr = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.578, ptr noundef nonnull @.str.579, i32 noundef %i.ti) #28 ; 2 uses
  %i.ts = icmp sgt i32 %i.tr, 0
  br i1 %i.ts, label %bb.fq, label %bb.ft

bb.fq:                                            ; preds = %bb.fp
  %i.tt = zext nneg i32 %i.tr to i64              ; 2 uses
  %i.tu = add nuw nsw i64 %i.tt, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.tu)
          to label %bb.fr unwind label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.tv = load ptr, ptr %2, align 8, !tbaa !20
  %i.tw = load i64, ptr %i.tq, align 8, !tbaa !17
  %i.tx = load ptr, ptr %i.eo, align 8, !tbaa !62
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !21
  %i.tz = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.tv, i64 noundef %i.tw, ptr noundef nonnull @.str.578, ptr noundef nonnull @.str.579, i32 noundef %i.ty) #28 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.tt)
          to label %bb.ft unwind label %bb.fs

bb.fs:                                            ; preds = %bb.fu, %bb.fr, %bb.fq
  %i.ua = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

bb.ft:                                            ; preds = %bb.fr, %bb.fp
  %i.ub = call ptr @__cxa_allocate_exception(i64 40) #28 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.ub, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faissL13validate_HNSWERKNS_4HNSWE, ptr noundef nonnull @.str.2, i32 noundef 1187)
          to label %bb.fu unwind label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  invoke void @__cxa_throw(ptr nonnull %i.ub, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #30
          to label %bb.jj unwind label %bb.fs

bb.fv:                                            ; preds = %bb.ft
  %i.uc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ub) #28
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fs
  %.pn.i = phi { ptr, i32 } [ %i.ua, %bb.fs ], [ %i.uc, %bb.fv ]
  %i.ud = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.ue = icmp eq ptr %i.ud, %i.tp
  br i1 %i.ue, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.fw
  %i.uf = load i64, ptr %i.tp, align 8, !tbaa !19
  %i.ug = add i64 %i.uf, 1
  call void @_ZdlPvm(ptr noundef %i.ud, i64 noundef %i.ug) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %common.resume

.lr.ph.i:                                         ; preds = %.preheader284.i, %bb.gf
  %i.uh = phi i32 [ %i.uj, %bb.gf ], [ 0, %.preheader284.i ]
  %.0185309.i = phi i64 [ %i.vi, %bb.gf ], [ 1, %.preheader284.i ] ; 6 uses
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.tf, i64 %.0185309.i
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !21 ; 3 uses
  %.not.i = icmp slt i32 %i.uj, %i.uh
  br i1 %.not.i, label %bb.fx, label %bb.gf

bb.fx:                                            ; preds = %.lr.ph.i
  %i.uk = add i64 %.0185309.i, -1                 ; 2 uses
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.tf, i64 %i.uk
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.um = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.um, ptr %3, align 8, !tbaa !13
  %i.un = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.un, align 8, !tbaa !17
  store i8 0, ptr %i.um, align 8, !tbaa !19
  %i.uo = load i32, ptr %i.ul, align 4, !tbaa !21
  %i.up = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.580, ptr noundef nonnull @.str.581, i64 noundef %.0185309.i, i32 noundef %i.uj, i32 noundef %i.uo) #28 ; 2 uses
  %i.uq = icmp sgt i32 %i.up, 0
  br i1 %i.uq, label %bb.fy, label %bb.gb

bb.fy:                                            ; preds = %bb.fx
  %i.ur = zext nneg i32 %i.up to i64              ; 2 uses
  %i.us = add nuw nsw i64 %i.ur, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.us)
          to label %bb.fz unwind label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.ut = load ptr, ptr %3, align 8, !tbaa !20
  %i.uu = load i64, ptr %i.un, align 8, !tbaa !17
  %i.uv = load ptr, ptr %i.eo, align 8, !tbaa !62 ; 2 uses
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.uv, i64 %.0185309.i
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !21
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.uv, i64 %i.uk
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !21
  %i.va = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ut, i64 noundef %i.uu, ptr noundef nonnull @.str.580, ptr noundef nonnull @.str.581, i64 noundef %.0185309.i, i32 noundef %i.ux, i32 noundef %i.uz) #28 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ur)
          to label %bb.gb unwind label %bb.ga

bb.ga:                                            ; preds = %bb.gc, %bb.fz, %bb.fy
  %i.vb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ge

bb.gb:                                            ; preds = %bb.fz, %bb.fx
  %i.vc = call ptr @__cxa_allocate_exception(i64 40) #28 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.vc, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faissL13validate_HNSWERKNS_4HNSWE, ptr noundef nonnull @.str.2, i32 noundef 1196)
          to label %bb.gc unwind label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  invoke void @__cxa_throw(ptr nonnull %i.vc, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #30
          to label %bb.jj unwind label %bb.ga

bb.gd:                                            ; preds = %bb.gb
  %i.vd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.vc) #28
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.ga
  %.pn222.i = phi { ptr, i32 } [ %i.vb, %bb.ga ], [ %i.vd, %bb.gd ]
  %i.ve = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.vf = icmp eq ptr %i.ve, %i.um
  br i1 %i.vf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250.i: ; preds = %bb.ge
  %i.vg = load i64, ptr %i.um, align 8, !tbaa !19
  %i.vh = add i64 %i.vg, 1
  call void @_ZdlPvm(ptr noundef %i.ve, i64 noundef %i.vh) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252.i: ; preds = %bb.ge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume

bb.gf:                                            ; preds = %.lr.ph.i
  %i.vi = add nuw i64 %.0185309.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.vi, %i.tn
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !780

.loopexit.i:                                      ; preds = %bb.gf, %bb.fn, %.preheader284.i
  %.pre-phi369.i = phi i64 [ 0, %bb.fn ], [ %i.tn, %.preheader284.i ], [ %i.tn, %bb.gf ] ; 5 uses
  %.pre-phi367.i = phi i64 [ 0, %bb.fn ], [ %i.tm, %.preheader284.i ], [ %i.tm, %bb.gf ]
  %.not325.i = icmp eq ptr %i.sx, %i.sy           ; 2 uses
  br i1 %.not325.i, label %._crit_edge.i, label %.lr.ph311.i

._crit_edge.i:                                    ; preds = %bb.gp, %.loopexit.i
  %i.vj = load ptr, ptr %i.lr, align 8, !tbaa !117 ; 2 uses
  %i.vk = load ptr, ptr %i.lq, align 8, !tbaa !113 ; 6 uses
  %i.vl = ptrtoint ptr %i.vj to i64
  %i.vm = ptrtoint ptr %i.vk to i64
  %i.vn = sub i64 %i.vl, %i.vm                    ; 2 uses
  %i.vo = ashr exact i64 %i.vn, 3                 ; 3 uses
  %i.vp = add nsw i64 %i.tc, 1
  %i.vq = icmp eq i64 %i.vo, %i.vp
  br i1 %i.vq, label %.preheader283.i, label %bb.gq

.preheader283.i:                                  ; preds = %._crit_edge.i
  %.not326.i = icmp eq ptr %i.vj, %i.vk
  br i1 %.not326.i, label %._crit_edge317.i, label %.lr.ph316.preheader.i

.lr.ph316.preheader.i:                            ; preds = %.preheader283.i
  %i.vr = load i64, ptr %i.vk, align 8, !tbaa !9  ; 2 uses
  %.not239.peel.i = icmp ugt i64 %i.vr, %i.te
  br i1 %.not239.peel.i, label %.loopexit352.i, label %bb.gg

bb.gg:                                            ; preds = %.lr.ph316.preheader.i
  %exitcond350.peel.not.i = icmp eq i64 %i.vn, 8
  br i1 %exitcond350.peel.not.i, label %._crit_edge317.i, label %.lr.ph316.i

.lr.ph311.i:                                      ; preds = %.loopexit.i, %bb.gp
  %.0184310.i = phi i64 [ %i.wq, %bb.gp ], [ 0, %.loopexit.i ] ; 5 uses
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %.0184310.i
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !21 ; 3 uses
  %i.vu = icmp sgt i32 %i.vt, -1
  %i.vv = zext nneg i32 %i.vt to i64
  %i.vw = icmp ugt i64 %.pre-phi369.i, %i.vv
  %or.cond281.i = select i1 %i.vu, i1 %i.vw, i1 false
  br i1 %or.cond281.i, label %bb.gp, label %bb.gh

bb.gh:                                            ; preds = %.lr.ph311.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.vx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.vx, ptr %4, align 8, !tbaa !13
  %i.vy = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.vy, align 8, !tbaa !17
  store i8 0, ptr %i.vx, align 8, !tbaa !19
  %i.vz = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.582, ptr noundef nonnull @.str.583, i64 noundef %.0184310.i, i32 noundef %i.vt, i64 noundef %.pre-phi369.i) #28 ; 2 uses
  %i.wa = icmp sgt i32 %i.vz, 0
  br i1 %i.wa, label %bb.gi, label %bb.gl

bb.gi:                                            ; preds = %bb.gh
  %i.wb = zext nneg i32 %i.vz to i64              ; 2 uses
  %i.wc = add nuw nsw i64 %i.wb, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.wc)
          to label %bb.gj unwind label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.wd = load ptr, ptr %4, align 8, !tbaa !20
  %i.we = load i64, ptr %i.vy, align 8, !tbaa !17
  %i.wf = load ptr, ptr %i.ic, align 8, !tbaa !62
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.wf, i64 %.0184310.i
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !21
  %i.wi = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.wd, i64 noundef %i.we, ptr noundef nonnull @.str.582, ptr noundef nonnull @.str.583, i64 noundef %.0184310.i, i32 noundef %i.wh, i64 noundef %.pre-phi369.i) #28 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.wb)
          to label %bb.gl unwind label %bb.gk

bb.gk:                                            ; preds = %bb.gm, %bb.gj, %bb.gi
  %i.wj = landingpad { ptr, i32 }
          cleanup
  br label %bb.go

bb.gl:                                            ; preds = %bb.gj, %bb.gh
  %i.wk = call ptr @__cxa_allocate_exception(i64 40) #28 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.wk, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faissL13validate_HNSWERKNS_4HNSWE, ptr noundef nonnull @.str.2, i32 noundef 1209)
          to label %bb.gm unwind label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  invoke void @__cxa_throw(ptr nonnull %i.wk, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #30
          to label %bb.jj unwind label %bb.gk

bb.gn:                                            ; preds = %bb.gl
  %i.wl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.wk) #28
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gk
  %.pn246.i = phi { ptr, i32 } [ %i.wj, %bb.gk ], [ %i.wl, %bb.gn ]
  %i.wm = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.wn = icmp eq ptr %i.wm, %i.vx
  br i1 %i.wn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253.i: ; preds = %bb.go
  %i.wo = load i64, ptr %i.vx, align 8, !tbaa !19
  %i.wp = add i64 %i.wo, 1
  call void @_ZdlPvm(ptr noundef %i.wm, i64 noundef %i.wp) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255.i: ; preds = %bb.go, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %common.resume

bb.gp:                                            ; preds = %.lr.ph311.i
  %i.wq = add nuw i64 %.0184310.i, 1              ; 2 uses
  %exitcond348.not.i = icmp eq i64 %i.wq, %i.tc
  br i1 %exitcond348.not.i, label %._crit_edge.i, label %.lr.ph311.i, !llvm.loop !781

bb.gq:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.wr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.wr, ptr %5, align 8, !tbaa !13
  %i.ws = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.ws, align 8, !tbaa !17
  store i8 0, ptr %i.wr, align 8, !tbaa !19
  %i.wt = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.584, ptr noundef nonnull @.str.585, i64 noundef %i.vo, i64 noundef %i.tc) #28 ; 2 uses
  %i.wu = icmp sgt i32 %i.wt, 0
  br i1 %i.wu, label %bb.gr, label %bb.gu

bb.gr:                                            ; preds = %bb.gq
  %i.wv = zext nneg i32 %i.wt to i64              ; 2 uses
  %i.ww = add nuw nsw i64 %i.wv, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.ww)
          to label %bb.gs unwind label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.wx = load ptr, ptr %5, align 8, !tbaa !20
  %i.wy = load i64, ptr %i.ws, align 8, !tbaa !17
  %i.wz = load ptr, ptr %i.lr, align 8, !tbaa !117
  %i.xa = load ptr, ptr %i.lq, align 8, !tbaa !113
  %i.xb = ptrtoint ptr %i.wz to i64
  %i.xc = ptrtoint ptr %i.xa to i64
  %i.xd = sub i64 %i.xb, %i.xc
  %i.xe = ashr exact i64 %i.xd, 3
  %i.xf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.wx, i64 noundef %i.wy, ptr noundef nonnull @.str.584, ptr noundef nonnull @.str.585, i64 noundef %i.xe, i64 noundef %i.tc) #28 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.wv)
          to label %bb.gu unwind label %bb.gt

bb.gt:                                            ; preds = %bb.gv, %bb.gs, %bb.gr
  %i.xg = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

bb.gu:                                            ; preds = %bb.gs, %bb.gq
  %i.xh = call ptr @__cxa_allocate_exception(i64 40) #28 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.xh, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faissL13validate_HNSWERKNS_4HNSWE, ptr noundef nonnull @.str.2, i32 noundef 1218)
          to label %bb.gv unwind label %bb.gw

bb.gv:                                            ; preds = %bb.gu
  invoke void @__cxa_throw(ptr nonnull %i.xh, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #30
          to label %bb.jj unwind label %bb.gt

bb.gw:                                            ; preds = %bb.gu
  %i.xi = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.xh) #28
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gt
  %.pn224.i = phi { ptr, i32 } [ %i.xg, %bb.gt ], [ %i.xi, %bb.gw ]
  %i.xj = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.xk = icmp eq ptr %i.xj, %i.wr
  br i1 %i.xk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256.i: ; preds = %bb.gx
  %i.xl = load i64, ptr %i.wr, align 8, !tbaa !19
  %i.xm = add i64 %i.xl, 1
  call void @_ZdlPvm(ptr noundef %i.xj, i64 noundef %i.xm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258.i: ; preds = %bb.gx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %common.resume

._crit_edge317.i:                                 ; preds = %bb.hn, %bb.gg, %.preheader283.i
  %i.xn = load i32, ptr %i.om, align 8, !tbaa !782 ; 2 uses
  %i.xo = trunc i64 %.pre-phi369.i to i32
  %i.xp = icmp slt i32 %i.xn, %i.xo
  br i1 %i.xp, label %bb.hw, label %bb.ho

.lr.ph316.i:                                      ; preds = %bb.gg, %bb.hn
  %.0183315.i = phi i64 [ %i.zu, %bb.hn ], [ 1, %bb.gg ] ; 7 uses
  %i.xq = getelementptr inbounds nuw [8 x i8], ptr %i.vk, i64 %.0183315.i
  %i.xr = load i64, ptr %i.xq, align 8, !tbaa !9  ; 4 uses
  %.not239.i = icmp ugt i64 %i.xr, %i.te
  br i1 %.not239.i, label %.loopexit352.i, label %bb.hf

.loopexit352.i:                                   ; preds = %.lr.ph316.i, %.lr.ph316.preheader.i
  %i.xs = phi i64 [ %i.vr, %.lr.ph316.preheader.i ], [ %i.xr, %.lr.ph316.i ]
  %.0183315.lcssa.i = phi i64 [ 0, %.lr.ph316.preheader.i ], [ %.0183315.i, %.lr.ph316.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.xt = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.xt, ptr %6, align 8, !tbaa !13
  %i.xu = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.xu, align 8, !tbaa !17
  store i8 0, ptr %i.xt, align 8, !tbaa !19
  %i.xv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.586, ptr noundef nonnull @.str.587, i64 noundef %.0183315.lcssa.i, i64 noundef %i.xs, i64 noundef %i.te) #28 ; 2 uses
  %i.xw = icmp sgt i32 %i.xv, 0
  br i1 %i.xw, label %bb.gy, label %bb.hb

bb.gy:                                            ; preds = %.loopexit352.i
  %i.xx = zext nneg i32 %i.xv to i64              ; 2 uses
  %i.xy = add nuw nsw i64 %i.xx, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.xy)
          to label %bb.gz unwind label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.xz = load ptr, ptr %6, align 8, !tbaa !20
  %i.ya = load i64, ptr %i.xu, align 8, !tbaa !17
  %i.yb = load ptr, ptr %i.lq, align 8, !tbaa !113
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr %i.yb, i64 %.0183315.lcssa.i
  %i.yd = load i64, ptr %i.yc, align 8, !tbaa !9
  %i.ye = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.xz, i64 noundef %i.ya, ptr noundef nonnull @.str.586, ptr noundef nonnull @.str.587, i64 noundef %.0183315.lcssa.i, i64 noundef %i.yd, i64 noundef %i.te) #28 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.xx)
          to label %bb.hb unwind label %bb.ha

bb.ha:                                            ; preds = %bb.hc, %bb.gz, %bb.gy
  %i.yf = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

bb.hb:                                            ; preds = %bb.gz, %.loopexit352.i
  %i.yg = call ptr @__cxa_allocate_exception(i64 40) #28 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.yg, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faissL13validate_HNSWERKNS_4HNSWE, ptr noundef nonnull @.str.2, i32 noundef 1225)
          to label %bb.hc unwind label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  invoke void @__cxa_throw(ptr nonnull %i.yg, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #30
          to label %bb.jj unwind label %bb.ha

bb.hd:                                            ; preds = %bb.hb
  %i.yh = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.yg) #28
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.ha
  %.pn240.i = phi { ptr, i32 } [ %i.yf, %bb.ha ], [ %i.yh, %bb.hd ]
  %i.yi = load ptr, ptr %6, align 8, !tbaa !20    ; 2 uses
  %i.yj = icmp eq ptr %i.yi, %i.xt
  br i1 %i.yj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259.i: ; preds = %bb.he
  %i.yk = load i64, ptr %i.xt, align 8, !tbaa !19
  %i.yl = add i64 %i.yk, 1
  call void @_ZdlPvm(ptr noundef %i.yi, i64 noundef %i.yl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261.i: ; preds = %bb.he, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %common.resume

bb.hf:                                            ; preds = %.lr.ph316.i
  %30 = add i64 %.0183315.i, -1                   ; 4 uses
  %31 = getelementptr inbounds nuw [8 x i8], ptr %i.vk, i64 %30
  %i.ym = load i64, ptr %31, align 8, !tbaa !9    ; 2 uses
  %32 = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %30
  %i.yn = load i32, ptr %32, align 4, !tbaa !21
  %i.yo = sext i32 %i.yn to i64
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.tf, i64 %i.yo
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !21 ; 2 uses
  %i.yr = sext i32 %i.yq to i64
  %i.ys = add i64 %i.ym, %i.yr
  %i.yt = icmp eq i64 %i.xr, %i.ys
  br i1 %i.yt, label %bb.hn, label %.loopexit353.i

.loopexit353.i:                                   ; preds = %bb.hf
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.yu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.yu, ptr %7, align 8, !tbaa !13
  %i.yv = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.yv, align 8, !tbaa !17
  store i8 0, ptr %i.yu, align 8, !tbaa !19
  %i.yw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.588, ptr noundef nonnull @.str.589, i64 noundef %.0183315.i, i64 noundef %i.ym, i32 noundef %i.yq, i64 noundef %i.xr) #28 ; 2 uses
  %i.yx = icmp sgt i32 %i.yw, 0
  br i1 %i.yx, label %bb.hg, label %bb.hj

bb.hg:                                            ; preds = %.loopexit353.i
  %i.yy = zext nneg i32 %i.yw to i64              ; 2 uses
  %i.yz = add nuw nsw i64 %i.yy, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.yz)
          to label %bb.hh unwind label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.za = load ptr, ptr %7, align 8, !tbaa !20
  %i.zb = load i64, ptr %i.yv, align 8, !tbaa !17
  %i.zc = load ptr, ptr %i.lq, align 8, !tbaa !113 ; 2 uses
  %33 = getelementptr inbounds nuw [8 x i8], ptr %i.zc, i64 %30
  %i.zd = load i64, ptr %33, align 8, !tbaa !9
  %i.ze = load ptr, ptr %i.ic, align 8, !tbaa !62
  %34 = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %30
  %i.zf = load i32, ptr %34, align 4, !tbaa !21
  %i.zg = sext i32 %i.zf to i64
  %i.zh = load ptr, ptr %i.eo, align 8, !tbaa !62
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %i.zh, i64 %i.zg
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !21
  %i.zk = getelementptr inbounds nuw [8 x i8], ptr %i.zc, i64 %.0183315.i
  %i.zl = load i64, ptr %i.zk, align 8, !tbaa !9
  %i.zm = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.za, i64 noundef %i.zb, ptr noundef nonnull @.str.588, ptr noundef nonnull @.str.589, i64 noundef %.0183315.i, i64 noundef %i.zd, i32 noundef %i.zj, i64 noundef %i.zl) #28 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.yy)
          to label %bb.hj unwind label %bb.hi

bb.hi:                                            ; preds = %bb.hk, %bb.hh, %bb.hg
  %i.zn = landingpad { ptr, i32 }
          cleanup
  br label %bb.hm

bb.hj:                                            ; preds = %bb.hh, %.loopexit353.i
  %i.zo = call ptr @__cxa_allocate_exception(i64 40) #28 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.zo, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faissL13validate_HNSWERKNS_4HNSWE, ptr noundef nonnull @.str.2, i32 noundef 1236)
          to label %bb.hk unwind label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  invoke void @__cxa_throw(ptr nonnull %i.zo, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #30
          to label %bb.jj unwind label %bb.hi

bb.hl:                                            ; preds = %bb.hj
  %i.zp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.zo) #28
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hi
  %.pn243.i = phi { ptr, i32 } [ %i.zn, %bb.hi ], [ %i.zp, %bb.hl ]
  %i.zq = load ptr, ptr %7, align 8, !tbaa !20    ; 2 uses
  %i.zr = icmp eq ptr %i.zq, %i.yu
  br i1 %i.zr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262.i: ; preds = %bb.hm
  %i.zs = load i64, ptr %i.yu, align 8, !tbaa !19
  %i.zt = add i64 %i.zs, 1
  call void @_ZdlPvm(ptr noundef %i.zq, i64 noundef %i.zt) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264.i: ; preds = %bb.hm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %common.resume

bb.hn:                                            ; preds = %bb.hf
  %i.zu = add nuw i64 %.0183315.i, 1              ; 2 uses
  %exitcond350.not.i = icmp eq i64 %i.zu, %i.vo
  br i1 %exitcond350.not.i, label %._crit_edge317.i, label %.lr.ph316.i, !llvm.loop !783

bb.ho:                                            ; preds = %._crit_edge317.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.zv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.zv, ptr %8, align 8, !tbaa !13
  %i.zw = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.zw, align 8, !tbaa !17
  store i8 0, ptr %i.zv, align 8, !tbaa !19
  %i.zx = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.590, ptr noundef nonnull @.str.591, i32 noundef %i.xn, i64 noundef %.pre-phi369.i) #28 ; 2 uses
  %i.zy = icmp sgt i32 %i.zx, 0
  br i1 %i.zy, label %bb.hp, label %bb.hs

bb.hp:                                            ; preds = %bb.ho
  %i.zz = zext nneg i32 %i.zx to i64              ; 2 uses
  %i.aaa = add nuw nsw i64 %i.zz, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.aaa)
          to label %bb.hq unwind label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.aab = load ptr, ptr %8, align 8, !tbaa !20
  %i.aac = load i64, ptr %i.zw, align 8, !tbaa !17
  %i.aad = load i32, ptr %i.om, align 8, !tbaa !782
  %i.aae = load ptr, ptr %i.ep, align 8, !tbaa !92
  %i.aaf = load ptr, ptr %i.eo, align 8, !tbaa !62
  %i.aag = ptrtoint ptr %i.aae to i64
  %i.aah = ptrtoint ptr %i.aaf to i64
  %i.aai = sub i64 %i.aag, %i.aah
  %i.aaj = ashr exact i64 %i.aai, 2
  %i.aak = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.aab, i64 noundef %i.aac, ptr noundef nonnull @.str.590, ptr noundef nonnull @.str.591, i32 noundef %i.aad, i64 noundef %i.aaj) #28 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.zz)
          to label %bb.hs unwind label %bb.hr

bb.hr:                                            ; preds = %bb.ht, %bb.hq, %bb.hp
  %i.aal = landingpad { ptr, i32 }
          cleanup
  br label %bb.hv

bb.hs:                                            ; preds = %bb.hq, %bb.ho
  %i.aam = call ptr @__cxa_allocate_exception(i64 40) #28 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.aam, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faissL13validate_HNSWERKNS_4HNSWE, ptr noundef nonnull @.str.2, i32 noundef 1245)
          to label %bb.ht unwind label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  invoke void @__cxa_throw(ptr nonnull %i.aam, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #30
          to label %bb.jj unwind label %bb.hr

bb.hu:                                            ; preds = %bb.hs
  %i.aan = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aam) #28
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.hr
  %.pn226.i = phi { ptr, i32 } [ %i.aal, %bb.hr ], [ %i.aan, %bb.hu ]
  %i.aao = load ptr, ptr %8, align 8, !tbaa !20   ; 2 uses
  %i.aap = icmp eq ptr %i.aao, %i.zv
  br i1 %i.aap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265.i: ; preds = %bb.hv
  %i.aaq = load i64, ptr %i.zv, align 8, !tbaa !19
  %i.aar = add i64 %i.aaq, 1
  call void @_ZdlPvm(ptr noundef %i.aao, i64 noundef %i.aar) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267.i: ; preds = %bb.hv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %common.resume

bb.hw:                                            ; preds = %._crit_edge317.i
  %i.aas = load i32, ptr %i.nj, align 8, !tbaa !785 ; 3 uses
  %i.aat = icmp sgt i32 %i.aas, -2
  br i1 %i.aat, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  %i.aau = trunc i64 %i.tc to i32                 ; 2 uses
  %i.aav = icmp slt i32 %i.aas, %i.aau
  br i1 %i.aav, label %.preheader282.i, label %bb.hy

.preheader282.i:                                  ; preds = %bb.hx
  %.not327.i = icmp eq i64 %i.te, 0
  br i1 %.not327.i, label %.preheader.i, label %.lr.ph319.i

.lr.ph319.i:                                      ; preds = %.preheader282.i
  %i.aaw = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !786
  br label %bb.ig

bb.hy:                                            ; preds = %bb.hx, %bb.hw
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.aay = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.aay, ptr %9, align 8, !tbaa !13
  %i.aaz = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 0, ptr %i.aaz, align 8, !tbaa !17
  store i8 0, ptr %i.aay, align 8, !tbaa !19
  %i.aba = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.592, ptr noundef nonnull @.str.593, i32 noundef %i.aas, i64 noundef %i.tc) #28 ; 2 uses
  %i.abb = icmp sgt i32 %i.aba, 0
  br i1 %i.abb, label %bb.hz, label %bb.ic

bb.hz:                                            ; preds = %bb.hy
  %i.abc = zext nneg i32 %i.aba to i64            ; 2 uses
  %i.abd = add nuw nsw i64 %i.abc, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.abd)
          to label %bb.ia unwind label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  %i.abe = load ptr, ptr %9, align 8, !tbaa !20
  %i.abf = load i64, ptr %i.aaz, align 8, !tbaa !17
  %i.abg = load i32, ptr %i.nj, align 8, !tbaa !785
  %i.abh = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.abe, i64 noundef %i.abf, ptr noundef nonnull @.str.592, ptr noundef nonnull @.str.593, i32 noundef %i.abg, i64 noundef %i.tc) #28 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.abc)
          to label %bb.ic unwind label %bb.ib

bb.ib:                                            ; preds = %bb.id, %bb.ia, %bb.hz
  %i.abi = landingpad { ptr, i32 }
          cleanup
  br label %bb.if

bb.ic:                                            ; preds = %bb.ia, %bb.hy
  %i.abj = call ptr @__cxa_allocate_exception(i64 40) #28 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.abj, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faissL13validate_HNSWERKNS_4HNSWE, ptr noundef nonnull @.str.2, i32 noundef 1252)
          to label %bb.id unwind label %bb.ie

bb.id:                                            ; preds = %bb.ic
  invoke void @__cxa_throw(ptr nonnull %i.abj, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #30
          to label %bb.jj unwind label %bb.ib

bb.ie:                                            ; preds = %bb.ic
  %i.abk = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.abj) #28
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.ib
  %.pn228.i = phi { ptr, i32 } [ %i.abi, %bb.ib ], [ %i.abk, %bb.ie ]
  %i.abl = load ptr, ptr %9, align 8, !tbaa !20   ; 2 uses
  %i.abm = icmp eq ptr %i.abl, %i.aay
  br i1 %i.abm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i268.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i268.i: ; preds = %bb.if
  %i.abn = load i64, ptr %i.aay, align 8, !tbaa !19
  %i.abo = add i64 %i.abn, 1
  call void @_ZdlPvm(ptr noundef %i.abl, i64 noundef %i.abo) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit270.i: ; preds = %bb.if, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i268.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %common.resume

.preheader.i:                                     ; preds = %bb.ip, %.preheader282.i
  br i1 %.not325.i, label %_ZN5faissL13validate_HNSWERKNS_4HNSWE.exit, label %.lr.ph322.i
end_hunk_0
