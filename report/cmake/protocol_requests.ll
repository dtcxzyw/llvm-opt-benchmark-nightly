Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/protocol_requests?download=true
inline.NumInlined: 9185
inline.NumDeleted: 3620
loop-unroll.NumCompletelyUnrolled: 172
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 186
begin_hunk_0_@_ZN3dap17InitializeRequestC2ERKS0_:bb.a
  %i.ab = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(33) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.ab, ptr %i.u, align 8, !tbaa !55
  %i.ac = load i64, ptr %i.f, align 8, !tbaa !59
  store i64 %i.ac, ptr %i.w, align 8, !tbaa !40
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ad = phi ptr [ %i.ab, %.noexc ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.z, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.ae = load i8, ptr %i.x, align 1, !tbaa !40
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !40
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.x, i64 %i.z, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.af = load i64, ptr %i.f, align 8, !tbaa !59  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !39
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !55
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 0, ptr %i.ai, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !103, !range !75, !noundef !76
  store i8 %i.al, ptr %i.aj, align 8, !tbaa !103
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !36
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !55 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !39 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store i64 %i.ar, ptr %i.e, align 8, !tbaa !59
  %i.as = icmp ugt i64 %i.ar, 15
  br i1 %i.as, label %.noexc.i.i25, label %._crit_edge.i.i.i24

.noexc.i.i25:                                     ; preds = %bb.f
  %i.at = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(33) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc26 unwind label %bb.q   ; 2 uses

.noexc26:                                         ; preds = %.noexc.i.i25
  store ptr %i.at, ptr %i.am, align 8, !tbaa !55
  %i.au = load i64, ptr %i.e, align 8, !tbaa !59
  store i64 %i.au, ptr %i.ao, align 8, !tbaa !40
  br label %._crit_edge.i.i.i24

._crit_edge.i.i.i24:                              ; preds = %.noexc26, %bb.f
  %i.av = phi ptr [ %i.at, %.noexc26 ], [ %i.ao, %bb.f ] ; 2 uses
  switch i64 %i.ar, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i24
  %i.aw = load i8, ptr %i.ap, align 1, !tbaa !40
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !40
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %i.ap, i64 %i.ar, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i24
  %i.ax = load i64, ptr %i.e, align 8, !tbaa !59  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !39
  %i.az = load ptr, ptr %i.am, align 8, !tbaa !55
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ax
  store i8 0, ptr %i.ba, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !103, !range !75, !noundef !76
  store i8 %i.bd, ptr %i.bb, align 8, !tbaa !103
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !131
  store i8 %i.bg, ptr %i.be, align 8, !tbaa !131
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 113
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !134, !range !75, !noundef !76
  store i8 %i.bj, ptr %i.bh, align 1, !tbaa !134
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 114
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 114
  %i.bm = load i8, ptr %i.bl, align 2, !tbaa !131
  store i8 %i.bm, ptr %i.bk, align 2, !tbaa !131
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 115
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 115
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !134, !range !75, !noundef !76
  store i8 %i.bp, ptr %i.bn, align 1, !tbaa !134
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !36
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !55 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !39 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i64 %i.bv, ptr %i.d, align 8, !tbaa !59
  %i.bw = icmp ugt i64 %i.bv, 15
  br i1 %i.bw, label %.noexc.i.i29, label %._crit_edge.i.i.i28

.noexc.i.i29:                                     ; preds = %bb.i
  %i.bx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(33) %i.bq, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc30 unwind label %bb.r   ; 2 uses

.noexc30:                                         ; preds = %.noexc.i.i29
  store ptr %i.bx, ptr %i.bq, align 8, !tbaa !55
  %i.by = load i64, ptr %i.d, align 8, !tbaa !59
  store i64 %i.by, ptr %i.bs, align 8, !tbaa !40
  br label %._crit_edge.i.i.i28

._crit_edge.i.i.i28:                              ; preds = %.noexc30, %bb.i
  %i.bz = phi ptr [ %i.bx, %.noexc30 ], [ %i.bs, %bb.i ] ; 2 uses
  switch i64 %i.bv, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i28
  %i.ca = load i8, ptr %i.bt, align 1, !tbaa !40
  store i8 %i.ca, ptr %i.bz, align 1, !tbaa !40
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i28
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bz, ptr align 1 %i.bt, i64 %i.bv, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i28
  %i.cb = load i64, ptr %i.d, align 8, !tbaa !59  ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !39
  %i.cd = load ptr, ptr %i.bq, align 8, !tbaa !55
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cb
  store i8 0, ptr %i.ce, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !103, !range !75, !noundef !76
  store i8 %i.ch, ptr %i.cf, align 8, !tbaa !103
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  store ptr %i.ck, ptr %i.ci, align 8, !tbaa !36
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !55 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !39 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 %i.cn, ptr %i.c, align 8, !tbaa !59
  %i.co = icmp ugt i64 %i.cn, 15
  br i1 %i.co, label %.noexc.i.i33, label %._crit_edge.i.i.i32

.noexc.i.i33:                                     ; preds = %bb.l
  %i.cp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(33) %i.ci, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc34 unwind label %bb.s   ; 2 uses

.noexc34:                                         ; preds = %.noexc.i.i33
  store ptr %i.cp, ptr %i.ci, align 8, !tbaa !55
  %i.cq = load i64, ptr %i.c, align 8, !tbaa !59
  store i64 %i.cq, ptr %i.ck, align 8, !tbaa !40
  br label %._crit_edge.i.i.i32

._crit_edge.i.i.i32:                              ; preds = %.noexc34, %bb.l
  %i.cr = phi ptr [ %i.cp, %.noexc34 ], [ %i.ck, %bb.l ] ; 2 uses
  switch i64 %i.cn, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i32
  %i.cs = load i8, ptr %i.cl, align 1, !tbaa !40
  store i8 %i.cs, ptr %i.cr, align 1, !tbaa !40
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cr, ptr align 1 %i.cl, i64 %i.cn, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i32
  %i.ct = add nuw i64 %i.b, 160
  %i.cu = add nuw i64 %i.b, 218
  %i.cv = add nuw i64 %i.a, 192
  %i.cw = add nuw i64 %i.a, 218
  %rt.bound0 = icmp ult i64 %i.ct, %i.cw
  %rt.bound1 = icmp ult i64 %i.cv, %i.cu
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.rtscalar, label %.rtvec, !prof !56

bb.p:                                             ; preds = %.noexc.i.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit41

bb.q:                                             ; preds = %.noexc.i.i25
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit38

bb.r:                                             ; preds = %.noexc.i.i29
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.s:                                             ; preds = %.noexc.i.i33
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = load ptr, ptr %i.bq, align 8, !tbaa !55 ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.bs
  br i1 %i.dc, label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.s
  %i.dd = load i64, ptr %i.bs, align 8, !tbaa !40
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #21
  br label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.r
  %.pn = phi { ptr, i32 } [ %i.cz, %bb.r ], [ %i.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.da, %bb.s ] ; 2 uses
  %i.df = load ptr, ptr %i.am, align 8, !tbaa !55 ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.ao
  br i1 %i.dg, label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36: ; preds = %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.dh = load i64, ptr %i.ao, align 8, !tbaa !40
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #21
  br label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit38

_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit38: ; preds = %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.cy, %bb.q ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36 ], [ %.pn, %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit ] ; 2 uses
  %i.dj = load ptr, ptr %i.u, align 8, !tbaa !55  ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.w
  br i1 %i.dk, label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39: ; preds = %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit38
  %i.dl = load i64, ptr %i.w, align 8, !tbaa !40
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #21
  br label %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit41

_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit41: ; preds = %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39, %bb.p
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cx, %bb.p ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39 ], [ %.pn.pn, %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit38 ]
  %i.dn = load ptr, ptr %0, align 8, !tbaa !55    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.h
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit41
  %i.dp = load i64, ptr %i.h, align 8, !tbaa !40
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN3dap8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn.pn.pn

.rtvec:                                           ; preds = %bb.o
  %i.dr = load i64, ptr %i.c, align 8, !tbaa !59  ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !39
  %i.dt = load ptr, ptr %i.ci, align 8, !tbaa !55
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dr
  store i8 0, ptr %i.du, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.dx = load i8, ptr %i.dw, align 8, !tbaa !103, !range !75, !noundef !76
  store i8 %i.dx, ptr %i.dv, align 8, !tbaa !103
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ea = load <16 x i8>, ptr %i.dz, align 8, !tbaa !131
  store <16 x i8> %i.ea, ptr %i.dy, align 8, !tbaa !131
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ed = load i8, ptr %i.ec, align 8, !tbaa !131
  store i8 %i.ed, ptr %i.eb, align 8, !tbaa !131
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 217
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 217
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !134, !range !75, !noundef !76
  store i8 %i.eg, ptr %i.ee, align 1, !tbaa !134
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.o
  %i.eh = load i64, ptr %i.c, align 8, !tbaa !59  ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !39
  %i.ej = load ptr, ptr %i.ci, align 8, !tbaa !55
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eh
  store i8 0, ptr %i.ek, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.en = load i8, ptr %i.em, align 8, !tbaa !103, !range !75, !noundef !76
  store i8 %i.en, ptr %i.el, align 8, !tbaa !103
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.eq = load i8, ptr %i.ep, align 8, !tbaa !131
  store i8 %i.eq, ptr %i.eo, align 8, !tbaa !131
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 201
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 201
  %i.et = load i8, ptr %i.es, align 1, !tbaa !134, !range !75, !noundef !76
  store i8 %i.et, ptr %i.er, align 1, !tbaa !134
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 202
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 202
  %i.ew = load i8, ptr %i.ev, align 2, !tbaa !131
  store i8 %i.ew, ptr %i.eu, align 2, !tbaa !131
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 203
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 203
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !134, !range !75, !noundef !76
  store i8 %i.ez, ptr %i.ex, align 1, !tbaa !134
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.fc = load i8, ptr %i.fb, align 4, !tbaa !131
  store i8 %i.fc, ptr %i.fa, align 4, !tbaa !131
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 205
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 205
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !134, !range !75, !noundef !76
  store i8 %i.ff, ptr %i.fd, align 1, !tbaa !134
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 206
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 206
  %i.fi = load i8, ptr %i.fh, align 2, !tbaa !131
  store i8 %i.fi, ptr %i.fg, align 2, !tbaa !131
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 207
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 207
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !134, !range !75, !noundef !76
  store i8 %i.fl, ptr %i.fj, align 1, !tbaa !134
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.fo = load i8, ptr %i.fn, align 8, !tbaa !131
  store i8 %i.fo, ptr %i.fm, align 8, !tbaa !131
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 209
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 209
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !134, !range !75, !noundef !76
  store i8 %i.fr, ptr %i.fp, align 1, !tbaa !134
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 210
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 210
  %i.fu = load i8, ptr %i.ft, align 2, !tbaa !131
  store i8 %i.fu, ptr %i.fs, align 2, !tbaa !131
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 211
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 211
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !134, !range !75, !noundef !76
  store i8 %i.fx, ptr %i.fv, align 1, !tbaa !134
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 212
  %i.ga = load i8, ptr %i.fz, align 4, !tbaa !131
  store i8 %i.ga, ptr %i.fy, align 4, !tbaa !131
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 213
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 213
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !134, !range !75, !noundef !76
  store i8 %i.gd, ptr %i.gb, align 1, !tbaa !134
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 214
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 214
  %i.gg = load i8, ptr %i.gf, align 2, !tbaa !131
  store i8 %i.gg, ptr %i.ge, align 2, !tbaa !131
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 215
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 215
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !134, !range !75, !noundef !76
  store i8 %i.gj, ptr %i.gh, align 1, !tbaa !134
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.gm = load i8, ptr %i.gl, align 8, !tbaa !131
  store i8 %i.gm, ptr %i.gk, align 8, !tbaa !131
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 217
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 217
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !134, !range !75, !noundef !76
  store i8 %i.gp, ptr %i.gn, align 1, !tbaa !134
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFbPN3dap15FieldSerializerEEZZNS0_6TypeOfINS0_17InitializeRequestEE4typeEvENK2TI9serializeEPNS0_10SerializerEPKvEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !483
  %.val2 = load ptr, ptr %1, align 8, !tbaa !97
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !33
  %i.a = tail call noundef zeroext i1 @_ZN3dap6TypeOfINS_17InitializeRequestEE15serializeFieldsEPNS_15FieldSerializerEPKv(ptr noundef %.val2, ptr noundef %.val.val)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFbPN3dap15FieldSerializerEEZZNS0_6TypeOfINS0_17InitializeRequestEE4typeEvENK2TI9serializeEPNS0_10SerializerEPKvEUlS2_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZZN3dap6TypeOfINS1_17InitializeRequestEE4typeEvENK2TI9serializeEPNS1_10SerializerEPKvEUlPNS1_15FieldSerializerEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
end_hunk_0
begin_hunk_1_@_ZN3dap8optionalINS_6SourceEEC2Ev:bb.a

_ZSt8_DestroyIPN3dap3anyES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN3dap3anyES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZN3dap3anyC2ISt6vectorIS0_SaIS0_EEEERKT_.exit.i.i
  %i.q = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN3dap3anyES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.c, %_ZN3dap3anyC2ISt6vectorIS0_SaIS0_EEEERKT_.exit.i.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN3dap3anyES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !70
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #21
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN3dap3anyESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %i.w

bb.g:                                             ; preds = %bb.e, %_ZSt8_DestroyIPN3dap3anyES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.x, align 8, !tbaa !74
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.y, i8 0, i64 72, i1 false)
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !36
  store i8 0, ptr %i.aa, align 8, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !36
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 0, ptr %i.ae, align 8, !tbaa !39
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 0, ptr %i.af, align 8, !tbaa !103
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !36
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 0, ptr %i.aj, align 8, !tbaa !39
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 0, ptr %i.ak, align 8, !tbaa !103
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.an, ptr %i.al, align 8, !tbaa !36
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 0, ptr %i.ao, align 8, !tbaa !39
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 0, ptr %i.ap, align 8, !tbaa !103
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.aq, i8 0, i64 49, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFbPN3dap15FieldSerializerEEZZNS0_6TypeOfINS0_13SourceRequestEE4typeEvENK2TI9serializeEPNS0_10SerializerEPKvEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !604
  %.val2 = load ptr, ptr %1, align 8, !tbaa !97
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !33
  %i.a = tail call noundef zeroext i1 @_ZN3dap6TypeOfINS_13SourceRequestEE15serializeFieldsEPNS_15FieldSerializerEPKv(ptr noundef %.val2, ptr noundef %.val.val)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFbPN3dap15FieldSerializerEEZZNS0_6TypeOfINS0_13SourceRequestEE4typeEvENK2TI9serializeEPNS0_10SerializerEPKvEUlS2_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZZN3dap6TypeOfINS1_13SourceRequestEE4typeEvENK2TI9serializeEPNS1_10SerializerEPKvEUlPNS1_15FieldSerializerEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZZN3dap6TypeOfINS_13SourceRequestEE4typeEvENK2TI9serializeEPNS_10SerializerEPKvEUlPNS_15FieldSerializerEE_, ptr %0, align 8, !tbaa !93
  br label %_ZNSt14_Function_base13_Base_managerIZZN3dap6TypeOfINS1_13SourceRequestEE4typeEvENK2TI9serializeEPNS1_10SerializerEPKvEUlPNS1_15FieldSerializerEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !33
  br label %_ZNSt14_Function_base13_Base_managerIZZN3dap6TypeOfINS1_13SourceRequestEE4typeEvENK2TI9serializeEPNS1_10SerializerEPKvEUlPNS1_15FieldSerializerEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !46
  store i64 %.val.i, ptr %0, align 8, !tbaa !46
  br label %_ZNSt14_Function_base13_Base_managerIZZN3dap6TypeOfINS1_13SourceRequestEE4typeEvENK2TI9serializeEPNS1_10SerializerEPKvEUlPNS1_15FieldSerializerEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZZN3dap6TypeOfINS1_13SourceRequestEE4typeEvENK2TI9serializeEPNS1_10SerializerEPKvEUlPNS1_15FieldSerializerEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN3dap6TypeOfINS_17StackTraceRequestEE4typeEvEN2TID0Ev(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN3dap13BasicTypeInfoINS_17StackTraceRequestEEE, i64 16), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN3dap13BasicTypeInfoINS_17StackTraceRequestEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !40
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #21, !inline_history !273
  br label %_ZN3dap13BasicTypeInfoINS_17StackTraceRequestEED2Ev.exit

_ZN3dap13BasicTypeInfoINS_17StackTraceRequestEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZN3dap8TypeInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #20, !inline_history !273
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #21
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNK3dap13BasicTypeInfoINS_17StackTraceRequestEE4nameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !36
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !39   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.f, ptr %i.a, align 8, !tbaa !59
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !55
  %i.i = load i64, ptr %i.a, align 8, !tbaa !59
  store i64 %i.i, ptr %i.c, align 8, !tbaa !40
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !40
  store i8 %i.k, ptr %i.j, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !39
  %i.n = load ptr, ptr %0, align 8, !tbaa !55
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNK3dap13BasicTypeInfoINS_17StackTraceRequestEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i64 64
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNK3dap13BasicTypeInfoINS_17StackTraceRequestEE9alignmentEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i64 8
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNK3dap13BasicTypeInfoINS_17StackTraceRequestEE9constructEPv(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNK3dap13BasicTypeInfoINS_17StackTraceRequestEE13copyConstructEPvPKv(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 64
  %i.d = add i64 %i.a, 64
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec, !prof !56

.rtvec:                                           ; preds = %bb.a
  %i.e = load <16 x i8>, ptr %2, align 1, !tbaa !131
  store <16 x i8> %i.e, ptr %1, align 1, !tbaa !131
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load i8, ptr %i.g, align 1, !tbaa !276, !range !75, !noundef !76
  store i8 %i.h, ptr %i.f, align 1, !tbaa !276
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !59
  store i64 %i.k, ptr %i.i, align 8, !tbaa !59
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = load i8, ptr %i.m, align 8, !tbaa !101, !range !75, !noundef !76
  store i8 %i.n, ptr %i.l, align 8, !tbaa !101
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !59
  store i64 %i.q, ptr %i.o, align 8, !tbaa !59
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.t = load i8, ptr %i.s, align 8, !tbaa !101, !range !75, !noundef !76
  store i8 %i.t, ptr %i.r, align 8, !tbaa !101
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.w = load i64, ptr %i.v, align 8, !tbaa !59
  store i64 %i.w, ptr %i.u, align 8, !tbaa !59
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.x = load i8, ptr %2, align 1, !tbaa !131
  store i8 %i.x, ptr %1, align 1, !tbaa !131
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !134, !range !75, !noundef !76
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !134
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !131
  store i8 %i.ad, ptr %i.ab, align 1, !tbaa !131
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !134, !range !75, !noundef !76
  store i8 %i.ag, ptr %i.ae, align 1, !tbaa !134
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !131
  store i8 %i.aj, ptr %i.ah, align 1, !tbaa !131
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.am = load i8, ptr %i.al, align 1, !tbaa !134, !range !75, !noundef !76
  store i8 %i.am, ptr %i.ak, align 1, !tbaa !134
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !131
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !131
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !134, !range !75, !noundef !76
  store i8 %i.as, ptr %i.aq, align 1, !tbaa !134
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.av = load i8, ptr %i.au, align 1, !tbaa !131
  store i8 %i.av, ptr %i.at, align 1, !tbaa !131
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !134, !range !75, !noundef !76
  store i8 %i.ay, ptr %i.aw, align 1, !tbaa !134
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !131
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !131
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !134, !range !75, !noundef !76
  store i8 %i.be, ptr %i.bc, align 1, !tbaa !134
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !131
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !131
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !134, !range !75, !noundef !76
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !134
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !131
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !131
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 15
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !134, !range !75, !noundef !76
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !134
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !276, !range !75, !noundef !76
  store i8 %i.bt, ptr %i.br, align 1, !tbaa !276
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !59
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !59
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !101, !range !75, !noundef !76
  store i8 %i.bz, ptr %i.bx, align 8, !tbaa !101
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !59
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !59
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !101, !range !75, !noundef !76
  store i8 %i.cf, ptr %i.cd, align 8, !tbaa !101
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !59
  store i64 %i.ci, ptr %i.cg, align 8, !tbaa !59
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK3dap13BasicTypeInfoINS_17StackTraceRequestEE8destructEPv(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZZN3dap6TypeOfINS_17StackTraceRequestEE4typeEvENK2TI11deserializeEPKNS_12DeserializerEPv(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN3dap6TypeOfINS_17StackTraceRequestEE17deserializeFieldsEPKNS_12DeserializerEPv(ptr noundef %1, ptr noundef %2)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZZN3dap6TypeOfINS_17StackTraceRequestEE4typeEvENK2TI9serializeEPNS_10SerializerEPKv(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %3 = alloca %"class.std::function.261", align 8 ; 12 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.e, align 8
  store i64 %i.b, ptr %3, align 8, !tbaa !46
  store ptr @_ZNSt17_Function_handlerIFbPN3dap15FieldSerializerEEZZNS0_6TypeOfINS0_17StackTraceRequestEE4typeEvENK2TI9serializeEPNS0_10SerializerEPKvEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_, ptr %i.d, align 8, !tbaa !78
  store ptr @_ZNSt17_Function_handlerIFbPN3dap15FieldSerializerEEZZNS0_6TypeOfINS0_17StackTraceRequestEE4typeEvENK2TI9serializeEPNS0_10SerializerEPKvEUlS2_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation, ptr %i.c, align 8, !tbaa !52
  %i.f = load ptr, ptr %1, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #22
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i1 %i.i

bb.e:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  %.not.i2 = icmp eq ptr %i.o, null
  br i1 %.not.i2, label %_ZNSt14_Function_baseD2Ev.exit3, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #22
  unreachable

_ZNSt14_Function_baseD2Ev.exit3:                  ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %i.n
}

end_hunk_1
begin_hunk_2_@"_ZNSt17_Function_handlerIFbPN3dap10SerializerEEZNS0_6TypeOfINS0_13SourceRequestEE15serializeFieldsEPNS0_15FieldSerializerEPKvE3$_0E9_M_invokeERKSt9_Any_dataOS2_":bb.a
  %i.c = getelementptr i8, ptr %.val2, i64 40
  %.val2.val4 = load ptr, ptr %i.c, align 8, !tbaa !44 ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %.val.val, i64 %.val2.val
  %i.e = load ptr, ptr %.val2.val4, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %.val2.val4, ptr noundef %.val3, ptr noundef %i.d), !inline_history !1135
  ret i1 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbPN3dap10SerializerEEZNS0_6TypeOfINS0_13SourceRequestEE15serializeFieldsEPNS0_15FieldSerializerEPKvE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN3dap6TypeOfINS1_13SourceRequestEE15serializeFieldsEPNS1_15FieldSerializerEPKvE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN3dap6TypeOfINS_13SourceRequestEE15serializeFieldsEPNS_15FieldSerializerEPKvE3$_0", ptr %0, align 8, !tbaa !93
  br label %"_ZNSt14_Function_base13_Base_managerIZN3dap6TypeOfINS1_13SourceRequestEE15serializeFieldsEPNS1_15FieldSerializerEPKvE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !33
  br label %"_ZNSt14_Function_base13_Base_managerIZN3dap6TypeOfINS1_13SourceRequestEE15serializeFieldsEPNS1_15FieldSerializerEPKvE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !287
  br label %"_ZNSt14_Function_base13_Base_managerIZN3dap6TypeOfINS1_13SourceRequestEE15serializeFieldsEPNS1_15FieldSerializerEPKvE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN3dap6TypeOfINS1_13SourceRequestEE15serializeFieldsEPNS1_15FieldSerializerEPKvE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3dap8TypeInfo6createINS_13BasicTypeInfoINS_8optionalINS_16StackFrameFormatEEEEEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN3dap13BasicTypeInfoINS_8optionalINS_16StackFrameFormatEEEEE, i64 16), ptr %i.a, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !36
  %i.d = load ptr, ptr %0, align 8, !tbaa !55     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !39   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZN3dap13BasicTypeInfoINS_8optionalINS_16StackFrameFormatEEEEC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !55
  %i.k = load i64, ptr %i.e, align 8, !tbaa !40
  store i64 %i.k, ptr %i.c, align 8, !tbaa !40
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !39
  br label %_ZN3dap13BasicTypeInfoINS_8optionalINS_16StackFrameFormatEEEEC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN3dap13BasicTypeInfoINS_8optionalINS_16StackFrameFormatEEEEC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %i.n, align 8, !tbaa !39
  store ptr %i.e, ptr %0, align 8, !tbaa !55
  store i64 0, ptr %i.m, align 8, !tbaa !39
  store i8 0, ptr %i.e, align 8, !tbaa !40
  tail call void @_ZN3dap8TypeInfo12deleteOnExitEPS0_(ptr noundef nonnull %i.a)
  ret ptr %i.a
}

declare noundef ptr @_ZN3dap6TypeOfINS_16StackFrameFormatEE4typeEv() local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3dap13BasicTypeInfoINS_8optionalINS_16StackFrameFormatEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN3dap13BasicTypeInfoINS_8optionalINS_16StackFrameFormatEEEEE, i64 16), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !40
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZN3dap8TypeInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3dap13BasicTypeInfoINS_8optionalINS_16StackFrameFormatEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN3dap13BasicTypeInfoINS_8optionalINS_16StackFrameFormatEEEEE, i64 16), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN3dap13BasicTypeInfoINS_8optionalINS_16StackFrameFormatEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !40
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #21, !inline_history !1139
  br label %_ZN3dap13BasicTypeInfoINS_8optionalINS_16StackFrameFormatEEEED2Ev.exit

_ZN3dap13BasicTypeInfoINS_8optionalINS_16StackFrameFormatEEEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZN3dap8TypeInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #20, !inline_history !1139
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #21
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNK3dap13BasicTypeInfoINS_8optionalINS_16StackFrameFormatEEEE4nameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !36
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !39   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.f, ptr %i.a, align 8, !tbaa !59
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !55
  %i.i = load i64, ptr %i.a, align 8, !tbaa !59
  store i64 %i.i, ptr %i.c, align 8, !tbaa !40
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !40
  store i8 %i.k, ptr %i.j, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !39
  %i.n = load ptr, ptr %0, align 8, !tbaa !55
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNK3dap13BasicTypeInfoINS_8optionalINS_16StackFrameFormatEEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i64 17
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNK3dap13BasicTypeInfoINS_8optionalINS_16StackFrameFormatEEEE9alignmentEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i64 1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNK3dap13BasicTypeInfoINS_8optionalINS_16StackFrameFormatEEEE9constructEPv(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %1, i8 0, i64 17, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNK3dap13BasicTypeInfoINS_8optionalINS_16StackFrameFormatEEEE13copyConstructEPvPKv(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 17
  %i.d = add i64 %i.a, 17
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec, !prof !56

.rtvec:                                           ; preds = %bb.a
  %i.e = load <16 x i8>, ptr %2, align 1, !tbaa !131
  store <16 x i8> %i.e, ptr %1, align 1, !tbaa !131
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load i8, ptr %i.g, align 1, !tbaa !276, !range !75, !noundef !76
  store i8 %i.h, ptr %i.f, align 1, !tbaa !276
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.i = load i8, ptr %2, align 1, !tbaa !131
  store i8 %i.i, ptr %1, align 1, !tbaa !131
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !134, !range !75, !noundef !76
  store i8 %i.l, ptr %i.j, align 1, !tbaa !134
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !131
  store i8 %i.o, ptr %i.m, align 1, !tbaa !131
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.r = load i8, ptr %i.q, align 1, !tbaa !134, !range !75, !noundef !76
  store i8 %i.r, ptr %i.p, align 1, !tbaa !134
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = load i8, ptr %i.t, align 1, !tbaa !131
  store i8 %i.u, ptr %i.s, align 1, !tbaa !131
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.x = load i8, ptr %i.w, align 1, !tbaa !134, !range !75, !noundef !76
  store i8 %i.x, ptr %i.v, align 1, !tbaa !134
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !131
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !131
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !134, !range !75, !noundef !76
  store i8 %i.ad, ptr %i.ab, align 1, !tbaa !134
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !131
  store i8 %i.ag, ptr %i.ae, align 1, !tbaa !131
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !134, !range !75, !noundef !76
  store i8 %i.aj, ptr %i.ah, align 1, !tbaa !134
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.am = load i8, ptr %i.al, align 1, !tbaa !131
  store i8 %i.am, ptr %i.ak, align 1, !tbaa !131
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !134, !range !75, !noundef !76
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !134
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !131
  store i8 %i.as, ptr %i.aq, align 1, !tbaa !131
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.av = load i8, ptr %i.au, align 1, !tbaa !134, !range !75, !noundef !76
  store i8 %i.av, ptr %i.at, align 1, !tbaa !134
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !131
  store i8 %i.ay, ptr %i.aw, align 1, !tbaa !131
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 15
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !134, !range !75, !noundef !76
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !134
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !276, !range !75, !noundef !76
  store i8 %i.be, ptr %i.bc, align 1, !tbaa !276
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK3dap13BasicTypeInfoINS_8optionalINS_16StackFrameFormatEEEE8destructEPv(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK3dap13BasicTypeInfoINS_8optionalINS_16StackFrameFormatEEEE11deserializeEPKNS_12DeserializerEPv(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"struct.dap::StackFrameFormat", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.a = tail call noundef ptr @_ZN3dap6TypeOfINS_16StackFrameFormatEE4typeEv() ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %3), !inline_history !1140
  br i1 %i.e, label %bb.b, label %_ZNK3dap12Deserializer11deserializeINS_16StackFrameFormatEEEbPNS_8optionalIT_EE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load <16 x i8>, ptr %3, align 16, !tbaa !131
  store <16 x i8> %i.f, ptr %2, align 1, !tbaa !131
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 1, ptr %i.g, align 1, !tbaa !276
  br label %_ZNK3dap12Deserializer11deserializeINS_16StackFrameFormatEEEbPNS_8optionalIT_EE.exit

_ZNK3dap12Deserializer11deserializeINS_16StackFrameFormatEEEbPNS_8optionalIT_EE.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i1 true
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK3dap13BasicTypeInfoINS_8optionalINS_16StackFrameFormatEEEE9serializeEPNS_10SerializerEPKv(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i8, ptr %i.a, align 1, !tbaa !276, !range !75, !noundef !76
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !1141
  br label %_ZN3dap10Serializer9serializeINS_16StackFrameFormatEEEbRKNS_8optionalIT_EE.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZN3dap6TypeOfINS_16StackFrameFormatEE4typeEv() ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(17) %2), !inline_history !1142
  br label %_ZN3dap10Serializer9serializeINS_16StackFrameFormatEEEbRKNS_8optionalIT_EE.exit

_ZN3dap10Serializer9serializeINS_16StackFrameFormatEEEbRKNS_8optionalIT_EE.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i1 [ %i.k, %bb.c ], [ true, %bb.b ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbPN3dap12DeserializerEEZNS0_6TypeOfINS0_17StackTraceRequestEE17deserializeFieldsEPKS1_PvE3$_0E9_M_invokeERKSt9_Any_dataOS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !1145
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.a, align 8, !tbaa !1146 ; 2 uses
  %.val3 = load ptr, ptr %1, align 8, !tbaa !90
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !33
  %i.b = getelementptr i8, ptr %.val2, i64 32
  %.val2.val = load i64, ptr %i.b, align 8, !tbaa !43
  %i.c = getelementptr i8, ptr %.val2, i64 40
  %.val2.val4 = load ptr, ptr %i.c, align 8, !tbaa !44 ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %.val.val, i64 %.val2.val
  %i.e = load ptr, ptr %.val2.val4, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %.val2.val4, ptr noundef %.val3, ptr noundef %i.d), !inline_history !1143
  ret i1 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbPN3dap12DeserializerEEZNS0_6TypeOfINS0_17StackTraceRequestEE17deserializeFieldsEPKS1_PvE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN3dap6TypeOfINS1_17StackTraceRequestEE17deserializeFieldsEPKNS1_12DeserializerEPvE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN3dap6TypeOfINS_17StackTraceRequestEE17deserializeFieldsEPKNS_12DeserializerEPvE3$_0", ptr %0, align 8, !tbaa !93
  br label %"_ZNSt14_Function_base13_Base_managerIZN3dap6TypeOfINS1_17StackTraceRequestEE17deserializeFieldsEPKNS1_12DeserializerEPvE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !33
  br label %"_ZNSt14_Function_base13_Base_managerIZN3dap6TypeOfINS1_17StackTraceRequestEE17deserializeFieldsEPKNS1_12DeserializerEPvE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !287
  br label %"_ZNSt14_Function_base13_Base_managerIZN3dap6TypeOfINS1_17StackTraceRequestEE17deserializeFieldsEPKNS1_12DeserializerEPvE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN3dap6TypeOfINS1_17StackTraceRequestEE17deserializeFieldsEPKNS1_12DeserializerEPvE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbPN3dap10SerializerEEZNS0_6TypeOfINS0_17StackTraceRequestEE15serializeFieldsEPNS0_15FieldSerializerEPKvE3$_0E9_M_invokeERKSt9_Any_dataOS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !1149
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.a, align 8, !tbaa !1150 ; 2 uses
  %.val3 = load ptr, ptr %1, align 8, !tbaa !95
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !33
  %i.b = getelementptr i8, ptr %.val2, i64 32
  %.val2.val = load i64, ptr %i.b, align 8, !tbaa !43
  %i.c = getelementptr i8, ptr %.val2, i64 40
  %.val2.val4 = load ptr, ptr %i.c, align 8, !tbaa !44 ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %.val.val, i64 %.val2.val
end_hunk_2
