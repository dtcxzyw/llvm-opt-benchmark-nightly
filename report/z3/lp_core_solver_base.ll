Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/lp_core_solver_base?download=true
inline.NumInlined: 1350
inline.NumDeleted: 661
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE47init_basis_heading_and_non_basic_columns_vectorEv:bb.a
  store ptr %i.z, ptr %i.p, align 8, !tbaa !101
  br label %_ZNSt6vectorIi13std_allocatorIiEE6resizeEmRKi.exit

_ZNSt6vectorIi13std_allocatorIiEE6resizeEmRKi.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !102, !nonnull !43, !align !44
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !55 ; 7 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE32init_basic_part_of_basis_headingEv.exit, label %_ZNK6vectorIjLb1EjE4sizeEv.exit.i

_ZNK6vectorIjLb1EjE4sizeEv.exit.i:                ; preds = %_ZNSt6vectorIi13std_allocatorIiEE6resizeEmRKi.exit
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !59 ; 3 uses
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE32init_basic_part_of_basis_headingEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK6vectorIjLb1EjE4sizeEv.exit.i
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !99, !nonnull !43, !align !44
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !57 ; 5 uses
  %wide.trip.count.i = zext i32 %i.af to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.ai = icmp ult i32 %i.af, 4
  br i1 %i.ai, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967292
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.f ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.f ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !59
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.al
  %i.an = trunc nuw i64 %indvars.iv.i to i32
  store i32 %i.an, ptr %i.am, align 4, !tbaa !59
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.next.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !59
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.aq
  %i.as = trunc nuw i64 %indvars.iv.next.i to i32
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !59
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.next.i.1
  %i.au = load i32, ptr %i.at, align 4, !tbaa !59
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.av
  %i.ax = trunc nuw i64 %indvars.iv.next.i.1 to i32
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !59
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.next.i.2
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !59
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ba
  %i.bc = trunc nuw i64 %indvars.iv.next.i.2 to i32
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !59
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE32init_basic_part_of_basis_headingEv.exit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !162

_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE32init_basic_part_of_basis_headingEv.exit.loopexit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE32init_basic_part_of_basis_headingEv.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE32init_basic_part_of_basis_headingEv.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE32init_basic_part_of_basis_headingEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod15)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.g ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.i.epil
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !59
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.bf
  %i.bh = trunc nuw i64 %indvars.iv.i.epil to i32
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !59
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE32init_basic_part_of_basis_headingEv.exit, label %bb.g, !llvm.loop !163

_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE32init_basic_part_of_basis_headingEv.exit: ; preds = %_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE32init_basic_part_of_basis_headingEv.exit.loopexit.unr-lcssa, %bb.g, %_ZNSt6vectorIi13std_allocatorIiEE6resizeEmRKi.exit, %_ZNK6vectorIjLb1EjE4sizeEv.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !104, !nonnull !43, !align !44 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !55 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i, label %_ZN6vectorIjLb1EjE5clearEv.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE32init_basic_part_of_basis_headingEv.exit
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -4
  store i32 0, ptr %i.bl, align 4, !tbaa !59
  br label %_ZN6vectorIjLb1EjE5clearEv.exit.i

_ZN6vectorIjLb1EjE5clearEv.exit.i:                ; preds = %bb.h, %_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE32init_basic_part_of_basis_headingEv.exit
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !99, !nonnull !43, !align !44 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !101
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !57 ; 2 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br                    ; 2 uses
  %i.bt = and i64 %i.bs, 17179869180
  %.not3.i = icmp eq i64 %i.bt, 0
  br i1 %.not3.i, label %_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE36init_non_basic_part_of_basis_headingEv.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN6vectorIjLb1EjE5clearEv.exit.i
  %i.bu = lshr exact i64 %i.bs, 2
  br label %.lr.ph.i1

.lr.ph.i1:                                        ; preds = %bb.m, %.lr.ph.preheader.i
  %i.bv = phi ptr [ %i.bk, %.lr.ph.preheader.i ], [ %i.cz, %bb.m ] ; 2 uses
  %i.bw = phi ptr [ %i.bj, %.lr.ph.preheader.i ], [ %i.da, %bb.m ] ; 2 uses
  %i.bx = phi ptr [ %i.bk, %.lr.ph.preheader.i ], [ %i.db, %bb.m ] ; 5 uses
  %i.by = phi ptr [ %i.bj, %.lr.ph.preheader.i ], [ %i.dc, %bb.m ] ; 3 uses
  %i.bz = phi ptr [ %i.bp, %.lr.ph.preheader.i ], [ %i.dd, %bb.m ] ; 2 uses
  %indvars.iv.i2 = phi i64 [ %i.bu, %.lr.ph.preheader.i ], [ %indvars.iv.next.i3, %bb.m ]
  %indvars.iv.next.i3 = add i64 %indvars.iv.i2, -1 ; 3 uses
  %indvars.i = trunc i64 %indvars.iv.next.i3 to i32 ; 2 uses
  %i.ca = and i64 %indvars.iv.next.i3, 4294967295 ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !59
  %i.cd = icmp slt i32 %i.cc, 0
  br i1 %i.cd, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.lr.ph.i1
  %i.ce = icmp eq ptr %i.bx, null
  br i1 %i.ce, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = getelementptr inbounds i8, ptr %i.bx, i64 -4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !59 ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %i.bx, i64 -8
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !59
  %i.cj = icmp eq i32 %i.cg, %i.ci
  br i1 %i.cj, label %bb.k, label %_ZN6vectorIjLb1EjE9push_backERKj.exit.i

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @_ZN6vectorIjLb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.by)
  %.pre.i.i = load ptr, ptr %i.by, align 8, !tbaa !55 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !59
  %.pre.i = load ptr, ptr %i.bi, align 8, !tbaa !104 ; 2 uses
  %.pre5.i = load ptr, ptr %.pre.i, align 8, !tbaa !55
  br label %_ZN6vectorIjLb1EjE9push_backERKj.exit.i

_ZN6vectorIjLb1EjE9push_backERKj.exit.i:          ; preds = %bb.k, %bb.j
  %i.ck = phi ptr [ %.pre5.i, %bb.k ], [ %i.bv, %bb.j ] ; 4 uses
  %i.cl = phi ptr [ %.pre.i, %bb.k ], [ %i.bw, %bb.j ] ; 2 uses
  %i.cm = phi i32 [ %.pre2.i.i, %bb.k ], [ %i.cg, %bb.j ] ; 2 uses
  %i.cn = phi ptr [ %.pre.i.i, %bb.k ], [ %i.bx, %bb.j ] ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -4
  %i.cp = zext i32 %i.cm to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cp
  store i32 %indvars.i, ptr %i.cq, align 4, !tbaa !59
  %i.cr = add i32 %i.cm, 1
  store i32 %i.cr, ptr %i.co, align 4, !tbaa !59
  %i.cs = icmp eq ptr %i.ck, null
  br i1 %i.cs, label %_ZNK6vectorIjLb1EjE4sizeEv.exit.i5, label %bb.l

bb.l:                                             ; preds = %_ZN6vectorIjLb1EjE9push_backERKj.exit.i
  %i.ct = getelementptr inbounds i8, ptr %i.ck, i64 -4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !59
  br label %_ZNK6vectorIjLb1EjE4sizeEv.exit.i5

_ZNK6vectorIjLb1EjE4sizeEv.exit.i5:               ; preds = %bb.l, %_ZN6vectorIjLb1EjE9push_backERKj.exit.i
  %.0.i.i = phi i32 [ %i.cu, %bb.l ], [ 0, %_ZN6vectorIjLb1EjE9push_backERKj.exit.i ]
  %i.cv = sub nsw i32 0, %.0.i.i
  %i.cw = load ptr, ptr %i.b, align 8, !tbaa !99, !nonnull !43, !align !44
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !57 ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.ca
  store i32 %i.cv, ptr %i.cy, align 4, !tbaa !59
  br label %bb.m

bb.m:                                             ; preds = %_ZNK6vectorIjLb1EjE4sizeEv.exit.i5, %.lr.ph.i1
  %i.cz = phi ptr [ %i.ck, %_ZNK6vectorIjLb1EjE4sizeEv.exit.i5 ], [ %i.bv, %.lr.ph.i1 ]
  %i.da = phi ptr [ %i.cl, %_ZNK6vectorIjLb1EjE4sizeEv.exit.i5 ], [ %i.bw, %.lr.ph.i1 ]
  %i.db = phi ptr [ %i.ck, %_ZNK6vectorIjLb1EjE4sizeEv.exit.i5 ], [ %i.bx, %.lr.ph.i1 ]
  %i.dc = phi ptr [ %i.cl, %_ZNK6vectorIjLb1EjE4sizeEv.exit.i5 ], [ %i.by, %.lr.ph.i1 ]
  %i.dd = phi ptr [ %i.cx, %_ZNK6vectorIjLb1EjE4sizeEv.exit.i5 ], [ %i.bz, %.lr.ph.i1 ]
  %.not.i4 = icmp eq i32 %indvars.i, 0
  br i1 %.not.i4, label %_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE36init_non_basic_part_of_basis_headingEv.exit, label %.lr.ph.i1, !llvm.loop !164

_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEE36init_non_basic_part_of_basis_headingEv.exit: ; preds = %bb.m, %_ZN6vectorIjLb1EjE5clearEv.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIi13std_allocatorIiEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !57     ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !105
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not23.i = icmp ult i64 %i.n, %i.i
  br i1 %.not23.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPim13std_allocatorIiEET_S3_T0_RT1_.exit.i

_ZSt27__uninitialized_default_n_aIPim13std_allocatorIiEET_S3_T0_RT1_.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.r, i1 false), !tbaa !59
  %scevgep.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i, ptr %i.a, align 8, !tbaa !101
  br label %_ZNSt6vectorIi13std_allocatorIiEE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIi13std_allocatorIiEE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #23
  unreachable

_ZNKSt6vectorIi13std_allocatorIiEE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 2305843009213693951) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.v) ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.x, i8 0, i64 %i.y, i1 false), !tbaa !59
  %.not10.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIi13std_allocatorIiEE11_S_relocateEPiS3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorIi13std_allocatorIiEE12_M_check_lenEmPKc.exit.i
  %2 = ptrtoaddr ptr %i.w to i64
  %i.z = add i64 %i.d, -4
  %i.aa = sub i64 %i.z, %i.e                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 2
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 44
  %3 = sub i64 %i.e, %2
  %diff.check = icmp ugt i64 %3, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ac, 9223372036854775800     ; 3 uses
  %i.ad = shl i64 %n.vec, 2                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.w, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.c, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ag ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.ag ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.ah = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep12, align 4, !tbaa !59, !alias.scope !171, !noalias !170
  %wide.load13 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !59, !alias.scope !171, !noalias !170
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !59, !alias.scope !170, !noalias !171
  store <4 x i32> %wide.load13, ptr %i.ai, align 4, !tbaa !59, !alias.scope !170, !noalias !171
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !168

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIi13std_allocatorIiEE11_S_relocateEPiS3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.ak = load i32, ptr %.0911.i.i.i.i, align 4, !tbaa !59, !alias.scope !171, !noalias !170
  store i32 %i.ak, ptr %.012.i.i.i.i, align 4, !tbaa !59, !alias.scope !170, !noalias !171
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.al, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIi13std_allocatorIiEE11_S_relocateEPiS3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !169

_ZNSt6vectorIi13std_allocatorIiEE11_S_relocateEPiS3_S3_RS1_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorIi13std_allocatorIiEE12_M_check_lenEmPKc.exit.i
  %.not.i29.i = icmp eq ptr %i.c, null
  br i1 %.not.i29.i, label %_ZNSt12_Vector_baseIi13std_allocatorIiEE13_M_deallocateEPim.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIi13std_allocatorIiEE11_S_relocateEPiS3_S3_RS1_.exit.i
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.c)
  br label %_ZNSt12_Vector_baseIi13std_allocatorIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIi13std_allocatorIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.e, %_ZNSt6vectorIi13std_allocatorIiEE11_S_relocateEPiS3_S3_RS1_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !57
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.i
  store ptr %i.an, ptr %i.a, align 8, !tbaa !101
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ao, ptr %i.j, align 8, !tbaa !105
  br label %_ZNSt6vectorIi13std_allocatorIiEE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.ap = icmp ult i64 %1, %i.g
  br i1 %i.ap, label %bb.g, label %_ZNSt6vectorIi13std_allocatorIiEE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.aq
  br i1 %.not.i4, label %_ZNSt6vectorIi13std_allocatorIiEE17_M_default_appendEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !101
  br label %_ZNSt6vectorIi13std_allocatorIiEE17_M_default_appendEm.exit

_ZNSt6vectorIi13std_allocatorIiEE17_M_default_appendEm.exit: ; preds = %bb.h, %bb.g, %_ZNSt12_Vector_baseIi13std_allocatorIiEE13_M_deallocateEPim.exit.i, %_ZSt27__uninitialized_default_n_aIPim13std_allocatorIiEET_S3_T0_RT1_.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEEC2ERNS_13static_matrixIS1_S3_EER6vectorIjLb1EjESA_RSt6vectorIi13std_allocatorIiEERS8_IS3_Lb1EjERS8_IS1_Lb1EjERNS_11lp_settingsERKNS_12column_namerERKS8_INS_11column_typeELb1EjERKSG_SU_(ptr noundef nonnull align 8 dereferenceable(217) %0, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 1 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(412) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 1 %10, ptr noundef nonnull align 1 %11) unnamed_addr #0 comdat($_ZN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEEC5ERNS_13static_matrixIS1_S3_EER6vectorIjLb1EjESA_RSt6vectorIi13std_allocatorIiEERS8_IS3_Lb1EjERS8_IS1_Lb1EjERNS_11lp_settingsERKNS_12column_namerERKS8_INS_11column_typeELb1EjERKSG_SU_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEEE, i64 16), ptr %0, align 8, !tbaa !109
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !173
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.b, align 4, !tbaa !174
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 10, ptr %i.c, align 8, !tbaa !175
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 24
  %i.m = trunc i64 %i.l to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.m, i32 1024) ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  invoke void @_ZN6vectorIiLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !110 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4 ; 2 uses
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !59 ; 2 uses
  %i.o = zext i32 %.pre2.i.i to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %i.o
  store i32 -1, ptr %i.p, align 4, !tbaa !59
  %i.q = add i32 %.pre2.i.i, 1
  store i32 %i.q, ptr %.phi.trans.insert.i.i, align 4, !tbaa !59
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !110  ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i.i.preheader, label %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i.i.i

_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i.i.i:     ; preds = %bb.b
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !59   ; 2 uses
  %.not16.i.i.i = icmp ugt i32 %.sroa.speculated, %i.u
  br i1 %.not16.i.i.i, label %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i.i.preheader, label %bb.c

_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i.i.preheader:  ; preds = %bb.b, %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i.i.i
  %.ph = phi ptr [ %i.r, %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i.i.i ], [ null, %bb.b ]
  %.0.i17.i.i.i.ph = phi i32 [ %i.u, %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i.i.i ], [ 0, %bb.b ] ; 2 uses
  br label %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i.i.i
  store i32 %.sroa.speculated, ptr %i.t, align 4, !tbaa !59
  br label %_ZN4heapIN2lp8lpvar_ltEEC2EiRKS1_.exit

_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i.i:            ; preds = %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i.i.preheader, %.noexc5.i
  %i.v = phi ptr [ %.pr.pre.i.i.i, %.noexc5.i ], [ %.ph, %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i.i.preheader ] ; 4 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZNK6vectorIiLb0EjE8capacityEv.exit.thread.i.i.i, label %_ZNK6vectorIiLb0EjE8capacityEv.exit.i.i.i

_ZNK6vectorIiLb0EjE8capacityEv.exit.i.i.i:        ; preds = %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i.i
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !59
  %i.z = icmp ugt i32 %.sroa.speculated, %i.y
  br i1 %i.z, label %_ZNK6vectorIiLb0EjE8capacityEv.exit.thread.i.i.i, label %bb.d

_ZNK6vectorIiLb0EjE8capacityEv.exit.thread.i.i.i: ; preds = %_ZNK6vectorIiLb0EjE8capacityEv.exit.i.i.i, %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i.i
  invoke void @_ZN6vectorIiLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %.noexc5.i unwind label %bb.f

.noexc5.i:                                        ; preds = %_ZNK6vectorIiLb0EjE8capacityEv.exit.thread.i.i.i
  %.pr.pre.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !110
  br label %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i.i, !llvm.loop !0

bb.d:                                             ; preds = %_ZNK6vectorIiLb0EjE8capacityEv.exit.i.i.i
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 -4
  store i32 %.sroa.speculated, ptr %i.aa, align 4, !tbaa !59
  %.not1319.i.i.i = icmp eq i32 %.0.i17.i.i.i.ph, %.sroa.speculated
  br i1 %.not1319.i.i.i, label %_ZN4heapIN2lp8lpvar_ltEEC2EiRKS1_.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.ab = zext i32 %.sroa.speculated to i64
  %i.ac = zext i32 %.0.i17.i.i.i.ph to i64        ; 2 uses
  %i.ad = getelementptr [4 x i8], ptr %i.v, i64 %i.ac
  %i.ae = sub nsw i64 %i.ab, %i.ac
  %i.af = shl nsw i64 %i.ae, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ad, i8 0, i64 %i.af, i1 false), !tbaa !59
  br label %_ZN4heapIN2lp8lpvar_ltEEC2EiRKS1_.exit

bb.e:                                             ; preds = %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZNK6vectorIiLb0EjE8capacityEv.exit.thread.i.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.g ], [ %.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.ah, %bb.f ], [ %i.ag, %bb.e ]
  tail call void @_ZN6vectorIiLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #19
  tail call void @_ZN6vectorIiLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %i.d) #19
  br label %common.resume

_ZN4heapIN2lp8lpvar_ltEEC2EiRKS1_.exit:           ; preds = %bb.c, %bb.d, %.lr.ph.preheader.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !48
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = sdiv exact i64 %i.an, 24
  %i.ap = and i64 %i.ao, 4294967295               ; 2 uses
  %.not.i = icmp eq i64 %i.ap, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, i8 0, i64 48, i1 false)
  br i1 %.not.i, label %bb.j, label %bb.h

end_hunk_0
begin_hunk_1_@_ZNSt6vectorIi13std_allocatorIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS2_EEmRKi:bb.a

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ao = add nsw i64 %.idx, -4                   ; 2 uses
  %i.ap = lshr exact i64 %i.ao, 2
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check176 = icmp ult i64 %i.ao, 28
  br i1 %min.iters.check176, label %.lr.ph.i.i.i.preheader, label %vector.ph177

vector.ph177:                                     ; preds = %bb.h
  %n.vec178 = and i64 %i.aq, 9223372036854775800  ; 3 uses
  %i.ar = shl i64 %n.vec178, 2
  %i.as = getelementptr i8, ptr %1, i64 %i.ar
  %broadcast.splatinsert179 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat180 = shufflevector <4 x i32> %broadcast.splatinsert179, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph177
  %index182 = phi i64 [ 0, %vector.ph177 ], [ %index.next184, %vector.body181 ] ; 2 uses
  %i.at = shl i64 %index182, 2
  %next.gep183 = getelementptr i8, ptr %1, i64 %i.at ; 2 uses
  %i.au = getelementptr i8, ptr %next.gep183, i64 16
  store <4 x i32> %broadcast.splat180, ptr %next.gep183, align 4, !tbaa !59
  store <4 x i32> %broadcast.splat180, ptr %i.au, align 4, !tbaa !59
  %index.next184 = add nuw i64 %index182, 8       ; 2 uses
  %i.av = icmp eq i64 %index.next184, %n.vec178
  br i1 %i.av, label %middle.block185, label %vector.body181, !llvm.loop !224

middle.block185:                                  ; preds = %vector.body181
  %cmp.n186 = icmp eq i64 %i.aq, %n.vec178
  br i1 %cmp.n186, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.h, %middle.block185
  %.06.i.i.i.ph = phi ptr [ %1, %bb.h ], [ %i.as, %middle.block185 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !59
  %i.aw = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aw, %i.an
  br i1 %.not.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !225

bb.i:                                             ; preds = %bb.c
  %i.ax = sub nuw i64 %2, %i.l                    ; 6 uses
  %.not8.i = icmp eq i64 %i.ax, 0
  br i1 %.not8.i, label %_ZSt24__uninitialized_fill_n_aIPimi13std_allocatorIiEET_S3_T0_RKT1_RT2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.i
  %min.iters.check = icmp ult i64 %i.ax, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader244, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.ax, -8                      ; 3 uses
  %i.ay = shl i64 %n.vec, 2
  %i.az = getelementptr i8, ptr %i.d, i64 %i.ay   ; 2 uses
  %i.ba = and i64 %i.ax, 7
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.bb ; 2 uses
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !59
  store <4 x i32> %broadcast.splat, ptr %i.bc, align 4, !tbaa !59
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !226

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPimi13std_allocatorIiEET_S3_T0_RKT1_RT2_.exit, label %.lr.ph.i.preheader244

.lr.ph.i.preheader244:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.010.i.ph = phi ptr [ %i.d, %.lr.ph.i.preheader ], [ %i.az, %middle.block ]
  %.079.i.ph = phi i64 [ %i.ax, %.lr.ph.i.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader244, %.lr.ph.i
  %.010.i = phi ptr [ %i.bf, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader244 ] ; 2 uses
  %.079.i = phi i64 [ %i.be, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader244 ]
  store i32 %i.i, ptr %.010.i, align 4, !tbaa !59
  %i.be = add i64 %.079.i, -1                     ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %.not.i = icmp eq i64 %i.be, 0
  br i1 %.not.i, label %_ZSt24__uninitialized_fill_n_aIPimi13std_allocatorIiEET_S3_T0_RKT1_RT2_.exit, label %.lr.ph.i, !llvm.loop !227

_ZSt24__uninitialized_fill_n_aIPimi13std_allocatorIiEET_S3_T0_RKT1_RT2_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.i
  %.0.lcssa.i = phi ptr [ %i.d, %bb.i ], [ %i.az, %middle.block ], [ %i.bf, %.lr.ph.i ] ; 6 uses
  %i.bg = icmp eq ptr %1, %i.d
  br i1 %i.bg, label %_ZSt22__uninitialized_move_aIPiS0_13std_allocatorIiEET0_T_S4_S3_RT1_.exit72.thread, label %.lr.ph.i.i68.preheader

.lr.ph.i.i68.preheader:                           ; preds = %_ZSt24__uninitialized_fill_n_aIPimi13std_allocatorIiEET_S3_T0_RKT1_RT2_.exit
  %.0.lcssa.i132 = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.bh = add i64 %i.f, -4
  %i.bi = sub i64 %i.bh, %i.j                     ; 2 uses
  %i.bj = lshr i64 %i.bi, 2
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check134 = icmp ult i64 %i.bi, 44
  %i.bl = sub i64 %i.j, %.0.lcssa.i132
  %diff.check = icmp ugt i64 %i.bl, -32
  %or.cond = select i1 %min.iters.check134, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i68.preheader243, label %vector.ph135

vector.ph135:                                     ; preds = %.lr.ph.i.i68.preheader
  %n.vec136 = and i64 %i.bk, 9223372036854775800  ; 3 uses
  %i.bm = shl i64 %n.vec136, 2                    ; 2 uses
  %i.bn = getelementptr i8, ptr %.0.lcssa.i, i64 %i.bm
  %i.bo = getelementptr i8, ptr %1, i64 %i.bm
  br label %vector.body137

vector.body137:                                   ; preds = %vector.body137, %vector.ph135
  %index138 = phi i64 [ 0, %vector.ph135 ], [ %index.next142, %vector.body137 ] ; 2 uses
  %i.bp = shl i64 %index138, 2                    ; 2 uses
  %next.gep139 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.bp ; 2 uses
  %next.gep140 = getelementptr i8, ptr %1, i64 %i.bp ; 2 uses
  %i.bq = getelementptr i8, ptr %next.gep140, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep140, align 4, !tbaa !59
  %wide.load141 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !59
  %i.br = getelementptr i8, ptr %next.gep139, i64 16
  store <4 x i32> %wide.load, ptr %next.gep139, align 4, !tbaa !59
  store <4 x i32> %wide.load141, ptr %i.br, align 4, !tbaa !59
  %index.next142 = add nuw i64 %index138, 8       ; 2 uses
  %i.bs = icmp eq i64 %index.next142, %n.vec136
  br i1 %i.bs, label %middle.block143, label %vector.body137, !llvm.loop !228

middle.block143:                                  ; preds = %vector.body137
  %cmp.n144 = icmp eq i64 %i.bk, %n.vec136
  br i1 %cmp.n144, label %_ZSt22__uninitialized_move_aIPiS0_13std_allocatorIiEET0_T_S4_S3_RT1_.exit72, label %.lr.ph.i.i68.preheader243

.lr.ph.i.i68.preheader243:                        ; preds = %.lr.ph.i.i68.preheader, %middle.block143
  %.09.i.i69.ph = phi ptr [ %.0.lcssa.i, %.lr.ph.i.i68.preheader ], [ %i.bn, %middle.block143 ]
  %.sroa.05.08.i.i70.ph = phi ptr [ %1, %.lr.ph.i.i68.preheader ], [ %i.bo, %middle.block143 ]
  br label %.lr.ph.i.i68

_ZSt22__uninitialized_move_aIPiS0_13std_allocatorIiEET0_T_S4_S3_RT1_.exit72.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPimi13std_allocatorIiEET_S3_T0_RKT1_RT2_.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 %i.k
  store ptr %i.bt, ptr %i.c, align 8, !tbaa !101
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

.lr.ph.i.i68:                                     ; preds = %.lr.ph.i.i68.preheader243, %.lr.ph.i.i68
  %.09.i.i69 = phi ptr [ %i.bw, %.lr.ph.i.i68 ], [ %.09.i.i69.ph, %.lr.ph.i.i68.preheader243 ] ; 2 uses
  %.sroa.05.08.i.i70 = phi ptr [ %i.bv, %.lr.ph.i.i68 ], [ %.sroa.05.08.i.i70.ph, %.lr.ph.i.i68.preheader243 ] ; 2 uses
  %i.bu = load i32, ptr %.sroa.05.08.i.i70, align 4, !tbaa !59
  store i32 %i.bu, ptr %.09.i.i69, align 4, !tbaa !59
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i70, i64 4 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.09.i.i69, i64 4
  %i.bx = icmp eq ptr %i.bv, %i.d
  br i1 %i.bx, label %_ZSt22__uninitialized_move_aIPiS0_13std_allocatorIiEET0_T_S4_S3_RT1_.exit72, label %.lr.ph.i.i68, !llvm.loop !229

_ZSt22__uninitialized_move_aIPiS0_13std_allocatorIiEET0_T_S4_S3_RT1_.exit72: ; preds = %.lr.ph.i.i68, %middle.block143
  %i.by = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 %i.k
  store ptr %i.by, ptr %i.c, align 8, !tbaa !101
  %i.bz = add i64 %i.f, -4
  %i.ca = sub i64 %i.bz, %i.j                     ; 2 uses
  %i.cb = lshr i64 %i.ca, 2
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check148 = icmp ult i64 %i.ca, 28
  br i1 %min.iters.check148, label %.lr.ph.i.i.i74.preheader, label %vector.ph149

vector.ph149:                                     ; preds = %_ZSt22__uninitialized_move_aIPiS0_13std_allocatorIiEET0_T_S4_S3_RT1_.exit72
  %n.vec150 = and i64 %i.cc, 9223372036854775800  ; 3 uses
  %i.cd = shl i64 %n.vec150, 2
  %i.ce = getelementptr i8, ptr %1, i64 %i.cd
  %broadcast.splatinsert151 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat152 = shufflevector <4 x i32> %broadcast.splatinsert151, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph149
  %index154 = phi i64 [ 0, %vector.ph149 ], [ %index.next156, %vector.body153 ] ; 2 uses
  %i.cf = shl i64 %index154, 2
  %next.gep155 = getelementptr i8, ptr %1, i64 %i.cf ; 2 uses
  %i.cg = getelementptr i8, ptr %next.gep155, i64 16
  store <4 x i32> %broadcast.splat152, ptr %next.gep155, align 4, !tbaa !59
  store <4 x i32> %broadcast.splat152, ptr %i.cg, align 4, !tbaa !59
  %index.next156 = add nuw i64 %index154, 8       ; 2 uses
  %i.ch = icmp eq i64 %index.next156, %n.vec150
  br i1 %i.ch, label %middle.block157, label %vector.body153, !llvm.loop !230

middle.block157:                                  ; preds = %vector.body153
  %cmp.n158 = icmp eq i64 %i.cc, %n.vec150
  br i1 %cmp.n158, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i74.preheader

.lr.ph.i.i.i74.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPiS0_13std_allocatorIiEET0_T_S4_S3_RT1_.exit72, %middle.block157
  %.06.i.i.i75.ph = phi ptr [ %1, %_ZSt22__uninitialized_move_aIPiS0_13std_allocatorIiEET0_T_S4_S3_RT1_.exit72 ], [ %i.ce, %middle.block157 ]
  br label %.lr.ph.i.i.i74

.lr.ph.i.i.i74:                                   ; preds = %.lr.ph.i.i.i74.preheader, %.lr.ph.i.i.i74
  %.06.i.i.i75 = phi ptr [ %i.ci, %.lr.ph.i.i.i74 ], [ %.06.i.i.i75.ph, %.lr.ph.i.i.i74.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i75, align 4, !tbaa !59
  %i.ci = getelementptr inbounds nuw i8, ptr %.06.i.i.i75, i64 4 ; 2 uses
  %.not.i.i.i76 = icmp eq ptr %i.ci, %i.d
  br i1 %.not.i.i.i76, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i74, !llvm.loop !231

bb.j:                                             ; preds = %bb.b
  %i.cj = load ptr, ptr %0, align 8, !tbaa !57    ; 7 uses
  %i.ck = ptrtoint ptr %i.cj to i64               ; 4 uses
  %i.cl = sub i64 %i.f, %i.ck
  %i.cm = ashr exact i64 %i.cl, 2                 ; 4 uses
  %i.cn = sub nsw i64 2305843009213693951, %i.cm
  %i.co = icmp ult i64 %i.cn, %2
  br i1 %i.co, label %bb.k, label %_ZNKSt6vectorIi13std_allocatorIiEE12_M_check_lenEmPKc.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #23
  unreachable

_ZNKSt6vectorIi13std_allocatorIiEE12_M_check_lenEmPKc.exit: ; preds = %bb.j
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cm, i64 %2)
  %i.cp = add nsw i64 %.sroa.speculated.i, %i.cm  ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.cm
  %i.cr = tail call i64 @llvm.umin.i64(i64 %i.cp, i64 2305843009213693951)
  %i.cs = select i1 %i.cq, i64 2305843009213693951, i64 %i.cr ; 3 uses
  %i.ct = ptrtoint ptr %1 to i64                  ; 4 uses
  %i.cu = sub i64 %i.ct, %i.ck
  %.not.i78 = icmp eq i64 %i.cs, 0
  br i1 %.not.i78, label %.lr.ph.preheader.i80, label %bb.l

bb.l:                                             ; preds = %_ZNKSt6vectorIi13std_allocatorIiEE12_M_check_lenEmPKc.exit
  %i.cv = shl nuw nsw i64 %i.cs, 2
  %i.cw = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.cv)
  br label %.lr.ph.preheader.i80

.lr.ph.preheader.i80:                             ; preds = %bb.l, %_ZNKSt6vectorIi13std_allocatorIiEE12_M_check_lenEmPKc.exit
  %i.cx = phi ptr [ %i.cw, %bb.l ], [ null, %_ZNKSt6vectorIi13std_allocatorIiEE12_M_check_lenEmPKc.exit ] ; 8 uses
  %4 = ptrtoaddr ptr %i.cx to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cu ; 3 uses
  %.pre.i81 = load i32, ptr %3, align 4, !tbaa !59 ; 2 uses
  %min.iters.check189 = icmp ult i64 %2, 8
  br i1 %min.iters.check189, label %.lr.ph.i82.preheader, label %vector.ph190

vector.ph190:                                     ; preds = %.lr.ph.preheader.i80
  %n.vec191 = and i64 %2, -8                      ; 3 uses
  %i.cz = shl i64 %n.vec191, 2
  %i.da = getelementptr i8, ptr %i.cy, i64 %i.cz
  %i.db = and i64 %2, 7
  %broadcast.splatinsert192 = insertelement <4 x i32> poison, i32 %.pre.i81, i64 0
  %broadcast.splat193 = shufflevector <4 x i32> %broadcast.splatinsert192, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body194

vector.body194:                                   ; preds = %vector.body194, %vector.ph190
  %index195 = phi i64 [ 0, %vector.ph190 ], [ %index.next197, %vector.body194 ] ; 2 uses
  %i.dc = shl i64 %index195, 2
  %next.gep196 = getelementptr i8, ptr %i.cy, i64 %i.dc ; 2 uses
  %i.dd = getelementptr i8, ptr %next.gep196, i64 16
  store <4 x i32> %broadcast.splat193, ptr %next.gep196, align 4, !tbaa !59
  store <4 x i32> %broadcast.splat193, ptr %i.dd, align 4, !tbaa !59
  %index.next197 = add nuw i64 %index195, 8       ; 2 uses
  %i.de = icmp eq i64 %index.next197, %n.vec191
  br i1 %i.de, label %middle.block198, label %vector.body194, !llvm.loop !232

middle.block198:                                  ; preds = %vector.body194
  %cmp.n199 = icmp eq i64 %2, %n.vec191
  br i1 %cmp.n199, label %_ZSt24__uninitialized_fill_n_aIPimi13std_allocatorIiEET_S3_T0_RKT1_RT2_.exit87, label %.lr.ph.i82.preheader

.lr.ph.i82.preheader:                             ; preds = %.lr.ph.preheader.i80, %middle.block198
  %.010.i83.ph = phi ptr [ %i.cy, %.lr.ph.preheader.i80 ], [ %i.da, %middle.block198 ]
  %.079.i84.ph = phi i64 [ %2, %.lr.ph.preheader.i80 ], [ %i.db, %middle.block198 ]
  br label %.lr.ph.i82

.lr.ph.i82:                                       ; preds = %.lr.ph.i82.preheader, %.lr.ph.i82
  %.010.i83 = phi ptr [ %i.dg, %.lr.ph.i82 ], [ %.010.i83.ph, %.lr.ph.i82.preheader ] ; 2 uses
  %.079.i84 = phi i64 [ %i.df, %.lr.ph.i82 ], [ %.079.i84.ph, %.lr.ph.i82.preheader ]
  store i32 %.pre.i81, ptr %.010.i83, align 4, !tbaa !59
  %i.df = add i64 %.079.i84, -1                   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.010.i83, i64 4
  %.not.i85 = icmp eq i64 %i.df, 0
  br i1 %.not.i85, label %_ZSt24__uninitialized_fill_n_aIPimi13std_allocatorIiEET_S3_T0_RKT1_RT2_.exit87, label %.lr.ph.i82, !llvm.loop !233

_ZSt24__uninitialized_fill_n_aIPimi13std_allocatorIiEET_S3_T0_RKT1_RT2_.exit87: ; preds = %.lr.ph.i82, %middle.block198
  %i.dh = icmp eq ptr %i.cj, %1
  br i1 %i.dh, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_13std_allocatorIiEET0_T_S4_S3_RT1_.exit, label %.lr.ph.i.i88.preheader

.lr.ph.i.i88.preheader:                           ; preds = %_ZSt24__uninitialized_fill_n_aIPimi13std_allocatorIiEET_S3_T0_RKT1_RT2_.exit87
  %i.di = add i64 %i.ct, -4
  %i.dj = sub i64 %i.di, %i.ck                    ; 2 uses
  %i.dk = lshr i64 %i.dj, 2
  %i.dl = add nuw nsw i64 %i.dk, 1                ; 2 uses
  %min.iters.check205 = icmp ult i64 %i.dj, 44
  %5 = sub i64 %i.ck, %4
  %diff.check203 = icmp ugt i64 %5, -32
  %or.cond237 = or i1 %min.iters.check205, %diff.check203
  br i1 %or.cond237, label %.lr.ph.i.i88.preheader239, label %vector.ph206

vector.ph206:                                     ; preds = %.lr.ph.i.i88.preheader
  %n.vec207 = and i64 %i.dl, 9223372036854775800  ; 3 uses
  %i.dm = shl i64 %n.vec207, 2                    ; 2 uses
  %i.dn = getelementptr i8, ptr %i.cx, i64 %i.dm  ; 2 uses
  %i.do = getelementptr i8, ptr %i.cj, i64 %i.dm
  br label %vector.body208

vector.body208:                                   ; preds = %vector.body208, %vector.ph206
  %index209 = phi i64 [ 0, %vector.ph206 ], [ %index.next214, %vector.body208 ] ; 2 uses
  %i.dp = shl i64 %index209, 2                    ; 2 uses
  %next.gep210 = getelementptr i8, ptr %i.cx, i64 %i.dp ; 2 uses
  %next.gep211 = getelementptr i8, ptr %i.cj, i64 %i.dp ; 2 uses
  %i.dq = getelementptr i8, ptr %next.gep211, i64 16
  %wide.load212 = load <4 x i32>, ptr %next.gep211, align 4, !tbaa !59
  %wide.load213 = load <4 x i32>, ptr %i.dq, align 4, !tbaa !59
  %i.dr = getelementptr i8, ptr %next.gep210, i64 16
  store <4 x i32> %wide.load212, ptr %next.gep210, align 4, !tbaa !59
  store <4 x i32> %wide.load213, ptr %i.dr, align 4, !tbaa !59
  %index.next214 = add nuw i64 %index209, 8       ; 2 uses
  %i.ds = icmp eq i64 %index.next214, %n.vec207
  br i1 %i.ds, label %middle.block215, label %vector.body208, !llvm.loop !234

middle.block215:                                  ; preds = %vector.body208
  %cmp.n216 = icmp eq i64 %i.dl, %n.vec207
  br i1 %cmp.n216, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_13std_allocatorIiEET0_T_S4_S3_RT1_.exit, label %.lr.ph.i.i88.preheader239

.lr.ph.i.i88.preheader239:                        ; preds = %.lr.ph.i.i88.preheader, %middle.block215
  %.09.i.i89.ph = phi ptr [ %i.cx, %.lr.ph.i.i88.preheader ], [ %i.dn, %middle.block215 ]
  %.sroa.05.08.i.i90.ph = phi ptr [ %i.cj, %.lr.ph.i.i88.preheader ], [ %i.do, %middle.block215 ]
  br label %.lr.ph.i.i88

.lr.ph.i.i88:                                     ; preds = %.lr.ph.i.i88.preheader239, %.lr.ph.i.i88
  %.09.i.i89 = phi ptr [ %i.dv, %.lr.ph.i.i88 ], [ %.09.i.i89.ph, %.lr.ph.i.i88.preheader239 ] ; 2 uses
  %.sroa.05.08.i.i90 = phi ptr [ %i.du, %.lr.ph.i.i88 ], [ %.sroa.05.08.i.i90.ph, %.lr.ph.i.i88.preheader239 ] ; 2 uses
  %i.dt = load i32, ptr %.sroa.05.08.i.i90, align 4, !tbaa !59
  store i32 %i.dt, ptr %.09.i.i89, align 4, !tbaa !59
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i90, i64 4 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.09.i.i89, i64 4 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %1
  br i1 %i.dw, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_13std_allocatorIiEET0_T_S4_S3_RT1_.exit, label %.lr.ph.i.i88, !llvm.loop !235

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_13std_allocatorIiEET0_T_S4_S3_RT1_.exit: ; preds = %.lr.ph.i.i88, %middle.block215, %_ZSt24__uninitialized_fill_n_aIPimi13std_allocatorIiEET_S3_T0_RKT1_RT2_.exit87
  %.0.lcssa.i.i91 = phi ptr [ %i.cx, %_ZSt24__uninitialized_fill_n_aIPimi13std_allocatorIiEET_S3_T0_RKT1_RT2_.exit87 ], [ %i.dn, %middle.block215 ], [ %i.dv, %.lr.ph.i.i88 ] ; 2 uses
  %.0.lcssa.i.i91220 = ptrtoaddr ptr %.0.lcssa.i.i91 to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.0.lcssa.i.i91, i64 %2 ; 5 uses
  %i.dy = icmp eq ptr %1, %i.d
  br i1 %i.dy, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_13std_allocatorIiEET0_T_S4_S3_RT1_.exit96, label %.lr.ph.i.i92.preheader

.lr.ph.i.i92.preheader:                           ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_13std_allocatorIiEET0_T_S4_S3_RT1_.exit
  %i.dz = add i64 %i.f, -4
  %i.ea = sub i64 %i.dz, %i.ct                    ; 2 uses
  %i.eb = lshr i64 %i.ea, 2
  %i.ec = add nuw nsw i64 %i.eb, 1                ; 2 uses
  %min.iters.check223 = icmp ult i64 %i.ea, 76
  br i1 %min.iters.check223, label %.lr.ph.i.i92.preheader238, label %vector.memcheck219

vector.memcheck219:                               ; preds = %.lr.ph.i.i92.preheader
  %i.ed = shl i64 %2, 2
  %i.ee = add i64 %i.ed, %.0.lcssa.i.i91220
  %i.ef = sub i64 %i.ct, %i.ee
  %diff.check221 = icmp ugt i64 %i.ef, -32
  br i1 %diff.check221, label %.lr.ph.i.i92.preheader238, label %vector.ph224

vector.ph224:                                     ; preds = %vector.memcheck219
  %n.vec225 = and i64 %i.ec, 9223372036854775800  ; 3 uses
  %i.eg = shl i64 %n.vec225, 2                    ; 2 uses
  %i.eh = getelementptr i8, ptr %i.dx, i64 %i.eg  ; 2 uses
  %i.ei = getelementptr i8, ptr %1, i64 %i.eg
  br label %vector.body226

vector.body226:                                   ; preds = %vector.body226, %vector.ph224
  %index227 = phi i64 [ 0, %vector.ph224 ], [ %index.next232, %vector.body226 ] ; 2 uses
  %i.ej = shl i64 %index227, 2                    ; 2 uses
  %next.gep228 = getelementptr i8, ptr %i.dx, i64 %i.ej ; 2 uses
  %next.gep229 = getelementptr i8, ptr %1, i64 %i.ej ; 2 uses
  %i.ek = getelementptr i8, ptr %next.gep229, i64 16
  %wide.load230 = load <4 x i32>, ptr %next.gep229, align 4, !tbaa !59
  %wide.load231 = load <4 x i32>, ptr %i.ek, align 4, !tbaa !59
  %i.el = getelementptr i8, ptr %next.gep228, i64 16
  store <4 x i32> %wide.load230, ptr %next.gep228, align 4, !tbaa !59
  store <4 x i32> %wide.load231, ptr %i.el, align 4, !tbaa !59
  %index.next232 = add nuw i64 %index227, 8       ; 2 uses
  %i.em = icmp eq i64 %index.next232, %n.vec225
  br i1 %i.em, label %middle.block233, label %vector.body226, !llvm.loop !236

middle.block233:                                  ; preds = %vector.body226
  %cmp.n234 = icmp eq i64 %i.ec, %n.vec225
  br i1 %cmp.n234, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_13std_allocatorIiEET0_T_S4_S3_RT1_.exit96, label %.lr.ph.i.i92.preheader238

.lr.ph.i.i92.preheader238:                        ; preds = %vector.memcheck219, %.lr.ph.i.i92.preheader, %middle.block233
  %.09.i.i93.ph = phi ptr [ %i.dx, %vector.memcheck219 ], [ %i.dx, %.lr.ph.i.i92.preheader ], [ %i.eh, %middle.block233 ]
  %.sroa.05.08.i.i94.ph = phi ptr [ %1, %vector.memcheck219 ], [ %1, %.lr.ph.i.i92.preheader ], [ %i.ei, %middle.block233 ]
  br label %.lr.ph.i.i92

.lr.ph.i.i92:                                     ; preds = %.lr.ph.i.i92.preheader238, %.lr.ph.i.i92
  %.09.i.i93 = phi ptr [ %i.ep, %.lr.ph.i.i92 ], [ %.09.i.i93.ph, %.lr.ph.i.i92.preheader238 ] ; 2 uses
  %.sroa.05.08.i.i94 = phi ptr [ %i.eo, %.lr.ph.i.i92 ], [ %.sroa.05.08.i.i94.ph, %.lr.ph.i.i92.preheader238 ] ; 2 uses
  %i.en = load i32, ptr %.sroa.05.08.i.i94, align 4, !tbaa !59
  store i32 %i.en, ptr %.09.i.i93, align 4, !tbaa !59
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i94, i64 4 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.09.i.i93, i64 4 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.d
  br i1 %i.eq, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_13std_allocatorIiEET0_T_S4_S3_RT1_.exit96, label %.lr.ph.i.i92, !llvm.loop !237

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_13std_allocatorIiEET0_T_S4_S3_RT1_.exit96: ; preds = %.lr.ph.i.i92, %middle.block233, %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_13std_allocatorIiEET0_T_S4_S3_RT1_.exit
  %.0.lcssa.i.i95 = phi ptr [ %i.dx, %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_13std_allocatorIiEET0_T_S4_S3_RT1_.exit ], [ %i.eh, %middle.block233 ], [ %i.ep, %.lr.ph.i.i92 ]
  %.not.i97 = icmp eq ptr %i.cj, null
  br i1 %.not.i97, label %_ZNSt12_Vector_baseIi13std_allocatorIiEE13_M_deallocateEPim.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_13std_allocatorIiEET0_T_S4_S3_RT1_.exit96
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cj)
  br label %_ZNSt12_Vector_baseIi13std_allocatorIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIi13std_allocatorIiEE13_M_deallocateEPim.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_13std_allocatorIiEET0_T_S4_S3_RT1_.exit96, %bb.m
  store ptr %i.cx, ptr %0, align 8, !tbaa !57
  store ptr %.0.lcssa.i.i95, ptr %i.c, align 8, !tbaa !101
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cs
  store ptr %i.er, ptr %i.a, align 8, !tbaa !105
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i74, %.lr.ph.i.i.i, %middle.block157, %middle.block185, %_ZSt22__uninitialized_move_aIPiS0_13std_allocatorIiEET0_T_S4_S3_RT1_.exit72.thread, %_ZNSt12_Vector_baseIi13std_allocatorIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIj13std_allocatorIjEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !119    ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIj13std_allocatorIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.a)
          to label %_ZNSt12_Vector_baseIj13std_allocatorIjEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #22
  unreachable

_ZNSt12_Vector_baseIj13std_allocatorIjEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorI8rational13std_allocatorIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !120    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !121  ; 2 uses
  %.not5.i = icmp eq ptr %i.a, %i.c
  br i1 %.not5.i, label %_ZSt8_DestroyIP8rational13std_allocatorIS0_EEvT_S4_RT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt16allocator_traitsI13std_allocatorI8rationalEE7destroyIS1_EEvRS2_PT_.exit.i
  %.06.i = phi ptr [ %i.h, %_ZNSt16allocator_traitsI13std_allocatorI8rationalEE7destroyIS1_EEvRS2_PT_.exit.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !81 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(32) %.06.i)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.b

.noexc.i.i.i.i.i.i:                               ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_ZNSt16allocator_traitsI13std_allocatorI8rationalEE7destroyIS1_EEvRS2_PT_.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i.i.i.i.i.i, %.lr.ph.i
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #22
  unreachable

_ZNSt16allocator_traitsI13std_allocatorI8rationalEE7destroyIS1_EEvRS2_PT_.exit.i: ; preds = %.noexc.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.06.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i, label %_ZSt8_DestroyIP8rational13std_allocatorIS0_EEvT_S4_RT0_.exitthread-pre-split, label %.lr.ph.i, !llvm.loop !3

_ZSt8_DestroyIP8rational13std_allocatorIS0_EEvT_S4_RT0_.exitthread-pre-split: ; preds = %_ZNSt16allocator_traitsI13std_allocatorI8rationalEE7destroyIS1_EEvRS2_PT_.exit.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !120
  br label %_ZSt8_DestroyIP8rational13std_allocatorIS0_EEvT_S4_RT0_.exit

_ZSt8_DestroyIP8rational13std_allocatorIS0_EEvT_S4_RT0_.exit: ; preds = %_ZSt8_DestroyIP8rational13std_allocatorIS0_EEvT_S4_RT0_.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIP8rational13std_allocatorIS0_EEvT_S4_RT0_.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseI8rational13std_allocatorIS0_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIP8rational13std_allocatorIS0_EEvT_S4_RT0_.exit
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.i)
          to label %_ZNSt12_Vector_baseI8rational13std_allocatorIS0_EED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #22
end_hunk_1
begin_hunk_2_@llvm.umax.i32

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nounwind }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { noreturn nounwind }
attributes #23 = { noreturn }
attributes #24 = { builtin nounwind }

!llvm.module.flags = !{!6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !58}
!1 = distinct !{!1, !58}
!2 = distinct !{!2, !58}
!3 = distinct !{!3, !58}
!4 = distinct !{!4, !58}
!5 = distinct !{!5, !58}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"_ZTSN2lp9lp_statusE", !10, i64 0}
!15 = !{!"any pointer", !10, i64 0}
!16 = !{!"p1 int", !15, i64 0}
!17 = !{!"_ZTS6vectorIiLb0EjE", !16, i64 0}
!18 = !{!"_ZTS7svectorIijE", !17, i64 0}
!19 = !{!"_ZTS4heapIN2lp8lpvar_ltEE", !18, i64 0, !18, i64 8}
!20 = !{!"p1 _ZTS8rational", !15, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseI8rational13std_allocatorIS0_EE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!22 = !{!"_ZTSNSt12_Vector_baseI8rational13std_allocatorIS0_EE12_Vector_implE", !21, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseI8rational13std_allocatorIS0_EE", !22, i64 0}
!24 = !{!"_ZTSSt6vectorI8rational13std_allocatorIS0_EE", !23, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIj13std_allocatorIjEE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!26 = !{!"_ZTSNSt12_Vector_baseIj13std_allocatorIjEE12_Vector_implE", !25, i64 0}
!27 = !{!"_ZTSSt12_Vector_baseIj13std_allocatorIjEE", !26, i64 0}
!28 = !{!"_ZTSSt6vectorIj13std_allocatorIjEE", !27, i64 0}
!29 = !{!"_ZTSN2lp14indexed_vectorI8rationalEE", !24, i64 0, !28, i64 24}
!30 = !{!"p1 _ZTSN2lp13static_matrixI8rationalS1_EE", !15, i64 0}
!31 = !{!"p1 _ZTS6vectorIjLb1EjE", !15, i64 0}
!32 = !{!"p1 _ZTSSt6vectorIi13std_allocatorIiEE", !15, i64 0}
!33 = !{!"p1 _ZTS6vectorI8rationalLb1EjE", !15, i64 0}
!34 = !{!"p1 _ZTSN2lp11lp_settingsE", !15, i64 0}
!35 = !{!"p1 _ZTSN2lp12column_namerE", !15, i64 0}
!36 = !{!"_ZTS6vectorI8rationalLb1EjE", !20, i64 0}
!37 = !{!"p1 _ZTS6vectorIN2lp11column_typeELb1EjE", !15, i64 0}
!38 = !{!"_ZTS6vectorIjLb1EjE", !16, i64 0}
!39 = !{!"bool", !10, i64 0}
!40 = !{!"p1 _ZTS16indexed_uint_set", !15, i64 0}
!41 = !{!"_ZTSN2lp19lp_core_solver_baseI8rationalS1_EE", !11, i64 8, !11, i64 12, !14, i64 16, !19, i64 24, !29, i64 40, !30, i64 88, !31, i64 96, !31, i64 104, !32, i64 112, !33, i64 120, !33, i64 128, !34, i64 136, !35, i64 144, !36, i64 152, !37, i64 160, !33, i64 168, !33, i64 176, !11, i64 184, !38, i64 192, !39, i64 200, !40, i64 208, !39, i64 216}
!42 = !{!41, !30, i64 88}
!43 = !{}
!44 = !{i64 8}
!45 = !{!"p1 _ZTSSt6vectorIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE", !15, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN2lp8row_cellINS1_12empty_structEEE13std_allocatorIS4_EES5_IS7_EE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!47 = !{!46, !45, i64 8}
!48 = !{!46, !45, i64 0}
!49 = !{!"p1 _ZTSSt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS3_EE", !15, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN2lp8row_cellI8rationalEE13std_allocatorIS4_EES5_IS7_EE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!51 = !{!50, !49, i64 8}
!52 = !{!50, !49, i64 0}
!53 = !{!41, !32, i64 112}
!54 = !{!41, !31, i64 96}
!55 = !{!38, !16, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseIi13std_allocatorIiEE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!57 = !{!56, !16, i64 0}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!11, !11, i64 0}
!60 = !{!41, !31, i64 104}
!61 = !{!"_ZTSSt14_Rb_tree_color", !10, i64 0}
!62 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !15, i64 0}
!63 = !{!"_ZTSSt18_Rb_tree_node_base", !61, i64 0, !62, i64 8, !62, i64 16, !62, i64 24}
!64 = !{!"long", !10, i64 0}
!65 = !{!"_ZTSSt15_Rb_tree_header", !63, i64 0, !64, i64 32}
!66 = !{!65, !61, i64 0}
!67 = !{!65, !62, i64 8}
!68 = !{!65, !62, i64 16}
!69 = !{!65, !62, i64 24}
!70 = !{!65, !64, i64 32}
!71 = !{!62, !62, i64 0}
!72 = !{!41, !37, i64 160}
!73 = !{!"_ZTS6vectorIN2lp11column_typeELb1EjE", !15, i64 0}
!74 = !{!73, !15, i64 0}
!75 = !{!"_ZTSN2lp11column_typeE", !10, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!41, !33, i64 120}
!78 = !{!36, !20, i64 0}
!79 = !{!41, !33, i64 168}
!80 = !{!"p1 _ZTS11mpq_managerILb1EE", !15, i64 0}
!81 = !{!80, !80, i64 0}
!82 = !{!"p1 _ZTS8mpz_cell", !15, i64 0}
!83 = !{!"_ZTS3mpz", !11, i64 0, !11, i64 4, !11, i64 4, !82, i64 8}
!84 = !{!83, !11, i64 0}
!85 = !{!41, !33, i64 176}
!86 = !{!"p1 _ZTSN2lp8row_cellINS_12empty_structEEE", !15, i64 0}
!87 = !{!86, !86, i64 0}
!88 = !{!"_ZTSN2lp12empty_structE"}
!89 = !{!"_ZTSN2lp8row_cellINS_12empty_structEEE", !11, i64 0, !11, i64 4, !88, i64 8}
!90 = !{!89, !11, i64 0}
!91 = !{!89, !11, i64 4}
!92 = !{!"p1 _ZTSN2lp8row_cellI8rationalEE", !15, i64 0}
!93 = !{!"_ZTSNSt12_Vector_baseIN2lp8row_cellI8rationalEE13std_allocatorIS3_EE17_Vector_impl_dataE", !92, i64 0, !92, i64 8, !92, i64 16}
!94 = !{!93, !92, i64 0}
!95 = !{!83, !82, i64 8}
!96 = !{!"p1 _ZTSN2lp13static_matrixI8rationalNS_12numeric_pairIS1_EEEE", !15, i64 0}
!97 = !{!"p1 _ZTS6vectorIN2lp12numeric_pairI8rationalEELb1EjE", !15, i64 0}
!98 = !{!"_ZTSN2lp19lp_core_solver_baseI8rationalNS_12numeric_pairIS1_EEEE", !11, i64 8, !11, i64 12, !14, i64 16, !19, i64 24, !29, i64 40, !96, i64 88, !31, i64 96, !31, i64 104, !32, i64 112, !97, i64 120, !33, i64 128, !34, i64 136, !35, i64 144, !36, i64 152, !37, i64 160, !97, i64 168, !97, i64 176, !11, i64 184, !38, i64 192, !39, i64 200, !40, i64 208, !39, i64 216}
!99 = !{!98, !32, i64 112}
!100 = !{!98, !96, i64 88}
!101 = !{!56, !16, i64 8}
!102 = !{!98, !31, i64 96}
!103 = !{!"llvm.loop.unroll.disable"}
!104 = !{!98, !31, i64 104}
!105 = !{!56, !16, i64 16}
!106 = !{!"llvm.loop.isvectorized", i32 1}
!107 = !{!"llvm.loop.unroll.runtime.disable"}
!108 = !{!"vtable pointer", !9, i64 0}
!109 = !{!108, !108, i64 0}
!110 = !{!17, !16, i64 0}
!111 = !{!31, !31, i64 0}
!112 = !{!32, !32, i64 0}
!113 = !{!33, !33, i64 0}
!114 = !{!34, !34, i64 0}
!115 = !{!35, !35, i64 0}
!116 = !{!37, !37, i64 0}
!117 = !{!98, !39, i64 200}
!118 = !{!98, !40, i64 208}
!119 = !{!25, !16, i64 0}
!120 = !{!21, !20, i64 0}
!121 = !{!21, !20, i64 8}
!122 = !{!98, !97, i64 120}
!123 = !{!"p1 _ZTSN2lp12numeric_pairI8rationalEE", !15, i64 0}
!124 = !{!"_ZTS6vectorIN2lp12numeric_pairI8rationalEELb1EjE", !123, i64 0}
!125 = !{!124, !123, i64 0}
!126 = !{!41, !40, i64 208}
!127 = !{!"p1 omnipotent char", !15, i64 0}
!128 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !127, i64 0}
!129 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !128, i64 0, !64, i64 8, !10, i64 16}
!130 = !{!129, !127, i64 0}
!131 = !{!10, !10, i64 0}
!132 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0}
!133 = !{!"_ZTS6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EjE", !132, i64 0}
!134 = !{!133, !132, i64 0}
!135 = !{!"_ZTSNSt12_Vector_baseIN2lp8row_cellINS0_12empty_structEEE13std_allocatorIS3_EE17_Vector_impl_dataE", !86, i64 0, !86, i64 8, !86, i64 16}
!136 = !{!135, !86, i64 8}
!137 = !{!135, !86, i64 0}
!138 = !{i64 0, i64 4, !59, i64 4, i64 4, !59}
!139 = !{!"_ZTS6vectorIjLb0EjE", !16, i64 0}
!140 = !{!139, !16, i64 0}
!141 = !{!"_ZTS7svectorIjjE", !139, i64 0}
!142 = !{!"_ZTS16indexed_uint_set", !11, i64 0, !141, i64 8, !141, i64 16}
!143 = !{!142, !11, i64 0}
!144 = !{!"_ZTSN2lp21simplex_strategy_enumE", !10, i64 0}
!145 = !{!144, !144, i64 0}
!146 = !{!93, !92, i64 8}
!147 = !{!82, !82, i64 0}
!148 = !{!92, !92, i64 0}
!149 = !{!"_ZTS3mpq", !83, i64 0, !83, i64 16}
!150 = !{!"_ZTS8rational", !149, i64 0}
!151 = !{!"_ZTSN2lp8row_cellI8rationalEE", !11, i64 0, !11, i64 4, !150, i64 8}
!152 = !{!151, !11, i64 0}
!153 = !{!93, !92, i64 16}
!154 = !{!128, !127, i64 0}
!155 = !{!129, !64, i64 8}
!156 = !{!63, !62, i64 24}
!157 = !{!63, !62, i64 16}
!158 = distinct !{!158, !58}
!159 = distinct !{!159, !58}
!160 = distinct !{!160, !58}
!161 = distinct !{!161, !58}
!162 = distinct !{!162, !58}
!163 = distinct !{!163, !103}
!164 = distinct !{!164, !58}
!165 = distinct !{!165, i1 false, !"_ZSt19__relocate_object_aIii13std_allocatorIiEEvPT_PT0_RT1_"}
!166 = distinct !{!166, !165, !"_ZSt19__relocate_object_aIii13std_allocatorIiEEvPT_PT0_RT1_: argument 0"}
!167 = distinct !{!167, !165, !"_ZSt19__relocate_object_aIii13std_allocatorIiEEvPT_PT0_RT1_: argument 1"}
!168 = distinct !{!168, !58, !106, !107}
!169 = distinct !{!169, !58, !106}
!170 = !{!166}
!171 = !{!167}
!172 = distinct !{!172, !103}
!173 = !{!98, !11, i64 8}
!174 = !{!98, !11, i64 12}
!175 = !{!98, !14, i64 16}
!176 = !{!96, !96, i64 0}
!177 = !{!97, !97, i64 0}
!178 = !{!98, !11, i64 184}
!179 = !{!98, !39, i64 216}
!180 = distinct !{!180, !103}
!181 = !{!41, !11, i64 8}
!182 = !{!41, !11, i64 12}
!183 = !{!41, !14, i64 16}
!184 = !{!30, !30, i64 0}
!185 = !{!41, !11, i64 184}
!186 = !{!41, !39, i64 200}
!187 = !{!41, !39, i64 216}
!188 = distinct !{!188, !58}
!189 = distinct !{!189, !103}
!190 = distinct !{!190, !58}
!191 = !{!41, !35, i64 144}
!192 = !{!98, !35, i64 144}
!193 = distinct !{!193, !58}
!194 = distinct !{!194, !58}
!195 = !{!98, !37, i64 160}
!196 = !{!98, !97, i64 176}
!197 = !{!98, !97, i64 168}
!198 = distinct !{!198, !58}
!199 = distinct !{!199, !58}
!200 = !{!98, !34, i64 136}
!201 = distinct !{!201, !58}
!202 = distinct !{!202, i1 false, !"_ZN2lp11one_of_typeI8rationalEET_v"}
!203 = distinct !{!203, !202, !"_ZN2lp11one_of_typeI8rationalEET_v: argument 0"}
!204 = distinct !{!204, !58}
!205 = !{!203}
!206 = distinct !{!206, i1 false, !"_ZN2lp12zero_of_typeI8rationalEET_v"}
!207 = distinct !{!207, !206, !"_ZN2lp12zero_of_typeI8rationalEET_v: argument 0"}
!208 = !{!207}
!209 = distinct !{!209, !58}
!210 = distinct !{!210, !58}
!211 = !{!41, !34, i64 136}
!212 = distinct !{!212, !58}
!213 = distinct !{!213, i1 false, !"_ZN2lp11one_of_typeI8rationalEET_v"}
!214 = distinct !{!214, !213, !"_ZN2lp11one_of_typeI8rationalEET_v: argument 0"}
!215 = distinct !{!215, !58}
!216 = !{!214}
!217 = distinct !{!217, i1 false, !"_ZN2lp12zero_of_typeI8rationalEET_v"}
!218 = distinct !{!218, !217, !"_ZN2lp12zero_of_typeI8rationalEET_v: argument 0"}
!219 = !{!218}
!220 = distinct !{!220, !58}
!221 = distinct !{!221, !58}
!222 = distinct !{!222, !58, !106, !107}
!223 = distinct !{!223, !58, !107, !106}
!224 = distinct !{!224, !58, !106, !107}
!225 = distinct !{!225, !58, !107, !106}
!226 = distinct !{!226, !58, !106, !107}
!227 = distinct !{!227, !58, !107, !106}
!228 = distinct !{!228, !58, !106, !107}
!229 = distinct !{!229, !58, !106}
!230 = distinct !{!230, !58, !106, !107}
!231 = distinct !{!231, !58, !107, !106}
!232 = distinct !{!232, !58, !106, !107}
!233 = distinct !{!233, !58, !107, !106}
!234 = distinct !{!234, !58, !106, !107}
!235 = distinct !{!235, !58, !106}
!236 = distinct !{!236, !58, !106, !107}
!237 = distinct !{!237, !58, !106}
!238 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!239 = distinct !{!239, !58}
!240 = !{!"p1 _ZTS6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EjE", !15, i64 0}
!241 = !{!"_ZTS6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EjELb1EjE", !240, i64 0}
!242 = !{!241, !240, i64 0}
!243 = distinct !{!243, !58}
!244 = distinct !{!244, !58}
!245 = distinct !{!245, !58}
!246 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!247 = distinct !{!247, !58}
!248 = distinct !{!248, !58}
!249 = distinct !{!249, !58}
!250 = !{!21, !20, i64 16}
!251 = !{!"p1 _ZTSSt6vectorI8rational13std_allocatorIS0_EE", !15, i64 0}
!252 = !{!"_ZTSNSt6vectorI8rational13std_allocatorIS0_EE16_Temporary_valueE", !251, i64 0, !10, i64 8}
!253 = !{!252, !251, i64 0}
!254 = !{!20, !20, i64 0}
!255 = distinct !{!255, !58}
!256 = distinct !{!256, !58}
!257 = distinct !{!257, !58}
!258 = distinct !{!258, !58}
!259 = distinct !{!259, !58}
!260 = distinct !{!260, !58}
!261 = distinct !{!261, !58}
!262 = distinct !{!262, !58}
!263 = !{i8 0, i8 2}
end_hunk_2
