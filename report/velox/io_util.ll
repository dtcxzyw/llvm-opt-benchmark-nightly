Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/io_util?download=true
inline.NumInlined: 2332
inline.NumDeleted: 950
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5arrow8internal12TemporaryDir4MakeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %27, align 8, !tbaa !46
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.c, !prof !51

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6ResultISt10unique_ptrINS_8internal12TemporaryDirESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %27) #35
  br label %bb.fl

bb.d:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %i.n = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 12 uses
  store ptr %i.o, ptr %28, align 8, !tbaa !20, !alias.scope !626
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !24, !noalias !626 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %27, i64 24 ; 5 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !26, !noalias !626 ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  store ptr %i.p, ptr %28, align 8, !tbaa !24, !alias.scope !626
  %i.w = load i64, ptr %i.q, align 8, !tbaa !25, !noalias !626
  store i64 %i.w, ptr %i.o, align 8, !tbaa !25, !alias.scope !626
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %27, i64 16
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !26, !noalias !626
  br label %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit

_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.x = phi ptr [ %i.o, %bb.f ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ] ; 5 uses
  %i.y = phi i64 [ %i.t, %bb.f ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ] ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 3 uses
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !26, !alias.scope !626
  store ptr %i.q, ptr %i.n, align 8, !tbaa !24, !noalias !626
  store i64 0, ptr %i.z, align 8, !tbaa !26, !noalias !626
  store i8 0, ptr %i.q, align 8, !tbaa !25, !noalias !626
  %i.ab = load ptr, ptr %25, align 8, !tbaa !24   ; 6 uses
  %i.ac = icmp eq ptr %i.ab, %i.i
  %i.ad = icmp eq ptr %i.x, %i.o                  ; 2 uses
  br i1 %i.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit
  br i1 %i.ad, label %bb.g, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit
  br i1 %i.ad, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ae = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.ae)
  switch i64 %i.y, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.af = load i8, ptr %i.x, align 1, !tbaa !25
  store i8 %i.af, ptr %i.ab, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.x, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !26 ; 2 uses
  store i64 %i.ag, ptr %i.j, align 8, !tbaa !26
  %i.ah = load ptr, ptr %25, align 8, !tbaa !24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  store i8 0, ptr %i.ai, align 1, !tbaa !25
  %.pre.i = load ptr, ptr %28, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.x, ptr %25, align 8, !tbaa !24
  store i64 %i.y, ptr %i.j, align 8, !tbaa !26
  %i.aj = load i64, ptr %i.o, align 8, !tbaa !25
  store i64 %i.aj, ptr %i.i, align 8, !tbaa !25
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ak = load i64, ptr %i.i, align 8, !tbaa !25
  store ptr %i.x, ptr %25, align 8, !tbaa !24
  store i64 %i.y, ptr %i.j, align 8, !tbaa !26
  %i.al = load i64, ptr %i.o, align 8, !tbaa !25
  store i64 %i.al, ptr %i.i, align 8, !tbaa !25
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ab, ptr %28, align 8, !tbaa !24
  store i64 %i.ak, ptr %i.o, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.o, ptr %28, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.j, %bb.k
  %i.am = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ab, %bb.j ], [ %i.o, %bb.k ]
  store i64 0, ptr %i.aa, align 8, !tbaa !26
  store i8 0, ptr %i.am, align 1, !tbaa !25
  %i.an = load ptr, ptr %28, align 8, !tbaa !24   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.o
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ap = load i64, ptr %i.o, align 8, !tbaa !25
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !627)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #35, !noalias !627
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false), !noalias !627
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #35, !noalias !627
  %i.ar = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.ar, ptr %17, align 8, !tbaa !20, !noalias !627
  %i.as = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  store i64 0, ptr %i.as, align 8, !tbaa !26, !noalias !627
  store i8 0, ptr %i.ar, align 8, !tbaa !25, !noalias !627
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #35, !noalias !627
  %i.at = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store ptr %i.at, ptr %18, align 8, !tbaa !20, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.at, ptr noundef nonnull align 1 dereferenceable(6) @.str.62, i64 6, i1 false), !noalias !627
  %i.au = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  store i64 6, ptr %i.au, align 8, !tbaa !26, !noalias !627
  %i.av = getelementptr inbounds nuw i8, ptr %18, i64 22
  store i8 0, ptr %i.av, align 2, !tbaa !25, !noalias !627
  %i.aw = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %18, i64 48 ; 4 uses
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !20, !noalias !627
  %i.ay = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 2 uses
  store i64 0, ptr %i.ay, align 8, !tbaa !26, !noalias !627
  store i8 0, ptr %i.ax, align 8, !tbaa !25, !noalias !627
  %i.az = getelementptr inbounds nuw i8, ptr %18, i64 64 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %18, i64 80 ; 4 uses
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !20, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ba, ptr noundef nonnull align 1 dereferenceable(3) @.str.64, i64 3, i1 false), !noalias !627
  %i.bb = getelementptr inbounds nuw i8, ptr %18, i64 72
  store i64 3, ptr %i.bb, align 8, !tbaa !26, !noalias !627
  %i.bc = getelementptr inbounds nuw i8, ptr %18, i64 83
  store i8 0, ptr %i.bc, align 1, !tbaa !25, !noalias !627
  %i.bd = getelementptr inbounds nuw i8, ptr %18, i64 96 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %18, i64 112 ; 4 uses
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !20, !noalias !627
  %i.bf = getelementptr inbounds nuw i8, ptr %18, i64 104
  store i64 0, ptr %i.bf, align 8, !tbaa !26, !noalias !627
  store i8 0, ptr %i.be, align 8, !tbaa !25, !noalias !627
  %i.bg = getelementptr inbounds nuw i8, ptr %18, i64 128 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %18, i64 144 ; 4 uses
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !20, !noalias !627
  store i32 1347241300, ptr %i.bh, align 8, !noalias !627
  %i.bi = getelementptr inbounds nuw i8, ptr %18, i64 136
  store i64 4, ptr %i.bi, align 8, !tbaa !26, !noalias !627
  %i.bj = getelementptr inbounds nuw i8, ptr %18, i64 148
  store i8 0, ptr %i.bj, align 4, !tbaa !25, !noalias !627
  %i.bk = getelementptr inbounds nuw i8, ptr %18, i64 160 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %18, i64 176 ; 4 uses
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !20, !noalias !627
  %i.bm = getelementptr inbounds nuw i8, ptr %18, i64 168
  store i64 0, ptr %i.bm, align 8, !tbaa !26, !noalias !627
  store i8 0, ptr %i.bl, align 8, !tbaa !25, !noalias !627
  %i.bn = getelementptr inbounds nuw i8, ptr %18, i64 192 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %18, i64 208 ; 4 uses
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !20, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.bo, ptr noundef nonnull align 1 dereferenceable(7) @.str.66, i64 7, i1 false), !noalias !627
  %i.bp = getelementptr inbounds nuw i8, ptr %18, i64 200
  store i64 7, ptr %i.bp, align 8, !tbaa !26, !noalias !627
  %i.bq = getelementptr inbounds nuw i8, ptr %18, i64 215
  store i8 0, ptr %i.bq, align 1, !tbaa !25, !noalias !627
  %i.br = getelementptr inbounds nuw i8, ptr %18, i64 224 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %18, i64 240 ; 4 uses
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !20, !noalias !627
  %i.bt = getelementptr inbounds nuw i8, ptr %18, i64 232
  store i64 0, ptr %i.bt, align 8, !tbaa !26, !noalias !627
  store i8 0, ptr %i.bs, align 8, !tbaa !25, !noalias !627
  %i.bu = getelementptr inbounds nuw i8, ptr %18, i64 256
  %i.bv = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bw = invoke noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #37
          to label %.lr.ph.i.i.i.i78.preheader unwind label %.loopexit.split-lp238.i, !noalias !627 ; 44 uses

.lr.ph.i.i.i.i78.preheader:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 6 uses
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !20
  %i.by = load ptr, ptr %18, align 8, !tbaa !24   ; 2 uses
  %i.bz = load i64, ptr %i.au, align 8, !tbaa !26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  store i64 %i.bz, ptr %i.b, align 8, !tbaa !22
  %i.ca = icmp ugt i64 %i.bz, 15
  br i1 %i.ca, label %.noexc.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i78.preheader
  %i.cb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(64) %i.bw, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i.i.i.i82 unwind label %bb.ac ; 2 uses

.noexc.i.i.i.i82:                                 ; preds = %.noexc.i.i.i.i.i.i.i
  store ptr %i.cb, ptr %i.bw, align 8, !tbaa !24
  %i.cc = load i64, ptr %i.b, align 8, !tbaa !22
  store i64 %i.cc, ptr %i.bx, align 8, !tbaa !25
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc.i.i.i.i82, %.lr.ph.i.i.i.i78.preheader
  %i.cd = phi ptr [ %i.cb, %.noexc.i.i.i.i82 ], [ %i.bx, %.lr.ph.i.i.i.i78.preheader ] ; 2 uses
  switch i64 %i.bz, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.ce = load i8, ptr %i.by, align 1, !tbaa !25
  store i8 %i.ce, ptr %i.cd, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cd, ptr align 1 %i.by, i64 %i.bz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i.i.i.i.i.i
  %i.cf = load i64, ptr %i.b, align 8, !tbaa !22  ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !26
  %i.ch = load ptr, ptr %i.bw, align 8, !tbaa !24
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cf
  store i8 0, ptr %i.ci, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bw, i64 32 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bw, i64 48 ; 5 uses
  store ptr %i.ck, ptr %i.cj, align 8, !tbaa !20
  %i.cl = load ptr, ptr %i.aw, align 8, !tbaa !24 ; 2 uses
  %i.cm = load i64, ptr %i.ay, align 8, !tbaa !26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i64 %i.cm, ptr %i.a, align 8, !tbaa !22
  %i.cn = icmp ugt i64 %i.cm, 15
  br i1 %i.cn, label %.noexc.i5.i.i.i.i.i.i, label %._crit_edge.i.i4.i.i.i.i.i.i

.noexc.i5.i.i.i.i.i.i:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i
  %i.co = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.cj, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.p ; 2 uses

.noexc.i.i.i.i.i.i:                               ; preds = %.noexc.i5.i.i.i.i.i.i
  store ptr %i.co, ptr %i.cj, align 8, !tbaa !24
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !22
  store i64 %i.cp, ptr %i.ck, align 8, !tbaa !25
  br label %._crit_edge.i.i4.i.i.i.i.i.i

._crit_edge.i.i4.i.i.i.i.i.i:                     ; preds = %.noexc.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i
  %i.cq = phi ptr [ %i.co, %.noexc.i.i.i.i.i.i ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i ] ; 2 uses
  switch i64 %i.cm, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %.lr.ph.i.i.i.i78.1
  ]

bb.n:                                             ; preds = %._crit_edge.i.i4.i.i.i.i.i.i
  %i.cr = load i8, ptr %i.cl, align 1, !tbaa !25
  store i8 %i.cr, ptr %i.cq, align 1, !tbaa !25
  br label %.lr.ph.i.i.i.i78.1

bb.o:                                             ; preds = %._crit_edge.i.i4.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.cl, i64 %i.cm, i1 false)
  br label %.lr.ph.i.i.i.i78.1

bb.p:                                             ; preds = %.noexc.i5.i.i.i.i.i.i.3, %.noexc.i5.i.i.i.i.i.i.2, %.noexc.i5.i.i.i.i.i.i.1, %.noexc.i5.i.i.i.i.i.i
  %.021.i.i.i.i.lcssa299 = phi ptr [ %i.bw, %.noexc.i5.i.i.i.i.i.i ], [ %i.db, %.noexc.i5.i.i.i.i.i.i.1 ], [ %i.ee, %.noexc.i5.i.i.i.i.i.i.2 ], [ %i.fh, %.noexc.i5.i.i.i.i.i.i.3 ] ; 3 uses
  %.lcssa297 = phi ptr [ %i.bx, %.noexc.i5.i.i.i.i.i.i ], [ %i.dc, %.noexc.i5.i.i.i.i.i.i.1 ], [ %i.ef, %.noexc.i5.i.i.i.i.i.i.2 ], [ %i.fi, %.noexc.i5.i.i.i.i.i.i.3 ] ; 2 uses
  %i.cs = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ct = load ptr, ptr %.021.i.i.i.i.lcssa299, align 8, !tbaa !24 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %.lcssa297
  br i1 %i.cu, label %.body.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i80: ; preds = %bb.p
  %i.cv = load i64, ptr %.lcssa297, align 8, !tbaa !25
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #38
  br label %.body.i.i.i.i

.lr.ph.i.i.i.i78.1:                               ; preds = %bb.o, %bb.n, %._crit_edge.i.i4.i.i.i.i.i.i
  %i.cx = load i64, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !26
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !24
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cx
  store i8 0, ptr %i.da, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %i.db = getelementptr inbounds nuw i8, ptr %i.bw, i64 64 ; 7 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bw, i64 80 ; 6 uses
  store ptr %i.dc, ptr %i.db, align 8, !tbaa !20
  %i.dd = load ptr, ptr %i.az, align 8, !tbaa !24 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %18, i64 72
  %i.df = load i64, ptr %i.de, align 8, !tbaa !26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  store i64 %i.df, ptr %i.b, align 8, !tbaa !22
  %i.dg = icmp ugt i64 %i.df, 15
  br i1 %i.dg, label %.noexc.i.i.i.i.i.i.i.1, label %._crit_edge.i.i.i.i.i.i.i.i.1

.noexc.i.i.i.i.i.i.i.1:                           ; preds = %.lr.ph.i.i.i.i78.1
  %i.dh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(64) %i.db, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i.i.i.i82.1 unwind label %bb.ac ; 2 uses

.noexc.i.i.i.i82.1:                               ; preds = %.noexc.i.i.i.i.i.i.i.1
  store ptr %i.dh, ptr %i.db, align 8, !tbaa !24
  %i.di = load i64, ptr %i.b, align 8, !tbaa !22
  store i64 %i.di, ptr %i.dc, align 8, !tbaa !25
  br label %._crit_edge.i.i.i.i.i.i.i.i.1

._crit_edge.i.i.i.i.i.i.i.i.1:                    ; preds = %.noexc.i.i.i.i82.1, %.lr.ph.i.i.i.i78.1
  %i.dj = phi ptr [ %i.dh, %.noexc.i.i.i.i82.1 ], [ %i.dc, %.lr.ph.i.i.i.i78.1 ] ; 2 uses
  switch i64 %i.df, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.1
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.1
  %i.dk = load i8, ptr %i.dd, align 1, !tbaa !25
  store i8 %i.dk, ptr %i.dj, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.1

bb.r:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dj, ptr align 1 %i.dd, i64 %i.df, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.1: ; preds = %bb.r, %bb.q, %._crit_edge.i.i.i.i.i.i.i.i.1
  %i.dl = load i64, ptr %i.b, align 8, !tbaa !22  ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bw, i64 72
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !26
  %i.dn = load ptr, ptr %i.db, align 8, !tbaa !24
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dl
  store i8 0, ptr %i.do, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bw, i64 96 ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %18, i64 96
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bw, i64 112 ; 5 uses
  store ptr %i.dr, ptr %i.dp, align 8, !tbaa !20
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !24 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %18, i64 104
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i64 %i.du, ptr %i.a, align 8, !tbaa !22
  %i.dv = icmp ugt i64 %i.du, 15
  br i1 %i.dv, label %.noexc.i5.i.i.i.i.i.i.1, label %._crit_edge.i.i4.i.i.i.i.i.i.1

.noexc.i5.i.i.i.i.i.i.1:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.1
  %i.dw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.dp, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i.i.i.i.i.1 unwind label %bb.p ; 2 uses

.noexc.i.i.i.i.i.i.1:                             ; preds = %.noexc.i5.i.i.i.i.i.i.1
  store ptr %i.dw, ptr %i.dp, align 8, !tbaa !24
  %i.dx = load i64, ptr %i.a, align 8, !tbaa !22
  store i64 %i.dx, ptr %i.dr, align 8, !tbaa !25
  br label %._crit_edge.i.i4.i.i.i.i.i.i.1

._crit_edge.i.i4.i.i.i.i.i.i.1:                   ; preds = %.noexc.i.i.i.i.i.i.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.1
  %i.dy = phi ptr [ %i.dw, %.noexc.i.i.i.i.i.i.1 ], [ %i.dr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.1 ] ; 2 uses
  switch i64 %i.du, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %.lr.ph.i.i.i.i78.2
  ]

bb.s:                                             ; preds = %._crit_edge.i.i4.i.i.i.i.i.i.1
  %i.dz = load i8, ptr %i.ds, align 1, !tbaa !25
  store i8 %i.dz, ptr %i.dy, align 1, !tbaa !25
  br label %.lr.ph.i.i.i.i78.2

bb.t:                                             ; preds = %._crit_edge.i.i4.i.i.i.i.i.i.1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dy, ptr align 1 %i.ds, i64 %i.du, i1 false)
  br label %.lr.ph.i.i.i.i78.2

.lr.ph.i.i.i.i78.2:                               ; preds = %bb.t, %bb.s, %._crit_edge.i.i4.i.i.i.i.i.i.1
  %i.ea = load i64, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bw, i64 104
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !26
  %i.ec = load ptr, ptr %i.dp, align 8, !tbaa !24
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ea
  store i8 0, ptr %i.ed, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bw, i64 128 ; 6 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bw, i64 144 ; 4 uses
  store ptr %i.ef, ptr %i.ee, align 8, !tbaa !20
  %i.eg = load ptr, ptr %i.bg, align 8, !tbaa !24 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %18, i64 136
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  store i64 %i.ei, ptr %i.b, align 8, !tbaa !22
  %i.ej = icmp ugt i64 %i.ei, 15
  br i1 %i.ej, label %.noexc.i.i.i.i.i.i.i.2, label %._crit_edge.i.i.i.i.i.i.i.i.2

.noexc.i.i.i.i.i.i.i.2:                           ; preds = %.lr.ph.i.i.i.i78.2
  %i.ek = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(64) %i.ee, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i.i.i.i82.2 unwind label %bb.ac ; 2 uses

.noexc.i.i.i.i82.2:                               ; preds = %.noexc.i.i.i.i.i.i.i.2
  store ptr %i.ek, ptr %i.ee, align 8, !tbaa !24
  %i.el = load i64, ptr %i.b, align 8, !tbaa !22
  store i64 %i.el, ptr %i.ef, align 8, !tbaa !25
  br label %._crit_edge.i.i.i.i.i.i.i.i.2

._crit_edge.i.i.i.i.i.i.i.i.2:                    ; preds = %.noexc.i.i.i.i82.2, %.lr.ph.i.i.i.i78.2
  %i.em = phi ptr [ %i.ek, %.noexc.i.i.i.i82.2 ], [ %i.ef, %.lr.ph.i.i.i.i78.2 ] ; 2 uses
  switch i64 %i.ei, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.2
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.2
  %i.en = load i8, ptr %i.eg, align 1, !tbaa !25
  store i8 %i.en, ptr %i.em, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.2

bb.v:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.em, ptr align 1 %i.eg, i64 %i.ei, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.2: ; preds = %bb.v, %bb.u, %._crit_edge.i.i.i.i.i.i.i.i.2
  %i.eo = load i64, ptr %i.b, align 8, !tbaa !22  ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bw, i64 136
  store i64 %i.eo, ptr %i.ep, align 8, !tbaa !26
  %i.eq = load ptr, ptr %i.ee, align 8, !tbaa !24
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.eo
  store i8 0, ptr %i.er, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  %i.es = getelementptr inbounds nuw i8, ptr %i.bw, i64 160 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %18, i64 160
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bw, i64 176 ; 3 uses
  store ptr %i.eu, ptr %i.es, align 8, !tbaa !20
  %i.ev = load ptr, ptr %i.et, align 8, !tbaa !24 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %18, i64 168
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i64 %i.ex, ptr %i.a, align 8, !tbaa !22
  %i.ey = icmp ugt i64 %i.ex, 15
  br i1 %i.ey, label %.noexc.i5.i.i.i.i.i.i.2, label %._crit_edge.i.i4.i.i.i.i.i.i.2

.noexc.i5.i.i.i.i.i.i.2:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.2
  %i.ez = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.es, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i.i.i.i.i.2 unwind label %bb.p ; 2 uses

.noexc.i.i.i.i.i.i.2:                             ; preds = %.noexc.i5.i.i.i.i.i.i.2
  store ptr %i.ez, ptr %i.es, align 8, !tbaa !24
  %i.fa = load i64, ptr %i.a, align 8, !tbaa !22
  store i64 %i.fa, ptr %i.eu, align 8, !tbaa !25
  br label %._crit_edge.i.i4.i.i.i.i.i.i.2

._crit_edge.i.i4.i.i.i.i.i.i.2:                   ; preds = %.noexc.i.i.i.i.i.i.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.2
  %i.fb = phi ptr [ %i.ez, %.noexc.i.i.i.i.i.i.2 ], [ %i.eu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.2 ] ; 2 uses
  switch i64 %i.ex, label %bb.x [
    i64 1, label %bb.w
    i64 0, label %.lr.ph.i.i.i.i78.3
  ]

bb.w:                                             ; preds = %._crit_edge.i.i4.i.i.i.i.i.i.2
  %i.fc = load i8, ptr %i.ev, align 1, !tbaa !25
  store i8 %i.fc, ptr %i.fb, align 1, !tbaa !25
  br label %.lr.ph.i.i.i.i78.3

bb.x:                                             ; preds = %._crit_edge.i.i4.i.i.i.i.i.i.2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fb, ptr align 1 %i.ev, i64 %i.ex, i1 false)
  br label %.lr.ph.i.i.i.i78.3

.lr.ph.i.i.i.i78.3:                               ; preds = %bb.x, %bb.w, %._crit_edge.i.i4.i.i.i.i.i.i.2
  %i.fd = load i64, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bw, i64 168
  store i64 %i.fd, ptr %i.fe, align 8, !tbaa !26
  %i.ff = load ptr, ptr %i.es, align 8, !tbaa !24
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fd
  store i8 0, ptr %i.fg, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bw, i64 192 ; 6 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bw, i64 208 ; 4 uses
  store ptr %i.fi, ptr %i.fh, align 8, !tbaa !20
  %i.fj = load ptr, ptr %i.bn, align 8, !tbaa !24 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %18, i64 200
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  store i64 %i.fl, ptr %i.b, align 8, !tbaa !22
  %i.fm = icmp ugt i64 %i.fl, 15
  br i1 %i.fm, label %.noexc.i.i.i.i.i.i.i.3, label %._crit_edge.i.i.i.i.i.i.i.i.3

.noexc.i.i.i.i.i.i.i.3:                           ; preds = %.lr.ph.i.i.i.i78.3
  %i.fn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(64) %i.fh, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i.i.i.i82.3 unwind label %bb.ac ; 2 uses

.noexc.i.i.i.i82.3:                               ; preds = %.noexc.i.i.i.i.i.i.i.3
  store ptr %i.fn, ptr %i.fh, align 8, !tbaa !24
  %i.fo = load i64, ptr %i.b, align 8, !tbaa !22
  store i64 %i.fo, ptr %i.fi, align 8, !tbaa !25
  br label %._crit_edge.i.i.i.i.i.i.i.i.3

._crit_edge.i.i.i.i.i.i.i.i.3:                    ; preds = %.noexc.i.i.i.i82.3, %.lr.ph.i.i.i.i78.3
  %i.fp = phi ptr [ %i.fn, %.noexc.i.i.i.i82.3 ], [ %i.fi, %.lr.ph.i.i.i.i78.3 ] ; 2 uses
  switch i64 %i.fl, label %bb.z [
    i64 1, label %bb.y
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.3
  ]

bb.y:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.3
  %i.fq = load i8, ptr %i.fj, align 1, !tbaa !25
  store i8 %i.fq, ptr %i.fp, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.3

bb.z:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fp, ptr align 1 %i.fj, i64 %i.fl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.3: ; preds = %bb.z, %bb.y, %._crit_edge.i.i.i.i.i.i.i.i.3
  %i.fr = load i64, ptr %i.b, align 8, !tbaa !22  ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.bw, i64 200
  store i64 %i.fr, ptr %i.fs, align 8, !tbaa !26
  %i.ft = load ptr, ptr %i.fh, align 8, !tbaa !24
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fr
  store i8 0, ptr %i.fu, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bw, i64 224 ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %18, i64 224
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bw, i64 240 ; 3 uses
  store ptr %i.fx, ptr %i.fv, align 8, !tbaa !20
  %i.fy = load ptr, ptr %i.fw, align 8, !tbaa !24 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %18, i64 232
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i64 %i.ga, ptr %i.a, align 8, !tbaa !22
  %i.gb = icmp ugt i64 %i.ga, 15
  br i1 %i.gb, label %.noexc.i5.i.i.i.i.i.i.3, label %._crit_edge.i.i4.i.i.i.i.i.i.3

.noexc.i5.i.i.i.i.i.i.3:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.3
  %i.gc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.fv, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i.i.i.i.i.3 unwind label %bb.p ; 2 uses

.noexc.i.i.i.i.i.i.3:                             ; preds = %.noexc.i5.i.i.i.i.i.i.3
  store ptr %i.gc, ptr %i.fv, align 8, !tbaa !24
  %i.gd = load i64, ptr %i.a, align 8, !tbaa !22
  store i64 %i.gd, ptr %i.fx, align 8, !tbaa !25
  br label %._crit_edge.i.i4.i.i.i.i.i.i.3

._crit_edge.i.i4.i.i.i.i.i.i.3:                   ; preds = %.noexc.i.i.i.i.i.i.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.3
  %i.ge = phi ptr [ %i.gc, %.noexc.i.i.i.i.i.i.3 ], [ %i.fx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.3 ] ; 2 uses
  switch i64 %i.ga, label %bb.ab [
    i64 1, label %bb.aa
    i64 0, label %_ZNSt6vectorIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorSaIS3_EEaSESt16initializer_listIS3_E.exit.i
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i4.i.i.i.i.i.i.3
  %i.gf = load i8, ptr %i.fy, align 1, !tbaa !25
  store i8 %i.gf, ptr %i.ge, align 1, !tbaa !25
  br label %_ZNSt6vectorIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorSaIS3_EEaSESt16initializer_listIS3_E.exit.i

bb.ab:                                            ; preds = %._crit_edge.i.i4.i.i.i.i.i.i.3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ge, ptr align 1 %i.fy, i64 %i.ga, i1 false)
  br label %_ZNSt6vectorIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorSaIS3_EEaSESt16initializer_listIS3_E.exit.i

_ZNSt6vectorIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorSaIS3_EEaSESt16initializer_listIS3_E.exit.i: ; preds = %bb.ab, %bb.aa, %._crit_edge.i.i4.i.i.i.i.i.i.3
  %i.gg = load i64, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.bw, i64 232
  store i64 %i.gg, ptr %i.gh, align 8, !tbaa !26
  %i.gi = load ptr, ptr %i.fv, align 8, !tbaa !24
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gg
  store i8 0, ptr %i.gj, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %i.gk = getelementptr inbounds nuw i8, ptr %16, i64 8
  %.pre.pre.i = load ptr, ptr %i.br, align 8, !tbaa !24, !noalias !627 ; 2 uses
  store ptr %i.bw, ptr %16, align 8, !tbaa !102, !noalias !627
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bw, i64 256 ; 2 uses
  store ptr %i.gl, ptr %i.gk, align 8, !tbaa !103, !noalias !627
  store ptr %i.gl, ptr %i.bv, align 8, !tbaa !104, !noalias !627
  %i.gm = icmp eq ptr %.pre.pre.i, %i.bs
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.ac:                                            ; preds = %.noexc.i.i.i.i.i.i.i.3, %.noexc.i.i.i.i.i.i.i.2, %.noexc.i.i.i.i.i.i.i.1, %.noexc.i.i.i.i.i.i.i
  %.021.i.i.i.i.lcssa = phi ptr [ %i.bw, %.noexc.i.i.i.i.i.i.i ], [ %i.db, %.noexc.i.i.i.i.i.i.i.1 ], [ %i.ee, %.noexc.i.i.i.i.i.i.i.2 ], [ %i.fh, %.noexc.i.i.i.i.i.i.i.3 ]
  %i.gn = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.p, %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i80
  %.021.i.i.i.i301 = phi ptr [ %.021.i.i.i.i.lcssa, %bb.ac ], [ %.021.i.i.i.i.lcssa299, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i80 ], [ %.021.i.i.i.i.lcssa299, %bb.p ]
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.gn, %bb.ac ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i80 ], [ %i.cs, %bb.p ]
  %i.go = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i, 0
  %i.gp = call ptr @__cxa_begin_catch(ptr %i.go) #35 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvT_S5_(ptr noundef nonnull %i.bw, ptr noundef nonnull %.021.i.i.i.i301)
  invoke void @__cxa_rethrow() #36
          to label %bb.af unwind label %bb.ad

bb.ad:                                            ; preds = %.body.i.i.i.i
  %i.gq = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZNSt12_Vector_baseIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorSaIS3_EE13_M_deallocateEPS3_m.exit.i.i.i.i.body unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gr = landingpad { ptr, i32 }
          catch ptr null
  %i.gs = extractvalue { ptr, i32 } %i.gr, 0
  call void @__clang_call_terminate(ptr %i.gs) #40
  unreachable

bb.af:                                            ; preds = %.body.i.i.i.i
  unreachable

_ZNSt12_Vector_baseIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorSaIS3_EE13_M_deallocateEPS3_m.exit.i.i.i.i.body: ; preds = %bb.ad
  %i.gt = extractvalue { ptr, i32 } %i.gq, 0
  %i.gu = call ptr @__cxa_begin_catch(ptr %i.gt) #35 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef 256) #38
  invoke void @__cxa_rethrow() #36
          to label %bb.ai unwind label %bb.ag

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorSaIS3_EE13_M_deallocateEPS3_m.exit.i.i.i.i.body
  %i.gv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gw = landingpad { ptr, i32 }
          catch ptr null
  %i.gx = extractvalue { ptr, i32 } %i.gw, 0
  call void @__clang_call_terminate(ptr %i.gx) #40
  unreachable

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorSaIS3_EE13_M_deallocateEPS3_m.exit.i.i.i.i.body
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorSaIS3_EEaSESt16initializer_listIS3_E.exit.i
  %i.gy = load i64, ptr %i.bs, align 8, !tbaa !25, !noalias !627
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %.pre.pre.i, i64 noundef %i.gz) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt6vectorIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorSaIS3_EEaSESt16initializer_listIS3_E.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ha = load ptr, ptr %i.bn, align 8, !tbaa !24, !noalias !627 ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.bo
  br i1 %i.hb, label %_ZZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvEN15TempDirSelectorD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.hc = load i64, ptr %i.bo, align 8, !tbaa !25, !noalias !627
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.hd) #38
  br label %_ZZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvEN15TempDirSelectorD2Ev.exit.i

_ZZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvEN15TempDirSelectorD2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  %i.he = load ptr, ptr %i.bk, align 8, !tbaa !24, !noalias !627 ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.bl
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvEN15TempDirSelectorD2Ev.exit.i
  %i.hg = load i64, ptr %i.bl, align 8, !tbaa !25, !noalias !627
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hh) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.1.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.1.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvEN15TempDirSelectorD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1.i
  %i.hi = load ptr, ptr %i.bg, align 8, !tbaa !24, !noalias !627 ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.bh
  br i1 %i.hj, label %_ZZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvEN15TempDirSelectorD2Ev.exit.1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.1.i
  %i.hk = load i64, ptr %i.bh, align 8, !tbaa !25, !noalias !627
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hl) #38
  br label %_ZZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvEN15TempDirSelectorD2Ev.exit.1.i

_ZZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvEN15TempDirSelectorD2Ev.exit.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.1.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.1.i
  %i.hm = load ptr, ptr %i.bd, align 8, !tbaa !24, !noalias !627 ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.be
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.2.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvEN15TempDirSelectorD2Ev.exit.1.i
  %i.ho = load i64, ptr %i.be, align 8, !tbaa !25, !noalias !627
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hp) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.2.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.2.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvEN15TempDirSelectorD2Ev.exit.1.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2.i
  %i.hq = load ptr, ptr %i.az, align 8, !tbaa !24, !noalias !627 ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %i.ba
  br i1 %i.hr, label %_ZZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvEN15TempDirSelectorD2Ev.exit.2.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.2.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.2.i
  %i.hs = load i64, ptr %i.ba, align 8, !tbaa !25, !noalias !627
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.ht) #38
  br label %_ZZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvEN15TempDirSelectorD2Ev.exit.2.i

_ZZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvEN15TempDirSelectorD2Ev.exit.2.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.2.i
  %i.hu = load ptr, ptr %i.aw, align 8, !tbaa !24, !noalias !627 ; 2 uses
  %i.hv = icmp eq ptr %i.hu, %i.ax
  br i1 %i.hv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvEN15TempDirSelectorD2Ev.exit.2.i
  %i.hw = load i64, ptr %i.ax, align 8, !tbaa !25, !noalias !627
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %i.hu, i64 noundef %i.hx) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.3.i: ; preds = %_ZZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvEN15TempDirSelectorD2Ev.exit.2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3.i
  %i.hy = load ptr, ptr %18, align 8, !tbaa !24, !noalias !627 ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.at
  br i1 %i.hz, label %_ZZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvEN15TempDirSelectorD2Ev.exit.3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.3.i
  %i.ia = load i64, ptr %i.at, align 8, !tbaa !25, !noalias !627
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ib) #38
  br label %_ZZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvEN15TempDirSelectorD2Ev.exit.3.i

_ZZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvEN15TempDirSelectorD2Ev.exit.3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #35, !noalias !627
  %i.ic = load i64, ptr %i.as, align 8, !tbaa !26, !noalias !627
  %i.id = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef %i.ic, ptr noundef nonnull @.str.67, i64 noundef 4)
          to label %.lr.ph.i unwind label %bb.ao  ; 0 uses

.lr.ph.i:                                         ; preds = %_ZZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvEN15TempDirSelectorD2Ev.exit.3.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 0, i64 24, i1 false), !alias.scope !627
  %i.ie = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 8 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 7 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ik = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 7 uses
  %i.il = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 12 uses
  %i.in = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 10 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 4 uses
  br label %bb.ap

._crit_edge.i:                                    ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i
  %.pre278.i = load ptr, ptr %i.io, align 8, !tbaa !106, !alias.scope !627 ; 8 uses
  %.pre280.i = load ptr, ptr %i.ip, align 8, !tbaa !107, !alias.scope !627
  %i.iq = icmp eq ptr %.pre278.i, %.pre280.i
  br i1 %i.iq, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge.i
  %i.ir = getelementptr inbounds nuw i8, ptr %.pre278.i, i64 16 ; 3 uses
  store ptr %i.ir, ptr %.pre278.i, align 8, !tbaa !20
  %i.is = load ptr, ptr %17, align 8, !tbaa !24, !noalias !627 ; 2 uses
  %i.it = load i64, ptr %i.as, align 8, !tbaa !26, !noalias !627 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #35, !noalias !627
  store i64 %i.it, ptr %i.h, align 8, !tbaa !22, !noalias !627
  %i.iu = icmp ugt i64 %i.it, 15
  br i1 %i.iu, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.aj
  %i.iv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.pre278.i, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc124.i unwind label %bb.cj ; 2 uses

.noexc124.i:                                      ; preds = %.noexc.i.i.i
  store ptr %i.iv, ptr %.pre278.i, align 8, !tbaa !24
  %i.iw = load i64, ptr %i.h, align 8, !tbaa !22, !noalias !627
  store i64 %i.iw, ptr %i.ir, align 8, !tbaa !25
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc124.i, %bb.aj
  %i.ix = phi ptr [ %i.iv, %.noexc124.i ], [ %i.ir, %bb.aj ] ; 2 uses
  switch i64 %i.it, label %bb.al [
    i64 1, label %bb.ak
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i
  %i.iy = load i8, ptr %i.is, align 1, !tbaa !25
  store i8 %i.iy, ptr %i.ix, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.al:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ix, ptr align 1 %i.is, i64 %i.it, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.al, %bb.ak, %._crit_edge.i.i.i.i
  %i.iz = load i64, ptr %i.h, align 8, !tbaa !22, !noalias !627 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.pre278.i, i64 8
  store i64 %i.iz, ptr %i.ja, align 8, !tbaa !26
  %i.jb = load ptr, ptr %.pre278.i, align 8, !tbaa !24
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.iz
  store i8 0, ptr %i.jc, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #35, !noalias !627
  %i.jd = load ptr, ptr %i.io, align 8, !tbaa !106, !alias.scope !627
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 32
  store ptr %i.je, ptr %i.io, align 8, !tbaa !106, !alias.scope !627
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i

bb.am:                                            ; preds = %._crit_edge.i
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr %.pre278.i, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i unwind label %bb.cj

.loopexit.split-lp238.i:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %lpad.loopexit.split-lp271.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp238.i, %bb.ag
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp271.i, %.loopexit.split-lp238.i ], [ %i.gv, %bb.ag ]
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.body.i
  %i.jf = phi ptr [ %i.bu, %.body.i ], [ %i.jg, %bb.an ]
  %i.jg = getelementptr inbounds i8, ptr %i.jf, i64 -64 ; 3 uses
  call fastcc void @_ZZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvEN15TempDirSelectorD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.jg) #35
  %i.jh = icmp eq ptr %i.jg, %18
  br i1 %i.jh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134.thread.i, label %bb.an

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134.thread.i: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #35, !noalias !627
  br label %bb.cl

bb.ao:                                            ; preds = %_ZZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvEN15TempDirSelectorD2Ev.exit.3.i
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ap:                                            ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i, %.lr.ph.i
  %.sroa.0197.0266.idx.i = phi i64 [ 0, %.lr.ph.i ], [ %.sroa.0197.0266.add.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i ] ; 2 uses
  %.sroa.0197.0266.ptr.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.sroa.0197.0266.idx.i ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #35, !noalias !627
  %i.jj = load ptr, ptr %.sroa.0197.0266.ptr.i, align 8, !tbaa !24, !noalias !628
  invoke void @_ZN5arrow8internal9GetEnvVarB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.10") align 8 %19, ptr noundef %i.jj)
          to label %_ZN5arrow8internal15GetEnvVarNativeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i unwind label %bb.aq

_ZN5arrow8internal15GetEnvVarNativeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.ap
  %i.jk = load ptr, ptr %19, align 8, !tbaa !46   ; 3 uses
  %i.jl = icmp eq ptr %i.jk, null
  br i1 %i.jl, label %bb.be, label %_ZNK5arrow6Status10IsKeyErrorEv.exit.i

_ZNK5arrow6Status10IsKeyErrorEv.exit.i:           ; preds = %_ZN5arrow8internal15GetEnvVarNativeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal12TemporaryDir4MakeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178.i: ; preds = %bb.bx
  %i.op = load i64, ptr %i.im, align 8, !tbaa !25, !noalias !627
  %i.oq = add i64 %i.op, 1
  call void @_ZdlPvm(ptr noundef %i.on, i64 noundef %i.oq) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180.i: ; preds = %bb.bx, %.loopexit.split-lp233.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178.i
  %.pn68.i = phi { ptr, i32 } [ %i.om, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178.i ], [ %lpad.loopexit.split-lp504, %.loopexit.split-lp233.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.om, %bb.bx ] ; 2 uses
  %i.or = load ptr, ptr %24, align 8, !tbaa !24, !noalias !627 ; 2 uses
  %i.os = icmp eq ptr %i.or, %i.ik
  br i1 %i.os, label %.body164.i, label %.body164.i.sink.split

.body164.i.sink.split:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180.i, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.sink = phi ptr [ %i.nb, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.or, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180.i ]
  %.pn68.pn.i.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn68.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180.i ]
  %i.ot = load i64, ptr %i.ik, align 8, !tbaa !25, !noalias !627
  %i.ou = add i64 %i.ot, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ou) #38
  br label %.body164.i

.body164.i:                                       ; preds = %.body164.i.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180.i, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn68.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn68.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180.i ], [ %.pn68.pn.i.ph, %.body164.i.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #35, !noalias !627
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #35, !noalias !627
  br label %bb.cg

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit162.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177.i, %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i158.i, %bb.bg
  %i.ov = load ptr, ptr %22, align 8, !tbaa !24, !noalias !627 ; 2 uses
  %i.ow = icmp eq ptr %i.ov, %i.ih
  br i1 %i.ow, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit162.i
  %i.ox = load i64, ptr %i.ih, align 8, !tbaa !25, !noalias !627
  %i.oy = add i64 %i.ox, 1
  call void @_ZdlPvm(ptr noundef %i.ov, i64 noundef %i.oy) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit162.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #35, !noalias !627
  br label %bb.by

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151.i
  %.pr.i = load ptr, ptr %19, align 8, !tbaa !46  ; 2 uses
  %i.oz = icmp eq ptr %.pr.i, null
  br i1 %i.oz, label %bb.bz, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i, !prof !53

bb.bz:                                            ; preds = %bb.by
  %i.pa = load ptr, ptr %i.ig, align 8, !tbaa !24, !noalias !627 ; 2 uses
  %i.pb = icmp eq ptr %i.pa, %i.ii
  br i1 %i.pb, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i: ; preds = %bb.bz
  %i.pc = load i64, ptr %i.ii, align 8, !tbaa !25, !noalias !627
  %i.pd = add i64 %i.pc, 1
  call void @_ZdlPvm(ptr noundef %i.pa, i64 noundef %i.pd) #38
  %.pr.pre.i.i = load ptr, ptr %19, align 8, !tbaa !46 ; 2 uses
  %i.pe = icmp eq ptr %.pr.pre.i.i, null
  br i1 %i.pe, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i, !prof !53

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZNK5arrow6Status10IsKeyErrorEv.exit.i, %bb.by, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i
  %i.pf = phi ptr [ %.pr.pre.i.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i ], [ %.pr.i, %bb.by ], [ %i.jk, %_ZNK5arrow6Status10IsKeyErrorEv.exit.i ] ; 4 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 48
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !40 ; 8 uses
  %.not.i.i.i.i75 = icmp eq ptr %i.ph, null
  br i1 %.not.i.i.i.i75, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.ca

bb.ca:                                            ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 8 ; 4 uses
  %i.pj = load atomic i64, ptr %i.pi acquire, align 8 ; 2 uses
  %i.pk = icmp eq i64 %i.pj, 4294967297
  %i.pl = trunc i64 %i.pj to i32                  ; 2 uses
  br i1 %i.pk, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  store i32 0, ptr %i.pi, align 8, !tbaa !28
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ph, i64 12
  store i32 0, ptr %i.pm, align 4, !tbaa !29
  %i.pn = load ptr, ptr %i.ph, align 8, !tbaa !31
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  %i.pp = load ptr, ptr %i.po, align 8
  call void %i.pp(ptr noundef nonnull align 8 dereferenceable(16) %i.ph) #35, !inline_history !592
  %i.pq = load ptr, ptr %i.ph, align 8, !tbaa !31
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 24
  %i.ps = load ptr, ptr %i.pr, align 8
  call void %i.ps(ptr noundef nonnull align 8 dereferenceable(16) %i.ph) #35, !inline_history !592
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.cc:                                            ; preds = %bb.ca
  %i.pt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i = icmp eq i8 %i.pt, 0
  br i1 %.not.i.i.i.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.pu = add nsw i32 %i.pl, -1
  store i32 %i.pu, ptr %i.pi, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ce:                                            ; preds = %bb.cc
  %i.pv = atomicrmw volatile add ptr %i.pi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ce, %bb.cd
  %.0.i.i.i.i.i.i = phi i32 [ %i.pl, %bb.cd ], [ %i.pv, %bb.ce ]
  %i.pw = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.pw, label %bb.cf, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !48

bb.cf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ph) #35
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.cf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.cb, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i
  %i.px = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !24 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pf, i64 24 ; 2 uses
  %i.qa = icmp eq ptr %i.py, %i.pz
  br i1 %i.qa, label %_ZN5arrow6Status11DeleteStateEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i76: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.qb = load i64, ptr %i.pz, align 8, !tbaa !25
  %i.qc = add i64 %i.qb, 1
  call void @_ZdlPvm(ptr noundef %i.py, i64 noundef %i.qc) #38
  br label %_ZN5arrow6Status11DeleteStateEv.exit

_ZN5arrow6Status11DeleteStateEv.exit:             ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i76
  call void @_ZdlPvm(ptr noundef nonnull %i.pf, i64 noundef 56) #38
  br label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i: ; preds = %bb.bz, %_ZN5arrow6Status11DeleteStateEv.exit, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #35, !noalias !627
  %.sroa.0197.0266.add.i = add nuw nsw i64 %.sroa.0197.0266.idx.i, 64 ; 2 uses
  %.not.i33 = icmp eq i64 %.sroa.0197.0266.add.i, 256
  br i1 %.not.i33, label %._crit_edge.i, label %bb.ap

bb.cg:                                            ; preds = %.body164.i, %bb.bn
  %.pn71.i = phi { ptr, i32 } [ %i.ms, %bb.bn ], [ %.pn68.pn.i, %.body164.i ]
  %i.qd = load ptr, ptr %22, align 8, !tbaa !24, !noalias !627 ; 2 uses
  %i.qe = icmp eq ptr %i.qd, %i.ih
  br i1 %i.qe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187.i: ; preds = %bb.cg
  %i.qf = load i64, ptr %i.ih, align 8, !tbaa !25, !noalias !627
  %i.qg = add i64 %i.qf, 1
  call void @_ZdlPvm(ptr noundef %i.qd, i64 noundef %i.qg) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189.i: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #35, !noalias !627
  br label %bb.ch

bb.ch:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189.i, %bb.bd
  %.pn71.pn.pn.i = phi { ptr, i32 } [ %.pn71.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189.i ], [ %.pn64.pn.pn.i, %bb.bd ]
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %19) #35
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.aq
  %.pn71.pn.pn.pn.i = phi { ptr, i32 } [ %.pn71.pn.pn.i, %bb.ch ], [ %i.jo, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #35, !noalias !627
  br label %bb.ck

bb.cj:                                            ; preds = %bb.am, %.noexc.i.i.i
  %i.qh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i: ; preds = %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.qi = load ptr, ptr %17, align 8, !tbaa !24, !noalias !627 ; 2 uses
  %i.qj = icmp eq ptr %i.qi, %i.ar
  br i1 %i.qj, label %.lr.ph.i.i.i.preheader.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i
  %i.qk = load i64, ptr %i.ar, align 8, !tbaa !25, !noalias !627
  %i.ql = add i64 %i.qk, 1
  call void @_ZdlPvm(ptr noundef %i.qi, i64 noundef %i.ql) #38
  br label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #35, !noalias !627
  %i.qm = load ptr, ptr %i.cj, align 8, !tbaa !24 ; 2 uses
  %i.qn = icmp eq ptr %i.qm, %i.ck
  br i1 %i.qn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.preheader.i
  %i.qo = load i64, ptr %i.ck, align 8, !tbaa !25
  %i.qp = add i64 %i.qo, 1
  call void @_ZdlPvm(ptr noundef %i.qm, i64 noundef %i.qp) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.preheader.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.qq = load ptr, ptr %i.bw, align 8, !tbaa !24 ; 2 uses
  %i.qr = icmp eq ptr %i.qq, %i.bx
  br i1 %i.qr, label %_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.qs = load i64, ptr %i.bx, align 8, !tbaa !25
  %i.qt = add i64 %i.qs, 1
  call void @_ZdlPvm(ptr noundef %i.qq, i64 noundef %i.qt) #38
  br label %_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i

_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %i.qu = load ptr, ptr %i.dp, align 8, !tbaa !24 ; 2 uses
  %i.qv = icmp eq ptr %i.qu, %i.dr
  br i1 %i.qv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.1: ; preds = %_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i
  %i.qw = load i64, ptr %i.dr, align 8, !tbaa !25
  %i.qx = add i64 %i.qw, 1
  call void @_ZdlPvm(ptr noundef %i.qu, i64 noundef %i.qx) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.1: ; preds = %_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.1
  %i.qy = load ptr, ptr %i.db, align 8, !tbaa !24 ; 2 uses
  %i.qz = icmp eq ptr %i.qy, %i.dc
  br i1 %i.qz, label %_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.1
  %i.ra = load i64, ptr %i.dc, align 8, !tbaa !25
  %i.rb = add i64 %i.ra, 1
  call void @_ZdlPvm(ptr noundef %i.qy, i64 noundef %i.rb) #38
  br label %_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i.1

_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.1
  %.05.i.i.i.ptr.i.2 = getelementptr inbounds nuw i8, ptr %i.bw, i64 128
  %i.rc = getelementptr inbounds nuw i8, ptr %i.bw, i64 160
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !24 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.bw, i64 176 ; 2 uses
  %i.rf = icmp eq ptr %i.rd, %i.re
  br i1 %i.rf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.2: ; preds = %_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i.1
  %i.rg = load i64, ptr %i.re, align 8, !tbaa !25
  %i.rh = add i64 %i.rg, 1
  call void @_ZdlPvm(ptr noundef %i.rd, i64 noundef %i.rh) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.2: ; preds = %_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.2
  %i.ri = load ptr, ptr %.05.i.i.i.ptr.i.2, align 8, !tbaa !24 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.bw, i64 144 ; 2 uses
  %i.rk = icmp eq ptr %i.ri, %i.rj
  br i1 %i.rk, label %_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.2
  %i.rl = load i64, ptr %i.rj, align 8, !tbaa !25
  %i.rm = add i64 %i.rl, 1
  call void @_ZdlPvm(ptr noundef %i.ri, i64 noundef %i.rm) #38
  br label %_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i.2

_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.2
  %.05.i.i.i.ptr.i.3 = getelementptr inbounds nuw i8, ptr %i.bw, i64 192
  %i.rn = getelementptr inbounds nuw i8, ptr %i.bw, i64 224
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !24 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.bw, i64 240 ; 2 uses
  %i.rq = icmp eq ptr %i.ro, %i.rp
  br i1 %i.rq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.3: ; preds = %_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i.2
  %i.rr = load i64, ptr %i.rp, align 8, !tbaa !25
  %i.rs = add i64 %i.rr, 1
  call void @_ZdlPvm(ptr noundef %i.ro, i64 noundef %i.rs) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.3: ; preds = %_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.3
  %i.rt = load ptr, ptr %.05.i.i.i.ptr.i.3, align 8, !tbaa !24 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.bw, i64 208 ; 2 uses
  %i.rv = icmp eq ptr %i.rt, %i.ru
  br i1 %i.rv, label %_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.3
  %i.rw = load i64, ptr %i.ru, align 8, !tbaa !25
  %i.rx = add i64 %i.rw, 1
  call void @_ZdlPvm(ptr noundef %i.rt, i64 noundef %i.rx) #38
  br label %_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i.3

_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.3
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef 256) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #35, !noalias !627
  %32 = load ptr, ptr %29, align 8, !tbaa !623    ; 2 uses
  %33 = load ptr, ptr %i.io, align 8, !tbaa !623  ; 2 uses
  %.not276 = icmp eq ptr %32, %33
  br i1 %.not276, label %.critedge31, label %.lr.ph

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.pn71.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn71.pn.pn.pn.i, %bb.ci ], [ %i.qh, %bb.cj ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %29) #35
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134.thread.i
  %.pn71.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn71.pn.pn.pn.pn.i, %bb.ck ], [ %i.ji, %bb.ao ], [ %eh.lpad-body.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134.thread.i ]
  %i.ry = load ptr, ptr %17, align 8, !tbaa !24, !noalias !627 ; 2 uses
  %i.rz = icmp eq ptr %i.ry, %i.ar
  br i1 %i.rz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194.i: ; preds = %bb.cl
  %i.sa = load i64, ptr %i.ar, align 8, !tbaa !25, !noalias !627
  %i.sb = add i64 %i.sa, 1
  call void @_ZdlPvm(ptr noundef %i.ry, i64 noundef %i.sb) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196.i: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #35, !noalias !627
  call fastcc void @_ZNSt6vectorIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorSaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #35, !noalias !627
  br label %.body

.lr.ph:                                           ; preds = %_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i.3
  %i.sc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.se = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 8 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.sh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.si = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 12 uses
  %i.so = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 7 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.sr = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.cn

bb.cm:                                            ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #35
  %i.st = getelementptr inbounds nuw i8, ptr %.sroa.0116.0277, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.st, %33
  br i1 %.not, label %.critedge31, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph, %bb.cm
  %.sroa.0116.0277 = phi ptr [ %32, %.lr.ph ], [ %i.st, %bb.cm ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !639)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35, !noalias !639
  store ptr null, ptr %5, align 8, !tbaa !46, !noalias !639
  %i.su = getelementptr inbounds nuw i8, ptr %.sroa.0116.0277, i64 8
  br label %bb.cp

bb.co:                                            ; preds = %_ZN5arrow6ResultIbED2Ev.exit.i
  %i.sv = add nuw nsw i32 %.02266.i, 1            ; 2 uses
  %exitcond.i = icmp eq i32 %i.sv, 3
  br i1 %exitcond.i, label %.critedge34.i, label %bb.cp, !llvm.loop !595

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.02266.i = phi i32 [ 0, %bb.cn ], [ %i.sv, %bb.co ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35, !noalias !639
  store ptr %i.sc, ptr %7, align 8, !tbaa !20, !noalias !639
  %i.sw = load ptr, ptr %.sroa.0116.0277, align 8, !tbaa !24, !noalias !639 ; 2 uses
  %i.sx = load i64, ptr %i.su, align 8, !tbaa !26, !noalias !639 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #35, !noalias !639
  store i64 %i.sx, ptr %i.e, align 8, !tbaa !22, !noalias !639
  %i.sy = icmp ugt i64 %i.sx, 15
  br i1 %i.sy, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.cp
  %i.sz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc.i unwind label %bb.cy  ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.sz, ptr %7, align 8, !tbaa !24, !noalias !639
  %i.ta = load i64, ptr %i.e, align 8, !tbaa !22, !noalias !639
  store i64 %i.ta, ptr %i.sc, align 8, !tbaa !25, !noalias !639
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %bb.cp
  %i.tb = phi ptr [ %i.sz, %.noexc.i ], [ %i.sc, %bb.cp ] ; 2 uses
  switch i64 %i.sx, label %bb.cr [
    i64 1, label %bb.cq
    i64 0, label %bb.cs
  ]

bb.cq:                                            ; preds = %._crit_edge.i.i.i
  %i.tc = load i8, ptr %i.sw, align 1, !tbaa !25
  store i8 %i.tc, ptr %i.tb, align 1, !tbaa !25
  br label %bb.cs

bb.cr:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tb, ptr align 1 %i.sw, i64 %i.sx, i1 false)
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq, %._crit_edge.i.i.i
  %i.td = load i64, ptr %i.e, align 8, !tbaa !22, !noalias !639 ; 2 uses
  store i64 %i.td, ptr %i.sd, align 8, !tbaa !26, !noalias !639
  %i.te = load ptr, ptr %7, align 8, !tbaa !24, !noalias !639
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 %i.td
  store i8 0, ptr %i.tf, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #35, !noalias !639
  invoke void @_ZN5arrow8internal16PlatformFilenameC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 %7)
          to label %bb.ct unwind label %bb.cz

bb.ct:                                            ; preds = %bb.cs
  %i.tg = load ptr, ptr %7, align 8, !tbaa !24, !noalias !639 ; 2 uses
  %i.th = icmp eq ptr %i.tg, %i.sc
  br i1 %i.th, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36: ; preds = %bb.ct
  %i.ti = load i64, ptr %i.sc, align 8, !tbaa !25, !noalias !639
  %i.tj = add i64 %i.ti, 1
  call void @_ZdlPvm(ptr noundef %i.tg, i64 noundef %i.tj) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35, !noalias !639
  call void @llvm.experimental.noalias.scope.decl(metadata !640)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !639
  store i8 47, ptr %i.d, align 1, !tbaa !25, !noalias !641
  %i.tk = load ptr, ptr %25, align 8, !tbaa !24, !noalias !641
  %i.tl = load i64, ptr %i.j, align 8, !tbaa !26, !noalias !641 ; 3 uses
  store ptr %i.se, ptr %9, align 8, !tbaa !20, !alias.scope !642, !noalias !639
  store i64 0, ptr %i.sf, align 8, !tbaa !26, !alias.scope !642, !noalias !639
  store i8 0, ptr %i.se, align 8, !tbaa !25, !alias.scope !642, !noalias !639
  %i.tm = add i64 %i.tl, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.tm)
          to label %bb.cu unwind label %.loopexit.split-lp.i37.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.tn = load i64, ptr %i.sf, align 8, !tbaa !26, !alias.scope !642, !noalias !639
  %i.to = sub i64 4611686018427387903, %i.tn
  %i.tp = icmp ult i64 %i.to, %i.tl
  br i1 %i.tp, label %.invoke.i.i.i56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i42: ; preds = %bb.cu
  %i.tq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.tk, i64 noundef %i.tl)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i43 unwind label %.loopexit.split-lp.i37.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i43: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i42
  %i.tr = load i64, ptr %i.sf, align 8, !tbaa !26, !alias.scope !642, !noalias !639
  %i.ts = icmp eq i64 %i.tr, 4611686018427387903
  br i1 %i.ts, label %.invoke.i.i.i56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i44

.invoke.i.i.i56:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i43, %bb.cu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.80) #36
          to label %.cont.i.i.i57 unwind label %.loopexit.split-lp.i37.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont.i.i.i57:                                    ; preds = %.invoke.i.i.i56
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i43
  %i.tt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %bb.cv unwind label %.loopexit.split-lp.i37.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.i37.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.invoke.i.i.i56
  %lpad.loopexit.split-lp486 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tu = load ptr, ptr %9, align 8, !tbaa !24, !alias.scope !642, !noalias !639 ; 2 uses
  %i.tv = icmp eq ptr %i.tu, %i.se
  br i1 %i.tv, label %.body.i40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i39: ; preds = %.loopexit.split-lp.i37.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.tw = load i64, ptr %i.se, align 8, !tbaa !25, !alias.scope !642, !noalias !639
  %i.tx = add i64 %i.tw, 1
  call void @_ZdlPvm(ptr noundef %i.tu, i64 noundef %i.tx) #38
  br label %.body.i40

bb.cv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !639
  invoke void @_ZN5arrow8internal16PlatformFilenameC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 %9)
          to label %bb.cw unwind label %bb.da

bb.cw:                                            ; preds = %bb.cv
  %i.ty = load ptr, ptr %9, align 8, !tbaa !24, !noalias !639 ; 2 uses
  %i.tz = icmp eq ptr %i.ty, %i.se
  br i1 %i.tz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i: ; preds = %bb.cw
  %i.ua = load i64, ptr %i.se, align 8, !tbaa !25, !noalias !639
  %i.ub = add i64 %i.ua, 1
  call void @_ZdlPvm(ptr noundef %i.ty, i64 noundef %i.ub) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i: ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35, !noalias !639
  invoke void @_ZNK5arrow8internal16PlatformFilename4JoinERKS1_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::internal::PlatformFilename") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.cx unwind label %bb.db

bb.cx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35, !noalias !639
  invoke fastcc void @_ZN5arrow8internal12_GLOBAL__N_111DoCreateDirERKNS0_16PlatformFilenameEb(ptr dead_on_unwind noalias nonnull writable align 8 %11, ptr noundef nonnull readonly align 8 dereferenceable(8) %10, i1 noundef zeroext false)
          to label %_ZN5arrow8internal9CreateDirERKNS0_16PlatformFilenameE.exit.i unwind label %bb.dc

_ZN5arrow8internal9CreateDirERKNS0_16PlatformFilenameE.exit.i: ; preds = %bb.cx
  %i.uc = load ptr, ptr %11, align 8, !tbaa !46   ; 2 uses
  %i.ud = icmp eq ptr %i.uc, null
  br i1 %i.ud, label %bb.dd, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %_ZN5arrow8internal9CreateDirERKNS0_16PlatformFilenameE.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false), !alias.scope !639
  br label %bb.ey

bb.cy:                                            ; preds = %.noexc.i.i
  %i.ue = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i

bb.cz:                                            ; preds = %bb.cs
  %i.uf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ug = load ptr, ptr %7, align 8, !tbaa !24, !noalias !639 ; 2 uses
  %i.uh = icmp eq ptr %i.ug, %i.sc
  br i1 %i.uh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i: ; preds = %bb.cz
  %i.ui = load i64, ptr %i.sc, align 8, !tbaa !25, !noalias !639
  %i.uj = add i64 %i.ui, 1
  call void @_ZdlPvm(ptr noundef %i.ug, i64 noundef %i.uj) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i

bb.da:                                            ; preds = %bb.cv
  %i.uk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ul = load ptr, ptr %9, align 8, !tbaa !24, !noalias !639 ; 2 uses
  %i.um = icmp eq ptr %i.ul, %i.se
  br i1 %i.um, label %.body.i40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i: ; preds = %bb.da
  %i.un = load i64, ptr %i.se, align 8, !tbaa !25, !noalias !639
  %i.uo = add i64 %i.un, 1
  call void @_ZdlPvm(ptr noundef %i.ul, i64 noundef %i.uo) #38
  br label %.body.i40

bb.db:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i
  %i.up = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.dc:                                            ; preds = %bb.cx
  %i.uq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6ResultIbED2Ev.exit64.i
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal12TemporaryDir4MakeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.aaj = atomicrmw volatile add ptr %i.zw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i95

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i95: ; preds = %bb.et, %bb.es
  %.0.i.i.i.i.i.i96 = phi i32 [ %i.zz, %bb.es ], [ %i.aaj, %bb.et ]
  %i.aak = icmp eq i32 %.0.i.i.i.i.i.i96, 1
  br i1 %i.aak, label %bb.eu, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i97, !prof !48

bb.eu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i95
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.zv) #35
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i97

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i97: ; preds = %bb.eu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i95, %bb.eq, %bb.eo
  %i.aal = getelementptr inbounds nuw i8, ptr %i.zt, i64 8
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !24 ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.zt, i64 24 ; 2 uses
  %i.aao = icmp eq ptr %i.aam, %i.aan
  br i1 %i.aao, label %_ZN5arrow6Status11DeleteStateEv.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i98: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i97
  %i.aap = load i64, ptr %i.aan, align 8, !tbaa !25
  %i.aaq = add i64 %i.aap, 1
  call void @_ZdlPvm(ptr noundef %i.aam, i64 noundef %i.aaq) #38
  br label %_ZN5arrow6Status11DeleteStateEv.exit101

_ZN5arrow6Status11DeleteStateEv.exit101:          ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i98
  call void @_ZdlPvm(ptr noundef nonnull %i.zt, i64 noundef 56) #38
  br label %_ZN5arrow6ResultIbED2Ev.exit.i

_ZN5arrow6ResultIbED2Ev.exit.i:                   ; preds = %_ZN5arrow6Status11DeleteStateEv.exit101, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35, !noalias !639
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35, !noalias !639
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35, !noalias !639
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35, !noalias !639
  br i1 %i.xj, label %bb.co, label %.loopexit7.i

.loopexit.split-lp3.i:                            ; preds = %.loopexit.split-lp3.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i, %bb.dg
  %.pn26.pn.i = phi { ptr, i32 } [ %i.uu, %bb.dg ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i ], [ %lpad.loopexit.split-lp488, %.loopexit.split-lp3.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.aar = load ptr, ptr %11, align 8, !tbaa !46, !noalias !639
  %.not.i.i63.i = icmp eq ptr %i.aar, null
  br i1 %.not.i.i63.i, label %_ZN5arrow6ResultIbED2Ev.exit64.i, label %bb.ev, !prof !51

bb.ev:                                            ; preds = %.loopexit.split-lp3.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(9) %11)
  br label %_ZN5arrow6ResultIbED2Ev.exit64.i

_ZN5arrow6ResultIbED2Ev.exit64.i:                 ; preds = %bb.ev, %.loopexit.split-lp3.i, %bb.dc
  %.pn26.pn.pn.i = phi { ptr, i32 } [ %i.uq, %bb.dc ], [ %.pn26.pn.i, %.loopexit.split-lp3.i ], [ %.pn26.pn.i, %bb.ev ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35, !noalias !639
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #35
  br label %bb.ew

bb.ew:                                            ; preds = %_ZN5arrow6ResultIbED2Ev.exit64.i, %bb.db
  %.pn26.pn.pn.pn.i = phi { ptr, i32 } [ %.pn26.pn.pn.i, %_ZN5arrow6ResultIbED2Ev.exit64.i ], [ %i.up, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35, !noalias !639
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #35
  br label %.body.i40

.body.i40:                                        ; preds = %bb.da, %.loopexit.split-lp.i37.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i39
  %.pn26.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn26.pn.pn.pn.i, %bb.ew ], [ %lpad.loopexit.split-lp486, %.loopexit.split-lp.i37.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.uk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i ], [ %lpad.loopexit.split-lp486, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i39 ], [ %i.uk, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35, !noalias !639
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i: ; preds = %bb.cz, %.body.i40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i, %bb.cy
  %.pn26.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn26.pn.pn.pn.pn.i, %.body.i40 ], [ %i.ue, %bb.cy ], [ %i.uf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i ], [ %i.uf, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35, !noalias !639
  %i.aas = load ptr, ptr %5, align 8, !tbaa !46, !noalias !639
  %.not.i65.i = icmp eq ptr %i.aas, null
  br i1 %.not.i65.i, label %_ZN5arrow6StatusD2Ev.exit66.i, label %bb.ex, !prof !51

bb.ex:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %_ZN5arrow6StatusD2Ev.exit66.i

_ZN5arrow6StatusD2Ev.exit66.i:                    ; preds = %bb.ex, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35, !noalias !639
  br label %.body58

.critedge.i:                                      ; preds = %bb.df
  store ptr null, ptr %30, align 8, !tbaa !46, !alias.scope !639
  %i.aat = ptrtoint ptr %i.ut to i64
  store i64 %i.aat, ptr %i.sr, align 8, !tbaa !120, !alias.scope !639
  %.pr.i55 = load ptr, ptr %11, align 8, !tbaa !46 ; 2 uses
  %.not.i.i67.i = icmp eq ptr %.pr.i55, null
  br i1 %.not.i.i67.i, label %_ZN5arrow6ResultIbED2Ev.exit68.i, label %bb.ey, !prof !53

bb.ey:                                            ; preds = %.critedge.thread.i, %.critedge.i
  %i.aau = phi ptr [ %.pr.i55, %.critedge.i ], [ %i.uc, %.critedge.thread.i ] ; 4 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 48
  %i.aaw = load ptr, ptr %i.aav, align 8, !tbaa !40 ; 8 uses
  %.not.i.i.i.i84 = icmp eq ptr %i.aaw, null
  br i1 %.not.i.i.i.i84, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i88, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 8 ; 4 uses
  %i.aay = load atomic i64, ptr %i.aax acquire, align 8 ; 2 uses
  %i.aaz = icmp eq i64 %i.aay, 4294967297
  %i.aba = trunc i64 %i.aay to i32                ; 2 uses
  br i1 %i.aaz, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  store i32 0, ptr %i.aax, align 8, !tbaa !28
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aaw, i64 12
  store i32 0, ptr %i.abb, align 4, !tbaa !29
  %i.abc = load ptr, ptr %i.aaw, align 8, !tbaa !31
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 16
  %i.abe = load ptr, ptr %i.abd, align 8
  call void %i.abe(ptr noundef nonnull align 8 dereferenceable(16) %i.aaw) #35, !inline_history !592
  %i.abf = load ptr, ptr %i.aaw, align 8, !tbaa !31
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 24
  %i.abh = load ptr, ptr %i.abg, align 8
  call void %i.abh(ptr noundef nonnull align 8 dereferenceable(16) %i.aaw) #35, !inline_history !592
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i88

bb.fb:                                            ; preds = %bb.ez
  %i.abi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i85 = icmp eq i8 %i.abi, 0
  br i1 %.not.i.i.i.i.i85, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.abj = add nsw i32 %i.aba, -1
  store i32 %i.abj, ptr %i.aax, align 8, !tbaa !47
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i86

bb.fd:                                            ; preds = %bb.fb
  %i.abk = atomicrmw volatile add ptr %i.aax, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i86

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i86: ; preds = %bb.fd, %bb.fc
  %.0.i.i.i.i.i.i87 = phi i32 [ %i.aba, %bb.fc ], [ %i.abk, %bb.fd ]
  %i.abl = icmp eq i32 %.0.i.i.i.i.i.i87, 1
  br i1 %i.abl, label %bb.fe, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i88, !prof !48

bb.fe:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i86
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aaw) #35
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i88

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i88: ; preds = %bb.fe, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i86, %bb.fa, %bb.ey
  %i.abm = getelementptr inbounds nuw i8, ptr %i.aau, i64 8
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !24 ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.aau, i64 24 ; 2 uses
  %i.abp = icmp eq ptr %i.abn, %i.abo
  br i1 %i.abp, label %_ZN5arrow6Status11DeleteStateEv.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i89: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i88
  %i.abq = load i64, ptr %i.abo, align 8, !tbaa !25
  %i.abr = add i64 %i.abq, 1
  call void @_ZdlPvm(ptr noundef %i.abn, i64 noundef %i.abr) #38
  br label %_ZN5arrow6Status11DeleteStateEv.exit92

_ZN5arrow6Status11DeleteStateEv.exit92:           ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i89
  call void @_ZdlPvm(ptr noundef nonnull %i.aau, i64 noundef 56) #38
  br label %_ZN5arrow6ResultIbED2Ev.exit68.i

_ZN5arrow6ResultIbED2Ev.exit68.i:                 ; preds = %_ZN5arrow6Status11DeleteStateEv.exit92, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35, !noalias !639
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35, !noalias !639
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35, !noalias !639
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35, !noalias !639
  br label %.loopexit7.i

.critedge34.i:                                    ; preds = %bb.co
  call void @_ZN5arrow6ResultISt10unique_ptrINS_8internal12TemporaryDirESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dereferenceable(8) %5) #35
  br label %.loopexit7.i

.loopexit7.i:                                     ; preds = %_ZN5arrow6ResultIbED2Ev.exit.i, %.critedge34.i, %_ZN5arrow6ResultIbED2Ev.exit68.i
  %i.abs = load ptr, ptr %5, align 8, !tbaa !46, !noalias !639
  %.not.i69.i = icmp eq ptr %i.abs, null
  br i1 %.not.i69.i, label %bb.fg, label %bb.ff, !prof !51

bb.ff:                                            ; preds = %.loopexit7.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %.loopexit7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35, !noalias !639
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.abt = load ptr, ptr %30, align 8, !tbaa !46
  %i.abu = icmp eq ptr %i.abt, null
  br i1 %i.abu, label %bb.fh, label %.critedge, !prof !51

.critedge:                                        ; preds = %bb.fg
  call void @_ZN5arrow6ResultISt10unique_ptrINS_8internal12TemporaryDirESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %30) #35
  call void @_ZN5arrow6ResultISt10unique_ptrINS_8internal12TemporaryDirESt14default_deleteIS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %30) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #35
  br label %.loopexit

bb.fh:                                            ; preds = %bb.fg
  %i.abv = load i64, ptr %i.sr, align 8, !tbaa !120, !noalias !658 ; 2 uses
  %.not120 = icmp eq i64 %i.abv, 0
  br i1 %.not120, label %bb.cm, label %.loopexit.loopexit

.critedge31:                                      ; preds = %bb.cm, %_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i.3
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #35
  invoke void @_ZN5arrow6Status8FromArgsIJRA82_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %31, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(82) @.str.23)
          to label %_ZN5arrow6Status7IOErrorIJRA82_KcEEES0_DpOT_.exit unwind label %bb.fj

_ZN5arrow6Status7IOErrorIJRA82_KcEEES0_DpOT_.exit: ; preds = %.critedge31
  call void @_ZN5arrow6ResultISt10unique_ptrINS_8internal12TemporaryDirESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %31) #35
  %i.abw = load ptr, ptr %31, align 8, !tbaa !46
  %.not.i62 = icmp eq ptr %i.abw, null
  br i1 %.not.i62, label %_ZN5arrow6StatusD2Ev.exit, label %bb.fi, !prof !51

bb.fi:                                            ; preds = %_ZN5arrow6Status7IOErrorIJRA82_KcEEES0_DpOT_.exit
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %31)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6Status7IOErrorIJRA82_KcEEES0_DpOT_.exit, %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #35
  br label %.loopexit

bb.fj:                                            ; preds = %.critedge31
  %i.abx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #35
  br label %.body58

.loopexit.loopexit:                               ; preds = %bb.fh
  store ptr null, ptr %0, align 8, !tbaa !46
  store i64 %i.abv, ptr %i.ss, align 8, !tbaa !120
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #35
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.critedge, %_ZN5arrow6StatusD2Ev.exit
  %i.aby = load ptr, ptr %29, align 8, !tbaa !121 ; 3 uses
  %i.abz = load ptr, ptr %i.io, align 8, !tbaa !106 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.aby, %i.abz
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.acf, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.aby, %.loopexit ] ; 3 uses
  %i.aca = load ptr, ptr %.05.i.i.i, align 8, !tbaa !24 ; 2 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.acc = icmp eq ptr %i.aca, %i.acb
  br i1 %i.acc, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i63: ; preds = %.lr.ph.i.i.i
  %i.acd = load i64, ptr %i.acb, align 8, !tbaa !25
  %i.ace = add i64 %i.acd, 1
  call void @_ZdlPvm(ptr noundef %i.aca, i64 noundef %i.ace) #38
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i63
  %i.acf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i64 = icmp eq ptr %i.acf, %i.abz
  br i1 %.not.i.i.i64, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i65 = load ptr, ptr %29, align 8, !tbaa !121
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %.loopexit
  %i.acg = phi ptr [ %.pr.i65, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.aby, %.loopexit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.acg, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.fk

bb.fk:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ach = load ptr, ptr %i.ip, align 8, !tbaa !107
  %i.aci = ptrtoint ptr %i.ach to i64
  %i.acj = ptrtoint ptr %i.acg to i64
  %i.ack = sub i64 %i.aci, %i.acj
  call void @_ZdlPvm(ptr noundef nonnull %i.acg, i64 noundef %i.ack) #38
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #35
  br label %bb.fl

.body58:                                          ; preds = %_ZN5arrow6StatusD2Ev.exit66.i, %bb.fj
  %.pn25 = phi { ptr, i32 } [ %i.abx, %bb.fj ], [ %.pn26.pn.pn.pn.pn.pn.i, %_ZN5arrow6StatusD2Ev.exit66.i ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %29) #35
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196.i, %.body58
  %.pn25.pn = phi { ptr, i32 } [ %.pn25, %.body58 ], [ %.pn71.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #35
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %27) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #35
  br label %bb.fn

bb.fl:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.c
  %i.acl = load ptr, ptr %27, align 8, !tbaa !46
  %i.acm = icmp eq ptr %i.acl, null
  br i1 %i.acm, label %bb.fm, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i, !prof !51

bb.fm:                                            ; preds = %bb.fl
  %i.acn = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.aco = load ptr, ptr %i.acn, align 8, !tbaa !24 ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %27, i64 24 ; 2 uses
  %i.acq = icmp eq ptr %i.aco, %i.acp
  br i1 %i.acq, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i: ; preds = %bb.fm
  %i.acr = load i64, ptr %i.acp, align 8, !tbaa !25
  %i.acs = add i64 %i.acr, 1
  call void @_ZdlPvm(ptr noundef %i.aco, i64 noundef %i.acs) #38
  %.pr.pre.i68 = load ptr, ptr %27, align 8, !tbaa !46
  %i.act = icmp eq ptr %.pr.pre.i68, null
  br i1 %i.act, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i, !prof !53

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i, %bb.fl
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(40) %27)
  br label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.fm, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #35
  %i.acu = load ptr, ptr %25, align 8, !tbaa !24  ; 2 uses
  %i.acv = icmp eq ptr %i.acu, %i.i
  br i1 %i.acv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.acw = load i64, ptr %i.i, align 8, !tbaa !25
  %i.acx = add i64 %i.acw, 1
  call void @_ZdlPvm(ptr noundef %i.acu, i64 noundef %i.acx) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #35
  ret void

bb.fn:                                            ; preds = %.body, %bb.d
  %.pn25.pn.pn.pn = phi { ptr, i32 } [ %.pn25.pn, %.body ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #35
  %i.acy = load ptr, ptr %25, align 8, !tbaa !24  ; 2 uses
  %i.acz = icmp eq ptr %i.acy, %i.i
  br i1 %i.acz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.fn
  %i.ada = load i64, ptr %i.i, align 8, !tbaa !25
  %i.adb = add i64 %i.ada, 1
  call void @_ZdlPvm(ptr noundef %i.acy, i64 noundef %i.adb) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #35
  resume { ptr, i32 } %.pn25.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN5arrow8internal12TemporaryDir4MakeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clB5cxx11Ev"(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::linear_congruential_engine", align 8 ; 12 uses
  %4 = alloca %"class.std::uniform_int_distribution", align 4 ; 21 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 43 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  tail call void @llvm.experimental.noalias.scope.decl(metadata !667)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35, !noalias !667
  %i.b = tail call noundef i64 @_ZN5arrow8internal13GetRandomSeedEv(), !noalias !667
  %i.c = urem i64 %i.b, 2147483647
  %storemerge.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1)
  store i64 %storemerge.i.i.i, ptr %3, align 8, !tbaa !123, !noalias !667
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35, !noalias !667
  store i32 0, ptr %4, align 4, !tbaa !125, !noalias !667
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 35, ptr %i.d, align 4, !tbaa !126, !noalias !667
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 24 uses
  store ptr %i.e, ptr %5, align 8, !tbaa !20, !alias.scope !667
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 18 uses
  store i64 0, ptr %i.f, align 8, !tbaa !26, !alias.scope !667
  store i8 0, ptr %i.e, align 8, !tbaa !25, !alias.scope !667
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 8)
          to label %.preheader.preheader.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

.preheader.preheader.i:                           ; preds = %bb.a
  %i.g = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit.i: ; preds = %.preheader.preheader.i
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @.str.61, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !25, !noalias !667
  %i.k = load i64, ptr %i.f, align 8, !tbaa !26, !alias.scope !667 ; 4 uses
  %i.l = add i64 %i.k, 1                          ; 3 uses
  %i.m = load ptr, ptr %5, align 8, !tbaa !24, !alias.scope !667 ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.e
  br i1 %i.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit.i
  %i.o = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.o)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit.i
  %i.p = load i64, ptr %i.e, align 8, !tbaa !25, !alias.scope !667
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.q = phi i64 [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.r = icmp ugt i64 %i.l, %i.q
end_hunk_2
