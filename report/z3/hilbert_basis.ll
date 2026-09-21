Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/hilbert_basis?download=true
inline.NumInlined: 1547
inline.NumDeleted: 579
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN13hilbert_basis17select_inequalityEv:bb.a
  %i.ay = getelementptr inbounds i8, ptr %i.av, i64 -4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !93 ; 4 uses
  %i.ba = zext i32 %i.az to i64
  %i.bb = add i32 %i.az, -1
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bc
  %.02599149 = add i32 %i.b, 1                    ; 2 uses
  %i.be = icmp ult i32 %.02599149, %i.az
  br i1 %i.be, label %.lr.ph154, label %.critedge

.lr.ph154:                                        ; preds = %.lr.ph.split, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4sizeEv.exit
  %.02599153 = phi i32 [ %.02599, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4sizeEv.exit ], [ %.02599149, %.lr.ph.split ] ; 4 uses
  %.03096152 = phi i32 [ %.232, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4sizeEv.exit ], [ %i.b, %.lr.ph.split ]
  %.02797151 = phi i32 [ %.229, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4sizeEv.exit ], [ %.06.lcssa.i, %.lr.ph.split ] ; 3 uses
  %.02698150 = phi i32 [ %.2, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4sizeEv.exit ], [ %i.au, %.lr.ph.split ] ; 2 uses
  %i.bf = zext i32 %.02599153 to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !104 ; 5 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_ZN13hilbert_basis16get_num_nonzerosERK6vectorI13checked_int64ILb1EELb1EjE.exit53, label %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.lr.ph.i42

_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.lr.ph.i42: ; preds = %.lr.ph154
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 -4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !93 ; 3 uses
  %.not.i43 = icmp eq i32 %i.bk, 0
  br i1 %.not.i43, label %_ZN13hilbert_basis16get_num_nonzerosERK6vectorI13checked_int64ILb1EELb1EjE.exit53, label %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.preheader.i44

_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.preheader.i44: ; preds = %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.lr.ph.i42
  %wide.trip.count.i45 = zext i32 %i.bk to i64    ; 3 uses
  %min.iters.check159 = icmp ult i32 %i.bk, 4
  br i1 %min.iters.check159, label %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i46.preheader, label %vector.ph160

vector.ph160:                                     ; preds = %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.preheader.i44
  %n.vec161 = and i64 %wide.trip.count.i45, 4294967292 ; 3 uses
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph160
  %index163 = phi i64 [ 0, %vector.ph160 ], [ %index.next168, %vector.body162 ] ; 2 uses
  %vec.phi164.a = phi <2 x i32> [ zeroinitializer, %vector.ph160 ], [ %i.br, %vector.body162 ]
  %vec.phi165 = phi <2 x i32> [ zeroinitializer, %vector.ph160 ], [ %i.bs, %vector.body162 ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %index163 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load166.a = load <2 x i64>, ptr %i.bl, align 8, !tbaa !136
  %wide.load167 = load <2 x i64>, ptr %i.bm, align 8, !tbaa !136
  %i.bn = icmp ne <2 x i64> %wide.load166.a, zeroinitializer
  %i.bo = icmp ne <2 x i64> %wide.load167, zeroinitializer
  %i.bp = zext <2 x i1> %i.bn to <2 x i32>
  %i.bq = zext <2 x i1> %i.bo to <2 x i32>
  %i.br = add <2 x i32> %vec.phi164.a, %i.bp      ; 2 uses
  %i.bs = add <2 x i32> %vec.phi165, %i.bq        ; 2 uses
  %index.next168 = add nuw i64 %index163, 4       ; 2 uses
  %i.bt = icmp eq i64 %index.next168, %n.vec161
  br i1 %i.bt, label %middle.block169, label %vector.body162, !llvm.loop !228

middle.block169:                                  ; preds = %vector.body162
  %bin.rdx170 = add <2 x i32> %i.bs, %i.br
  %i.bu = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx170) ; 2 uses
  %cmp.n171 = icmp eq i64 %n.vec161, %wide.trip.count.i45
  br i1 %cmp.n171, label %_ZN13hilbert_basis16get_num_nonzerosERK6vectorI13checked_int64ILb1EELb1EjE.exit53, label %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i46.preheader

_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i46.preheader: ; preds = %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.preheader.i44, %middle.block169
  %indvars.iv.i47.ph = phi i64 [ 0, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.preheader.i44 ], [ %n.vec161, %middle.block169 ]
  %.06712.i48.ph = phi i32 [ 0, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.preheader.i44 ], [ %i.bu, %middle.block169 ]
  br label %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i46

_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i46: ; preds = %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i46.preheader, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i46
  %indvars.iv.i47 = phi i64 [ %indvars.iv.next.i50, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i46 ], [ %indvars.iv.i47.ph, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i46.preheader ] ; 2 uses
  %.06712.i48 = phi i32 [ %spec.select.i49, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i46 ], [ %.06712.i48.ph, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i46.preheader ]
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.i47
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !136
  %i.bx = icmp ne i64 %i.bw, 0
  %i.by = zext i1 %i.bx to i32
  %spec.select.i49 = add i32 %.06712.i48, %i.by   ; 2 uses
  %indvars.iv.next.i50 = add nuw nsw i64 %indvars.iv.i47, 1 ; 2 uses
  %exitcond.not.i51 = icmp eq i64 %indvars.iv.next.i50, %wide.trip.count.i45
  br i1 %exitcond.not.i51, label %_ZN13hilbert_basis16get_num_nonzerosERK6vectorI13checked_int64ILb1EELb1EjE.exit53, label %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i46, !llvm.loop !229

_ZN13hilbert_basis16get_num_nonzerosERK6vectorI13checked_int64ILb1EELb1EjE.exit53: ; preds = %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i46, %middle.block169, %.lr.ph154, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.lr.ph.i42
  %.06.lcssa.i52 = phi i32 [ 0, %.lr.ph154 ], [ 0, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.lr.ph.i42 ], [ %i.bu, %middle.block169 ], [ %spec.select.i49, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i46 ] ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNK13hilbert_basis10get_weightERKNS_6valuesERK6vectorI13checked_int64ILb1EELb1EjE.exit, %_ZN13hilbert_basis16get_num_nonzerosERK6vectorI13checked_int64ILb1EELb1EjE.exit53
  %.sroa.4.0.i54 = phi i32 [ 0, %_ZN13hilbert_basis16get_num_nonzerosERK6vectorI13checked_int64ILb1EELb1EjE.exit53 ], [ %i.ds, %_ZNK13hilbert_basis10get_weightERKNS_6valuesERK6vectorI13checked_int64ILb1EELb1EjE.exit ] ; 3 uses
  %.010.i55 = phi i32 [ 0, %_ZN13hilbert_basis16get_num_nonzerosERK6vectorI13checked_int64ILb1EELb1EjE.exit53 ], [ %.111.i65, %_ZNK13hilbert_basis10get_weightERKNS_6valuesERK6vectorI13checked_int64ILb1EELb1EjE.exit ] ; 2 uses
  %.0.i56 = phi i32 [ 0, %_ZN13hilbert_basis16get_num_nonzerosERK6vectorI13checked_int64ILb1EELb1EjE.exit53 ], [ %.1.i66, %_ZNK13hilbert_basis10get_weightERKNS_6valuesERK6vectorI13checked_int64ILb1EELb1EjE.exit ] ; 2 uses
  br i1 %i.ab, label %_ZNK13hilbert_basis3endEv.exit.i57, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bz = load i32, ptr %i.ax, align 4, !tbaa !93
  br label %_ZNK13hilbert_basis3endEv.exit.i57

_ZNK13hilbert_basis3endEv.exit.i57:               ; preds = %bb.g, %bb.f
  %.0.i.i.i58 = phi i32 [ %i.bz, %bb.g ], [ 0, %bb.f ]
  %.not.i59 = icmp eq i32 %.sroa.4.0.i54, %.0.i.i.i58
  br i1 %.not.i59, label %_ZN13hilbert_basis16get_ineq_productERK6vectorI13checked_int64ILb1EELb1EjE.exit67, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4backEv.exit.i.i

_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4backEv.exit.i.i: ; preds = %_ZNK13hilbert_basis3endEv.exit.i57
  %i.ca = zext i32 %.sroa.4.0.i54 to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ca
  %.sroa.0.0.copyload.i.i60 = load i32, ptr %i.cb, align 4, !tbaa !93
  %i.cc = load ptr, ptr %i.z, align 8, !tbaa !104
  %i.cd = zext i32 %.sroa.0.0.copyload.i.i60 to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.ba
  %i.cg = load ptr, ptr %i.bd, align 8, !tbaa !104 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %_ZNK13hilbert_basis10get_weightERKNS_6valuesERK6vectorI13checked_int64ILb1EELb1EjE.exit, label %_ZNK13hilbert_basis12get_num_varsEv.exit.i

_ZNK13hilbert_basis12get_num_varsEv.exit.i:       ; preds = %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4backEv.exit.i.i
  %i.ci = getelementptr inbounds i8, ptr %i.cg, i64 -4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !93 ; 2 uses
  %.not.i68 = icmp eq i32 %i.cj, 0
  br i1 %.not.i68, label %_ZNK13hilbert_basis10get_weightERKNS_6valuesERK6vectorI13checked_int64ILb1EELb1EjE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK13hilbert_basis12get_num_varsEv.exit.i
  %wide.trip.count.i69 = zext i32 %i.cj to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN13checked_int64ILb1EEpLERKS0_.exit.i, %.lr.ph.preheader.i
  %indvars.iv.i70 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i71, %_ZN13checked_int64ILb1EEpLERKS0_.exit.i ] ; 3 uses
  %.sroa.07.011.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.dg, %_ZN13checked_int64ILb1EEpLERKS0_.exit.i ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i70
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.i70
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !131
  %.fr.i = freeze i64 %i.cm                       ; 9 uses
  %i.cn = add i64 %.fr.i, 2147483647
  %or.cond29.i = icmp ult i64 %i.cn, 4294967295
  %.pre.i = load i64, ptr %i.cl, align 8, !tbaa !136 ; 8 uses
  br i1 %or.cond29.i, label %bb.h, label %.thread.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.co = add i64 %.pre.i, 2147483647
  %or.cond30.i = icmp ult i64 %i.co, 4294967295
  br i1 %or.cond30.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cp = mul nsw i64 %.pre.i, %.fr.i
  br label %_ZN13checked_int64ILb1EEmLERKS0_.exit

bb.j:                                             ; preds = %bb.h
  %i.cq = icmp eq i64 %.fr.i, 0
  br i1 %i.cq, label %bb.k, label %.thread.i

.thread.i:                                        ; preds = %bb.j, %.lr.ph.i
  %i.cr = icmp eq i64 %.fr.i, 1
  %i.cs = icmp ult i64 %.pre.i, 2
  %or.cond35.i = select i1 %i.cr, i1 true, i1 %i.cs
  br i1 %or.cond35.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread.i, %bb.j
  %i.ct = mul nsw i64 %.pre.i, %.fr.i
  br label %_ZN13checked_int64ILb1EEmLERKS0_.exit

bb.l:                                             ; preds = %.thread.i
  %i.cu = icmp eq i64 %.fr.i, -9223372036854775808
  %i.cv = icmp eq i64 %.pre.i, -9223372036854775808
  %or.cond33.i = or i1 %i.cu, %i.cv
  br i1 %or.cond33.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cw = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.cw, align 8, !tbaa !72
  tail call void @__cxa_throw(ptr nonnull %i.cw, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.cx = tail call i64 @llvm.abs.i64(i64 %.fr.i, i1 true)
  %i.cy = tail call i64 @llvm.abs.i64(i64 %.pre.i, i1 true)
  %mul.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.cy, i64 %i.cx) ; 2 uses
  %mul.val.i = extractvalue { i64, i1 } %mul.i, 0 ; 5 uses
  %mul.ov.i = extractvalue { i64, i1 } %mul.i, 1
  %i.cz = icmp slt i64 %mul.val.i, 0
  %or.cond.i = or i1 %mul.ov.i, %i.cz
  br i1 %or.cond.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.da = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.da, align 8, !tbaa !72
  tail call void @__cxa_throw(ptr nonnull %i.da, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.db = icmp slt i64 %.fr.i, 0
  br i1 %i.db, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dc = icmp sgt i64 %.pre.i, 0
  %i.dd = sub nsw i64 0, %mul.val.i
  %spec.select = select i1 %i.dc, i64 %i.dd, i64 %mul.val.i
  br label %_ZN13checked_int64ILb1EEmLERKS0_.exit

bb.r:                                             ; preds = %bb.p
  %.not.i73 = icmp ne i64 %.fr.i, 0
  %i.de = icmp slt i64 %.pre.i, 0
  %or.cond81 = select i1 %.not.i73, i1 %i.de, i1 false
  %i.df = sub nsw i64 0, %mul.val.i
  %spec.select82 = select i1 %or.cond81, i64 %i.df, i64 %mul.val.i
  br label %_ZN13checked_int64ILb1EEmLERKS0_.exit

_ZN13checked_int64ILb1EEmLERKS0_.exit:            ; preds = %bb.r, %bb.q, %bb.i, %bb.k
  %.sroa.074.0 = phi i64 [ %i.ct, %bb.k ], [ %spec.select82, %bb.r ], [ %i.cp, %bb.i ], [ %spec.select, %bb.q ] ; 3 uses
  %i.dg = add i64 %.sroa.074.0, %.sroa.07.011.i   ; 4 uses
  %i.dh = icmp sgt i64 %.sroa.07.011.i, 0
  br i1 %i.dh, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN13checked_int64ILb1EEmLERKS0_.exit
  %i.di = icmp sgt i64 %.sroa.074.0, 0
  %i.dj = icmp slt i64 %i.dg, 1
  %or.cond.i.i = and i1 %i.di, %i.dj
  br i1 %or.cond.i.i, label %bb.t, label %_ZN13checked_int64ILb1EEpLERKS0_.exit.i

bb.t:                                             ; preds = %bb.s
  %i.dk = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.dk, align 8, !tbaa !72
  tail call void @__cxa_throw(ptr nonnull %i.dk, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.u:                                             ; preds = %_ZN13checked_int64ILb1EEmLERKS0_.exit
  %i.dl = icmp slt i64 %.sroa.07.011.i, 0
  br i1 %i.dl, label %bb.v, label %_ZN13checked_int64ILb1EEpLERKS0_.exit.i

bb.v:                                             ; preds = %bb.u
  %i.dm = icmp slt i64 %.sroa.074.0, 0
  %i.dn = icmp sgt i64 %i.dg, -1
  %or.cond3.i.i = and i1 %i.dm, %i.dn
  br i1 %or.cond3.i.i, label %bb.w, label %_ZN13checked_int64ILb1EEpLERKS0_.exit.i

bb.w:                                             ; preds = %bb.v
  %i.do = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.do, align 8, !tbaa !72
  tail call void @__cxa_throw(ptr nonnull %i.do, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZN13checked_int64ILb1EEpLERKS0_.exit.i:          ; preds = %bb.v, %bb.u, %bb.s
  %indvars.iv.next.i71 = add nuw nsw i64 %indvars.iv.i70, 1 ; 2 uses
  %exitcond.not.i72 = icmp eq i64 %indvars.iv.next.i71, %wide.trip.count.i69
  br i1 %exitcond.not.i72, label %_ZNK13hilbert_basis10get_weightERKNS_6valuesERK6vectorI13checked_int64ILb1EELb1EjE.exit, label %.lr.ph.i, !llvm.loop !8

_ZNK13hilbert_basis10get_weightERKNS_6valuesERK6vectorI13checked_int64ILb1EELb1EjE.exit: ; preds = %_ZN13checked_int64ILb1EEpLERKS0_.exit.i, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4backEv.exit.i.i, %_ZNK13hilbert_basis12get_num_varsEv.exit.i
  %.sroa.07.0.lcssa.i = phi i64 [ 0, %_ZNK13hilbert_basis12get_num_varsEv.exit.i ], [ 0, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4backEv.exit.i.i ], [ %i.dg, %_ZN13checked_int64ILb1EEpLERKS0_.exit.i ] ; 2 uses
  %i.dp = icmp sgt i64 %.sroa.07.0.lcssa.i, 0     ; 2 uses
  %.lobit.i63 = lshr i64 %.sroa.07.0.lcssa.i, 63
  %i.dq = trunc nuw nsw i64 %.lobit.i63 to i32
  %spec.select.i64 = select i1 %i.dp, i32 0, i32 %i.dq
  %.111.i65 = add i32 %spec.select.i64, %.010.i55
  %i.dr = zext i1 %i.dp to i32
  %.1.i66 = add i32 %.0.i56, %i.dr
  %i.ds = add i32 %.sroa.4.0.i54, 1
  br label %bb.f, !llvm.loop !7

_ZN13hilbert_basis16get_ineq_productERK6vectorI13checked_int64ILb1EELb1EjE.exit67: ; preds = %_ZNK13hilbert_basis3endEv.exit.i57
  %i.dt = mul i32 %.0.i56, %.010.i55              ; 3 uses
  %.not37 = icmp eq i32 %i.dt, 0
  br i1 %.not37, label %.critedge, label %bb.x

bb.x:                                             ; preds = %_ZN13hilbert_basis16get_ineq_productERK6vectorI13checked_int64ILb1EELb1EjE.exit67
  %i.du = icmp ult i32 %.06.lcssa.i52, %.02797151
  br i1 %i.du, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dv = icmp eq i32 %.06.lcssa.i52, %.02797151
  %i.dw = icmp ult i32 %i.dt, %.02698150
  %or.cond = and i1 %i.dv, %i.dw
  br i1 %or.cond, label %bb.z, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4sizeEv.exit

bb.z:                                             ; preds = %bb.y, %bb.x
  br label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4sizeEv.exit

_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4sizeEv.exit: ; preds = %bb.y, %bb.z
  %.232 = phi i32 [ %.03096152, %bb.y ], [ %.02599153, %bb.z ] ; 2 uses
  %.229 = phi i32 [ %.02797151, %bb.y ], [ %.06.lcssa.i52, %bb.z ]
  %.2 = phi i32 [ %.02698150, %bb.y ], [ %i.dt, %bb.z ]
  %.02599 = add i32 %.02599153, 1                 ; 2 uses
  %i.dx = icmp ult i32 %.02599, %i.az
  br i1 %i.dx, label %.lr.ph154, label %.critedge, !llvm.loop !230

.critedge:                                        ; preds = %_ZN13hilbert_basis16get_ineq_productERK6vectorI13checked_int64ILb1EELb1EjE.exit67, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4sizeEv.exit, %.lr.ph.split, %.lr.ph, %_ZN13hilbert_basis16get_ineq_productERK6vectorI13checked_int64ILb1EELb1EjE.exit
  %.3 = phi i32 [ %i.b, %.lr.ph ], [ %i.b, %_ZN13hilbert_basis16get_ineq_productERK6vectorI13checked_int64ILb1EELb1EjE.exit ], [ %i.b, %.lr.ph.split ], [ %.232, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4sizeEv.exit ], [ %.02599153, %_ZN13hilbert_basis16get_ineq_productERK6vectorI13checked_int64ILb1EELb1EjE.exit67 ] ; 2 uses
  %i.dy = load i32, ptr %i.a, align 8, !tbaa !107 ; 2 uses
  %.not38 = icmp eq i32 %.3, %i.dy
  br i1 %.not38, label %bb.aa, label %_ZN6vectorI13checked_int64ILb1EELb1EjEaSEOS2_.exit.thread.i

_ZN6vectorI13checked_int64ILb1EELb1EjEaSEOS2_.exit.thread.i: ; preds = %.critedge
  %i.dz = load ptr, ptr %i.c, align 8, !tbaa !106 ; 2 uses
  %i.ea = zext i32 %i.dy to i64                   ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.ea ; 3 uses
  %i.ec = zext i32 %.3 to i64                     ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.ec ; 2 uses
  %i.ee = load ptr, ptr %i.eb, align 8, !tbaa !104
  store ptr null, ptr %i.eb, align 8, !tbaa !104
  %.pr.i = load ptr, ptr %i.ed, align 8, !tbaa !104
  store ptr %.pr.i, ptr %i.eb, align 8, !tbaa !104
  store ptr %i.ee, ptr %i.ed, align 8, !tbaa !104
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !105 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ea ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ec ; 2 uses
  %i.ej = load i8, ptr %i.eh, align 1, !tbaa !135, !range !140, !noundef !116
  %i.ek = load i8, ptr %i.ei, align 1, !tbaa !135, !range !140, !noundef !116
  store i8 %i.ek, ptr %i.eh, align 1, !tbaa !135
  store i8 %i.ej, ptr %i.ei, align 1, !tbaa !135
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN6vectorI13checked_int64ILb1EELb1EjEaSEOS2_.exit.thread.i, %.critedge
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -1, 2) i32 @_ZN13hilbert_basis8saturateERK6vectorI13checked_int64ILb1EELb1EjEb(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::allocator", align 1    ; 4 uses
  %5 = alloca %"class.hilbert_basis::values", align 8 ; 4 uses
  %6 = alloca %"class.hilbert_basis::values", align 8 ; 7 uses
  %7 = alloca %"struct.hilbert_basis::offset_t", align 4 ; 5 uses
  %8 = alloca %"struct.hilbert_basis::offset_t", align 4 ; 5 uses
  %9 = alloca %"class.hilbert_basis::values", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -4
  store i32 0, ptr %i.c, align 4, !tbaa !93
  br label %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE5resetEv.exit

_ZN6vectorIN13hilbert_basis8offset_tELb0EjE5resetEv.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !107
  %i.h = add i32 %i.g, 1
  tail call void @_ZN13hilbert_basis5index5resetEj(ptr noundef nonnull align 8 dereferenceable(1340) %i.e, i32 noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53
  tail call void @_ZN13hilbert_basis8passive25resetEv(ptr noundef nonnull align 8 dereferenceable(120) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 9 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !103  ; 2 uses
  %.not.i40 = icmp eq ptr %i.l, null
  br i1 %.not.i40, label %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE5resetEv.exit41, label %bb.c

bb.c:                                             ; preds = %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE5resetEv.exit
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -4
  store i32 0, ptr %i.m, align 4, !tbaa !93
  br label %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE5resetEv.exit41

_ZN6vectorIN13hilbert_basis8offset_tELb0EjE5resetEv.exit41: ; preds = %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE5resetEv.exit, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 15 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !103  ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE6resizeEj.exit.thread, label %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.thread.lr.ph

_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.thread.lr.ph: ; preds = %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE5resetEv.exit41
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.thread

_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.thread: ; preds = %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.thread.lr.ph, %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE9push_backERKS1_.exit
  %indvars.iv = phi i64 [ 0, %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.thread.lr.ph ], [ %indvars.iv.next, %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE9push_backERKS1_.exit ] ; 3 uses
  %i.s = phi ptr [ %i.o, %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.thread.lr.ph ], [ %i.ig, %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE9push_backERKS1_.exit ] ; 4 uses
  %.035171 = phi i32 [ 0, %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.thread.lr.ph ], [ %.2, %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE9push_backERKS1_.exit ] ; 10 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !93   ; 3 uses
  %i.v = zext i32 %i.u to i64
  %i.w = icmp samesign ult i64 %indvars.iv, %i.v
  br i1 %i.w, label %bb.e, label %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.thread.i

_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.i: ; preds = %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE9push_backERKS1_.exit
  %.not.not.i = icmp eq i32 %.2, 0
  br i1 %.not.not.i, label %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE6resizeEj.exit.thread, label %thread-pre-split.i.preheader

_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.thread.i: ; preds = %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.thread
  %.not15.i = icmp ugt i32 %.035171, %i.u
  br i1 %.not15.i, label %thread-pre-split.i.preheader, label %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE6resizeEj.exit

thread-pre-split.i.preheader:                     ; preds = %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.i, %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.thread.i
  %.035156.ph = phi i32 [ %.035171, %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.thread.i ], [ %.2, %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.i ] ; 4 uses
  %.ph406 = phi ptr [ %i.s, %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.thread.i ], [ null, %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.i ]
  %.0.i16.i.ph = phi i32 [ %i.u, %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.thread.i ], [ 0, %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.i ] ; 2 uses
  br label %thread-pre-split.i

_ZN6vectorIN13hilbert_basis8offset_tELb0EjE6resizeEj.exit: ; preds = %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.thread.i
  %i.x = getelementptr inbounds i8, ptr %i.s, i64 -4
  store i32 %.035171, ptr %i.x, align 4, !tbaa !93
  %i.y = icmp eq i32 %.035171, 0
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !53
  call void @_ZN13hilbert_basis8passive24initERK7svectorINS_8offset_tEjE(ptr noundef nonnull align 8 dereferenceable(120) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  br i1 %i.y, label %.critedge, label %.lr.ph174

thread-pre-split.i:                               ; preds = %thread-pre-split.i.preheader, %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE8capacityEv.exit.thread.i
  %i.aa = phi ptr [ %.pr.pre.i, %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE8capacityEv.exit.thread.i ], [ %.ph406, %thread-pre-split.i.preheader ] ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE8capacityEv.exit.thread.i, label %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE8capacityEv.exit.i

_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE8capacityEv.exit.i: ; preds = %thread-pre-split.i
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !93
  %i.ae = icmp ugt i32 %.035156.ph, %i.ad
  br i1 %i.ae, label %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE8capacityEv.exit.thread.i, label %bb.d

end_hunk_0
begin_hunk_1_@_ZN13hilbert_basis8saturateERK6vectorI13checked_int64ILb1EELb1EjEb:bb.a

_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us162: ; preds = %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us162.prol.loopexit, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us162
  %.037158.us163 = phi i32 [ %i.ep, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us162 ], [ %.037158.us163.unr, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us162.prol.loopexit ] ; 5 uses
  %i.ed = sub nuw nsw i32 -2, %.037158.us163
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.ee
  store i64 0, ptr %i.ef, align 8, !tbaa !131
  %i.eg = sub nuw i32 -3, %.037158.us163
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.eh
  store i64 0, ptr %i.ei, align 8, !tbaa !131
  %i.ej = sub nuw i32 -4, %.037158.us163
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.ek
  store i64 0, ptr %i.el, align 8, !tbaa !131
  %i.em = sub nuw i32 -5, %.037158.us163
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.en
  store i64 0, ptr %i.eo, align 8, !tbaa !131
  %i.ep = add nuw i32 %.037158.us163, 4           ; 2 uses
  %exitcond201.not.3 = icmp eq i32 %i.ep, %i.bf
  br i1 %exitcond201.not.3, label %._crit_edge, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us162, !llvm.loop !240

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.eq = getelementptr inbounds i8, ptr %i.do, i64 -4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !93 ; 2 uses
  %.not.i42 = icmp eq i32 %i.er, 0
  %wide.trip.count.i = zext i32 %i.er to i64
  br i1 %.not.i42, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us166.preheader, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i

_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us166.preheader: ; preds = %.lr.ph.split.split.split
  %i.es = add i32 %i.bf, 2147483647
  %or.cond398 = icmp ult i32 %i.es, -2147483645
  br i1 %or.cond398, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us166.preheader413, label %vector.ph383

vector.ph383:                                     ; preds = %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us166.preheader
  %n.vec384 = and i32 %i.bf, -4                   ; 3 uses
  br label %vector.body385

vector.body385:                                   ; preds = %vector.body385, %vector.ph383
  %index386 = phi i32 [ 0, %vector.ph383 ], [ %index.next387, %vector.body385 ] ; 2 uses
  %i.et = sub nuw nsw i32 -2, %index386
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.eu ; 2 uses
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 -8
  %i.ex = getelementptr inbounds i8, ptr %i.ev, i64 -24
  store <2 x i64> zeroinitializer, ptr %i.ew, align 8, !tbaa !131
  store <2 x i64> zeroinitializer, ptr %i.ex, align 8, !tbaa !131
  %index.next387 = add nuw i32 %index386, 4       ; 2 uses
  %i.ey = icmp eq i32 %index.next387, %n.vec384
  br i1 %i.ey, label %middle.block388, label %vector.body385, !llvm.loop !241

middle.block388:                                  ; preds = %vector.body385
  %cmp.n389 = icmp eq i32 %i.bf, %n.vec384
  br i1 %cmp.n389, label %._crit_edge, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us166.preheader413

_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us166.preheader413: ; preds = %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us166.preheader, %middle.block388
  %.037158.us167.ph = phi i32 [ 0, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us166.preheader ], [ %n.vec384, %middle.block388 ] ; 3 uses
  %xtraiter = and i32 %i.bf, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us166.prol.loopexit, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us166.prol

_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us166.prol: ; preds = %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us166.preheader413, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us166.prol
  %.037158.us167.prol = phi i32 [ %i.fc, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us166.prol ], [ %.037158.us167.ph, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us166.preheader413 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us166.prol ], [ 0, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us166.preheader413 ]
  %i.ez = sub nuw nsw i32 -2, %.037158.us167.prol
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.fa
  store i64 0, ptr %i.fb, align 8, !tbaa !131
  %i.fc = add nuw i32 %.037158.us167.prol, 1      ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us166.prol.loopexit, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us166.prol, !llvm.loop !242

_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us166.prol.loopexit: ; preds = %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us166.prol, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us166.preheader413
  %.037158.us167.unr = phi i32 [ %.037158.us167.ph, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us166.preheader413 ], [ %i.fc, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us166.prol ]
  %i.fd = sub i32 %.037158.us167.ph, %i.bf
  %i.fe = icmp ugt i32 %i.fd, -4
  br i1 %i.fe, label %._crit_edge, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us166

_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us166: ; preds = %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us166.prol.loopexit, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us166
  %.037158.us167 = phi i32 [ %i.fr, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us166 ], [ %.037158.us167.unr, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us166.prol.loopexit ] ; 5 uses
  %i.ff = sub nuw nsw i32 -2, %.037158.us167
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.fg
  store i64 0, ptr %i.fh, align 8, !tbaa !131
  %i.fi = sub nuw i32 -3, %.037158.us167
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.fj
  store i64 0, ptr %i.fk, align 8, !tbaa !131
  %i.fl = sub nuw i32 -4, %.037158.us167
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.fm
  store i64 0, ptr %i.fn, align 8, !tbaa !131
  %i.fo = sub nuw i32 -5, %.037158.us167
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.fp
  store i64 0, ptr %i.fq, align 8, !tbaa !131
  %i.fr = add nuw i32 %.037158.us167, 4           ; 2 uses
  %exitcond200.not.3 = icmp eq i32 %i.fr, %i.bf
  br i1 %exitcond200.not.3, label %._crit_edge, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us166, !llvm.loop !243

._crit_edge:                                      ; preds = %_ZNK13hilbert_basis10get_weightERKNS_6valuesERK6vectorI13checked_int64ILb1EELb1EjE.exit.loopexit, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us166.prol.loopexit, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us166, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us162.prol.loopexit, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us162, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us.prol.loopexit, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us, %_ZNK13hilbert_basis10get_weightERKNS_6valuesERK6vectorI13checked_int64ILb1EELb1EjE.exit.us.prol.loopexit, %_ZNK13hilbert_basis10get_weightERKNS_6valuesERK6vectorI13checked_int64ILb1EELb1EjE.exit.us, %middle.block388, %middle.block377, %middle.block366, %middle.block, %_ZNK13hilbert_basis3vecENS_8offset_tE.exit
  %i.fs = load ptr, ptr %i.d, align 8, !tbaa !51
  call void @_ZN13hilbert_basis5index6insertENS_8offset_tERKNS_6valuesE(ptr noundef nonnull align 8 dereferenceable(1340) %i.fs, i32 %i.as, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %i.ft = load ptr, ptr %6, align 8, !tbaa !148
  %i.fu = getelementptr inbounds i8, ptr %i.ft, i64 -8
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !136 ; 2 uses
  %i.fw = icmp eq i64 %i.fv, 0
  br i1 %i.fw, label %bb.w, label %bb.y

_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i: ; preds = %.lr.ph.split.split.split, %_ZNK13hilbert_basis10get_weightERKNS_6valuesERK6vectorI13checked_int64ILb1EELb1EjE.exit.loopexit
  %.037158 = phi i32 [ %i.hi, %_ZNK13hilbert_basis10get_weightERKNS_6valuesERK6vectorI13checked_int64ILb1EELb1EjE.exit.loopexit ], [ 0, %.lr.ph.split.split.split ] ; 3 uses
  %i.fx = zext i32 %.037158 to i64
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.fx
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !104
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN13checked_int64ILb1EEpLERKS0_.exit.i, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i
  %indvars.iv.i = phi i64 [ 0, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i ], [ %indvars.iv.next.i, %_ZN13checked_int64ILb1EEpLERKS0_.exit.i ] ; 3 uses
  %.sroa.07.011.i = phi i64 [ 0, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i ], [ %i.gw, %_ZN13checked_int64ILb1EEpLERKS0_.exit.i ] ; 3 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.i
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %indvars.iv.i
  %i.gc = load i64, ptr %i.ga, align 8, !tbaa !131
  %.fr.i = freeze i64 %i.gc                       ; 9 uses
  %i.gd = add i64 %.fr.i, 2147483647
  %or.cond29.i = icmp ult i64 %i.gd, 4294967295
  %.pre.i111 = load i64, ptr %i.gb, align 8, !tbaa !136 ; 8 uses
  br i1 %or.cond29.i, label %bb.g, label %.thread.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.ge = add i64 %.pre.i111, 2147483647
  %or.cond30.i = icmp ult i64 %i.ge, 4294967295
  br i1 %or.cond30.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.gf = mul nsw i64 %.pre.i111, %.fr.i
  br label %_ZN13checked_int64ILb1EEmLERKS0_.exit

bb.i:                                             ; preds = %bb.g
  %i.gg = icmp eq i64 %.fr.i, 0
  br i1 %i.gg, label %bb.j, label %.thread.i

.thread.i:                                        ; preds = %bb.i, %.lr.ph.i
  %i.gh = icmp eq i64 %.fr.i, 1
  %i.gi = icmp ult i64 %.pre.i111, 2
  %or.cond35.i = select i1 %i.gh, i1 true, i1 %i.gi
  br i1 %or.cond35.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread.i, %bb.i
  %i.gj = mul nsw i64 %.pre.i111, %.fr.i
  br label %_ZN13checked_int64ILb1EEmLERKS0_.exit

bb.k:                                             ; preds = %.thread.i
  %i.gk = icmp eq i64 %.fr.i, -9223372036854775808
  %i.gl = icmp eq i64 %.pre.i111, -9223372036854775808
  %or.cond33.i = or i1 %i.gk, %i.gl
  br i1 %or.cond33.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.gm = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.gm, align 8, !tbaa !72
  call void @__cxa_throw(ptr nonnull %i.gm, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.gn = call i64 @llvm.abs.i64(i64 %.fr.i, i1 true)
  %i.go = call i64 @llvm.abs.i64(i64 %.pre.i111, i1 true)
  %mul.i = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.go, i64 %i.gn) ; 2 uses
  %mul.val.i = extractvalue { i64, i1 } %mul.i, 0 ; 5 uses
  %mul.ov.i = extractvalue { i64, i1 } %mul.i, 1
  %i.gp = icmp slt i64 %mul.val.i, 0
  %or.cond.i = or i1 %mul.ov.i, %i.gp
  br i1 %or.cond.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.gq = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.gq, align 8, !tbaa !72
  call void @__cxa_throw(ptr nonnull %i.gq, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.gr = icmp slt i64 %.fr.i, 0
  br i1 %i.gr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.gs = icmp sgt i64 %.pre.i111, 0
  %i.gt = sub nsw i64 0, %mul.val.i
  %spec.select134 = select i1 %i.gs, i64 %i.gt, i64 %mul.val.i
  br label %_ZN13checked_int64ILb1EEmLERKS0_.exit

bb.q:                                             ; preds = %bb.o
  %.not.i112 = icmp ne i64 %.fr.i, 0
  %i.gu = icmp slt i64 %.pre.i111, 0
  %or.cond = select i1 %.not.i112, i1 %i.gu, i1 false
  %i.gv = sub nsw i64 0, %mul.val.i
  %spec.select135 = select i1 %or.cond, i64 %i.gv, i64 %mul.val.i
  br label %_ZN13checked_int64ILb1EEmLERKS0_.exit

_ZN13checked_int64ILb1EEmLERKS0_.exit:            ; preds = %bb.q, %bb.p, %bb.h, %bb.j
  %.sroa.0129.0 = phi i64 [ %i.gj, %bb.j ], [ %spec.select135, %bb.q ], [ %i.gf, %bb.h ], [ %spec.select134, %bb.p ] ; 3 uses
  %i.gw = add i64 %.sroa.0129.0, %.sroa.07.011.i  ; 4 uses
  %i.gx = icmp sgt i64 %.sroa.07.011.i, 0
  br i1 %i.gx, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_ZN13checked_int64ILb1EEmLERKS0_.exit
  %i.gy = icmp sgt i64 %.sroa.0129.0, 0
  %i.gz = icmp slt i64 %i.gw, 1
  %or.cond.i.i = and i1 %i.gy, %i.gz
  br i1 %or.cond.i.i, label %bb.s, label %_ZN13checked_int64ILb1EEpLERKS0_.exit.i

bb.s:                                             ; preds = %bb.r
  %i.ha = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.ha, align 8, !tbaa !72
  call void @__cxa_throw(ptr nonnull %i.ha, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.t:                                             ; preds = %_ZN13checked_int64ILb1EEmLERKS0_.exit
  %i.hb = icmp slt i64 %.sroa.07.011.i, 0
  br i1 %i.hb, label %bb.u, label %_ZN13checked_int64ILb1EEpLERKS0_.exit.i

bb.u:                                             ; preds = %bb.t
  %i.hc = icmp slt i64 %.sroa.0129.0, 0
  %i.hd = icmp sgt i64 %i.gw, -1
  %or.cond3.i.i = and i1 %i.hc, %i.hd
  br i1 %or.cond3.i.i, label %bb.v, label %_ZN13checked_int64ILb1EEpLERKS0_.exit.i

bb.v:                                             ; preds = %bb.u
  %i.he = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.he, align 8, !tbaa !72
  call void @__cxa_throw(ptr nonnull %i.he, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

_ZN13checked_int64ILb1EEpLERKS0_.exit.i:          ; preds = %bb.u, %bb.t, %bb.r
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK13hilbert_basis10get_weightERKNS_6valuesERK6vectorI13checked_int64ILb1EELb1EjE.exit.loopexit, label %.lr.ph.i, !llvm.loop !8

_ZNK13hilbert_basis10get_weightERKNS_6valuesERK6vectorI13checked_int64ILb1EELb1EjE.exit.loopexit: ; preds = %_ZN13checked_int64ILb1EEpLERKS0_.exit.i
  %i.hf = sub nuw nsw i32 -2, %.037158
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.hg
  store i64 %i.gw, ptr %i.hh, align 8, !tbaa !131
  %i.hi = add nuw i32 %.037158, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.hi, %i.bf
  br i1 %exitcond.not, label %._crit_edge, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i, !llvm.loop !244

bb.w:                                             ; preds = %._crit_edge
  %i.hj = load ptr, ptr %i.a, align 8, !tbaa !103 ; 4 uses
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE9push_backERKS1_.exit.sink.split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hl = getelementptr inbounds i8, ptr %i.hj, i64 -4
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !93 ; 2 uses
  %i.hn = getelementptr inbounds i8, ptr %i.hj, i64 -8
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !93
  %i.hp = icmp eq i32 %i.hm, %i.ho
  br i1 %i.hp, label %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE9push_backERKS1_.exit.sink.split, label %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE9push_backERKS1_.exit

bb.y:                                             ; preds = %._crit_edge
  %i.hq = icmp sgt i64 %i.fv, 0
  br i1 %i.hq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.hr = add i32 %.035171, 1
  %i.hs = load ptr, ptr %i.n, align 8, !tbaa !103
  %i.ht = zext i32 %.035171 to i64
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.ht
  store i32 %i.as, ptr %i.hu, align 4, !tbaa !93
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.1 = phi i32 [ %i.hr, %bb.z ], [ %.035171, %bb.y ] ; 3 uses
  %i.hv = load ptr, ptr %i.k, align 8, !tbaa !103 ; 4 uses
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE9push_backERKS1_.exit.sink.split, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hx = getelementptr inbounds i8, ptr %i.hv, i64 -4
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !93 ; 2 uses
  %i.hz = getelementptr inbounds i8, ptr %i.hv, i64 -8
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !93
  %i.ib = icmp eq i32 %i.hy, %i.ia
  br i1 %i.ib, label %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE9push_backERKS1_.exit.sink.split, label %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE9push_backERKS1_.exit

_ZN6vectorIN13hilbert_basis8offset_tELb0EjE9push_backERKS1_.exit.sink.split: ; preds = %bb.aa, %bb.ab, %bb.w, %bb.x
  %.sink399.a = phi ptr [ %i.a, %bb.w ], [ %i.a, %bb.x ], [ %i.k, %bb.ab ], [ %i.k, %bb.aa ] ; 2 uses
  %.2.ph = phi i32 [ %.035171, %bb.w ], [ %.035171, %bb.x ], [ %.1, %bb.ab ], [ %.1, %bb.aa ]
  call void @_ZN6vectorIN13hilbert_basis8offset_tELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %.sink399.a)
  %.pre.i44.sink = load ptr, ptr %.sink399.a, align 8, !tbaa !103 ; 2 uses
  %.phi.trans.insert.i45 = getelementptr inbounds i8, ptr %.pre.i44.sink, i64 -4
  %.pre2.i46 = load i32, ptr %.phi.trans.insert.i45, align 4, !tbaa !93
  br label %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE9push_backERKS1_.exit

_ZN6vectorIN13hilbert_basis8offset_tELb0EjE9push_backERKS1_.exit: ; preds = %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE9push_backERKS1_.exit.sink.split, %bb.ab, %bb.x
  %.sink326 = phi ptr [ %i.hj, %bb.x ], [ %i.hv, %bb.ab ], [ %.pre.i44.sink, %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE9push_backERKS1_.exit.sink.split ] ; 2 uses
  %.sink = phi i32 [ %i.hm, %bb.x ], [ %i.hy, %bb.ab ], [ %.pre2.i46, %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE9push_backERKS1_.exit.sink.split ] ; 2 uses
  %.2 = phi i32 [ %.035171, %bb.x ], [ %.1, %bb.ab ], [ %.2.ph, %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE9push_backERKS1_.exit.sink.split ] ; 3 uses
  %i.ic = getelementptr inbounds i8, ptr %.sink326, i64 -4
  %i.id = zext i32 %.sink to i64
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %.sink326, i64 %i.id
  store i32 %i.as, ptr %i.ie, align 4, !tbaa !93
  %i.if = add i32 %.sink, 1
  store i32 %i.if, ptr %i.ic, align 4, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ig = load ptr, ptr %i.n, align 8, !tbaa !103 ; 2 uses
  %i.ih = icmp eq ptr %i.ig, null
  br i1 %i.ih, label %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.i, label %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit.thread, !llvm.loop !245

_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit49: ; preds = %.lr.ph174, %bb.ah
  %i.ii = phi ptr [ %i.kw, %bb.ah ], [ %i.ap, %.lr.ph174 ] ; 3 uses
  %indvars.iv205 = phi i64 [ %indvars.iv.next206, %bb.ah ], [ 0, %.lr.ph174 ] ; 3 uses
  %i.ij = getelementptr inbounds i8, ptr %i.ii, i64 -4
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !93
  %i.il = zext i32 %i.ik to i64
  %i.im = icmp samesign ult i64 %indvars.iv205, %i.il
  br i1 %i.im, label %bb.ae, label %.critedge

.critedge:                                        ; preds = %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE4sizeEv.exit49, %bb.ah, %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE6resizeEj.exit.thread, %.lr.ph174, %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE6resizeEj.exit
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !103 ; 3 uses
  %i.ip = icmp eq ptr %i.io, null
  br i1 %i.ip, label %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE5emptyEv.exit.thread.i, label %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE5emptyEv.exit.i

_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE5emptyEv.exit.i: ; preds = %.critedge
  %i.iq = getelementptr inbounds i8, ptr %i.io, i64 -4 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !93 ; 2 uses
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE5emptyEv.exit.thread.i, label %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE4backEv.exit.i

_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE5emptyEv.exit.thread.i: ; preds = %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE5emptyEv.exit.i, %.critedge
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !106 ; 3 uses
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %_ZNK13hilbert_basis12get_num_varsEv.exit.i52, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i50

_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i50: ; preds = %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE5emptyEv.exit.thread.i
  %i.iw = getelementptr inbounds i8, ptr %i.iu, i64 -4
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !93 ; 4 uses
  %i.iy = icmp eq i32 %i.ix, 0
  br i1 %i.iy, label %_ZNK13hilbert_basis12get_num_varsEv.exit.i52, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4backEv.exit.i.i51

_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4backEv.exit.i.i51: ; preds = %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i50
  %i.iz = add i32 %i.ix, -1
  %i.ja = zext i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.ja
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !104 ; 2 uses
  %i.jd = icmp eq ptr %i.jc, null
  br i1 %i.jd, label %_ZNK13hilbert_basis12get_num_varsEv.exit.i52, label %bb.ac

bb.ac:                                            ; preds = %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4backEv.exit.i.i51
  %i.je = getelementptr inbounds i8, ptr %i.jc, i64 -4
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !93
  br label %_ZNK13hilbert_basis12get_num_varsEv.exit.i52

_ZNK13hilbert_basis12get_num_varsEv.exit.i52:     ; preds = %bb.ac, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4backEv.exit.i.i51, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i50, %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE5emptyEv.exit.thread.i
  %.0.i6.i = phi i32 [ %i.ix, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4backEv.exit.i.i51 ], [ 0, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i50 ], [ %i.ix, %bb.ac ], [ 0, %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE5emptyEv.exit.thread.i ]
  %.0.i3.i = phi i32 [ 0, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4backEv.exit.i.i51 ], [ 0, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i50 ], [ %i.jf, %bb.ac ], [ 0, %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE5emptyEv.exit.thread.i ]
  %i.jg = add i32 %.0.i3.i, %.0.i6.i              ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !104 ; 3 uses
  %i.jj = icmp eq ptr %i.ji, null
  br i1 %i.jj, label %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i.i, label %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.thread.i.i

_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i.i: ; preds = %_ZNK13hilbert_basis12get_num_varsEv.exit.i52
  %.not.not.i.i = icmp eq i32 %i.jg, 0
  br i1 %.not.not.i.i, label %_ZN13hilbert_basis12alloc_vectorEv.exit, label %thread-pre-split.i.i.preheader

_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.thread.i.i: ; preds = %_ZNK13hilbert_basis12get_num_varsEv.exit.i52
  %i.jk = getelementptr inbounds i8, ptr %i.ji, i64 -4 ; 2 uses
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !93 ; 4 uses
  %i.jm = add i32 %i.jl, %i.jg                    ; 3 uses
  %.not15.i.i = icmp ugt i32 %i.jm, %i.jl
  br i1 %.not15.i.i, label %thread-pre-split.i.i.preheader, label %_ZN6vectorI13checked_int64ILb1EELb1EjE3endEv.exit.i.i.i

thread-pre-split.i.i.preheader:                   ; preds = %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i.i, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.thread.i.i
  %.ph403.a = phi i32 [ %i.jm, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.thread.i.i ], [ %i.jg, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i.i ] ; 4 uses
  %.ph404 = phi ptr [ %i.ji, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.thread.i.i ], [ null, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i.i ]
  %.0.i16.i.i.ph = phi i32 [ %i.jl, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.thread.i.i ], [ 0, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i.i ] ; 4 uses
  br label %thread-pre-split.i.i

_ZN6vectorI13checked_int64ILb1EELb1EjE3endEv.exit.i.i.i: ; preds = %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.thread.i.i
  store i32 %i.jm, ptr %i.jk, align 4, !tbaa !93
  br label %_ZN13hilbert_basis12alloc_vectorEv.exit

thread-pre-split.i.i:                             ; preds = %thread-pre-split.i.i.preheader, %_ZNK6vectorI13checked_int64ILb1EELb1EjE8capacityEv.exit.thread.i.i
  %i.jn = phi ptr [ %.pr.pre.i.i, %_ZNK6vectorI13checked_int64ILb1EELb1EjE8capacityEv.exit.thread.i.i ], [ %.ph404, %thread-pre-split.i.i.preheader ] ; 4 uses
  %i.jo = icmp eq ptr %i.jn, null
  br i1 %i.jo, label %_ZNK6vectorI13checked_int64ILb1EELb1EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorI13checked_int64ILb1EELb1EjE8capacityEv.exit.i.i

_ZNK6vectorI13checked_int64ILb1EELb1EjE8capacityEv.exit.i.i: ; preds = %thread-pre-split.i.i
  %i.jp = getelementptr inbounds i8, ptr %i.jn, i64 -8
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !93
  %i.jr = icmp ugt i32 %.ph403.a, %i.jq
  br i1 %i.jr, label %_ZNK6vectorI13checked_int64ILb1EELb1EjE8capacityEv.exit.thread.i.i, label %bb.ad

_ZNK6vectorI13checked_int64ILb1EELb1EjE8capacityEv.exit.thread.i.i: ; preds = %_ZNK6vectorI13checked_int64ILb1EELb1EjE8capacityEv.exit.i.i, %thread-pre-split.i.i
  call void @_ZN6vectorI13checked_int64ILb1EELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jh)
  %.pr.pre.i.i = load ptr, ptr %i.jh, align 8, !tbaa !104
end_hunk_1
begin_hunk_2_@_ZN13hilbert_basis13saturate_origERK6vectorI13checked_int64ILb1EELb1EjEb:bb.a
  %.051233.us238 = phi i32 [ %i.fj, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us237 ], [ %.051233.us238.unr, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us237.prol.loopexit ] ; 5 uses
  %i.ex = sub nuw nsw i32 -2, %.051233.us238
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.ey
  store i64 0, ptr %i.ez, align 8, !tbaa !131
  %i.fa = sub nuw i32 -3, %.051233.us238
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.fb
  store i64 0, ptr %i.fc, align 8, !tbaa !131
  %i.fd = sub nuw i32 -4, %.051233.us238
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.fe
  store i64 0, ptr %i.ff, align 8, !tbaa !131
  %i.fg = sub nuw i32 -5, %.051233.us238
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.fh
  store i64 0, ptr %i.fi, align 8, !tbaa !131
  %i.fj = add nuw i32 %.051233.us238, 4           ; 2 uses
  %exitcond268.not.3 = icmp eq i32 %i.fj, %i.bz
  br i1 %exitcond268.not.3, label %._crit_edge, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us237, !llvm.loop !254

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.fk = getelementptr inbounds i8, ptr %i.ei, i64 -4
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !93 ; 2 uses
  %.not.i68 = icmp eq i32 %i.fl, 0
  %wide.trip.count.i = zext i32 %i.fl to i64
  br i1 %.not.i68, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us241.preheader, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i

_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us241.preheader: ; preds = %.lr.ph.split.split.split
  %i.fm = add i32 %i.bz, 2147483647
  %or.cond478 = icmp ult i32 %i.fm, -2147483645
  br i1 %or.cond478, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us241.preheader518, label %vector.ph463

vector.ph463:                                     ; preds = %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us241.preheader
  %n.vec464 = and i32 %i.bz, -4                   ; 3 uses
  br label %vector.body465

vector.body465:                                   ; preds = %vector.body465, %vector.ph463
  %index466 = phi i32 [ 0, %vector.ph463 ], [ %index.next467, %vector.body465 ] ; 2 uses
  %i.fn = sub nuw nsw i32 -2, %index466
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.fo ; 2 uses
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 -8
  %i.fr = getelementptr inbounds i8, ptr %i.fp, i64 -24
  store <2 x i64> zeroinitializer, ptr %i.fq, align 8, !tbaa !131
  store <2 x i64> zeroinitializer, ptr %i.fr, align 8, !tbaa !131
  %index.next467 = add nuw i32 %index466, 4       ; 2 uses
  %i.fs = icmp eq i32 %index.next467, %n.vec464
  br i1 %i.fs, label %middle.block468, label %vector.body465, !llvm.loop !255

middle.block468:                                  ; preds = %vector.body465
  %cmp.n469 = icmp eq i32 %i.bz, %n.vec464
  br i1 %cmp.n469, label %._crit_edge, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us241.preheader518

_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us241.preheader518: ; preds = %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us241.preheader, %middle.block468
  %.051233.us242.ph = phi i32 [ 0, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us241.preheader ], [ %n.vec464, %middle.block468 ] ; 3 uses
  %xtraiter = and i32 %i.bz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us241.prol.loopexit, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us241.prol

_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us241.prol: ; preds = %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us241.preheader518, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us241.prol
  %.051233.us242.prol = phi i32 [ %i.fw, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us241.prol ], [ %.051233.us242.ph, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us241.preheader518 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us241.prol ], [ 0, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us241.preheader518 ]
  %i.ft = sub nuw nsw i32 -2, %.051233.us242.prol
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.fu
  store i64 0, ptr %i.fv, align 8, !tbaa !131
  %i.fw = add nuw i32 %.051233.us242.prol, 1      ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us241.prol.loopexit, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us241.prol, !llvm.loop !256

_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us241.prol.loopexit: ; preds = %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us241.prol, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us241.preheader518
  %.051233.us242.unr = phi i32 [ %.051233.us242.ph, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us241.preheader518 ], [ %i.fw, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us241.prol ]
  %i.fx = sub i32 %.051233.us242.ph, %i.bz
  %i.fy = icmp ugt i32 %i.fx, -4
  br i1 %i.fy, label %._crit_edge, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us241

_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us241: ; preds = %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us241.prol.loopexit, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us241
  %.051233.us242 = phi i32 [ %i.gl, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us241 ], [ %.051233.us242.unr, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us241.prol.loopexit ] ; 5 uses
  %i.fz = sub nuw nsw i32 -2, %.051233.us242
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.ga
  store i64 0, ptr %i.gb, align 8, !tbaa !131
  %i.gc = sub nuw i32 -3, %.051233.us242
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.gd
  store i64 0, ptr %i.ge, align 8, !tbaa !131
  %i.gf = sub nuw i32 -4, %.051233.us242
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.gg
  store i64 0, ptr %i.gh, align 8, !tbaa !131
  %i.gi = sub nuw i32 -5, %.051233.us242
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.gj
  store i64 0, ptr %i.gk, align 8, !tbaa !131
  %i.gl = add nuw i32 %.051233.us242, 4           ; 2 uses
  %exitcond267.not.3 = icmp eq i32 %i.gl, %i.bz
  br i1 %exitcond267.not.3, label %._crit_edge, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us241, !llvm.loop !257

._crit_edge:                                      ; preds = %_ZNK13hilbert_basis10get_weightERKNS_6valuesERK6vectorI13checked_int64ILb1EELb1EjE.exit.loopexit, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us241.prol.loopexit, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us241, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us237.prol.loopexit, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us237, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us.prol.loopexit, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i.us, %_ZNK13hilbert_basis10get_weightERKNS_6valuesERK6vectorI13checked_int64ILb1EELb1EjE.exit.us.prol.loopexit, %_ZNK13hilbert_basis10get_weightERKNS_6valuesERK6vectorI13checked_int64ILb1EELb1EjE.exit.us, %middle.block468, %middle.block457, %middle.block446, %middle.block, %bb.n
  %i.gm = invoke noundef zeroext i1 @_ZN13hilbert_basis8add_goalENS_8offset_tE(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 %.sroa.0.0.copyload.i)
          to label %bb.ad unwind label %bb.o      ; 0 uses

bb.o:                                             ; preds = %._crit_edge
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.p:                                             ; preds = %bb.m
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i: ; preds = %.lr.ph.split.split.split, %_ZNK13hilbert_basis10get_weightERKNS_6valuesERK6vectorI13checked_int64ILb1EELb1EjE.exit.loopexit
  %.051233 = phi i32 [ %i.hx, %_ZNK13hilbert_basis10get_weightERKNS_6valuesERK6vectorI13checked_int64ILb1EELb1EjE.exit.loopexit ], [ 0, %.lr.ph.split.split.split ] ; 3 uses
  %i.gp = zext i32 %.051233 to i64
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.gp
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !104
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN13checked_int64ILb1EEpLERKS0_.exit.i, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i
  %indvars.iv.i = phi i64 [ 0, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i ], [ %indvars.iv.next.i, %_ZN13checked_int64ILb1EEpLERKS0_.exit.i ] ; 3 uses
  %.sroa.07.011.i = phi i64 [ 0, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i ], [ %i.hn, %_ZN13checked_int64ILb1EEpLERKS0_.exit.i ] ; 3 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv.i
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.i
  %i.gu = load i64, ptr %i.gs, align 8, !tbaa !131
  %.fr.i = freeze i64 %i.gu                       ; 9 uses
  %i.gv = add i64 %.fr.i, 2147483647
  %or.cond29.i = icmp ult i64 %i.gv, 4294967295
  %.pre.i177 = load i64, ptr %i.gt, align 8, !tbaa !136 ; 8 uses
  br i1 %or.cond29.i, label %bb.q, label %.thread.i

bb.q:                                             ; preds = %.lr.ph.i
  %i.gw = add i64 %.pre.i177, 2147483647
  %or.cond30.i = icmp ult i64 %i.gw, 4294967295
  br i1 %or.cond30.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gx = mul nsw i64 %.pre.i177, %.fr.i
  br label %.noexc

bb.s:                                             ; preds = %bb.q
  %i.gy = icmp eq i64 %.fr.i, 0
  br i1 %i.gy, label %bb.t, label %.thread.i

.thread.i:                                        ; preds = %bb.s, %.lr.ph.i
  %i.gz = icmp eq i64 %.fr.i, 1
  %i.ha = icmp ult i64 %.pre.i177, 2
  %or.cond35.i = select i1 %i.gz, i1 true, i1 %i.ha
  br i1 %or.cond35.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread.i, %bb.s
  %i.hb = mul nsw i64 %.pre.i177, %.fr.i
  br label %.noexc

bb.u:                                             ; preds = %.thread.i
  %i.hc = icmp eq i64 %.fr.i, -9223372036854775808
  %i.hd = icmp eq i64 %.pre.i177, -9223372036854775808
  %or.cond33.i = or i1 %i.hc, %i.hd
  br i1 %or.cond33.i, label %.invoke, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.he = call i64 @llvm.abs.i64(i64 %.fr.i, i1 true)
  %i.hf = call i64 @llvm.abs.i64(i64 %.pre.i177, i1 true)
  %mul.i = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.hf, i64 %i.he) ; 2 uses
  %mul.val.i = extractvalue { i64, i1 } %mul.i, 0 ; 5 uses
  %mul.ov.i = extractvalue { i64, i1 } %mul.i, 1
  %i.hg = icmp slt i64 %mul.val.i, 0
  %or.cond.i = or i1 %mul.ov.i, %i.hg
  br i1 %or.cond.i, label %.invoke, label %bb.w

.invoke:                                          ; preds = %bb.v, %bb.u, %bb.ab, %bb.z
  %i.hh = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.hh, align 8, !tbaa !72
  invoke void @__cxa_throw(ptr nonnull %i.hh, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
          to label %.cont unwind label %bb.ac

.cont:                                            ; preds = %.invoke
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.hi = icmp slt i64 %.fr.i, 0
  br i1 %i.hi, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.hj = icmp sgt i64 %.pre.i177, 0
  %i.hk = sub nsw i64 0, %mul.val.i
  %spec.select = select i1 %i.hj, i64 %i.hk, i64 %mul.val.i
  br label %.noexc

bb.y:                                             ; preds = %bb.w
  %.not.i178 = icmp ne i64 %.fr.i, 0
  %i.hl = icmp slt i64 %.pre.i177, 0
  %or.cond = select i1 %.not.i178, i1 %i.hl, i1 false
  %i.hm = sub nsw i64 0, %mul.val.i
  %spec.select207 = select i1 %or.cond, i64 %i.hm, i64 %mul.val.i
  br label %.noexc

.noexc:                                           ; preds = %bb.y, %bb.x, %bb.t, %bb.r
  %.sroa.0201.0 = phi i64 [ %i.hb, %bb.t ], [ %spec.select207, %bb.y ], [ %i.gx, %bb.r ], [ %spec.select, %bb.x ] ; 3 uses
  %i.hn = add i64 %.sroa.0201.0, %.sroa.07.011.i  ; 4 uses
  %i.ho = icmp sgt i64 %.sroa.07.011.i, 0
  br i1 %i.ho, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.noexc
  %i.hp = icmp sgt i64 %.sroa.0201.0, 0
  %i.hq = icmp slt i64 %i.hn, 1
  %or.cond.i.i = and i1 %i.hp, %i.hq
  br i1 %or.cond.i.i, label %.invoke, label %_ZN13checked_int64ILb1EEpLERKS0_.exit.i

bb.aa:                                            ; preds = %.noexc
  %i.hr = icmp slt i64 %.sroa.07.011.i, 0
  br i1 %i.hr, label %bb.ab, label %_ZN13checked_int64ILb1EEpLERKS0_.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.hs = icmp slt i64 %.sroa.0201.0, 0
  %i.ht = icmp sgt i64 %i.hn, -1
  %or.cond3.i.i = and i1 %i.hs, %i.ht
  br i1 %or.cond3.i.i, label %.invoke, label %_ZN13checked_int64ILb1EEpLERKS0_.exit.i

_ZN13checked_int64ILb1EEpLERKS0_.exit.i:          ; preds = %bb.ab, %bb.aa, %bb.z
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK13hilbert_basis10get_weightERKNS_6valuesERK6vectorI13checked_int64ILb1EELb1EjE.exit.loopexit, label %.lr.ph.i, !llvm.loop !8

_ZNK13hilbert_basis10get_weightERKNS_6valuesERK6vectorI13checked_int64ILb1EELb1EjE.exit.loopexit: ; preds = %_ZN13checked_int64ILb1EEpLERKS0_.exit.i
  %i.hu = sub nuw nsw i32 -2, %.051233
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.hv
  store i64 %i.hn, ptr %i.hw, align 8, !tbaa !131
  %i.hx = add nuw i32 %.051233, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.hx, %i.bz
  br i1 %exitcond.not, label %._crit_edge, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i, !llvm.loop !258

bb.ac:                                            ; preds = %.invoke
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ad:                                            ; preds = %._crit_edge
  %i.hz = load i8, ptr %i.bh, align 4, !tbaa !49, !range !140, !noundef !116
  %i.ia = trunc nuw i8 %i.hz to i1
  br i1 %i.ia, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 %.sroa.0.0.copyload.i, ptr %i.a, align 4, !tbaa !93
  invoke void @_ZN14core_hashtableI14int_hash_entryILin2147483648ELin2147483647EE8int_hash10default_eqIiEE6insertEOi(ptr noundef nonnull align 8 dereferenceable(20) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.ib = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.ic = add i32 %.sroa.5.0, 1
  br label %bb.h, !llvm.loop !259

bb.ai:                                            ; preds = %bb.ag, %bb.ac, %bb.p, %bb.o
  %.pn59 = phi { ptr, i32 } [ %i.hy, %bb.ac ], [ %i.ib, %bb.ag ], [ %i.gn, %bb.o ], [ %i.go, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %.body

bb.aj:                                            ; preds = %bb.j
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 11 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !103 ; 3 uses
  %i.if = icmp eq ptr %i.ie, null
  br i1 %i.if, label %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE5emptyEv.exit.thread.i, label %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE5emptyEv.exit.i

_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE5emptyEv.exit.i: ; preds = %bb.aj
  %i.ig = getelementptr inbounds i8, ptr %i.ie, i64 -4 ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !93 ; 2 uses
  %i.ii = icmp eq i32 %i.ih, 0
  br i1 %i.ii, label %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE5emptyEv.exit.thread.i, label %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE4backEv.exit.i

_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE5emptyEv.exit.thread.i: ; preds = %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE5emptyEv.exit.i, %bb.aj
  %i.ij = load ptr, ptr %i.bf, align 8, !tbaa !106 ; 3 uses
  %i.ik = icmp eq ptr %i.ij, null
  br i1 %i.ik, label %_ZNK13hilbert_basis12get_num_varsEv.exit.i73, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i71

_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i71: ; preds = %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE5emptyEv.exit.thread.i
  %i.il = getelementptr inbounds i8, ptr %i.ij, i64 -4
  %i.im = load i32, ptr %i.il, align 4, !tbaa !93 ; 4 uses
  %i.in = icmp eq i32 %i.im, 0
  br i1 %i.in, label %_ZNK13hilbert_basis12get_num_varsEv.exit.i73, label %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4backEv.exit.i.i72

_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4backEv.exit.i.i72: ; preds = %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i71
  %i.io = add i32 %i.im, -1
  %i.ip = zext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.ip
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !104 ; 2 uses
  %i.is = icmp eq ptr %i.ir, null
  br i1 %i.is, label %_ZNK13hilbert_basis12get_num_varsEv.exit.i73, label %bb.ak

bb.ak:                                            ; preds = %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4backEv.exit.i.i72
  %i.it = getelementptr inbounds i8, ptr %i.ir, i64 -4
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !93
  br label %_ZNK13hilbert_basis12get_num_varsEv.exit.i73

_ZNK13hilbert_basis12get_num_varsEv.exit.i73:     ; preds = %bb.ak, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4backEv.exit.i.i72, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i71, %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE5emptyEv.exit.thread.i
  %.0.i6.i = phi i32 [ %i.im, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4backEv.exit.i.i72 ], [ 0, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i71 ], [ %i.im, %bb.ak ], [ 0, %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE5emptyEv.exit.thread.i ]
  %.0.i3.i = phi i32 [ 0, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE4backEv.exit.i.i72 ], [ 0, %_ZNK6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE5emptyEv.exit.i.i71 ], [ %i.iu, %bb.ak ], [ 0, %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE5emptyEv.exit.thread.i ]
  %i.iv = add i32 %.0.i3.i, %.0.i6.i              ; 3 uses
  %i.iw = load ptr, ptr %i.bg, align 8, !tbaa !104 ; 3 uses
  %i.ix = icmp eq ptr %i.iw, null
  br i1 %i.ix, label %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i.i, label %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.thread.i.i

_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i.i: ; preds = %_ZNK13hilbert_basis12get_num_varsEv.exit.i73
  %.not.not.i.i = icmp eq i32 %i.iv, 0
  br i1 %.not.not.i.i, label %_ZN13hilbert_basis12alloc_vectorEv.exit, label %thread-pre-split.i.i.preheader

_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.thread.i.i: ; preds = %_ZNK13hilbert_basis12get_num_varsEv.exit.i73
  %i.iy = getelementptr inbounds i8, ptr %i.iw, i64 -4 ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !93 ; 4 uses
  %i.ja = add i32 %i.iz, %i.iv                    ; 3 uses
  %.not15.i.i = icmp ugt i32 %i.ja, %i.iz
  br i1 %.not15.i.i, label %thread-pre-split.i.i.preheader, label %_ZN6vectorI13checked_int64ILb1EELb1EjE3endEv.exit.i.i.i

thread-pre-split.i.i.preheader:                   ; preds = %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i.i, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.thread.i.i
  %.ph508.a = phi i32 [ %i.ja, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.thread.i.i ], [ %i.iv, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i.i ] ; 4 uses
  %.ph509 = phi ptr [ %i.iw, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.thread.i.i ], [ null, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i.i ]
  %.0.i16.i.i.ph = phi i32 [ %i.iz, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.thread.i.i ], [ 0, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i.i ] ; 4 uses
  br label %thread-pre-split.i.i

_ZN6vectorI13checked_int64ILb1EELb1EjE3endEv.exit.i.i.i: ; preds = %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.thread.i.i
  store i32 %i.ja, ptr %i.iy, align 4, !tbaa !93
  br label %_ZN13hilbert_basis12alloc_vectorEv.exit

thread-pre-split.i.i:                             ; preds = %thread-pre-split.i.i.preheader, %.noexc74
  %i.jb = phi ptr [ %.pr.pre.i.i, %.noexc74 ], [ %.ph509, %thread-pre-split.i.i.preheader ] ; 4 uses
  %i.jc = icmp eq ptr %i.jb, null
  br i1 %i.jc, label %_ZNK6vectorI13checked_int64ILb1EELb1EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorI13checked_int64ILb1EELb1EjE8capacityEv.exit.i.i

_ZNK6vectorI13checked_int64ILb1EELb1EjE8capacityEv.exit.i.i: ; preds = %thread-pre-split.i.i
  %i.jd = getelementptr inbounds i8, ptr %i.jb, i64 -8
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !93
  %i.jf = icmp ugt i32 %.ph508.a, %i.je
  br i1 %i.jf, label %_ZNK6vectorI13checked_int64ILb1EELb1EjE8capacityEv.exit.thread.i.i, label %bb.al

_ZNK6vectorI13checked_int64ILb1EELb1EjE8capacityEv.exit.thread.i.i: ; preds = %_ZNK6vectorI13checked_int64ILb1EELb1EjE8capacityEv.exit.i.i, %thread-pre-split.i.i
  invoke void @_ZN6vectorI13checked_int64ILb1EELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bg)
          to label %.noexc74 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc74:                                         ; preds = %_ZNK6vectorI13checked_int64ILb1EELb1EjE8capacityEv.exit.thread.i.i
  %.pr.pre.i.i = load ptr, ptr %i.bg, align 8, !tbaa !104
  br label %thread-pre-split.i.i, !llvm.loop !6

bb.al:                                            ; preds = %_ZNK6vectorI13checked_int64ILb1EELb1EjE8capacityEv.exit.i.i
  %i.jg = getelementptr inbounds i8, ptr %i.jb, i64 -4
  store i32 %.ph508.a, ptr %i.jg, align 4, !tbaa !93
  %.not1218.i.i = icmp eq i32 %.0.i16.i.i.ph, %.ph508.a
  br i1 %.not1218.i.i, label %_ZN13hilbert_basis12alloc_vectorEv.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.al
  %i.jh = zext i32 %.ph508.a to i64
  %i.ji = zext i32 %.0.i16.i.i.ph to i64          ; 2 uses
  %i.jj = getelementptr [8 x i8], ptr %i.jb, i64 %i.ji
  %i.jk = sub nsw i64 %i.jh, %i.ji
  %i.jl = shl nsw i64 %i.jk, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.jj, i8 0, i64 %i.jl, i1 false), !tbaa !136
  br label %_ZN13hilbert_basis12alloc_vectorEv.exit

_ZN6vectorIN13hilbert_basis8offset_tELb0EjE4backEv.exit.i: ; preds = %_ZNK6vectorIN13hilbert_basis8offset_tELb0EjE5emptyEv.exit.i
  %i.jm = add i32 %i.ih, -1                       ; 2 uses
  %i.jn = zext i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %i.jn
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !93
  store i32 %i.jm, ptr %i.ig, align 4, !tbaa !93
  br label %_ZN13hilbert_basis12alloc_vectorEv.exit

_ZN13hilbert_basis12alloc_vectorEv.exit:          ; preds = %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE4backEv.exit.i, %.lr.ph.preheader.i.i, %bb.al, %_ZN6vectorI13checked_int64ILb1EELb1EjE3endEv.exit.i.i.i, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i.i
  %.sroa.0.0.i = phi i32 [ %i.jp, %_ZN6vectorIN13hilbert_basis8offset_tELb0EjE4backEv.exit.i ], [ 0, %_ZNK6vectorI13checked_int64ILb1EELb1EjE4sizeEv.exit.i.i ], [ %i.iz, %_ZN6vectorI13checked_int64ILb1EELb1EjE3endEv.exit.i.i.i ], [ %.0.i16.i.i.ph, %bb.al ], [ %.0.i16.i.i.ph, %.lr.ph.preheader.i.i ]
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %_ZN13hilbert_basis7recycleENS_8offset_tE.exit, %_ZN13hilbert_basis12alloc_vectorEv.exit
  %.sroa.0192.0 = phi i32 [ %.sroa.0.0.i, %_ZN13hilbert_basis12alloc_vectorEv.exit ], [ %.sroa.0192.3, %_ZN13hilbert_basis7recycleENS_8offset_tE.exit ] ; 4 uses
  %i.js = load ptr, ptr %i.e, align 8, !tbaa !52
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 48
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !92 ; 2 uses
  %i.jv = icmp eq ptr %i.ju, null
  br i1 %i.jv, label %_ZNK13hilbert_basis7passive5emptyEv.exit.thread, label %_ZNK13hilbert_basis7passive5emptyEv.exit

_ZNK13hilbert_basis7passive5emptyEv.exit:         ; preds = %bb.am
  %i.jw = getelementptr inbounds i8, ptr %i.ju, i64 -4
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !93
  %i.jy = icmp eq i32 %i.jx, 1
  br i1 %i.jy, label %bb.ce, label %_ZNK13hilbert_basis7passive5emptyEv.exit.thread

_ZNK13hilbert_basis7passive5emptyEv.exit.thread:  ; preds = %bb.am, %_ZNK13hilbert_basis7passive5emptyEv.exit
  %i.jz = load ptr, ptr %0, align 8, !tbaa !139, !nonnull !116, !align !117
  %i.ka = invoke noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(40) %i.jz)
end_hunk_2
begin_hunk_3_@_ZN6vectorI8rationalLb1EjE13expand_vectorEv:bb.a
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.av, ptr noundef nonnull align 8 dereferenceable(32) %.047.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.l

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.aw)
          to label %_ZSt8_DestroyI8rationalEvPT_.exit.i.i.i.i.i unwind label %bb.l

bb.l:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #24
  unreachable

_ZSt8_DestroyI8rationalEvPT_.exit.i.i.i.i.i:      ; preds = %.noexc.i.i.i.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i, i64 32
  %i.ba = add i32 %.08.i.i.i.i.i, -1              ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i.i, label %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !5

_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.loopexit.i: ; preds = %_ZSt8_DestroyI8rationalEvPT_.exit.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !134
  br label %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.i

_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.i: ; preds = %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.loopexit.i, %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.i.i
  %i.bb = phi ptr [ %.pre.i, %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.loopexit.i ], [ %i.as, %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit.i.i ]
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -8
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bc)
  br label %_ZN6vectorI8rationalLb1EjE7destroyEv.exit

_ZN6vectorI8rationalLb1EjE7destroyEv.exit:        ; preds = %_ZNK6vectorI8rationalLb1EjE4sizeEv.exit, %_ZN6vectorI8rationalLb1EjE16destroy_elementsEv.exit.i
  store ptr %i.ao, ptr %0, align 8, !tbaa !134
  store i32 %i.j, ptr %i.ai, align 4, !tbaa !93
  br label %bb.m

bb.m:                                             ; preds = %_ZN6vectorI8rationalLb1EjE7destroyEv.exit, %bb.b
  ret void

bb.n:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyISt13move_iteratorIP8rationalES2_ET0_T_S5_S4_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.08 = phi ptr [ %i.bc, %.lr.ph ], [ %2, %bb.a ] ; 8 uses
  %.sroa.04.07 = phi ptr [ %i.bb, %.lr.ph ], [ %0, %bb.a ] ; 8 uses
  store i32 0, ptr %.08, align 8, !tbaa !127
  %i.b = getelementptr inbounds nuw i8, ptr %.08, i64 4 ; 6 uses
  %i.c = load i8, ptr %i.b, align 4
  %i.d = and i8 %i.c, -4
  store i8 %i.d, ptr %i.b, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %.08, i64 8 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !128
  %i.f = load i32, ptr %.sroa.04.07, align 4, !tbaa !93
  store i32 %i.f, ptr %.08, align 8, !tbaa !93
  store i32 0, ptr %.sroa.04.07, align 4, !tbaa !93
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !174
  store ptr %i.h, ptr %i.e, align 8, !tbaa !174
  store ptr null, ptr %i.g, align 8, !tbaa !174
  %i.i = load i8, ptr %i.b, align 4               ; 2 uses
  %i.j = and i8 %i.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 4 ; 5 uses
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, 2
  %i.n = and i8 %i.i, -3
  %i.o = or disjoint i8 %i.m, %i.n
  store i8 %i.o, ptr %i.b, align 4
  %i.p = load i8, ptr %i.k, align 4               ; 2 uses
  %i.q = and i8 %i.p, -3
  %i.r = or disjoint i8 %i.q, %i.j
  store i8 %i.r, ptr %i.k, align 4
  %i.s = load i8, ptr %i.b, align 4               ; 2 uses
  %i.t = and i8 %i.s, 1
  %i.u = and i8 %i.p, 1
  %i.v = and i8 %i.s, -2
  %i.w = or disjoint i8 %i.v, %i.u
  store i8 %i.w, ptr %i.b, align 4
  %i.x = load i8, ptr %i.k, align 4
  %i.y = and i8 %i.x, -2
  %i.z = or disjoint i8 %i.y, %i.t
  store i8 %i.z, ptr %i.k, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.08, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 16 ; 2 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !127
  %i.ac = getelementptr inbounds nuw i8, ptr %.08, i64 20 ; 6 uses
  %i.ad = load i8, ptr %i.ac, align 4
  %i.ae = and i8 %i.ad, -4
  store i8 %i.ae, ptr %i.ac, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.08, i64 24 ; 2 uses
  store ptr null, ptr %i.af, align 8, !tbaa !128
  %i.ag = load i32, ptr %i.ab, align 8, !tbaa !93
  store i32 %i.ag, ptr %i.aa, align 8, !tbaa !93
  store i32 0, ptr %i.ab, align 8, !tbaa !93
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !174
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !174
  store ptr null, ptr %i.ah, align 8, !tbaa !174
  %i.aj = load i8, ptr %i.ac, align 4             ; 2 uses
  %i.ak = and i8 %i.aj, 2
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 20 ; 5 uses
  %i.am = load i8, ptr %i.al, align 4
  %i.an = and i8 %i.am, 2
  %i.ao = and i8 %i.aj, -3
  %i.ap = or disjoint i8 %i.an, %i.ao
  store i8 %i.ap, ptr %i.ac, align 4
  %i.aq = load i8, ptr %i.al, align 4             ; 2 uses
  %i.ar = and i8 %i.aq, -3
  %i.as = or disjoint i8 %i.ar, %i.ak
  store i8 %i.as, ptr %i.al, align 4
  %i.at = load i8, ptr %i.ac, align 4             ; 2 uses
  %i.au = and i8 %i.at, 1
  %i.av = and i8 %i.aq, 1
  %i.aw = and i8 %i.at, -2
  %i.ax = or disjoint i8 %i.aw, %i.av
  store i8 %i.ax, ptr %i.ac, align 4
  %i.ay = load i8, ptr %i.al, align 4
  %i.az = and i8 %i.ay, -2
  %i.ba = or disjoint i8 %i.az, %i.au
  store i8 %i.ba, ptr %i.al, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.04.07, i64 32 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.08, i64 32 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %1
  br i1 %i.bd, label %._crit_edge, label %.lr.ph, !llvm.loop !351

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.bc, %.lr.ph ]
  ret ptr %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN13checked_int64ILb1EEmLERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !136
  %.fr = freeze i64 %i.a                          ; 9 uses
  %i.b = add i64 %.fr, 2147483647
  %or.cond29 = icmp ult i64 %i.b, 4294967295
  %.pre = load i64, ptr %1, align 8, !tbaa !136   ; 6 uses
  br i1 %or.cond29, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %.pre, 2147483647
  %or.cond30 = icmp ult i64 %i.c, 4294967295
  br i1 %or.cond30, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = mul nsw i64 %.pre, %.fr
  br label %.thread36.sink.split

bb.d:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %.fr, 0
  br i1 %i.e, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.a, %bb.d
  %i.f = icmp eq i64 %.fr, 1
  %i.g = icmp ult i64 %.pre, 2
  %or.cond35 = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond35, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread, %bb.d
  %i.h = mul nsw i64 %.pre, %.fr
  br label %.thread36.sink.split

bb.f:                                             ; preds = %.thread
  %i.i = icmp eq i64 %.fr, -9223372036854775808
  %i.j = icmp eq i64 %.pre, -9223372036854775808
  %or.cond33 = or i1 %i.i, %i.j
  br i1 %or.cond33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.k, align 8, !tbaa !72
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.l = tail call i64 @llvm.abs.i64(i64 %.fr, i1 true)
  %i.m = tail call i64 @llvm.abs.i64(i64 %.pre, i1 true)
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.m, i64 %i.l) ; 2 uses
  %mul.val = extractvalue { i64, i1 } %mul, 0     ; 4 uses
  %mul.ov = extractvalue { i64, i1 } %mul, 1
  %i.n = icmp slt i64 %mul.val, 0
  %or.cond = or i1 %mul.ov, %i.n
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18overflow_exception, i64 16), ptr %i.o, align 8, !tbaa !72
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI18overflow_exception, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.p = icmp slt i64 %.fr, 0
  store i64 %mul.val, ptr %0, align 8, !tbaa !136
  br i1 %i.p, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.q = load i64, ptr %1, align 8, !tbaa !136
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %bb.l, label %.thread36

bb.l:                                             ; preds = %bb.k
  %i.s = sub nsw i64 0, %mul.val
  br label %.thread36.sink.split

bb.m:                                             ; preds = %bb.j
  %.not = icmp ne i64 %.fr, 0
  %i.t = load i64, ptr %1, align 8
  %i.u = icmp slt i64 %i.t, 0
  %or.cond38 = select i1 %.not, i1 %i.u, i1 false
  br i1 %or.cond38, label %bb.n, label %.thread36

bb.n:                                             ; preds = %bb.m
  %i.v = sub nsw i64 0, %mul.val
  br label %.thread36.sink.split

.thread36.sink.split:                             ; preds = %bb.c, %bb.e, %bb.n, %bb.l
  %.sink = phi i64 [ %i.s, %bb.l ], [ %i.v, %bb.n ], [ %i.h, %bb.e ], [ %i.d, %bb.c ]
  store i64 %.sink, ptr %0, align 8, !tbaa !136
  br label %.thread36

.thread36:                                        ; preds = %.thread36.sink.split, %bb.k, %bb.m
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #21

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { noreturn }
attributes #26 = { builtin nounwind }
attributes #27 = { builtin allocsize(0) }

!llvm.module.flags = !{!19, !20}
!llvm.ident = !{!21}
!llvm.errno.tbaa = !{!26}

!0 = distinct !{!0, !94}
!1 = distinct !{!1, !94}
!2 = distinct !{!2, !94}
!3 = distinct !{!3, !94}
!4 = distinct !{!4, !94}
!5 = distinct !{!5, !94}
!6 = distinct !{!6, !94}
!7 = distinct !{!7, !94}
!8 = distinct !{!8, !94}
!9 = distinct !{!9, !94}
!10 = distinct !{!10, !94}
!11 = distinct !{!11, !94}
!12 = distinct !{!12, !94}
!13 = distinct !{!13, !94}
!14 = distinct !{!14, !94}
!15 = distinct !{!15, !94}
!16 = distinct !{!16, !94}
!17 = distinct !{!17, !94}
!18 = distinct !{!18, !94}
!19 = !{i32 8, !"PIC Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 2}
!21 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!22 = !{!"Simple C++ TBAA"}
!23 = !{!"omnipotent char", !22, i64 0}
!24 = !{!"int", !23, i64 0}
!25 = !{!"__libc_errno", !24, i64 0}
!26 = !{!25, !24, i64 0}
!27 = !{!"any pointer", !23, i64 0}
!28 = !{!"p1 _ZTS8reslimit", !27, i64 0}
!29 = !{!"p1 int", !27, i64 0}
!30 = !{!"_ZTS6vectorIjLb0EjE", !29, i64 0}
!31 = !{!30, !29, i64 0}
!32 = !{!"p1 _ZTS6vectorI13checked_int64ILb1EELb1EjE", !27, i64 0}
!33 = !{!"_ZTS6vectorIS_I13checked_int64ILb1EELb1EjELb1EjE", !32, i64 0}
!34 = !{!"p1 bool", !27, i64 0}
!35 = !{!"_ZTS6vectorIbLb0EjE", !34, i64 0}
!36 = !{!"_ZTS7svectorIbjE", !35, i64 0}
!37 = !{!"p1 _ZTS13checked_int64ILb1EE", !27, i64 0}
!38 = !{!"_ZTS6vectorI13checked_int64ILb1EELb1EjE", !37, i64 0}
!39 = !{!"p1 _ZTSN13hilbert_basis8offset_tE", !27, i64 0}
!40 = !{!"_ZTS6vectorIN13hilbert_basis8offset_tELb0EjE", !39, i64 0}
!41 = !{!"_ZTS7svectorIN13hilbert_basis8offset_tEjE", !40, i64 0}
!42 = !{!"p1 _ZTSN13hilbert_basis7passiveE", !27, i64 0}
!43 = !{!"p1 _ZTSN13hilbert_basis8passive2E", !27, i64 0}
!44 = !{!"_ZTSN13hilbert_basis5statsE", !24, i64 0, !24, i64 4, !24, i64 8}
!45 = !{!"p1 _ZTSN13hilbert_basis5indexE", !27, i64 0}
!46 = !{!"_ZTS7svectorIjjE", !30, i64 0}
!47 = !{!"bool", !23, i64 0}
!48 = !{!"_ZTS13hilbert_basis", !28, i64 0, !33, i64 8, !36, i64 16, !38, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !42, i64 72, !43, i64 80, !44, i64 88, !45, i64 104, !46, i64 112, !24, i64 120, !47, i64 124, !47, i64 125, !47, i64 126}
!49 = !{!48, !47, i64 124}
!50 = !{!48, !47, i64 125}
!51 = !{!48, !45, i64 104}
!52 = !{!48, !42, i64 72}
!53 = !{!48, !43, i64 80}
!54 = !{!"p1 _ZTS13hilbert_basis", !27, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!"p1 _ZTS17default_map_entryI13checked_int64ILb1EEPN13hilbert_basis12value_index2EE", !27, i64 0}
!57 = !{!"_ZTS14core_hashtableI17default_map_entryI13checked_int64ILb1EEPN13hilbert_basis12value_index2EEN9table2mapIS6_NS2_9hash_procENS2_7eq_procEE15entry_hash_procENSA_13entry_eq_procEE", !56, i64 0, !24, i64 8, !24, i64 12, !24, i64 16}
!58 = !{!57, !24, i64 8}
!59 = !{!57, !24, i64 12}
!60 = !{!57, !24, i64 16}
!61 = !{!57, !56, i64 0}
!62 = !{!"p1 _ZTSN13hilbert_basis12value_index26key_leE", !27, i64 0}
!63 = !{!62, !62, i64 0}
!64 = !{!"long", !23, i64 0}
!65 = !{!"_ZTS22small_object_allocator", !23, i64 0, !23, i64 256, !64, i64 512}
!66 = !{!"p1 _ZTSN9heap_trieI13checked_int64ILb1EEN13hilbert_basis12value_index26key_leENS1_9hash_procEjE4nodeE", !27, i64 0}
!67 = !{!"_ZTSN9heap_trieI13checked_int64ILb1EEN13hilbert_basis12value_index26key_leENS1_9hash_procEjE5statsE", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16}
!68 = !{!"_ZTS9heap_trieI13checked_int64ILb1EEN13hilbert_basis12value_index26key_leENS1_9hash_procEjE", !65, i64 0, !62, i64 520, !24, i64 528, !46, i64 536, !24, i64 544, !66, i64 552, !67, i64 560, !66, i64 584, !66, i64 592}
!69 = !{!68, !24, i64 528}
!70 = !{!68, !24, i64 544}
!71 = !{!"vtable pointer", !22, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!"_ZTSN13hilbert_basis8offset_tE", !24, i64 0}
!74 = !{!73, !24, i64 0}
!75 = !{!"_ZTSN13hilbert_basis12value_index26key_leE", !54, i64 0}
!76 = !{!"_ZTSN9heap_trieI13checked_int64ILb1EEN13hilbert_basis12value_index26key_leENS1_9hash_procEjE11check_valueE"}
!77 = !{!"_ZTSN13hilbert_basis12value_index27checkerE", !76, i64 0, !54, i64 8, !73, i64 16}
!78 = !{!"_ZTSN13hilbert_basis12value_index2E", !54, i64 0, !75, i64 8, !68, i64 16, !77, i64 616, !24, i64 640}
!79 = !{!78, !24, i64 640}
!80 = !{!78, !54, i64 624}
!81 = !{!"_ZTS9table2mapI17default_map_entryI13checked_int64ILb1EEPN13hilbert_basis12value_index2EENS2_9hash_procENS2_7eq_procEE", !57, i64 0}
!82 = !{!"_ZTS3mapI13checked_int64ILb1EEPN13hilbert_basis12value_index2ENS1_9hash_procENS1_7eq_procEE", !81, i64 0}
!83 = !{!"_ZTSN13hilbert_basis5index11numeral_mapIPNS_12value_index2EEE", !82, i64 0}
!84 = !{!"_ZTSN13hilbert_basis5index5statsE", !24, i64 0, !24, i64 4}
!85 = !{!"_ZTSN13hilbert_basis5indexE", !54, i64 0, !83, i64 8, !78, i64 32, !78, i64 680, !84, i64 1328, !24, i64 1336}
!86 = !{!85, !24, i64 1336}
!87 = !{!"any p2 pointer", !27, i64 0}
!88 = !{!"p2 _ZTSN13hilbert_basis7passiveE", !87, i64 0}
!89 = !{!"_ZTSN13hilbert_basis7passive2ltE", !88, i64 0}
!90 = !{!89, !88, i64 0}
!91 = !{!"_ZTS6vectorIiLb0EjE", !29, i64 0}
!92 = !{!91, !29, i64 0}
!93 = !{!24, !24, i64 0}
!94 = !{!"llvm.loop.mustprogress"}
!95 = !{!"_ZTS7svectorIijE", !91, i64 0}
!96 = !{!"_ZTS4heapIN13hilbert_basis7passive2ltEE", !89, i64 0, !95, i64 8, !95, i64 16}
!97 = !{!"_ZTSN13hilbert_basis7passiveE", !54, i64 0, !41, i64 8, !46, i64 16, !42, i64 24, !89, i64 32, !96, i64 40}
!98 = !{!"p2 _ZTSN13hilbert_basis8passive2E", !87, i64 0}
!99 = !{!"_ZTSN13hilbert_basis8passive22ltE", !98, i64 0}
!100 = !{!99, !98, i64 0}
!101 = !{!"_ZTS4heapIN13hilbert_basis8passive22ltEE", !99, i64 0, !95, i64 8, !95, i64 16}
!102 = !{!"_ZTSN13hilbert_basis8passive2E", !54, i64 0, !41, i64 8, !41, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !46, i64 48, !41, i64 56, !38, i64 64, !46, i64 72, !43, i64 80, !99, i64 88, !101, i64 96}
!103 = !{!40, !39, i64 0}
!104 = !{!38, !37, i64 0}
!105 = !{!35, !34, i64 0}
!106 = !{!33, !32, i64 0}
!107 = !{!48, !24, i64 120}
!108 = !{!"_ZTS16hash_entry_state", !23, i64 0}
!109 = !{!"_ZTS13checked_int64ILb1EE", !64, i64 0}
!110 = !{!"p1 _ZTSN13hilbert_basis12value_index2E", !27, i64 0}
!111 = !{!"_ZTS9_key_dataI13checked_int64ILb1EEPN13hilbert_basis12value_index2EE", !109, i64 0, !110, i64 8}
!112 = !{!"_ZTS18default_hash_entryI9_key_dataI13checked_int64ILb1EEPN13hilbert_basis12value_index2EEE", !24, i64 0, !108, i64 4, !111, i64 8}
!113 = !{!112, !108, i64 4}
!114 = !{!111, !110, i64 8}
!115 = !{!78, !54, i64 0}
!116 = !{}
!117 = !{i64 8}
!118 = !{!"llvm.loop.unroll.disable"}
!119 = !{!48, !24, i64 88}
!120 = !{!48, !24, i64 92}
!121 = !{!48, !24, i64 96}
!122 = !{!85, !24, i64 1328}
!123 = !{!85, !24, i64 1332}
!124 = !{!68, !66, i64 552}
!125 = !{!"p1 _ZTS8mpz_cell", !27, i64 0}
!126 = !{!"_ZTS3mpz", !24, i64 0, !24, i64 4, !24, i64 4, !125, i64 8}
!127 = !{!126, !24, i64 0}
!128 = !{!126, !125, i64 8}
!129 = !{!"p1 _ZTS11mpq_managerILb1EE", !27, i64 0}
!130 = !{!129, !129, i64 0}
!131 = !{!64, !64, i64 0}
!132 = !{!"p1 _ZTS8rational", !27, i64 0}
!133 = !{!"_ZTS6vectorI8rationalLb1EjE", !132, i64 0}
!134 = !{!133, !132, i64 0}
!135 = !{!47, !47, i64 0}
!136 = !{!109, !64, i64 0}
!137 = !{!"llvm.loop.isvectorized", i32 1}
!138 = !{!"llvm.loop.unroll.runtime.disable"}
!139 = !{!48, !28, i64 0}
end_hunk_3
