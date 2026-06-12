inline.NumInlined: 500
inline.NumDeleted: 225
begin_hunk_0_@_ZN9Fibonacci10get_numberEj:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  %i.q = load <2 x ptr>, ptr %.0911.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !17, !noalias !14
  store <2 x ptr> %i.q, ptr %.012.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !14, !noalias !17
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21, !alias.scope !17, !noalias !14
  store ptr %i.t, ptr %i.r, align 8, !tbaa !21, !alias.scope !14, !noalias !17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !17, !noalias !14
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.u, %i.l
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI6BigIntSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !23

_ZNSt6vectorI6BigIntSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !12
  br label %_ZNSt6vectorI6BigIntSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i

_ZNSt6vectorI6BigIntSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i: ; preds = %_ZNSt6vectorI6BigIntSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.loopexit.i, %_ZNSt12_Vector_baseI6BigIntSaIS0_EE11_M_allocateEm.exit.i
  %i.w = phi ptr [ %.pre.i, %_ZNSt6vectorI6BigIntSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.loopexit.i ], [ %i.e, %_ZNSt12_Vector_baseI6BigIntSaIS0_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.not.i8.i = icmp eq ptr %i.w, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI6BigIntSaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorI6BigIntSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #16
  br label %_ZNSt12_Vector_baseI6BigIntSaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseI6BigIntSaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.b, %_ZNSt6vectorI6BigIntSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  store ptr %i.p, ptr %1, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  store ptr %i.ab, ptr %i.k, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.b
  store ptr %i.ac, ptr %i.c, align 8, !tbaa !8
  %.pre60 = ptrtoint ptr %i.p to i64
  br label %_ZNSt6vectorI6BigIntSaIS0_EE7reserveEm.exit

_ZNSt6vectorI6BigIntSaIS0_EE7reserveEm.exit:      ; preds = %bb.a, %_ZNSt12_Vector_baseI6BigIntSaIS0_EE13_M_deallocateEPS0_m.exit.i
  %.pre-phi = phi i64 [ %.pre60, %_ZNSt12_Vector_baseI6BigIntSaIS0_EE13_M_deallocateEPS0_m.exit.i ], [ %i.g, %bb.a ]
  %i.ad = phi ptr [ %i.p, %_ZNSt12_Vector_baseI6BigIntSaIS0_EE13_M_deallocateEPS0_m.exit.i ], [ %i.e, %bb.a ]
  %i.ae = phi ptr [ %i.ab, %_ZNSt12_Vector_baseI6BigIntSaIS0_EE13_M_deallocateEPS0_m.exit.i ], [ %i.l, %bb.a ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.ag, %.pre-phi
  %i.ai = sdiv exact i64 %i.ah, 24
  %i.aj = trunc i64 %i.ai to i32                  ; 2 uses
  %.not56 = icmp ult i32 %2, %i.aj
  br i1 %.not56, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorI6BigIntSaIS0_EE7reserveEm.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  br label %bb.h

._crit_edge.loopexit:                             ; preds = %bb.al
  %.pre59 = load ptr, ptr %1, align 8, !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorI6BigIntSaIS0_EE7reserveEm.exit
  %i.at = phi ptr [ %.pre59, %._crit_edge.loopexit ], [ %i.ad, %_ZNSt6vectorI6BigIntSaIS0_EE7reserveEm.exit ]
  %i.au = zext i32 %2 to i64
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !25 ; 2 uses
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !26 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i19 = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i.i.i.i.i19, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.bc = icmp ugt i64 %i.bb, 9223372036854775800
  br i1 %i.bc, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i, !prof !27

.noexc.i.i.i:                                     ; preds = %bb.c
  call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.bd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #15
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i, %._crit_edge
  %i.be = phi ptr [ null, %._crit_edge ], [ %i.bd, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.be, ptr %0, align 8, !tbaa !26
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !25
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !21
  %i.bi = load ptr, ptr %i.av, align 8, !tbaa !19 ; 3 uses
  %i.bj = load ptr, ptr %i.aw, align 8, !tbaa !19
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 4 uses
  %i.bn = icmp sgt i64 %i.bm, 8
  br i1 %i.bn, label %bb.e, label %bb.f, !prof !28

bb.e:                                             ; preds = %bb.d
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.be, ptr align 8 %i.bi, i64 %i.bm, i1 false)
  br label %_ZN6BigIntC2ERKS_.exit

bb.f:                                             ; preds = %bb.d
  %i.bo = icmp eq i64 %i.bm, 8
  br i1 %i.bo, label %bb.g, label %_ZN6BigIntC2ERKS_.exit

bb.g:                                             ; preds = %bb.f
  %i.bp = load i64, ptr %i.bi, align 8, !tbaa !29
  store i64 %i.bp, ptr %i.be, align 8, !tbaa !29
  br label %_ZN6BigIntC2ERKS_.exit

_ZN6BigIntC2ERKS_.exit:                           ; preds = %bb.e, %bb.f, %bb.g
  %i.bq = getelementptr inbounds i8, ptr %i.be, i64 %i.bm
  store ptr %i.bq, ptr %i.bf, align 8, !tbaa !25
  ret void

bb.h:                                             ; preds = %.lr.ph, %bb.al
  %.01457 = phi i32 [ %i.aj, %.lr.ph ], [ %i.ff, %bb.al ] ; 4 uses
  switch i32 %.01457, label %bb.y [
    i32 0, label %bb.i
    i32 1, label %bb.n
  ]

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.br = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #15 ; 4 uses
  store i64 0, ptr %i.br, align 8, !tbaa !29
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 4 uses
  store ptr %i.br, ptr %3, align 8, !tbaa !26
  store ptr %i.bs, ptr %i.ap, align 8, !tbaa !25
  store ptr %i.bs, ptr %i.ao, align 8, !tbaa !21
  %i.bt = load ptr, ptr %i.af, align 8, !tbaa !13 ; 6 uses
  %i.bu = load ptr, ptr %i.c, align 8, !tbaa !8
  %.not.i.i = icmp eq ptr %i.bt, %i.bu
  br i1 %.not.i.i, label %bb.j, label %_ZNSt6vectorI6BigIntSaIS0_EE9push_backEOS0_.exit.thread

_ZNSt6vectorI6BigIntSaIS0_EE9push_backEOS0_.exit.thread: ; preds = %bb.i
  store ptr %i.br, ptr %i.bt, align 8, !tbaa !26
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.bs, ptr %i.bv, align 8, !tbaa !25
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store ptr %i.bs, ptr %i.bw, align 8, !tbaa !21
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store ptr %i.bx, ptr %i.af, align 8, !tbaa !13
  br label %_ZN6BigIntD2Ev.exit

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNSt6vectorI6BigIntSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZNSt6vectorI6BigIntSaIS0_EE9push_backEOS0_.exit unwind label %bb.l

_ZNSt6vectorI6BigIntSaIS0_EE9push_backEOS0_.exit: ; preds = %bb.j
  %.pr = load ptr, ptr %3, align 8, !tbaa !26     ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i, label %_ZN6BigIntD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorI6BigIntSaIS0_EE9push_backEOS0_.exit
  %i.by = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %.pr to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.cb) #16
  br label %_ZN6BigIntD2Ev.exit

_ZN6BigIntD2Ev.exit:                              ; preds = %_ZNSt6vectorI6BigIntSaIS0_EE9push_backEOS0_.exit.thread, %_ZNSt6vectorI6BigIntSaIS0_EE9push_backEOS0_.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.al

bb.l:                                             ; preds = %bb.j
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = load ptr, ptr %3, align 8, !tbaa !26    ; 3 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i20, label %_ZN6BigIntD2Ev.exit21, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cd to i64
  %i.ch = sub i64 %i.cf, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.ch) #16
  br label %_ZN6BigIntD2Ev.exit21

_ZN6BigIntD2Ev.exit21:                            ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.am

bb.n:                                             ; preds = %bb.h
  %i.ci = load ptr, ptr %1, align 8, !tbaa !31    ; 2 uses
  %i.cj = load ptr, ptr %i.af, align 8, !tbaa !31 ; 6 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.cl = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #15 ; 4 uses
  store i64 0, ptr %i.cl, align 8, !tbaa !29
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 4 uses
  store ptr %i.cl, ptr %4, align 8, !tbaa !26
  store ptr %i.cm, ptr %i.al, align 8, !tbaa !25
  store ptr %i.cm, ptr %i.ak, align 8, !tbaa !21
  %i.cn = load ptr, ptr %i.c, align 8, !tbaa !8
  %.not.i.i22 = icmp eq ptr %i.ci, %i.cn
  br i1 %.not.i.i22, label %bb.p, label %_ZNSt6vectorI6BigIntSaIS0_EE9push_backEOS0_.exit24.thread

_ZNSt6vectorI6BigIntSaIS0_EE9push_backEOS0_.exit24.thread: ; preds = %bb.o
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !26
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.cm, ptr %i.co, align 8, !tbaa !25
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store ptr %i.cm, ptr %i.cp, align 8, !tbaa !21
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store ptr %i.cq, ptr %i.af, align 8, !tbaa !13
  br label %_ZN6BigIntD2Ev.exit26

bb.p:                                             ; preds = %bb.o
  invoke void @_ZNSt6vectorI6BigIntSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt6vectorI6BigIntSaIS0_EE9push_backEOS0_.exit24 unwind label %bb.r

_ZNSt6vectorI6BigIntSaIS0_EE9push_backEOS0_.exit24: ; preds = %bb.p
  %.pr51 = load ptr, ptr %4, align 8, !tbaa !26   ; 3 uses
  %.not.i.i.i.i25 = icmp eq ptr %.pr51, null
  br i1 %.not.i.i.i.i25, label %_ZN6BigIntD2Ev.exit26, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorI6BigIntSaIS0_EE9push_backEOS0_.exit24
  %i.cr = load ptr, ptr %i.ak, align 8, !tbaa !21
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %.pr51 to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %.pr51, i64 noundef %i.cu) #16
  br label %_ZN6BigIntD2Ev.exit26

_ZN6BigIntD2Ev.exit26:                            ; preds = %_ZNSt6vectorI6BigIntSaIS0_EE9push_backEOS0_.exit24.thread, %_ZNSt6vectorI6BigIntSaIS0_EE9push_backEOS0_.exit24, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.cv = landingpad { ptr, i32 }
          cleanup
  %i.cw = load ptr, ptr %4, align 8, !tbaa !26    ; 3 uses
  %.not.i.i.i.i27 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i.i27, label %_ZN6BigIntD2Ev.exit28, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = load ptr, ptr %i.ak, align 8, !tbaa !21
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cw to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.da) #16
  br label %_ZN6BigIntD2Ev.exit28

_ZN6BigIntD2Ev.exit28:                            ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.am

bb.t:                                             ; preds = %_ZN6BigIntD2Ev.exit26, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.db = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #15 ; 4 uses
  store i64 1, ptr %i.db, align 8, !tbaa !29
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 4 uses
  store ptr %i.db, ptr %5, align 8, !tbaa !26
  store ptr %i.dc, ptr %i.an, align 8, !tbaa !25
  store ptr %i.dc, ptr %i.am, align 8, !tbaa !21
  %9 = load ptr, ptr %i.af, align 8, !tbaa !13    ; 6 uses
  %i.dd = load ptr, ptr %i.c, align 8, !tbaa !8
  %.not.i.i29 = icmp eq ptr %9, %i.dd
  br i1 %.not.i.i29, label %bb.u, label %_ZNSt6vectorI6BigIntSaIS0_EE9push_backEOS0_.exit31.thread

_ZNSt6vectorI6BigIntSaIS0_EE9push_backEOS0_.exit31.thread: ; preds = %bb.t
  store ptr %i.db, ptr %9, align 8, !tbaa !26
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.dc, ptr %i.de, align 8, !tbaa !25
  %i.df = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.dc, ptr %i.df, align 8, !tbaa !21
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.dg, ptr %i.af, align 8, !tbaa !13
  br label %_ZN6BigIntD2Ev.exit33

bb.u:                                             ; preds = %bb.t
  invoke void @_ZNSt6vectorI6BigIntSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %9, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZNSt6vectorI6BigIntSaIS0_EE9push_backEOS0_.exit31 unwind label %bb.w

_ZNSt6vectorI6BigIntSaIS0_EE9push_backEOS0_.exit31: ; preds = %bb.u
  %.pr52 = load ptr, ptr %5, align 8, !tbaa !26   ; 3 uses
  %.not.i.i.i.i32 = icmp eq ptr %.pr52, null
  br i1 %.not.i.i.i.i32, label %_ZN6BigIntD2Ev.exit33, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorI6BigIntSaIS0_EE9push_backEOS0_.exit31
  %i.dh = load ptr, ptr %i.am, align 8, !tbaa !21
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %.pr52 to i64
  %i.dk = sub i64 %i.di, %i.dj
  call void @_ZdlPvm(ptr noundef nonnull %.pr52, i64 noundef %i.dk) #16
  br label %_ZN6BigIntD2Ev.exit33

_ZN6BigIntD2Ev.exit33:                            ; preds = %_ZNSt6vectorI6BigIntSaIS0_EE9push_backEOS0_.exit31.thread, %_ZNSt6vectorI6BigIntSaIS0_EE9push_backEOS0_.exit31, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.al

bb.w:                                             ; preds = %bb.u
  %i.dl = landingpad { ptr, i32 }
          cleanup
  %i.dm = load ptr, ptr %5, align 8, !tbaa !26    ; 3 uses
  %.not.i.i.i.i34 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i34, label %_ZN6BigIntD2Ev.exit35, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dn = load ptr, ptr %i.am, align 8, !tbaa !21
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = ptrtoint ptr %i.dm to i64
  %i.dq = sub i64 %i.do, %i.dp
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dq) #16
  br label %_ZN6BigIntD2Ev.exit35

_ZN6BigIntD2Ev.exit35:                            ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.am

bb.y:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.dr = add i32 %.01457, -2
  call void @_ZN9Fibonacci10get_numberEj(ptr dead_on_unwind nonnull writable sret(%class.BigInt) align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.dr)
  %i.ds = add i32 %.01457, -1
  invoke void @_ZN9Fibonacci10get_numberEj(ptr dead_on_unwind nonnull writable sret(%class.BigInt) align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.ds)
          to label %bb.z unwind label %bb.af

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN6BigIntC2ES_S_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull %7, ptr noundef nonnull %8)
          to label %bb.aa unwind label %bb.ag

bb.aa:                                            ; preds = %bb.z
  %i.dt = load ptr, ptr %i.af, align 8, !tbaa !13 ; 5 uses
  %i.du = load ptr, ptr %i.c, align 8, !tbaa !8
  %.not.i.i36 = icmp eq ptr %i.dt, %i.du
  br i1 %.not.i.i36, label %bb.ab, label %_ZNSt6vectorI6BigIntSaIS0_EE9push_backEOS0_.exit38.thread

_ZNSt6vectorI6BigIntSaIS0_EE9push_backEOS0_.exit38.thread: ; preds = %bb.aa
  %i.dv = load <2 x ptr>, ptr %6, align 16, !tbaa !19
  store <2 x ptr> %i.dv, ptr %i.dt, align 8, !tbaa !19
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dx = load ptr, ptr %i.aq, align 16, !tbaa !21
  store ptr %i.dx, ptr %i.dw, align 8, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  store ptr %i.dy, ptr %i.af, align 8, !tbaa !13
  br label %_ZN6BigIntD2Ev.exit40

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZNSt6vectorI6BigIntSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.dt, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZNSt6vectorI6BigIntSaIS0_EE9push_backEOS0_.exit38 unwind label %bb.ah

_ZNSt6vectorI6BigIntSaIS0_EE9push_backEOS0_.exit38: ; preds = %bb.ab
  %.pr53 = load ptr, ptr %6, align 16, !tbaa !26  ; 3 uses
  %.not.i.i.i.i39 = icmp eq ptr %.pr53, null
  br i1 %.not.i.i.i.i39, label %_ZN6BigIntD2Ev.exit40, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorI6BigIntSaIS0_EE9push_backEOS0_.exit38
  %i.dz = load ptr, ptr %i.aq, align 16, !tbaa !21
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %.pr53 to i64
  %i.ec = sub i64 %i.ea, %i.eb
  call void @_ZdlPvm(ptr noundef nonnull %.pr53, i64 noundef %i.ec) #16
  br label %_ZN6BigIntD2Ev.exit40

_ZN6BigIntD2Ev.exit40:                            ; preds = %_ZNSt6vectorI6BigIntSaIS0_EE9push_backEOS0_.exit38.thread, %_ZNSt6vectorI6BigIntSaIS0_EE9push_backEOS0_.exit38, %bb.ac
  %i.ed = load ptr, ptr %8, align 8, !tbaa !26    ; 3 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i.i41, label %_ZN6BigIntD2Ev.exit42, label %bb.ad

bb.ad:                                            ; preds = %_ZN6BigIntD2Ev.exit40
  %i.ee = load ptr, ptr %i.ar, align 8, !tbaa !21
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = ptrtoint ptr %i.ed to i64
  %i.eh = sub i64 %i.ef, %i.eg
  call void @_ZdlPvm(ptr noundef nonnull %i.ed, i64 noundef %i.eh) #16
  br label %_ZN6BigIntD2Ev.exit42

_ZN6BigIntD2Ev.exit42:                            ; preds = %_ZN6BigIntD2Ev.exit40, %bb.ad
  %i.ei = load ptr, ptr %7, align 8, !tbaa !26    ; 3 uses
  %.not.i.i.i.i43 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i43, label %_ZN6BigIntD2Ev.exit44, label %bb.ae

bb.ae:                                            ; preds = %_ZN6BigIntD2Ev.exit42
  %i.ej = load ptr, ptr %i.as, align 8, !tbaa !21
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = ptrtoint ptr %i.ei to i64
  %i.em = sub i64 %i.ek, %i.el
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.em) #16
  br label %_ZN6BigIntD2Ev.exit44

_ZN6BigIntD2Ev.exit44:                            ; preds = %_ZN6BigIntD2Ev.exit42, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.al

bb.af:                                            ; preds = %bb.y
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6BigIntD2Ev.exit48

bb.ag:                                            ; preds = %bb.z
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6BigIntD2Ev.exit46

bb.ah:                                            ; preds = %bb.ab
  %i.ep = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eq = load ptr, ptr %6, align 16, !tbaa !26   ; 3 uses
  %.not.i.i.i.i45 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i.i45, label %_ZN6BigIntD2Ev.exit46, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.er = load ptr, ptr %i.aq, align 16, !tbaa !21
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %i.eq to i64
  %i.eu = sub i64 %i.es, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef %i.eu) #16
  br label %_ZN6BigIntD2Ev.exit46

_ZN6BigIntD2Ev.exit46:                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.eo, %bb.ag ], [ %i.ep, %bb.ah ], [ %i.ep, %bb.ai ] ; 2 uses
  %i.ev = load ptr, ptr %8, align 8, !tbaa !26    ; 3 uses
  %.not.i.i.i.i47 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i.i47, label %_ZN6BigIntD2Ev.exit48, label %bb.aj

bb.aj:                                            ; preds = %_ZN6BigIntD2Ev.exit46
  %i.ew = load ptr, ptr %i.ar, align 8, !tbaa !21
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %i.ev to i64
  %i.ez = sub i64 %i.ex, %i.ey
  call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef %i.ez) #16
  br label %_ZN6BigIntD2Ev.exit48

_ZN6BigIntD2Ev.exit48:                            ; preds = %bb.aj, %_ZN6BigIntD2Ev.exit46, %bb.af
  %.pn.pn = phi { ptr, i32 } [ %i.en, %bb.af ], [ %.pn, %_ZN6BigIntD2Ev.exit46 ], [ %.pn, %bb.aj ]
  %i.fa = load ptr, ptr %7, align 8, !tbaa !26    ; 3 uses
  %.not.i.i.i.i49 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i49, label %_ZN6BigIntD2Ev.exit50, label %bb.ak

bb.ak:                                            ; preds = %_ZN6BigIntD2Ev.exit48
  %i.fb = load ptr, ptr %i.as, align 8, !tbaa !21
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %i.fa to i64
  %i.fe = sub i64 %i.fc, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.fe) #16
  br label %_ZN6BigIntD2Ev.exit50

_ZN6BigIntD2Ev.exit50:                            ; preds = %_ZN6BigIntD2Ev.exit48, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.am

bb.al:                                            ; preds = %_ZN6BigIntD2Ev.exit, %_ZN6BigIntD2Ev.exit33, %_ZN6BigIntD2Ev.exit44
  %i.ff = add i32 %.01457, 1                      ; 2 uses
  %.not = icmp ugt i32 %i.ff, %2
  br i1 %.not, label %._crit_edge.loopexit, label %bb.h, !llvm.loop !32

bb.am:                                            ; preds = %_ZN6BigIntD2Ev.exit50, %_ZN6BigIntD2Ev.exit35, %_ZN6BigIntD2Ev.exit28, %_ZN6BigIntD2Ev.exit21
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN6BigIntD2Ev.exit50 ], [ %i.cc, %_ZN6BigIntD2Ev.exit21 ], [ %i.dl, %_ZN6BigIntD2Ev.exit35 ], [ %i.cv, %_ZN6BigIntD2Ev.exit28 ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

end_hunk_0
