Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/rocket_landing_mpc?download=true
inline.NumInlined: 2427
inline.NumDeleted: 1235
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN5Eigen8IOFormatC2EiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_S8_S8_c:bb.a
bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i28
  %i.ad = load i64, ptr %i.e, align 8, !tbaa !65  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !16
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !12
  %i.aj = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i64 %i.al, ptr %i.d, align 8, !tbaa !65
  %i.am = icmp ugt i64 %i.al, 15
  br i1 %i.am, label %.noexc.i32, label %._crit_edge.i.i31

.noexc.i32:                                       ; preds = %bb.f
  %i.an = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc33 unwind label %bb.s   ; 2 uses

.noexc33:                                         ; preds = %.noexc.i32
  store ptr %i.an, ptr %i.ah, align 8, !tbaa !15
  %i.ao = load i64, ptr %i.d, align 8, !tbaa !65
  store i64 %i.ao, ptr %i.ai, align 8, !tbaa !17
  br label %._crit_edge.i.i31

._crit_edge.i.i31:                                ; preds = %.noexc33, %bb.f
  %i.ap = phi ptr [ %i.an, %.noexc33 ], [ %i.ai, %bb.f ] ; 2 uses
  switch i64 %i.al, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i31
  %i.aq = load i8, ptr %i.aj, align 1, !tbaa !17
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !17
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i31
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %i.aj, i64 %i.al, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i31
  %i.ar = load i64, ptr %i.d, align 8, !tbaa !65  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !16
  %i.at = load ptr, ptr %i.ah, align 8, !tbaa !15
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 0, ptr %i.au, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !12
  %i.ax = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 %i.az, ptr %i.c, align 8, !tbaa !65
  %i.ba = icmp ugt i64 %i.az, 15
  br i1 %i.ba, label %.noexc.i36, label %._crit_edge.i.i35

.noexc.i36:                                       ; preds = %bb.i
  %i.bb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc37 unwind label %bb.t   ; 2 uses

.noexc37:                                         ; preds = %.noexc.i36
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !15
  %i.bc = load i64, ptr %i.c, align 8, !tbaa !65
  store i64 %i.bc, ptr %i.aw, align 8, !tbaa !17
  br label %._crit_edge.i.i35

._crit_edge.i.i35:                                ; preds = %.noexc37, %bb.i
  %i.bd = phi ptr [ %i.bb, %.noexc37 ], [ %i.aw, %bb.i ] ; 2 uses
  switch i64 %i.az, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i35
  %i.be = load i8, ptr %i.ax, align 1, !tbaa !17
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !17
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i35
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.ax, i64 %i.az, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i35
  %i.bf = load i64, ptr %i.c, align 8, !tbaa !65  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !16
  %i.bh = load ptr, ptr %i.av, align 8, !tbaa !15
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bf
  store i8 0, ptr %i.bi, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !12
  %i.bl = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 %i.bn, ptr %i.b, align 8, !tbaa !65
  %i.bo = icmp ugt i64 %i.bn, 15
  br i1 %i.bo, label %.noexc.i40, label %._crit_edge.i.i39

.noexc.i40:                                       ; preds = %bb.l
  %i.bp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc41 unwind label %bb.u   ; 2 uses

.noexc41:                                         ; preds = %.noexc.i40
  store ptr %i.bp, ptr %i.bj, align 8, !tbaa !15
  %i.bq = load i64, ptr %i.b, align 8, !tbaa !65
  store i64 %i.bq, ptr %i.bk, align 8, !tbaa !17
  br label %._crit_edge.i.i39

._crit_edge.i.i39:                                ; preds = %.noexc41, %bb.l
  %i.br = phi ptr [ %i.bp, %.noexc41 ], [ %i.bk, %bb.l ] ; 2 uses
  switch i64 %i.bn, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %._crit_edge.i.i43
  ]

bb.m:                                             ; preds = %._crit_edge.i.i39
  %i.bs = load i8, ptr %i.bl, align 1, !tbaa !17
  store i8 %i.bs, ptr %i.br, align 1, !tbaa !17
  br label %._crit_edge.i.i43

bb.n:                                             ; preds = %._crit_edge.i.i39
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr align 1 %i.bl, i64 %i.bn, i1 false)
  br label %._crit_edge.i.i43

._crit_edge.i.i43:                                ; preds = %bb.n, %bb.m, %._crit_edge.i.i39
  %i.bt = load i64, ptr %i.b, align 8, !tbaa !65  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !16
  %i.bv = load ptr, ptr %i.bj, align 8, !tbaa !15
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bt
  store i8 0, ptr %i.bw, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 6 uses
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !12
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  store i64 0, ptr %i.bz, align 8, !tbaa !16
  store i8 0, ptr %i.by, align 8, !tbaa !17
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  store ptr %i.cb, ptr %i.ca, align 8, !tbaa !12
  %i.cc = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.ce, ptr %i.a, align 8, !tbaa !65
  %i.cf = icmp ugt i64 %i.ce, 15
  br i1 %i.cf, label %.noexc.i47, label %._crit_edge.i.i46

.noexc.i47:                                       ; preds = %._crit_edge.i.i43
  %i.cg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc48 unwind label %bb.v   ; 2 uses

.noexc48:                                         ; preds = %.noexc.i47
  store ptr %i.cg, ptr %i.ca, align 8, !tbaa !15
  %i.ch = load i64, ptr %i.a, align 8, !tbaa !65
  store i64 %i.ch, ptr %i.cb, align 8, !tbaa !17
  br label %._crit_edge.i.i46

._crit_edge.i.i46:                                ; preds = %.noexc48, %._crit_edge.i.i43
  %i.ci = phi ptr [ %i.cg, %.noexc48 ], [ %i.cb, %._crit_edge.i.i43 ] ; 2 uses
  switch i64 %i.ce, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %bb.q
  ]

bb.o:                                             ; preds = %._crit_edge.i.i46
  %i.cj = load i8, ptr %i.cc, align 1, !tbaa !17
  store i8 %i.cj, ptr %i.ci, align 1, !tbaa !17
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i46
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ci, ptr align 1 %i.cc, i64 %i.ce, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i46
  %i.ck = load i64, ptr %i.a, align 8, !tbaa !65  ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !16
  %i.cm = load ptr, ptr %i.ca, align 8, !tbaa !15
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ck
  store i8 0, ptr %i.cn, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 %9, ptr %i.co, align 8, !tbaa !67
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 %1, ptr %i.cp, align 4, !tbaa !68
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 %2, ptr %i.cq, align 8, !tbaa !69
  %10 = and i32 %2, 1
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %bb.w, label %.critedge

bb.r:                                             ; preds = %.noexc.i29
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

bb.s:                                             ; preds = %.noexc.i32
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

bb.t:                                             ; preds = %.noexc.i36
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

bb.u:                                             ; preds = %.noexc.i40
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

bb.v:                                             ; preds = %.noexc.i47
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.w:                                             ; preds = %bb.q
  %i.cw = load i64, ptr %i.ae, align 8, !tbaa !16 ; 2 uses
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.w
  %i.cz = and i64 %i.cw, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
  %indvars.iv = phi i64 [ %i.cz, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.da = load ptr, ptr %i.t, align 8, !tbaa !15
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %indvars.iv.next
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !17
  %.not21 = icmp eq i8 %i.dc, 10
  br i1 %.not21, label %.critedge, label %bb.x

bb.x:                                             ; preds = %.lr.ph
  %i.dd = load i64, ptr %i.bz, align 8, !tbaa !16 ; 4 uses
  %i.de = add i64 %i.dd, 1                        ; 3 uses
  %i.df = load ptr, ptr %i.bx, align 8, !tbaa !15 ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.by
  br i1 %i.dg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.x
  %i.dh = icmp ult i64 %i.dd, 16
  call void @llvm.assume(i1 %i.dh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.x
  %i.di = load i64, ptr %i.by, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.dj = phi i64 [ %i.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.dk = icmp ugt i64 %i.de, %i.dj
  br i1 %i.dk, label %bb.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 noundef %i.dd, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc50 unwind label %bb.z

.noexc50:                                         ; preds = %bb.y
  %.pre.i.i = load ptr, ptr %i.bx, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc50
  %i.dl = phi ptr [ %.pre.i.i, %.noexc50 ], [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dd
  store i8 32, ptr %i.dm, align 1, !tbaa !17
  store i64 %i.de, ptr %i.bz, align 8, !tbaa !16
  %i.dn = load ptr, ptr %i.bx, align 8, !tbaa !15
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.de
  store i8 0, ptr %i.do, align 1, !tbaa !17
  %i.dp = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.dp, label %.lr.ph, label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = load ptr, ptr %i.ca, align 8, !tbaa !15 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.cb
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.z
  %i.dt = load i64, ptr %i.cb, align 8, !tbaa !17
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %.lr.ph, %bb.w, %bb.q
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.v
  %.pn = phi { ptr, i32 } [ %i.cv, %bb.v ], [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.dq, %bb.z ] ; 2 uses
  %i.dv = load ptr, ptr %i.bx, align 8, !tbaa !15 ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.by
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dx = load i64, ptr %i.by, align 8, !tbaa !17
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  %i.dz = load ptr, ptr %i.bj, align 8, !tbaa !15 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.bk
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.eb = load i64, ptr %i.bk, align 8, !tbaa !17
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %bb.u
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cu, %bb.u ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ] ; 2 uses
  %i.ed = load ptr, ptr %i.av, align 8, !tbaa !15 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.aw
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %i.ef = load i64, ptr %i.aw, align 8, !tbaa !17
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57, %bb.t
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ct, %bb.t ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ] ; 2 uses
  %i.eh = load ptr, ptr %i.ah, align 8, !tbaa !15 ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.ai
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %i.ej = load i64, ptr %i.ai, align 8, !tbaa !17
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60, %bb.s
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cs, %bb.s ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ] ; 2 uses
  %i.el = load ptr, ptr %i.t, align 8, !tbaa !15  ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.u
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  %i.en = load i64, ptr %i.u, align 8, !tbaa !17
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63, %bb.r
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cr, %bb.r ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ]
  %i.ep = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.g
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %i.er = load i64, ptr %i.g, align 8, !tbaa !17
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Eigen8IOFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(236) dereferenceable(236) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !17
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_3MapINS2_IdLi6ELi6ELi1ELi6ELi6EEELi0ENS_6StrideILi0ELi0EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_:bb.a
  %gep.i.5.4 = getelementptr i8, ptr %i.k, i64 272
  %i.ca = getelementptr i8, ptr %i.a, i64 232
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !35
  store double %i.cb, ptr %gep.i.5.4, align 8, !tbaa !35
  %gep.i.5.5 = getelementptr i8, ptr %i.k, i64 280
  %i.cc = getelementptr i8, ptr %i.a, i64 280
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !35
  store double %i.cd, ptr %gep.i.5.5, align 8, !tbaa !35
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_3MapINS2_IdLi6ELi3ELi1ELi6ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKS8_RKSA_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !30     ; 18 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %.not.i.i = icmp eq i64 %i.c, 6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %.not8.i.i = icmp eq i64 %i.e, 3
  %or.cond.i.i = select i1 %.not.i.i, i1 %.not8.i.i, i1 false
  br i1 %or.cond.i.i, label %.preheader.lr.ph.split.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = mul nsw i64 %i.e, %i.c
  %.not.i.i.i = icmp eq i64 %i.f, 18
  br i1 %.not.i.i.i, label %.preheader.lr.ph.i.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.g) #20
  %i.h = tail call noalias dereferenceable_or_null(144) ptr @malloc(i64 noundef 144) #22 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.noexc.i, label %.sink.split.i.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !23
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

.sink.split.i.i.i:                                ; preds = %bb.c
  store ptr %i.h, ptr %0, align 8, !tbaa !25
  br label %.preheader.lr.ph.i.thread.i

.preheader.lr.ph.i.thread.i:                      ; preds = %.sink.split.i.i.i, %bb.b
  store i64 6, ptr %i.b, align 8, !tbaa !26
  store i64 3, ptr %i.d, align 8, !tbaa !27
  br label %.preheader.lr.ph.split.i.i

.preheader.lr.ph.split.i.i:                       ; preds = %.preheader.lr.ph.i.thread.i, %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !25     ; 18 uses
  %i.l = load double, ptr %i.a, align 8, !tbaa !35
  store double %i.l, ptr %i.k, align 8, !tbaa !35
  %gep.i.i.1 = getelementptr i8, ptr %i.k, i64 8
  %i.m = getelementptr i8, ptr %i.a, i64 24
  %i.n = load double, ptr %i.m, align 8, !tbaa !35
  store double %i.n, ptr %gep.i.i.1, align 8, !tbaa !35
  %gep.i.i.2 = getelementptr i8, ptr %i.k, i64 16
  %i.o = getelementptr i8, ptr %i.a, i64 48
  %i.p = load double, ptr %i.o, align 8, !tbaa !35
  store double %i.p, ptr %gep.i.i.2, align 8, !tbaa !35
  %gep.i.i.3 = getelementptr i8, ptr %i.k, i64 24
  %i.q = getelementptr i8, ptr %i.a, i64 72
  %i.r = load double, ptr %i.q, align 8, !tbaa !35
  store double %i.r, ptr %gep.i.i.3, align 8, !tbaa !35
  %gep.i.i.4 = getelementptr i8, ptr %i.k, i64 32
  %i.s = getelementptr i8, ptr %i.a, i64 96
  %i.t = load double, ptr %i.s, align 8, !tbaa !35
  store double %i.t, ptr %gep.i.i.4, align 8, !tbaa !35
  %gep.i.i.5 = getelementptr i8, ptr %i.k, i64 40
  %i.u = getelementptr i8, ptr %i.a, i64 120
  %i.v = load double, ptr %i.u, align 8, !tbaa !35
  store double %i.v, ptr %gep.i.i.5, align 8, !tbaa !35
  %invariant.gep.i.1.i = getelementptr i8, ptr %i.k, i64 48
  %i.w = getelementptr i8, ptr %i.a, i64 8
  %i.x = load double, ptr %i.w, align 8, !tbaa !35
  store double %i.x, ptr %invariant.gep.i.1.i, align 8, !tbaa !35
  %gep.i.1.i.1 = getelementptr i8, ptr %i.k, i64 56
  %i.y = getelementptr i8, ptr %i.a, i64 32
  %i.z = load double, ptr %i.y, align 8, !tbaa !35
  store double %i.z, ptr %gep.i.1.i.1, align 8, !tbaa !35
  %gep.i.1.i.2 = getelementptr i8, ptr %i.k, i64 64
  %i.aa = getelementptr i8, ptr %i.a, i64 56
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !35
  store double %i.ab, ptr %gep.i.1.i.2, align 8, !tbaa !35
  %gep.i.1.i.3 = getelementptr i8, ptr %i.k, i64 72
  %i.ac = getelementptr i8, ptr %i.a, i64 80
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !35
  store double %i.ad, ptr %gep.i.1.i.3, align 8, !tbaa !35
  %gep.i.1.i.4 = getelementptr i8, ptr %i.k, i64 80
  %i.ae = getelementptr i8, ptr %i.a, i64 104
  %i.af = load double, ptr %i.ae, align 8, !tbaa !35
  store double %i.af, ptr %gep.i.1.i.4, align 8, !tbaa !35
  %gep.i.1.i.5 = getelementptr i8, ptr %i.k, i64 88
  %i.ag = getelementptr i8, ptr %i.a, i64 128
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !35
  store double %i.ah, ptr %gep.i.1.i.5, align 8, !tbaa !35
  %invariant.gep.i.2.i = getelementptr i8, ptr %i.k, i64 96
  %i.ai = getelementptr i8, ptr %i.a, i64 16
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !35
  store double %i.aj, ptr %invariant.gep.i.2.i, align 8, !tbaa !35
  %gep.i.2.i.1 = getelementptr i8, ptr %i.k, i64 104
  %i.ak = getelementptr i8, ptr %i.a, i64 40
  %i.al = load double, ptr %i.ak, align 8, !tbaa !35
  store double %i.al, ptr %gep.i.2.i.1, align 8, !tbaa !35
  %gep.i.2.i.2 = getelementptr i8, ptr %i.k, i64 112
  %i.am = getelementptr i8, ptr %i.a, i64 64
  %i.an = load double, ptr %i.am, align 8, !tbaa !35
  store double %i.an, ptr %gep.i.2.i.2, align 8, !tbaa !35
  %gep.i.2.i.3 = getelementptr i8, ptr %i.k, i64 120
  %i.ao = getelementptr i8, ptr %i.a, i64 88
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !35
  store double %i.ap, ptr %gep.i.2.i.3, align 8, !tbaa !35
  %gep.i.2.i.4 = getelementptr i8, ptr %i.k, i64 128
  %i.aq = getelementptr i8, ptr %i.a, i64 112
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !35
  store double %i.ar, ptr %gep.i.2.i.4, align 8, !tbaa !35
  %gep.i.2.i.5 = getelementptr i8, ptr %i.k, i64 136
  %i.as = getelementptr i8, ptr %i.a, i64 136
  %i.at = load double, ptr %i.as, align 8, !tbaa !35
  store double %i.at, ptr %gep.i.2.i.5, align 8, !tbaa !35
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_9ReplicateINS1_IdLi6ELi1ELi0ELi6ELi1EEELin1ELin1EEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !38
  %i.c = mul nsw i64 %i.b, 6                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !38   ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i64 9223372036854775807, %i.e
  %i.h = icmp sgt i64 %i.c, %i.g
  br i1 %i.h, label %.noexc.i.i.i.i.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.b, %bb.a
  %i.i = mul nsw i64 %i.e, %i.c
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i, i64 noundef %i.c, i64 noundef %i.e)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_9ReplicateINS1_IdLi6ELi1ELi0ELi6ELi1EEELin1ELin1EEEEEvRKNS_9EigenBaseIT_EE.exit unwind label %bb.f

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_9ReplicateINS1_IdLi6ELi1ELi0ELi6ELi1EEELin1ELin1EEEEEvRKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %i.j = load ptr, ptr %1, align 8, !tbaa !177, !nonnull !54, !align !56 ; 3 uses
  %i.k = load i64, ptr %i.a, align 8, !tbaa !38
  %i.l = mul nsw i64 %i.k, 6                      ; 5 uses
  %i.m = load i64, ptr %i.d, align 8, !tbaa !38   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !26
  %.not.i.i.i.i.i = icmp eq i64 %i.o, %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %.not8.i.i.i.i.i = icmp eq i64 %i.q, %i.m
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %.not8.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_9ReplicateINS1_IdLi6ELi1ELi0ELi6ELi1EEELin1ELin1EEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.r = icmp eq i64 %i.m, 0
  br i1 %i.r, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = sdiv i64 9223372036854775807, %i.m
  %i.t = icmp sgt i64 %i.l, %i.s
  br i1 %i.t, label %.noexc.i.i.i.i.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i

.noexc.i.i.i.i.invoke:                            ; preds = %bb.d, %bb.b
  %i.u = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.u, align 8, !tbaa !23
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
          to label %.noexc.i.i.i.i.cont unwind label %bb.f

.noexc.i.i.i.i.cont:                              ; preds = %.noexc.i.i.i.i.invoke
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.v = mul nsw i64 %i.m, %i.l
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.v, i64 noundef %i.l, i64 noundef %i.m)
          to label %.noexc6 unwind label %bb.f

.noexc6:                                          ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i
  %.pr.i.i.i.i = load i64, ptr %i.p, align 8, !tbaa !27
  %.pre.i.i.i.i = load i64, ptr %i.n, align 8, !tbaa !26
  br label %bb.e

bb.e:                                             ; preds = %.noexc6, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_9ReplicateINS1_IdLi6ELi1ELi0ELi6ELi1EEELin1ELin1EEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.w = phi i64 [ %.pre.i.i.i.i, %.noexc6 ], [ %i.l, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_9ReplicateINS1_IdLi6ELi1ELi0ELi6ELi1EEELin1ELin1EEEEEvRKNS_9EigenBaseIT_EE.exit ] ; 6 uses
  %i.x = phi i64 [ %.pr.i.i.i.i, %.noexc6 ], [ %i.m, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_9ReplicateINS1_IdLi6ELi1ELi0ELi6ELi1EEELin1ELin1EEEEEvRKNS_9EigenBaseIT_EE.exit ] ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !25
  %i.z = icmp sgt i64 %i.x, 0
  %i.aa = icmp sgt i64 %i.w, 0
  %or.cond.i.i.i.i = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond.i.i.i.i, label %.preheader.i.i.i.i.i.preheader, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_9ReplicateINS1_IdLi6ELi1ELi0ELi6ELi1EEELin1ELin1EEEEERS2_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.preheader:                   ; preds = %bb.e
  %xtraiter = and i64 %i.w, 1
  %i.ab = icmp eq i64 %i.w, 1
  %unroll_iter = and i64 %i.w, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod12 = trunc i64 %i.w to i1
  br label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i
  %.0810.i.i.i.i.i = phi i64 [ %i.ag, %._crit_edge.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.preheader ] ; 2 uses
  %i.ac = mul nuw nsw i64 %.0810.i.i.i.i.i, %i.w
  %invariant.gep.i.i.i.i.i = getelementptr [8 x i8], ptr %i.y, i64 %i.ac ; 3 uses
  br i1 %i.ab, label %.epil.preheader, label %.preheader.i.i.i.i.i.new

._crit_edge.i.i.i.i.i.unr-lcssa:                  ; preds = %.preheader.i.i.i.i.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.i.i.i.unr-lcssa, %.preheader.i.i.i.i.i
  %.09.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ %i.ao, %._crit_edge.i.i.i.i.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %gep.i.i.i.i.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %.09.i.i.i.i.i.epil.init
  %i.ad = urem i64 %.09.i.i.i.i.i.epil.init, 6
  %i.ae = getelementptr [8 x i8], ptr %i.j, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8, !tbaa !35
  store double %i.af, ptr %gep.i.i.i.i.i.epil, align 8, !tbaa !35
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.i.i.i.i.i.unr-lcssa, %.epil.preheader
  %i.ag = add nuw nsw i64 %.0810.i.i.i.i.i, 1     ; 2 uses
  %exitcond12.not.i.i.i.i.i = icmp eq i64 %i.ag, %i.x
  br i1 %exitcond12.not.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_9ReplicateINS1_IdLi6ELi1ELi0ELi6ELi1EEELin1ELin1EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i, !llvm.loop !174

.preheader.i.i.i.i.i.new:                         ; preds = %.preheader.i.i.i.i.i, %.preheader.i.i.i.i.i.new
  %.09.i.i.i.i.i = phi i64 [ %i.ao, %.preheader.i.i.i.i.i.new ], [ 0, %.preheader.i.i.i.i.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i.i.i.i.i.new ], [ 0, %.preheader.i.i.i.i.i ]
  %gep.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %.09.i.i.i.i.i
  %i.ah = urem i64 %.09.i.i.i.i.i, 6
  %i.ai = getelementptr [8 x i8], ptr %i.j, i64 %i.ah
  %i.aj = load double, ptr %i.ai, align 16, !tbaa !35
  store double %i.aj, ptr %gep.i.i.i.i.i, align 8, !tbaa !35
  %i.ak = or disjoint i64 %.09.i.i.i.i.i, 1       ; 2 uses
  %gep.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %i.ak
  %i.al = urem i64 %i.ak, 6
  %i.am = getelementptr [8 x i8], ptr %i.j, i64 %i.al
  %i.an = load double, ptr %i.am, align 8, !tbaa !35
  store double %i.an, ptr %gep.i.i.i.i.i.1, align 8, !tbaa !35
  %i.ao = add nuw nsw i64 %.09.i.i.i.i.i, 2       ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.i.i.i.unr-lcssa, label %.preheader.i.i.i.i.i.new, !llvm.loop !175

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_9ReplicateINS1_IdLi6ELi1ELi0ELi6ELi1EEELin1ELin1EEEEERS2_RKNS_9DenseBaseIT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.e
  ret void

bb.f:                                             ; preds = %.noexc.i.i.i.i.invoke, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %0, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.aq) #20
  resume { ptr, i32 } %i.ap
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEERKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !58, !nonnull !54, !align !55
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !33   ; 7 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sdiv i64 9223372036854775807, %i.c
  %i.f = icmp sgt i64 %i.c, %i.e
  br i1 %i.f, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.b, %bb.a
  %i.g = mul nsw i64 %i.c, %i.c
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.g, i64 noundef %i.c, i64 noundef %i.c)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit unwind label %bb.e

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %i.h = load ptr, ptr %1, align 8, !tbaa !58, !nonnull !54, !align !55
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !33   ; 7 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.l = sdiv i64 9223372036854775807, %i.j
  %i.m = icmp sgt i64 %i.j, %i.l
  br i1 %i.m, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i

.invoke:                                          ; preds = %bb.c, %bb.b
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !23
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
          to label %.cont unwind label %bb.e

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i: ; preds = %bb.c, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.o = mul nsw i64 %i.j, %i.j
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.o, i64 noundef %i.j, i64 noundef %i.j)
          to label %.noexc6 unwind label %bb.e

.noexc6:                                          ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_15DiagonalWrapperIKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEENS0_14Diagonal2DenseEvE3runERS3_RKS7_RKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.e:                                             ; preds = %.invoke, %.noexc6, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !25
  call void @free(ptr noundef %i.q) #20
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_15DiagonalWrapperIKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEENS0_14Diagonal2DenseEvE3runERS3_RKS7_RKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !58, !nonnull !54, !align !55
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !33   ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26
  %.not = icmp eq i64 %i.e, %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %.not11 = icmp eq i64 %i.g, %i.c
  %or.cond = select i1 %.not, i1 %.not11, i1 false
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.c, 0
  br i1 %i.h, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = sdiv i64 9223372036854775807, %i.c
  %i.j = icmp sgt i64 %i.c, %i.i
  br i1 %i.j, label %bb.d, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !23
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %bb.b, %bb.c
  %i.l = mul nsw i64 %i.c, %i.c
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.l, i64 noundef %i.c, i64 noundef %i.c)
  %.pre = load i64, ptr %i.d, align 8, !tbaa !26
  %.pre13 = load i64, ptr %i.f, align 8, !tbaa !27
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.m = phi i64 [ %i.c, %bb.a ], [ %.pre13, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit ] ; 2 uses
  %i.n = phi i64 [ %i.c, %bb.a ], [ %.pre, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit ] ; 7 uses
  %i.o = mul nsw i64 %i.m, %i.n                   ; 2 uses
  %i.p = icmp slt i64 %i.o, 1
  %.pre14 = load ptr, ptr %0, align 8, !tbaa !25  ; 6 uses
  br i1 %i.p, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i: ; preds = %bb.e
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %.pre14, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !35
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit: ; preds = %bb.e, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i
  %i.q = load ptr, ptr %1, align 8, !tbaa !58, !nonnull !54, !align !55
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !32   ; 5 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i = tail call noundef i64 @llvm.smin.i64(i64 %i.m, i64 %i.n) ; 4 uses
  %i.s = icmp sgt i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.s, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEaSINS1_IdLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit
  %xtraiter = and i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 3 uses
  %i.t = icmp ult i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i, 4
  br i1 %i.t, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775804
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new
  %.05.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new ], [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.u = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i, %i.n
  %i.v = getelementptr [8 x i8], ptr %.pre14, i64 %.05.i.i.i.i.i.i.i.i
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %i.u
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.05.i.i.i.i.i.i.i.i
  %i.y = load double, ptr %i.x, align 8, !tbaa !35
  store double %i.y, ptr %i.w, align 8, !tbaa !35
  %i.z = or disjoint i64 %.05.i.i.i.i.i.i.i.i, 1  ; 3 uses
  %i.aa = mul nuw nsw i64 %i.z, %i.n
  %i.ab = getelementptr [8 x i8], ptr %.pre14, i64 %i.z
  %i.ac = getelementptr [8 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.z
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !35
  store double %i.ae, ptr %i.ac, align 8, !tbaa !35
  %i.af = or disjoint i64 %.05.i.i.i.i.i.i.i.i, 2 ; 3 uses
  %i.ag = mul nuw nsw i64 %i.af, %i.n
  %i.ah = getelementptr [8 x i8], ptr %.pre14, i64 %i.af
  %i.ai = getelementptr [8 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.af
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !35
  store double %i.ak, ptr %i.ai, align 8, !tbaa !35
  %i.al = or disjoint i64 %.05.i.i.i.i.i.i.i.i, 3 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdNS2_IdlLi1EEELb0ELi0EE3runEllRKS3_RKS4_Pdld:bb.a
.lr.ph439:                                        ; preds = %bb.e
  %i.eu = load ptr, ptr %3, align 8, !tbaa !63
  %i.ev = load i64, ptr %i.o, align 8, !tbaa !64
  %i.ew = getelementptr [8 x i8], ptr %.sroa.0336.0.copyload, i64 %.1 ; 3 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 16
  %i.ey = getelementptr i8, ptr %i.ew, i64 32
  br label %bb.f

._crit_edge440:                                   ; preds = %bb.f
  %i.ez = getelementptr inbounds [8 x i8], ptr %4, i64 %.1 ; 4 uses
  %i.fa = load <2 x double>, ptr %i.ez, align 1, !tbaa !17
  %i.fb = fmul <2 x double> %i.l, %i.fv
  %i.fc = fadd <2 x double> %i.fb, %i.fa
  store <2 x double> %i.fc, ptr %i.ez, align 1, !tbaa !17
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %i.fe = load <2 x double>, ptr %i.fd, align 1, !tbaa !17
  %i.ff = fmul <2 x double> %i.l, %i.fz
  %i.fg = fadd <2 x double> %i.ff, %i.fe
  store <2 x double> %i.fg, ptr %i.fd, align 1, !tbaa !17
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 32 ; 2 uses
  %i.fi = load <2 x double>, ptr %i.fh, align 1, !tbaa !17
  %i.fj = fmul <2 x double> %i.l, %i.gd
  %i.fk = fadd <2 x double> %i.fj, %i.fi
  store <2 x double> %i.fk, ptr %i.fh, align 1, !tbaa !17
  %i.fl = add nsw i64 %.1, 6
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph439, %bb.f
  %.0184438 = phi i64 [ %.0188462, %.lr.ph439 ], [ %i.ge, %bb.f ] ; 3 uses
  %.0397437 = phi <2 x double> [ zeroinitializer, %.lr.ph439 ], [ %i.fv, %bb.f ]
  %.0398436 = phi <2 x double> [ zeroinitializer, %.lr.ph439 ], [ %i.fz, %bb.f ]
  %.0399435 = phi <2 x double> [ zeroinitializer, %.lr.ph439 ], [ %i.gd, %bb.f ]
  %i.fm = mul nsw i64 %i.ev, %.0184438
  %i.fn = getelementptr [8 x i8], ptr %i.eu, i64 %i.fm
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !35
  %i.fp = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.fq = shufflevector <2 x double> %i.fp, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fr = mul nsw i64 %.0184438, %.sroa.22.0.copyload ; 3 uses
  %i.fs = getelementptr [8 x i8], ptr %i.ew, i64 %i.fr
  %i.ft = load <2 x double>, ptr %i.fs, align 1, !tbaa !17
  %i.fu = fmul <2 x double> %i.ft, %i.fq
  %i.fv = fadd <2 x double> %.0397437, %i.fu      ; 2 uses
  %i.fw = getelementptr [8 x i8], ptr %i.ex, i64 %i.fr
  %i.fx = load <2 x double>, ptr %i.fw, align 1, !tbaa !17
  %i.fy = fmul <2 x double> %i.fx, %i.fq
  %i.fz = fadd <2 x double> %.0398436, %i.fy      ; 2 uses
  %i.ga = getelementptr [8 x i8], ptr %i.ey, i64 %i.fr
  %i.gb = load <2 x double>, ptr %i.ga, align 1, !tbaa !17
  %i.gc = fmul <2 x double> %i.fq, %i.gb
  %i.gd = fadd <2 x double> %.0399435, %i.gc      ; 2 uses
  %i.ge = add nuw nsw i64 %.0184438, 1            ; 2 uses
  %i.gf = icmp slt i64 %i.ge, %.sroa.speculated
  br i1 %i.gf, label %bb.f, label %._crit_edge440, !llvm.loop !192

bb.g:                                             ; preds = %._crit_edge440, %bb.e
  %.2 = phi i64 [ %i.fl, %._crit_edge440 ], [ %.1, %bb.e ] ; 5 uses
  %i.gg = icmp slt i64 %.2, %i.d
  br i1 %i.gg, label %.lr.ph447, label %bb.i

.lr.ph447:                                        ; preds = %bb.g
  %i.gh = load ptr, ptr %3, align 8, !tbaa !63
  %i.gi = load i64, ptr %i.o, align 8, !tbaa !64
  %i.gj = getelementptr [8 x i8], ptr %.sroa.0336.0.copyload, i64 %.2 ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 16
  br label %bb.h

._crit_edge448:                                   ; preds = %bb.h
  %i.gl = getelementptr inbounds [8 x i8], ptr %4, i64 %.2 ; 3 uses
  %i.gm = load <2 x double>, ptr %i.gl, align 1, !tbaa !17
  %i.gn = fmul <2 x double> %i.l, %i.hd
  %i.go = fadd <2 x double> %i.gn, %i.gm
  store <2 x double> %i.go, ptr %i.gl, align 1, !tbaa !17
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 16 ; 2 uses
  %i.gq = load <2 x double>, ptr %i.gp, align 1, !tbaa !17
  %i.gr = fmul <2 x double> %i.l, %i.hh
  %i.gs = fadd <2 x double> %i.gr, %i.gq
  store <2 x double> %i.gs, ptr %i.gp, align 1, !tbaa !17
  %i.gt = add nsw i64 %.2, 4
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph447, %bb.h
  %.0183446 = phi i64 [ %.0188462, %.lr.ph447 ], [ %i.hi, %bb.h ] ; 3 uses
  %.0393445 = phi <2 x double> [ zeroinitializer, %.lr.ph447 ], [ %i.hh, %bb.h ]
  %.0395444 = phi <2 x double> [ zeroinitializer, %.lr.ph447 ], [ %i.hd, %bb.h ]
  %i.gu = mul nsw i64 %i.gi, %.0183446
  %i.gv = getelementptr [8 x i8], ptr %i.gh, i64 %i.gu
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !35
  %i.gx = insertelement <2 x double> poison, double %i.gw, i64 0
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gz = mul nsw i64 %.0183446, %.sroa.22.0.copyload ; 2 uses
  %i.ha = getelementptr [8 x i8], ptr %i.gj, i64 %i.gz
  %i.hb = load <2 x double>, ptr %i.ha, align 1, !tbaa !17
  %i.hc = fmul <2 x double> %i.hb, %i.gy
  %i.hd = fadd <2 x double> %.0395444, %i.hc      ; 2 uses
  %i.he = getelementptr [8 x i8], ptr %i.gk, i64 %i.gz
  %i.hf = load <2 x double>, ptr %i.he, align 1, !tbaa !17
  %i.hg = fmul <2 x double> %i.hf, %i.gy
  %i.hh = fadd <2 x double> %.0393445, %i.hg      ; 2 uses
  %i.hi = add nuw nsw i64 %.0183446, 1            ; 2 uses
  %i.hj = icmp slt i64 %i.hi, %.sroa.speculated
  br i1 %i.hj, label %bb.h, label %._crit_edge448, !llvm.loop !193

bb.i:                                             ; preds = %._crit_edge448, %bb.g
  %.3 = phi i64 [ %i.gt, %._crit_edge448 ], [ %.2, %bb.g ] ; 5 uses
  %i.hk = icmp slt i64 %.3, %i.e
  br i1 %i.hk, label %.lr.ph453, label %bb.k

.lr.ph453:                                        ; preds = %bb.i
  %i.hl = load ptr, ptr %3, align 8, !tbaa !63
  %i.hm = load i64, ptr %i.o, align 8, !tbaa !64
  %i.hn = getelementptr [8 x i8], ptr %.sroa.0336.0.copyload, i64 %.3
  br label %bb.j

._crit_edge454:                                   ; preds = %bb.j
  %i.ho = getelementptr inbounds [8 x i8], ptr %4, i64 %.3 ; 2 uses
  %i.hp = load <2 x double>, ptr %i.ho, align 1, !tbaa !17
  %i.hq = fmul <2 x double> %i.l, %i.ic
  %i.hr = fadd <2 x double> %i.hq, %i.hp
  store <2 x double> %i.hr, ptr %i.ho, align 1, !tbaa !17
  %i.hs = add nsw i64 %.3, 2
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph453, %bb.j
  %.0182452 = phi i64 [ %.0188462, %.lr.ph453 ], [ %i.id, %bb.j ] ; 3 uses
  %.0384451 = phi <2 x double> [ zeroinitializer, %.lr.ph453 ], [ %i.ic, %bb.j ]
  %i.ht = mul nsw i64 %i.hm, %.0182452
  %i.hu = getelementptr [8 x i8], ptr %i.hl, i64 %i.ht
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !35
  %i.hw = insertelement <2 x double> poison, double %i.hv, i64 0
  %i.hx = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hy = mul nsw i64 %.0182452, %.sroa.22.0.copyload
  %i.hz = getelementptr [8 x i8], ptr %i.hn, i64 %i.hy
  %i.ia = load <2 x double>, ptr %i.hz, align 1, !tbaa !17
  %i.ib = fmul <2 x double> %i.ia, %i.hx
  %i.ic = fadd <2 x double> %.0384451, %i.ib      ; 2 uses
  %i.id = add nuw nsw i64 %.0182452, 1            ; 2 uses
  %i.ie = icmp slt i64 %i.id, %.sroa.speculated
  br i1 %i.ie, label %bb.j, label %._crit_edge454, !llvm.loop !194

bb.k:                                             ; preds = %._crit_edge454, %bb.i
  %.4 = phi i64 [ %i.hs, %._crit_edge454 ], [ %.3, %bb.i ] ; 2 uses
  %i.if = icmp slt i64 %.4, %0
  br i1 %i.if, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.k
  %i.ig = load ptr, ptr %3, align 8, !tbaa !63
  %i.ih = load i64, ptr %i.o, align 8, !tbaa !64
  br label %.lr.ph458

.lr.ph458:                                        ; preds = %._crit_edge459, %.preheader.lr.ph
  %.5461 = phi i64 [ %.4, %.preheader.lr.ph ], [ %i.im, %._crit_edge459 ] ; 3 uses
  %i.ii = getelementptr [8 x i8], ptr %.sroa.0336.0.copyload, i64 %.5461
  br label %bb.l

._crit_edge459:                                   ; preds = %bb.l
  %i.ij = getelementptr inbounds [8 x i8], ptr %4, i64 %.5461 ; 2 uses
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !35
  %i.il = tail call double @llvm.fmuladd.f64(double %6, double %i.iu, double %i.ik)
  store double %i.il, ptr %i.ij, align 8, !tbaa !35
  %i.im = add nsw i64 %.5461, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.im, %0
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph458, !llvm.loop !195

bb.l:                                             ; preds = %.lr.ph458, %bb.l
  %.0457 = phi i64 [ %.0188462, %.lr.ph458 ], [ %i.iv, %bb.l ] ; 3 uses
  %.0181456 = phi double [ 0.000000e+00, %.lr.ph458 ], [ %i.iu, %bb.l ]
  %i.in = mul nsw i64 %.0457, %.sroa.22.0.copyload
  %i.io = getelementptr [8 x i8], ptr %i.ii, i64 %i.in
  %i.ip = mul nsw i64 %i.ih, %.0457
  %i.iq = getelementptr [8 x i8], ptr %i.ig, i64 %i.ip
  %i.ir = load double, ptr %i.io, align 8, !tbaa !35
  %i.is = load double, ptr %i.iq, align 8, !tbaa !35
  %i.it = fmul double %i.ir, %i.is
  %i.iu = fadd double %.0181456, %i.it            ; 2 uses
  %i.iv = add nuw nsw i64 %.0457, 1               ; 2 uses
  %i.iw = icmp slt i64 %i.iv, %.sroa.speculated
  br i1 %i.iw, label %bb.l, label %._crit_edge459, !llvm.loop !196
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #14

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_7ProductINS2_IdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi6ELi1ELi0ELi6ELi1EEELi1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !212, !nonnull !54, !align !55 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !213, !nonnull !54, !align !56 ; 15 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !26   ; 18 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !33
  %.not.i = icmp eq i64 %i.h, %i.f
  %.pre = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %.pre) #20
  %i.i = icmp sgt i64 %i.f, 0
  br i1 %i.i, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit.i

bb.c:                                             ; preds = %bb.b
  %i.j = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.j, label %.noexc, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i

.noexc:                                           ; preds = %bb.c
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !23
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i: ; preds = %bb.c
  %i.l = shl nuw i64 %i.f, 3
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #22 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.noexc12, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit.i

.noexc12:                                         ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !23
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i, %bb.b
  %.sink.i.i.i = phi ptr [ %i.m, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i ], [ null, %bb.b ] ; 2 uses
  store ptr %.sink.i.i.i, ptr %0, align 8, !tbaa !32
  store i64 %i.f, ptr %i.g, align 8, !tbaa !33
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit.i
  %i.p = phi ptr [ %.pre, %bb.a ], [ %.sink.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit.i ] ; 5 uses
  %i.q = sdiv i64 %i.f, 2                         ; 2 uses
  %i.r = shl nsw i64 %i.q, 1                      ; 7 uses
  %i.s = icmp sgt i64 %i.f, 1
  br i1 %i.s, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.t = getelementptr i8, ptr %i.c, i64 8
  %.idx.i.i.i.i.i.i.i.i = shl nsw i64 %i.f, 4
  %i.u = getelementptr i8, ptr %i.c, i64 16
  %.idx.i.i.i.i.i.i11.i = mul nuw nsw i64 %i.f, 24
  %i.v = getelementptr i8, ptr %i.c, i64 24
  %.idx.i.i.i.i.i.i = shl nsw i64 %i.f, 5
  %i.w = getelementptr i8, ptr %i.c, i64 32
  %.idx.i.i.i.i.i = mul nuw nsw i64 %i.f, 40
  %i.x = getelementptr i8, ptr %i.c, i64 40
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.d
  %i.y = icmp slt i64 %i.r, %i.f
  br i1 %i.y, label %.lr.ph.i.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_7ProductINS4_IdLin1ELin1ELi0ELin1ELin1EEENS4_IdLi6ELi1ELi0ELi6ELi1EEELi1EEEEENS0_9assign_opIddEELi0EEELi3ELi0EE3runERSE_.exit

.lr.ph.i.i:                                       ; preds = %._crit_edge.i
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !25, !noalias !214 ; 14 uses
  %i.aa = load i64, ptr %i.e, align 8, !tbaa !26  ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.idx.i.i.i.i.i.i.i = shl nsw i64 %i.aa, 4      ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.idx11.i.i.i.i.i.i.i = mul nsw i64 %i.aa, 24   ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %.idx12.i.i.i.i.i.i.i = shl nsw i64 %i.aa, 5    ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %.idx13.i.i.i.i.i.i.i = mul nsw i64 %i.aa, 40   ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.ag = sub i64 %i.f, %i.r                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.ag, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.ah = shl i64 %i.q, 4                         ; 7 uses
  %i.ai = getelementptr i8, ptr %i.p, i64 %i.ah   ; 7 uses
  %i.aj = shl i64 %i.f, 3                         ; 6 uses
  %i.ak = getelementptr i8, ptr %i.p, i64 %i.aj   ; 7 uses
  %i.al = getelementptr i8, ptr %i.z, i64 %.idx13.i.i.i.i.i.i.i
  %i.am = getelementptr i8, ptr %i.al, i64 %i.ah
  %i.an = getelementptr i8, ptr %i.z, i64 %.idx13.i.i.i.i.i.i.i
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.aj
  %i.ap = getelementptr i8, ptr %i.z, i64 %.idx12.i.i.i.i.i.i.i
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.ah
  %i.ar = getelementptr i8, ptr %i.z, i64 %.idx12.i.i.i.i.i.i.i
  %i.as = getelementptr i8, ptr %i.ar, i64 %i.aj
  %i.at = getelementptr i8, ptr %i.z, i64 %.idx11.i.i.i.i.i.i.i
  %i.au = getelementptr i8, ptr %i.at, i64 %i.ah
  %i.av = getelementptr i8, ptr %i.z, i64 %.idx11.i.i.i.i.i.i.i
  %i.aw = getelementptr i8, ptr %i.av, i64 %i.aj
  %i.ax = getelementptr i8, ptr %i.z, i64 %.idx.i.i.i.i.i.i.i
  %i.ay = getelementptr i8, ptr %i.ax, i64 %i.ah
  %i.az = getelementptr i8, ptr %i.z, i64 %.idx.i.i.i.i.i.i.i
  %i.ba = getelementptr i8, ptr %i.az, i64 %i.aj
  %i.bb = shl nsw i64 %i.aa, 3
  %i.bc = getelementptr i8, ptr %i.z, i64 %i.ah
  %i.bd = getelementptr i8, ptr %i.bc, i64 %i.bb
  %i.be = add i64 %i.aa, %i.f
  %i.bf = shl i64 %i.be, 3
  %i.bg = getelementptr i8, ptr %i.z, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.z, i64 %i.ah
  %i.bi = getelementptr i8, ptr %i.z, i64 %i.aj
  %i.bj = getelementptr i8, ptr %i.c, i64 48
  %bound0 = icmp ult ptr %i.ai, %i.ao
  %bound1 = icmp ult ptr %i.am, %i.ak
  %found.conflict = and i1 %bound0, %bound1
  %bound056 = icmp ult ptr %i.ai, %i.as
  %bound157 = icmp ult ptr %i.aq, %i.ak
  %found.conflict58 = and i1 %bound056, %bound157
  %conflict.rdx = or i1 %found.conflict, %found.conflict58
  %bound059 = icmp ult ptr %i.ai, %i.aw
  %bound160 = icmp ult ptr %i.au, %i.ak
  %found.conflict61 = and i1 %bound059, %bound160
  %conflict.rdx62 = or i1 %conflict.rdx, %found.conflict61
  %bound063 = icmp ult ptr %i.ai, %i.ba
  %bound164 = icmp ult ptr %i.ay, %i.ak
  %found.conflict65 = and i1 %bound063, %bound164
  %conflict.rdx66 = or i1 %conflict.rdx62, %found.conflict65
  %bound067 = icmp ult ptr %i.ai, %i.bg
  %bound168 = icmp ult ptr %i.bd, %i.ak
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx70 = or i1 %conflict.rdx66, %found.conflict69
  %bound071 = icmp ult ptr %i.ai, %i.bi
  %bound172 = icmp ult ptr %i.bh, %i.ak
  %found.conflict73 = and i1 %bound071, %bound172
  %conflict.rdx74 = or i1 %conflict.rdx70, %found.conflict73
  %bound075 = icmp ult ptr %i.ai, %i.bj
  %bound176 = icmp ult ptr %i.c, %i.ak
  %found.conflict77 = and i1 %bound075, %bound176
  %conflict.rdx78 = or i1 %conflict.rdx74, %found.conflict77
  br i1 %conflict.rdx78, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bk = and i64 %i.f, 1                         ; 2 uses
  %n.vec = sub i64 %i.ag, %i.bk                   ; 2 uses
  %i.bl = add i64 %i.r, %n.vec
  %i.bm = load double, ptr %i.c, align 16, !tbaa !35, !alias.scope !215
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bm, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bn = load double, ptr %i.ab, align 8, !tbaa !35, !alias.scope !215
  %broadcast.splatinsert80 = insertelement <2 x double> poison, double %i.bn, i64 0
  %broadcast.splat81 = shufflevector <2 x double> %broadcast.splatinsert80, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bo = load double, ptr %i.ac, align 16, !tbaa !35, !alias.scope !215
  %broadcast.splatinsert83 = insertelement <2 x double> poison, double %i.bo, i64 0
  %broadcast.splat84 = shufflevector <2 x double> %broadcast.splatinsert83, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = load double, ptr %i.ad, align 8, !tbaa !35, !alias.scope !215
  %broadcast.splatinsert86 = insertelement <2 x double> poison, double %i.bp, i64 0
  %broadcast.splat87 = shufflevector <2 x double> %broadcast.splatinsert86, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bq = load double, ptr %i.ae, align 16, !tbaa !35, !alias.scope !215
  %broadcast.splatinsert89 = insertelement <2 x double> poison, double %i.bq, i64 0
  %broadcast.splat90 = shufflevector <2 x double> %broadcast.splatinsert89, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = load double, ptr %i.af, align 8, !tbaa !35, !alias.scope !215
  %broadcast.splatinsert92 = insertelement <2 x double> poison, double %i.br, i64 0
  %broadcast.splat93 = shufflevector <2 x double> %broadcast.splatinsert92, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bs = add i64 %i.r, %index                    ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bs
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.bs ; 6 uses
  %wide.load = load <2 x double>, ptr %i.bu, align 8, !tbaa !35, !alias.scope !216
  %i.bv = fmul <2 x double> %wide.load, %broadcast.splat
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.aa
  %wide.load79 = load <2 x double>, ptr %i.bw, align 8, !tbaa !35, !alias.scope !217
  %i.bx = fmul <2 x double> %wide.load79, %broadcast.splat81
  %i.by = fadd <2 x double> %i.bv, %i.bx
  %i.bz = getelementptr inbounds i8, ptr %i.bu, i64 %.idx.i.i.i.i.i.i.i
  %wide.load82 = load <2 x double>, ptr %i.bz, align 8, !tbaa !35, !alias.scope !218
  %i.ca = fmul <2 x double> %wide.load82, %broadcast.splat84
  %i.cb = fadd <2 x double> %i.by, %i.ca
  %i.cc = getelementptr inbounds i8, ptr %i.bu, i64 %.idx11.i.i.i.i.i.i.i
  %wide.load85 = load <2 x double>, ptr %i.cc, align 8, !tbaa !35, !alias.scope !219
  %i.cd = fmul <2 x double> %wide.load85, %broadcast.splat87
  %i.ce = fadd <2 x double> %i.cb, %i.cd
  %i.cf = getelementptr inbounds i8, ptr %i.bu, i64 %.idx12.i.i.i.i.i.i.i
  %wide.load88 = load <2 x double>, ptr %i.cf, align 8, !tbaa !35, !alias.scope !220
  %i.cg = fmul <2 x double> %wide.load88, %broadcast.splat90
  %i.ch = fadd <2 x double> %i.ce, %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.bu, i64 %.idx13.i.i.i.i.i.i.i
  %wide.load91 = load <2 x double>, ptr %i.ci, align 8, !tbaa !35, !alias.scope !221
  %i.cj = fmul <2 x double> %wide.load91, %broadcast.splat93
  %i.ck = fadd <2 x double> %i.ch, %i.cj
  store <2 x double> %i.ck, ptr %i.bt, align 8, !tbaa !35, !alias.scope !222, !noalias !223
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !208

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, 0
  br i1 %cmp.n, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_7ProductINS4_IdLin1ELin1ELi0ELin1ELin1EEENS4_IdLi6ELi1ELi0ELi6ELi1EEELi1EEEEENS0_9assign_opIddEELi0EEELi3ELi0EE3runERSE_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.05.i.i.ph = phi i64 [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i ], [ %i.bl, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.05.i.i = phi i64 [ %i.dq, %scalar.ph ], [ %.05.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.05.i.i
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.05.i.i ; 6 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !35
  %i.cp = load double, ptr %i.c, align 16, !tbaa !35
  %i.cq = fmul double %i.co, %i.cp
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.aa
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !35
  %i.ct = load double, ptr %i.ab, align 8, !tbaa !35
  %i.cu = fmul double %i.cs, %i.ct
  %i.cv = fadd double %i.cq, %i.cu
  %i.cw = getelementptr inbounds i8, ptr %i.cn, i64 %.idx.i.i.i.i.i.i.i
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !35
  %i.cy = load double, ptr %i.ac, align 16, !tbaa !35
  %i.cz = fmul double %i.cx, %i.cy
  %i.da = fadd double %i.cv, %i.cz
  %i.db = getelementptr inbounds i8, ptr %i.cn, i64 %.idx11.i.i.i.i.i.i.i
  %i.dc = load double, ptr %i.db, align 8, !tbaa !35
  %i.dd = load double, ptr %i.ad, align 8, !tbaa !35
  %i.de = fmul double %i.dc, %i.dd
  %i.df = fadd double %i.da, %i.de
  %i.dg = getelementptr inbounds i8, ptr %i.cn, i64 %.idx12.i.i.i.i.i.i.i
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !35
  %i.di = load double, ptr %i.ae, align 16, !tbaa !35
  %i.dj = fmul double %i.dh, %i.di
  %i.dk = fadd double %i.df, %i.dj
  %i.dl = getelementptr inbounds i8, ptr %i.cn, i64 %.idx13.i.i.i.i.i.i.i
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !35
  %i.dn = load double, ptr %i.af, align 8, !tbaa !35
  %i.do = fmul double %i.dm, %i.dn
  %i.dp = fadd double %i.dk, %i.do
  store double %i.dp, ptr %i.cm, align 8, !tbaa !35
  %i.dq = add nsw i64 %.05.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dq, %i.f
  br i1 %exitcond.not.i.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_7ProductINS4_IdLin1ELin1ELi0ELin1ELin1EEENS4_IdLi6ELi1ELi0ELi6ELi1EEELi1EEEEENS0_9assign_opIddEELi0EEELi3ELi0EE3runERSE_.exit, label %scalar.ph, !llvm.loop !209

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.012.i = phi i64 [ %i.fh, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.012.i
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.012.i ; 6 uses
  %i.dt = load <2 x double>, ptr %i.ds, align 1, !tbaa !17
  %i.du = load double, ptr %i.c, align 16, !tbaa !35
  %i.dv = insertelement <2 x double> poison, double %i.du, i64 0
  %i.dw = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dx = fmul <2 x double> %i.dt, %i.dw
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.f
  %i.dz = load <2 x double>, ptr %i.dy, align 1, !tbaa !17
  %i.ea = load double, ptr %i.t, align 8, !tbaa !35
  %i.eb = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.ec = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ed = fmul <2 x double> %i.dz, %i.ec
  %i.ee = fadd <2 x double> %i.dx, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.idx.i.i.i.i.i.i.i.i
  %i.eg = load <2 x double>, ptr %i.ef, align 1, !tbaa !17
  %i.eh = load double, ptr %i.u, align 16, !tbaa !35
  %i.ei = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.ej = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ek = fmul <2 x double> %i.eg, %i.ej
  %i.el = fadd <2 x double> %i.ee, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.idx.i.i.i.i.i.i11.i
  %i.en = load <2 x double>, ptr %i.em, align 1, !tbaa !17
  %i.eo = load double, ptr %i.v, align 8, !tbaa !35
  %i.ep = insertelement <2 x double> poison, double %i.eo, i64 0
  %i.eq = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> zeroinitializer
  %i.er = fmul <2 x double> %i.en, %i.eq
  %i.es = fadd <2 x double> %i.el, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.idx.i.i.i.i.i.i
  %i.eu = load <2 x double>, ptr %i.et, align 1, !tbaa !17
  %i.ev = load double, ptr %i.w, align 16, !tbaa !35
  %i.ew = insertelement <2 x double> poison, double %i.ev, i64 0
  %i.ex = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ey = fmul <2 x double> %i.eu, %i.ex
  %i.ez = fadd <2 x double> %i.es, %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.idx.i.i.i.i.i
  %i.fb = load <2 x double>, ptr %i.fa, align 1, !tbaa !17
  %i.fc = load double, ptr %i.x, align 8, !tbaa !35
  %i.fd = insertelement <2 x double> poison, double %i.fc, i64 0
  %i.fe = shufflevector <2 x double> %i.fd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ff = fmul <2 x double> %i.fb, %i.fe
  %i.fg = fadd <2 x double> %i.ez, %i.ff
  store <2 x double> %i.fg, ptr %i.dr, align 16, !tbaa !17
  %i.fh = add nuw nsw i64 %.012.i, 2              ; 2 uses
  %i.fi = icmp slt i64 %i.fh, %i.r
  br i1 %i.fi, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !210

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_7ProductINS4_IdLin1ELin1ELi0ELin1ELin1EEENS4_IdLi6ELi1ELi0ELi6ELi1EEELi1EEEEENS0_9assign_opIddEELi0EEELi3ELi0EE3runERSE_.exit: ; preds = %scalar.ph, %middle.block, %._crit_edge.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi0EEELi7ENS_10DenseShapeES8_ddEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 5 uses
  %3 = alloca %"class.Eigen::internal::const_blas_data_mapper.343", align 8 ; 5 uses
  store ptr null, ptr %0, align 8, !tbaa !45
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !230, !nonnull !54, !align !55
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !26   ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.sink.split

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ugt i64 %i.d, 2305843009213693951
  br i1 %i.f, label %.invoke.i, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i: ; preds = %bb.c
  %i.g = shl nuw i64 %i.d, 3
  %calloc = tail call ptr @calloc(i64 1, i64 %i.g) ; 3 uses
  %i.h = icmp eq ptr %calloc, null
  br i1 %i.h, label %.invoke.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i.i

.invoke.i:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i, %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !23
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #23
          to label %.cont.i unwind label %bb.d

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.d:                                             ; preds = %.invoke.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !32
  tail call void @free(ptr noundef %i.k) #20
  br label %.body

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i
  store ptr %calloc, ptr %i.a, align 8, !tbaa !32
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.sink.split

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.sink.split: ; preds = %bb.b, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i.i
  %.sink.ph = phi ptr [ %calloc, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i.i ], [ null, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %i.l, align 8, !tbaa !33
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.sink.split, %bb.a
  %.sink = phi ptr [ null, %bb.a ], [ %.sink.ph, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.sink.split ] ; 4 uses
  store ptr %.sink, ptr %0, align 8, !tbaa !45
  %i.m = load ptr, ptr %1, align 8, !tbaa !230, !nonnull !54, !align !55 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !26   ; 3 uses
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !25, !noalias !231 ; 6 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !232, !noalias !233 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !38, !noalias !233 ; 4 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load double, ptr %i.r, align 8, !tbaa !35
  %i.x = load double, ptr %i.s, align 8, !tbaa !35
  %i.y = fmul double %i.w, %i.x                   ; 3 uses
  %i.z = icmp sgt i64 %i.u, 1
  br i1 %i.z, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.f
  %i.aa = add nsw i64 %i.u, -1                    ; 2 uses
  %i.ab = add nsw i64 %i.u, -2
  %xtraiter = and i64 %i.aa, 3                    ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 3
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.aa, -4
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new
  %.010.i.i.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i ] ; 6 uses
  %.089.i.i.i.i.i.i.i.i = phi double [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new ], [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.010.i.i.i.i.i.i.i.i
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !35
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.010.i.i.i.i.i.i.i.i
  %i.ag = load double, ptr %i.af, align 8, !tbaa !35
  %i.ah = fmul double %i.ae, %i.ag
  %i.ai = fadd double %.089.i.i.i.i.i.i.i.i, %i.ah
  %i.aj = add nuw nsw i64 %.010.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.aj
  %i.al = load double, ptr %i.ak, align 8, !tbaa !35
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.aj
  %i.an = load double, ptr %i.am, align 8, !tbaa !35
end_hunk_2
