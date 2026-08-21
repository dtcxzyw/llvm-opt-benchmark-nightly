inline.NumInlined: 1343
inline.NumDeleted: 507
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK6casadi6Switch12codegen_bodyERNS_13CodeGeneratorE:bb.a
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 4 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !25
  %i.cy = load ptr, ptr %i.cv, align 8, !tbaa !27
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = icmp eq i64 %i.db, 8                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.dd, ptr %9, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.dd, ptr noundef nonnull align 1 dereferenceable(11) @.str.28, i64 11, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 11, ptr %i.de, align 8, !tbaa !33
  %i.df = getelementptr inbounds nuw i8, ptr %9, i64 27
  store i8 0, ptr %i.df, align 1, !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.dg = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #23
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i unwind label %bb.k ; 3 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i: ; preds = %._crit_edge.i.i197
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.dg, ptr %8, align 8, !tbaa !44
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !48
  %i.dk = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %9, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.dg)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i, %._crit_edge.i.i197
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dm = load ptr, ptr %8, align 8, !tbaa !44    ; 3 uses
  %.not.i.i5.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i5.i, label %.body, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !48
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dr) #22
  br label %.body

bb.m:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.dk, ptr %i.ds, align 8, !tbaa !46
  invoke void @_ZN6casadi13CodeGenerator13add_auxiliaryENS0_9AuxiliaryERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(3289) %1, i32 noundef 50, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.dt = load ptr, ptr %8, align 8, !tbaa !44    ; 3 uses
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !46 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.dt, %i.du
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ea, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.dt, %bb.n ] ; 3 uses
  %i.dv = load ptr, ptr %.05.i.i.i, align 8, !tbaa !19 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !24
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ea, %i.du
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !47

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !44
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.n
  %i.eb = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.dt, %bb.n ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ec = load ptr, ptr %i.dj, align 8, !tbaa !48
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.eb to i64
  %i.ef = sub i64 %i.ed, %i.ee
  call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.ef) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.o
  %i.eg = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ej = load i64, ptr %i.eh, align 8, !tbaa !24
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ek) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.el = select i1 %i.dc, ptr @.str.29, ptr @.str.30
  %i.em = call noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull %i.el)
  %i.en = call noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.em, ptr noundef nonnull @.str.31) ; 0 uses
  %i.eo = load ptr, ptr %i.cw, align 8, !tbaa !25
  %i.ep = load ptr, ptr %i.cv, align 8, !tbaa !27
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 3
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ex = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.fx = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.fz = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 7 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 7 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %10, i64 17
  %i.gk = getelementptr inbounds nuw i8, ptr %11, i64 27
  %i.gl = getelementptr inbounds nuw i8, ptr %12, i64 17
  %i.gm = getelementptr inbounds nuw i8, ptr %17, i64 17
  %i.gn = getelementptr inbounds nuw i8, ptr %18, i64 17
  %i.go = getelementptr inbounds nuw i8, ptr %22, i64 18
  %i.gp = getelementptr inbounds nuw i8, ptr %23, i64 17
  %i.gq = getelementptr inbounds nuw i8, ptr %24, i64 17
  %i.gr = getelementptr inbounds nuw i8, ptr %30, i64 17
  br label %bb.r

bb.p:                                             ; preds = %bb.bp
  %i.gs = call noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull @.str.57) ; 0 uses
  ret void

bb.q:                                             ; preds = %bb.m
  %i.gt = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #20
  br label %.body

.body:                                            ; preds = %bb.l, %bb.k, %bb.q
  %.pn113 = phi { ptr, i32 } [ %i.gt, %bb.q ], [ %i.dl, %bb.k ], [ %i.dl, %bb.l ]
  %i.gu = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.gw = icmp eq ptr %i.gu, %i.gv
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205: ; preds = %.body
  %i.gx = load i64, ptr %i.gv, align 8, !tbaa !24
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gy) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.bq

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, %bb.bp
  %i.gz = phi i64 [ %i.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204 ], [ %i.tj, %bb.bp ]
  %.068583 = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204 ], [ %i.td, %bb.bp ] ; 7 uses
  %i.ha = sub nsw i64 1, %.068583
  %i.hb = select i1 %i.dc, i64 %i.ha, i64 %.068583 ; 2 uses
  br i1 %i.dc, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hc = icmp ult i64 %.068583, %i.gz
  br i1 %i.hc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.hd = call noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull @.str.32)
  %i.he = call noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIxEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.hd, i64 noundef %.068583)
  %i.hf = call noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.he, ptr noundef nonnull @.str.33) ; 0 uses
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.hg = call noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull @.str.34) ; 0 uses
  br label %bb.x

bb.v:                                             ; preds = %bb.r
  %i.hh = icmp eq i64 %.068583, 1
  br i1 %i.hh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.hi = call noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull @.str.35) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.t, %bb.u
  %i.hj = load ptr, ptr %i.cw, align 8, !tbaa !25
  %i.hk = load ptr, ptr %i.cv, align 8, !tbaa !27 ; 2 uses
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = ptrtoint ptr %i.hk to i64
  %i.hn = sub i64 %i.hl, %i.hm
  %i.ho = ashr exact i64 %i.hn, 3
  %i.hp = icmp ult i64 %i.hb, %i.ho
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.hb
  %i.hr = select i1 %i.hp, ptr %i.hq, ptr %i.eu   ; 5 uses
  %i.hs = call noundef zeroext i1 @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE7is_nullEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hr)
  br i1 %i.hs, label %.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 0, ptr %i.a, align 8, !tbaa !159
  %i.ht = load i64, ptr %i.ev, align 8, !tbaa !150
  %.not584 = icmp eq i64 %i.ht, 1
  br i1 %.not584, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.aq, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.hu = load i64, ptr %i.fn, align 8, !tbaa !151
  %.not585 = icmp eq i64 %i.hu, 0
  br i1 %.not585, label %._crit_edge.i.i289, label %.lr.ph579

.lr.ph:                                           ; preds = %bb.y, %bb.aq
  %storemerge576 = phi i64 [ %i.mo, %bb.aq ], [ 0, %bb.y ]
  %i.hv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi8Function11sparsity_inEx(ptr noundef nonnull align 8 dereferenceable(8) %i.hr, i64 noundef %storemerge576) ; 4 uses
  %i.hw = load i64, ptr %i.a, align 8, !tbaa !159
  %i.hx = load ptr, ptr %i.ew, align 8, !tbaa !152
  %i.hy = getelementptr [8 x i8], ptr %i.hx, i64 %i.hw
  %i.hz = getelementptr i8, ptr %i.hy, i64 8      ; 2 uses
  %i.ia = call noundef zeroext i1 @_ZNK6casadi8Sparsity8is_equalERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.hv, ptr noundef nonnull align 8 dereferenceable(8) %i.hz)
  br i1 %i.ia, label %bb.aq, label %bb.z

bb.z:                                             ; preds = %.lr.ph
  %i.ib = call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hv)
  %i.ic = icmp eq i64 %i.ib, 0
  br i1 %i.ic, label %bb.aa, label %._crit_edge.i.i208

bb.aa:                                            ; preds = %bb.z
  %i.id = call noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull @.str.37)
  %i.ie = load i64, ptr %i.a, align 8, !tbaa !159
  %i.if = call noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIxEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.id, i64 noundef %i.ie)
  %i.ig = call noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.if, ptr noundef nonnull @.str.38) ; 0 uses
  br label %bb.aq

._crit_edge.i.i208:                               ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store ptr %i.ex, ptr %10, align 8, !tbaa !34
  store i8 116, ptr %i.ex, align 8, !tbaa !24
  store i64 1, ptr %i.ey, align 8, !tbaa !33
  store i8 0, ptr %i.gj, align 1, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  store ptr %i.ez, ptr %11, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.ez, ptr noundef nonnull align 1 dereferenceable(11) @.str.28, i64 11, i1 false)
  store i64 11, ptr %i.fa, align 8, !tbaa !33
  store i8 0, ptr %i.gk, align 1, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  store ptr %i.fb, ptr %12, align 8, !tbaa !34
  store i8 42, ptr %i.fb, align 8, !tbaa !24
  store i64 1, ptr %i.fc, align 8, !tbaa !33
  store i8 0, ptr %i.gl, align 1, !tbaa !24
  invoke void @_ZN6casadi13CodeGenerator5localERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.ab unwind label %bb.am

bb.ab:                                            ; preds = %._crit_edge.i.i208
  %i.ih = load ptr, ptr %12, align 8, !tbaa !19   ; 2 uses
  %i.ii = icmp eq ptr %i.ih, %i.fb
  br i1 %i.ii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220: ; preds = %bb.ab
  %i.ij = load i64, ptr %i.fb, align 8, !tbaa !24
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.ik) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.il = load ptr, ptr %11, align 8, !tbaa !19   ; 2 uses
  %i.im = icmp eq ptr %i.il, %i.ez
  br i1 %i.im, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222
  %i.in = load i64, ptr %i.ez, align 8, !tbaa !24
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.il, i64 noundef %i.io) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.ip = load ptr, ptr %10, align 8, !tbaa !19   ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.ex
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225
  %i.ir = load i64, ptr %i.ex, align 8, !tbaa !24
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.is) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.it = call noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull @.str.41)
  %i.iu = call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hv)
  %i.iv = call noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIxEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.it, i64 noundef %i.iu)
  %i.iw = call noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.iv, ptr noundef nonnull @.str.23)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @_ZN6casadi3strIxEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.ix = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.37, i64 noundef 5)
          to label %.noexc230 unwind label %bb.an ; 6 uses

.noexc230:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228
  store ptr %i.fd, ptr %15, align 8, !tbaa !34, !alias.scope !242
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !19 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 16 ; 5 uses
  %i.ja = icmp eq ptr %i.iy, %i.iz
  br i1 %i.ja, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229

bb.ac:                                            ; preds = %.noexc230
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !33 ; 3 uses
  %i.jd = icmp ult i64 %i.jc, 16
  call void @llvm.assume(i1 %i.jd)
  %i.je = add nuw nsw i64 %i.jc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fd, ptr noundef nonnull align 8 dereferenceable(1) %i.iz, i64 %i.je, i1 false)
  br label %bb.ad

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229: ; preds = %.noexc230
  store ptr %i.iy, ptr %15, align 8, !tbaa !19, !alias.scope !242
  %i.jf = load i64, ptr %i.iz, align 8, !tbaa !24
  store i64 %i.jf, ptr %i.fd, align 8, !tbaa !24, !alias.scope !242
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !33
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229, %bb.ac
  %i.jg = phi i64 [ %i.jc, %bb.ac ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229 ]
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  store i64 %i.jg, ptr %i.fe, align 8, !tbaa !33, !alias.scope !242
  store ptr %i.iz, ptr %i.ix, align 8, !tbaa !19
  store i64 0, ptr %i.jh, align 8, !tbaa !33
  store i8 0, ptr %i.iz, align 8, !tbaa !24
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %i.ji = load i64, ptr %i.fe, align 8, !tbaa !33, !noalias !245
  %i.jj = icmp eq i64 %i.ji, 4611686018427387903
  br i1 %i.jj, label %bb.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #21
          to label %.noexc234 unwind label %.loopexit.split-lp416

.noexc234:                                        ; preds = %bb.ae
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.ad
  %i.jk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.42, i64 noundef 1)
          to label %.noexc235 unwind label %.loopexit415 ; 6 uses

.noexc235:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.ff, ptr %14, align 8, !tbaa !34, !alias.scope !245
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !19 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 16 ; 5 uses
  %i.jn = icmp eq ptr %i.jl, %i.jm
  br i1 %i.jn, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231

bb.af:                                            ; preds = %.noexc235
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !33 ; 3 uses
  %i.jq = icmp ult i64 %i.jp, 16
  call void @llvm.assume(i1 %i.jq)
end_hunk_0
