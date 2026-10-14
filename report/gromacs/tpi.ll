Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/tpi?download=true
inline.NumInlined: 1973
inline.NumDeleted: 915
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN9t_mdatomsC2ERKS_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.h, 9223372036854775804
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i, !prof !268

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #30
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.k = phi ptr [ null, %bb.a ], [ %i.j, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !270
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !467
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !271
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !468  ; 3 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !468
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = icmp sgt i64 %i.s, 4
  br i1 %i.t, label %bb.d, label %bb.e, !prof !272

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.o, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.u = icmp eq i64 %i.s, 4
  br i1 %i.u, label %bb.f, label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.v = load float, ptr %i.o, align 4, !tbaa !128
  store float %i.v, ptr %i.k, align 4, !tbaa !128
  br label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

_ZNSt6vectorIfSaIfEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.w = getelementptr inbounds i8, ptr %i.k, i64 %i.s
  store ptr %i.w, ptr %i.l, align 8, !tbaa !467
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !467 ; 2 uses
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !270 ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %.not.i.i.i.i70 = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i.i70, label %.noexc73, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit
  %i.af = icmp ugt i64 %i.ae, 9223372036854775804
  br i1 %i.af, label %.noexc.i.i72, label %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i71, !prof !268

.noexc.i.i72:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.db

.noexc:                                           ; preds = %.noexc.i.i72
  unreachable

_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i71: ; preds = %bb.g
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #30
          to label %.noexc73 unwind label %bb.db

.noexc73:                                         ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i71, %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit
  %i.ah = phi ptr [ null, %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit ], [ %i.ag, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i71 ] ; 6 uses
  store ptr %i.ah, ptr %i.x, align 8, !tbaa !270
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !467
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ae
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !271
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !468 ; 3 uses
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !468
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 4 uses
  %i.aq = icmp sgt i64 %i.ap, 4
  br i1 %i.aq, label %bb.h, label %bb.i, !prof !272

bb.h:                                             ; preds = %.noexc73
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ah, ptr align 4 %i.al, i64 %i.ap, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %.noexc73
  %i.ar = icmp eq i64 %i.ap, 4
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.as = load float, ptr %i.al, align 4, !tbaa !128
  store float %i.as, ptr %i.ah, align 4, !tbaa !128
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.at = getelementptr inbounds i8, ptr %i.ah, i64 %i.ap
  store ptr %i.at, ptr %i.ai, align 8, !tbaa !467
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !467 ; 2 uses
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !270 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %.not.i.i.i.i75 = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i.i.i.i75, label %.noexc79, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = icmp ugt i64 %i.bb, 9223372036854775804
  br i1 %i.bc, label %.noexc.i.i77, label %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i76, !prof !268

.noexc.i.i77:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc78 unwind label %bb.dc

.noexc78:                                         ; preds = %.noexc.i.i77
  unreachable

_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i76: ; preds = %bb.l
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #30
          to label %.noexc79 unwind label %bb.dc

.noexc79:                                         ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i76, %bb.k
  %i.be = phi ptr [ null, %bb.k ], [ %i.bd, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i76 ] ; 6 uses
  store ptr %i.be, ptr %i.au, align 8, !tbaa !270
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !467
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !271
  %i.bi = load ptr, ptr %i.av, align 8, !tbaa !468 ; 3 uses
  %i.bj = load ptr, ptr %i.aw, align 8, !tbaa !468
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 4 uses
  %i.bn = icmp sgt i64 %i.bm, 4
  br i1 %i.bn, label %bb.m, label %bb.n, !prof !272

bb.m:                                             ; preds = %.noexc79
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.be, ptr align 4 %i.bi, i64 %i.bm, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %.noexc79
  %i.bo = icmp eq i64 %i.bm, 4
  br i1 %i.bo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bp = load float, ptr %i.bi, align 4, !tbaa !128
  store float %i.bp, ptr %i.be, align 4, !tbaa !128
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.bq = getelementptr inbounds i8, ptr %i.be, i64 %i.bm
  store ptr %i.bq, ptr %i.bf, align 8, !tbaa !467
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !469 ; 2 uses
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !274 ; 2 uses
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.br, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.bu, %i.bv
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEEC2EmRKS3_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = invoke noundef ptr @_ZN3gmx23AlignedAllocationPolicy6mallocEm(i64 noundef %i.by)
          to label %.noexc81 unwind label %bb.dd  ; 2 uses

.noexc81:                                         ; preds = %bb.q
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.r, label %_ZNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEEC2EmRKS3_.exit.i.i

bb.r:                                             ; preds = %.noexc81
  %i.cb = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cb, align 8, !tbaa !259
  invoke void @__cxa_throw(ptr nonnull %i.cb, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
          to label %.noexc82 unwind label %bb.dd

.noexc82:                                         ; preds = %bb.r
  unreachable

_ZNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEEC2EmRKS3_.exit.i.i: ; preds = %.noexc81, %bb.p
  %i.cc = phi ptr [ null, %bb.p ], [ %i.bz, %.noexc81 ] ; 11 uses
  store ptr %i.cc, ptr %i.br, align 8, !tbaa !274
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !469
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.by
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !470
  %i.cg = load ptr, ptr %i.bs, align 8, !tbaa !468 ; 8 uses
  %i.ch = load ptr, ptr %i.bt, align 8, !tbaa !468 ; 3 uses
  %.not8.i.i.i = icmp eq ptr %i.cg, %i.ch
  br i1 %.not8.i.i.i, label %.loopexit231, label %iter.check

iter.check:                                       ; preds = %_ZNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEEC2EmRKS3_.exit.i.i
  %i.ci = ptrtoaddr ptr %i.ch to i64
  %i.cj = ptrtoaddr ptr %i.cg to i64
  %i.ck = add i64 %i.ci, -4
  %i.cl = sub i64 %i.ck, %i.cj                    ; 3 uses
  %i.cm = lshr i64 %i.cl, 2
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.cl, 28
  %2 = ptrtoaddr ptr %i.cc to i64
  %3 = ptrtoaddr ptr %i.cg to i64
  %i.co = sub i64 %3, %2
  %diff.check = icmp ugt i64 %i.co, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check327 = icmp ult i64 %i.cl, 124
  br i1 %min.iters.check327, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cp = and i64 %i.cn, 24
  %n.vec = and i64 %i.cn, 9223372036854775776     ; 4 uses
  %i.cq = shl i64 %n.vec, 2                       ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cc, i64 %i.cq  ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cg, i64 %i.cq
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ct = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cc, i64 %i.ct ; 4 uses
  %next.gep328 = getelementptr i8, ptr %i.cg, i64 %i.ct ; 4 uses
  %i.cu = getelementptr i8, ptr %next.gep328, i64 32
  %i.cv = getelementptr i8, ptr %next.gep328, i64 64
  %i.cw = getelementptr i8, ptr %next.gep328, i64 96
  %wide.load = load <8 x float>, ptr %next.gep328, align 4, !tbaa !128
  %wide.load329 = load <8 x float>, ptr %i.cu, align 4, !tbaa !128
  %wide.load330 = load <8 x float>, ptr %i.cv, align 4, !tbaa !128
  %wide.load331 = load <8 x float>, ptr %i.cw, align 4, !tbaa !128
  %i.cx = getelementptr i8, ptr %next.gep, i64 32
  %i.cy = getelementptr i8, ptr %next.gep, i64 64
  %i.cz = getelementptr i8, ptr %next.gep, i64 96
  store <8 x float> %wide.load, ptr %next.gep, align 4, !tbaa !128
  store <8 x float> %wide.load329, ptr %i.cx, align 4, !tbaa !128
  store <8 x float> %wide.load330, ptr %i.cy, align 4, !tbaa !128
  store <8 x float> %wide.load331, ptr %i.cz, align 4, !tbaa !128
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !459

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %.loopexit231, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cp, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !471

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec333 = and i64 %i.cn, 9223372036854775800  ; 3 uses
  %i.db = shl i64 %n.vec333, 2                    ; 2 uses
  %i.dc = getelementptr i8, ptr %i.cc, i64 %i.db  ; 2 uses
  %i.dd = getelementptr i8, ptr %i.cg, i64 %i.db
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index334 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next338, %vec.epilog.vector.body ] ; 2 uses
  %i.de = shl i64 %index334, 2                    ; 2 uses
  %next.gep335 = getelementptr i8, ptr %i.cc, i64 %i.de
  %next.gep336 = getelementptr i8, ptr %i.cg, i64 %i.de
  %wide.load337 = load <8 x float>, ptr %next.gep336, align 4, !tbaa !128
  store <8 x float> %wide.load337, ptr %next.gep335, align 4, !tbaa !128
  %index.next338 = add nuw i64 %index334, 8       ; 2 uses
  %i.df = icmp eq i64 %index.next338, %n.vec333
  br i1 %i.df, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !460

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n339 = icmp eq i64 %i.cn, %n.vec333
  br i1 %cmp.n339, label %.loopexit231, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.010.i.i.i.ph = phi ptr [ %i.cc, %iter.check ], [ %i.cr, %vec.epilog.iter.check ], [ %i.dc, %vec.epilog.middle.block ]
  %.sroa.05.09.i.i.i.ph = phi ptr [ %i.cg, %iter.check ], [ %i.cs, %vec.epilog.iter.check ], [ %i.dd, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.05.09.i.i.i = phi ptr [ %i.dh, %.lr.ph.i.i.i ], [ %.sroa.05.09.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.dg = load float, ptr %.sroa.05.09.i.i.i, align 4, !tbaa !128
  store float %i.dg, ptr %.010.i.i.i, align 4, !tbaa !128
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i, i64 4 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dh, %i.ch
  br i1 %.not.i.i.i, label %.loopexit231, label %.lr.ph.i.i.i, !llvm.loop !461

.loopexit231:                                     ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEEC2EmRKS3_.exit.i.i
  %.0.lcssa.i.i.i = phi ptr [ %i.cc, %_ZNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEEC2EmRKS3_.exit.i.i ], [ %i.dc, %vec.epilog.middle.block ], [ %i.cr, %middle.block ], [ %i.di, %.lr.ph.i.i.i ]
  store ptr %.0.lcssa.i.i.i, ptr %i.cd, align 8, !tbaa !469
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !468
  %i.dl = load ptr, ptr %i.bs, align 8, !tbaa !468
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.dq = getelementptr inbounds i8, ptr %i.cc, i64 %i.do
  store ptr %i.dq, ptr %i.dp, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !170 ; 2 uses
  %i.dv = load ptr, ptr %i.ds, align 8, !tbaa !169 ; 2 uses
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = sub i64 %i.dw, %i.dx                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, i8 0, i64 24, i1 false)
  %.not.i.i.i.i83 = icmp eq ptr %i.du, %i.dv
  br i1 %.not.i.i.i.i83, label %.noexc87, label %bb.s

bb.s:                                             ; preds = %.loopexit231
  %i.dz = sdiv exact i64 %i.dy, 12
  %i.ea = icmp ugt i64 %i.dz, 768614336404564650
  br i1 %i.ea, label %.noexc.i.i85, label %_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i, !prof !268

.noexc.i.i85:                                     ; preds = %bb.s
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc86 unwind label %bb.de

.noexc86:                                         ; preds = %.noexc.i.i85
  unreachable

_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.s
  %i.eb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #30
          to label %.noexc87 unwind label %bb.de

.noexc87:                                         ; preds = %_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i, %.loopexit231
  %i.ec = phi ptr [ null, %.loopexit231 ], [ %i.eb, %_ZNSt15__new_allocatorIN3gmx11BasicVectorIfEEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.ec, ptr %i.dr, align 8, !tbaa !169
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !170
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.dy
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !168
  %i.eg = load ptr, ptr %i.ds, align 8, !tbaa !277 ; 2 uses
  %i.eh = load ptr, ptr %i.dt, align 8, !tbaa !277 ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.eg, %i.eh
  br i1 %.not7.i.i.i.i.i, label %.loopexit230, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc87, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i ], [ %i.ec, %.noexc87 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i ], [ %i.eg, %.noexc87 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.04.08.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !278
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 12 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i84 = icmp eq ptr %i.ei, %i.eh
  br i1 %.not.i.i.i.i.i84, label %.loopexit230, label %.lr.ph.i.i.i.i.i, !llvm.loop !462

.loopexit230:                                     ; preds = %.lr.ph.i.i.i.i.i, %.noexc87
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ec, %.noexc87 ], [ %i.ej, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ed, align 8, !tbaa !170
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ek, ptr noundef nonnull align 8 dereferenceable(32) %i.el, i64 32, i1 false)
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !467 ; 2 uses
  %i.eq = load ptr, ptr %i.en, align 8, !tbaa !270 ; 2 uses
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = sub i64 %i.er, %i.es                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.em, i8 0, i64 24, i1 false)
  %.not.i.i.i.i88 = icmp eq ptr %i.ep, %i.eq
  br i1 %.not.i.i.i.i88, label %.noexc92, label %bb.t

bb.t:                                             ; preds = %.loopexit230
  %i.eu = icmp ugt i64 %i.et, 9223372036854775804
  br i1 %i.eu, label %.noexc.i.i90, label %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i89, !prof !268

.noexc.i.i90:                                     ; preds = %bb.t
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc91 unwind label %bb.df

.noexc91:                                         ; preds = %.noexc.i.i90
  unreachable

_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i89: ; preds = %bb.t
  %i.ev = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.et) #30
          to label %.noexc92 unwind label %bb.df

.noexc92:                                         ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i89, %.loopexit230
  %i.ew = phi ptr [ null, %.loopexit230 ], [ %i.ev, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i89 ] ; 6 uses
  store ptr %i.ew, ptr %i.em, align 8, !tbaa !270
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !467
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.et
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !271
  %i.fa = load ptr, ptr %i.en, align 8, !tbaa !468 ; 3 uses
  %i.fb = load ptr, ptr %i.eo, align 8, !tbaa !468
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %i.fa to i64
  %i.fe = sub i64 %i.fc, %i.fd                    ; 4 uses
  %i.ff = icmp sgt i64 %i.fe, 4
  br i1 %i.ff, label %bb.u, label %bb.v, !prof !272

bb.u:                                             ; preds = %.noexc92
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ew, ptr align 4 %i.fa, i64 %i.fe, i1 false)
  br label %bb.x

end_hunk_0
begin_hunk_1_@_ZN9t_mdatomsC2ERKS_:bb.a
bb.ai:                                            ; preds = %bb.ah
  %i.hl = icmp ugt i64 %i.hk, 9223372036854775804
  br i1 %i.hl, label %.noexc.i.i108, label %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i107, !prof !268

.noexc.i.i108:                                    ; preds = %bb.ai
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc109 unwind label %bb.di

.noexc109:                                        ; preds = %.noexc.i.i108
  unreachable

_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i107: ; preds = %bb.ai
  %i.hm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hk) #30
          to label %.noexc110 unwind label %bb.di

.noexc110:                                        ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i107, %bb.ah
  %i.hn = phi ptr [ null, %bb.ah ], [ %i.hm, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i107 ] ; 6 uses
  store ptr %i.hn, ptr %i.hd, align 8, !tbaa !270
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  store ptr %i.hn, ptr %i.ho, align 8, !tbaa !467
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hk
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  store ptr %i.hp, ptr %i.hq, align 8, !tbaa !271
  %i.hr = load ptr, ptr %i.he, align 8, !tbaa !468 ; 3 uses
  %i.hs = load ptr, ptr %i.hf, align 8, !tbaa !468
  %i.ht = ptrtoint ptr %i.hs to i64
  %i.hu = ptrtoint ptr %i.hr to i64
  %i.hv = sub i64 %i.ht, %i.hu                    ; 4 uses
  %i.hw = icmp sgt i64 %i.hv, 4
  br i1 %i.hw, label %bb.aj, label %bb.ak, !prof !272

bb.aj:                                            ; preds = %.noexc110
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.hn, ptr align 4 %i.hr, i64 %i.hv, i1 false)
  br label %bb.am

bb.ak:                                            ; preds = %.noexc110
  %i.hx = icmp eq i64 %i.hv, 4
  br i1 %i.hx, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.hy = load float, ptr %i.hr, align 4, !tbaa !128
  store float %i.hy, ptr %i.hn, align 4, !tbaa !128
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %i.hz = getelementptr inbounds i8, ptr %i.hn, i64 %i.hv
  store ptr %i.hz, ptr %i.ho, align 8, !tbaa !467
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !467 ; 2 uses
  %i.ie = load ptr, ptr %i.ib, align 8, !tbaa !270 ; 2 uses
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = sub i64 %i.if, %i.ig                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ia, i8 0, i64 24, i1 false)
  %.not.i.i.i.i112 = icmp eq ptr %i.id, %i.ie
  br i1 %.not.i.i.i.i112, label %.noexc116, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ii = icmp ugt i64 %i.ih, 9223372036854775804
  br i1 %i.ii, label %.noexc.i.i114, label %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i113, !prof !268

.noexc.i.i114:                                    ; preds = %bb.an
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc115 unwind label %bb.dj

.noexc115:                                        ; preds = %.noexc.i.i114
  unreachable

_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i113: ; preds = %bb.an
  %i.ij = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ih) #30
          to label %.noexc116 unwind label %bb.dj

.noexc116:                                        ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i113, %bb.am
  %i.ik = phi ptr [ null, %bb.am ], [ %i.ij, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i113 ] ; 6 uses
  store ptr %i.ik, ptr %i.ia, align 8, !tbaa !270
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  store ptr %i.ik, ptr %i.il, align 8, !tbaa !467
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.ih
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  store ptr %i.im, ptr %i.in, align 8, !tbaa !271
  %i.io = load ptr, ptr %i.ib, align 8, !tbaa !468 ; 3 uses
  %i.ip = load ptr, ptr %i.ic, align 8, !tbaa !468
  %i.iq = ptrtoint ptr %i.ip to i64
  %i.ir = ptrtoint ptr %i.io to i64
  %i.is = sub i64 %i.iq, %i.ir                    ; 4 uses
  %i.it = icmp sgt i64 %i.is, 4
  br i1 %i.it, label %bb.ao, label %bb.ap, !prof !272

bb.ao:                                            ; preds = %.noexc116
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ik, ptr align 4 %i.io, i64 %i.is, i1 false)
  br label %bb.ar

bb.ap:                                            ; preds = %.noexc116
  %i.iu = icmp eq i64 %i.is, 4
  br i1 %i.iu, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.iv = load float, ptr %i.io, align 4, !tbaa !128
  store float %i.iv, ptr %i.ik, align 4, !tbaa !128
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.iw = getelementptr inbounds i8, ptr %i.ik, i64 %i.is
  store ptr %i.iw, ptr %i.il, align 8, !tbaa !467
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !467 ; 2 uses
  %i.jb = load ptr, ptr %i.iy, align 8, !tbaa !270 ; 2 uses
  %i.jc = ptrtoint ptr %i.ja to i64
  %i.jd = ptrtoint ptr %i.jb to i64
  %i.je = sub i64 %i.jc, %i.jd                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ix, i8 0, i64 24, i1 false)
  %.not.i.i.i.i118 = icmp eq ptr %i.ja, %i.jb
  br i1 %.not.i.i.i.i118, label %.noexc122, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jf = icmp ugt i64 %i.je, 9223372036854775804
  br i1 %i.jf, label %.noexc.i.i120, label %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i119, !prof !268

.noexc.i.i120:                                    ; preds = %bb.as
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc121 unwind label %bb.dk

.noexc121:                                        ; preds = %.noexc.i.i120
  unreachable

_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i119: ; preds = %bb.as
  %i.jg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.je) #30
          to label %.noexc122 unwind label %bb.dk

.noexc122:                                        ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i119, %bb.ar
  %i.jh = phi ptr [ null, %bb.ar ], [ %i.jg, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i119 ] ; 6 uses
  store ptr %i.jh, ptr %i.ix, align 8, !tbaa !270
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  store ptr %i.jh, ptr %i.ji, align 8, !tbaa !467
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.je
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  store ptr %i.jj, ptr %i.jk, align 8, !tbaa !271
  %i.jl = load ptr, ptr %i.iy, align 8, !tbaa !468 ; 3 uses
  %i.jm = load ptr, ptr %i.iz, align 8, !tbaa !468
  %i.jn = ptrtoint ptr %i.jm to i64
  %i.jo = ptrtoint ptr %i.jl to i64
  %i.jp = sub i64 %i.jn, %i.jo                    ; 4 uses
  %i.jq = icmp sgt i64 %i.jp, 4
  br i1 %i.jq, label %bb.at, label %bb.au, !prof !272

bb.at:                                            ; preds = %.noexc122
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.jh, ptr align 4 %i.jl, i64 %i.jp, i1 false)
  br label %bb.aw

bb.au:                                            ; preds = %.noexc122
  %i.jr = icmp eq i64 %i.jp, 4
  br i1 %i.jr, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.js = load float, ptr %i.jl, align 4, !tbaa !128
  store float %i.js, ptr %i.jh, align 4, !tbaa !128
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %i.jt = getelementptr inbounds i8, ptr %i.jh, i64 %i.jp
  store ptr %i.jt, ptr %i.ji, align 8, !tbaa !467
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !472 ; 2 uses
  %i.jy = load ptr, ptr %i.jv, align 8, !tbaa !281 ; 2 uses
  %i.jz = ptrtoint ptr %i.jx to i64
  %i.ka = ptrtoint ptr %i.jy to i64
  %i.kb = sub i64 %i.jz, %i.ka                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ju, i8 0, i64 24, i1 false)
  %.not.i.i.i.i124 = icmp eq ptr %i.jx, %i.jy
  br i1 %.not.i.i.i.i124, label %.noexc133, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kc = icmp slt i64 %i.kb, 0
  br i1 %i.kc, label %.noexc.i.i131, label %_ZNSt15__new_allocatorIN3gmx8BoolTypeEE8allocateEmPKv.exit.i.i.i.i, !prof !268

.noexc.i.i131:                                    ; preds = %bb.ax
  invoke void @_ZSt17__throw_bad_allocv() #29
          to label %.noexc132 unwind label %bb.dl

.noexc132:                                        ; preds = %.noexc.i.i131
  unreachable

_ZNSt15__new_allocatorIN3gmx8BoolTypeEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.ax
  %i.kd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kb) #30
          to label %.noexc133 unwind label %bb.dl

.noexc133:                                        ; preds = %_ZNSt15__new_allocatorIN3gmx8BoolTypeEE8allocateEmPKv.exit.i.i.i.i, %bb.aw
  %i.ke = phi ptr [ null, %bb.aw ], [ %i.kd, %_ZNSt15__new_allocatorIN3gmx8BoolTypeEE8allocateEmPKv.exit.i.i.i.i ] ; 10 uses
  store ptr %i.ke, ptr %i.ju, align 8, !tbaa !281
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  store ptr %i.ke, ptr %i.kf, align 8, !tbaa !472
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.kb
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  store ptr %i.kg, ptr %i.kh, align 8, !tbaa !282
  %i.ki = load ptr, ptr %i.jv, align 8, !tbaa !473 ; 8 uses
  %i.kj = load ptr, ptr %i.jw, align 8, !tbaa !473 ; 3 uses
  %.not7.i.i.i.i.i125 = icmp eq ptr %i.ki, %i.kj
  br i1 %.not7.i.i.i.i.i125, label %.loopexit, label %iter.check362

iter.check362:                                    ; preds = %.noexc133
  %4 = ptrtoaddr ptr %i.kj to i64                 ; 3 uses
  %i.kk = ptrtoaddr ptr %i.ki to i64
  %5 = sub i64 %4, %i.kk                          ; 7 uses
  %min.iters.check344 = icmp ult i64 %5, 16
  %6 = ptrtoaddr ptr %i.ke to i64
  %7 = ptrtoaddr ptr %i.ki to i64
  %i.kl = sub i64 %7, %6
  %diff.check343 = icmp ugt i64 %i.kl, -128
  %or.cond378 = or i1 %min.iters.check344, %diff.check343
  br i1 %or.cond378, label %.lr.ph.i.i.i.i.i126.preheader, label %vector.main.loop.iter.check345

vector.main.loop.iter.check345:                   ; preds = %iter.check362
  %min.iters.check346 = icmp ult i64 %5, 128
  br i1 %min.iters.check346, label %vec.epilog.ph366, label %vector.ph347

vector.ph347:                                     ; preds = %vector.main.loop.iter.check345
  %i.km = and i64 %5, 112
  %n.vec348 = and i64 %5, -128                    ; 5 uses
  %i.kn = getelementptr i8, ptr %i.ke, i64 %n.vec348 ; 2 uses
  %i.ko = getelementptr i8, ptr %i.ki, i64 %n.vec348
  br label %vector.body349

vector.body349:                                   ; preds = %vector.ph347, %vector.body349
  %index350 = phi i64 [ 0, %vector.ph347 ], [ %index.next357, %vector.body349 ] ; 3 uses
  %next.gep351 = getelementptr i8, ptr %i.ke, i64 %index350 ; 4 uses
  %next.gep352 = getelementptr i8, ptr %i.ki, i64 %index350 ; 4 uses
  %i.kp = getelementptr i8, ptr %next.gep352, i64 32
  %i.kq = getelementptr i8, ptr %next.gep352, i64 64
  %i.kr = getelementptr i8, ptr %next.gep352, i64 96
  %wide.load353 = load <32 x i8>, ptr %next.gep352, align 1, !tbaa !283
  %wide.load354 = load <32 x i8>, ptr %i.kp, align 1, !tbaa !283
  %wide.load355 = load <32 x i8>, ptr %i.kq, align 1, !tbaa !283
  %wide.load356 = load <32 x i8>, ptr %i.kr, align 1, !tbaa !283
  %i.ks = getelementptr i8, ptr %next.gep351, i64 32
  %i.kt = getelementptr i8, ptr %next.gep351, i64 64
  %i.ku = getelementptr i8, ptr %next.gep351, i64 96
  store <32 x i8> %wide.load353, ptr %next.gep351, align 1, !tbaa !283
  store <32 x i8> %wide.load354, ptr %i.ks, align 1, !tbaa !283
  store <32 x i8> %wide.load355, ptr %i.kt, align 1, !tbaa !283
  store <32 x i8> %wide.load356, ptr %i.ku, align 1, !tbaa !283
  %index.next357 = add nuw i64 %index350, 128     ; 2 uses
  %i.kv = icmp eq i64 %index.next357, %n.vec348
  br i1 %i.kv, label %middle.block358, label %vector.body349, !llvm.loop !463

middle.block358:                                  ; preds = %vector.body349
  %cmp.n359 = icmp eq i64 %5, %n.vec348
  br i1 %cmp.n359, label %.loopexit, label %vec.epilog.iter.check364

vec.epilog.iter.check364:                         ; preds = %middle.block358
  %min.epilog.iters.check365 = icmp eq i64 %i.km, 0
  br i1 %min.epilog.iters.check365, label %.lr.ph.i.i.i.i.i126.preheader, label %vec.epilog.ph366, !prof !474

vec.epilog.ph366:                                 ; preds = %vector.main.loop.iter.check345, %vec.epilog.iter.check364
  %vec.epilog.resume.val360 = phi i64 [ %n.vec348, %vec.epilog.iter.check364 ], [ 0, %vector.main.loop.iter.check345 ]
  %n.vec367 = and i64 %5, -16                     ; 4 uses
  %i.kw = getelementptr i8, ptr %i.ke, i64 %n.vec367 ; 2 uses
  %i.kx = getelementptr i8, ptr %i.ki, i64 %n.vec367
  br label %vec.epilog.vector.body368

vec.epilog.vector.body368:                        ; preds = %vec.epilog.vector.body368, %vec.epilog.ph366
  %index369 = phi i64 [ %vec.epilog.resume.val360, %vec.epilog.ph366 ], [ %index.next373, %vec.epilog.vector.body368 ] ; 3 uses
  %next.gep370 = getelementptr i8, ptr %i.ke, i64 %index369
  %next.gep371 = getelementptr i8, ptr %i.ki, i64 %index369
  %wide.load372 = load <16 x i8>, ptr %next.gep371, align 1, !tbaa !283
  store <16 x i8> %wide.load372, ptr %next.gep370, align 1, !tbaa !283
  %index.next373 = add nuw i64 %index369, 16      ; 2 uses
  %i.ky = icmp eq i64 %index.next373, %n.vec367
  br i1 %i.ky, label %vec.epilog.middle.block374, label %vec.epilog.vector.body368, !llvm.loop !464

vec.epilog.middle.block374:                       ; preds = %vec.epilog.vector.body368
  %cmp.n375 = icmp eq i64 %5, %n.vec367
  br i1 %cmp.n375, label %.loopexit, label %.lr.ph.i.i.i.i.i126.preheader

.lr.ph.i.i.i.i.i126.preheader:                    ; preds = %iter.check362, %vec.epilog.iter.check364, %vec.epilog.middle.block374
  %.09.i.i.i.i.i127.ph = phi ptr [ %i.ke, %iter.check362 ], [ %i.kn, %vec.epilog.iter.check364 ], [ %i.kw, %vec.epilog.middle.block374 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i128.ph = phi ptr [ %i.ki, %iter.check362 ], [ %i.ko, %vec.epilog.iter.check364 ], [ %i.kx, %vec.epilog.middle.block374 ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i128.ph381 = ptrtoaddr ptr %.sroa.04.08.i.i.i.i.i128.ph to i64 ; 2 uses
  %i.kz = sub i64 %4, %.sroa.04.08.i.i.i.i.i128.ph381
  %xtraiter = and i64 %i.kz, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i126.prol.loopexit, label %.lr.ph.i.i.i.i.i126.prol

.lr.ph.i.i.i.i.i126.prol:                         ; preds = %.lr.ph.i.i.i.i.i126.preheader, %.lr.ph.i.i.i.i.i126.prol
  %.09.i.i.i.i.i127.prol = phi ptr [ %i.lc, %.lr.ph.i.i.i.i.i126.prol ], [ %.09.i.i.i.i.i127.ph, %.lr.ph.i.i.i.i.i126.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i128.prol = phi ptr [ %i.lb, %.lr.ph.i.i.i.i.i126.prol ], [ %.sroa.04.08.i.i.i.i.i128.ph, %.lr.ph.i.i.i.i.i126.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i126.prol ], [ 0, %.lr.ph.i.i.i.i.i126.preheader ]
  %i.la = load i8, ptr %.sroa.04.08.i.i.i.i.i128.prol, align 1, !tbaa !283
  store i8 %i.la, ptr %.09.i.i.i.i.i127.prol, align 1, !tbaa !283
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i128.prol, i64 1 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i127.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i126.prol.loopexit, label %.lr.ph.i.i.i.i.i126.prol, !llvm.loop !465

.lr.ph.i.i.i.i.i126.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i126.prol, %.lr.ph.i.i.i.i.i126.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i126.preheader ], [ %i.lc, %.lr.ph.i.i.i.i.i126.prol ]
  %.09.i.i.i.i.i127.unr = phi ptr [ %.09.i.i.i.i.i127.ph, %.lr.ph.i.i.i.i.i126.preheader ], [ %i.lc, %.lr.ph.i.i.i.i.i126.prol ]
  %.sroa.04.08.i.i.i.i.i128.unr = phi ptr [ %.sroa.04.08.i.i.i.i.i128.ph, %.lr.ph.i.i.i.i.i126.preheader ], [ %i.lb, %.lr.ph.i.i.i.i.i126.prol ]
  %i.ld = sub i64 %.sroa.04.08.i.i.i.i.i128.ph381, %4
  %i.le = icmp ugt i64 %i.ld, -8
  br i1 %i.le, label %.loopexit, label %.lr.ph.i.i.i.i.i126

.lr.ph.i.i.i.i.i126:                              ; preds = %.lr.ph.i.i.i.i.i126.prol.loopexit, %.lr.ph.i.i.i.i.i126
  %.09.i.i.i.i.i127 = phi ptr [ %i.mc, %.lr.ph.i.i.i.i.i126 ], [ %.09.i.i.i.i.i127.unr, %.lr.ph.i.i.i.i.i126.prol.loopexit ] ; 9 uses
  %.sroa.04.08.i.i.i.i.i128 = phi ptr [ %i.mb, %.lr.ph.i.i.i.i.i126 ], [ %.sroa.04.08.i.i.i.i.i128.unr, %.lr.ph.i.i.i.i.i126.prol.loopexit ] ; 9 uses
  %i.lf = load i8, ptr %.sroa.04.08.i.i.i.i.i128, align 1, !tbaa !283
  store i8 %i.lf, ptr %.09.i.i.i.i.i127, align 1, !tbaa !283
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i128, i64 1
  %i.lh = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i127, i64 1
  %i.li = load i8, ptr %i.lg, align 1, !tbaa !283
  store i8 %i.li, ptr %i.lh, align 1, !tbaa !283
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i128, i64 2
  %i.lk = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i127, i64 2
  %i.ll = load i8, ptr %i.lj, align 1, !tbaa !283
  store i8 %i.ll, ptr %i.lk, align 1, !tbaa !283
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i128, i64 3
  %i.ln = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i127, i64 3
  %i.lo = load i8, ptr %i.lm, align 1, !tbaa !283
  store i8 %i.lo, ptr %i.ln, align 1, !tbaa !283
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i128, i64 4
  %i.lq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i127, i64 4
  %i.lr = load i8, ptr %i.lp, align 1, !tbaa !283
  store i8 %i.lr, ptr %i.lq, align 1, !tbaa !283
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i128, i64 5
  %i.lt = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i127, i64 5
  %i.lu = load i8, ptr %i.ls, align 1, !tbaa !283
  store i8 %i.lu, ptr %i.lt, align 1, !tbaa !283
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i128, i64 6
  %i.lw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i127, i64 6
  %i.lx = load i8, ptr %i.lv, align 1, !tbaa !283
  store i8 %i.lx, ptr %i.lw, align 1, !tbaa !283
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i128, i64 7
  %i.lz = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i127, i64 7
  %i.ma = load i8, ptr %i.ly, align 1, !tbaa !283
  store i8 %i.ma, ptr %i.lz, align 1, !tbaa !283
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i128, i64 8 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i127, i64 8 ; 2 uses
  %.not.i.i.i.i.i129.7 = icmp eq ptr %i.mb, %i.kj
  br i1 %.not.i.i.i.i.i129.7, label %.loopexit, label %.lr.ph.i.i.i.i.i126, !llvm.loop !466

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i126.prol.loopexit, %.lr.ph.i.i.i.i.i126, %middle.block358, %vec.epilog.middle.block374, %.noexc133
  %.0.lcssa.i.i.i.i.i130 = phi ptr [ %i.ke, %.noexc133 ], [ %i.kw, %vec.epilog.middle.block374 ], [ %i.kn, %middle.block358 ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i126.prol.loopexit ], [ %i.mc, %.lr.ph.i.i.i.i.i126 ]
  store ptr %.0.lcssa.i.i.i.i.i130, ptr %i.kf, align 8, !tbaa !472
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !172 ; 2 uses
  %i.mh = load ptr, ptr %i.me, align 8, !tbaa !173 ; 2 uses
  %i.mi = ptrtoint ptr %i.mg to i64
  %i.mj = ptrtoint ptr %i.mh to i64
  %i.mk = sub i64 %i.mi, %i.mj                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.md, i8 0, i64 24, i1 false)
  %.not.i.i.i.i134 = icmp eq ptr %i.mg, %i.mh
  br i1 %.not.i.i.i.i134, label %.noexc137, label %bb.ay

bb.ay:                                            ; preds = %.loopexit
  %i.ml = icmp ugt i64 %i.mk, 9223372036854775804
  br i1 %i.ml, label %.noexc.i.i135, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !268

.noexc.i.i135:                                    ; preds = %bb.ay
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc136 unwind label %bb.dm

.noexc136:                                        ; preds = %.noexc.i.i135
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.ay
  %i.mm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mk) #30
          to label %.noexc137 unwind label %bb.dm

.noexc137:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %.loopexit
  %i.mn = phi ptr [ null, %.loopexit ], [ %i.mm, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.mn, ptr %i.md, align 8, !tbaa !173
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  store ptr %i.mn, ptr %i.mo, align 8, !tbaa !172
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.mk
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  store ptr %i.mp, ptr %i.mq, align 8, !tbaa !285
  %i.mr = load ptr, ptr %i.me, align 8, !tbaa !475 ; 3 uses
  %i.ms = load ptr, ptr %i.mf, align 8, !tbaa !475
  %i.mt = ptrtoint ptr %i.ms to i64
  %i.mu = ptrtoint ptr %i.mr to i64
  %i.mv = sub i64 %i.mt, %i.mu                    ; 4 uses
  %i.mw = icmp sgt i64 %i.mv, 4
  br i1 %i.mw, label %bb.az, label %bb.ba, !prof !272

bb.az:                                            ; preds = %.noexc137
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.mn, ptr align 4 %i.mr, i64 %i.mv, i1 false)
  br label %bb.bc

bb.ba:                                            ; preds = %.noexc137
  %i.mx = icmp eq i64 %i.mv, 4
  br i1 %i.mx, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.my = load i32, ptr %i.mr, align 4, !tbaa !129
  store i32 %i.my, ptr %i.mn, align 4, !tbaa !129
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %i.mz = getelementptr inbounds i8, ptr %i.mn, i64 %i.mv
  store ptr %i.mz, ptr %i.mo, align 8, !tbaa !172
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 408 ; 2 uses
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !172 ; 2 uses
  %i.ne = load ptr, ptr %i.nb, align 8, !tbaa !173 ; 2 uses
end_hunk_1
