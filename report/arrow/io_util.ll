Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/io_util?download=true
inline.NumInlined: 2464
inline.NumDeleted: 989
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5arrow8internal12TemporaryDir4MakeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %28, align 8, !tbaa !47
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.c, !prof !48

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6ResultISt10unique_ptrINS_8internal12TemporaryDirESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %28) #36
  br label %bb.hq

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.ht

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !597)
  call void @llvm.experimental.noalias.scope.decl(metadata !598)
  %i.g = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 12 uses
  store ptr %i.h, ptr %29, align 8, !tbaa !19, !alias.scope !599
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !23, !noalias !599 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %28, i64 24 ; 5 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !25, !noalias !599 ; 3 uses
  %i.n = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i64 %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  br label %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  store ptr %i.i, ptr %29, align 8, !tbaa !23, !alias.scope !599
  %i.p = load i64, ptr %i.j, align 8, !tbaa !24, !noalias !599
  store i64 %i.p, ptr %i.h, align 8, !tbaa !24, !alias.scope !599
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %28, i64 16
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !25, !noalias !599
  br label %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit

_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.q = phi ptr [ %i.h, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ] ; 5 uses
  %i.r = phi i64 [ %i.m, %bb.f ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ] ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 3 uses
  store i64 %i.r, ptr %i.t, align 8, !tbaa !25, !alias.scope !599
  store ptr %i.j, ptr %i.g, align 8, !tbaa !23, !noalias !599
  store i64 0, ptr %i.s, align 8, !tbaa !25, !noalias !599
  store i8 0, ptr %i.j, align 8, !tbaa !24, !noalias !599
  %i.u = load ptr, ptr %26, align 8, !tbaa !23    ; 6 uses
  %i.v = icmp eq ptr %i.u, %i.b
  %i.w = icmp eq ptr %i.q, %i.h                   ; 2 uses
  br i1 %i.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit
  br i1 %i.w, label %bb.g, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit
  br i1 %i.w, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.x = icmp ult i64 %i.r, 16
  call void @llvm.assume(i1 %i.x)
  switch i64 %i.r, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.y = load i8, ptr %i.q, align 1, !tbaa !24
  store i8 %i.y, ptr %i.u, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.q, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.z = load i64, ptr %i.t, align 8, !tbaa !25   ; 2 uses
  store i64 %i.z, ptr %i.c, align 8, !tbaa !25
  %i.aa = load ptr, ptr %26, align 8, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  store i8 0, ptr %i.ab, align 1, !tbaa !24
  %.pre.i = load ptr, ptr %29, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.q, ptr %26, align 8, !tbaa !23
  store i64 %i.r, ptr %i.c, align 8, !tbaa !25
  %i.ac = load i64, ptr %i.h, align 8, !tbaa !24
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !24
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !24
  store ptr %i.q, ptr %26, align 8, !tbaa !23
  store i64 %i.r, ptr %i.c, align 8, !tbaa !25
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !24
  store i64 %i.ae, ptr %i.b, align 8, !tbaa !24
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.u, ptr %29, align 8, !tbaa !23
  store i64 %i.ad, ptr %i.h, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.h, ptr %29, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.j, %bb.k
  %i.af = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.u, %bb.j ], [ %i.h, %bb.k ]
  store i64 0, ptr %i.t, align 8, !tbaa !25
  store i8 0, ptr %i.af, align 1, !tbaa !24
  %i.ag = load ptr, ptr %29, align 8, !tbaa !23   ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.h
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ai = load i64, ptr %i.h, align 8, !tbaa !24
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #36, !noalias !600
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false), !noalias !600
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #36, !noalias !600
  %i.ak = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.ak, ptr %18, align 8, !tbaa !19, !noalias !600
  %i.al = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  store i64 0, ptr %i.al, align 8, !tbaa !25, !noalias !600
  store i8 0, ptr %i.ak, align 8, !tbaa !24, !noalias !600
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #36, !noalias !600
  %i.am = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  store ptr %i.am, ptr %19, align 8, !tbaa !19, !noalias !600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.am, ptr noundef nonnull align 1 dereferenceable(6) @.str.68, i64 6, i1 false), !noalias !600
  %i.an = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  store i64 6, ptr %i.an, align 8, !tbaa !25, !noalias !600
  %i.ao = getelementptr inbounds nuw i8, ptr %19, i64 22
  store i8 0, ptr %i.ao, align 2, !tbaa !24, !noalias !600
  %i.ap = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 4 uses
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !19, !noalias !600
  %i.ar = getelementptr inbounds nuw i8, ptr %19, i64 40 ; 2 uses
  store i64 0, ptr %i.ar, align 8, !tbaa !25, !noalias !600
  store i8 0, ptr %i.aq, align 8, !tbaa !24, !noalias !600
  %i.as = getelementptr inbounds nuw i8, ptr %19, i64 64 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %19, i64 80 ; 4 uses
  store ptr %i.at, ptr %i.as, align 8, !tbaa !19, !noalias !600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.at, ptr noundef nonnull align 1 dereferenceable(3) @.str.70, i64 3, i1 false), !noalias !600
  %i.au = getelementptr inbounds nuw i8, ptr %19, i64 72
  store i64 3, ptr %i.au, align 8, !tbaa !25, !noalias !600
  %i.av = getelementptr inbounds nuw i8, ptr %19, i64 83
  store i8 0, ptr %i.av, align 1, !tbaa !24, !noalias !600
  %i.aw = getelementptr inbounds nuw i8, ptr %19, i64 96 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %19, i64 112 ; 4 uses
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !19, !noalias !600
  %i.ay = getelementptr inbounds nuw i8, ptr %19, i64 104
  store i64 0, ptr %i.ay, align 8, !tbaa !25, !noalias !600
  store i8 0, ptr %i.ax, align 8, !tbaa !24, !noalias !600
  %i.az = getelementptr inbounds nuw i8, ptr %19, i64 128 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %19, i64 144 ; 4 uses
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !19, !noalias !600
  store i32 1347241300, ptr %i.ba, align 8, !noalias !600
  %i.bb = getelementptr inbounds nuw i8, ptr %19, i64 136
  store i64 4, ptr %i.bb, align 8, !tbaa !25, !noalias !600
  %i.bc = getelementptr inbounds nuw i8, ptr %19, i64 148
  store i8 0, ptr %i.bc, align 4, !tbaa !24, !noalias !600
  %i.bd = getelementptr inbounds nuw i8, ptr %19, i64 160 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %19, i64 176 ; 4 uses
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !19, !noalias !600
  %i.bf = getelementptr inbounds nuw i8, ptr %19, i64 168
  store i64 0, ptr %i.bf, align 8, !tbaa !25, !noalias !600
  store i8 0, ptr %i.be, align 8, !tbaa !24, !noalias !600
  %i.bg = getelementptr inbounds nuw i8, ptr %19, i64 192 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %19, i64 208 ; 4 uses
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !19, !noalias !600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.bh, ptr noundef nonnull align 1 dereferenceable(7) @.str.72, i64 7, i1 false), !noalias !600
  %i.bi = getelementptr inbounds nuw i8, ptr %19, i64 200
  store i64 7, ptr %i.bi, align 8, !tbaa !25, !noalias !600
  %i.bj = getelementptr inbounds nuw i8, ptr %19, i64 215
  store i8 0, ptr %i.bj, align 1, !tbaa !24, !noalias !600
  %i.bk = getelementptr inbounds nuw i8, ptr %19, i64 224 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %19, i64 240 ; 4 uses
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !19, !noalias !600
  %i.bm = getelementptr inbounds nuw i8, ptr %19, i64 232
  store i64 0, ptr %i.bm, align 8, !tbaa !25, !noalias !600
  store i8 0, ptr %i.bl, align 8, !tbaa !24, !noalias !600
  %i.bn = getelementptr inbounds nuw i8, ptr %19, i64 256
  %i.bo = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.bp = invoke noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #38
          to label %.lr.ph.i.i.i.i75.preheader unwind label %bb.bd, !noalias !600 ; 46 uses

.lr.ph.i.i.i.i75.preheader:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 8 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !19
  %i.br = load ptr, ptr %19, align 8, !tbaa !23   ; 2 uses
  %i.bs = load i64, ptr %i.an, align 8, !tbaa !25 ; 8 uses
  %i.bt = icmp ugt i64 %i.bs, 15
  br i1 %i.bt, label %bb.l, label %._crit_edge.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %.lr.ph.i.i.i.i75.preheader
  %i.bu = icmp slt i64 %i.bs, 0
  br i1 %i.bu, label %.noexc.i.i.i.i.i.i.i, label %bb.m

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.aj, %bb.ab, %bb.t, %bb.l
  %.044.i.i.i.i.lcssa = phi ptr [ %i.bp, %bb.l ], [ %i.cv, %bb.t ], [ %i.dy, %bb.ab ], [ %i.fb, %bb.aj ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #37
          to label %.noexc.i.i.i.i78 unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp

.noexc.i.i.i.i78:                                 ; preds = %.noexc.i.i.i.i.i.i.i
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.bv = add nuw i64 %i.bs, 1                    ; 2 uses
  %i.bw = icmp slt i64 %i.bv, 0
  br i1 %i.bw, label %.noexc6.i.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i, !prof !20

.noexc6.i.i.i.i.i.i.i:                            ; preds = %bb.ak, %bb.ac, %bb.u, %bb.m
  %.044.i.i.i.i.lcssa473.a = phi ptr [ %i.bp, %bb.m ], [ %i.cv, %bb.u ], [ %i.dy, %bb.ac ], [ %i.fb, %bb.ak ]
  invoke void @_ZSt17__throw_bad_allocv() #37
          to label %.noexc13.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp

.noexc13.i.i.i.i:                                 ; preds = %.noexc6.i.i.i.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i: ; preds = %bb.m
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #38
          to label %.noexc14.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit ; 2 uses

.noexc14.i.i.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i
  store ptr %i.bx, ptr %i.bp, align 8, !tbaa !23
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !24
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc14.i.i.i.i, %.lr.ph.i.i.i.i75.preheader
  %i.by = phi ptr [ %i.bx, %.noexc14.i.i.i.i ], [ %i.bq, %.lr.ph.i.i.i.i75.preheader ] ; 3 uses
  switch i64 %i.bs, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.bz = load i8, ptr %i.br, align 1, !tbaa !24
  store i8 %i.bz, ptr %i.by, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.by, ptr align 1 %i.br, i64 %i.bs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i: ; preds = %bb.o, %bb.n, %._crit_edge.i.i.i.i.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 %i.bs, ptr %i.ca, align 8, !tbaa !25
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bs
  store i8 0, ptr %i.cb, align 1, !tbaa !24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bp, i64 32 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bp, i64 48 ; 5 uses
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !19
  %i.ce = load ptr, ptr %i.ap, align 8, !tbaa !23 ; 2 uses
  %i.cf = load i64, ptr %i.ar, align 8, !tbaa !25 ; 8 uses
  %i.cg = icmp ugt i64 %i.cf, 15
  br i1 %i.cg, label %bb.p, label %._crit_edge.i.i4.i.i.i.i.i.i

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i
  %i.ch = icmp slt i64 %i.cf, 0
  br i1 %i.ch, label %.noexc.i7.i.i.i.i.i.i, label %bb.q

.noexc.i7.i.i.i.i.i.i:                            ; preds = %bb.an, %bb.af, %bb.x, %bb.p
  %.044.i.i.i.i.lcssa475.a = phi ptr [ %i.bp, %bb.p ], [ %i.cv, %bb.x ], [ %i.dy, %bb.af ], [ %i.fb, %bb.an ]
  %.lcssa469.a = phi ptr [ %i.bq, %bb.p ], [ %i.cw, %bb.x ], [ %i.dz, %bb.af ], [ %i.fc, %bb.an ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #37
          to label %.noexc.i.i.i.i.i.i unwind label %.loopexit.split-lp16.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp

.noexc.i.i.i.i.i.i:                               ; preds = %.noexc.i7.i.i.i.i.i.i
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.ci = add nuw i64 %i.cf, 1                    ; 2 uses
  %i.cj = icmp slt i64 %i.ci, 0
  br i1 %i.cj, label %.noexc6.i6.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5.i.i.i.i.i.i, !prof !20

.noexc6.i6.i.i.i.i.i.i:                           ; preds = %bb.ao, %bb.ag, %bb.y, %bb.q
  %.044.i.i.i.i.lcssa476.a = phi ptr [ %i.bp, %bb.q ], [ %i.cv, %bb.y ], [ %i.dy, %bb.ag ], [ %i.fb, %bb.ao ]
  %.lcssa470.a = phi ptr [ %i.bq, %bb.q ], [ %i.cw, %bb.y ], [ %i.dz, %bb.ag ], [ %i.fc, %bb.ao ]
  invoke void @_ZSt17__throw_bad_allocv() #37
          to label %.noexc8.i.i.i.i.i.i unwind label %.loopexit.split-lp16.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp

.noexc8.i.i.i.i.i.i:                              ; preds = %.noexc6.i6.i.i.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5.i.i.i.i.i.i: ; preds = %bb.q
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #38
          to label %.noexc9.i.i.i.i.i.i unwind label %.loopexit.split-lp16.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit ; 2 uses

.noexc9.i.i.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5.i.i.i.i.i.i
  store ptr %i.ck, ptr %i.cc, align 8, !tbaa !23
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !24
  br label %._crit_edge.i.i4.i.i.i.i.i.i

._crit_edge.i.i4.i.i.i.i.i.i:                     ; preds = %.noexc9.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i
  %i.cl = phi ptr [ %i.ck, %.noexc9.i.i.i.i.i.i ], [ %i.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i ] ; 3 uses
  switch i64 %i.cf, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %.lr.ph.i.i.i.i75.1
  ]

bb.r:                                             ; preds = %._crit_edge.i.i4.i.i.i.i.i.i
  %i.cm = load i8, ptr %i.ce, align 1, !tbaa !24
  store i8 %i.cm, ptr %i.cl, align 1, !tbaa !24
  br label %.lr.ph.i.i.i.i75.1

bb.s:                                             ; preds = %._crit_edge.i.i4.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cl, ptr align 1 %i.ce, i64 %i.cf, i1 false)
  br label %.lr.ph.i.i.i.i75.1

.loopexit.split-lp16.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5.i.i.i.i.i.i.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5.i.i.i.i.i.i.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5.i.i.i.i.i.i.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5.i.i.i.i.i.i
  %.044.i.i.i.i.lcssa477 = phi ptr [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5.i.i.i.i.i.i ], [ %i.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5.i.i.i.i.i.i.1 ], [ %i.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5.i.i.i.i.i.i.2 ], [ %i.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5.i.i.i.i.i.i.3 ]
  %.lcssa471 = phi ptr [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5.i.i.i.i.i.i ], [ %i.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5.i.i.i.i.i.i.1 ], [ %i.dz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5.i.i.i.i.i.i.2 ], [ %i.fc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5.i.i.i.i.i.i.3 ]
  %lpad.loopexit195 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp16.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i

.loopexit.split-lp16.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp: ; preds = %.noexc.i7.i.i.i.i.i.i, %.noexc6.i6.i.i.i.i.i.i
  %.044.i.i.i.i482 = phi ptr [ %.044.i.i.i.i.lcssa475.a, %.noexc.i7.i.i.i.i.i.i ], [ %.044.i.i.i.i.lcssa476.a, %.noexc6.i6.i.i.i.i.i.i ]
  %i.cn = phi ptr [ %.lcssa469.a, %.noexc.i7.i.i.i.i.i.i ], [ %.lcssa470.a, %.noexc6.i6.i.i.i.i.i.i ]
  %lpad.loopexit.split-lp196 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp16.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i

.loopexit.split-lp16.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i: ; preds = %.loopexit.split-lp16.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp, %.loopexit.split-lp16.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit
  %.044.i.i.i.i481 = phi ptr [ %.044.i.i.i.i.lcssa477, %.loopexit.split-lp16.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit ], [ %.044.i.i.i.i482, %.loopexit.split-lp16.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp ] ; 3 uses
  %i.co = phi ptr [ %.lcssa471, %.loopexit.split-lp16.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit ], [ %i.cn, %.loopexit.split-lp16.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp ] ; 2 uses
  %lpad.phi197 = phi { ptr, i32 } [ %lpad.loopexit195, %.loopexit.split-lp16.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit ], [ %lpad.loopexit.split-lp196, %.loopexit.split-lp16.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp ] ; 2 uses
  %i.cp = load ptr, ptr %.044.i.i.i.i481, align 8, !tbaa !23 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.co
  br i1 %i.cq, label %.body.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.loopexit.split-lp16.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i
  %i.cr = load i64, ptr %i.co, align 8, !tbaa !24
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #39
  br label %.body.i.i.i.i

.lr.ph.i.i.i.i75.1:                               ; preds = %bb.s, %bb.r, %._crit_edge.i.i4.i.i.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  store i64 %i.cf, ptr %i.ct, align 8, !tbaa !25
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cf
  store i8 0, ptr %i.cu, align 1, !tbaa !24
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bp, i64 64 ; 9 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bp, i64 80 ; 8 uses
  store ptr %i.cw, ptr %i.cv, align 8, !tbaa !19
  %i.cx = load ptr, ptr %i.as, align 8, !tbaa !23 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %19, i64 72
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !25 ; 8 uses
  %i.da = icmp ugt i64 %i.cz, 15
  br i1 %i.da, label %bb.t, label %._crit_edge.i.i.i.i.i.i.i.i.1

bb.t:                                             ; preds = %.lr.ph.i.i.i.i75.1
  %i.db = icmp slt i64 %i.cz, 0
  br i1 %i.db, label %.noexc.i.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dc = add nuw i64 %i.cz, 1                    ; 2 uses
  %i.dd = icmp slt i64 %i.dc, 0
  br i1 %i.dd, label %.noexc6.i.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.1, !prof !20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.1: ; preds = %bb.u
  %i.de = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #38
          to label %.noexc14.i.i.i.i.1 unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit ; 2 uses

.noexc14.i.i.i.i.1:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.1
  store ptr %i.de, ptr %i.cv, align 8, !tbaa !23
  store i64 %i.cz, ptr %i.cw, align 8, !tbaa !24
  br label %._crit_edge.i.i.i.i.i.i.i.i.1

._crit_edge.i.i.i.i.i.i.i.i.1:                    ; preds = %.noexc14.i.i.i.i.1, %.lr.ph.i.i.i.i75.1
  %i.df = phi ptr [ %i.de, %.noexc14.i.i.i.i.1 ], [ %i.cw, %.lr.ph.i.i.i.i75.1 ] ; 3 uses
  switch i64 %i.cz, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.1
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.1
  %i.dg = load i8, ptr %i.cx, align 1, !tbaa !24
  store i8 %i.dg, ptr %i.df, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.1

bb.w:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.df, ptr align 1 %i.cx, i64 %i.cz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.1: ; preds = %bb.w, %bb.v, %._crit_edge.i.i.i.i.i.i.i.i.1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  store i64 %i.cz, ptr %i.dh, align 8, !tbaa !25
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.cz
  store i8 0, ptr %i.di, align 1, !tbaa !24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bp, i64 96 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %19, i64 96
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bp, i64 112 ; 5 uses
  store ptr %i.dl, ptr %i.dj, align 8, !tbaa !19
  %i.dm = load ptr, ptr %i.dk, align 8, !tbaa !23 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %19, i64 104
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !25 ; 8 uses
  %i.dp = icmp ugt i64 %i.do, 15
  br i1 %i.dp, label %bb.x, label %._crit_edge.i.i4.i.i.i.i.i.i.1

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.1
  %i.dq = icmp slt i64 %i.do, 0
  br i1 %i.dq, label %.noexc.i7.i.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dr = add nuw i64 %i.do, 1                    ; 2 uses
  %i.ds = icmp slt i64 %i.dr, 0
  br i1 %i.ds, label %.noexc6.i6.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5.i.i.i.i.i.i.1, !prof !20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5.i.i.i.i.i.i.1: ; preds = %bb.y
  %i.dt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #38
          to label %.noexc9.i.i.i.i.i.i.1 unwind label %.loopexit.split-lp16.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit ; 2 uses

.noexc9.i.i.i.i.i.i.1:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5.i.i.i.i.i.i.1
  store ptr %i.dt, ptr %i.dj, align 8, !tbaa !23
  store i64 %i.do, ptr %i.dl, align 8, !tbaa !24
  br label %._crit_edge.i.i4.i.i.i.i.i.i.1

._crit_edge.i.i4.i.i.i.i.i.i.1:                   ; preds = %.noexc9.i.i.i.i.i.i.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.1
  %i.du = phi ptr [ %i.dt, %.noexc9.i.i.i.i.i.i.1 ], [ %i.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.1 ] ; 3 uses
  switch i64 %i.do, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %.lr.ph.i.i.i.i75.2
  ]

bb.z:                                             ; preds = %._crit_edge.i.i4.i.i.i.i.i.i.1
  %i.dv = load i8, ptr %i.dm, align 1, !tbaa !24
  store i8 %i.dv, ptr %i.du, align 1, !tbaa !24
  br label %.lr.ph.i.i.i.i75.2

bb.aa:                                            ; preds = %._crit_edge.i.i4.i.i.i.i.i.i.1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.du, ptr align 1 %i.dm, i64 %i.do, i1 false)
  br label %.lr.ph.i.i.i.i75.2

.lr.ph.i.i.i.i75.2:                               ; preds = %bb.aa, %bb.z, %._crit_edge.i.i4.i.i.i.i.i.i.1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bp, i64 104
  store i64 %i.do, ptr %i.dw, align 8, !tbaa !25
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.do
  store i8 0, ptr %i.dx, align 1, !tbaa !24
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bp, i64 128 ; 8 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bp, i64 144 ; 6 uses
  store ptr %i.dz, ptr %i.dy, align 8, !tbaa !19
  %i.ea = load ptr, ptr %i.az, align 8, !tbaa !23 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %19, i64 136
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !25 ; 8 uses
  %i.ed = icmp ugt i64 %i.ec, 15
  br i1 %i.ed, label %bb.ab, label %._crit_edge.i.i.i.i.i.i.i.i.2

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i75.2
  %i.ee = icmp slt i64 %i.ec, 0
  br i1 %i.ee, label %.noexc.i.i.i.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ef = add nuw i64 %i.ec, 1                    ; 2 uses
  %i.eg = icmp slt i64 %i.ef, 0
  br i1 %i.eg, label %.noexc6.i.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.2, !prof !20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.2: ; preds = %bb.ac
  %i.eh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #38
          to label %.noexc14.i.i.i.i.2 unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit ; 2 uses

.noexc14.i.i.i.i.2:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.2
  store ptr %i.eh, ptr %i.dy, align 8, !tbaa !23
  store i64 %i.ec, ptr %i.dz, align 8, !tbaa !24
  br label %._crit_edge.i.i.i.i.i.i.i.i.2

._crit_edge.i.i.i.i.i.i.i.i.2:                    ; preds = %.noexc14.i.i.i.i.2, %.lr.ph.i.i.i.i75.2
  %i.ei = phi ptr [ %i.eh, %.noexc14.i.i.i.i.2 ], [ %i.dz, %.lr.ph.i.i.i.i75.2 ] ; 3 uses
  switch i64 %i.ec, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.2
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.2
  %i.ej = load i8, ptr %i.ea, align 1, !tbaa !24
  store i8 %i.ej, ptr %i.ei, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.2

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ei, ptr align 1 %i.ea, i64 %i.ec, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.2: ; preds = %bb.ae, %bb.ad, %._crit_edge.i.i.i.i.i.i.i.i.2
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bp, i64 136
  store i64 %i.ec, ptr %i.ek, align 8, !tbaa !25
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ec
  store i8 0, ptr %i.el, align 1, !tbaa !24
  %i.em = getelementptr inbounds nuw i8, ptr %i.bp, i64 160 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %19, i64 160
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bp, i64 176 ; 3 uses
  store ptr %i.eo, ptr %i.em, align 8, !tbaa !19
  %i.ep = load ptr, ptr %i.en, align 8, !tbaa !23 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %19, i64 168
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !25 ; 8 uses
  %i.es = icmp ugt i64 %i.er, 15
  br i1 %i.es, label %bb.af, label %._crit_edge.i.i4.i.i.i.i.i.i.2

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.2
  %i.et = icmp slt i64 %i.er, 0
  br i1 %i.et, label %.noexc.i7.i.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eu = add nuw i64 %i.er, 1                    ; 2 uses
  %i.ev = icmp slt i64 %i.eu, 0
  br i1 %i.ev, label %.noexc6.i6.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5.i.i.i.i.i.i.2, !prof !20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5.i.i.i.i.i.i.2: ; preds = %bb.ag
  %i.ew = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eu) #38
          to label %.noexc9.i.i.i.i.i.i.2 unwind label %.loopexit.split-lp16.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit ; 2 uses

.noexc9.i.i.i.i.i.i.2:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i5.i.i.i.i.i.i.2
  store ptr %i.ew, ptr %i.em, align 8, !tbaa !23
  store i64 %i.er, ptr %i.eo, align 8, !tbaa !24
  br label %._crit_edge.i.i4.i.i.i.i.i.i.2

._crit_edge.i.i4.i.i.i.i.i.i.2:                   ; preds = %.noexc9.i.i.i.i.i.i.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.2
  %i.ex = phi ptr [ %i.ew, %.noexc9.i.i.i.i.i.i.2 ], [ %i.eo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.2 ] ; 3 uses
  switch i64 %i.er, label %bb.ai [
    i64 1, label %bb.ah
    i64 0, label %.lr.ph.i.i.i.i75.3
  ]

bb.ah:                                            ; preds = %._crit_edge.i.i4.i.i.i.i.i.i.2
  %i.ey = load i8, ptr %i.ep, align 1, !tbaa !24
  store i8 %i.ey, ptr %i.ex, align 1, !tbaa !24
  br label %.lr.ph.i.i.i.i75.3

bb.ai:                                            ; preds = %._crit_edge.i.i4.i.i.i.i.i.i.2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ex, ptr align 1 %i.ep, i64 %i.er, i1 false)
  br label %.lr.ph.i.i.i.i75.3

.lr.ph.i.i.i.i75.3:                               ; preds = %bb.ai, %bb.ah, %._crit_edge.i.i4.i.i.i.i.i.i.2
  %i.ez = getelementptr inbounds nuw i8, ptr %i.bp, i64 168
  store i64 %i.er, ptr %i.ez, align 8, !tbaa !25
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.er
  store i8 0, ptr %i.fa, align 1, !tbaa !24
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bp, i64 192 ; 8 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bp, i64 208 ; 6 uses
  store ptr %i.fc, ptr %i.fb, align 8, !tbaa !19
  %i.fd = load ptr, ptr %i.bg, align 8, !tbaa !23 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %19, i64 200
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !25 ; 8 uses
  %i.fg = icmp ugt i64 %i.ff, 15
  br i1 %i.fg, label %bb.aj, label %._crit_edge.i.i.i.i.i.i.i.i.3

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i75.3
  %i.fh = icmp slt i64 %i.ff, 0
  br i1 %i.fh, label %.noexc.i.i.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fi = add nuw i64 %i.ff, 1                    ; 2 uses
  %i.fj = icmp slt i64 %i.fi, 0
  br i1 %i.fj, label %.noexc6.i.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.3, !prof !20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.3: ; preds = %bb.ak
  %i.fk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fi) #38
          to label %.noexc14.i.i.i.i.3 unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit ; 2 uses

.noexc14.i.i.i.i.3:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.3
  store ptr %i.fk, ptr %i.fb, align 8, !tbaa !23
  store i64 %i.ff, ptr %i.fc, align 8, !tbaa !24
  br label %._crit_edge.i.i.i.i.i.i.i.i.3

._crit_edge.i.i.i.i.i.i.i.i.3:                    ; preds = %.noexc14.i.i.i.i.3, %.lr.ph.i.i.i.i75.3
  %i.fl = phi ptr [ %i.fk, %.noexc14.i.i.i.i.3 ], [ %i.fc, %.lr.ph.i.i.i.i75.3 ] ; 3 uses
  switch i64 %i.ff, label %bb.am [
    i64 1, label %bb.al
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.3
  ]

bb.al:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.3
  %i.fm = load i8, ptr %i.fd, align 1, !tbaa !24
  store i8 %i.fm, ptr %i.fl, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.3

bb.am:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fl, ptr align 1 %i.fd, i64 %i.ff, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i.i.i.3: ; preds = %bb.am, %bb.al, %._crit_edge.i.i.i.i.i.i.i.i.3
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bp, i64 200
  store i64 %i.ff, ptr %i.fn, align 8, !tbaa !25
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.ff
  store i8 0, ptr %i.fo, align 1, !tbaa !24
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bp, i64 224 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %19, i64 224
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bp, i64 240 ; 3 uses
  store ptr %i.fr, ptr %i.fp, align 8, !tbaa !19
  %i.fs = load ptr, ptr %i.fq, align 8, !tbaa !23 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %19, i64 232
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !25 ; 8 uses
  %i.fv = icmp ugt i64 %i.fu, 15
  br i1 %i.fv, label %bb.an, label %._crit_edge.i.i4.i.i.i.i.i.i.3
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal12TemporaryDir4MakeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  call void @_ZdlPvm(ptr noundef %i.od, i64 noundef %i.og) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216.i: ; preds = %bb.cu, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214.i
  %.pn70.i = phi { ptr, i32 } [ %i.oc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.oc, %bb.cu ] ; 2 uses
  %i.oh = load ptr, ptr %25, align 8, !tbaa !23, !noalias !600 ; 2 uses
  %i.oi = icmp eq ptr %i.oh, %i.ie
  br i1 %i.oi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216.i
  %i.oj = load i64, ptr %i.ie, align 8, !tbaa !24, !noalias !600
  %i.ok = add i64 %i.oj, 1
  call void @_ZdlPvm(ptr noundef %i.oh, i64 noundef %i.ok) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217.i, %bb.ct
  %.pn70.pn.i = phi { ptr, i32 } [ %i.ob, %bb.ct ], [ %.pn70.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217.i ], [ %.pn70.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #36, !noalias !600
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #36, !noalias !600
  br label %.loopexit.split-lp271.i.loopexit.split-lp

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit200.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213.i, %bb.cf, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i192.i, %bb.bx
  %i.ol = load ptr, ptr %23, align 8, !tbaa !23, !noalias !600 ; 2 uses
  %i.om = icmp eq ptr %i.ol, %i.ia
  br i1 %i.om, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit200.i
  %i.on = load i64, ptr %i.ia, align 8, !tbaa !24, !noalias !600
  %i.oo = add i64 %i.on, 1
  call void @_ZdlPvm(ptr noundef %i.ol, i64 noundef %i.oo) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit200.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #36, !noalias !600
  br label %bb.cv

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185.i
  %.pr.i = load ptr, ptr %20, align 8, !tbaa !47, !noalias !600 ; 2 uses
  %i.op = icmp eq ptr %.pr.i, null
  br i1 %i.op, label %bb.cw, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i, !prof !56

bb.cw:                                            ; preds = %bb.cv
  %i.oq = load ptr, ptr %i.hz, align 8, !tbaa !23, !noalias !600 ; 2 uses
  %i.or = icmp eq ptr %i.oq, %i.ib
  br i1 %i.or, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i: ; preds = %bb.cw
  %i.os = load i64, ptr %i.ib, align 8, !tbaa !24, !noalias !600
  %i.ot = add i64 %i.os, 1
  call void @_ZdlPvm(ptr noundef %i.oq, i64 noundef %i.ot) #39
  %.pr.pre.i.i = load ptr, ptr %20, align 8, !tbaa !47, !noalias !600 ; 2 uses
  %.not.i.i223.i = icmp eq ptr %.pr.pre.i.i, null
  br i1 %.not.i.i223.i, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i, !prof !56

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i, %bb.cv, %_ZNK5arrow6Status10IsKeyErrorEv.exit.i
  %i.ou = phi ptr [ %.pr.pre.i.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i ], [ %.pr.i, %bb.cv ], [ %i.jg, %_ZNK5arrow6Status10IsKeyErrorEv.exit.i ] ; 5 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 1
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !53, !range !54, !noundef !55
  %i.ox = trunc nuw i8 %i.ow to i1
  br i1 %i.ox, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i, label %bb.cx

bb.cx:                                            ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ou, i64 48
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !39 ; 8 uses
  %.not.i.i.i.i71 = icmp eq ptr %i.oz, null
  br i1 %.not.i.i.i.i71, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 8 ; 4 uses
  %i.pb = load atomic i64, ptr %i.pa acquire, align 8 ; 2 uses
  %i.pc = icmp eq i64 %i.pb, 4294967297
  %i.pd = trunc i64 %i.pb to i32                  ; 2 uses
  br i1 %i.pc, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  store i32 0, ptr %i.pa, align 8, !tbaa !27
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oz, i64 12
  store i32 0, ptr %i.pe, align 4, !tbaa !28
  %i.pf = load ptr, ptr %i.oz, align 8, !tbaa !30
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  %i.ph = load ptr, ptr %i.pg, align 8
  call void %i.ph(ptr noundef nonnull align 8 dereferenceable(16) %i.oz) #36, !inline_history !566
  %i.pi = load ptr, ptr %i.oz, align 8, !tbaa !30
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 24
  %i.pk = load ptr, ptr %i.pj, align 8
  call void %i.pk(ptr noundef nonnull align 8 dereferenceable(16) %i.oz) #36, !inline_history !566
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.da:                                            ; preds = %bb.cy
  %i.pl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i72 = icmp eq i8 %i.pl, 0
  br i1 %.not.i.i.i.i.i72, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.pm = add nsw i32 %i.pd, -1
  store i32 %i.pm, ptr %i.pa, align 8, !tbaa !15
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.dc:                                            ; preds = %bb.da
  %i.pn = atomicrmw volatile add ptr %i.pa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.dc, %bb.db
  %.0.i.i.i.i.i.i = phi i32 [ %i.pd, %bb.db ], [ %i.pn, %bb.dc ]
  %i.po = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.po, label %bb.dd, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !20

bb.dd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.oz) #36
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.dd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.cz, %bb.cx
  %i.pp = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !23 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.ou, i64 24 ; 2 uses
  %i.ps = icmp eq ptr %i.pq, %i.pr
  br i1 %i.ps, label %_ZN5arrow6Status5StateD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i73: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.pt = load i64, ptr %i.pr, align 8, !tbaa !24
  %i.pu = add i64 %i.pt, 1
  call void @_ZdlPvm(ptr noundef %i.pq, i64 noundef %i.pu) #39
  br label %_ZN5arrow6Status5StateD2Ev.exit.i

_ZN5arrow6Status5StateD2Ev.exit.i:                ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i73
  call void @_ZdlPvm(ptr noundef nonnull %i.ou, i64 noundef 56) #39
  br label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i: ; preds = %bb.cw, %_ZN5arrow6Status5StateD2Ev.exit.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #36, !noalias !600
  %.sroa.0234.0293.add.i = add nuw nsw i64 %.sroa.0234.0293.idx.i, 64 ; 2 uses
  %i.pv = icmp eq i64 %.sroa.0234.0293.add.i, 256
  br i1 %i.pv, label %._crit_edge.i, label %bb.bg

.loopexit.split-lp271.i.loopexit.split-lp:        ; preds = %.loopexit.split-lp271.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219.i
  %.pn73.i = phi { ptr, i32 } [ %.pn70.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219.i ], [ %lpad.loopexit.split-lp749, %.loopexit.split-lp271.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.pw = load ptr, ptr %23, align 8, !tbaa !23, !noalias !600 ; 2 uses
  %i.px = icmp eq ptr %i.pw, %i.ia
  br i1 %i.px, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224.i: ; preds = %.loopexit.split-lp271.i.loopexit.split-lp
  %i.py = load i64, ptr %i.ia, align 8, !tbaa !24, !noalias !600
  %i.pz = add i64 %i.py, 1
  call void @_ZdlPvm(ptr noundef %i.pw, i64 noundef %i.pz) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226.i: ; preds = %.loopexit.split-lp271.i.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #36, !noalias !600
  br label %bb.de

bb.de:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226.i, %bb.bu
  %.pn73.pn.pn.i = phi { ptr, i32 } [ %.pn73.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226.i ], [ %.pn66.pn.pn.i, %bb.bu ]
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %20) #36
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.bh
  %.pn73.pn.pn.pn.i = phi { ptr, i32 } [ %.pn73.pn.pn.i, %bb.de ], [ %i.jk, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #36, !noalias !600
  br label %bb.dh

bb.dg:                                            ; preds = %bb.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, %.noexc6.i.i.i.i, %.noexc.i.i.i.i
  %i.qa = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i: ; preds = %bb.bc, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i
  %i.qb = load ptr, ptr %18, align 8, !tbaa !23, !noalias !600 ; 2 uses
  %i.qc = icmp eq ptr %i.qb, %i.ak
  br i1 %i.qc, label %.lr.ph.i.i.i.preheader.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i
  %i.qd = load i64, ptr %i.ak, align 8, !tbaa !24, !noalias !600
  %i.qe = add i64 %i.qd, 1
  call void @_ZdlPvm(ptr noundef %i.qb, i64 noundef %i.qe) #39
  br label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #36, !noalias !600
  %i.qf = load ptr, ptr %i.cc, align 8, !tbaa !23 ; 2 uses
  %i.qg = icmp eq ptr %i.qf, %i.cd
  br i1 %i.qg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.preheader.i
  %i.qh = load i64, ptr %i.cd, align 8, !tbaa !24
  %i.qi = add i64 %i.qh, 1
  call void @_ZdlPvm(ptr noundef %i.qf, i64 noundef %i.qi) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.preheader.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.qj = load ptr, ptr %i.bp, align 8, !tbaa !23 ; 2 uses
  %i.qk = icmp eq ptr %i.qj, %i.bq
  br i1 %i.qk, label %_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  %i.ql = load i64, ptr %i.bq, align 8, !tbaa !24
  %i.qm = add i64 %i.ql, 1
  call void @_ZdlPvm(ptr noundef %i.qj, i64 noundef %i.qm) #39
  br label %_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i

_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i
  %i.qn = load ptr, ptr %i.dj, align 8, !tbaa !23 ; 2 uses
  %i.qo = icmp eq ptr %i.qn, %i.dl
  br i1 %i.qo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.1: ; preds = %_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i
  %i.qp = load i64, ptr %i.dl, align 8, !tbaa !24
  %i.qq = add i64 %i.qp, 1
  call void @_ZdlPvm(ptr noundef %i.qn, i64 noundef %i.qq) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.1: ; preds = %_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.1
  %i.qr = load ptr, ptr %i.cv, align 8, !tbaa !23 ; 2 uses
  %i.qs = icmp eq ptr %i.qr, %i.cw
  br i1 %i.qs, label %_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.1
  %i.qt = load i64, ptr %i.cw, align 8, !tbaa !24
  %i.qu = add i64 %i.qt, 1
  call void @_ZdlPvm(ptr noundef %i.qr, i64 noundef %i.qu) #39
  br label %_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i.1

_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.1
  %.05.i.i.i.ptr.i.2 = getelementptr inbounds nuw i8, ptr %i.bp, i64 128
  %i.qv = getelementptr inbounds nuw i8, ptr %i.bp, i64 160
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !23 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.bp, i64 176 ; 2 uses
  %i.qy = icmp eq ptr %i.qw, %i.qx
  br i1 %i.qy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.2: ; preds = %_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i.1
  %i.qz = load i64, ptr %i.qx, align 8, !tbaa !24
  %i.ra = add i64 %i.qz, 1
  call void @_ZdlPvm(ptr noundef %i.qw, i64 noundef %i.ra) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.2: ; preds = %_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.2
  %i.rb = load ptr, ptr %.05.i.i.i.ptr.i.2, align 8, !tbaa !23 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.bp, i64 144 ; 2 uses
  %i.rd = icmp eq ptr %i.rb, %i.rc
  br i1 %i.rd, label %_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.2
  %i.re = load i64, ptr %i.rc, align 8, !tbaa !24
  %i.rf = add i64 %i.re, 1
  call void @_ZdlPvm(ptr noundef %i.rb, i64 noundef %i.rf) #39
  br label %_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i.2

_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.2
  %.05.i.i.i.ptr.i.3 = getelementptr inbounds nuw i8, ptr %i.bp, i64 192
  %i.rg = getelementptr inbounds nuw i8, ptr %i.bp, i64 224
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !23 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.bp, i64 240 ; 2 uses
  %i.rj = icmp eq ptr %i.rh, %i.ri
  br i1 %i.rj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.3: ; preds = %_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i.2
  %i.rk = load i64, ptr %i.ri, align 8, !tbaa !24
  %i.rl = add i64 %i.rk, 1
  call void @_ZdlPvm(ptr noundef %i.rh, i64 noundef %i.rl) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.3: ; preds = %_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.3
  %i.rm = load ptr, ptr %.05.i.i.i.ptr.i.3, align 8, !tbaa !23 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.bp, i64 208 ; 2 uses
  %i.ro = icmp eq ptr %i.rm, %i.rn
  br i1 %i.ro, label %_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.3
  %i.rp = load i64, ptr %i.rn, align 8, !tbaa !24
  %i.rq = add i64 %i.rp, 1
  call void @_ZdlPvm(ptr noundef %i.rm, i64 noundef %i.rq) #39
  br label %_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i.3

_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.3
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 256) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36, !noalias !600
  %33 = load ptr, ptr %30, align 8, !tbaa !596    ; 2 uses
  %34 = load ptr, ptr %i.ih, align 8, !tbaa !596  ; 2 uses
  %35 = icmp eq ptr %33, %34
  br i1 %35, label %.critedge31, label %.lr.ph

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.pn73.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn73.pn.pn.pn.i, %bb.df ], [ %i.qa, %bb.dg ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %30) #36
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168.thread.i
  %.pn73.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn73.pn.pn.pn.pn.i, %bb.dh ], [ %i.jc, %bb.bf ], [ %eh.lpad-body.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168.thread.i ]
  %i.rr = load ptr, ptr %18, align 8, !tbaa !23, !noalias !600 ; 2 uses
  %i.rs = icmp eq ptr %i.rr, %i.ak
  br i1 %i.rs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231.i: ; preds = %bb.di
  %i.rt = load i64, ptr %i.ak, align 8, !tbaa !24, !noalias !600
  %i.ru = add i64 %i.rt, 1
  call void @_ZdlPvm(ptr noundef %i.rr, i64 noundef %i.ru) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.i: ; preds = %bb.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #36, !noalias !600
  call fastcc void @_ZNSt6vectorIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorSaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36, !noalias !600
  br label %.body

.lr.ph:                                           ; preds = %_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i.3
  %i.rv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.rx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 22 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.sa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 12 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 7 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.si = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.dk

bb.dj:                                            ; preds = %bb.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #36
  %i.sm = getelementptr inbounds nuw i8, ptr %.sroa.0167.0442, i64 32 ; 2 uses
  %i.sn = icmp eq ptr %i.sm, %34
  br i1 %i.sn, label %.critedge31, label %bb.dk

bb.dk:                                            ; preds = %.lr.ph, %bb.dj
  %.sroa.0167.0442 = phi ptr [ %33, %.lr.ph ], [ %i.sm, %bb.dj ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !610)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36, !noalias !610
  store ptr null, ptr %5, align 8, !tbaa !47, !noalias !610
  %i.so = getelementptr inbounds nuw i8, ptr %.sroa.0167.0442, i64 8
  br label %bb.dm

bb.dl:                                            ; preds = %_ZN5arrow6ResultIbED2Ev.exit.i
  %i.sp = add nuw nsw i32 %.02260.i, 1            ; 2 uses
  %exitcond.i = icmp eq i32 %i.sp, 3
  br i1 %exitcond.i, label %.critedge34.i, label %bb.dm, !llvm.loop !569

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.02260.i = phi i32 [ 0, %bb.dk ], [ %i.sp, %bb.dl ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36, !noalias !610
  store ptr %i.rv, ptr %7, align 8, !tbaa !19, !noalias !610
  %i.sq = load ptr, ptr %.sroa.0167.0442, align 8, !tbaa !23, !noalias !610 ; 2 uses
  %i.sr = load i64, ptr %i.so, align 8, !tbaa !25, !noalias !610 ; 8 uses
  %i.ss = icmp ugt i64 %i.sr, 15
  br i1 %i.ss, label %bb.dn, label %._crit_edge.i.i.i

bb.dn:                                            ; preds = %bb.dm
  %i.st = icmp slt i64 %i.sr, 0
  br i1 %i.st, label %.noexc.i.i, label %bb.do

.noexc.i.i:                                       ; preds = %bb.dn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #37
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i:                                         ; preds = %.noexc.i.i
  unreachable

bb.do:                                            ; preds = %bb.dn
  %i.su = add nuw i64 %i.sr, 1                    ; 2 uses
  %i.sv = icmp slt i64 %i.su, 0
  br i1 %i.sv, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !20

.noexc6.i.i:                                      ; preds = %bb.do
  invoke void @_ZSt17__throw_bad_allocv() #37
          to label %.noexc35.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc35.i:                                       ; preds = %.noexc6.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.do
  %i.sw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.su) #38
          to label %.noexc36.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc36.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.sw, ptr %7, align 8, !tbaa !23, !noalias !610
  store i64 %i.sr, ptr %i.rv, align 8, !tbaa !24, !noalias !610
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc36.i, %bb.dm
  %i.sx = phi ptr [ %i.sw, %.noexc36.i ], [ %i.rv, %bb.dm ] ; 3 uses
  switch i64 %i.sr, label %bb.dq [
    i64 1, label %bb.dp
    i64 0, label %bb.dr
  ]

bb.dp:                                            ; preds = %._crit_edge.i.i.i
  %i.sy = load i8, ptr %i.sq, align 1, !tbaa !24
  store i8 %i.sy, ptr %i.sx, align 1, !tbaa !24
  br label %bb.dr

bb.dq:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sx, ptr align 1 %i.sq, i64 %i.sr, i1 false)
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp, %._crit_edge.i.i.i
  store i64 %i.sr, ptr %i.rw, align 8, !tbaa !25, !noalias !610
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sx, i64 %i.sr
  store i8 0, ptr %i.sz, align 1, !tbaa !24
  invoke void @_ZN5arrow8internal16PlatformFilenameC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %7)
          to label %bb.ds unwind label %bb.ev

bb.ds:                                            ; preds = %bb.dr
  %i.ta = load ptr, ptr %7, align 8, !tbaa !23, !noalias !610 ; 2 uses
  %i.tb = icmp eq ptr %i.ta, %i.rv
  br i1 %i.tb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35: ; preds = %bb.ds
  %i.tc = load i64, ptr %i.rv, align 8, !tbaa !24, !noalias !610
  %i.td = add i64 %i.tc, 1
  call void @_ZdlPvm(ptr noundef %i.ta, i64 noundef %i.td) #39
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i155: ; preds = %bb.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36, !noalias !610
  %i.te = load ptr, ptr %26, align 8, !tbaa !23, !noalias !611 ; 5 uses
  %i.tf = load i64, ptr %i.c, align 8, !tbaa !25, !noalias !611 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !612)
  store ptr %i.rx, ptr %9, align 8, !tbaa !19, !alias.scope !612
  store i64 0, ptr %i.ry, align 8, !tbaa !25, !alias.scope !612
  store i8 0, ptr %i.rx, align 8, !tbaa !24, !alias.scope !612
  %i.tg = add i64 %i.tf, 1                        ; 3 uses
  %.not.i156 = icmp ugt i64 %i.tg, 15
  br i1 %.not.i156, label %bb.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit

bb.dt:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i155
  %i.th = icmp slt i64 %i.tg, 0
  br i1 %i.th, label %.invoke.i.invoke, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %.0.i158 = call i64 @llvm.umax.i64(i64 %i.tg, i64 30) ; 2 uses
  %i.ti = add nuw i64 %.0.i158, 1                 ; 2 uses
  %i.tj = icmp slt i64 %i.ti, 0
  br i1 %i.tj, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i159, !prof !20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i159: ; preds = %bb.du
  %i.tk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ti) #38
          to label %.noexc164 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc164:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i159
  %i.tl = load ptr, ptr %9, align 8, !tbaa !23    ; 4 uses
  %i.tm = load i64, ptr %i.ry, align 8, !tbaa !25 ; 3 uses
  %i.tn = add i64 %i.tm, 1                        ; 2 uses
  switch i64 %i.tn, label %bb.dw [
    i64 1, label %bb.dv
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i160
  ]

bb.dv:                                            ; preds = %.noexc164
  %i.to = load i8, ptr %i.tl, align 1, !tbaa !24
  store i8 %i.to, ptr %i.tk, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i160

bb.dw:                                            ; preds = %.noexc164
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.tk, ptr align 1 %i.tl, i64 %i.tn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i160: ; preds = %bb.dw, %bb.dv, %.noexc164
  %i.tp = icmp eq ptr %i.tl, %i.rx
  br i1 %i.tp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i160
  %i.tq = icmp ult i64 %i.tm, 16
  call void @llvm.assume(i1 %i.tq)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i160
  %i.tr = load i64, ptr %i.rx, align 8, !tbaa !24
  %i.ts = add i64 %i.tr, 1
  call void @_ZdlPvm(ptr noundef %i.tl, i64 noundef %i.ts) #39
  %.pr.pre = load i64, ptr %i.ry, align 8, !tbaa !25, !alias.scope !612
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5.i
  %.pr = phi i64 [ %.pr.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i ], [ %i.tm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5.i ]
  store ptr %i.tk, ptr %9, align 8, !tbaa !23
  store i64 %.0.i158, ptr %i.rx, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i155
  %i.tt = phi ptr [ %i.tk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i ], [ %i.rx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i155 ] ; 2 uses
  %i.tu = phi i64 [ %.pr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i ], [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i155 ] ; 8 uses
  %i.tv = sub i64 9223372036854775807, %i.tu
  %i.tw = icmp ult i64 %i.tv, %i.tf
  br i1 %i.tw, label %.invoke.i.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit
  %i.tx = add i64 %i.tu, %i.tf                    ; 9 uses
  %i.ty = icmp eq ptr %i.tt, %i.rx
  br i1 %i.ty, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.tz = icmp ult i64 %i.tu, 16
  call void @llvm.assume(i1 %i.tz)
  %.not.i.i.i122 = icmp ugt i64 %i.tx, 15
  br i1 %.not.i.i.i122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i135, label %bb.dx

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ua = load i64, ptr %i.rx, align 8, !tbaa !24, !alias.scope !612 ; 2 uses
  %.not.i.i.i122173 = icmp ugt i64 %i.tx, %i.ua
  br i1 %.not.i.i.i122173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i135, label %bb.dx

bb.dx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.tf, 0
  br i1 %.not8.i.i.i, label %bb.el, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tt, i64 %i.tu ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.tf, 1
  br i1 %cond.i.i.i, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.uc = load i8, ptr %i.te, align 1, !tbaa !24, !noalias !612
  store i8 %i.uc, ptr %i.ub, align 1, !tbaa !24
  br label %bb.el

bb.ea:                                            ; preds = %bb.dy
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ub, ptr align 1 %i.te, i64 %i.tf, i1 false)
  br label %bb.el

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i135: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.ud = phi i64 [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ], [ %i.ua, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.thread ] ; 2 uses
  %i.ue = icmp slt i64 %i.tx, 0
  br i1 %i.ue, label %.invoke.i.invoke, label %bb.eb
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal12TemporaryDir4MakeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

_ZN5arrow6Status11DeleteStateEv.exit97:           ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i94
  call void @_ZdlPvm(ptr noundef nonnull %i.abx, i64 noundef 56) #39
  br label %_ZN5arrow6ResultIbED2Ev.exit.i

_ZN5arrow6ResultIbED2Ev.exit.i:                   ; preds = %_ZN5arrow6Status11DeleteStateEv.exit97, %bb.gn, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36, !noalias !610
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36, !noalias !610
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36, !noalias !610
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36, !noalias !610
  br i1 %i.zm, label %bb.dl, label %.loopexit12.i

.loopexit.split-lp8.i:                            ; preds = %.loopexit.split-lp8.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i, %bb.fc
  %.pn26.pn.i = phi { ptr, i32 } [ %i.wt, %bb.fc ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i ], [ %lpad.loopexit.split-lp731, %.loopexit.split-lp8.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %i.acy = load ptr, ptr %11, align 8, !tbaa !47, !noalias !610 ; 2 uses
  %.not.i.i66.i = icmp eq ptr %i.acy, null
  br i1 %.not.i.i66.i, label %_ZN5arrow6ResultIbED2Ev.exit67.i, label %bb.gv, !prof !48

bb.gv:                                            ; preds = %.loopexit.split-lp8.i
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 1
  %i.ada = load i8, ptr %i.acz, align 1, !tbaa !53, !range !54, !noundef !55
  %i.adb = trunc nuw i8 %i.ada to i1
  br i1 %i.adb, label %_ZN5arrow6ResultIbED2Ev.exit67.i, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(9) %11) #36
  br label %_ZN5arrow6ResultIbED2Ev.exit67.i

_ZN5arrow6ResultIbED2Ev.exit67.i:                 ; preds = %bb.gw, %bb.gv, %.loopexit.split-lp8.i, %bb.ey
  %.pn26.pn.pn.i = phi { ptr, i32 } [ %i.wp, %bb.ey ], [ %.pn26.pn.i, %.loopexit.split-lp8.i ], [ %.pn26.pn.i, %bb.gv ], [ %.pn26.pn.i, %bb.gw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36, !noalias !610
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #36
  br label %bb.gx

bb.gx:                                            ; preds = %_ZN5arrow6ResultIbED2Ev.exit67.i, %bb.ex
  %.pn26.pn.pn.pn.i = phi { ptr, i32 } [ %.pn26.pn.pn.i, %_ZN5arrow6ResultIbED2Ev.exit67.i ], [ %i.wo, %bb.ex ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36, !noalias !610
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i: ; preds = %bb.ew, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i118, %bb.gx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i
  %.pn26.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn26.pn.pn.pn.i, %bb.gx ], [ %i.wj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i ], [ %lpad.loopexit.split-lp725.a, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp725.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i118 ], [ %i.wj, %bb.ew ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36, !noalias !610
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i: ; preds = %bb.ev, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i
  %.pn26.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn26.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i ], [ %i.we, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i ], [ %lpad.loopexit.split-lp723, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.we, %bb.ev ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36, !noalias !610
  %i.adc = load ptr, ptr %5, align 8, !tbaa !47, !noalias !610 ; 2 uses
  %.not.i68.i = icmp eq ptr %i.adc, null
  br i1 %.not.i68.i, label %_ZN5arrow6StatusD2Ev.exit69.i, label %bb.gy, !prof !48

bb.gy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 1
  %i.ade = load i8, ptr %i.add, align 1, !tbaa !53, !range !54, !noundef !55
  %i.adf = trunc nuw i8 %i.ade to i1
  br i1 %i.adf, label %_ZN5arrow6StatusD2Ev.exit69.i, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #36
  br label %_ZN5arrow6StatusD2Ev.exit69.i

_ZN5arrow6StatusD2Ev.exit69.i:                    ; preds = %bb.gz, %bb.gy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36, !noalias !610
  br label %.body55

.critedge.i:                                      ; preds = %bb.fb
  store ptr null, ptr %31, align 8, !tbaa !47, !alias.scope !610
  %i.adg = ptrtoint ptr %i.ws to i64
  store i64 %i.adg, ptr %i.sk, align 8, !tbaa !118, !alias.scope !610
  %.pr.i54 = load ptr, ptr %11, align 8, !tbaa !47, !noalias !610 ; 2 uses
  %.not.i.i70.i = icmp eq ptr %.pr.i54, null
  br i1 %.not.i.i70.i, label %_ZN5arrow6ResultIbED2Ev.exit71.i, label %bb.ha, !prof !56

bb.ha:                                            ; preds = %.critedge.i, %.critedge.thread.i
  %i.adh = phi ptr [ %i.wc, %.critedge.thread.i ], [ %.pr.i54, %.critedge.i ] ; 5 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 1
  %i.adj = load i8, ptr %i.adi, align 1, !tbaa !53, !range !54, !noundef !55
  %i.adk = trunc nuw i8 %i.adj to i1
  br i1 %i.adk, label %_ZN5arrow6ResultIbED2Ev.exit71.i, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adh, i64 48
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !39 ; 8 uses
  %.not.i.i.i.i80 = icmp eq ptr %i.adm, null
  br i1 %.not.i.i.i.i80, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i84, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 8 ; 4 uses
  %i.ado = load atomic i64, ptr %i.adn acquire, align 8 ; 2 uses
  %i.adp = icmp eq i64 %i.ado, 4294967297
  %i.adq = trunc i64 %i.ado to i32                ; 2 uses
  br i1 %i.adp, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  store i32 0, ptr %i.adn, align 8, !tbaa !27
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adm, i64 12
  store i32 0, ptr %i.adr, align 4, !tbaa !28
  %i.ads = load ptr, ptr %i.adm, align 8, !tbaa !30
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 16
  %i.adu = load ptr, ptr %i.adt, align 8
  call void %i.adu(ptr noundef nonnull align 8 dereferenceable(16) %i.adm) #36, !inline_history !566
  %i.adv = load ptr, ptr %i.adm, align 8, !tbaa !30
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 24
  %i.adx = load ptr, ptr %i.adw, align 8
  call void %i.adx(ptr noundef nonnull align 8 dereferenceable(16) %i.adm) #36, !inline_history !566
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i84

bb.he:                                            ; preds = %bb.hc
  %i.ady = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i81 = icmp eq i8 %i.ady, 0
  br i1 %.not.i.i.i.i.i81, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.adz = add nsw i32 %i.adq, -1
  store i32 %i.adz, ptr %i.adn, align 8, !tbaa !15
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i82

bb.hg:                                            ; preds = %bb.he
  %i.aea = atomicrmw volatile add ptr %i.adn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i82

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i82: ; preds = %bb.hg, %bb.hf
  %.0.i.i.i.i.i.i83 = phi i32 [ %i.adq, %bb.hf ], [ %i.aea, %bb.hg ]
  %i.aeb = icmp eq i32 %.0.i.i.i.i.i.i83, 1
  br i1 %i.aeb, label %bb.hh, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i84, !prof !20

bb.hh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i82
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.adm) #36
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i84

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i84: ; preds = %bb.hh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i82, %bb.hd, %bb.hb
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adh, i64 8
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !23 ; 2 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adh, i64 24 ; 2 uses
  %i.aef = icmp eq ptr %i.aed, %i.aee
  br i1 %i.aef, label %_ZN5arrow6Status5StateD2Ev.exit.i86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i85: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i84
  %i.aeg = load i64, ptr %i.aee, align 8, !tbaa !24
  %i.aeh = add i64 %i.aeg, 1
  call void @_ZdlPvm(ptr noundef %i.aed, i64 noundef %i.aeh) #39
  br label %_ZN5arrow6Status5StateD2Ev.exit.i86

_ZN5arrow6Status5StateD2Ev.exit.i86:              ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i85
  call void @_ZdlPvm(ptr noundef nonnull %i.adh, i64 noundef 56) #39
  br label %_ZN5arrow6ResultIbED2Ev.exit71.i

_ZN5arrow6ResultIbED2Ev.exit71.i:                 ; preds = %_ZN5arrow6Status5StateD2Ev.exit.i86, %bb.ha, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36, !noalias !610
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36, !noalias !610
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36, !noalias !610
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36, !noalias !610
  br label %.loopexit12.i

.critedge34.i:                                    ; preds = %bb.dl
  call void @_ZN5arrow6ResultISt10unique_ptrINS_8internal12TemporaryDirESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(8) %5) #36
  br label %.loopexit12.i

.loopexit12.i:                                    ; preds = %_ZN5arrow6ResultIbED2Ev.exit.i, %.critedge34.i, %_ZN5arrow6ResultIbED2Ev.exit71.i
  %i.aei = load ptr, ptr %5, align 8, !tbaa !47, !noalias !610 ; 2 uses
  %.not.i72.i = icmp eq ptr %i.aei, null
  br i1 %.not.i72.i, label %bb.hk, label %bb.hi, !prof !48

bb.hi:                                            ; preds = %.loopexit12.i
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 1
  %i.aek = load i8, ptr %i.aej, align 1, !tbaa !53, !range !54, !noundef !55
  %i.ael = trunc nuw i8 %i.aek to i1
  br i1 %i.ael, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #36
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi, %.loopexit12.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36, !noalias !610
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.aem = load ptr, ptr %31, align 8, !tbaa !47
  %i.aen = icmp eq ptr %i.aem, null
  br i1 %i.aen, label %bb.hl, label %.critedge, !prof !48

.critedge:                                        ; preds = %bb.hk
  call void @_ZN5arrow6ResultISt10unique_ptrINS_8internal12TemporaryDirESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %31) #36
  call void @_ZN5arrow6ResultISt10unique_ptrINS_8internal12TemporaryDirESt14default_deleteIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %31) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #36
  br label %.loopexit185

bb.hl:                                            ; preds = %bb.hk
  %i.aeo = load i64, ptr %i.sk, align 8, !tbaa !118, !noalias !628 ; 2 uses
  %.not = icmp eq i64 %i.aeo, 0
  br i1 %.not, label %bb.dj, label %.loopexit185.loopexit

.critedge31:                                      ; preds = %bb.dj, %_ZSt8_DestroyIZN5arrow8internal12_GLOBAL__N_124GetPlatformTemporaryDirsB5cxx11EvE15TempDirSelectorEvPT_.exit.i.i.i.i.3
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #36
  invoke void @_ZN5arrow6Status8FromArgsIJRA82_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %32, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(82) @.str.24)
          to label %_ZN5arrow6Status7IOErrorIJRA82_KcEEES0_DpOT_.exit unwind label %bb.ho

_ZN5arrow6Status7IOErrorIJRA82_KcEEES0_DpOT_.exit: ; preds = %.critedge31
  call void @_ZN5arrow6ResultISt10unique_ptrINS_8internal12TemporaryDirESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %32) #36
  %i.aep = load ptr, ptr %32, align 8, !tbaa !47  ; 2 uses
  %.not.i59 = icmp eq ptr %i.aep, null
  br i1 %.not.i59, label %_ZN5arrow6StatusD2Ev.exit, label %bb.hm, !prof !48

bb.hm:                                            ; preds = %_ZN5arrow6Status7IOErrorIJRA82_KcEEES0_DpOT_.exit
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 1
  %i.aer = load i8, ptr %i.aeq, align 1, !tbaa !53, !range !54, !noundef !55
  %i.aes = trunc nuw i8 %i.aer to i1
  br i1 %i.aes, label %_ZN5arrow6StatusD2Ev.exit, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %32) #36
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6Status7IOErrorIJRA82_KcEEES0_DpOT_.exit, %bb.hm, %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #36
  br label %.loopexit185

bb.ho:                                            ; preds = %.critedge31
  %i.aet = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #36
  br label %.body55

.loopexit185.loopexit:                            ; preds = %bb.hl
  store ptr null, ptr %0, align 8, !tbaa !47
  store i64 %i.aeo, ptr %i.sl, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #36
  br label %.loopexit185

.loopexit185:                                     ; preds = %.loopexit185.loopexit, %.critedge, %_ZN5arrow6StatusD2Ev.exit
  %i.aeu = load ptr, ptr %30, align 8, !tbaa !119 ; 3 uses
  %i.aev = load ptr, ptr %i.ih, align 8, !tbaa !104 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.aeu, %i.aev
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit185, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.afb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.aeu, %.loopexit185 ] ; 3 uses
  %i.aew = load ptr, ptr %.05.i.i.i, align 8, !tbaa !23 ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.aey = icmp eq ptr %i.aew, %i.aex
  br i1 %i.aey, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aez = load i64, ptr %i.aex, align 8, !tbaa !24
  %i.afa = add i64 %i.aez, 1
  call void @_ZdlPvm(ptr noundef %i.aew, i64 noundef %i.afa) #39
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.afb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i60 = icmp eq ptr %i.afb, %i.aev
  br i1 %.not.i.i.i60, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i61 = load ptr, ptr %30, align 8, !tbaa !119
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %.loopexit185
  %i.afc = phi ptr [ %.pr.i61, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.aeu, %.loopexit185 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.afc, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.hp

bb.hp:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.afd = load ptr, ptr %i.ii, align 8, !tbaa !105
  %i.afe = ptrtoint ptr %i.afd to i64
  %i.aff = ptrtoint ptr %i.afc to i64
  %i.afg = sub i64 %i.afe, %i.aff
  call void @_ZdlPvm(ptr noundef nonnull %i.afc, i64 noundef %i.afg) #39
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.hp
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #36
  br label %bb.hq

.body55:                                          ; preds = %_ZN5arrow6StatusD2Ev.exit69.i, %bb.ho
  %.pn25 = phi { ptr, i32 } [ %i.aet, %bb.ho ], [ %.pn26.pn.pn.pn.pn.pn.i, %_ZN5arrow6StatusD2Ev.exit69.i ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %30) #36
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.i, %.body55
  %.pn25.pn = phi { ptr, i32 } [ %.pn25, %.body55 ], [ %.pn73.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #36
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %28) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #36
  br label %bb.ht

bb.hq:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.c
  %i.afh = load ptr, ptr %28, align 8, !tbaa !47  ; 2 uses
  %i.afi = icmp eq ptr %i.afh, null
  br i1 %i.afi, label %bb.hr, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i, !prof !48

bb.hr:                                            ; preds = %bb.hq
  %i.afj = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !23 ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %28, i64 24 ; 2 uses
  %i.afm = icmp eq ptr %i.afk, %i.afl
  br i1 %i.afm, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i: ; preds = %bb.hr
  %i.afn = load i64, ptr %i.afl, align 8, !tbaa !24
  %i.afo = add i64 %i.afn, 1
  call void @_ZdlPvm(ptr noundef %i.afk, i64 noundef %i.afo) #39
  %.pr.pre.i63 = load ptr, ptr %28, align 8, !tbaa !47 ; 2 uses
  %.not.i.i64 = icmp eq ptr %.pr.pre.i63, null
  br i1 %.not.i.i64, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i, !prof !56

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i, %bb.hq
  %i.afp = phi ptr [ %.pr.pre.i63, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i ], [ %i.afh, %bb.hq ]
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 1
  %i.afr = load i8, ptr %i.afq, align 1, !tbaa !53, !range !54, !noundef !55
  %i.afs = trunc nuw i8 %i.afr to i1
  br i1 %i.afs, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.hs

bb.hs:                                            ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(40) %28) #36
  br label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.hr, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i, %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #36
  %i.aft = load ptr, ptr %26, align 8, !tbaa !23  ; 2 uses
  %i.afu = icmp eq ptr %i.aft, %i.b
  br i1 %i.afu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.afv = load i64, ptr %i.b, align 8, !tbaa !24
  %i.afw = add i64 %i.afv, 1
  call void @_ZdlPvm(ptr noundef %i.aft, i64 noundef %i.afw) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #36
  ret void

bb.ht:                                            ; preds = %.body, %bb.d
  %.pn25.pn.pn.pn = phi { ptr, i32 } [ %.pn25.pn, %.body ], [ %i.f, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #36
  %i.afx = load ptr, ptr %26, align 8, !tbaa !23  ; 2 uses
  %i.afy = icmp eq ptr %i.afx, %i.b
  br i1 %i.afy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.ht
  %i.afz = load i64, ptr %i.b, align 8, !tbaa !24
  %i.aga = add i64 %i.afz, 1
  call void @_ZdlPvm(ptr noundef %i.afx, i64 noundef %i.aga) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.ht, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #36
  resume { ptr, i32 } %.pn25.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN5arrow8internal12TemporaryDir4MakeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clB5cxx11Ev"(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #22 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::allocator", align 1    ; 3 uses
  %3 = alloca %"class.std::linear_congruential_engine", align 8 ; 12 uses
  %4 = alloca %"class.std::uniform_int_distribution", align 4 ; 21 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 42 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !633)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36, !noalias !633
  %i.a = tail call noundef i64 @_ZN5arrow8internal13GetRandomSeedEv(), !noalias !633
  %i.b = urem i64 %i.a, 2147483647
  %storemerge.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1)
  store i64 %storemerge.i.i.i, ptr %3, align 8, !tbaa !121, !noalias !633
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36, !noalias !633
  store i32 0, ptr %4, align 4, !tbaa !123, !noalias !633
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 35, ptr %i.c, align 4, !tbaa !124, !noalias !633
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 48 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !19, !alias.scope !633
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 18 uses
  store i64 0, ptr %i.e, align 8, !tbaa !25, !alias.scope !633
  store i8 0, ptr %i.d, align 8, !tbaa !24, !alias.scope !633
  %i.f = invoke noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit.i unwind label %bb.be

_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit.i: ; preds = %bb.a
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @.str.67, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !24, !noalias !633
  %i.j = load i64, ptr %i.e, align 8, !tbaa !25, !alias.scope !633 ; 5 uses
  %i.k = add i64 %i.j, 1                          ; 9 uses
  %i.l = load ptr, ptr %5, align 8, !tbaa !23, !alias.scope !633 ; 3 uses
  %i.m = icmp eq ptr %i.l, %i.d
  br i1 %i.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_.exit.i
  %i.n = icmp samesign ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.n)
  %i.o = icmp samesign ugt i64 %i.k, 15
end_hunk_2
