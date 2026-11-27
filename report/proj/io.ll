Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/io?download=true
inline.NumInlined: 17809
inline.NumDeleted: 4470
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 47
loop-unroll.NumUnrolledNotLatch: 4
begin_hunk_0_@_ZNK5osgeo4proj2io7WKTNode8toStringB5cxx11Ev:bb.a
  %i.bi = load i64, ptr %i.q, align 8, !tbaa !164, !alias.scope !889 ; 4 uses
  %i.bj = add i64 %i.bi, 1                        ; 3 uses
  %i.bk = load ptr, ptr %0, align 8, !tbaa !163, !alias.scope !889 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.p
  br i1 %i.bl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i
  %i.bm = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.bm)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i
  %i.bn = load i64, ptr %i.p, align 8, !tbaa !166, !alias.scope !889
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.bo = phi i64 [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.bp = icmp ugt i64 %i.bj, %i.bo
  br i1 %i.bp, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bi, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc42.i unwind label %bb.m

.noexc42.i:                                       ; preds = %bb.i
  %.pre.i.i.i = load ptr, ptr %0, align 8, !tbaa !163, !alias.scope !889
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i: ; preds = %.noexc42.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.bq = phi ptr [ %.pre.i.i.i, %.noexc42.i ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bi
  store i8 34, ptr %i.br, align 1, !tbaa !166
  store i64 %i.bj, ptr %i.q, align 8, !tbaa !164, !alias.scope !889
  %i.bs = load ptr, ptr %0, align 8, !tbaa !163, !alias.scope !889
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bj
  store i8 0, ptr %i.bt, align 1, !tbaa !166
  br label %_ZN5osgeo4proj2ioL20escapeIfQuotedStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.j:                                             ; preds = %.noexc10.i.i.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i

bb.k:                                             ; preds = %bb.f
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i, %bb.h
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bx = load ptr, ptr %2, align 8, !tbaa !163, !noalias !889 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i: ; preds = %bb.l
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !166, !noalias !889
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.bv, %bb.k ], [ %i.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i ], [ %i.bw, %bb.l ] ; 2 uses
  %i.cc = load ptr, ptr %5, align 8, !tbaa !163, !noalias !889 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.ah
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i
  %i.ce = load i64, ptr %i.ah, align 8, !tbaa !166, !noalias !889
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41, !noalias !889
  %i.cg = load ptr, ptr %4, align 8, !tbaa !163, !noalias !889 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.ae
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i
  %i.ci = load i64, ptr %i.ae, align 8, !tbaa !166, !noalias !889
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41, !noalias !889
  %i.ck = load ptr, ptr %3, align 8, !tbaa !163, !noalias !889 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.t
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i
  %i.cm = load i64, ptr %i.t, align 8, !tbaa !166, !noalias !889
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i, %bb.j
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.bu, %bb.j ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41, !noalias !889
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41, !noalias !889
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i
  %.pn18.i = phi { ptr, i32 } [ %i.co, %bb.m ], [ %.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i ] ; 2 uses
  %i.cp = load ptr, ptr %0, align 8, !tbaa !163, !alias.scope !889 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.p
  br i1 %i.cq, label %common.resume, label %common.resume.sink.split

bb.o:                                             ; preds = %bb.c, %bb.b
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cr, ptr %0, align 8, !tbaa !160, !alias.scope !889
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41, !noalias !889
  store i64 %i.e, ptr %i.a, align 8, !tbaa !165, !noalias !889
  %i.cs = icmp ugt i64 %i.e, 15
  br i1 %i.cs, label %.noexc.i59.i, label %._crit_edge.i.i58.i

.noexc.i59.i:                                     ; preds = %bb.o
  %i.ct = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ct, ptr %0, align 8, !tbaa !163, !alias.scope !889
  %i.cu = load i64, ptr %i.a, align 8, !tbaa !165, !noalias !889
  store i64 %i.cu, ptr %i.cr, align 8, !tbaa !166, !alias.scope !889
  br label %._crit_edge.i.i58.i

._crit_edge.i.i58.i:                              ; preds = %.noexc.i59.i, %bb.o, %.thread.i
  %i.cv = phi ptr [ %i.i, %.noexc.i59.i ], [ %i.i, %bb.o ], [ %i.h, %.thread.i ] ; 2 uses
  %i.cw = phi ptr [ %i.ct, %.noexc.i59.i ], [ %i.cr, %bb.o ], [ %i.g, %.thread.i ] ; 2 uses
  switch i64 %i.e, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.p:                                             ; preds = %._crit_edge.i.i58.i
  %i.cx = load i8, ptr %i.cv, align 1, !tbaa !166
  store i8 %i.cx, ptr %i.cw, align 1, !tbaa !166
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.q:                                             ; preds = %._crit_edge.i.i58.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cw, ptr align 1 %i.cv, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.q, %bb.p, %._crit_edge.i.i58.i
  %i.cy = load i64, ptr %i.a, align 8, !tbaa !165, !noalias !889 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !164, !alias.scope !889
  %i.da = load ptr, ptr %0, align 8, !tbaa !163, !alias.scope !889
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cy
  store i8 0, ptr %i.db, align 1, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41, !noalias !889
  br label %_ZN5osgeo4proj2ioL20escapeIfQuotedStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

common.resume.sink.split:                         ; preds = %.loopexit.split-lp, %bb.n
  %.sink101.in = phi ptr [ %i.p, %bb.n ], [ %i.fn, %.loopexit.split-lp ]
  %.sink = phi ptr [ %i.cp, %bb.n ], [ %i.fm, %.loopexit.split-lp ]
  %common.resume.op.ph = phi { ptr, i32 } [ %.pn18.i, %bb.n ], [ %.pn.pn.pn.pn, %.loopexit.split-lp ]
  %.sink101 = load i64, ptr %.sink101.in, align 8, !tbaa !166
  %i.dc = add i64 %.sink101, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.dc) #44
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %.loopexit.split-lp, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %.pn18.i, %bb.n ], [ %.pn.pn.pn.pn, %.loopexit.split-lp ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_ZN5osgeo4proj2ioL20escapeIfQuotedStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.dd = load ptr, ptr %1, align 8, !tbaa !247   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !249
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !249
  %i.di = icmp eq ptr %i.df, %i.dh
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit20, label %bb.r

bb.r:                                             ; preds = %_ZN5osgeo4proj2ioL20escapeIfQuotedStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !164
  %i.dl = icmp eq i64 %i.dk, 4611686018427387903
  br i1 %i.dl, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.r
  %i.dm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.29, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.dn = load ptr, ptr %1, align 8, !tbaa !247   ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !249 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !249 ; 3 uses
  %.not42 = icmp eq ptr %i.dp, %i.dr
  br i1 %.not42, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.dv = load ptr, ptr %i.dp, align 8, !tbaa !245
  invoke void @_ZNK5osgeo4proj2io7WKTNode8toStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.dv)
          to label %bb.t unwind label %.loopexit.split-lp49.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  %i.dw = load i64, ptr %i.dt, align 8, !tbaa !164 ; 2 uses
  %i.dx = load i64, ptr %i.dj, align 8, !tbaa !164
  %i.dy = sub i64 4611686018427387903, %i.dx
  %i.dz = icmp ult i64 %i.dy, %i.dw
  br i1 %i.dz, label %.loopexit52, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel: ; preds = %bb.t
  %i.ea = load ptr, ptr %6, align 8, !tbaa !163
  %i.eb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ea, i64 noundef %i.dw)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel unwind label %.loopexit.split-lp37.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel
  %i.ec = load ptr, ptr %6, align 8, !tbaa !163   ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.du
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  %i.ee = load i64, ptr %i.du, align 8, !tbaa !166
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %.not.peel = icmp eq ptr %i.eg, %i.dr
  br i1 %.not.peel, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.eh = load i64, ptr %i.dj, align 8, !tbaa !164
  %i.ei = icmp eq i64 %i.eh, 4611686018427387903
  br i1 %i.ei, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i17

.invoke:                                          ; preds = %._crit_edge, %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.689) #42
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i17: ; preds = %._crit_edge
  %i.ej = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.30, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.032.043 = phi ptr [ %i.fh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.eg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ] ; 2 uses
  %i.ek = load i64, ptr %i.dj, align 8, !tbaa !164 ; 4 uses
  %i.el = add i64 %i.ek, 1                        ; 3 uses
  %i.em = load ptr, ptr %0, align 8, !tbaa !163   ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.ds
  br i1 %i.en, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i22: ; preds = %.peel.next
  %i.eo = icmp ult i64 %i.ek, 16
  call void @llvm.assume(i1 %i.eo)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21: ; preds = %.peel.next
  %i.ep = load i64, ptr %i.ds, align 8, !tbaa !166
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i22
  %i.eq = phi i64 [ %i.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i22 ]
  %i.er = icmp ugt i64 %i.el, %i.eq
  br i1 %i.er, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ek, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc23:                                         ; preds = %bb.u
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !163
  br label %bb.v

bb.v:                                             ; preds = %.noexc23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.es = phi ptr [ %.pre.i.i, %.noexc23 ], [ %i.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ek
  store i8 44, ptr %i.et, align 1, !tbaa !166
  store i64 %i.el, ptr %i.dj, align 8, !tbaa !164
  %i.eu = load ptr, ptr %0, align 8, !tbaa !163
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.el
  store i8 0, ptr %i.ev, align 1, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.ew = load ptr, ptr %.sroa.032.043, align 8, !tbaa !245
  invoke void @_ZNK5osgeo4proj2io7WKTNode8toStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.ew)
          to label %bb.w unwind label %.loopexit.split-lp49.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.ex = load i64, ptr %i.dt, align 8, !tbaa !164 ; 2 uses
  %i.ey = load i64, ptr %i.dj, align 8, !tbaa !164
  %i.ez = sub i64 4611686018427387903, %i.ey
  %i.fa = icmp ult i64 %i.ez, %i.ex
  br i1 %i.fa, label %.loopexit52, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

.loopexit52:                                      ; preds = %bb.w, %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.689) #42
          to label %.noexc24 unwind label %.loopexit.split-lp37.loopexit.split-lp.loopexit.split-lp

.noexc24:                                         ; preds = %.loopexit52
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.w
  %i.fb = load ptr, ptr %6, align 8, !tbaa !163
  %i.fc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.fb, i64 noundef %i.ex)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp37.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.fd = load ptr, ptr %6, align 8, !tbaa !163   ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.du
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ff = load i64, ptr %i.du, align 8, !tbaa !166
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.032.043, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.fh, %i.dr
  br i1 %.not, label %._crit_edge, label %.peel.next, !llvm.loop !888

.loopexit.split-lp49.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.v, %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

.loopexit.split-lp37.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel, %.loopexit52
  %lpad.loopexit.split-lp106 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fi = load ptr, ptr %6, align 8, !tbaa !163   ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.du
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %.loopexit.split-lp37.loopexit.split-lp.loopexit.split-lp
  %i.fk = load i64, ptr %i.du, align 8, !tbaa !166
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fl) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %.loopexit.split-lp37.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp49.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp49.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp106, %.loopexit.split-lp37.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %lpad.loopexit.split-lp102 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i17, %_ZN5osgeo4proj2ioL20escapeIfQuotedStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %lpad.loopexit.split-lp102, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.fm = load ptr, ptr %0, align 8, !tbaa !163   ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %common.resume, label %common.resume.sink.split
}

; Function Attrs: mustprogress uwtable
define void @_ZN5osgeo4proj2io9WKTParserC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  %i.a = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #43, !noalias !894 ; 13 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.a, i8 0, i64 128, i1 false), !noalias !894
  store i8 1, ptr %i.a, align 16, !tbaa !270, !noalias !894
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 1, ptr %i.b, align 1, !tbaa !271, !noalias !894
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.d, align 16, !tbaa !272, !noalias !894
  store ptr %i.c, ptr %i.c, align 8, !tbaa !273, !noalias !894
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.e, ptr %i.f, align 8, !tbaa !272, !noalias !894
  store ptr %i.e, ptr %i.e, align 16, !tbaa !273, !noalias !894
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.g, i8 0, i64 32, i1 false), !noalias !894
  store ptr %i.i, ptr %i.h, align 16, !tbaa !160, !noalias !894
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 113
  store i8 0, ptr %i.j, align 1, !tbaa !274, !noalias !894
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, i8 0, i64 56, i1 false), !noalias !894
  store ptr %i.a, ptr %0, align 8, !tbaa !276, !alias.scope !894
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5osgeo4proj2io9WKTParserD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !276    ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5osgeo4proj2io9WKTParser7PrivateESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN5osgeo4proj2io9WKTParser7PrivateEEclEPS4_.exit.i

_ZNKSt14default_deleteIN5osgeo4proj2io9WKTParser7PrivateEEclEPS4_.exit.i: ; preds = %bb.a
  tail call void @_ZN5osgeo4proj2io9WKTParser7PrivateD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %i.a) #41
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 176) #44
  br label %_ZNSt10unique_ptrIN5osgeo4proj2io9WKTParser7PrivateESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN5osgeo4proj2io9WKTParser7PrivateESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5osgeo4proj2io9WKTParser7PrivateEEclEPS4_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj2io9WKTParser9setStrictEb(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, i1 noundef zeroext %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = load ptr, ptr %0, align 8, !tbaa !276
  store i8 %i.a, ptr %i.b, align 8, !tbaa !270
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj2io9WKTParser36setUnsetIdentifiersIfIncompatibleDefEb(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(8) %0, i1 noundef zeroext %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = load ptr, ptr %0, align 8, !tbaa !276
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
end_hunk_0
begin_hunk_1_@_ZN5osgeo4proj2io19PROJStringFormatter8addParamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %bb.k

bb.g:                                             ; preds = %.noexc.i.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.h:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = load ptr, ptr %3, align 8, !tbaa !163   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.k
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.h
  %i.ah = load i64, ptr %i.k, align 8, !tbaa !166
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.ae, %bb.h ]
  %i.aj = load ptr, ptr %4, align 8, !tbaa !163   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !166
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %bb.l

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  call fastcc void @_ZN5osgeo4proj2ioL14formatToStringB5cxx11Edd(ptr dead_on_unwind noalias writable align 8 %5, double noundef %2)
  invoke void @_ZN5osgeo4proj2io19PROJStringFormatter8addParamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ao = load ptr, ptr %5, align 8, !tbaa !163   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.i
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !166
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  br label %bb.k

bb.j:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = load ptr, ptr %5, align 8, !tbaa !163   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.j
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !166
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  br label %bb.l

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  ret void

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5osgeo4proj2ioL14formatToStringB5cxx11Edd(ptr dead_on_unwind noalias nonnull writable align 8 %0, double noundef %1) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = fmul double %1, 1.000000e+01
  %i.c = tail call double @llvm.round.f64(double %i.b) ; 2 uses
  %i.d = fneg double %i.c
  %i.e = tail call double @llvm.fmuladd.f64(double %1, double 1.000000e+01, double %i.d)
  %i.f = tail call noundef double @llvm.fabs.f64(double %i.e)
  %i.g = fcmp olt double %i.f, 1.000000e-08
  %i.h = fdiv double %i.c, 1.000000e+01
  %.0 = select i1 %i.g, double %i.h, double %1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  call void @_ZN5osgeo4proj8internal8toStringB5cxx11Edi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, double noundef %.0, i32 noundef 15)
  %.val = load ptr, ptr %2, align 8, !tbaa !163   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val6 = load i64, ptr %i.i, align 8, !tbaa !164 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2011)
  call void @llvm.experimental.noalias.scope.decl(metadata !2012)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !160, !alias.scope !2013
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41, !noalias !2013
  store i64 %.val6, ptr %i.a, align 8, !tbaa !165, !noalias !2013
  %i.k = icmp ugt i64 %.val6, 15
  br i1 %i.k, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.l = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.l, ptr %0, align 8, !tbaa !163, !alias.scope !2013
  %i.m = load i64, ptr %i.a, align 8, !tbaa !165, !noalias !2013
  store i64 %i.m, ptr %i.j, align 8, !tbaa !166, !alias.scope !2013
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %bb.a
  %i.n = phi ptr [ %i.l, %.noexc ], [ %i.j, %bb.a ] ; 2 uses
  switch i64 %.val6, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.o = load i8, ptr %.val, align 1, !tbaa !166, !noalias !2013
  store i8 %i.o, ptr %i.n, align 1, !tbaa !166
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr readonly align 1 %.val, i64 %.val6, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !165, !noalias !2013 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !164, !alias.scope !2013
  %i.r = load ptr, ptr %0, align 8, !tbaa !163, !alias.scope !2013
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41, !noalias !2013
  %i.t = load ptr, ptr %2, align 8, !tbaa !163    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.w = load i64, ptr %i.u, align 8, !tbaa !166
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  ret void

bb.e:                                             ; preds = %.noexc.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %2, align 8, !tbaa !163    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.e
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !166
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define void @_ZN5osgeo4proj2io19PROJStringFormatter8addParamEPKcRKSt6vectorIdSaIdEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !160
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i64 0, ptr %i.b, align 8, !tbaa !164
  store i8 0, ptr %i.a, align 8, !tbaa !166
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !237
  %i.e = load ptr, ptr %2, align 8, !tbaa !238    ; 2 uses
  %.not34 = icmp eq ptr %i.d, %i.e
  br i1 %.not34, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %.pre = load double, ptr %i.e, align 8, !tbaa !242
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  invoke fastcc void @_ZN5osgeo4proj2ioL14formatToStringB5cxx11Edd(ptr dead_on_unwind noalias writable align 8 %4, double noundef %.pre)
          to label %bb.c unwind label %.loopexit.split-lp39.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !164  ; 2 uses
  %i.i = load i64, ptr %i.b, align 8, !tbaa !164
  %i.j = sub i64 4611686018427387903, %i.i
  %i.k = icmp ult i64 %i.j, %i.h
  br i1 %i.k, label %.loopexit42, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel: ; preds = %bb.c
  %i.l = load ptr, ptr %4, align 8, !tbaa !163
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.l, i64 noundef %i.h)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel unwind label %.loopexit.split-lp28.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel
  %i.n = load ptr, ptr %4, align 8, !tbaa !163    ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.g
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  %i.p = load i64, ptr %i.g, align 8, !tbaa !166
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !237
  %i.s = load ptr, ptr %2, align 8, !tbaa !238
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = icmp ugt i64 %i.v, 8
  br i1 %i.w, label %.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %bb.a
  invoke void @_ZN5osgeo4proj2io19PROJStringFormatter8addParamEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.01233 = phi i64 [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ] ; 2 uses
  %i.x = load i64, ptr %i.b, align 8, !tbaa !164  ; 4 uses
  %i.y = add i64 %i.x, 1                          ; 3 uses
  %i.z = load ptr, ptr %3, align 8, !tbaa !163    ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %.peel.next
  %i.ab = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.ab)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.peel.next
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !166
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ad = phi i64 [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.ae = icmp ugt i64 %i.y, %i.ad
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.x, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  %.pre.i.i = load ptr, ptr %3, align 8, !tbaa !163
  br label %bb.e

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %._crit_edge
  %lpad.loopexit.split-lp66 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.e:                                             ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.af = phi ptr [ %.pre.i.i, %.noexc ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.x
  store i8 44, ptr %i.ag, align 1, !tbaa !166
  store i64 %i.y, ptr %i.b, align 8, !tbaa !164
  %i.ah = load ptr, ptr %3, align 8, !tbaa !163
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.y
  store i8 0, ptr %i.ai, align 1, !tbaa !166
  %.pre47 = load ptr, ptr %2, align 8, !tbaa !238
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.pre47, i64 %.01233
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !242
  invoke fastcc void @_ZN5osgeo4proj2ioL14formatToStringB5cxx11Edd(ptr dead_on_unwind noalias writable align 8 %4, double noundef %i.ak)
          to label %bb.f unwind label %.loopexit.split-lp39.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.al = load i64, ptr %i.f, align 8, !tbaa !164 ; 2 uses
  %i.am = load i64, ptr %i.b, align 8, !tbaa !164
  %i.an = sub i64 4611686018427387903, %i.am
  %i.ao = icmp ult i64 %i.an, %i.al
  br i1 %i.ao, label %.loopexit42, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

.loopexit42:                                      ; preds = %bb.f, %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.689) #42
          to label %.noexc16 unwind label %.loopexit.split-lp28.loopexit.split-lp.loopexit.split-lp

.noexc16:                                         ; preds = %.loopexit42
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.f
  %i.ap = load ptr, ptr %4, align 8, !tbaa !163
  %i.aq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.ap, i64 noundef %i.al)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp28.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ar = load ptr, ptr %4, align 8, !tbaa !163   ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.g
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.at = load i64, ptr %i.g, align 8, !tbaa !166
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  %i.av = add nuw i64 %.01233, 1                  ; 2 uses
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !237
  %i.ax = load ptr, ptr %2, align 8, !tbaa !238
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 3
  %i.bc = icmp ult i64 %i.av, %i.bb
  br i1 %i.bc, label %.peel.next, label %._crit_edge, !llvm.loop !2014

.loopexit.split-lp39.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

.loopexit.split-lp28.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel, %.loopexit42
  %lpad.loopexit.split-lp70 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %4, align 8, !tbaa !163   ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.g
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %.loopexit.split-lp28.loopexit.split-lp.loopexit.split-lp
  %i.bf = load i64, ptr %i.g, align 8, !tbaa !166
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %.loopexit.split-lp28.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp39.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp39.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp70, %.loopexit.split-lp28.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %.loopexit.split-lp

bb.g:                                             ; preds = %._crit_edge
  %i.bh = load ptr, ptr %3, align 8, !tbaa !163   ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.a
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.g
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !166
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %lpad.loopexit.split-lp66, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.bl = load ptr, ptr %3, align 8, !tbaa !163   ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.a
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %.loopexit.split-lp
  %i.bn = load i64, ptr %i.a, align 8, !tbaa !166
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5osgeo4proj2io19PROJStringFormatter8addParamEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !160
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.910) #42
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #41 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  store i64 %i.d, ptr %i.a, align 8, !tbaa !165
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !163
  %i.g = load i64, ptr %i.a, align 8, !tbaa !165
  store i64 %i.g, ptr %i.b, align 8, !tbaa !166
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !166
  store i8 %i.i, ptr %i.h, align 1, !tbaa !166
  br label %bb.e
end_hunk_1
begin_hunk_2_@_ZN5osgeo4proj2io16PROJStringParser7Private31buildBoundOrCompoundCRSIfNeededEiN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEE:bb.a
  br label %bb.bl

bb.t:                                             ; preds = %bb.f, %_ZN5osgeo4proj2io16PROJStringParser7Private13getParamValueIPKcEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_4StepET_.exit141
  %i.bt = getelementptr inbounds nuw i8, ptr %.6.i138, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !164
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.bl, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  invoke void @_ZN5osgeo4proj8internal5splitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.702") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %.6.i138, i8 noundef signext 44)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bw = load ptr, ptr %11, align 8, !tbaa !537  ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !537 ; 2 uses
  %.not457488 = icmp eq ptr %i.bw, %i.by
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  br i1 %.not457488, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.v
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !237
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.v
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  br label %bb.x

._crit_edge:                                      ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit, %.._crit_edge_crit_edge
  %i.ca = phi ptr [ %.pre, %.._crit_edge_crit_edge ], [ %i.de, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ]
  %i.cb = load ptr, ptr %10, align 8, !tbaa !238  ; 8 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = icmp eq i64 %i.ce, 56
  br i1 %i.cf, label %bb.aj, label %.loopexit

bb.w:                                             ; preds = %bb.u
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.x:                                             ; preds = %.lr.ph, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  %.sroa.0451.0489 = phi ptr [ %i.bw, %.lr.ph ], [ %i.df, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit ] ; 2 uses
  %i.ch = invoke noundef double @_ZN5osgeo4proj8internal13c_locale_stodERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0451.0489)
          to label %bb.y unwind label %.loopexit.split-lp471.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.ci = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !237 ; 4 uses
  %i.cj = load ptr, ptr %i.bz, align 8, !tbaa !239
  %.not.i.i = icmp eq ptr %i.ci, %i.cj
  br i1 %.not.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store double %i.ch, ptr %i.ci, align 8, !tbaa !242
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  store ptr %i.ck, ptr %.phi.trans.insert, align 8, !tbaa !237
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.aa:                                            ; preds = %bb.y
  %i.cl = load ptr, ptr %10, align 8, !tbaa !238  ; 4 uses
  %i.cm = ptrtoint ptr %i.ci to i64
  %i.cn = ptrtoint ptr %i.cl to i64               ; 2 uses
  %i.co = sub i64 %i.cm, %i.cn                    ; 5 uses
  %i.cp = icmp eq i64 %i.co, 9223372036854775800
  br i1 %i.cp, label %bb.ab, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.692) #42
          to label %.noexc unwind label %.loopexit.split-lp471.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aa
  %i.cq = ashr exact i64 %i.co, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cq, i64 1)
  %i.cr = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cq ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.cq
  %i.ct = call i64 @llvm.umin.i64(i64 %i.cr, i64 1152921504606846975)
  %i.cu = select i1 %i.cs, i64 1152921504606846975, i64 %i.ct ; 3 uses
  %.not.i.i.i.i146 = icmp ne i64 %i.cu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i146)
  %i.cv = shl nuw nsw i64 %i.cu, 3
  %i.cw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #43
          to label %.noexc147 unwind label %.loopexit.split-lp471.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc147:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 %i.co ; 2 uses
  store double %i.ch, ptr %i.cx, align 8, !tbaa !242
  %i.cy = icmp sgt i64 %i.co, 0
  br i1 %i.cy, label %bb.ac, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.ac:                                            ; preds = %.noexc147
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cw, ptr align 8 %i.cl, i64 %i.co, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ac, %.noexc147
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  %i.da = load ptr, ptr %i.bz, align 8, !tbaa !239
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.dc) #44
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.ad, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  store ptr %i.cw, ptr %10, align 8, !tbaa !238
  store ptr %i.cz, ptr %.phi.trans.insert, align 8, !tbaa !237
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.dd, ptr %i.bz, align 8, !tbaa !239
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, %bb.z
  %i.de = phi ptr [ %i.cz, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %i.ck, %bb.z ]
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0451.0489, i64 32 ; 2 uses
  %.not457 = icmp eq ptr %i.df, %i.by
  br i1 %.not457, label %._crit_edge, label %bb.x

.loopexit.split-lp471.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i, %bb.x, %bb.ab
  %lpad.loopexit.split-lp741 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt16invalid_argument     ; 3 uses
  %i.dg = extractvalue { ptr, i32 } %lpad.loopexit.split-lp741, 1
  %i.dh = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt16invalid_argument) #41
  %i.di = icmp eq i32 %i.dg, %i.dh
  br i1 %i.di, label %bb.ae, label %.loopexit.split-lp

bb.ae:                                            ; preds = %.loopexit.split-lp471.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.dj = extractvalue { ptr, i32 } %lpad.loopexit.split-lp741, 0
  %i.dk = call ptr @__cxa_begin_catch(ptr %i.dj) #41 ; 0 uses
  %i.dl = call ptr @__cxa_allocate_exception(i64 40) #41 ; 4 uses
  invoke void @_ZN5osgeo4proj4util9ExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.dl, ptr noundef nonnull @.str.534)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj2io16ParsingExceptionE, i64 16), ptr %i.dl, align 8, !tbaa !156
  invoke void @__cxa_throw(ptr nonnull %i.dl, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
          to label %bb.md unwind label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dl) #41
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn82 = phi { ptr, i32 } [ %i.dn, %bb.ah ], [ %i.dm, %bb.ag ]
  invoke void @__cxa_end_catch()
          to label %.loopexit.split-lp unwind label %bb.mc

bb.aj:                                            ; preds = %._crit_edge
  %i.do = load ptr, ptr %1, align 8, !tbaa !278   ; 2 uses
  %.not458 = icmp eq ptr %i.do, null
  br i1 %.not458, label %.loopexit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.du = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.dv = invoke noundef zeroext i1 @_ZNK5osgeo4proj2io15DatabaseContext29toWGS84AutocorrectWrongValuesERdS3_S3_S3_S3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull align 8 dereferenceable(8) %i.dp, ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef nonnull align 8 dereferenceable(8) %i.dr, ptr noundef nonnull align 8 dereferenceable(8) %i.ds, ptr noundef nonnull align 8 dereferenceable(8) %i.dt, ptr noundef nonnull align 8 dereferenceable(8) %i.du)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %bb.ak
  br i1 %i.dv, label %bb.am, label %.loopexit

bb.am:                                            ; preds = %bb.al
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !582 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !582 ; 2 uses
  %.not459490 = icmp eq ptr %i.dx, %i.dz
  br i1 %.not459490, label %.loopexit, label %.lr.ph493

.lr.ph493:                                        ; preds = %bb.am, %.critedge
  %.sroa.0446.0491 = phi ptr [ %i.fv, %.critedge ], [ %i.dx, %bb.am ] ; 5 uses
  %i.ea = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0446.0491, ptr noundef nonnull @.str.497) #41
  br i1 %i.ea, label %bb.an, label %.critedge

bb.an:                                            ; preds = %.lr.ph493
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0446.0491, i64 32 ; 7 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0446.0491, i64 40 ; 5 uses
  store i64 0, ptr %i.ec, align 8, !tbaa !164
  %i.ed = load ptr, ptr %i.eb, align 8, !tbaa !163
  store i8 0, ptr %i.ed, align 1, !tbaa !166
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0446.0491, i64 48 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  %.pre525 = load ptr, ptr %10, align 8, !tbaa !238
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.eh = load double, ptr %.pre525, align 8, !tbaa !242
  invoke void @_ZN5osgeo4proj8internal8toStringB5cxx11Edi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, double noundef %i.eh, i32 noundef 15)
          to label %bb.ao unwind label %.loopexit.split-lp518.loopexit.split-lp.loopexit.split-lp

bb.ao:                                            ; preds = %bb.an
  %i.ei = load i64, ptr %i.ef, align 8, !tbaa !164 ; 2 uses
  %i.ej = load i64, ptr %i.ec, align 8, !tbaa !164
  %i.ek = sub i64 4611686018427387903, %i.ej
  %i.el = icmp ult i64 %i.ek, %i.ei
  br i1 %i.el, label %.loopexit521, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel: ; preds = %bb.ao
  %i.em = load ptr, ptr %12, align 8, !tbaa !163
  %i.en = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.eb, ptr noundef %i.em, i64 noundef %i.ei)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel unwind label %.loopexit.split-lp465.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel
  %i.eo = load ptr, ptr %12, align 8, !tbaa !163  ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.eg
  br i1 %i.ep, label %.peel.next, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  %i.eq = load i64, ptr %i.eg, align 8, !tbaa !166
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #44
  br label %.peel.next

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.peel.next
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.es = load i64, ptr %i.ec, align 8, !tbaa !164 ; 4 uses
  %i.et = add i64 %i.es, 1                        ; 3 uses
  %i.eu = load ptr, ptr %i.eb, align 8, !tbaa !163 ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.ee
  br i1 %i.ev, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.ap
  %i.ew = icmp ult i64 %i.es, 16
  call void @llvm.assume(i1 %i.ew)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ap
  %i.ex = load i64, ptr %i.ee, align 8, !tbaa !166
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ey = phi i64 [ %i.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.ez = icmp ugt i64 %i.et, %i.ey
  br i1 %i.ez, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.eb, i64 noundef %i.es, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc149 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc149:                                        ; preds = %bb.aq
  %.pre.i.i = load ptr, ptr %i.eb, align 8, !tbaa !163
  br label %bb.ar

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aq, %bb.ak
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ar:                                            ; preds = %.noexc149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.fa = phi ptr [ %.pre.i.i, %.noexc149 ], [ %i.eu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.es
  store i8 44, ptr %i.fb, align 1, !tbaa !166
  store i64 %i.et, ptr %i.ec, align 8, !tbaa !164
  %i.fc = load ptr, ptr %i.eb, align 8, !tbaa !163
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.et
  store i8 0, ptr %i.fd, align 1, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.fe = load ptr, ptr %10, align 8, !tbaa !238
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !242
  invoke void @_ZN5osgeo4proj8internal8toStringB5cxx11Edi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, double noundef %i.fg, i32 noundef 15)
          to label %bb.as unwind label %.loopexit.split-lp518.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %bb.ar
  %i.fh = load i64, ptr %i.ef, align 8, !tbaa !164 ; 2 uses
  %i.fi = load i64, ptr %i.ec, align 8, !tbaa !164
  %i.fj = sub i64 4611686018427387903, %i.fi
  %i.fk = icmp ult i64 %i.fj, %i.fh
  br i1 %i.fk, label %.loopexit521, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

.loopexit521:                                     ; preds = %bb.as, %bb.ao
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.689) #42
          to label %.noexc150 unwind label %.loopexit.split-lp465.loopexit.split-lp.loopexit.split-lp

.noexc150:                                        ; preds = %.loopexit521
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.as
  %i.fl = load ptr, ptr %12, align 8, !tbaa !163
  %i.fm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.eb, ptr noundef %i.fl, i64 noundef %i.fh)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp465.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.fn = load ptr, ptr %12, align 8, !tbaa !163  ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.eg
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.fp = load i64, ptr %i.eg, align 8, !tbaa !166
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fq) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond.not, label %.loopexit, label %bb.ap, !llvm.loop !2136

.loopexit.split-lp518.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ar, %bb.an
  %lpad.loopexit.split-lp733 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

.loopexit.split-lp465.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel, %.loopexit521
  %lpad.loopexit.split-lp736 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fr = load ptr, ptr %12, align 8, !tbaa !163  ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.eg
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %.loopexit.split-lp465.loopexit.split-lp.loopexit.split-lp
  %i.ft = load i64, ptr %i.eg, align 8, !tbaa !166
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %.loopexit.split-lp465.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp518.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp736, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152 ], [ %lpad.loopexit.split-lp733, %.loopexit.split-lp518.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp736, %.loopexit.split-lp465.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  br label %.loopexit.split-lp

.critedge:                                        ; preds = %.lr.ph493
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0446.0491, i64 72 ; 2 uses
  %.not459 = icmp eq ptr %i.fv, %i.dz
  br i1 %.not459, label %.loopexit, label %.lr.ph493

.loopexit:                                        ; preds = %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.am, %bb.al, %bb.aj, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  invoke void @_ZN5osgeo4proj3crs8BoundCRS17createFromTOWGS84ERKN7dropbox6oxygen2nnISt10shared_ptrINS1_3CRSEEEERKSt6vectorIdSaIdEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.630") align 8 %13, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.at unwind label %bb.bi

bb.at:                                            ; preds = %.loopexit
  %i.fw = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fy = load <2 x ptr>, ptr %13, align 16, !tbaa !208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %i.fz = load ptr, ptr %i.fx, align 8, !tbaa !209 ; 8 uses
  store <2 x ptr> %i.fy, ptr %3, align 8, !tbaa !208
  %.not.i.i.i.i.i155 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i.i155, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit164, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 4 uses
  %i.gb = load atomic i64, ptr %i.ga acquire, align 8 ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 4294967297
  %i.gd = trunc i64 %i.gb to i32                  ; 2 uses
  br i1 %i.gc, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.ga, align 8, !tbaa !211
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  store i32 0, ptr %i.ge, align 4, !tbaa !212
  %i.gf = load ptr, ptr %i.fz, align 8, !tbaa !156
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #41, !inline_history !2135
  %i.gi = load ptr, ptr %i.fz, align 8, !tbaa !156
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #41, !inline_history !2135
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit164

bb.aw:                                            ; preds = %bb.au
  %i.gl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i.i.i156 = icmp eq i8 %i.gl, 0
  br i1 %.not.i.i.i.i.i.i156, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gm = add nsw i32 %i.gd, -1
  store i32 %i.gm, ptr %i.ga, align 8, !tbaa !213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i157

bb.ay:                                            ; preds = %bb.aw
  %i.gn = atomicrmw volatile add ptr %i.ga, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i157

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i157: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i.i.i.i158 = phi i32 [ %i.gd, %bb.ax ], [ %i.gn, %bb.ay ]
  %i.go = icmp eq i32 %.0.i.i.i.i.i.i.i158, 1
  br i1 %i.go, label %bb.az, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit164, !prof !214

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i157
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #41
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit164

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit164: ; preds = %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i157, %bb.av, %bb.at
  %i.gp = load ptr, ptr %i.fw, align 8, !tbaa !209 ; 8 uses
  %.not.i.i.i165 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i165, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs8BoundCRSEEED2Ev.exit169, label %bb.ba

bb.ba:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit164
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 4 uses
  %i.gr = load atomic i64, ptr %i.gq acquire, align 8 ; 2 uses
  %i.gs = icmp eq i64 %i.gr, 4294967297
  %i.gt = trunc i64 %i.gr to i32                  ; 2 uses
  br i1 %i.gs, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.gq, align 8, !tbaa !211
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  store i32 0, ptr %i.gu, align 4, !tbaa !212
  %i.gv = load ptr, ptr %i.gp, align 8, !tbaa !156
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #41, !inline_history !96
  %i.gy = load ptr, ptr %i.gp, align 8, !tbaa !156
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8
  call void %i.ha(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #41, !inline_history !96
end_hunk_2
