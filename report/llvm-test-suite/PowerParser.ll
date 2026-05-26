inline.NumInlined: 5334
inline.NumDeleted: 1210
begin_hunk_0_@_ZN2PP11PowerParser15get_rb_varnamesERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE:bb.a
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !446 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !446
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 3
  %i.bv = icmp ne ptr %i.bo, null
  %.neg.i.i.i = sext i1 %i.bv to i64
  %i.bw = add nsw i64 %i.bu, %.neg.i.i.i
  %i.bx = shl nsw i64 %i.bw, 2
  %i.by = load ptr, ptr %i.bl, align 8, !tbaa !450
  %i.bz = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i, i64 56
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !451
  %i.cb = ptrtoint ptr %i.by to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = lshr exact i64 %i.cd, 7
  %i.cf = add nsw i64 %i.bx, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !452
  %i.ci = load ptr, ptr %i.bm, align 8, !tbaa !450
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = lshr exact i64 %i.cl, 7
  %i.cn = add nsw i64 %i.cf, %i.cm                ; 2 uses
  %i.co = trunc i64 %i.cn to i32
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNSt5dequeIN2PP12RestartblockESaIS1_EEixEm.exit
  %wide.trip.count = and i64 %i.cn, 2147483647
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt5dequeIN2PP12RestartblockESaIS1_EEixEm.exit
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1
  br label %bb.b, !llvm.loop !1440

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.cq = load ptr, ptr %i.m, align 8, !tbaa !411, !noalias !1441 ; 2 uses
  %i.cr = load ptr, ptr %i.r, align 8, !tbaa !415, !noalias !1441
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = sdiv exact i64 %i.cu, 520
  %i.cw = add nsw i64 %i.cv, %indvars.iv113       ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.cy = getelementptr inbounds nuw [520 x i8], ptr %i.cq, i64 %indvars.iv113
  br label %_ZNSt5dequeIN2PP12RestartblockESaIS1_EEixEm.exit28

bb.g:                                             ; preds = %.lr.ph
  %i.cz = load ptr, ptr %i.o, align 8, !tbaa !417, !noalias !1441
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.cw
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !351, !noalias !1441
  br label %_ZNSt5dequeIN2PP12RestartblockESaIS1_EEixEm.exit28

_ZNSt5dequeIN2PP12RestartblockESaIS1_EEixEm.exit28: ; preds = %bb.f, %bb.g
  %storemerge.i.i.i.i27 = phi ptr [ %i.db, %bb.g ], [ %i.cy, %bb.f ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1444)
  %i.dc = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i27, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !450, !noalias !1447 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i27, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !451, !noalias !1447
  %i.dg = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i27, i64 40
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !446, !noalias !1447
  %i.di = ptrtoint ptr %i.dd to i64
  %i.dj = ptrtoint ptr %i.df to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = ashr exact i64 %i.dk, 7
  %i.dm = add nsw i64 %i.dl, %indvars.iv          ; 5 uses
  %i.dn = icmp sgt i64 %i.dm, -1
  br i1 %i.dn, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZNSt5dequeIN2PP12RestartblockESaIS1_EEixEm.exit28
  %i.do = icmp samesign ult i64 %i.dm, 4
  br i1 %i.do, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dp = getelementptr inbounds nuw [128 x i8], ptr %i.dd, i64 %indvars.iv
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit.i

bb.j:                                             ; preds = %bb.h
  %i.dq = lshr i64 %i.dm, 2
  br label %bb.l

bb.k:                                             ; preds = %_ZNSt5dequeIN2PP12RestartblockESaIS1_EEixEm.exit28
  %i.dr = ashr i64 %i.dm, 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ds = phi i64 [ %i.dq, %bb.j ], [ %i.dr, %bb.k ] ; 2 uses
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.ds
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !456, !noalias !1447
  %i.dv = shl nsw i64 %i.ds, 2
  %i.dw = sub nsw i64 %i.dm, %i.dv
  %i.dx = getelementptr inbounds [128 x i8], ptr %i.du, i64 %i.dw
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit.i

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit.i:        ; preds = %bb.l, %bb.i
  %storemerge.i.i.i.i.i = phi ptr [ %i.dx, %bb.l ], [ %i.dp, %bb.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  store ptr %i.s, ptr %2, align 8, !tbaa !123, !alias.scope !1453
  %i.dy = load ptr, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !27, !noalias !1450 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i.i, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !32, !noalias !1450 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29, !noalias !1453
  store i64 %i.ea, ptr %i.b, align 8, !tbaa !124, !noalias !1453
  %i.eb = icmp ugt i64 %i.ea, 15
  br i1 %i.eb, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit.i
  %i.ec = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.ec, ptr %2, align 8, !tbaa !27, !alias.scope !1453
  %i.ed = load i64, ptr %i.b, align 8, !tbaa !124, !noalias !1453
  store i64 %i.ed, ptr %i.s, align 8, !tbaa !33, !alias.scope !1453
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit.i
  %i.ee = phi ptr [ %i.ec, %.noexc.i.i.i ], [ %i.s, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit.i ] ; 2 uses
  switch i64 %i.ea, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZN2PP12Restartblock11get_varnameB5cxx11Ei.exit
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ef = load i8, ptr %i.dy, align 1, !tbaa !33
  store i8 %i.ef, ptr %i.ee, align 1, !tbaa !33
  br label %_ZN2PP12Restartblock11get_varnameB5cxx11Ei.exit

bb.n:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ee, ptr align 1 %i.dy, i64 %i.ea, i1 false)
  br label %_ZN2PP12Restartblock11get_varnameB5cxx11Ei.exit

_ZN2PP12Restartblock11get_varnameB5cxx11Ei.exit:  ; preds = %._crit_edge.i.i.i.i, %bb.m, %bb.n
  %i.eg = load i64, ptr %i.b, align 8, !tbaa !124, !noalias !1453 ; 2 uses
  store i64 %i.eg, ptr %i.t, align 8, !tbaa !32, !alias.scope !1453
  %i.eh = load ptr, ptr %2, align 8, !tbaa !27, !alias.scope !1453
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.eg
  store i8 0, ptr %i.ei, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29, !noalias !1453
  %i.ej = load ptr, ptr %i.d, align 8, !tbaa !323 ; 8 uses
  %i.ek = load ptr, ptr %i.u, align 8, !tbaa !325
  %.not.i.i29 = icmp eq ptr %i.ej, %i.ek
  br i1 %.not.i.i29, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZN2PP12Restartblock11get_varnameB5cxx11Ei.exit
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 3 uses
  store ptr %i.el, ptr %i.ej, align 8, !tbaa !123
  %i.em = load ptr, ptr %2, align 8, !tbaa !27    ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.s
  br i1 %i.en, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.eo = load i64, ptr %i.t, align 8, !tbaa !32  ; 3 uses
  %i.ep = icmp ult i64 %i.eo, 16
  call void @llvm.assume(i1 %i.ep)
  %i.eq = add nuw nsw i64 %i.eo, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.el, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.eq, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.o
  store ptr %i.em, ptr %i.ej, align 8, !tbaa !27
  %i.er = load i64, ptr %i.s, align 8, !tbaa !33
  store i64 %i.er, ptr %i.el, align 8, !tbaa !33
  %.pre125 = load i64, ptr %i.t, align 8, !tbaa !32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.es = phi i64 [ %.pre125, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.eo, %bb.p ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i64 %i.es, ptr %i.et, align 8, !tbaa !32
  store ptr %i.s, ptr %2, align 8, !tbaa !27
  store i64 0, ptr %i.t, align 8, !tbaa !32
  %i.eu = load ptr, ptr %i.d, align 8, !tbaa !323
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  store ptr %i.ev, ptr %i.d, align 8, !tbaa !323
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.q:                                             ; preds = %_ZN2PP12Restartblock11get_varnameB5cxx11Ei.exit
  %i.ew = load ptr, ptr %1, align 8, !tbaa !321   ; 5 uses
  %i.ex = ptrtoint ptr %i.ej to i64
  %i.ey = ptrtoint ptr %i.ew to i64               ; 2 uses
  %i.ez = sub i64 %i.ex, %i.ey                    ; 3 uses
  %i.fa = icmp eq i64 %i.ez, 9223372036854775776
  br i1 %i.fa, label %bb.r, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.243) #30
          to label %.noexc57 unwind label %.loopexit.split-lp94

.noexc57:                                         ; preds = %bb.r
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.q
  %i.fb = ashr exact i64 %i.ez, 5                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.fb, i64 1)
  %i.fc = add nsw i64 %.sroa.speculated.i.i, %i.fb ; 2 uses
  %4 = icmp ult i64 %i.fc, %i.fb
  %i.fd = call i64 @llvm.umin.i64(i64 %i.fc, i64 288230376151711743)
  %5 = select i1 %4, i64 288230376151711743, i64 %i.fd ; 3 uses
  %.not.i.i53 = icmp eq i64 %5, 0
  br i1 %.not.i.i53, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.fe = shl nuw nsw i64 %5, 5
  %i.ff = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fe) #31
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i unwind label %.loopexit93

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.s, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.fg = phi ptr [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ %i.ff, %bb.s ] ; 5 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.ez ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 3 uses
  store ptr %i.fi, ptr %i.fh, align 8, !tbaa !123
  %i.fj = load ptr, ptr %2, align 8, !tbaa !27    ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.s
  br i1 %i.fk, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

bb.t:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i
  %i.fl = load i64, ptr %i.t, align 8, !tbaa !32  ; 3 uses
  %i.fm = icmp ult i64 %i.fl, 16
  call void @llvm.assume(i1 %i.fm)
  %i.fn = add nuw nsw i64 %i.fl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fi, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.fn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i
  store ptr %i.fj, ptr %i.fh, align 8, !tbaa !27
  %i.fo = load i64, ptr %i.s, align 8, !tbaa !33
  store i64 %i.fo, ptr %i.fi, align 8, !tbaa !33
  %.pre.i = load i64, ptr %i.t, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %bb.t
  %i.fp = phi i64 [ %i.fl, %bb.t ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ]
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !32
  store ptr %i.s, ptr %2, align 8, !tbaa !27
  store i64 0, ptr %i.t, align 8, !tbaa !32
  store i8 0, ptr %i.s, align 8, !tbaa !33
  %.not10.i.i.i.i = icmp eq ptr %i.ew, %i.ej
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i, label %.lr.ph.i.i.i.i55

.lr.ph.i.i.i.i55:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ge, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.gd, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.ew, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1454)
  call void @llvm.experimental.noalias.scope.decl(metadata !1457)
  %i.fr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.fr, ptr %.012.i.i.i.i, align 8, !tbaa !123, !alias.scope !1454, !noalias !1457
  %i.fs = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !27, !alias.scope !1457, !noalias !1454 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.u:                                             ; preds = %.lr.ph.i.i.i.i55
  %i.fv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !32, !alias.scope !1457, !noalias !1454 ; 3 uses
  %i.fx = icmp ult i64 %i.fw, 16
  call void @llvm.assume(i1 %i.fx)
  %i.fy = add nuw nsw i64 %i.fw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fr, ptr noundef nonnull align 8 dereferenceable(1) %i.ft, i64 %i.fy, i1 false), !alias.scope !1459
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i55
  store ptr %i.fs, ptr %.012.i.i.i.i, align 8, !tbaa !27, !alias.scope !1454, !noalias !1457
  %i.fz = load i64, ptr %i.ft, align 8, !tbaa !33, !alias.scope !1457, !noalias !1454
  store i64 %i.fz, ptr %i.fr, align 8, !tbaa !33, !alias.scope !1454, !noalias !1457
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !32, !alias.scope !1457, !noalias !1454
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.u
  %i.ga = phi i64 [ %i.fw, %bb.u ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.gb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.ga, ptr %i.gc, align 8, !tbaa !32, !alias.scope !1454, !noalias !1457
  store ptr %i.ft, ptr %.0911.i.i.i.i, align 8, !tbaa !27, !alias.scope !1457, !noalias !1454
  store i64 0, ptr %i.gb, align 8, !tbaa !32, !alias.scope !1457, !noalias !1454
  store i8 0, ptr %i.ft, align 8, !tbaa !33, !alias.scope !1457, !noalias !1454
  %i.gd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i56 = icmp eq ptr %i.gd, %i.ej
  br i1 %.not.i.i.i.i56, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i, label %.lr.ph.i.i.i.i55, !llvm.loop !1460

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ], [ %i.ge, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.gf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32
  %.not.i27.i = icmp eq ptr %i.ew, null
  br i1 %.not.i27.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i
  %i.gg = load ptr, ptr %i.u, align 8, !tbaa !325
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = sub i64 %i.gh, %i.ey
  call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef %i.gi) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i, %bb.v
  store ptr %i.fg, ptr %1, align 8, !tbaa !321
  store ptr %i.gf, ptr %i.d, align 8, !tbaa !323
  %i.gj = getelementptr inbounds nuw [32 x i8], ptr %i.fg, i64 %5
  store ptr %i.gj, ptr %i.u, align 8, !tbaa !325
  %.pre126 = load ptr, ptr %2, align 8, !tbaa !27 ; 2 uses
  %i.gk = icmp eq ptr %.pre126, %i.s
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.gl = load i64, ptr %i.s, align 8, !tbaa !33
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %.pre126, i64 noundef %i.gm) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1461

.loopexit93:                                      ; preds = %bb.s
  %lpad.loopexit95 = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp94:                             ; preds = %bb.r
  %lpad.loopexit.split-lp96 = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp94, %.loopexit93
  %lpad.phi97 = phi { ptr, i32 } [ %lpad.loopexit95, %.loopexit93 ], [ %lpad.loopexit.split-lp96, %.loopexit.split-lp94 ]
  %i.gn = load ptr, ptr %2, align 8, !tbaa !27    ; 2 uses
  %i.go = icmp eq ptr %i.gn, %i.s
  br i1 %i.go, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.w
  %i.gp = load i64, ptr %i.s, align 8, !tbaa !33
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.au

bb.x:                                             ; preds = %.preheader, %._crit_edge110
  %indvars.iv121 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next122, %._crit_edge110 ] ; 6 uses
  %i.gr = load ptr, ptr %i.av, align 8, !tbaa !368 ; 2 uses
  %i.gs = load ptr, ptr %i.aw, align 8, !tbaa !368 ; 2 uses
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = ptrtoint ptr %i.gs to i64
  %i.gv = sub i64 %i.gt, %i.gu
  %i.gw = lshr exact i64 %i.gv, 3
  %i.gx = icmp ne ptr %i.gr, null
  %.neg.i.i33 = sext i1 %i.gx to i64
  %i.gy = add nsw i64 %i.gw, %.neg.i.i33
  %i.gz = load ptr, ptr %i.at, align 8, !tbaa !363
  %i.ha = load ptr, ptr %i.ax, align 8, !tbaa !372
  %i.hb = ptrtoint ptr %i.gz to i64
  %i.hc = ptrtoint ptr %i.ha to i64
  %i.hd = sub i64 %i.hb, %i.hc
  %i.he = sdiv exact i64 %i.hd, 568
  %i.hf = add nsw i64 %i.gy, %i.he
  %i.hg = load ptr, ptr %i.ay, align 8, !tbaa !367
  %i.hh = load ptr, ptr %i.au, align 8, !tbaa !363 ; 2 uses
  %i.hi = ptrtoint ptr %i.hg to i64
  %i.hj = ptrtoint ptr %i.hh to i64               ; 2 uses
  %i.hk = sub i64 %i.hi, %i.hj
  %i.hl = sdiv exact i64 %i.hk, 568
  %i.hm = add nsw i64 %i.hf, %i.hl
  %sext176 = shl i64 %i.hm, 32
  %i.hn = ashr exact i64 %sext176, 32
  %i.ho = icmp slt i64 %indvars.iv121, %i.hn
  br i1 %i.ho, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  ret void

bb.z:                                             ; preds = %bb.x
  %i.hp = load ptr, ptr %i.az, align 8, !tbaa !372, !noalias !1462
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = sub i64 %i.hj, %i.hq
  %i.hs = sdiv exact i64 %i.hr, 568
  %i.ht = add nsw i64 %i.hs, %indvars.iv121       ; 2 uses
  %i.hu = icmp eq i64 %i.ht, 0
  br i1 %i.hu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.hv = getelementptr inbounds nuw [568 x i8], ptr %i.hh, i64 %indvars.iv121
  br label %_ZNSt5dequeIN2PP8WhenthenESaIS1_EEixEm.exit

bb.ab:                                            ; preds = %bb.z
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.gs, i64 %i.ht
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !373, !noalias !1462
  br label %_ZNSt5dequeIN2PP8WhenthenESaIS1_EEixEm.exit

_ZNSt5dequeIN2PP8WhenthenESaIS1_EEixEm.exit:      ; preds = %bb.aa, %bb.ab
  %storemerge.i.i.i.i34 = phi ptr [ %i.hx, %bb.ab ], [ %i.hv, %bb.aa ] ; 6 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i34, i64 48
  %i.hz = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i34, i64 16
  %i.ia = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i34, i64 72
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !446 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i34, i64 40
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !446
  %i.ie = ptrtoint ptr %i.ib to i64
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = sub i64 %i.ie, %i.if
  %i.ih = ashr exact i64 %i.ig, 3
  %i.ii = icmp ne ptr %i.ib, null
  %.neg.i.i.i35 = sext i1 %i.ii to i64
  %i.ij = add nsw i64 %i.ih, %.neg.i.i.i35
  %i.ik = shl nsw i64 %i.ij, 2
  %i.il = load ptr, ptr %i.hy, align 8, !tbaa !450
  %i.im = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i34, i64 56
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !451
  %i.io = ptrtoint ptr %i.il to i64
  %i.ip = ptrtoint ptr %i.in to i64
  %i.iq = sub i64 %i.io, %i.ip
  %i.ir = lshr exact i64 %i.iq, 7
  %i.is = add nsw i64 %i.ik, %i.ir
  %i.it = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i34, i64 32
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !452
  %i.iv = load ptr, ptr %i.hz, align 8, !tbaa !450
  %i.iw = ptrtoint ptr %i.iu to i64
  %i.ix = ptrtoint ptr %i.iv to i64
  %i.iy = sub i64 %i.iw, %i.ix
  %i.iz = lshr exact i64 %i.iy, 7
  %i.ja = add nsw i64 %i.is, %i.iz                ; 2 uses
  %i.jb = trunc i64 %i.ja to i32
  %i.jc = icmp sgt i32 %i.jb, 0
  br i1 %i.jc, label %.lr.ph109.preheader, label %._crit_edge110

.lr.ph109.preheader:                              ; preds = %_ZNSt5dequeIN2PP8WhenthenESaIS1_EEixEm.exit
  %wide.trip.count119 = and i64 %i.ja, 2147483647
  br label %.lr.ph109

._crit_edge110:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %_ZNSt5dequeIN2PP8WhenthenESaIS1_EEixEm.exit
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1
  br label %bb.x, !llvm.loop !1465

.lr.ph109:                                        ; preds = %.lr.ph109.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %indvars.iv116 = phi i64 [ 0, %.lr.ph109.preheader ], [ %indvars.iv.next117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.jd = load ptr, ptr %i.au, align 8, !tbaa !363, !noalias !1466 ; 2 uses
  %i.je = load ptr, ptr %i.az, align 8, !tbaa !372, !noalias !1466
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = ptrtoint ptr %i.je to i64
  %i.jh = sub i64 %i.jf, %i.jg
  %i.ji = sdiv exact i64 %i.jh, 568
  %i.jj = add nsw i64 %i.ji, %indvars.iv121       ; 2 uses
  %i.jk = icmp eq i64 %i.jj, 0
  br i1 %i.jk, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph109
  %i.jl = getelementptr inbounds nuw [568 x i8], ptr %i.jd, i64 %indvars.iv121
  br label %_ZNSt5dequeIN2PP8WhenthenESaIS1_EEixEm.exit37

bb.ad:                                            ; preds = %.lr.ph109
  %i.jm = load ptr, ptr %i.aw, align 8, !tbaa !368, !noalias !1466
  %i.jn = getelementptr inbounds [8 x i8], ptr %i.jm, i64 %i.jj
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !373, !noalias !1466
  br label %_ZNSt5dequeIN2PP8WhenthenESaIS1_EEixEm.exit37

_ZNSt5dequeIN2PP8WhenthenESaIS1_EEixEm.exit37:    ; preds = %bb.ac, %bb.ad
  %storemerge.i.i.i.i36 = phi ptr [ %i.jo, %bb.ad ], [ %i.jl, %bb.ac ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1469)
  %i.jp = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i36, i64 16
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !450, !noalias !1472 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i36, i64 24
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !451, !noalias !1472
  %i.jt = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i36, i64 40
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !446, !noalias !1472
  %i.jv = ptrtoint ptr %i.jq to i64
  %i.jw = ptrtoint ptr %i.js to i64
  %i.jx = sub i64 %i.jv, %i.jw
  %i.jy = ashr exact i64 %i.jx, 7
  %i.jz = add nsw i64 %i.jy, %indvars.iv116       ; 5 uses
  %i.ka = icmp sgt i64 %i.jz, -1
  br i1 %i.ka, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %_ZNSt5dequeIN2PP8WhenthenESaIS1_EEixEm.exit37
  %i.kb = icmp samesign ult i64 %i.jz, 4
  br i1 %i.kb, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.kc = getelementptr inbounds nuw [128 x i8], ptr %i.jq, i64 %indvars.iv116
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit.i38

bb.ag:                                            ; preds = %bb.ae
  %i.kd = lshr i64 %i.jz, 2
  br label %bb.ai

bb.ah:                                            ; preds = %_ZNSt5dequeIN2PP8WhenthenESaIS1_EEixEm.exit37
  %i.ke = ashr i64 %i.jz, 2
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.kf = phi i64 [ %i.kd, %bb.ag ], [ %i.ke, %bb.ah ] ; 2 uses
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.ju, i64 %i.kf
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !456, !noalias !1472
  %i.ki = shl nsw i64 %i.kf, 2
  %i.kj = sub nsw i64 %i.jz, %i.ki
  %i.kk = getelementptr inbounds [128 x i8], ptr %i.kh, i64 %i.kj
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit.i38

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit.i38:      ; preds = %bb.ai, %bb.af
  %storemerge.i.i.i.i.i39 = phi ptr [ %i.kk, %bb.ai ], [ %i.kc, %bb.af ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1475)
  store ptr %i.ba, ptr %3, align 8, !tbaa !123, !alias.scope !1478
  %i.kl = load ptr, ptr %storemerge.i.i.i.i.i39, align 8, !tbaa !27, !noalias !1475 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i.i39, i64 8
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !32, !noalias !1475 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29, !noalias !1478
  store i64 %i.kn, ptr %i.a, align 8, !tbaa !124, !noalias !1478
  %i.ko = icmp ugt i64 %i.kn, 15
  br i1 %i.ko, label %.noexc.i.i.i41, label %._crit_edge.i.i.i.i40

.noexc.i.i.i41:                                   ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit.i38
  %i.kp = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.kp, ptr %3, align 8, !tbaa !27, !alias.scope !1478
  %i.kq = load i64, ptr %i.a, align 8, !tbaa !124, !noalias !1478
  store i64 %i.kq, ptr %i.ba, align 8, !tbaa !33, !alias.scope !1478
  br label %._crit_edge.i.i.i.i40

._crit_edge.i.i.i.i40:                            ; preds = %.noexc.i.i.i41, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit.i38
  %i.kr = phi ptr [ %i.kp, %.noexc.i.i.i41 ], [ %i.ba, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit.i38 ] ; 2 uses
  switch i64 %i.kn, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %_ZN2PP8Whenthen11get_varnameB5cxx11Ei.exit
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i40
  %i.ks = load i8, ptr %i.kl, align 1, !tbaa !33
  store i8 %i.ks, ptr %i.kr, align 1, !tbaa !33
  br label %_ZN2PP8Whenthen11get_varnameB5cxx11Ei.exit

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i40
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kr, ptr align 1 %i.kl, i64 %i.kn, i1 false)
  br label %_ZN2PP8Whenthen11get_varnameB5cxx11Ei.exit

_ZN2PP8Whenthen11get_varnameB5cxx11Ei.exit:       ; preds = %._crit_edge.i.i.i.i40, %bb.aj, %bb.ak
  %i.kt = load i64, ptr %i.a, align 8, !tbaa !124, !noalias !1478 ; 2 uses
  store i64 %i.kt, ptr %i.bb, align 8, !tbaa !32, !alias.scope !1478
  %i.ku = load ptr, ptr %3, align 8, !tbaa !27, !alias.scope !1478
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.kt
  store i8 0, ptr %i.kv, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29, !noalias !1478
  %i.kw = load ptr, ptr %i.d, align 8, !tbaa !323 ; 8 uses
  %i.kx = load ptr, ptr %i.u, align 8, !tbaa !325
  %.not.i.i42 = icmp eq ptr %i.kw, %i.kx
  br i1 %.not.i.i42, label %bb.an, label %bb.al

bb.al:                                            ; preds = %_ZN2PP8Whenthen11get_varnameB5cxx11Ei.exit
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 16 ; 3 uses
  store ptr %i.ky, ptr %i.kw, align 8, !tbaa !123
  %i.kz = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.la = icmp eq ptr %i.kz, %i.ba
  br i1 %i.la, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43

bb.am:                                            ; preds = %bb.al
  %i.lb = load i64, ptr %i.bb, align 8, !tbaa !32 ; 3 uses
  %i.lc = icmp ult i64 %i.lb, 16
  call void @llvm.assume(i1 %i.lc)
  %i.ld = add nuw nsw i64 %i.lb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ky, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.ld, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit46.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43: ; preds = %bb.al
  store ptr %i.kz, ptr %i.kw, align 8, !tbaa !27
  %i.le = load i64, ptr %i.ba, align 8, !tbaa !33
  store i64 %i.le, ptr %i.ky, align 8, !tbaa !33
  %.pre = load i64, ptr %i.bb, align 8, !tbaa !32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit46.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit46.thread: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43
  %i.lf = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43 ], [ %i.lb, %bb.am ]
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  store i64 %i.lf, ptr %i.lg, align 8, !tbaa !32
  store ptr %i.ba, ptr %3, align 8, !tbaa !27
  store i64 0, ptr %i.bb, align 8, !tbaa !32
  %i.lh = load ptr, ptr %i.d, align 8, !tbaa !323
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 32
  store ptr %i.li, ptr %i.d, align 8, !tbaa !323
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

bb.an:                                            ; preds = %_ZN2PP8Whenthen11get_varnameB5cxx11Ei.exit
  %i.lj = load ptr, ptr %1, align 8, !tbaa !321   ; 5 uses
  %i.lk = ptrtoint ptr %i.kw to i64
  %i.ll = ptrtoint ptr %i.lj to i64               ; 2 uses
  %i.lm = sub i64 %i.lk, %i.ll                    ; 3 uses
  %i.ln = icmp eq i64 %i.lm, 9223372036854775776
  br i1 %i.ln, label %bb.ao, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i59

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.243) #30
          to label %.noexc90 unwind label %.loopexit.split-lp

.noexc90:                                         ; preds = %bb.ao
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i59: ; preds = %bb.an
  %i.lo = ashr exact i64 %i.lm, 5                 ; 3 uses
  %.sroa.speculated.i.i60 = call i64 @llvm.umax.i64(i64 %i.lo, i64 1)
  %i.lp = add nsw i64 %.sroa.speculated.i.i60, %i.lo ; 2 uses
  %6 = icmp ult i64 %i.lp, %i.lo
  %i.lq = call i64 @llvm.umin.i64(i64 %i.lp, i64 288230376151711743)
  %7 = select i1 %6, i64 288230376151711743, i64 %i.lq ; 3 uses
  %.not.i.i61 = icmp eq i64 %7, 0
  br i1 %.not.i.i61, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i62, label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i59
  %i.lr = shl nuw nsw i64 %7, 5
  %i.ls = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lr) #31
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i62 unwind label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i62: ; preds = %bb.ap, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i59
  %i.lt = phi ptr [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i59 ], [ %i.ls, %bb.ap ] ; 5 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.lm ; 4 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16 ; 3 uses
  store ptr %i.lv, ptr %i.lu, align 8, !tbaa !123
  %i.lw = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.lx = icmp eq ptr %i.lw, %i.ba
  br i1 %i.lx, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

bb.aq:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i62
  %i.ly = load i64, ptr %i.bb, align 8, !tbaa !32 ; 3 uses
  %i.lz = icmp ult i64 %i.ly, 16
  call void @llvm.assume(i1 %i.lz)
  %i.ma = add nuw nsw i64 %i.ly, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lv, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.ma, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i62
  store ptr %i.lw, ptr %i.lu, align 8, !tbaa !27
  %i.mb = load i64, ptr %i.ba, align 8, !tbaa !33
  store i64 %i.mb, ptr %i.lv, align 8, !tbaa !33
  %.pre.i65 = load i64, ptr %i.bb, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i66: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63, %bb.aq
  %i.mc = phi i64 [ %i.ly, %bb.aq ], [ %.pre.i65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63 ]
  %i.md = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  store i64 %i.mc, ptr %i.md, align 8, !tbaa !32
  store ptr %i.ba, ptr %3, align 8, !tbaa !27
  store i64 0, ptr %i.bb, align 8, !tbaa !32
  store i8 0, ptr %i.ba, align 8, !tbaa !33
  %.not10.i.i.i.i67 = icmp eq ptr %i.lj, %i.kw
  br i1 %.not10.i.i.i.i67, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i87, label %.lr.ph.i.i.i.i68

.lr.ph.i.i.i.i68:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i66, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i74
  %.012.i.i.i.i69 = phi ptr [ %i.mr, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i74 ], [ %i.lt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i66 ] ; 5 uses
  %.0911.i.i.i.i70 = phi ptr [ %i.mq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i74 ], [ %i.lj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i66 ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1479)
  call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  %i.me = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i69, i64 16 ; 3 uses
  store ptr %i.me, ptr %.012.i.i.i.i69, align 8, !tbaa !123, !alias.scope !1479, !noalias !1482
  %i.mf = load ptr, ptr %.0911.i.i.i.i70, align 8, !tbaa !27, !alias.scope !1482, !noalias !1479 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i70, i64 16 ; 5 uses
  %i.mh = icmp eq ptr %i.mf, %i.mg
  br i1 %i.mh, label %bb.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i71

bb.ar:                                            ; preds = %.lr.ph.i.i.i.i68
  %i.mi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i70, i64 8
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !32, !alias.scope !1482, !noalias !1479 ; 3 uses
  %i.mk = icmp ult i64 %i.mj, 16
  call void @llvm.assume(i1 %i.mk)
  %i.ml = add nuw nsw i64 %i.mj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.me, ptr noundef nonnull align 8 dereferenceable(1) %i.mg, i64 %i.ml, i1 false), !alias.scope !1484
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i71: ; preds = %.lr.ph.i.i.i.i68
  store ptr %i.mf, ptr %.012.i.i.i.i69, align 8, !tbaa !27, !alias.scope !1479, !noalias !1482
  %i.mm = load i64, ptr %i.mg, align 8, !tbaa !33, !alias.scope !1482, !noalias !1479
  store i64 %i.mm, ptr %i.me, align 8, !tbaa !33, !alias.scope !1479, !noalias !1482
  %.phi.trans.insert.i.i.i.i.i72 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i70, i64 8
  %.pre.i.i.i.i.i73 = load i64, ptr %.phi.trans.insert.i.i.i.i.i72, align 8, !tbaa !32, !alias.scope !1482, !noalias !1479
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i74

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i74: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i71, %bb.ar
  %i.mn = phi i64 [ %i.mj, %bb.ar ], [ %.pre.i.i.i.i.i73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i71 ]
  %i.mo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i70, i64 8
  %i.mp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i69, i64 8
  store i64 %i.mn, ptr %i.mp, align 8, !tbaa !32, !alias.scope !1479, !noalias !1482
  store ptr %i.mg, ptr %.0911.i.i.i.i70, align 8, !tbaa !27, !alias.scope !1482, !noalias !1479
  store i64 0, ptr %i.mo, align 8, !tbaa !32, !alias.scope !1482, !noalias !1479
  store i8 0, ptr %i.mg, align 8, !tbaa !33, !alias.scope !1482, !noalias !1479
  %i.mq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i70, i64 32 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i69, i64 32 ; 2 uses
  %.not.i.i.i.i75 = icmp eq ptr %i.mq, %i.kw
  br i1 %.not.i.i.i.i75, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i87, label %.lr.ph.i.i.i.i68, !llvm.loop !1460

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i87: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i66
  %.0.lcssa.i.i.i.i77 = phi ptr [ %i.lt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i66 ], [ %i.mr, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i74 ]
  %i.ms = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i77, i64 32
  %.not.i27.i89 = icmp eq ptr %i.lj, null
  br i1 %.not.i27.i89, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit46, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i87
  %i.mt = load ptr, ptr %i.u, align 8, !tbaa !325
  %i.mu = ptrtoint ptr %i.mt to i64
  %i.mv = sub i64 %i.mu, %i.ll
  call void @_ZdlPvm(ptr noundef nonnull %i.lj, i64 noundef %i.mv) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit46

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit46: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i87, %bb.as
  store ptr %i.lt, ptr %1, align 8, !tbaa !321
  store ptr %i.ms, ptr %i.d, align 8, !tbaa !323
  %i.mw = getelementptr inbounds nuw [32 x i8], ptr %i.lt, i64 %7
  store ptr %i.mw, ptr %i.u, align 8, !tbaa !325
  %.pre124 = load ptr, ptr %3, align 8, !tbaa !27 ; 2 uses
  %i.mx = icmp eq ptr %.pre124, %i.ba
  br i1 %i.mx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit46
  %i.my = load i64, ptr %i.ba, align 8, !tbaa !33
  %i.mz = add i64 %i.my, 1
  call void @_ZdlPvm(ptr noundef %.pre124, i64 noundef %i.mz) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit46, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit46.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %exitcond120.not = icmp eq i64 %indvars.iv.next117, %wide.trip.count119
  br i1 %exitcond120.not, label %._crit_edge110, label %.lr.ph109, !llvm.loop !1485

.loopexit:                                        ; preds = %bb.ap
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

.loopexit.split-lp:                               ; preds = %bb.ao
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.at:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.na = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.nb = icmp eq ptr %i.na, %i.ba
  br i1 %i.nb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.at
  %i.nc = load i64, ptr %i.ba, align 8, !tbaa !33
  %i.nd = add i64 %i.nc, 1
  call void @_ZdlPvm(ptr noundef %i.na, i64 noundef %i.nd) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.au

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %.pn = phi { ptr, i32 } [ %lpad.phi97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ], [ %lpad.phi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP11PowerParser10list_rb_ssERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(2796) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2424
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2392
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2448
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !417  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2416
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !417
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !411
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2432
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !415
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 520
  %i.t = add nsw i64 %i.l, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2408
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !416
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !411
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 520
  %i.ab = add nsw i64 %i.t, %i.aa
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 1
  br i1 %i.ad, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !132
  %i.ag = getelementptr i8, ptr %i.af, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 240
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt16__throw_bad_castv() #30
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.am = load i8, ptr %i.al, align 8, !tbaa !161
  %.not.i1.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 67
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !33
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ak)
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !132
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call noundef signext i8 %i.ar(ptr noundef nonnull align 8 dereferenceable(570) %i.ak, i8 noundef signext 10), !inline_history !591
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi i8 [ %i.ao, %bb.d ], [ %i.as, %bb.e ]
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i8 noundef signext %.0.i.i.i)
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.at) ; 4 uses
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.210, i64 noundef 38) ; 0 uses
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !132
  %i.ax = getelementptr i8, ptr %i.aw, i64 -24
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds i8, ptr %i.au, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 240
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i8 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i8, label %bb.f, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i9

bb.f:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  tail call void @_ZSt16__throw_bad_castv() #30
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i9: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !161
  %.not.i1.i.i10 = icmp eq i8 %i.bd, 0
  br i1 %.not.i1.i.i10, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i9
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 67
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !33
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit12

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i9
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bb)
  %i.bg = load ptr, ptr %i.bb, align 8, !tbaa !132
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef signext i8 %i.bi(ptr noundef nonnull align 8 dereferenceable(570) %i.bb, i8 noundef signext 10), !inline_history !591
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit12

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit12: ; preds = %bb.g, %bb.h
  %.0.i.i.i11 = phi i8 [ %i.bf, %bb.g ], [ %i.bj, %bb.h ]
  %i.bk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.au, i8 noundef signext %.0.i.i.i11)
  %i.bl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bk) ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !132
  %i.bn = getelementptr i8, ptr %i.bm, i64 -24
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 240
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !149 ; 6 uses
  %.not.i.i.i13 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i13, label %bb.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i14

bb.i:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit12
  tail call void @_ZSt16__throw_bad_castv() #30
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i14: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit12
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !161
  %.not.i1.i.i15 = icmp eq i8 %i.bt, 0
  br i1 %.not.i1.i.i15, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i14
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 67
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !33
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit17

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i14
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.br)
  %i.bw = load ptr, ptr %i.br, align 8, !tbaa !132
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef signext i8 %i.by(ptr noundef nonnull align 8 dereferenceable(570) %i.br, i8 noundef signext 10), !inline_history !591
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit17

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit17: ; preds = %bb.j, %bb.k
  %.0.i.i.i16 = phi i8 [ %i.bv, %bb.j ], [ %i.bz, %bb.k ]
  %i.ca = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, i8 noundef signext %.0.i.i.i16)
  %i.cb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ca) ; 0 uses
  br label %.loopexit

.preheader:                                       ; preds = %bb.a, %.preheader
  %.018 = phi i32 [ %i.cc, %.preheader ], [ 0, %bb.a ] ; 2 uses
  tail call void @_ZN2PP11PowerParser14list_one_rb_ssERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(2796) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %.018)
end_hunk_0
begin_hunk_1_@_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableEEC2IS5_S8_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISC_SD_EEclsr6_PCCFPISC_SD_EE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOS_ISC_SD_E:bb.a
  %i.t = load i64, ptr %i.s, align 8, !tbaa !32   ; 2 uses
  %i.u = icmp ult i64 %i.t, 16
  tail call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.p, ptr %i.m, align 8, !tbaa !27
  %i.w = load i64, ptr %i.q, align 8, !tbaa !33
  store i64 %i.w, ptr %i.o, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.y, ptr %i.z, align 8, !tbaa !32
  store ptr %i.q, ptr %i.n, align 8, !tbaa !27
  store i64 0, ptr %i.x, align 8, !tbaa !32
  store i8 0, ptr %i.q, align 8, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !338
  store <2 x ptr> %i.ac, ptr %i.aa, align 8, !tbaa !338
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !325
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !325
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ag, ptr noundef nonnull align 8 dereferenceable(12) %i.ah, i64 12, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ak = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !329
  store <2 x ptr> %i.ak, ptr %i.ai, align 8, !tbaa !329
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !17
  store ptr %i.an, ptr %i.al, align 8, !tbaa !17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.aq = load i16, ptr %i.ap, align 8
  store i16 %i.aq, ptr %i.ao, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !123
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !27 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !32 ; 2 uses
  %i.az = icmp ult i64 %i.ay, 16
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false)
  br label %_ZN2PP8VariableC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.au, ptr %i.ar, align 8, !tbaa !27
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !33
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !33
  br label %_ZN2PP8VariableC2EOS0_.exit

_ZN2PP8VariableC2EOS0_.exit:                      ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7.i
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !32
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !32
  store ptr %i.av, ptr %i.as, align 8, !tbaa !27
  store i64 0, ptr %i.bc, align 8, !tbaa !32
  store i8 0, ptr %i.av, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2PP8VariableEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8, !tbaa !507 ; 2 uses
  %.not32 = icmp eq ptr %.02931, null
  br i1 %.not32, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #29 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !507 ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1910

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !188
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #34
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !32   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !32   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !27
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !27
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #29 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !323  ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !321    ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.243) #30
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %3 = icmp ult i64 %i.j, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 288230376151711743)
  %4 = select i1 %3, i64 288230376151711743, i64 %i.k ; 4 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.f
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.n = shl nuw nsw i64 %4, 5
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #31
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.p = phi ptr [ %i.o, %bb.c ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !123
  %i.s = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !32   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.u, ptr %i.a, align 8, !tbaa !124
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.w, ptr %i.q, align 8, !tbaa !27
  %i.x = load i64, ptr %i.a, align 8, !tbaa !124
  store i64 %i.x, ptr %i.r, align 8, !tbaa !33
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.y = phi ptr [ %i.w, %.noexc ], [ %i.r, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 2 uses
  switch i64 %i.u, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.z = load i8, ptr %i.s, align 1, !tbaa !33
  store i8 %i.z, ptr %i.y, align 1, !tbaa !33
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !124 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !32
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %bb.f ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.f ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1911)
  call void @llvm.experimental.noalias.scope.decl(metadata !1914)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !123, !alias.scope !1911, !noalias !1914
  %i.af = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !27, !alias.scope !1914, !noalias !1911 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !32, !alias.scope !1914, !noalias !1911 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false), !alias.scope !1916
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !27, !alias.scope !1911, !noalias !1914
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !33, !alias.scope !1914, !noalias !1911
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !33, !alias.scope !1911, !noalias !1914
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !32, !alias.scope !1914, !noalias !1911
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.g
  %i.an = phi i64 [ %i.aj, %bb.g ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !32, !alias.scope !1911, !noalias !1914
  store ptr %i.ag, ptr %.0911.i.i.i, align 8, !tbaa !27, !alias.scope !1914, !noalias !1911
  store i64 0, ptr %i.ao, align 8, !tbaa !32, !alias.scope !1914, !noalias !1911
  store i8 0, ptr %i.ag, align 8, !tbaa !33, !alias.scope !1914, !noalias !1911
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !1460

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.f ], [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1917)
  call void @llvm.experimental.noalias.scope.decl(metadata !1920)
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.at, ptr %.012.i.i.i28, align 8, !tbaa !123, !alias.scope !1917, !noalias !1920
  %i.au = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !27, !alias.scope !1920, !noalias !1917 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.h:                                             ; preds = %.lr.ph.i.i.i27
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !32, !alias.scope !1920, !noalias !1917 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false), !alias.scope !1922
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.au, ptr %.012.i.i.i28, align 8, !tbaa !27, !alias.scope !1917, !noalias !1920
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !33, !alias.scope !1920, !noalias !1917
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !33, !alias.scope !1917, !noalias !1920
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !32, !alias.scope !1920, !noalias !1917
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.h
  %i.bc = phi i64 [ %i.ay, %bb.h ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !32, !alias.scope !1917, !noalias !1920
  store ptr %i.av, ptr %.0911.i.i.i29, align 8, !tbaa !27, !alias.scope !1920, !noalias !1917
  store i64 0, ptr %i.bd, align 8, !tbaa !32, !alias.scope !1920, !noalias !1917
  store i8 0, ptr %i.av, align 8, !tbaa !33, !alias.scope !1920, !noalias !1917
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bf, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !1460

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !325
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bk) #32
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.i
  store ptr %i.p, ptr %0, align 8, !tbaa !321
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !323
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %4
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !325
  ret void

bb.j:                                             ; preds = %bb.k
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.k:                                             ; preds = %.noexc.i
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  %i.bp = call ptr @__cxa_begin_catch(ptr %i.bo) #29 ; 0 uses
  %i.bq = shl nuw nsw i64 %4, 5
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.bq) #32
  invoke void @__cxa_rethrow() #30
          to label %bb.n unwind label %bb.j

bb.l:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.bm

bb.m:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #33
  unreachable

bb.n:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvT_SA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEvT_SC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i
  %.05.i = phi ptr [ %i.p, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i ], [ %0, %bb.a ] ; 5 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !321 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !323  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.a, %.lr.ph.i ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !27 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !33
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !324

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %.05.i, align 8, !tbaa !321
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %.lr.ph.i
  %i.j = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.a, %.lr.ph.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i.i, label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !325
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #32
  br label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i

_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.p, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEvT_SC_.exit, label %.lr.ph.i, !llvm.loop !839

_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEvT_SC_.exit: ; preds = %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !323  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !321    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.243) #30
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %3 = icmp ult i64 %i.i, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %4 = select i1 %3, i64 288230376151711743, i64 %i.j ; 3 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.m = shl nuw nsw i64 %4, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #31
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.o = phi ptr [ %i.n, %bb.c ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !123
  %i.r = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !32   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  store ptr %i.r, ptr %i.p, align 8, !tbaa !27
  %i.y = load i64, ptr %i.s, align 8, !tbaa !33
  store i64 %i.y, ptr %i.q, align 8, !tbaa !33
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.z = phi i64 [ %i.v, %bb.d ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !32
  store ptr %i.s, ptr %2, align 8, !tbaa !27
  store i64 0, ptr %i.aa, align 8, !tbaa !32
  store i8 0, ptr %i.s, align 8, !tbaa !33
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1926)
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ac, ptr %.012.i.i.i, align 8, !tbaa !123, !alias.scope !1923, !noalias !1926
  %i.ad = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !27, !alias.scope !1926, !noalias !1923 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !32, !alias.scope !1926, !noalias !1923 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false), !alias.scope !1928
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !27, !alias.scope !1923, !noalias !1926
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !33, !alias.scope !1926, !noalias !1923
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !33, !alias.scope !1923, !noalias !1926
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !32, !alias.scope !1926, !noalias !1923
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.e
  %i.al = phi i64 [ %i.ah, %bb.e ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.al, ptr %i.an, align 8, !tbaa !32, !alias.scope !1923, !noalias !1926
  store ptr %i.ae, ptr %.0911.i.i.i, align 8, !tbaa !27, !alias.scope !1926, !noalias !1923
  store i64 0, ptr %i.am, align 8, !tbaa !32, !alias.scope !1926, !noalias !1923
  store i8 0, ptr %i.ae, align 8, !tbaa !33, !alias.scope !1926, !noalias !1923
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !1460

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bd, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1929)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1932)
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.ar, ptr %.012.i.i.i18, align 8, !tbaa !123, !alias.scope !1929, !noalias !1932
  %i.as = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !27, !alias.scope !1932, !noalias !1929 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.f:                                             ; preds = %.lr.ph.i.i.i17
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !32, !alias.scope !1932, !noalias !1929 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false), !alias.scope !1934
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !27, !alias.scope !1929, !noalias !1932
  %i.az = load i64, ptr %i.at, align 8, !tbaa !33, !alias.scope !1932, !noalias !1929
  store i64 %i.az, ptr %i.ar, align 8, !tbaa !33, !alias.scope !1929, !noalias !1932
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !32, !alias.scope !1932, !noalias !1929
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.f
  %i.ba = phi i64 [ %i.aw, %bb.f ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !32, !alias.scope !1929, !noalias !1932
  store ptr %i.at, ptr %.0911.i.i.i19, align 8, !tbaa !27, !alias.scope !1932, !noalias !1929
  store i64 0, ptr %i.bb, align 8, !tbaa !32, !alias.scope !1932, !noalias !1929
  store i8 0, ptr %i.at, align 8, !tbaa !33, !alias.scope !1932, !noalias !1929
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !1460

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !325
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bi) #32
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.g
  store ptr %i.o, ptr %0, align 8, !tbaa !321
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !323
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %4
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !325
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !807  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !810    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.243) #30
  unreachable

_ZNKSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %3 = icmp ult i64 %i.i, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %4 = select i1 %3, i64 384307168202282325, i64 %i.j ; 3 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %4, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = mul nuw nsw i64 %4, 24                   ; 2 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #31 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !323  ; 3 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !321    ; 3 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i.i.i, label %.noexc26, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE12_M_check_lenEmPKc.exit
  %i.v = icmp ugt i64 %i.u, 9223372036854775776
  br i1 %i.v, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !834

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #31
          to label %.noexc26 unwind label %bb.h

.noexc26:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNKSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE12_M_check_lenEmPKc.exit
  %i.x = phi ptr [ null, %_ZNKSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE12_M_check_lenEmPKc.exit ], [ %i.w, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.x, ptr %i.o, align 8, !tbaa !321
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !323
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !325
  %i.ab = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.r, ptr %i.q, ptr noundef %i.x)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %.noexc26
  %i.ac = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ad = load ptr, ptr %i.o, align 8, !tbaa !321 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !325
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ah) #32
  br label %bb.j

bb.f:                                             ; preds = %.noexc26
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !323
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %i.n, %bb.f ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %i.c, %bb.f ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1935)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1938)
  %i.ai = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !338, !alias.scope !1938, !noalias !1935
  store <2 x ptr> %i.ai, ptr %.012.i.i.i, align 8, !tbaa !338, !alias.scope !1935, !noalias !1938
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !325, !alias.scope !1938, !noalias !1935
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !325, !alias.scope !1935, !noalias !1938
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !1938, !noalias !1935
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.am, %1
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i, !llvm.loop !1940

_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit: ; preds = %.lr.ph.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi ptr [ %i.n, %bb.f ], [ %i.an, %.lr.ph.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit34, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, %.lr.ph.i.i.i29
  %.012.i.i.i30 = phi ptr [ %i.au, %.lr.ph.i.i.i29 ], [ %i.ao, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 3 uses
  %.0911.i.i.i31 = phi ptr [ %i.at, %.lr.ph.i.i.i29 ], [ %1, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1941)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1944)
  %i.ap = load <2 x ptr>, ptr %.0911.i.i.i31, align 8, !tbaa !338, !alias.scope !1944, !noalias !1941
  store <2 x ptr> %i.ap, ptr %.012.i.i.i30, align 8, !tbaa !338, !alias.scope !1941, !noalias !1944
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !325, !alias.scope !1944, !noalias !1941
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !325, !alias.scope !1941, !noalias !1944
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i31, i8 0, i64 24, i1 false), !alias.scope !1944, !noalias !1941
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 24 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.at, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit34, label %.lr.ph.i.i.i29, !llvm.loop !1940

_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit34: ; preds = %.lr.ph.i.i.i29, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %.0.lcssa.i.i.i33 = phi ptr [ %i.ao, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ], [ %i.au, %.lr.ph.i.i.i29 ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EE13_M_deallocateEPS8_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit34
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !833
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ay) #32
  br label %_ZNSt12_Vector_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EE13_M_deallocateEPS8_m.exit

_ZNSt12_Vector_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EE13_M_deallocateEPS8_m.exit: ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit34, %bb.g
  store ptr %i.n, ptr %0, align 8, !tbaa !810
  store ptr %.0.lcssa.i.i.i33, ptr %i.a, align 8, !tbaa !807
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %4
  store ptr %i.az, ptr %i.av, align 8, !tbaa !833
  ret void

bb.h:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %bb.d, %bb.e, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.ba, %bb.h ], [ %i.ac, %bb.e ], [ %i.ac, %bb.d ]
  %i.bc = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.bd = tail call ptr @__cxa_begin_catch(ptr %i.bc) #29 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.m) #32
  invoke void @__cxa_rethrow() #30
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bb

bb.l:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #33
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EES2_ISA_SaISA_EEEEPSA_ET0_T_SI_SH_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not18 = icmp eq ptr %0, %1
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.020 = phi ptr [ %i.x, %bb.e ], [ %2, %bb.a ]  ; 8 uses
  %.sroa.09.019 = phi ptr [ %i.w, %bb.e ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.09.019, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !323  ; 2 uses
  %i.c = load ptr, ptr %.sroa.09.019, align 8, !tbaa !321 ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.020, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp ugt i64 %i.f, 9223372036854775776
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !834

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #31
          to label %.noexc8 unwind label %.loopexit

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %.lr.ph
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.h, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %.020, align 8, !tbaa !321
  %i.j = getelementptr inbounds nuw i8, ptr %.020, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !323
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.020, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !325
  %i.m = load ptr, ptr %.sroa.09.019, align 8, !tbaa !338
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !338
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc8
  %i.p = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.q = load ptr, ptr %.020, align 8, !tbaa !321 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.020, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !325
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #32
  br label %.body

bb.e:                                             ; preds = %.noexc8
  store ptr %i.o, ptr %i.j, align 8, !tbaa !323
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.09.019, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.020, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.w, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1946

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.c, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.c ], [ %i.p, %bb.d ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.y = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.z = tail call ptr @__cxa_begin_catch(ptr %i.y) #29 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvT_SA_(ptr noundef %2, ptr noundef nonnull %.020)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #30
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.x, %bb.e ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %.body
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.aa

bb.i:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #33
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2PP8FunctionEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJS6_IS5_S9_EEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(136) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #31 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8FunctionEEC2IS5_S8_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISC_SD_EEclsr6_PCCFPISC_SD_EE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOS_ISC_SD_E(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull align 8 dereferenceable(136) %2)
  %i.c = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2PP8FunctionEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.b unwind label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2PP8FunctionEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev.exit ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.c, 1        ; 5 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.d, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.g
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !32   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.i) ; 2 uses
  %i.l = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.l, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.p = tail call i32 @memcmp(ptr noundef %i.o, ptr noundef %i.n, i64 noundef %.sroa.speculated.i.i.i.i.i) #29 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.d
  %i.q = sub i64 %i.i, %i.k
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.q, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
end_hunk_1
