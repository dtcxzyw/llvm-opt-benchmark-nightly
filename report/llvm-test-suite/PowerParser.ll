inline.NumInlined: 5334
inline.NumDeleted: 1210
begin_hunk_0_@_ZN2PP11PowerParser15get_rb_varnamesERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE:bb.a
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
  %indvars.iv.next114.a = add nuw nsw i64 %indvars.iv113.a, 1
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
  %i.cw = add nsw i64 %i.cv, %indvars.iv113.a     ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.cy = getelementptr inbounds nuw [520 x i8], ptr %i.cq, i64 %indvars.iv113.a
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
          to label %.noexc57.a unwind label %.loopexit.split-lp94

.noexc57.a:                                       ; preds = %bb.r
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.q
  %i.fb = ashr exact i64 %i.ez, 5                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.fb, i64 1)
  %i.fc = add nsw i64 %.sroa.speculated.i.i, %i.fb ; 2 uses
  %i.fd = icmp ult i64 %i.fc, %i.fb
  %i.fe = call i64 @llvm.umin.i64(i64 %i.fc, i64 288230376151711743)
  %i.ff = select i1 %i.fd, i64 288230376151711743, i64 %i.fe ; 3 uses
  %.not.i.i53 = icmp eq i64 %i.ff, 0
  br i1 %.not.i.i53, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i, label %4

4:                                                ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %5 = shl nuw nsw i64 %i.ff, 5
  %6 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %5) #31
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i unwind label %.loopexit93

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %4, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %7 = phi ptr [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ %6, %4 ] ; 5 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %7, i64 %i.ez ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16 ; 3 uses
  store ptr %i.fh, ptr %i.fg, align 8, !tbaa !123
  %i.fi = load ptr, ptr %2, align 8, !tbaa !27    ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.s
  br i1 %i.fj, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

bb.s:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i
  %i.fk = load i64, ptr %i.t, align 8, !tbaa !32  ; 3 uses
  %i.fl = icmp ult i64 %i.fk, 16
  call void @llvm.assume(i1 %i.fl)
  %i.fm = add nuw nsw i64 %i.fk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fh, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.fm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i
  store ptr %i.fi, ptr %i.fg, align 8, !tbaa !27
  %i.fn = load i64, ptr %i.s, align 8, !tbaa !33
  store i64 %i.fn, ptr %i.fh, align 8, !tbaa !33
  %.pre.i = load i64, ptr %i.t, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %bb.s
  %i.fo = phi i64 [ %i.fk, %bb.s ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ]
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store i64 %i.fo, ptr %i.fp, align 8, !tbaa !32
  store ptr %i.s, ptr %2, align 8, !tbaa !27
  store i64 0, ptr %i.t, align 8, !tbaa !32
  store i8 0, ptr %i.s, align 8, !tbaa !33
  %.not10.i.i.i.i = icmp eq ptr %i.ew, %i.ej
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i, label %.lr.ph.i.i.i.i55

.lr.ph.i.i.i.i55:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.gd, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.gc, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.ew, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1454)
  call void @llvm.experimental.noalias.scope.decl(metadata !1457)
  %i.fq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.fq, ptr %.012.i.i.i.i, align 8, !tbaa !123, !alias.scope !1454, !noalias !1457
  %i.fr = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !27, !alias.scope !1457, !noalias !1454 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.ft = icmp eq ptr %i.fr, %i.fs
  br i1 %i.ft, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.t:                                             ; preds = %.lr.ph.i.i.i.i55
  %i.fu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !32, !alias.scope !1457, !noalias !1454 ; 3 uses
  %i.fw = icmp ult i64 %i.fv, 16
  call void @llvm.assume(i1 %i.fw)
  %i.fx = add nuw nsw i64 %i.fv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fq, ptr noundef nonnull align 8 dereferenceable(1) %i.fs, i64 %i.fx, i1 false), !alias.scope !1459
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i55
  store ptr %i.fr, ptr %.012.i.i.i.i, align 8, !tbaa !27, !alias.scope !1454, !noalias !1457
  %i.fy = load i64, ptr %i.fs, align 8, !tbaa !33, !alias.scope !1457, !noalias !1454
  store i64 %i.fy, ptr %i.fq, align 8, !tbaa !33, !alias.scope !1454, !noalias !1457
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !32, !alias.scope !1457, !noalias !1454
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.t
  %i.fz = phi i64 [ %i.fv, %bb.t ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.gb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.fz, ptr %i.gb, align 8, !tbaa !32, !alias.scope !1454, !noalias !1457
  store ptr %i.fs, ptr %.0911.i.i.i.i, align 8, !tbaa !27, !alias.scope !1457, !noalias !1454
  store i64 0, ptr %i.ga, align 8, !tbaa !32, !alias.scope !1457, !noalias !1454
  store i8 0, ptr %i.fs, align 8, !tbaa !33, !alias.scope !1457, !noalias !1454
  %i.gc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i56 = icmp eq ptr %i.gc, %i.ej
  br i1 %.not.i.i.i.i56, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i, label %.lr.ph.i.i.i.i55, !llvm.loop !1460

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ], [ %i.gd, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.ge = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32
  %.not.i27.i = icmp eq ptr %i.ew, null
  br i1 %.not.i27.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i
  %i.gf = load ptr, ptr %i.u, align 8, !tbaa !325
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = sub i64 %i.gg, %i.ey
  call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef %i.gh) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i, %bb.u
  store ptr %7, ptr %1, align 8, !tbaa !321
  store ptr %i.ge, ptr %i.d, align 8, !tbaa !323
  %i.gi = getelementptr inbounds nuw [32 x i8], ptr %7, i64 %i.ff
  store ptr %i.gi, ptr %i.u, align 8, !tbaa !325
  %.pre126 = load ptr, ptr %2, align 8, !tbaa !27 ; 2 uses
  %i.gj = icmp eq ptr %.pre126, %i.s
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.gk = load i64, ptr %i.s, align 8, !tbaa !33
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %.pre126, i64 noundef %i.gl) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1461

.loopexit93:                                      ; preds = %4
  %lpad.loopexit95 = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit.split-lp94:                             ; preds = %bb.r
  %lpad.loopexit.split-lp96 = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %.loopexit.split-lp94, %.loopexit93
  %lpad.phi97 = phi { ptr, i32 } [ %lpad.loopexit95, %.loopexit93 ], [ %lpad.loopexit.split-lp96, %.loopexit.split-lp94 ]
  %i.gm = load ptr, ptr %2, align 8, !tbaa !27    ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.s
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.v
  %i.go = load i64, ptr %i.s, align 8, !tbaa !33
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gp) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.as

bb.w:                                             ; preds = %.preheader, %._crit_edge110
  %indvars.iv121 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next122, %._crit_edge110 ] ; 6 uses
  %i.gq = load ptr, ptr %i.av, align 8, !tbaa !368 ; 2 uses
  %i.gr = load ptr, ptr %i.aw, align 8, !tbaa !368 ; 2 uses
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = sub i64 %i.gs, %i.gt
  %i.gv = lshr exact i64 %i.gu, 3
  %i.gw = icmp ne ptr %i.gq, null
  %.neg.i.i33 = sext i1 %i.gw to i64
  %i.gx = add nsw i64 %i.gv, %.neg.i.i33
  %i.gy = load ptr, ptr %i.at, align 8, !tbaa !363
  %i.gz = load ptr, ptr %i.ax, align 8, !tbaa !372
  %i.ha = ptrtoint ptr %i.gy to i64
  %i.hb = ptrtoint ptr %i.gz to i64
  %i.hc = sub i64 %i.ha, %i.hb
  %i.hd = sdiv exact i64 %i.hc, 568
  %i.he = add nsw i64 %i.gx, %i.hd
  %i.hf = load ptr, ptr %i.ay, align 8, !tbaa !367
  %i.hg = load ptr, ptr %i.au, align 8, !tbaa !363 ; 2 uses
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = ptrtoint ptr %i.hg to i64               ; 2 uses
  %i.hj = sub i64 %i.hh, %i.hi
  %i.hk = sdiv exact i64 %i.hj, 568
  %i.hl = add nsw i64 %i.he, %i.hk
  %sext176 = shl i64 %i.hl, 32
  %i.hm = ashr exact i64 %sext176, 32
  %i.hn = icmp slt i64 %indvars.iv121, %i.hm
  br i1 %i.hn, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  ret void

bb.y:                                             ; preds = %bb.w
  %i.ho = load ptr, ptr %i.az, align 8, !tbaa !372, !noalias !1462
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = sub i64 %i.hi, %i.hp
  %i.hr = sdiv exact i64 %i.hq, 568
  %i.hs = add nsw i64 %i.hr, %indvars.iv121       ; 2 uses
  %i.ht = icmp eq i64 %i.hs, 0
  br i1 %i.ht, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.hu = getelementptr inbounds nuw [568 x i8], ptr %i.hg, i64 %indvars.iv121
  br label %_ZNSt5dequeIN2PP8WhenthenESaIS1_EEixEm.exit

bb.aa:                                            ; preds = %bb.y
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %i.hs
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !373, !noalias !1462
  br label %_ZNSt5dequeIN2PP8WhenthenESaIS1_EEixEm.exit

_ZNSt5dequeIN2PP8WhenthenESaIS1_EEixEm.exit:      ; preds = %bb.z, %bb.aa
  %storemerge.i.i.i.i34 = phi ptr [ %i.hw, %bb.aa ], [ %i.hu, %bb.z ] ; 6 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i34, i64 48
  %i.hy = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i34, i64 16
  %i.hz = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i34, i64 72
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !446 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i34, i64 40
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !446
  %i.id = ptrtoint ptr %i.ia to i64
  %i.ie = ptrtoint ptr %i.ic to i64
  %i.if = sub i64 %i.id, %i.ie
  %i.ig = ashr exact i64 %i.if, 3
  %i.ih = icmp ne ptr %i.ia, null
  %.neg.i.i.i35 = sext i1 %i.ih to i64
  %i.ii = add nsw i64 %i.ig, %.neg.i.i.i35
  %i.ij = shl nsw i64 %i.ii, 2
  %i.ik = load ptr, ptr %i.hx, align 8, !tbaa !450
  %i.il = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i34, i64 56
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !451
  %i.in = ptrtoint ptr %i.ik to i64
  %i.io = ptrtoint ptr %i.im to i64
  %i.ip = sub i64 %i.in, %i.io
  %i.iq = lshr exact i64 %i.ip, 7
  %i.ir = add nsw i64 %i.ij, %i.iq
  %i.is = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i34, i64 32
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !452
  %i.iu = load ptr, ptr %i.hy, align 8, !tbaa !450
  %i.iv = ptrtoint ptr %i.it to i64
  %i.iw = ptrtoint ptr %i.iu to i64
  %i.ix = sub i64 %i.iv, %i.iw
  %i.iy = lshr exact i64 %i.ix, 7
  %i.iz = add nsw i64 %i.ir, %i.iy                ; 2 uses
  %i.ja = trunc i64 %i.iz to i32
  %i.jb = icmp sgt i32 %i.ja, 0
  br i1 %i.jb, label %.lr.ph109.preheader, label %._crit_edge110

.lr.ph109.preheader:                              ; preds = %_ZNSt5dequeIN2PP8WhenthenESaIS1_EEixEm.exit
  %wide.trip.count119 = and i64 %i.iz, 2147483647
  br label %.lr.ph109

._crit_edge110:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %_ZNSt5dequeIN2PP8WhenthenESaIS1_EEixEm.exit
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1
  br label %bb.w, !llvm.loop !1465

.lr.ph109:                                        ; preds = %.lr.ph109.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %indvars.iv116 = phi i64 [ 0, %.lr.ph109.preheader ], [ %indvars.iv.next117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.jc = load ptr, ptr %i.au, align 8, !tbaa !363, !noalias !1466 ; 2 uses
  %i.jd = load ptr, ptr %i.az, align 8, !tbaa !372, !noalias !1466
  %i.je = ptrtoint ptr %i.jc to i64
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = sub i64 %i.je, %i.jf
  %i.jh = sdiv exact i64 %i.jg, 568
  %i.ji = add nsw i64 %i.jh, %indvars.iv121       ; 2 uses
  %i.jj = icmp eq i64 %i.ji, 0
  br i1 %i.jj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph109
  %i.jk = getelementptr inbounds nuw [568 x i8], ptr %i.jc, i64 %indvars.iv121
  br label %_ZNSt5dequeIN2PP8WhenthenESaIS1_EEixEm.exit37

bb.ac:                                            ; preds = %.lr.ph109
  %i.jl = load ptr, ptr %i.aw, align 8, !tbaa !368, !noalias !1466
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.jl, i64 %i.ji
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !373, !noalias !1466
  br label %_ZNSt5dequeIN2PP8WhenthenESaIS1_EEixEm.exit37

_ZNSt5dequeIN2PP8WhenthenESaIS1_EEixEm.exit37:    ; preds = %bb.ab, %bb.ac
  %storemerge.i.i.i.i36 = phi ptr [ %i.jn, %bb.ac ], [ %i.jk, %bb.ab ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1469)
  %i.jo = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i36, i64 16
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !450, !noalias !1472 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i36, i64 24
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !451, !noalias !1472
  %i.js = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i36, i64 40
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !446, !noalias !1472
  %i.ju = ptrtoint ptr %i.jp to i64
  %i.jv = ptrtoint ptr %i.jr to i64
  %i.jw = sub i64 %i.ju, %i.jv
  %i.jx = ashr exact i64 %i.jw, 7
  %i.jy = add nsw i64 %i.jx, %indvars.iv116       ; 5 uses
  %i.jz = icmp sgt i64 %i.jy, -1
  br i1 %i.jz, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %_ZNSt5dequeIN2PP8WhenthenESaIS1_EEixEm.exit37
  %i.ka = icmp samesign ult i64 %i.jy, 4
  br i1 %i.ka, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.kb = getelementptr inbounds nuw [128 x i8], ptr %i.jp, i64 %indvars.iv116
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit.i38

bb.af:                                            ; preds = %bb.ad
  %i.kc = lshr i64 %i.jy, 2
  br label %bb.ah

bb.ag:                                            ; preds = %_ZNSt5dequeIN2PP8WhenthenESaIS1_EEixEm.exit37
  %i.kd = ashr i64 %i.jy, 2
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ke = phi i64 [ %i.kc, %bb.af ], [ %i.kd, %bb.ag ] ; 2 uses
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.jt, i64 %i.ke
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !456, !noalias !1472
  %i.kh = shl nsw i64 %i.ke, 2
  %i.ki = sub nsw i64 %i.jy, %i.kh
  %i.kj = getelementptr inbounds [128 x i8], ptr %i.kg, i64 %i.ki
  br label %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit.i38

_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit.i38:      ; preds = %bb.ah, %bb.ae
  %storemerge.i.i.i.i.i39 = phi ptr [ %i.kj, %bb.ah ], [ %i.kb, %bb.ae ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1475)
  store ptr %i.ba, ptr %3, align 8, !tbaa !123, !alias.scope !1478
  %i.kk = load ptr, ptr %storemerge.i.i.i.i.i39, align 8, !tbaa !27, !noalias !1475 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i.i39, i64 8
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !32, !noalias !1475 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29, !noalias !1478
  store i64 %i.km, ptr %i.a, align 8, !tbaa !124, !noalias !1478
  %i.kn = icmp ugt i64 %i.km, 15
  br i1 %i.kn, label %.noexc.i.i.i41, label %._crit_edge.i.i.i.i40

.noexc.i.i.i41:                                   ; preds = %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit.i38
  %i.ko = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ko, ptr %3, align 8, !tbaa !27, !alias.scope !1478
  %i.kp = load i64, ptr %i.a, align 8, !tbaa !124, !noalias !1478
  store i64 %i.kp, ptr %i.ba, align 8, !tbaa !33, !alias.scope !1478
  br label %._crit_edge.i.i.i.i40

._crit_edge.i.i.i.i40:                            ; preds = %.noexc.i.i.i41, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit.i38
  %i.kq = phi ptr [ %i.ko, %.noexc.i.i.i41 ], [ %i.ba, %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit.i38 ] ; 2 uses
  switch i64 %i.km, label %bb.aj [
    i64 1, label %bb.ai
    i64 0, label %_ZN2PP8Whenthen11get_varnameB5cxx11Ei.exit
  ]

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i40
  %i.kr = load i8, ptr %i.kk, align 1, !tbaa !33
  store i8 %i.kr, ptr %i.kq, align 1, !tbaa !33
  br label %_ZN2PP8Whenthen11get_varnameB5cxx11Ei.exit

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i40
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kq, ptr align 1 %i.kk, i64 %i.km, i1 false)
  br label %_ZN2PP8Whenthen11get_varnameB5cxx11Ei.exit

_ZN2PP8Whenthen11get_varnameB5cxx11Ei.exit:       ; preds = %._crit_edge.i.i.i.i40, %bb.ai, %bb.aj
  %i.ks = load i64, ptr %i.a, align 8, !tbaa !124, !noalias !1478 ; 2 uses
  store i64 %i.ks, ptr %i.bb, align 8, !tbaa !32, !alias.scope !1478
  %i.kt = load ptr, ptr %3, align 8, !tbaa !27, !alias.scope !1478
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.ks
  store i8 0, ptr %i.ku, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29, !noalias !1478
  %i.kv = load ptr, ptr %i.d, align 8, !tbaa !323 ; 8 uses
  %i.kw = load ptr, ptr %i.u, align 8, !tbaa !325
  %.not.i.i42 = icmp eq ptr %i.kv, %i.kw
  br i1 %.not.i.i42, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %_ZN2PP8Whenthen11get_varnameB5cxx11Ei.exit
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 16 ; 3 uses
  store ptr %i.kx, ptr %i.kv, align 8, !tbaa !123
  %i.ky = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.kz = icmp eq ptr %i.ky, %i.ba
  br i1 %i.kz, label %bb.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43

bb.al:                                            ; preds = %bb.ak
  %i.la = load i64, ptr %i.bb, align 8, !tbaa !32 ; 3 uses
  %i.lb = icmp ult i64 %i.la, 16
  call void @llvm.assume(i1 %i.lb)
  %i.lc = add nuw nsw i64 %i.la, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.kx, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.lc, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit46.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43: ; preds = %bb.ak
  store ptr %i.ky, ptr %i.kv, align 8, !tbaa !27
  %i.ld = load i64, ptr %i.ba, align 8, !tbaa !33
  store i64 %i.ld, ptr %i.kx, align 8, !tbaa !33
  %.pre = load i64, ptr %i.bb, align 8, !tbaa !32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit46.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit46.thread: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43
  %i.le = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43 ], [ %i.la, %bb.al ]
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  store i64 %i.le, ptr %i.lf, align 8, !tbaa !32
  store ptr %i.ba, ptr %3, align 8, !tbaa !27
  store i64 0, ptr %i.bb, align 8, !tbaa !32
  %i.lg = load ptr, ptr %i.d, align 8, !tbaa !323
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 32
  store ptr %i.lh, ptr %i.d, align 8, !tbaa !323
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

bb.am:                                            ; preds = %_ZN2PP8Whenthen11get_varnameB5cxx11Ei.exit
  %i.li = load ptr, ptr %1, align 8, !tbaa !321   ; 5 uses
  %i.lj = ptrtoint ptr %i.kv to i64
  %i.lk = ptrtoint ptr %i.li to i64               ; 2 uses
  %i.ll = sub i64 %i.lj, %i.lk                    ; 3 uses
  %i.lm = icmp eq i64 %i.ll, 9223372036854775776
  br i1 %i.lm, label %bb.an, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i59

bb.an:                                            ; preds = %bb.am
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.243) #30
          to label %.noexc90 unwind label %.loopexit.split-lp

.noexc90:                                         ; preds = %bb.an
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i59: ; preds = %bb.am
  %i.ln = ashr exact i64 %i.ll, 5                 ; 3 uses
  %.sroa.speculated.i.i60 = call i64 @llvm.umax.i64(i64 %i.ln, i64 1)
  %i.lo = add nsw i64 %.sroa.speculated.i.i60, %i.ln ; 2 uses
  %i.lp = icmp ult i64 %i.lo, %i.ln
  %i.lq = call i64 @llvm.umin.i64(i64 %i.lo, i64 288230376151711743)
  %i.lr = select i1 %i.lp, i64 288230376151711743, i64 %i.lq ; 3 uses
  %.not.i.i61 = icmp eq i64 %i.lr, 0
  br i1 %.not.i.i61, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i62, label %8

8:                                                ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i59
  %9 = shl nuw nsw i64 %i.lr, 5
  %10 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %9) #31
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i62 unwind label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i62: ; preds = %8, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i59
  %11 = phi ptr [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i59 ], [ %10, %8 ] ; 5 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %11, i64 %i.ll ; 4 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16 ; 3 uses
  store ptr %i.lt, ptr %i.ls, align 8, !tbaa !123
  %i.lu = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.lv = icmp eq ptr %i.lu, %i.ba
  br i1 %i.lv, label %bb.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

bb.ao:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i62
  %i.lw = load i64, ptr %i.bb, align 8, !tbaa !32 ; 3 uses
  %i.lx = icmp ult i64 %i.lw, 16
  call void @llvm.assume(i1 %i.lx)
  %i.ly = add nuw nsw i64 %i.lw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lt, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.ly, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i62
  store ptr %i.lu, ptr %i.ls, align 8, !tbaa !27
  %i.lz = load i64, ptr %i.ba, align 8, !tbaa !33
  store i64 %i.lz, ptr %i.lt, align 8, !tbaa !33
  %.pre.i65 = load i64, ptr %i.bb, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i66: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63, %bb.ao
  %i.ma = phi i64 [ %i.lw, %bb.ao ], [ %.pre.i65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63 ]
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  store i64 %i.ma, ptr %i.mb, align 8, !tbaa !32
  store ptr %i.ba, ptr %3, align 8, !tbaa !27
  store i64 0, ptr %i.bb, align 8, !tbaa !32
  store i8 0, ptr %i.ba, align 8, !tbaa !33
  %.not10.i.i.i.i67 = icmp eq ptr %i.li, %i.kv
  br i1 %.not10.i.i.i.i67, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i87, label %.lr.ph.i.i.i.i68

.lr.ph.i.i.i.i68:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i66, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i74
  %.012.i.i.i.i69 = phi ptr [ %i.mp, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i74 ], [ %11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i66 ] ; 5 uses
  %.0911.i.i.i.i70 = phi ptr [ %i.mo, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i74 ], [ %i.li, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i66 ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1479)
  call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  %i.mc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i69, i64 16 ; 3 uses
  store ptr %i.mc, ptr %.012.i.i.i.i69, align 8, !tbaa !123, !alias.scope !1479, !noalias !1482
  %i.md = load ptr, ptr %.0911.i.i.i.i70, align 8, !tbaa !27, !alias.scope !1482, !noalias !1479 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i70, i64 16 ; 5 uses
  %i.mf = icmp eq ptr %i.md, %i.me
  br i1 %i.mf, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i71

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i68
  %i.mg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i70, i64 8
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !32, !alias.scope !1482, !noalias !1479 ; 3 uses
  %i.mi = icmp ult i64 %i.mh, 16
  call void @llvm.assume(i1 %i.mi)
  %i.mj = add nuw nsw i64 %i.mh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.mc, ptr noundef nonnull align 8 dereferenceable(1) %i.me, i64 %i.mj, i1 false), !alias.scope !1484
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i71: ; preds = %.lr.ph.i.i.i.i68
  store ptr %i.md, ptr %.012.i.i.i.i69, align 8, !tbaa !27, !alias.scope !1479, !noalias !1482
  %i.mk = load i64, ptr %i.me, align 8, !tbaa !33, !alias.scope !1482, !noalias !1479
  store i64 %i.mk, ptr %i.mc, align 8, !tbaa !33, !alias.scope !1479, !noalias !1482
  %.phi.trans.insert.i.i.i.i.i72 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i70, i64 8
  %.pre.i.i.i.i.i73 = load i64, ptr %.phi.trans.insert.i.i.i.i.i72, align 8, !tbaa !32, !alias.scope !1482, !noalias !1479
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i74

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i74: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i71, %bb.ap
  %i.ml = phi i64 [ %i.mh, %bb.ap ], [ %.pre.i.i.i.i.i73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i71 ]
  %i.mm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i70, i64 8
  %i.mn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i69, i64 8
  store i64 %i.ml, ptr %i.mn, align 8, !tbaa !32, !alias.scope !1479, !noalias !1482
  store ptr %i.me, ptr %.0911.i.i.i.i70, align 8, !tbaa !27, !alias.scope !1482, !noalias !1479
  store i64 0, ptr %i.mm, align 8, !tbaa !32, !alias.scope !1482, !noalias !1479
  store i8 0, ptr %i.me, align 8, !tbaa !33, !alias.scope !1482, !noalias !1479
  %i.mo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i70, i64 32 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i69, i64 32 ; 2 uses
  %.not.i.i.i.i75 = icmp eq ptr %i.mo, %i.kv
  br i1 %.not.i.i.i.i75, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i87, label %.lr.ph.i.i.i.i68, !llvm.loop !1460

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i87: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i66
  %.0.lcssa.i.i.i.i77 = phi ptr [ %11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i66 ], [ %i.mp, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i74 ]
  %i.mq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i77, i64 32
  %.not.i27.i89 = icmp eq ptr %i.li, null
  br i1 %.not.i27.i89, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit46, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i87
  %i.mr = load ptr, ptr %i.u, align 8, !tbaa !325
  %i.ms = ptrtoint ptr %i.mr to i64
  %i.mt = sub i64 %i.ms, %i.lk
  call void @_ZdlPvm(ptr noundef nonnull %i.li, i64 noundef %i.mt) #32
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit46

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit46: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26.i87, %bb.aq
  store ptr %11, ptr %1, align 8, !tbaa !321
  store ptr %i.mq, ptr %i.d, align 8, !tbaa !323
  %i.mu = getelementptr inbounds nuw [32 x i8], ptr %11, i64 %i.lr
  store ptr %i.mu, ptr %i.u, align 8, !tbaa !325
  %.pre124 = load ptr, ptr %3, align 8, !tbaa !27 ; 2 uses
  %i.mv = icmp eq ptr %.pre124, %i.ba
  br i1 %i.mv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit46
  %i.mw = load i64, ptr %i.ba, align 8, !tbaa !33
  %i.mx = add i64 %i.mw, 1
  call void @_ZdlPvm(ptr noundef %.pre124, i64 noundef %i.mx) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit46, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit46.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %exitcond120.not = icmp eq i64 %indvars.iv.next117, %wide.trip.count119
  br i1 %exitcond120.not, label %._crit_edge110, label %.lr.ph109, !llvm.loop !1485

.loopexit:                                        ; preds = %8
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit.split-lp:                               ; preds = %bb.an
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.my = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.mz = icmp eq ptr %i.my, %i.ba
  br i1 %i.mz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.ar
  %i.na = load i64, ptr %i.ba, align 8, !tbaa !33
  %i.nb = add i64 %i.na, 1
  call void @_ZdlPvm(ptr noundef %i.my, i64 noundef %i.nb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
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
  %i.cc = add nuw nsw i32 %.018, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.cc, %i.ac
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !1486

.loopexit:                                        ; preds = %.preheader, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit17
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP11PowerParser13list_rb_startEv(ptr noundef nonnull align 8 dereferenceable(2796) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !123
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !32
  store i8 0, ptr %i.a, align 8, !tbaa !33
end_hunk_0
begin_hunk_1_@_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2PP8VariableEEC2IS5_S8_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISC_SD_EEclsr6_PCCFPISC_SD_EE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOS_ISC_SD_E:bb.a
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !27   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
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
  %3 = ashr exact i64 %i.g, 5                     ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  %4 = add nsw i64 %.sroa.speculated.i, %3        ; 2 uses
  %5 = icmp ult i64 %4, %3
  %6 = tail call i64 @llvm.umin.i64(i64 %4, i64 288230376151711743)
  %7 = select i1 %5, i64 288230376151711743, i64 %6 ; 4 uses
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %8, %i.f
  %.not.i = icmp eq i64 %7, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %10

10:                                               ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %11 = shl nuw nsw i64 %7, 5
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #31
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %10
  %13 = phi ptr [ %12, %10 ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 %9 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !123
  %i.k = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !32   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.m, ptr %i.a, align 8, !tbaa !124
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.o, ptr %i.i, align 8, !tbaa !27
  %i.p = load i64, ptr %i.a, align 8, !tbaa !124
  store i64 %i.p, ptr %i.j, align 8, !tbaa !33
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.q = phi ptr [ %i.o, %.noexc ], [ %i.j, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %i.k, align 1, !tbaa !33
  store i8 %i.r, ptr %i.q, align 1, !tbaa !33
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !32
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %13, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ai, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1911)
  call void @llvm.experimental.noalias.scope.decl(metadata !1914)
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.w, ptr %.012.i.i.i, align 8, !tbaa !123, !alias.scope !1911, !noalias !1914
  %i.x = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !27, !alias.scope !1914, !noalias !1911 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !32, !alias.scope !1914, !noalias !1911 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false), !alias.scope !1916
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.x, ptr %.012.i.i.i, align 8, !tbaa !27, !alias.scope !1911, !noalias !1914
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !33, !alias.scope !1914, !noalias !1911
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !33, !alias.scope !1911, !noalias !1914
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !32, !alias.scope !1914, !noalias !1911
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.af = phi i64 [ %i.ab, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !32, !alias.scope !1911, !noalias !1914
  store ptr %i.y, ptr %.0911.i.i.i, align 8, !tbaa !27, !alias.scope !1914, !noalias !1911
  store i64 0, ptr %i.ag, align 8, !tbaa !32, !alias.scope !1914, !noalias !1911
  store i8 0, ptr %i.y, align 8, !tbaa !33, !alias.scope !1914, !noalias !1911
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !1460

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %13, %bb.e ], [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.ax, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1917)
  call void @llvm.experimental.noalias.scope.decl(metadata !1920)
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.al, ptr %.012.i.i.i28, align 8, !tbaa !123, !alias.scope !1917, !noalias !1920
  %i.am = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !27, !alias.scope !1920, !noalias !1917 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !32, !alias.scope !1920, !noalias !1917 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false), !alias.scope !1922
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.am, ptr %.012.i.i.i28, align 8, !tbaa !27, !alias.scope !1917, !noalias !1920
  %i.at = load i64, ptr %i.an, align 8, !tbaa !33, !alias.scope !1920, !noalias !1917
  store i64 %i.at, ptr %i.al, align 8, !tbaa !33, !alias.scope !1917, !noalias !1920
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !32, !alias.scope !1920, !noalias !1917
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.g
  %i.au = phi i64 [ %i.aq, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !32, !alias.scope !1917, !noalias !1920
  store ptr %i.an, ptr %.0911.i.i.i29, align 8, !tbaa !27, !alias.scope !1920, !noalias !1917
  store i64 0, ptr %i.av, align 8, !tbaa !32, !alias.scope !1920, !noalias !1917
  store i8 0, ptr %i.an, align 8, !tbaa !33, !alias.scope !1920, !noalias !1917
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.ax, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !1460

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !325
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bc) #32
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  store ptr %13, ptr %0, align 8, !tbaa !321
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !323
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %13, i64 %7
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !325
  ret void

bb.i:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  %i.bh = call ptr @__cxa_begin_catch(ptr %i.bg) #29 ; 0 uses
  %14 = shl nuw nsw i64 %7, 5
  call void @_ZdlPvm(ptr noundef nonnull %13, i64 noundef %14) #32
  invoke void @__cxa_rethrow() #30
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.be

bb.l:                                             ; preds = %bb.i
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #33
  unreachable

bb.m:                                             ; preds = %bb.j
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
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %3

3:                                                ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %4 = shl nuw nsw i64 %i.l, 5
  %5 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #31
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %3
  %6 = phi ptr [ %5, %3 ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 %i.n ; 4 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %8, ptr %7, align 8, !tbaa !123
  %9 = load ptr, ptr %2, align 8, !tbaa !27       ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !32   ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.p, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(1) %10, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  store ptr %9, ptr %7, align 8, !tbaa !27
  %i.s = load i64, ptr %10, align 8, !tbaa !33
  store i64 %i.s, ptr %8, align 8, !tbaa !33
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.t = phi i64 [ %i.p, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.t, ptr %i.v, align 8, !tbaa !32
  store ptr %10, ptr %2, align 8, !tbaa !27
  store i64 0, ptr %i.u, align 8, !tbaa !32
  store i8 0, ptr %10, align 8, !tbaa !33
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ai, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1926)
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.w, ptr %.012.i.i.i, align 8, !tbaa !123, !alias.scope !1923, !noalias !1926
  %i.x = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !27, !alias.scope !1926, !noalias !1923 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !32, !alias.scope !1926, !noalias !1923 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false), !alias.scope !1928
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.x, ptr %.012.i.i.i, align 8, !tbaa !27, !alias.scope !1923, !noalias !1926
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !33, !alias.scope !1926, !noalias !1923
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !33, !alias.scope !1923, !noalias !1926
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !32, !alias.scope !1926, !noalias !1923
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.af = phi i64 [ %i.ab, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !32, !alias.scope !1923, !noalias !1926
  store ptr %i.y, ptr %.0911.i.i.i, align 8, !tbaa !27, !alias.scope !1926, !noalias !1923
  store i64 0, ptr %i.ag, align 8, !tbaa !32, !alias.scope !1926, !noalias !1923
  store i8 0, ptr %i.y, align 8, !tbaa !33, !alias.scope !1926, !noalias !1923
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !1460

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.ax, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1929)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1932)
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.al, ptr %.012.i.i.i18, align 8, !tbaa !123, !alias.scope !1929, !noalias !1932
  %i.am = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !27, !alias.scope !1932, !noalias !1929 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !32, !alias.scope !1932, !noalias !1929 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false), !alias.scope !1934
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.am, ptr %.012.i.i.i18, align 8, !tbaa !27, !alias.scope !1929, !noalias !1932
  %i.at = load i64, ptr %i.an, align 8, !tbaa !33, !alias.scope !1932, !noalias !1929
  store i64 %i.at, ptr %i.al, align 8, !tbaa !33, !alias.scope !1929, !noalias !1932
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !32, !alias.scope !1932, !noalias !1929
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.e
  %i.au = phi i64 [ %i.aq, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !32, !alias.scope !1929, !noalias !1932
  store ptr %i.an, ptr %.0911.i.i.i19, align 8, !tbaa !27, !alias.scope !1932, !noalias !1929
  store i64 0, ptr %i.av, align 8, !tbaa !32, !alias.scope !1932, !noalias !1929
  store i8 0, ptr %i.an, align 8, !tbaa !33, !alias.scope !1932, !noalias !1929
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.ax, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !1460

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !325
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bc) #32
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %6, ptr %0, align 8, !tbaa !321
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !323
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %i.l
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !325
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
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !323  ; 3 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !321    ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i, label %.noexc26, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE12_M_check_lenEmPKc.exit
  %i.x = icmp ugt i64 %i.w, 9223372036854775776
  br i1 %i.x, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !834

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #31
          to label %.noexc26 unwind label %bb.h

.noexc26:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNKSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE12_M_check_lenEmPKc.exit
  %i.z = phi ptr [ null, %_ZNKSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE12_M_check_lenEmPKc.exit ], [ %i.y, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.z, ptr %i.q, align 8, !tbaa !321
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !323
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !325
  %i.ad = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.t, ptr %i.s, ptr noundef %i.z)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %.noexc26
  %i.ae = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.af = load ptr, ptr %i.q, align 8, !tbaa !321 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !325
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.aj) #32
  br label %bb.j

bb.f:                                             ; preds = %.noexc26
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !323
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %i.p, %bb.f ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %i.c, %bb.f ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1935)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1938)
  %i.ak = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !338, !alias.scope !1938, !noalias !1935
  store <2 x ptr> %i.ak, ptr %.012.i.i.i, align 8, !tbaa !338, !alias.scope !1935, !noalias !1938
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !325, !alias.scope !1938, !noalias !1935
  store ptr %i.an, ptr %i.al, align 8, !tbaa !325, !alias.scope !1935, !noalias !1938
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !1938, !noalias !1935
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i, !llvm.loop !1940

_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit: ; preds = %.lr.ph.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.f ], [ %i.ap, %.lr.ph.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit34, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, %.lr.ph.i.i.i29
  %.012.i.i.i30 = phi ptr [ %i.aw, %.lr.ph.i.i.i29 ], [ %i.aq, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 3 uses
  %.0911.i.i.i31 = phi ptr [ %i.av, %.lr.ph.i.i.i29 ], [ %1, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1941)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1944)
  %i.ar = load <2 x ptr>, ptr %.0911.i.i.i31, align 8, !tbaa !338, !alias.scope !1944, !noalias !1941
  store <2 x ptr> %i.ar, ptr %.012.i.i.i30, align 8, !tbaa !338, !alias.scope !1941, !noalias !1944
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !325, !alias.scope !1944, !noalias !1941
  store ptr %i.au, ptr %i.as, align 8, !tbaa !325, !alias.scope !1941, !noalias !1944
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i31, i8 0, i64 24, i1 false), !alias.scope !1944, !noalias !1941
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 24 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit34, label %.lr.ph.i.i.i29, !llvm.loop !1940

_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit34: ; preds = %.lr.ph.i.i.i29, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %.0.lcssa.i.i.i33 = phi ptr [ %i.aq, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ], [ %i.aw, %.lr.ph.i.i.i29 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EE13_M_deallocateEPS8_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit34
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !833
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ba) #32
  br label %_ZNSt12_Vector_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EE13_M_deallocateEPS8_m.exit

_ZNSt12_Vector_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EE13_M_deallocateEPS8_m.exit: ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit34, %bb.g
  store ptr %i.p, ptr %0, align 8, !tbaa !810
  store ptr %.0.lcssa.i.i.i33, ptr %i.a, align 8, !tbaa !807
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bb, ptr %i.ax, align 8, !tbaa !833
  ret void

bb.h:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %bb.d, %bb.e, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.h ], [ %i.ae, %bb.e ], [ %i.ae, %bb.d ]
  %i.be = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.bf = tail call ptr @__cxa_begin_catch(ptr %i.be) #29 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #32
  invoke void @__cxa_rethrow() #30
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bd

bb.l:                                             ; preds = %bb.i
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  tail call void @__clang_call_terminate(ptr %i.bh) #33
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
end_hunk_1
