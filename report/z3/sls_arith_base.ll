Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sls_arith_base?download=true
inline.NumInlined: 7668
inline.NumDeleted: 1628
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN3sls10arith_baseI13checked_int64ILb1EEE6factorES2_:bb.a
  br i1 %i.o, label %bb.e, label %_ZN13checked_int64ILb1EEdVERKS0_.exit.i

bb.d:                                             ; preds = %.lr.ph
  %i.p = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.p, align 4, !tbaa !129
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !129
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.a, align 8, !tbaa !307
  br label %_ZN6vectorI13checked_int64ILb1EELb1EjE13expand_vectorEv.exit

bb.e:                                             ; preds = %bb.c
  %i.s = mul i32 %i.l, 3
  %i.t = add i32 %i.s, 1
  %i.u = lshr i32 %i.t, 1                         ; 3 uses
  %i.v = shl i32 %i.u, 3
  %i.w = add i32 %i.v, 8                          ; 2 uses
  %.not.i41 = icmp ugt i32 %i.u, %i.l
  br i1 %.not.i41, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.x = shl i32 %i.l, 3
  %i.y = add i32 %i.x, 8
  %.not27.i = icmp ugt i32 %i.w, %i.y
  br i1 %.not27.i, label %bb.k, label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.e, %bb.o, %bb.n, %bb.t, %bb.s
  %i.z = tail call ptr @__cxa_allocate_exception(i64 40) #24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.82, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %.loopexit
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.z, align 8, !tbaa !87
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 3 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !231
  %i.ac = load ptr, ptr %4, align 8, !tbaa !233   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !234 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 16
  call void @llvm.assume(i1 %i.ah)
  %i.ai = add nuw nsw i64 %i.ag, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.ai, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !233
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !235
  store i64 %i.aj, ptr %i.ab, align 8, !tbaa !235
  %.phi.trans.insert.i42 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre.i43 = load i64, ptr %.phi.trans.insert.i42, align 8, !tbaa !234
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.h
  %i.ak = phi i64 [ %i.ag, %bb.h ], [ %.pre.i43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.ak, ptr %i.am, align 8, !tbaa !234
  store ptr %i.ad, ptr %4, align 8, !tbaa !233
  store i64 0, ptr %i.al, align 8, !tbaa !234
  store i8 0, ptr %i.ad, align 8, !tbaa !235
  invoke void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #25
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %4, align 8, !tbaa !233   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.ad
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.i
  %i.aq = load i64, ptr %i.ad, align 8, !tbaa !235
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume

bb.j:                                             ; preds = %.loopexit
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @__cxa_free_exception(ptr %i.z) #24
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i51, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.as, %bb.j ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ff, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i51 ], [ %i.fk, %bb.ag ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.f
  %i.at = zext i32 %i.w to i64
  %i.au = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.m, i64 noundef %i.at) ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  store ptr %i.av, ptr %i.a, align 8, !tbaa !307
  store i32 %i.u, ptr %i.au, align 4, !tbaa !129
  br label %_ZN6vectorI13checked_int64ILb1EELb1EjE13expand_vectorEv.exit

bb.l:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

_ZN6vectorI13checked_int64ILb1EELb1EjE13expand_vectorEv.exit: ; preds = %bb.d, %bb.k
  %.pre.i = phi ptr [ %i.r, %bb.d ], [ %i.av, %bb.k ] ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !129
  br label %_ZN13checked_int64ILb1EEdVERKS0_.exit.i

_ZN13checked_int64ILb1EEdVERKS0_.exit.i:          ; preds = %_ZN6vectorI13checked_int64ILb1EELb1EjE13expand_vectorEv.exit, %bb.c
  %i.aw = phi ptr [ %.pre.i, %_ZN6vectorI13checked_int64ILb1EELb1EjE13expand_vectorEv.exit ], [ %i.i, %bb.c ] ; 4 uses
  %i.ax = phi i32 [ %.pre2.i, %_ZN6vectorI13checked_int64ILb1EELb1EjE13expand_vectorEv.exit ], [ %i.l, %bb.c ] ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -4
  %i.az = zext i32 %i.ax to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.az
  store i64 2, ptr %i.ba, align 8, !tbaa !89
  %i.bb = add i32 %i.ax, 1
  store i32 %i.bb, ptr %i.ay, align 4, !tbaa !129
  %i.bc = ashr exact i64 %.sroa.066.1100234, 1    ; 2 uses
  %i.bd = and i64 %.sroa.066.1100234, 2
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %.lr.ph, label %_ZN13checked_int64ILb1EErMERKS0_.exit.i.1.preheader

_ZN13checked_int64ILb1EErMERKS0_.exit.i.2.preheader: ; preds = %_ZN13checked_int64ILb1EEdVERKS0_.exit.i.1, %_ZN13checked_int64ILb1EErMERKS0_.exit.i.1.preheader
  %.lcssa229 = phi ptr [ %.lcssa232, %_ZN13checked_int64ILb1EErMERKS0_.exit.i.1.preheader ], [ %i.cb, %_ZN13checked_int64ILb1EEdVERKS0_.exit.i.1 ]
  %.sroa.066.1100.1.lcssa = phi i64 [ %.sroa.066.1100.lcssa, %_ZN13checked_int64ILb1EErMERKS0_.exit.i.1.preheader ], [ %i.ch, %_ZN13checked_int64ILb1EEdVERKS0_.exit.i.1 ] ; 3 uses
  %i.bf = srem i64 %.sroa.066.1100.1.lcssa, 5
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %.lr.ph241, label %_Z3modILb1EE13checked_int64IXT_EERKS1_S3_.exit.2.thread

.lr.ph237:                                        ; preds = %_ZN13checked_int64ILb1EErMERKS0_.exit.i.1.preheader, %_ZN13checked_int64ILb1EEdVERKS0_.exit.i.1
  %.sroa.066.1100.1236 = phi i64 [ %i.ch, %_ZN13checked_int64ILb1EEdVERKS0_.exit.i.1 ], [ %.sroa.066.1100.lcssa, %_ZN13checked_int64ILb1EErMERKS0_.exit.i.1.preheader ]
  %i.bh = phi ptr [ %i.cb, %_ZN13checked_int64ILb1EEdVERKS0_.exit.i.1 ], [ %.lcssa232, %_ZN13checked_int64ILb1EErMERKS0_.exit.i.1.preheader ] ; 4 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.q, label %bb.m

bb.m:                                             ; preds = %.lr.ph237
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 -4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !129 ; 5 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bh, i64 -8 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !129
  %i.bn = icmp eq i32 %i.bk, %i.bm
  br i1 %i.bn, label %bb.n, label %_ZN13checked_int64ILb1EEdVERKS0_.exit.i.1

bb.n:                                             ; preds = %bb.m
  %i.bo = mul i32 %i.bk, 3
  %i.bp = add i32 %i.bo, 1
  %i.bq = lshr i32 %i.bp, 1                       ; 3 uses
  %i.br = shl i32 %i.bq, 3
  %i.bs = add i32 %i.br, 8                        ; 2 uses
  %.not.i41.1 = icmp ugt i32 %i.bq, %i.bk
  br i1 %.not.i41.1, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.bt = shl i32 %i.bk, 3
  %i.bu = add i32 %i.bt, 8
  %.not27.i.1 = icmp ugt i32 %i.bs, %i.bu
  br i1 %.not27.i.1, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.bv = zext i32 %i.bs to i64
  %i.bw = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bv) ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  store ptr %i.bx, ptr %i.a, align 8, !tbaa !307
  store i32 %i.bq, ptr %i.bw, align 4, !tbaa !129
  br label %_ZN6vectorI13checked_int64ILb1EELb1EjE13expand_vectorEv.exit.1

bb.q:                                             ; preds = %.lr.ph237
  %i.by = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.by, align 4, !tbaa !129
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i32 0, ptr %i.bz, align 4, !tbaa !129
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  store ptr %i.ca, ptr %i.a, align 8, !tbaa !307
  br label %_ZN6vectorI13checked_int64ILb1EELb1EjE13expand_vectorEv.exit.1

_ZN6vectorI13checked_int64ILb1EELb1EjE13expand_vectorEv.exit.1: ; preds = %bb.q, %bb.p
  %.pre.i.1 = phi ptr [ %i.ca, %bb.q ], [ %i.bx, %bb.p ] ; 2 uses
  %.phi.trans.insert.i.1 = getelementptr inbounds i8, ptr %.pre.i.1, i64 -4
  %.pre2.i.1 = load i32, ptr %.phi.trans.insert.i.1, align 4, !tbaa !129
  br label %_ZN13checked_int64ILb1EEdVERKS0_.exit.i.1

_ZN13checked_int64ILb1EEdVERKS0_.exit.i.1:        ; preds = %_ZN6vectorI13checked_int64ILb1EELb1EjE13expand_vectorEv.exit.1, %bb.m
  %i.cb = phi ptr [ %.pre.i.1, %_ZN6vectorI13checked_int64ILb1EELb1EjE13expand_vectorEv.exit.1 ], [ %i.bh, %bb.m ] ; 4 uses
  %i.cc = phi i32 [ %.pre2.i.1, %_ZN6vectorI13checked_int64ILb1EELb1EjE13expand_vectorEv.exit.1 ], [ %i.bk, %bb.m ] ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cb, i64 -4
  %i.ce = zext i32 %i.cc to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ce
  store i64 3, ptr %i.cf, align 8, !tbaa !89
  %i.cg = add i32 %i.cc, 1
  store i32 %i.cg, ptr %i.cd, align 4, !tbaa !129
  %i.ch = sdiv exact i64 %.sroa.066.1100.1236, 3  ; 3 uses
  %i.ci = srem i64 %i.ch, 3
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %.lr.ph237, label %_ZN13checked_int64ILb1EErMERKS0_.exit.i.2.preheader

_Z3modILb1EE13checked_int64IXT_EERKS1_S3_.exit.2.thread: ; preds = %_ZN13checked_int64ILb1EEdVERKS0_.exit.i.2, %_ZN13checked_int64ILb1EErMERKS0_.exit.i.2.preheader
  %.sroa.066.1100.2.lcssa = phi i64 [ %.sroa.066.1100.1.lcssa, %_ZN13checked_int64ILb1EErMERKS0_.exit.i.2.preheader ], [ %i.dm, %_ZN13checked_int64ILb1EEdVERKS0_.exit.i.2 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store i64 7, ptr %7, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 7, ptr %6, align 8, !tbaa !89
  %i.ck = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN13checked_int64ILb1EEmLERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) ; 0 uses
  %i.cl = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not110 = icmp slt i64 %.sroa.066.1100.2.lcssa, %i.cl
  br i1 %.not110, label %._crit_edge109, label %.preheader

.lr.ph241:                                        ; preds = %_ZN13checked_int64ILb1EErMERKS0_.exit.i.2.preheader, %_ZN13checked_int64ILb1EEdVERKS0_.exit.i.2
  %.sroa.066.1100.2240 = phi i64 [ %i.dm, %_ZN13checked_int64ILb1EEdVERKS0_.exit.i.2 ], [ %.sroa.066.1100.1.lcssa, %_ZN13checked_int64ILb1EErMERKS0_.exit.i.2.preheader ]
  %i.cm = phi ptr [ %i.dg, %_ZN13checked_int64ILb1EEdVERKS0_.exit.i.2 ], [ %.lcssa229, %_ZN13checked_int64ILb1EErMERKS0_.exit.i.2.preheader ] ; 4 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.v, label %bb.r

bb.r:                                             ; preds = %.lr.ph241
  %i.co = getelementptr inbounds i8, ptr %i.cm, i64 -4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !129 ; 5 uses
  %i.cq = getelementptr inbounds i8, ptr %i.cm, i64 -8 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !129
  %i.cs = icmp eq i32 %i.cp, %i.cr
  br i1 %i.cs, label %bb.s, label %_ZN13checked_int64ILb1EEdVERKS0_.exit.i.2

bb.s:                                             ; preds = %bb.r
  %i.ct = mul i32 %i.cp, 3
  %i.cu = add i32 %i.ct, 1
  %i.cv = lshr i32 %i.cu, 1                       ; 3 uses
  %i.cw = shl i32 %i.cv, 3
  %i.cx = add i32 %i.cw, 8                        ; 2 uses
  %.not.i41.2 = icmp ugt i32 %i.cv, %i.cp
  br i1 %.not.i41.2, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.s
  %i.cy = shl i32 %i.cp, 3
  %i.cz = add i32 %i.cy, 8
  %.not27.i.2 = icmp ugt i32 %i.cx, %i.cz
  br i1 %.not27.i.2, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.da = zext i32 %i.cx to i64
  %i.db = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.cq, i64 noundef %i.da) ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  store ptr %i.dc, ptr %i.a, align 8, !tbaa !307
  store i32 %i.cv, ptr %i.db, align 4, !tbaa !129
  br label %_ZN6vectorI13checked_int64ILb1EELb1EjE13expand_vectorEv.exit.2

bb.v:                                             ; preds = %.lr.ph241
  %i.dd = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.dd, align 4, !tbaa !129
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  store i32 0, ptr %i.de, align 4, !tbaa !129
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  store ptr %i.df, ptr %i.a, align 8, !tbaa !307
  br label %_ZN6vectorI13checked_int64ILb1EELb1EjE13expand_vectorEv.exit.2

_ZN6vectorI13checked_int64ILb1EELb1EjE13expand_vectorEv.exit.2: ; preds = %bb.v, %bb.u
  %.pre.i.2 = phi ptr [ %i.df, %bb.v ], [ %i.dc, %bb.u ] ; 2 uses
  %.phi.trans.insert.i.2 = getelementptr inbounds i8, ptr %.pre.i.2, i64 -4
  %.pre2.i.2 = load i32, ptr %.phi.trans.insert.i.2, align 4, !tbaa !129
  br label %_ZN13checked_int64ILb1EEdVERKS0_.exit.i.2

_ZN13checked_int64ILb1EEdVERKS0_.exit.i.2:        ; preds = %_ZN6vectorI13checked_int64ILb1EELb1EjE13expand_vectorEv.exit.2, %bb.r
  %i.dg = phi ptr [ %.pre.i.2, %_ZN6vectorI13checked_int64ILb1EELb1EjE13expand_vectorEv.exit.2 ], [ %i.cm, %bb.r ] ; 3 uses
  %i.dh = phi i32 [ %.pre2.i.2, %_ZN6vectorI13checked_int64ILb1EELb1EjE13expand_vectorEv.exit.2 ], [ %i.cp, %bb.r ] ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %i.dg, i64 -4
  %i.dj = zext i32 %i.dh to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dj
  store i64 5, ptr %i.dk, align 8, !tbaa !89
  %i.dl = add i32 %i.dh, 1
  store i32 %i.dl, ptr %i.di, align 4, !tbaa !129
  %i.dm = sdiv exact i64 %.sroa.066.1100.2240, 5  ; 3 uses
  %i.dn = srem i64 %i.dm, 5
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %.lr.ph241, label %_Z3modILb1EE13checked_int64IXT_EERKS1_S3_.exit.2.thread

.preheader:                                       ; preds = %_Z3modILb1EE13checked_int64IXT_EERKS1_S3_.exit.2.thread, %_ZN13checked_int64ILb1EEpLERKS0_.exit
  %.015108 = phi i32 [ %i.gv, %_ZN13checked_int64ILb1EEpLERKS0_.exit ], [ 0, %_Z3modILb1EE13checked_int64IXT_EERKS1_S3_.exit.2.thread ] ; 2 uses
  %.016107 = phi i32 [ %i.gi, %_ZN13checked_int64ILb1EEpLERKS0_.exit ], [ 0, %_Z3modILb1EE13checked_int64IXT_EERKS1_S3_.exit.2.thread ] ; 2 uses
  %.sroa.066.2106 = phi i64 [ %.sroa.066.3104, %_ZN13checked_int64ILb1EEpLERKS0_.exit ], [ %.sroa.066.1100.2.lcssa, %_Z3modILb1EE13checked_int64IXT_EERKS1_S3_.exit.2.thread ]
  %i.dp = load i64, ptr %7, align 8, !tbaa !117   ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %.preheader._crit_edge, label %_ZN13checked_int64ILb1EErMERKS0_.exit.i21

._crit_edge109:                                   ; preds = %_ZN13checked_int64ILb1EEpLERKS0_.exit, %_Z3modILb1EE13checked_int64IXT_EERKS1_S3_.exit.2.thread
  %.sroa.066.2.lcssa = phi i64 [ %.sroa.066.1100.2.lcssa, %_Z3modILb1EE13checked_int64IXT_EERKS1_S3_.exit.2.thread ], [ %.sroa.066.3104, %_ZN13checked_int64ILb1EEpLERKS0_.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.dr = icmp sgt i64 %.sroa.066.2.lcssa, 1
  br i1 %i.dr, label %bb.au, label %bb.ax

.preheader._crit_edge:                            ; preds = %.preheader
  %i.ds = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.ds, align 8, !tbaa !87
  call void @__cxa_throw(ptr nonnull %i.ds, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZN13checked_int64ILb1EErMERKS0_.exit.i21:        ; preds = %.preheader, %_ZN13checked_int64ILb1EErMERKS0_.exit.i21.backedge
  %i.dt = phi i64 [ %i.fv, %_ZN13checked_int64ILb1EErMERKS0_.exit.i21.backedge ], [ %i.dp, %.preheader ] ; 7 uses
  %.sroa.066.3104 = phi i64 [ %.sroa.066.3104.be, %_ZN13checked_int64ILb1EErMERKS0_.exit.i21.backedge ], [ %.sroa.066.2106, %.preheader ] ; 7 uses
  %i.du = srem i64 %.sroa.066.3104, %i.dt         ; 4 uses
  %i.dv = icmp slt i64 %i.du, 0
  br i1 %i.dv, label %bb.w, label %_Z3modILb1EE13checked_int64IXT_EERKS1_S3_.exit25

bb.w:                                             ; preds = %_ZN13checked_int64ILb1EErMERKS0_.exit.i21
  %i.dw = icmp sgt i64 %i.dt, 0
  br i1 %i.dw, label %_ZN13checked_int64ILb1EEpLERKS0_.exit.i24, label %_ZN13checked_int64ILb1EEmIERKS0_.exit.i23

_ZN13checked_int64ILb1EEpLERKS0_.exit.i24:        ; preds = %bb.w
  %i.dx = add nsw i64 %i.du, %i.dt
  br label %_Z3modILb1EE13checked_int64IXT_EERKS1_S3_.exit25

_ZN13checked_int64ILb1EEmIERKS0_.exit.i23:        ; preds = %bb.w
  %i.dy = sub nsw i64 %i.du, %i.dt
  br label %_Z3modILb1EE13checked_int64IXT_EERKS1_S3_.exit25

_Z3modILb1EE13checked_int64IXT_EERKS1_S3_.exit25: ; preds = %_ZN13checked_int64ILb1EErMERKS0_.exit.i21, %_ZN13checked_int64ILb1EEpLERKS0_.exit.i24, %_ZN13checked_int64ILb1EEmIERKS0_.exit.i23
  %.sroa.07.0.i22 = phi i64 [ %i.dx, %_ZN13checked_int64ILb1EEpLERKS0_.exit.i24 ], [ %i.dy, %_ZN13checked_int64ILb1EEmIERKS0_.exit.i23 ], [ %i.du, %_ZN13checked_int64ILb1EErMERKS0_.exit.i21 ]
  %i.dz = icmp eq i64 %.sroa.07.0.i22, 0
  br i1 %i.dz, label %bb.x, label %bb.ap

bb.x:                                             ; preds = %_Z3modILb1EE13checked_int64IXT_EERKS1_S3_.exit25
  %i.ea = load ptr, ptr %i.a, align 8, !tbaa !307 ; 4 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ec = getelementptr inbounds i8, ptr %i.ea, i64 -4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !129 ; 5 uses
  %i.ee = getelementptr inbounds i8, ptr %i.ea, i64 -8 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !129
  %i.eg = icmp eq i32 %i.ed, %i.ef
  br i1 %i.eg, label %bb.aa, label %_ZN6vectorI13checked_int64ILb1EELb1EjE9push_backERKS1_.exit

bb.z:                                             ; preds = %bb.x
  %i.eh = call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.eh, align 4, !tbaa !129
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  store i32 0, ptr %i.ei, align 4, !tbaa !129
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 2 uses
  store ptr %i.ej, ptr %i.a, align 8, !tbaa !307
  br label %_ZN6vectorI13checked_int64ILb1EELb1EjE13expand_vectorEv.exit54

bb.aa:                                            ; preds = %bb.y
  %i.ek = mul i32 %i.ed, 3
  %i.el = add i32 %i.ek, 1
  %i.em = lshr i32 %i.el, 1                       ; 3 uses
  %i.en = shl i32 %i.em, 3
  %i.eo = add i32 %i.en, 8                        ; 2 uses
  %.not.i44 = icmp ugt i32 %i.em, %i.ed
  br i1 %.not.i44, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ep = shl i32 %i.ed, 3
  %i.eq = add i32 %i.ep, 8
  %.not27.i53 = icmp ugt i32 %i.eo, %i.eq
  br i1 %.not27.i53, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.er = call ptr @__cxa_allocate_exception(i64 40) #24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.82, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.er, align 8, !tbaa !87
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 24 ; 3 uses
  store ptr %i.et, ptr %i.es, align 8, !tbaa !231
  %i.eu = load ptr, ptr %2, align 8, !tbaa !233   ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %bb.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46

bb.ae:                                            ; preds = %bb.ad
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !234 ; 3 uses
  %i.ez = icmp ult i64 %i.ey, 16
  call void @llvm.assume(i1 %i.ez)
  %i.fa = add nuw nsw i64 %i.ey, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.et, ptr noundef nonnull align 8 dereferenceable(1) %i.ev, i64 %i.fa, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46: ; preds = %bb.ad
  store ptr %i.eu, ptr %i.es, align 8, !tbaa !233
  %i.fb = load i64, ptr %i.ev, align 8, !tbaa !235
  store i64 %i.fb, ptr %i.et, align 8, !tbaa !235
  %.phi.trans.insert.i47 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i48 = load i64, ptr %.phi.trans.insert.i47, align 8, !tbaa !234
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i49

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i49: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46, %bb.ae
  %i.fc = phi i64 [ %i.ey, %bb.ae ], [ %.pre.i48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46 ]
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store i64 %i.fc, ptr %i.fe, align 8, !tbaa !234
  store ptr %i.ev, ptr %2, align 8, !tbaa !233
  store i64 0, ptr %i.fd, align 8, !tbaa !234
  store i8 0, ptr %i.ev, align 8, !tbaa !235
  invoke void @__cxa_throw(ptr nonnull %i.er, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #25
          to label %bb.ai unwind label %bb.af

bb.af:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i49
  %i.ff = landingpad { ptr, i32 }
          cleanup
  %i.fg = load ptr, ptr %2, align 8, !tbaa !233   ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.ev
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i50: ; preds = %bb.af
  %i.fi = load i64, ptr %i.ev, align 8, !tbaa !235
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i51: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %common.resume

bb.ag:                                            ; preds = %bb.ac
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @__cxa_free_exception(ptr %i.er) #24
  br label %common.resume

bb.ah:                                            ; preds = %bb.ab
  %i.fl = zext i32 %i.eo to i64
  %i.fm = call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.ee, i64 noundef %i.fl) ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 2 uses
  store ptr %i.fn, ptr %i.a, align 8, !tbaa !307
  store i32 %i.em, ptr %i.fm, align 4, !tbaa !129
  br label %_ZN6vectorI13checked_int64ILb1EELb1EjE13expand_vectorEv.exit54

bb.ai:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i49
  unreachable

_ZN6vectorI13checked_int64ILb1EELb1EjE13expand_vectorEv.exit54: ; preds = %bb.z, %bb.ah
  %.pre.i26 = phi ptr [ %i.ej, %bb.z ], [ %i.fn, %bb.ah ] ; 2 uses
  %.phi.trans.insert.i27 = getelementptr inbounds i8, ptr %.pre.i26, i64 -4
  %.pre2.i28 = load i32, ptr %.phi.trans.insert.i27, align 4, !tbaa !129
  %.pre = load i64, ptr %7, align 8, !tbaa !89
  br label %_ZN6vectorI13checked_int64ILb1EELb1EjE9push_backERKS1_.exit

_ZN6vectorI13checked_int64ILb1EELb1EjE9push_backERKS1_.exit: ; preds = %bb.y, %_ZN6vectorI13checked_int64ILb1EELb1EjE13expand_vectorEv.exit54
  %i.fo = phi i64 [ %.pre, %_ZN6vectorI13checked_int64ILb1EELb1EjE13expand_vectorEv.exit54 ], [ %i.dt, %bb.y ]
  %i.fp = phi i32 [ %.pre2.i28, %_ZN6vectorI13checked_int64ILb1EELb1EjE13expand_vectorEv.exit54 ], [ %i.ed, %bb.y ] ; 2 uses
  %i.fq = phi ptr [ %.pre.i26, %_ZN6vectorI13checked_int64ILb1EELb1EjE13expand_vectorEv.exit54 ], [ %i.ea, %bb.y ] ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %i.fq, i64 -4
  %i.fs = zext i32 %i.fp to i64
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fs
  store i64 %i.fo, ptr %i.ft, align 8, !tbaa !89
  %i.fu = add i32 %i.fp, 1
  store i32 %i.fu, ptr %i.fr, align 4, !tbaa !129
  %i.fv = load i64, ptr %7, align 8, !tbaa !117   ; 5 uses
  %i.fw = icmp eq i64 %i.fv, 0
  br i1 %i.fw, label %bb.aj, label %_ZN13checked_int64ILb1EEdVERKS0_.exit.i29

bb.aj:                                            ; preds = %_ZN6vectorI13checked_int64ILb1EELb1EjE9push_backERKS1_.exit
  %i.fx = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.fx, align 8, !tbaa !87
  call void @__cxa_throw(ptr nonnull %i.fx, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZN13checked_int64ILb1EEdVERKS0_.exit.i29:        ; preds = %_ZN6vectorI13checked_int64ILb1EELb1EjE9push_backERKS1_.exit
  %i.fy = sdiv i64 %.sroa.066.3104, %i.fv         ; 5 uses
  %i.fz = srem i64 %.sroa.066.3104, %i.fv
  %i.ga = icmp sge i64 %.sroa.066.3104, 0
  %.not.i33 = icmp eq i64 %i.fz, 0
  %or.cond = or i1 %i.ga, %.not.i33
end_hunk_0
