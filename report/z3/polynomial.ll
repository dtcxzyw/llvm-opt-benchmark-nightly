Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/polynomial?download=true
inline.NumInlined: 6687
inline.NumDeleted: 1176
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 81
loop-unroll.NumUnrolled: 206
begin_hunk_0_@_ZN10polynomial7manager3imp9translateEPKNS_10polynomialEjRK3mpz:bb.a

bb.i:                                             ; preds = %bb.h
  %i.bf = add nsw i32 %i.ay, -1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.127.i.i.i = phi i32 [ %i.bd, %bb.g ], [ %.026.i.i.i, %bb.i ] ; 2 uses
  %.1.i.i.i = phi i32 [ %.0.i.i.i, %bb.g ], [ %i.bf, %bb.i ] ; 2 uses
  %.not42.i.i.i = icmp sgt i32 %.127.i.i.i, %.1.i.i.i
  br i1 %.not42.i.i.i, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i, label %.preheader43.i.i.i, !llvm.loop !6

.thread.loopexit.split.loop.exit.i.i.i:           ; preds = %.lr.ph231.5, %.lr.ph231.4, %.lr.ph231.3, %.lr.ph231.2, %.lr.ph231.1, %.lr.ph231
  %indvars.iv.next.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph231 ], [ %indvars.iv.next.i.i.i.1, %.lr.ph231.1 ], [ %indvars.iv.next.i.i.i.2, %.lr.ph231.2 ], [ %indvars.iv.next.i.i.i.3, %.lr.ph231.3 ], [ %indvars.iv.next.i.i.i.4, %.lr.ph231.4 ], [ %indvars.iv.next.i.i.i.5, %.lr.ph231.5 ]
  %indvars.le.i.i.i = trunc nuw i64 %indvars.iv.next.i.i.i.lcssa to i32
  br label %_ZNK10polynomial8monomial8index_ofEj.exit.i.i

_ZNK10polynomial8monomial8index_ofEj.exit.i.i:    ; preds = %bb.h, %.thread.loopexit.split.loop.exit.i.i.i
  %.4.i.i.i = phi i32 [ %indvars.le.i.i.i, %.thread.loopexit.split.loop.exit.i.i.i ], [ %i.ay, %bb.h ] ; 2 uses
  %i.bg = icmp eq i32 %.4.i.i.i, -1
  br i1 %i.bg, label %_ZNK10polynomial8monomial9degree_ofEj.exit.i, label %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i.i

_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i.i: ; preds = %_ZNK10polynomial8monomial8index_ofEj.exit.i.i
  %.pre.i.i = zext i32 %.4.i.i.i to i64
  br label %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i.i

_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i.i: ; preds = %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i.i, %bb.e
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %_ZNK10polynomial8monomial8index_ofEj.exit._ZNK10polynomial8monomial8index_ofEj.exit.thread6_crit_edge.i.i ], [ %i.z, %bb.e ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.pre-phi.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !74
  %i.bk = tail call i32 @llvm.umax.i32(i32 %i.bj, i32 %.02029.i)
  br label %_ZNK10polynomial8monomial9degree_ofEj.exit.i

_ZNK10polynomial8monomial9degree_ofEj.exit.i:     ; preds = %bb.j, %.preheader.i.i.i, %.preheader.i.i.i.1, %.preheader.i.i.i.2, %.preheader.i.i.i.3, %.preheader.i.i.i.4, %.lr.ph231.5, %.preheader.i.i.i.preheader, %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i.i, %_ZNK10polynomial8monomial8index_ofEj.exit.i.i, %.preheader.i
  %.0.i.i = phi i32 [ %i.bk, %_ZNK10polynomial8monomial8index_ofEj.exit.thread6.i.i ], [ %.02029.i, %_ZNK10polynomial8monomial8index_ofEj.exit.i.i ], [ %.02029.i, %.preheader.i ], [ %.02029.i, %.preheader.i.i.i.preheader ], [ %.02029.i, %.preheader.i.i.i ], [ %.02029.i, %.lr.ph231.5 ], [ %.02029.i, %.preheader.i.i.i.4 ], [ %.02029.i, %.preheader.i.i.i.3 ], [ %.02029.i, %.preheader.i.i.i.2 ], [ %.02029.i, %.preheader.i.i.i.1 ], [ %.02029.i, %bb.j ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit, label %.preheader.i, !llvm.loop !7

_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit: ; preds = %_ZNK10polynomial8monomial9degree_ofEj.exit.i, %bb.d
  %.122.i = phi i32 [ %i.r, %bb.d ], [ %.0.i.i, %_ZNK10polynomial8monomial9degree_ofEj.exit.i ] ; 6 uses
  %i.bl = icmp eq i32 %.122.i, 0
  br i1 %i.bl, label %_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit
  %i.bm = load i32, ptr %3, align 8, !tbaa !91
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_ZN10polynomial7manager6degreeEPKNS_10polynomialEj.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 6 uses
  %i.bp = add i32 %.122.i, 1                      ; 2 uses
  tail call void @_ZN10polynomial7manager3imp17som_buffer_vector5resetEj(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i32 noundef %i.bp)
  tail call void @_ZN10polynomial7manager3imp6coeffsEPKNS_10polynomialEjRNS1_17som_buffer_vectorE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bo)
  %i.bq = add i32 %.122.i, -1                     ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 11 uses
  br label %bb.s

bb.m:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !207, !nonnull !99, !align !100
  store ptr null, ptr %11, align 8, !tbaa !221
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !81
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 6 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !163 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %_ZN10polynomial7manager3imp10som_buffer5resetEv.exit, label %_ZNK10polynomial7manager3imp10som_buffer5emptyEv.exit.i

_ZNK10polynomial7manager3imp10som_buffer5emptyEv.exit.i: ; preds = %bb.m
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 -4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !70 ; 2 uses
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %_ZN10polynomial7manager3imp10som_buffer5resetEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK10polynomial7manager3imp10som_buffer5emptyEv.exit.i
  %i.cc = load ptr, ptr %i.bv, align 8, !tbaa !205
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %wide.trip.count.i45 = zext i32 %i.ca to i64
  br label %bb.p

._crit_edge.i:                                    ; preds = %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !162 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i, label %_ZN6vectorI3mpzLb0EjE5resetEv.exit.i, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -4
  store i32 0, ptr %i.ch, align 4, !tbaa !70
  br label %_ZN6vectorI3mpzLb0EjE5resetEv.exit.i

_ZN6vectorI3mpzLb0EjE5resetEv.exit.i:             ; preds = %bb.n, %._crit_edge.i
  %i.ci = load ptr, ptr %i.bw, align 8, !tbaa !163 ; 2 uses
  %.not.i8.i = icmp eq ptr %i.ci, null
  br i1 %.not.i8.i, label %_ZN10polynomial7manager3imp10som_buffer5resetEv.exit, label %bb.o

bb.o:                                             ; preds = %_ZN6vectorI3mpzLb0EjE5resetEv.exit.i
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -4
  store i32 0, ptr %i.cj, align 4, !tbaa !70
  br label %_ZN10polynomial7manager3imp10som_buffer5resetEv.exit

bb.p:                                             ; preds = %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i, %.lr.ph.i
  %indvars.iv.i46 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i47, %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i ] ; 4 uses
  %i.ck = load ptr, ptr %i.bw, align 8, !tbaa !163
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv.i46
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !177
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !174 ; 2 uses
  %i.cp = load ptr, ptr %i.ce, align 8, !tbaa !69 ; 3 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i:              ; preds = %bb.p
  %i.cr = getelementptr inbounds i8, ptr %i.cp, i64 -4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !70
  %i.ct = icmp ult i32 %i.co, %i.cs
  br i1 %i.ct, label %bb.q, label %_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit.i

bb.q:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i
  %i.cu = zext i32 %i.co to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cu
  store i32 -1, ptr %i.cv, align 4, !tbaa !70
  br label %_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit.i

_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit.i: ; preds = %bb.q, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i, %bb.p
  %i.cw = load ptr, ptr %i.cf, align 8, !tbaa !162
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %indvars.iv.i46
  %i.cy = load ptr, ptr %i.cd, align 8, !tbaa !98, !nonnull !99, !align !100
  invoke void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %i.cx)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit.i
  %i.cz = load ptr, ptr %i.bv, align 8, !tbaa !205
  %i.da = load ptr, ptr %i.bw, align 8, !tbaa !163
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.i46
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !177 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 464
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !151
  %i.df = load i32, ptr %i.dc, align 4, !tbaa !199
  %i.dg = add i32 %i.df, -1                       ; 2 uses
  store i32 %i.dg, ptr %i.dc, align 4, !tbaa !199
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.r, label %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i

bb.r:                                             ; preds = %.noexc
  invoke void @_ZN10polynomial16monomial_manager3delEPNS_8monomialE(ptr noundef nonnull align 8 dereferenceable(192) %i.de, ptr noundef nonnull %i.dc)
          to label %_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN10polynomial7manager3imp7dec_refEPNS_8monomialE.exit.i: ; preds = %bb.r, %.noexc
  %indvars.iv.next.i47 = add nuw nsw i64 %indvars.iv.i46, 1 ; 2 uses
  %exitcond.not.i48 = icmp eq i64 %indvars.iv.next.i47, %wide.trip.count.i45
  br i1 %exitcond.not.i48, label %._crit_edge.i, label %bb.p, !llvm.loop !10

_ZN10polynomial7manager3imp10som_buffer5resetEv.exit: ; preds = %bb.m, %_ZNK10polynomial7manager3imp10som_buffer5emptyEv.exit.i, %_ZN6vectorI3mpzLb0EjE5resetEv.exit.i, %bb.o
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 464
  %.sroa.0.0.insert.ext.i.i = zext i32 %2 to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.ax

bb.s:                                             ; preds = %bb.l, %._crit_edge
  %.039129 = phi i32 [ 1, %bb.l ], [ %i.dq, %._crit_edge ] ; 2 uses
  %i.dl = load ptr, ptr %0, align 8, !tbaa !222, !nonnull !99, !align !100
  %i.dm = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(40) %i.dl)
  br i1 %i.dm, label %_ZN10polynomial7manager3imp10checkpointEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dn = tail call ptr @__cxa_allocate_exception(i64 40) #29 ; 3 uses
  invoke void @_ZN10polynomial20polynomial_exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.dn, ptr noundef nonnull @_ZN11common_msgs14g_canceled_msgE)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @__cxa_throw(ptr nonnull %i.dn, ptr nonnull @_ZTIN10polynomial20polynomial_exceptionE, ptr nonnull @_ZN17default_exceptionD2Ev) #31
  unreachable

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i96, %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %bb.ag, %.body, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.do, %bb.v ], [ %eh.lpad-body, %.body ], [ %i.fi, %bb.ag ], [ %i.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.hi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i96 ], [ %i.hn, %bb.at ]
  resume { ptr, i32 } %common.resume.op

bb.v:                                             ; preds = %bb.t
  %i.do = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.dn) #29
  br label %common.resume

_ZN10polynomial7manager3imp10checkpointEv.exit:   ; preds = %bb.s
  %i.dp = sub nuw i32 %.122.i, %.039129           ; 2 uses
  %.not44127 = icmp ugt i32 %i.dp, %i.bq
  br i1 %.not44127, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN10polynomial7manager3imp17som_buffer_vectorixEj.exit62, %_ZN10polynomial7manager3imp10checkpointEv.exit
  %i.dq = add i32 %.039129, 1                     ; 2 uses
  %.not = icmp ugt i32 %i.dq, %.122.i
  br i1 %.not, label %bb.m, label %bb.s, !llvm.loop !470

.lr.ph:                                           ; preds = %_ZN10polynomial7manager3imp10checkpointEv.exit, %_ZN10polynomial7manager3imp17som_buffer_vectorixEj.exit62
  %.038128 = phi i32 [ %i.dr, %_ZN10polynomial7manager3imp17som_buffer_vectorixEj.exit62 ], [ %i.dp, %_ZN10polynomial7manager3imp10checkpointEv.exit ] ; 4 uses
  %i.dr = add nuw i32 %.038128, 1                 ; 5 uses
  %i.ds = load ptr, ptr %i.br, align 8, !tbaa !249 ; 3 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %.lr.ph.i.i.preheader, label %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i

_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i: ; preds = %.lr.ph
  %i.du = getelementptr inbounds i8, ptr %i.ds, i64 -4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !70 ; 2 uses
  %12 = icmp ult i32 %i.dv, %i.dr
  br i1 %12, label %.lr.ph.i.i.preheader, label %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i52

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph, %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i
  %.05.i.i.ph = phi i32 [ 0, %.lr.ph ], [ %i.dv, %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i
  %.05.i.i = phi i32 [ %i.fs, %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i ], [ %.05.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.dw = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 32) ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dw, i8 0, i64 32, i1 false)
  %i.dx = load ptr, ptr %i.bo, align 8, !tbaa !250 ; 2 uses
  %.not.i.i51 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i51, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i
  store ptr %i.dx, ptr %i.dw, align 8, !tbaa !205
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.i.i
  %i.dy = load ptr, ptr %i.br, align 8, !tbaa !249 ; 4 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ea = getelementptr inbounds i8, ptr %i.dy, i64 -4
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !70 ; 5 uses
  %i.ec = getelementptr inbounds i8, ptr %i.dy, i64 -8 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !70
  %i.ee = icmp eq i32 %i.eb, %i.ed
  br i1 %i.ee, label %bb.aa, label %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i

bb.z:                                             ; preds = %bb.x
  %i.ef = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.ef, align 4, !tbaa !70
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  store i32 0, ptr %i.eg, align 4, !tbaa !70
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  store ptr %i.eh, ptr %i.br, align 8, !tbaa !249
  br label %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE13expand_vectorEv.exit

bb.aa:                                            ; preds = %bb.y
  %i.ei = mul i32 %i.eb, 3
  %i.ej = add i32 %i.ei, 1
  %i.ek = lshr i32 %i.ej, 1                       ; 3 uses
  %i.el = shl i32 %i.ek, 3
  %i.em = add i32 %i.el, 8                        ; 2 uses
  %.not.i88 = icmp ugt i32 %i.ek, %i.eb
  br i1 %.not.i88, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.en = shl i32 %i.eb, 3
  %i.eo = add i32 %i.en, 8
  %.not27.i = icmp ugt i32 %i.em, %i.eo
  br i1 %.not27.i, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ep = tail call ptr @__cxa_allocate_exception(i64 40) #29 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.ep, align 8, !tbaa !173
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 24 ; 3 uses
  store ptr %i.er, ptr %i.eq, align 8, !tbaa !226
  %i.es = load ptr, ptr %8, align 8, !tbaa !169   ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.eu = icmp eq ptr %i.es, %i.et
  br i1 %i.eu, label %bb.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.ev = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !170 ; 3 uses
  %i.ex = icmp ult i64 %i.ew, 16
  call void @llvm.assume(i1 %i.ex)
  %i.ey = add nuw nsw i64 %i.ew, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.er, ptr noundef nonnull align 8 dereferenceable(1) %i.et, i64 %i.ey, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ad
  store ptr %i.es, ptr %i.eq, align 8, !tbaa !169
  %i.ez = load i64, ptr %i.et, align 8, !tbaa !171
  store i64 %i.ez, ptr %i.er, align 8, !tbaa !171
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !170
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.ae
  %i.fa = phi i64 [ %i.ew, %bb.ae ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.fb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store i64 %i.fa, ptr %i.fc, align 8, !tbaa !170
  store ptr %i.et, ptr %8, align 8, !tbaa !169
  store i64 0, ptr %i.fb, align 8, !tbaa !170
  store i8 0, ptr %i.et, align 8, !tbaa !171
  invoke void @__cxa_throw(ptr nonnull %i.ep, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.ai unwind label %bb.af

bb.af:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.fd = landingpad { ptr, i32 }
          cleanup
  %i.fe = load ptr, ptr %8, align 8, !tbaa !169   ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.et
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.af
  %i.fg = load i64, ptr %i.et, align 8, !tbaa !171
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %common.resume

bb.ag:                                            ; preds = %bb.ac
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @__cxa_free_exception(ptr %i.ep) #29
  br label %common.resume

bb.ah:                                            ; preds = %bb.ab
  %i.fj = zext i32 %i.em to i64
  %i.fk = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.ec, i64 noundef %i.fj) ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 2 uses
  store ptr %i.fl, ptr %i.br, align 8, !tbaa !249
  store i32 %i.ek, ptr %i.fk, align 4, !tbaa !70
  br label %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE13expand_vectorEv.exit

bb.ai:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE13expand_vectorEv.exit: ; preds = %bb.z, %bb.ah
  %.pre.i.i.i = phi ptr [ %i.eh, %bb.z ], [ %i.fl, %bb.ah ] ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !70
  br label %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i

_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i: ; preds = %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE13expand_vectorEv.exit, %bb.y
  %i.fm = phi i32 [ %.pre2.i.i.i, %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE13expand_vectorEv.exit ], [ %i.eb, %bb.y ] ; 2 uses
  %i.fn = phi ptr [ %.pre.i.i.i, %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE13expand_vectorEv.exit ], [ %i.dy, %bb.y ] ; 3 uses
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 -4
  %i.fp = zext i32 %i.fm to i64
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fp
  store ptr %i.dw, ptr %i.fq, align 8, !tbaa !219
  %i.fr = add i32 %i.fm, 1
  store i32 %i.fr, ptr %i.fo, align 4, !tbaa !70
  %i.fs = add i32 %.05.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %.05.i.i, %.038128
  br i1 %exitcond.not.i.i, label %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i52, label %.lr.ph.i.i, !llvm.loop !25

_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i52: ; preds = %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i, %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i
  %i.ft = phi ptr [ %i.ds, %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i ], [ %i.fn, %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i ] ; 3 uses
  %i.fu = zext i32 %.038128 to i64
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.fu
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !219 ; 2 uses
  %i.fx = add i32 %.038128, 2
  %i.fy = getelementptr inbounds i8, ptr %i.ft, i64 -4
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !70 ; 2 uses
  %i.ga = icmp ult i32 %i.fz, %i.fx
  br i1 %i.ga, label %.lr.ph.i.i54, label %_ZN10polynomial7manager3imp17som_buffer_vectorixEj.exit62

.lr.ph.i.i54:                                     ; preds = %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i52, %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i57
  %.05.i.i55 = phi i32 [ %i.hx, %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i57 ], [ %i.fz, %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i52 ] ; 2 uses
  %i.gb = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 32) ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gb, i8 0, i64 32, i1 false)
  %i.gc = load ptr, ptr %i.bo, align 8, !tbaa !250 ; 2 uses
  %.not.i.i56 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i56, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i54
  store ptr %i.gc, ptr %i.gb, align 8, !tbaa !205
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.lr.ph.i.i54
  %i.gd = load ptr, ptr %i.br, align 8, !tbaa !249 ; 4 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gf = getelementptr inbounds i8, ptr %i.gd, i64 -4
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !70 ; 5 uses
  %i.gh = getelementptr inbounds i8, ptr %i.gd, i64 -8 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !70
  %i.gj = icmp eq i32 %i.gg, %i.gi
  br i1 %i.gj, label %bb.an, label %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i57

bb.am:                                            ; preds = %bb.ak
  %i.gk = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.gk, align 4, !tbaa !70
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  store i32 0, ptr %i.gl, align 4, !tbaa !70
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 8 ; 2 uses
  store ptr %i.gm, ptr %i.br, align 8, !tbaa !249
  br label %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE13expand_vectorEv.exit99

bb.an:                                            ; preds = %bb.al
  %i.gn = mul i32 %i.gg, 3
  %i.go = add i32 %i.gn, 1
  %i.gp = lshr i32 %i.go, 1                       ; 3 uses
  %i.gq = shl i32 %i.gp, 3
  %i.gr = add i32 %i.gq, 8                        ; 2 uses
  %.not.i89 = icmp ugt i32 %i.gp, %i.gg
  br i1 %.not.i89, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gs = shl i32 %i.gg, 3
  %i.gt = add i32 %i.gs, 8
  %.not27.i98 = icmp ugt i32 %i.gr, %i.gt
  br i1 %.not27.i98, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.gu = tail call ptr @__cxa_allocate_exception(i64 40) #29 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.aq unwind label %bb.at

bb.aq:                                            ; preds = %bb.ap
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.gu, align 8, !tbaa !173
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 24 ; 3 uses
  store ptr %i.gw, ptr %i.gv, align 8, !tbaa !226
  %i.gx = load ptr, ptr %6, align 8, !tbaa !169   ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.gz = icmp eq ptr %i.gx, %i.gy
  br i1 %i.gz, label %bb.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91

bb.ar:                                            ; preds = %bb.aq
  %i.ha = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !170 ; 3 uses
  %i.hc = icmp ult i64 %i.hb, 16
  call void @llvm.assume(i1 %i.hc)
  %i.hd = add nuw nsw i64 %i.hb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gw, ptr noundef nonnull align 8 dereferenceable(1) %i.gy, i64 %i.hd, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91: ; preds = %bb.aq
  store ptr %i.gx, ptr %i.gv, align 8, !tbaa !169
  %i.he = load i64, ptr %i.gy, align 8, !tbaa !171
  store i64 %i.he, ptr %i.gw, align 8, !tbaa !171
  %.phi.trans.insert.i92 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre.i93 = load i64, ptr %.phi.trans.insert.i92, align 8, !tbaa !170
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i94

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i94: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91, %bb.ar
  %i.hf = phi i64 [ %i.hb, %bb.ar ], [ %.pre.i93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91 ]
  %i.hg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  store i64 %i.hf, ptr %i.hh, align 8, !tbaa !170
  store ptr %i.gy, ptr %6, align 8, !tbaa !169
  store i64 0, ptr %i.hg, align 8, !tbaa !170
  store i8 0, ptr %i.gy, align 8, !tbaa !171
  invoke void @__cxa_throw(ptr nonnull %i.gu, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #31
          to label %bb.av unwind label %bb.as

bb.as:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i94
  %i.hi = landingpad { ptr, i32 }
          cleanup
  %i.hj = load ptr, ptr %6, align 8, !tbaa !169   ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.gy
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i95: ; preds = %bb.as
  %i.hl = load i64, ptr %i.gy, align 8, !tbaa !171
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hm) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i96: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %common.resume

bb.at:                                            ; preds = %bb.ap
  %i.hn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @__cxa_free_exception(ptr %i.gu) #29
  br label %common.resume

bb.au:                                            ; preds = %bb.ao
  %i.ho = zext i32 %i.gr to i64
  %i.hp = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.gh, i64 noundef %i.ho) ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8 ; 2 uses
  store ptr %i.hq, ptr %i.br, align 8, !tbaa !249
  store i32 %i.gp, ptr %i.hp, align 4, !tbaa !70
  br label %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE13expand_vectorEv.exit99

bb.av:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i94
  unreachable

_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE13expand_vectorEv.exit99: ; preds = %bb.am, %bb.au
  %.pre.i.i.i59 = phi ptr [ %i.gm, %bb.am ], [ %i.hq, %bb.au ] ; 2 uses
  %.phi.trans.insert.i.i.i60 = getelementptr inbounds i8, ptr %.pre.i.i.i59, i64 -4
  %.pre2.i.i.i61 = load i32, ptr %.phi.trans.insert.i.i.i60, align 4, !tbaa !70
  br label %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i57

_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i57: ; preds = %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE13expand_vectorEv.exit99, %bb.al
  %i.hr = phi i32 [ %.pre2.i.i.i61, %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE13expand_vectorEv.exit99 ], [ %i.gg, %bb.al ] ; 2 uses
  %i.hs = phi ptr [ %.pre.i.i.i59, %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE13expand_vectorEv.exit99 ], [ %i.gd, %bb.al ] ; 3 uses
  %i.ht = getelementptr inbounds i8, ptr %i.hs, i64 -4
  %i.hu = zext i32 %i.hr to i64
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.hu
  store ptr %i.gb, ptr %i.hv, align 8, !tbaa !219
  %i.hw = add i32 %i.hr, 1
  store i32 %i.hw, ptr %i.ht, align 4, !tbaa !70
  %i.hx = add i32 %.05.i.i55, 1
  %exitcond.not.i.i58 = icmp eq i32 %.05.i.i55, %i.dr
  br i1 %exitcond.not.i.i58, label %_ZN10polynomial7manager3imp17som_buffer_vectorixEj.exit62, label %.lr.ph.i.i54, !llvm.loop !25

_ZN10polynomial7manager3imp17som_buffer_vectorixEj.exit62: ; preds = %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i57, %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i52
  %i.hy = phi ptr [ %i.ft, %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i52 ], [ %i.hs, %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i57 ]
  %i.hz = zext i32 %i.dr to i64
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %i.hz
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !219
  %i.ic = load ptr, ptr %i.fw, align 8, !tbaa !205
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 464
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !151
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 112
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !159
  tail call void @_ZN10polynomial7manager3imp10som_buffer11addmul_coreIS2_Lb0EEEvRK3mpzPKNS_8monomialEPKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.fw, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.ig, ptr noundef %i.ib)
  %.not44 = icmp ugt i32 %i.dr, %i.bq
  br i1 %.not44, label %._crit_edge, label %.lr.ph, !llvm.loop !471

bb.aw:                                            ; preds = %bb.bs
  invoke void @_ZN10polynomial7manager3imp17som_buffer_vector5resetEj(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i32 noundef %i.bp)
          to label %bb.bt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ax:                                            ; preds = %_ZN10polynomial7manager3imp10som_buffer5resetEv.exit, %bb.bs
  %i.ih = phi ptr [ null, %_ZN10polynomial7manager3imp10som_buffer5resetEv.exit ], [ %i.ix, %bb.bs ] ; 4 uses
  %.0130 = phi i32 [ 0, %_ZN10polynomial7manager3imp10som_buffer5resetEv.exit ], [ %i.jh, %bb.bs ] ; 5 uses
  %i.ii = load ptr, ptr %i.di, align 8, !tbaa !151 ; 4 uses
  %i.ij = icmp eq i32 %.0130, 0
  br i1 %i.ij, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 112
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !159
  br label %_ZN10polynomial7manager3imp11mk_monomialEjj.exit

bb.az:                                            ; preds = %bb.ax
  %i.im = getelementptr inbounds nuw i8, ptr %i.ii, i64 120 ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ii, i64 128 ; 2 uses
  %i.io = load i32, ptr %i.in, align 8, !tbaa !188
  %i.ip = icmp eq i32 %i.io, 0
  %.pre.i.i.i.i = load ptr, ptr %i.im, align 8, !tbaa !187 ; 2 uses
  br i1 %i.ip, label %.thread.i.i.i.i, label %.lr.ph.i.i.i.preheader.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.az
  invoke void @_ZN6memory10deallocateEPv(ptr noundef %.pre.i.i.i.i)
          to label %.noexc64 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc64:                                         ; preds = %.thread.i.i.i.i
  %i.iq = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 36)
          to label %.noexc65 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc65:                                         ; preds = %.noexc64
  store i32 0, ptr %i.iq, align 4, !tbaa !199
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  store i32 -1, ptr %i.ir, align 4, !tbaa !174
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  store i32 0, ptr %i.is, align 4, !tbaa !79
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store i32 0, ptr %i.it, align 4, !tbaa !186
  store ptr %i.iq, ptr %i.im, align 8, !tbaa !187
  store i32 2, ptr %i.in, align 8, !tbaa !188
  br label %.lr.ph.i.i.i.preheader.i.i.i.i

.lr.ph.i.i.i.preheader.i.i.i.i:                   ; preds = %.noexc65, %bb.az
  %.pre.i.i.sink.i.i = phi ptr [ %i.iq, %.noexc65 ], [ %.pre.i.i.i.i, %bb.az ] ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.pre.i.i.sink.i.i, i64 12
  store i32 1, ptr %i.iu, align 4, !tbaa !78
  %i.iv = getelementptr inbounds nuw i8, ptr %.pre.i.i.sink.i.i, i64 20
  %.sroa.4.0.insert.ext.i.i = zext i32 %.0130 to i64
  %.sroa.4.0.insert.shift.i.i = shl nuw i64 %.sroa.4.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.iv, align 4
  %i.iw = invoke noundef ptr @_ZN10polynomial16monomial_manager11mk_monomialERNS_12tmp_monomialE(ptr noundef nonnull align 8 dereferenceable(192) %i.ii, ptr noundef nonnull align 8 dereferenceable(12) %i.im)
          to label %_ZN10polynomial7manager3imp11mk_monomialEjj.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN10polynomial7manager3imp11mk_monomialEjj.exit: ; preds = %bb.ay, %.lr.ph.i.i.i.preheader.i.i.i.i
  %i.ix = phi ptr [ %i.il, %bb.ay ], [ %i.iw, %.lr.ph.i.i.i.preheader.i.i.i.i ] ; 9 uses
  %.not.i = icmp eq ptr %i.ix, null               ; 2 uses
  br i1 %.not.i, label %bb.ba, label %_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i

_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i: ; preds = %_ZN10polynomial7manager3imp11mk_monomialEjj.exit
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !199
  %i.iz = add i32 %i.iy, 1
  store i32 %i.iz, ptr %i.ix, align 4, !tbaa !199
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN10polynomial7manager7inc_refEPNS_8monomialE.exit.i, %_ZN10polynomial7manager3imp11mk_monomialEjj.exit
  %.not.i4.i = icmp eq ptr %i.ih, null
  br i1 %.not.i4.i, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ja = load ptr, ptr %i.bu, align 8, !tbaa !223, !nonnull !99, !align !100
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !94
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 464
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !151
  %i.je = load i32, ptr %i.ih, align 4, !tbaa !199
  %i.jf = add i32 %i.je, -1                       ; 2 uses
  store i32 %i.jf, ptr %i.ih, align 4, !tbaa !199
  %i.jg = icmp eq i32 %i.jf, 0
  br i1 %i.jg, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZN10polynomial16monomial_manager3delEPNS_8monomialE(ptr noundef nonnull align 8 dereferenceable(192) %i.jd, ptr noundef nonnull %i.ih)
          to label %bb.bd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bd:                                            ; preds = %bb.bb, %bb.ba, %bb.bc
  store ptr %i.ix, ptr %11, align 8, !tbaa !221
  %i.jh = add i32 %.0130, 1                       ; 3 uses
  %i.ji = load ptr, ptr %i.br, align 8, !tbaa !249 ; 3 uses
  %i.jj = icmp eq ptr %i.ji, null
  br i1 %i.jj, label %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i68, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jk = getelementptr inbounds i8, ptr %i.ji, i64 -4
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !70
  br label %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i68

_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i68: ; preds = %bb.be, %bb.bd
  %.0.i.i.i69 = phi i32 [ %i.jl, %bb.be ], [ 0, %bb.bd ] ; 2 uses
  %i.jm = icmp ult i32 %.0.i.i.i69, %i.jh
  br i1 %i.jm, label %.lr.ph.i.i70, label %.loopexit116

.lr.ph.i.i70:                                     ; preds = %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i68, %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i73
  %.05.i.i71 = phi i32 [ %i.lj, %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i73 ], [ %.0.i.i.i69, %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i68 ] ; 2 uses
  %i.jn = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 32)
          to label %.noexc78 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc78:                                         ; preds = %.lr.ph.i.i70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jn, i8 0, i64 32, i1 false)
  %i.jo = load ptr, ptr %i.bo, align 8, !tbaa !250 ; 2 uses
  %.not.i.i72 = icmp eq ptr %i.jo, null
  br i1 %.not.i.i72, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.noexc78
  store ptr %i.jo, ptr %i.jn, align 8, !tbaa !205
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.noexc78
  %i.jp = load ptr, ptr %i.br, align 8, !tbaa !249 ; 4 uses
  %i.jq = icmp eq ptr %i.jp, null
  br i1 %i.jq, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jr = getelementptr inbounds i8, ptr %i.jp, i64 -4
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !70 ; 5 uses
  %i.jt = getelementptr inbounds i8, ptr %i.jp, i64 -8 ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !70
  %i.jv = icmp eq i32 %i.js, %i.ju
  br i1 %i.jv, label %bb.bj, label %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i73

bb.bi:                                            ; preds = %bb.bg
  %i.jw = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %.noexc110 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc110:                                        ; preds = %bb.bi
  store i32 2, ptr %i.jw, align 4, !tbaa !70
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 4
  store i32 0, ptr %i.jx, align 4, !tbaa !70
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 8 ; 2 uses
  store ptr %i.jy, ptr %i.br, align 8, !tbaa !249
  br label %.noexc79

bb.bj:                                            ; preds = %bb.bh
  %i.jz = mul i32 %i.js, 3
  %i.ka = add i32 %i.jz, 1
  %i.kb = lshr i32 %i.ka, 1                       ; 3 uses
  %i.kc = shl i32 %i.kb, 3
  %i.kd = add i32 %i.kc, 8                        ; 2 uses
  %.not.i100 = icmp ugt i32 %i.kb, %i.js
  br i1 %.not.i100, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ke = shl i32 %i.js, 3
  %i.kf = add i32 %i.ke, 8
  %.not27.i109 = icmp ugt i32 %i.kd, %i.kf
  br i1 %.not27.i109, label %bb.bq, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.kg = call ptr @__cxa_allocate_exception(i64 40) #29 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.bm unwind label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.kg, align 8, !tbaa !173
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 24 ; 3 uses
  store ptr %i.ki, ptr %i.kh, align 8, !tbaa !226
  %i.kj = load ptr, ptr %4, align 8, !tbaa !169   ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.kl = icmp eq ptr %i.kj, %i.kk
  br i1 %i.kl, label %bb.bn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102

bb.bn:                                            ; preds = %bb.bm
  %i.km = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !170 ; 3 uses
  %i.ko = icmp ult i64 %i.kn, 16
  call void @llvm.assume(i1 %i.ko)
  %i.kp = add nuw nsw i64 %i.kn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ki, ptr noundef nonnull align 8 dereferenceable(1) %i.kk, i64 %i.kp, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102: ; preds = %bb.bm
  store ptr %i.kj, ptr %i.kh, align 8, !tbaa !169
  %i.kq = load i64, ptr %i.kk, align 8, !tbaa !171
  store i64 %i.kq, ptr %i.ki, align 8, !tbaa !171
  %.phi.trans.insert.i103 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre.i104 = load i64, ptr %.phi.trans.insert.i103, align 8, !tbaa !170
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i105

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i105: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102, %bb.bn
  %i.kr = phi i64 [ %i.kn, %bb.bn ], [ %.pre.i104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102 ]
  %i.ks = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  store i64 %i.kr, ptr %i.kt, align 8, !tbaa !170
  store ptr %i.kk, ptr %4, align 8, !tbaa !169
  store i64 0, ptr %i.ks, align 8, !tbaa !170
end_hunk_0
begin_hunk_1_@_ZN10polynomial16monomial_manager8div_coreILb1EEEbjPKNS_5powerEjS4_RNS_12tmp_monomialE:bb.a
  %indvars.iv84 = phi i64 [ %indvars.iv.next85.3, %scalar.ph ], [ %indvars.iv84.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.15180 = phi i32 [ %i.co, %scalar.ph ], [ %.15180.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv84
  %i.bt = zext i32 %.15180 to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bt
  %i.bv = load <2 x i32>, ptr %i.bs, align 4, !tbaa !70
  store <2 x i32> %i.bv, ptr %i.bu, align 4, !tbaa !70
  %i.bw = add i32 %.15180, 1
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv84
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = zext i32 %i.bw to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bz
  %i.cb = load <2 x i32>, ptr %i.by, align 4, !tbaa !70
  store <2 x i32> %i.cb, ptr %i.ca, align 4, !tbaa !70
  %i.cc = add i32 %.15180, 2
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv84
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = zext i32 %i.cc to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.cf
  %i.ch = load <2 x i32>, ptr %i.ce, align 4, !tbaa !70
  store <2 x i32> %i.ch, ptr %i.cg, align 4, !tbaa !70
  %i.ci = add i32 %.15180, 3
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv84
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = zext i32 %i.ci to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.cl
  %i.cn = load <2 x i32>, ptr %i.ck, align 4, !tbaa !70
  store <2 x i32> %i.cn, ptr %i.cm, align 4, !tbaa !70
  %indvars.iv.next85.3 = add nuw nsw i64 %indvars.iv84, 4 ; 2 uses
  %i.co = add i32 %.15180, 4                      ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next85.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !549

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader
  %.151.lcssa = phi i32 [ %.050.lcssa, %.preheader ], [ %i.ax, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.co, %scalar.ph ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  store i32 %.151.lcssa, ptr %i.cp, align 4, !tbaa !78
  br label %.critedge

.lr.ph:                                           ; preds = %bb.i
  %i.cq = icmp eq i64 %indvars.iv.next, %i.m
  br i1 %i.cq, label %.critedge, label %.lr.ph97, !llvm.loop !550

.lr.ph97:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0527696 = phi i32 [ %.355, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.0507795 = phi i32 [ %.5, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %indvars.iv94 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv94 ; 3 uses
  %i.cs = zext i32 %.0527696 to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.cs ; 2 uses
  %i.cu = load i32, ptr %i.cr, align 4, !tbaa !73 ; 4 uses
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !73 ; 2 uses
  %i.cw = icmp eq i32 %i.cu, %i.cv
  br i1 %i.cw, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.lr.ph97
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !74 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !74 ; 3 uses
  %.not = icmp ult i32 %i.cy, %i.da
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.db = icmp ugt i32 %i.cy, %i.da
  br i1 %i.db, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dc = sub nuw i32 %i.cy, %i.da
  %i.dd = load ptr, ptr %5, align 8, !tbaa !187
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 20
  %i.df = zext i32 %.0507795 to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.df ; 2 uses
  store i32 %i.cu, ptr %i.dg, align 4, !tbaa !73
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  store i32 %i.dc, ptr %i.dh, align 4, !tbaa !74
  %i.di = add i32 %.0507795, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.2 = phi i32 [ %i.di, %bb.e ], [ %.0507795, %bb.d ]
  %i.dj = add i32 %.0527696, 1
  br label %bb.i

bb.g:                                             ; preds = %.lr.ph97
  %i.dk = icmp ult i32 %i.cu, %i.cv
  br i1 %i.dk, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.dl = load ptr, ptr %5, align 8, !tbaa !187
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 20
  %i.dn = zext i32 %.0507795 to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dn ; 2 uses
  store i32 %i.cu, ptr %i.do, align 4, !tbaa !73
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !74
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !74
  %i.ds = add i32 %.0507795, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  %.355 = phi i32 [ %.0527696, %bb.h ], [ %i.dj, %bb.f ] ; 2 uses
  %.5 = phi i32 [ %i.ds, %bb.h ], [ %.2, %bb.f ]  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv94, 1 ; 3 uses
  %i.dt = icmp eq i32 %.355, %3
  br i1 %i.dt, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !550

.critedge:                                        ; preds = %.lr.ph, %bb.g, %bb.c, %.lr.ph.preheader, %_ZN10polynomial12tmp_monomial7reserveEj.exit, %._crit_edge
  %.465 = phi i1 [ false, %_ZN10polynomial12tmp_monomial7reserveEj.exit ], [ true, %._crit_edge ], [ false, %.lr.ph.preheader ], [ false, %bb.c ], [ false, %bb.g ], [ false, %.lr.ph ]
  ret i1 %.465
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN10polynomial7manager3imp19newton_interpolatorC2ERS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(824) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !294
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !162
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !201
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr null, ptr %i.d, align 8, !tbaa !162
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.b, ptr %i.e, align 8, !tbaa !201
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !207, !nonnull !99, !align !100
  %i.i = ptrtoint ptr %i.h to i64
  store i64 %i.i, ptr %i.f, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.j, align 8, !tbaa !184
  invoke void @_ZN6vectorI3mpzLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i.i unwind label %bb.c

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.a
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !162 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !70
  %i.k = zext i32 %.pre2.i.i to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.n = load i8, ptr %i.m, align 4
  %i.o = and i8 %i.n, -4
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 0, ptr %i.l, align 4, !tbaa !70
  store ptr null, ptr %i.p, align 8, !tbaa !206
  store i8 %i.o, ptr %i.m, align 4
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !162  ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !70   ; 2 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 4, !tbaa !70
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !292, !nonnull !99, !align !100 ; 2 uses
  %i.v = zext i32 %i.s to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.v ; 3 uses
  store i32 0, ptr %i.w, align 8, !tbaa !91
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  %i.y = load i8, ptr %i.x, align 4
  %i.z = and i8 %i.y, -2
  store i8 %i.z, ptr %i.x, align 4
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !183, !range !190
  %i.aa = trunc nuw i8 %.pre to i1
  br i1 %i.aa, label %_ZN22_scoped_numeral_vectorI13mpzzp_managerE9push_backERK3mpz.exit, label %bb.b

bb.b:                                             ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i.i
  invoke void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.w)
          to label %_ZN22_scoped_numeral_vectorI13mpzzp_managerE9push_backERK3mpz.exit unwind label %bb.c

_ZN22_scoped_numeral_vectorI13mpzzp_managerE9push_backERK3mpz.exit: ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i.i, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN15ref_vector_coreIN10polynomial10polynomialE19ref_manager_wrapperIS1_NS0_7managerEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.f) #29
  tail call void @_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.d) #29
  tail call void @_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #29
  resume { ptr, i32 } %i.ab
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN10polynomial7manager3imp19newton_interpolator3addERK3mpzPKNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.mpz, align 8                 ; 7 uses
  %4 = alloca %class.mpz, align 8                 ; 6 uses
  %5 = alloca %class.mpz, align 8                 ; 7 uses
  %6 = alloca %class._scoped_numeral.43, align 8  ; 9 uses
  %7 = alloca %class._scoped_numeral.43, align 8  ; 9 uses
  %8 = alloca %class.obj_ref, align 8             ; 8 uses
  %9 = alloca %class.obj_ref, align 8             ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162  ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %_ZNK10polynomial7manager3imp19newton_interpolator17num_sample_pointsEv.exit

_ZNK10polynomial7manager3imp19newton_interpolator17num_sample_pointsEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !70   ; 4 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.bl, label %bb.b

bb.b:                                             ; preds = %_ZNK10polynomial7manager3imp19newton_interpolator17num_sample_pointsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.f = load ptr, ptr %0, align 8, !tbaa !298, !nonnull !99, !align !100 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  store ptr %i.g, ptr %6, align 8, !tbaa !201
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 10 uses
  store i32 0, ptr %i.h, align 8, !tbaa !91
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 3 uses
  %i.j = load i8, ptr %i.i, align 4
  %i.k = and i8 %i.j, -4
  store i8 %i.k, ptr %i.i, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.l, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  store ptr %i.g, ptr %7, align 8, !tbaa !201
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 9 uses
  store i32 0, ptr %i.m, align 8, !tbaa !91
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  %i.o = load i8, ptr %i.n, align 4
  %i.p = and i8 %i.o, -4
  store i8 %i.p, ptr %i.n, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr null, ptr %i.q, align 8, !tbaa !84
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !98, !nonnull !99, !align !100
  invoke void @_ZN11mpz_managerILb0EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %.noexc unwind label %.loopexit.split-lp112.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.t = load i8, ptr %i.s, align 8, !tbaa !183, !range !190, !noundef !99
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZN13mpzzp_manager3subERK3mpzS2_RS0_.exit, label %bb.c

bb.c:                                             ; preds = %.noexc
  invoke void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_ZN13mpzzp_manager3subERK3mpzS2_RS0_.exit unwind label %.loopexit.split-lp112.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN13mpzzp_manager3subERK3mpzS2_RS0_.exit:        ; preds = %bb.c, %.noexc
  %i.v = add i32 %i.e, -1                         ; 3 uses
  %.not28117 = icmp eq i32 %i.v, 0
  br i1 %.not28117, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN13mpzzp_manager3subERK3mpzS2_RS0_.exit
  %10 = zext i32 %i.v to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit, %_ZN13mpzzp_manager3subERK3mpzS2_RS0_.exit
  %i.w = load ptr, ptr %0, align 8, !tbaa !298, !nonnull !99, !align !100
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  invoke void @_ZN13mpzzp_manager3invER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %bb.f unwind label %.loopexit.split-lp112.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit ] ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !298, !nonnull !99, !align !100 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !162
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !98, !nonnull !99, !align !100
  invoke void @_ZN11mpz_managerILb0EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %.noexc33 unwind label %.loopexit.split-lp112.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc33:                                         ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !183, !range !190, !noundef !99
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %_ZN13mpzzp_manager3subERK3mpzS2_RS0_.exit35, label %bb.d

bb.d:                                             ; preds = %.noexc33
  invoke void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %_ZN13mpzzp_manager3subERK3mpzS2_RS0_.exit35 unwind label %.loopexit.split-lp112.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN13mpzzp_manager3subERK3mpzS2_RS0_.exit35:      ; preds = %.noexc33, %bb.d
  %i.ag = load ptr, ptr %0, align 8, !tbaa !298, !nonnull !99, !align !100 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !98, !nonnull !99, !align !100
  invoke void @_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %.noexc36 unwind label %.loopexit.split-lp112.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc36:                                         ; preds = %_ZN13mpzzp_manager3subERK3mpzS2_RS0_.exit35
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !183, !range !190, !noundef !99
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit, label %bb.e

bb.e:                                             ; preds = %.noexc36
  invoke void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit unwind label %.loopexit.split-lp112.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit:        ; preds = %.noexc36, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not28 = icmp samesign ugt i64 %indvars.iv.next, %10
  br i1 %.not28, label %._crit_edge, label %.lr.ph, !llvm.loop !551

.loopexit.split-lp112.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %_ZN13mpzzp_manager3subERK3mpzS2_RS0_.exit35, %bb.d, %.lr.ph, %bb.p, %bb.o, %bb.m, %bb.k, %bb.j, %bb.h, %bb.c, %bb.b, %._crit_edge
  %lpad.loopexit.split-lp163 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp112

bb.f:                                             ; preds = %._crit_edge
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !162 ; 4 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !70 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.am, i64 -8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !70
  %i.as = icmp eq i32 %i.ap, %i.ar
  br i1 %i.as, label %bb.h, label %_ZN6vectorI3mpzLb0EjE4backEv.exit.i

bb.h:                                             ; preds = %bb.g, %bb.f
  invoke void @_ZN6vectorI3mpzLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc38 unwind label %.loopexit.split-lp112.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc38:                                         ; preds = %bb.h
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !162 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !70
  br label %_ZN6vectorI3mpzLb0EjE4backEv.exit.i

_ZN6vectorI3mpzLb0EjE4backEv.exit.i:              ; preds = %.noexc38, %bb.g
  %i.at = phi i32 [ %.pre2.i.i, %.noexc38 ], [ %i.ap, %bb.g ]
  %i.au = phi ptr [ %.pre.i.i, %.noexc38 ], [ %i.am, %bb.g ]
  %i.av = zext i32 %i.at to i64
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 4
  %i.az = and i8 %i.ay, -4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i32 0, ptr %i.aw, align 4, !tbaa !70
  store ptr null, ptr %i.ba, align 8, !tbaa !206
  store i8 %i.az, ptr %i.ax, align 4
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !162 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -4 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !70 ; 2 uses
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !70
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !292, !nonnull !99, !align !100 ; 3 uses
  %i.bh = zext i32 %i.bd to i64
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bh ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bk = load i8, ptr %i.bj, align 4
  %i.bl = and i8 %i.bk, 1
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN6vectorI3mpzLb0EjE4backEv.exit.i
  %i.bn = load i32, ptr %1, align 8, !tbaa !91
  store i32 %i.bn, ptr %i.bi, align 8, !tbaa !91
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 4
  %i.bq = and i8 %i.bp, -2
  store i8 %i.bq, ptr %i.bo, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i.i

bb.j:                                             ; preds = %_ZN6vectorI3mpzLb0EjE4backEv.exit.i
  %i.br = load ptr, ptr %i.bg, align 8, !tbaa !98, !nonnull !99, !align !100
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i.i unwind label %.loopexit.split-lp112.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.j, %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !183, !range !190, !noundef !99
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %_ZN22_scoped_numeral_vectorI13mpzzp_managerE9push_backERK3mpz.exit, label %bb.k

bb.k:                                             ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i.i
  invoke void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.bi)
          to label %_ZN22_scoped_numeral_vectorI13mpzzp_managerE9push_backERK3mpz.exit unwind label %.loopexit.split-lp112.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN22_scoped_numeral_vectorI13mpzzp_managerE9push_backERK3mpz.exit: ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i.i, %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !162 ; 4 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN22_scoped_numeral_vectorI13mpzzp_managerE9push_backERK3mpz.exit
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 -4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !70 ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bw, i64 -8
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !70
  %i.cc = icmp eq i32 %i.bz, %i.cb
  br i1 %i.cc, label %bb.m, label %_ZN6vectorI3mpzLb0EjE4backEv.exit.i41

bb.m:                                             ; preds = %bb.l, %_ZN22_scoped_numeral_vectorI13mpzzp_managerE9push_backERK3mpz.exit
  invoke void @_ZN6vectorI3mpzLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bv)
          to label %.noexc46 unwind label %.loopexit.split-lp112.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc46:                                         ; preds = %bb.m
  %.pre.i.i43 = load ptr, ptr %i.bv, align 8, !tbaa !162 ; 2 uses
  %.phi.trans.insert.i.i44 = getelementptr inbounds i8, ptr %.pre.i.i43, i64 -4
  %.pre2.i.i45 = load i32, ptr %.phi.trans.insert.i.i44, align 4, !tbaa !70
  br label %_ZN6vectorI3mpzLb0EjE4backEv.exit.i41

_ZN6vectorI3mpzLb0EjE4backEv.exit.i41:            ; preds = %.noexc46, %bb.l
  %i.cd = phi i32 [ %.pre2.i.i45, %.noexc46 ], [ %i.bz, %bb.l ]
  %i.ce = phi ptr [ %.pre.i.i43, %.noexc46 ], [ %i.bw, %bb.l ]
  %i.cf = zext i32 %i.cd to i64
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.cf ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 4
  %i.cj = and i8 %i.ci, -4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i32 0, ptr %i.cg, align 4, !tbaa !70
  store ptr null, ptr %i.ck, align 8, !tbaa !206
  store i8 %i.cj, ptr %i.ch, align 4
  %i.cl = load ptr, ptr %i.bv, align 8, !tbaa !162 ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -4 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !70 ; 2 uses
  %i.co = add i32 %i.cn, 1
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !70
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !292, !nonnull !99, !align !100 ; 3 uses
  %i.cr = zext i32 %i.cn to i64
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.cr ; 4 uses
  %i.ct = load i8, ptr %i.i, align 4
  %i.cu = and i8 %i.ct, 1
  %i.cv = icmp eq i8 %i.cu, 0
  br i1 %i.cv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN6vectorI3mpzLb0EjE4backEv.exit.i41
  %i.cw = load i32, ptr %i.h, align 8, !tbaa !91
  store i32 %i.cw, ptr %i.cs, align 8, !tbaa !91
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 4 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 4
  %i.cz = and i8 %i.cy, -2
  store i8 %i.cz, ptr %i.cx, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i.i42

bb.o:                                             ; preds = %_ZN6vectorI3mpzLb0EjE4backEv.exit.i41
  %i.da = load ptr, ptr %i.cq, align 8, !tbaa !98, !nonnull !99, !align !100
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.da, ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i.i42 unwind label %.loopexit.split-lp112.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i.i42: ; preds = %bb.o, %bb.n
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !183, !range !190, !noundef !99
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i.i42
  invoke void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.cs)
          to label %bb.q unwind label %.loopexit.split-lp112.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p, %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i.i42
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.de = load ptr, ptr %0, align 8, !tbaa !298, !nonnull !99, !align !100 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !207, !nonnull !99, !align !100 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  store ptr null, ptr %9, align 8, !tbaa !110
  %i.di = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  store ptr %i.dg, ptr %i.di, align 8, !tbaa !81
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !184
  %i.dl = zext i32 %i.v to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dl
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !103 ; 6 uses
  %.not.i = icmp eq ptr %i.dn, null
  br i1 %.not.i, label %bb.r, label %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i

_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i: ; preds = %bb.q
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !108
  %i.dp = add i32 %i.do, 1
  store i32 %i.dp, ptr %i.dn, align 8, !tbaa !108
  br label %bb.r

bb.r:                                             ; preds = %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i, %bb.q
  store ptr %i.dn, ptr %8, align 8, !tbaa !110
  %i.dq = add i32 %i.e, -2                        ; 2 uses
  %i.dr = icmp sgt i32 %i.dq, -1
  br i1 %i.dr, label %.lr.ph121, label %._crit_edge122

.lr.ph121:                                        ; preds = %bb.r
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.du = zext nneg i32 %i.dq to i64
  br label %bb.t

._crit_edge122.loopexit:                          ; preds = %bb.aj
  %.pre = load ptr, ptr %0, align 8, !tbaa !298
  br label %._crit_edge122

._crit_edge122:                                   ; preds = %._crit_edge122.loopexit, %bb.r
  %i.dv = phi ptr [ %i.gr, %._crit_edge122.loopexit ], [ %i.dn, %bb.r ] ; 5 uses
  %i.dw = phi ptr [ %.pre, %._crit_edge122.loopexit ], [ %i.de, %bb.r ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store i32 1, ptr %4, align 8, !tbaa !91
end_hunk_1
begin_hunk_2_@_ZN10polynomial7manager3imp8iccp_ZpXEPKNS_10polynomialEjR3mpzR7obj_refIS2_S0_ES9_:bb.a
  %i.afn = load ptr, ptr %i.em, align 8, !tbaa !207, !nonnull !99, !align !100 ; 2 uses
  store ptr null, ptr %13, align 8, !tbaa !110
  %i.afo = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store ptr %i.afn, ptr %i.afo, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  store ptr null, ptr %14, align 8, !tbaa !110
  %i.afp = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %i.afn, ptr %i.afp, align 8, !tbaa !81
  %i.afq = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 8 uses
  %i.afr = load ptr, ptr %i.afq, align 8, !tbaa !249 ; 3 uses
  %i.afs = icmp eq ptr %i.afr, null
  br i1 %i.afs, label %.lr.ph.i.i373.preheader, label %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i371

_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i371: ; preds = %._crit_edge517.split
  %i.aft = getelementptr inbounds i8, ptr %i.afr, i64 -4
  %i.afu = load i32, ptr %i.aft, align 4, !tbaa !70
  %i.afv = icmp eq i32 %i.afu, 0
  br i1 %i.afv, label %.lr.ph.i.i373.preheader, label %.loopexit469

.lr.ph.i.i373.preheader:                          ; preds = %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i371, %._crit_edge517.split
  %i.afw = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 32)
          to label %.noexc381 unwind label %.loopexit.split-lp465.loopexit.split-lp ; 3 uses

.noexc381:                                        ; preds = %.lr.ph.i.i373.preheader
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.afw, i8 0, i64 32, i1 false)
  %i.afx = load ptr, ptr %i.ug, align 8, !tbaa !250 ; 2 uses
  %.not.i.i375 = icmp eq ptr %i.afx, null
  br i1 %.not.i.i375, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %.noexc381
  store ptr %i.afx, ptr %i.afw, align 8, !tbaa !205
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %.noexc381
  %i.afy = load ptr, ptr %i.afq, align 8, !tbaa !249 ; 4 uses
  %i.afz = icmp eq ptr %i.afy, null
  br i1 %i.afz, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.aga = getelementptr inbounds i8, ptr %i.afy, i64 -4
  %i.agb = load i32, ptr %i.aga, align 4, !tbaa !70 ; 2 uses
  %i.agc = getelementptr inbounds i8, ptr %i.afy, i64 -8
  %i.agd = load i32, ptr %i.agc, align 4, !tbaa !70
  %i.age = icmp eq i32 %i.agb, %i.agd
  br i1 %i.age, label %bb.en, label %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i376

bb.en:                                            ; preds = %bb.em, %bb.el
  invoke void @_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.afq)
          to label %.noexc382 unwind label %.loopexit.split-lp465.loopexit.split-lp

.noexc382:                                        ; preds = %bb.en
  %.pre.i.i.i378 = load ptr, ptr %i.afq, align 8, !tbaa !249 ; 2 uses
  %.phi.trans.insert.i.i.i379 = getelementptr inbounds i8, ptr %.pre.i.i.i378, i64 -4
  %.pre2.i.i.i380 = load i32, ptr %.phi.trans.insert.i.i.i379, align 4, !tbaa !70
  br label %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i376

_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i376: ; preds = %.noexc382, %bb.em
  %i.agf = phi i32 [ %.pre2.i.i.i380, %.noexc382 ], [ %i.agb, %bb.em ] ; 2 uses
  %i.agg = phi ptr [ %.pre.i.i.i378, %.noexc382 ], [ %i.afy, %bb.em ] ; 3 uses
  %i.agh = getelementptr inbounds i8, ptr %i.agg, i64 -4
  %i.agi = zext i32 %i.agf to i64
  %i.agj = getelementptr inbounds nuw [8 x i8], ptr %i.agg, i64 %i.agi
  store ptr %i.afw, ptr %i.agj, align 8, !tbaa !219
  %i.agk = add i32 %i.agf, 1
  store i32 %i.agk, ptr %i.agh, align 4, !tbaa !70
  br label %.loopexit469

_ZNK6vectorIjLb0EjE4sizeEv.exit.i384:             ; preds = %_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit385.1, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i384.preheader.new
  %indvars.iv563 = phi i64 [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i384.preheader.new ], [ %indvars.iv.next564.1, %_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit385.1 ] ; 3 uses
  %niter882 = phi i64 [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i384.preheader.new ], [ %niter882.next.1, %_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit385.1 ]
  %i.agl = getelementptr inbounds nuw [8 x i8], ptr %i.vr, i64 %indvars.iv563
  %i.agm = load ptr, ptr %i.agl, align 8, !tbaa !177
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 4
  %i.ago = load i32, ptr %i.agn, align 4, !tbaa !174 ; 2 uses
  %i.agp = icmp ult i32 %i.ago, %.pre590
  br i1 %i.agp, label %bb.eo, label %_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit385

bb.eo:                                            ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i384
  %i.agq = zext i32 %i.ago to i64
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr %i.vt, i64 %i.agq
  store i32 -1, ptr %i.agr, align 4, !tbaa !70
  br label %_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit385

_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit385: ; preds = %bb.eo, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i384
  %i.ags = getelementptr inbounds nuw [8 x i8], ptr %i.vr, i64 %indvars.iv563
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 8
  %i.agu = load ptr, ptr %i.agt, align 8, !tbaa !177
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 4
  %i.agw = load i32, ptr %i.agv, align 4, !tbaa !174 ; 2 uses
  %i.agx = icmp ult i32 %i.agw, %.pre590
  br i1 %i.agx, label %bb.ep, label %_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit385.1

bb.ep:                                            ; preds = %_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit385
  %i.agy = zext i32 %i.agw to i64
  %i.agz = getelementptr inbounds nuw [4 x i8], ptr %i.vt, i64 %i.agy
  store i32 -1, ptr %i.agz, align 4, !tbaa !70
  br label %_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit385.1

_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit385.1: ; preds = %bb.ep, %_ZN10polynomial12monomial2pos5resetEPKNS_8monomialE.exit385
  %indvars.iv.next564.1 = add nuw nsw i64 %indvars.iv563, 2 ; 2 uses
  %niter882.next.1 = add i64 %niter882, 2         ; 2 uses
  %niter882.ncmp.1 = icmp eq i64 %niter882.next.1, %unroll_iter881
  br i1 %niter882.ncmp.1, label %._crit_edge517.split.loopexit.unr-lcssa, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i384, !llvm.loop !627

.loopexit.split-lp471.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i.i246, %bb.cy, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i.i354, %.lr.ph.i.i361, %bb.ef, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i.i318, %.lr.ph.i.i.i.preheader.i.i.i.i, %.noexc368, %.thread.i.i.i.i, %bb.dx, %bb.dw, %bb.dq, %_ZN10polynomial16monomial_manager5div_xEPKNS_8monomialEj.exit.i297, %.noexc300, %_ZN10polynomial12tmp_monomial7reserveEj.exit.thread.i.i299, %_ZN10polynomial7manager3imp11mk_monomialEjj.exit, %_ZN10polynomial12tmp_monomial7reserveEj.exit.thread.i.i, %.noexc231, %_ZN10polynomial16monomial_manager5div_xEPKNS_8monomialEj.exit.i, %bb.cj, %.split, %bb.cv, %bb.cu
  %lpad.loopexit.split-lp826 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp471

.loopexit469:                                     ; preds = %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i376, %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i371
  %i.aha = phi ptr [ %i.afr, %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i371 ], [ %i.agg, %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i376 ]
  %i.ahb = load ptr, ptr %i.aha, align 8, !tbaa !219 ; 4 uses
  invoke void @_ZN10polynomial7manager3imp10som_buffer12remove_zerosEb(ptr noundef nonnull align 8 dereferenceable(32) %i.ahb, i1 noundef zeroext false)
          to label %.noexc388 unwind label %.loopexit.split-lp465.loopexit.split-lp

.noexc388:                                        ; preds = %.loopexit469
  %i.ahc = load ptr, ptr %i.ahb, align 8, !tbaa !205
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahb, i64 16 ; 2 uses
  %i.ahe = load ptr, ptr %i.ahd, align 8, !tbaa !162 ; 3 uses
  %i.ahf = icmp eq ptr %i.ahe, null
  br i1 %i.ahf, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i, label %bb.eq

bb.eq:                                            ; preds = %.noexc388
  %i.ahg = getelementptr inbounds i8, ptr %i.ahe, i64 -4
  %i.ahh = load i32, ptr %i.ahg, align 4, !tbaa !70
  br label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i:             ; preds = %bb.eq, %.noexc388
  %.0.i.i386 = phi i32 [ %i.ahh, %bb.eq ], [ 0, %.noexc388 ]
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahb, i64 24 ; 2 uses
  %i.ahj = load ptr, ptr %i.ahi, align 8, !tbaa !163
  %i.ahk = invoke noundef ptr @_ZN10polynomial7manager3imp18mk_polynomial_coreEjP3mpzPKPNS_8monomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.ahc, i32 noundef %.0.i.i386, ptr noundef %i.ahe, ptr noundef %i.ahj)
          to label %.noexc389 unwind label %.loopexit.split-lp465.loopexit.split-lp ; 4 uses

.noexc389:                                        ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i
  %i.ahl = load ptr, ptr %i.ahd, align 8, !tbaa !162 ; 2 uses
  %.not.i.i387 = icmp eq ptr %i.ahl, null
  br i1 %.not.i.i387, label %_ZN6vectorI3mpzLb0EjE5resetEv.exit.i, label %bb.er

bb.er:                                            ; preds = %.noexc389
  %i.ahm = getelementptr inbounds i8, ptr %i.ahl, i64 -4
  store i32 0, ptr %i.ahm, align 4, !tbaa !70
  br label %_ZN6vectorI3mpzLb0EjE5resetEv.exit.i

_ZN6vectorI3mpzLb0EjE5resetEv.exit.i:             ; preds = %bb.er, %.noexc389
  %i.ahn = load ptr, ptr %i.ahi, align 8, !tbaa !163 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.ahn, null
  br i1 %.not.i2.i, label %_ZN10polynomial7manager3imp10som_buffer2mkEb.exit, label %bb.es

bb.es:                                            ; preds = %_ZN6vectorI3mpzLb0EjE5resetEv.exit.i
  %i.aho = getelementptr inbounds i8, ptr %i.ahn, i64 -4
  store i32 0, ptr %i.aho, align 4, !tbaa !70
  br label %_ZN10polynomial7manager3imp10som_buffer2mkEb.exit

_ZN10polynomial7manager3imp10som_buffer2mkEb.exit: ; preds = %bb.es, %_ZN6vectorI3mpzLb0EjE5resetEv.exit.i
  %.not.i390 = icmp eq ptr %i.ahk, null
  br i1 %.not.i390, label %bb.et, label %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i391

_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i391: ; preds = %_ZN10polynomial7manager3imp10som_buffer2mkEb.exit
  %i.ahp = load i32, ptr %i.ahk, align 8, !tbaa !108
  %i.ahq = add i32 %i.ahp, 1
  store i32 %i.ahq, ptr %i.ahk, align 8, !tbaa !108
  br label %bb.et

bb.et:                                            ; preds = %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i391, %_ZN10polynomial7manager3imp10som_buffer2mkEb.exit
  %i.ahr = load ptr, ptr %13, align 8, !tbaa !110 ; 4 uses
  %.not.i4.i392 = icmp eq ptr %i.ahr, null
  br i1 %.not.i4.i392, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_.exit394, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.ahs = load ptr, ptr %i.afo, align 8, !tbaa !111, !nonnull !99, !align !100
  %i.aht = load ptr, ptr %i.ahs, align 8, !tbaa !94
  %i.ahu = load i32, ptr %i.ahr, align 8, !tbaa !108
  %i.ahv = add i32 %i.ahu, -1                     ; 2 uses
  store i32 %i.ahv, ptr %i.ahr, align 8, !tbaa !108
  %i.ahw = icmp eq i32 %i.ahv, 0
  br i1 %i.ahw, label %bb.ev, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_.exit394

bb.ev:                                            ; preds = %bb.eu
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.aht, ptr noundef nonnull %i.ahr)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_.exit394 unwind label %.loopexit.split-lp465.loopexit.split-lp

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_.exit394: ; preds = %bb.ev, %bb.et, %bb.eu
  store ptr %i.ahk, ptr %13, align 8, !tbaa !110
  %i.ahx = getelementptr inbounds nuw i8, ptr %15, i64 8
  %umax = call i32 @llvm.umax.i32(i32 %i.afm, i32 1)
  %wide.trip.count571 = zext i32 %umax to i64
  %exitcond572.not770 = icmp ult i32 %i.afm, 2
  br i1 %exitcond572.not770, label %._crit_edge773, label %.lr.ph772

bb.ew:                                            ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit428
  %exitcond572.not = icmp eq i64 %indvars.iv.next569, %wide.trip.count571
  br i1 %exitcond572.not, label %._crit_edge773, label %.lr.ph772, !llvm.loop !628

.loopexit.split-lp465.loopexit.split-lp:          ; preds = %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit430.thread.invoke, %bb.en, %.lr.ph.i.i373.preheader, %bb.ev, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i, %.loopexit469, %bb.fp, %bb.fo, %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit430.thread461
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp465

.lr.ph772:                                        ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_.exit394, %bb.ew
  %indvars.iv568771 = phi i64 [ %indvars.iv.next569, %bb.ew ], [ 1, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSEPS1_.exit394 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  %i.ahy = load ptr, ptr %i.em, align 8, !tbaa !207, !nonnull !99, !align !100 ; 2 uses
  store ptr null, ptr %15, align 8, !tbaa !110
  store ptr %i.ahy, ptr %i.ahx, align 8, !tbaa !81
  %indvars.iv.next569 = add nuw nsw i64 %indvars.iv568771, 1 ; 3 uses
  %i.ahz = load ptr, ptr %i.afq, align 8, !tbaa !249 ; 3 uses
  %i.aia = icmp eq ptr %i.ahz, null
  br i1 %i.aia, label %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i395, label %bb.ex

bb.ex:                                            ; preds = %.lr.ph772
  %i.aib = getelementptr inbounds i8, ptr %i.ahz, i64 -4
  %i.aic = load i32, ptr %i.aib, align 4, !tbaa !70
  br label %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i395

_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i395: ; preds = %bb.ex, %.lr.ph772
  %.0.i.i.i396 = phi i32 [ %i.aic, %bb.ex ], [ 0, %.lr.ph772 ] ; 2 uses
  %i.aid = zext i32 %.0.i.i.i396 to i64
  %16 = icmp samesign ugt i64 %indvars.iv.next569, %i.aid
  br i1 %16, label %.lr.ph.i.i397, label %.loopexit463

.lr.ph.i.i397:                                    ; preds = %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i395, %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i400
  %.05.i.i398 = phi i32 [ %i.ait, %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i400 ], [ %.0.i.i.i396, %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i395 ] ; 2 uses
  %i.aie = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 32)
          to label %.noexc405 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc405:                                        ; preds = %.lr.ph.i.i397
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aie, i8 0, i64 32, i1 false)
  %i.aif = load ptr, ptr %i.ug, align 8, !tbaa !250 ; 2 uses
  %.not.i.i399 = icmp eq ptr %i.aif, null
  br i1 %.not.i.i399, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %.noexc405
  store ptr %i.aif, ptr %i.aie, align 8, !tbaa !205
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %.noexc405
  %i.aig = load ptr, ptr %i.afq, align 8, !tbaa !249 ; 4 uses
  %i.aih = icmp eq ptr %i.aig, null
  br i1 %i.aih, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.aii = getelementptr inbounds i8, ptr %i.aig, i64 -4
  %i.aij = load i32, ptr %i.aii, align 4, !tbaa !70 ; 2 uses
  %i.aik = getelementptr inbounds i8, ptr %i.aig, i64 -8
  %i.ail = load i32, ptr %i.aik, align 4, !tbaa !70
  %i.aim = icmp eq i32 %i.aij, %i.ail
  br i1 %i.aim, label %bb.fb, label %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i400

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  invoke void @_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.afq)
          to label %.noexc406 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc406:                                        ; preds = %bb.fb
  %.pre.i.i.i402 = load ptr, ptr %i.afq, align 8, !tbaa !249 ; 2 uses
  %.phi.trans.insert.i.i.i403 = getelementptr inbounds i8, ptr %.pre.i.i.i402, i64 -4
  %.pre2.i.i.i404 = load i32, ptr %.phi.trans.insert.i.i.i403, align 4, !tbaa !70
  br label %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i400

_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i400: ; preds = %.noexc406, %bb.fa
  %i.ain = phi i32 [ %.pre2.i.i.i404, %.noexc406 ], [ %i.aij, %bb.fa ] ; 2 uses
  %i.aio = phi ptr [ %.pre.i.i.i402, %.noexc406 ], [ %i.aig, %bb.fa ] ; 3 uses
  %i.aip = getelementptr inbounds i8, ptr %i.aio, i64 -4
  %i.aiq = zext i32 %i.ain to i64
  %i.air = getelementptr inbounds nuw [8 x i8], ptr %i.aio, i64 %i.aiq
  store ptr %i.aie, ptr %i.air, align 8, !tbaa !219
  %i.ais = add i32 %i.ain, 1
  store i32 %i.ais, ptr %i.aip, align 4, !tbaa !70
  %i.ait = add i32 %.05.i.i398, 1
  %i.aiu = zext i32 %.05.i.i398 to i64
  %exitcond.not.i.i401 = icmp eq i64 %indvars.iv568771, %i.aiu
  br i1 %exitcond.not.i.i401, label %.loopexit463, label %.lr.ph.i.i397, !llvm.loop !25

.loopexit463:                                     ; preds = %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i400, %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i395
  %i.aiv = phi ptr [ %i.ahz, %_ZNK6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE4sizeEv.exit.i.i395 ], [ %i.aio, %_ZN6vectorIPN10polynomial7manager3imp10som_bufferELb0EjE9push_backERKS4_.exit.i.i400 ]
  %i.aiw = getelementptr inbounds nuw [8 x i8], ptr %i.aiv, i64 %indvars.iv568771
  %i.aix = load ptr, ptr %i.aiw, align 8, !tbaa !219 ; 4 uses
  invoke void @_ZN10polynomial7manager3imp10som_buffer12remove_zerosEb(ptr noundef nonnull align 8 dereferenceable(32) %i.aix, i1 noundef zeroext false)
          to label %.noexc413 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc413:                                        ; preds = %.loopexit463
  %i.aiy = load ptr, ptr %i.aix, align 8, !tbaa !205
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aix, i64 16 ; 2 uses
  %i.aja = load ptr, ptr %i.aiz, align 8, !tbaa !162 ; 3 uses
  %i.ajb = icmp eq ptr %i.aja, null
  br i1 %i.ajb, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i408, label %bb.fc

bb.fc:                                            ; preds = %.noexc413
  %i.ajc = getelementptr inbounds i8, ptr %i.aja, i64 -4
  %i.ajd = load i32, ptr %i.ajc, align 4, !tbaa !70
  br label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i408

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i408:          ; preds = %bb.fc, %.noexc413
  %.0.i.i409 = phi i32 [ %i.ajd, %bb.fc ], [ 0, %.noexc413 ]
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aix, i64 24 ; 2 uses
  %i.ajf = load ptr, ptr %i.aje, align 8, !tbaa !163
  %i.ajg = invoke noundef ptr @_ZN10polynomial7manager3imp18mk_polynomial_coreEjP3mpzPKPNS_8monomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.aiy, i32 noundef %.0.i.i409, ptr noundef %i.aja, ptr noundef %i.ajf)
          to label %.noexc414 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

.noexc414:                                        ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i408
  %i.ajh = load ptr, ptr %i.aiz, align 8, !tbaa !162 ; 2 uses
  %.not.i.i410 = icmp eq ptr %i.ajh, null
  br i1 %.not.i.i410, label %_ZN6vectorI3mpzLb0EjE5resetEv.exit.i411, label %bb.fd

bb.fd:                                            ; preds = %.noexc414
  %i.aji = getelementptr inbounds i8, ptr %i.ajh, i64 -4
  store i32 0, ptr %i.aji, align 4, !tbaa !70
  br label %_ZN6vectorI3mpzLb0EjE5resetEv.exit.i411

_ZN6vectorI3mpzLb0EjE5resetEv.exit.i411:          ; preds = %bb.fd, %.noexc414
  %i.ajj = load ptr, ptr %i.aje, align 8, !tbaa !163 ; 2 uses
  %.not.i2.i412 = icmp eq ptr %i.ajj, null
  br i1 %.not.i2.i412, label %_ZN10polynomial7manager3imp10som_buffer2mkEb.exit415, label %bb.fe

bb.fe:                                            ; preds = %_ZN6vectorI3mpzLb0EjE5resetEv.exit.i411
  %i.ajk = getelementptr inbounds i8, ptr %i.ajj, i64 -4
  store i32 0, ptr %i.ajk, align 4, !tbaa !70
  br label %_ZN10polynomial7manager3imp10som_buffer2mkEb.exit415

_ZN10polynomial7manager3imp10som_buffer2mkEb.exit415: ; preds = %bb.fe, %_ZN6vectorI3mpzLb0EjE5resetEv.exit.i411
  %.not.i416 = icmp eq ptr %i.ajg, null           ; 2 uses
  br i1 %.not.i416, label %bb.ff, label %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i417

_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i417: ; preds = %_ZN10polynomial7manager3imp10som_buffer2mkEb.exit415
  %i.ajl = load i32, ptr %i.ajg, align 8, !tbaa !108
  %i.ajm = add i32 %i.ajl, 1
  store i32 %i.ajm, ptr %i.ajg, align 8, !tbaa !108
  br label %bb.ff

bb.ff:                                            ; preds = %_ZN10polynomial7manager3imp10som_buffer2mkEb.exit415, %_ZN10polynomial7manager7inc_refEPNS_10polynomialE.exit.i417
  store ptr %i.ajg, ptr %15, align 8, !tbaa !110
  %i.ajn = load ptr, ptr %13, align 8, !tbaa !110
  invoke void @_ZN10polynomial7manager3imp10euclid_gcdEPKNS_10polynomialES4_R7obj_refIS2_S0_E(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %i.ajn, ptr noundef %i.ajg, ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %bb.fg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fg:                                            ; preds = %bb.ff
  %i.ajo = load ptr, ptr %13, align 8, !tbaa !110 ; 6 uses
  %i.ajp = load ptr, ptr %14, align 8, !tbaa !110 ; 3 uses
  %.not.i421 = icmp eq ptr %i.ajo, %i.ajp
  br i1 %.not.i421, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %.not.i.i422 = icmp eq ptr %i.ajo, null
  br i1 %.not.i.i422, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.ajq = load ptr, ptr %i.afo, align 8, !tbaa !111, !nonnull !99, !align !100
  %i.ajr = load ptr, ptr %i.ajq, align 8, !tbaa !94
  %i.ajs = load i32, ptr %i.ajo, align 8, !tbaa !108
  %i.ajt = add i32 %i.ajs, -1                     ; 2 uses
  store i32 %i.ajt, ptr %i.ajo, align 8, !tbaa !108
  %i.aju = icmp eq i32 %i.ajt, 0
  br i1 %i.aju, label %bb.fj, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i

bb.fj:                                            ; preds = %bb.fi
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.ajr, ptr noundef nonnull %i.ajo)
          to label %.noexc423 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc423:                                        ; preds = %bb.fj
  %.pr.pre.i = load ptr, ptr %14, align 8, !tbaa !110
  br label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i: ; preds = %.noexc423, %bb.fi, %bb.fh
  %i.ajv = phi ptr [ %i.ajp, %bb.fh ], [ %.pr.pre.i, %.noexc423 ], [ %i.ajp, %bb.fi ] ; 5 uses
  store ptr %i.ajv, ptr %13, align 8, !tbaa !110
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ajv) ]
  %i.ajw = load i32, ptr %i.ajv, align 8, !tbaa !108
  %i.ajx = add i32 %i.ajw, 1
  store i32 %i.ajx, ptr %i.ajv, align 8, !tbaa !108
  br label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit: ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i, %bb.fg
  %i.ajy = phi ptr [ %i.ajv, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEE7dec_refEv.exit.i ], [ %i.ajo, %bb.fg ] ; 2 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 8
  %i.aka = load i32, ptr %i.ajz, align 8, !tbaa !175
  switch i32 %i.aka, label %.fold.split.i424 [
    i32 0, label %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit425
    i32 1, label %bb.fk
  ]

bb.fk:                                            ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajy, i64 24
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !176
  %i.akd = load ptr, ptr %i.akc, align 8, !tbaa !177
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akd, i64 12
  %i.akf = load i32, ptr %i.ake, align 4, !tbaa !78
  %i.akg = icmp eq i32 %i.akf, 0
  br label %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit425

.fold.split.i424:                                 ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit
  br label %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit425

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fb, %.lr.ph.i.i397, %bb.fj, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i408, %.loopexit463, %bb.ff
  %lpad.loopexit.split-lp792 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br label %.loopexit.split-lp465

_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit425: ; preds = %.fold.split.i424, %bb.fk, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit
  %i.akh = phi i1 [ true, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEEaSERKS3_.exit ], [ %i.akg, %bb.fk ], [ false, %.fold.split.i424 ]
  br i1 %.not.i416, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit428, label %bb.fl

bb.fl:                                            ; preds = %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit425
  %i.aki = load ptr, ptr %i.ahy, align 8, !tbaa !94
  %i.akj = load i32, ptr %i.ajg, align 8, !tbaa !108
  %i.akk = add i32 %i.akj, -1                     ; 2 uses
  store i32 %i.akk, ptr %i.ajg, align 8, !tbaa !108
  %i.akl = icmp eq i32 %i.akk, 0
  br i1 %i.akl, label %bb.fm, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit428

bb.fm:                                            ; preds = %bb.fl
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.aki, ptr noundef nonnull %i.ajg)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit428 unwind label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.akm = landingpad { ptr, i32 }
          catch ptr null
  %i.akn = extractvalue { ptr, i32 } %i.akm, 0
  call void @__clang_call_terminate(ptr %i.akn) #28
end_hunk_2
begin_hunk_3_@_ZN10polynomial7manager3imp34extract_and_init_lift_coefficientsERN11upolynomial12core_managerEPKNS_10polynomialEjjRKNS2_21scoped_numeral_vectorESA_RK3mpzR6vectorIPS8_Lb1EjESH_SH_:bb.a
  invoke void @_ZN11mpz_managerILb0EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.dy, ptr noundef nonnull align 8 dereferenceable(16) %i.dh, ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.dh)
          to label %_ZN13mpzzp_manager11p_normalizeER3mpz.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i, %.split.i
  %i.dz = phi i8 [ %.pre10.i, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i ], [ %i.dq, %.split.i ]
  %i.ea = phi ptr [ %.pre12.i, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i ], [ %i.dl, %.split.i ] ; 2 uses
  %i.eb = and i8 %i.dz, 1
  %i.ec = icmp eq i8 %i.eb, 0
  br i1 %i.ec, label %bb.x, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i

bb.x:                                             ; preds = %bb.w
  %i.ed = load i8, ptr %i.n, align 4
  %i.ee = and i8 %i.ed, 1
  %i.ef = icmp eq i8 %i.ee, 0
  br i1 %i.ef, label %.split9.i, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i

.split9.i:                                        ; preds = %bb.x
  %i.eg = load i32, ptr %i.dh, align 8, !tbaa !91
  %i.eh = load i32, ptr %i.m, align 8, !tbaa !91
  %i.ei = icmp slt i32 %i.eg, %i.eh
  br i1 %i.ei, label %bb.y, label %_ZN13mpzzp_manager11p_normalizeER3mpz.exit

_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i:       ; preds = %bb.x, %bb.w
  %i.ej = invoke noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.ea, ptr noundef nonnull align 8 dereferenceable(16) %i.dh, ptr noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %.noexc96 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc96:                                         ; preds = %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i
  %i.ek = icmp slt i32 %i.ej, 0
  br i1 %i.ek, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i, label %_ZN13mpzzp_manager11p_normalizeER3mpz.exit

_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i: ; preds = %.noexc96
  %.pre11.i = load ptr, ptr %i.c, align 8, !tbaa !98
  br label %bb.y

bb.y:                                             ; preds = %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i, %.split9.i
  %i.el = phi ptr [ %.pre11.i, %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i ], [ %i.ea, %.split9.i ]
  invoke void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.el, ptr noundef nonnull align 8 dereferenceable(16) %i.dh, ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.dh)
          to label %_ZN13mpzzp_manager11p_normalizeER3mpz.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN13mpzzp_manager11p_normalizeER3mpz.exit:       ; preds = %bb.s, %.noexc96, %.split9.i, %bb.v, %bb.y
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.em = load ptr, ptr %i.y, align 8, !tbaa !162 ; 2 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %.critedge111, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit, !llvm.loop !776

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.y, %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i, %bb.v, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i, %bb.t, %bb.b, %bb.f, %bb.ab, %bb.q, %bb.p, %bb.g, %.loopexit112, %.critedge111, %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit.thread109
  %lpad.loopexit.split-lp175 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %.critedge111
  %i.eo = load ptr, ptr %8, align 8, !tbaa !332   ; 4 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eq = getelementptr inbounds i8, ptr %i.eo, i64 -4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !70 ; 2 uses
  %i.es = getelementptr inbounds i8, ptr %i.eo, i64 -8
  %i.et = load i32, ptr %i.es, align 4, !tbaa !70
  %i.eu = icmp eq i32 %i.er, %i.et
  br i1 %i.eu, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.z
  invoke void @_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.noexc71 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc71:                                         ; preds = %bb.ab
  %.pre.i69 = load ptr, ptr %8, align 8, !tbaa !332 ; 2 uses
  %.phi.trans.insert.i70 = getelementptr inbounds i8, ptr %.pre.i69, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i70, align 4, !tbaa !70
  br label %bb.ac

bb.ac:                                            ; preds = %.noexc71, %bb.aa
  %i.ev = phi i32 [ %.pre2.i, %.noexc71 ], [ %i.er, %bb.aa ] ; 2 uses
  %i.ew = phi ptr [ %.pre.i69, %.noexc71 ], [ %i.eo, %bb.aa ] ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 -4
  %i.ey = zext i32 %i.ev to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.ey
  store ptr %i.y, ptr %i.ez, align 8, !tbaa !334
  %i.fa = add i32 %i.ev, 1
  store i32 %i.fa, ptr %i.ex, align 4, !tbaa !70
  %i.fb = load ptr, ptr %11, align 8, !tbaa !110  ; 4 uses
  %.not.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fc = load ptr, ptr %i.e, align 8, !tbaa !111, !nonnull !99, !align !100
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !94
  %i.fe = load i32, ptr %i.fb, align 8, !tbaa !108
  %i.ff = add i32 %i.fe, -1                       ; 2 uses
  store i32 %i.ff, ptr %i.fb, align 8, !tbaa !108
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.ae, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.fd, ptr noundef nonnull %i.fb)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  call void @__clang_call_terminate(ptr %i.fi) #28
  unreachable

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit: ; preds = %bb.ac, %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.fj = add i32 %.049131, 1                     ; 2 uses
  %.not = icmp ugt i32 %i.fj, %4
  br i1 %.not, label %.critedge61.preheader, label %bb.b, !llvm.loop !777

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.r
  %.pn56.pn = phi { ptr, i32 } [ %i.cz, %bb.r ], [ %lpad.loopexit.split-lp175, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.bf

.critedge:                                        ; preds = %_ZN10polynomial7manager8is_constEPKNS_10polynomialE.exit.thread109
  %i.fk = load ptr, ptr %11, align 8, !tbaa !110  ; 4 uses
  %.not.i.i72 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i72, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit73, label %bb.ag

bb.ag:                                            ; preds = %.critedge
  %i.fl = load ptr, ptr %i.e, align 8, !tbaa !111, !nonnull !99, !align !100
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !94
  %i.fn = load i32, ptr %i.fk, align 8, !tbaa !108
  %i.fo = add i32 %i.fn, -1                       ; 2 uses
  store i32 %i.fo, ptr %i.fk, align 8, !tbaa !108
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.ah, label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit73

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN10polynomial7manager3imp3delEPNS_10polynomialE(ptr noundef nonnull align 8 dereferenceable(824) %i.fm, ptr noundef nonnull %i.fk)
          to label %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit73 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #28
  unreachable

_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit73: ; preds = %.critedge, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.be

bb.aj:                                            ; preds = %_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE9push_backEOS2_.exit85
  %i.fs = load ptr, ptr %5, align 8, !tbaa !162   ; 3 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit75, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fu = getelementptr inbounds i8, ptr %i.fs, i64 -4
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !70
  br label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit75

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit75:             ; preds = %bb.aj, %bb.ak
  %.0.i74 = phi i32 [ %i.fv, %bb.ak ], [ 0, %bb.aj ]
  %i.fw = load ptr, ptr %9, align 8, !tbaa !332
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !334
  call void @_ZN11upolynomial12core_manager3setEjPK3mpzR7svectorIS1_jE(ptr noundef nonnull align 8 dereferenceable(272) %1, i32 noundef %.0.i74, ptr noundef %i.fs, ptr noundef nonnull align 8 dereferenceable(8) %i.fx)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.fy, ptr %13, align 8, !tbaa !201
  %i.fz = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 6 uses
  store i32 0, ptr %i.fz, align 8, !tbaa !91
  %i.ga = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 3 uses
  %i.gb = load i8, ptr %i.ga, align 4
  %i.gc = and i8 %i.gb, -4                        ; 2 uses
  store i8 %i.gc, ptr %i.ga, align 4
  %i.gd = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr null, ptr %i.gd, align 8, !tbaa !84
  %i.ge = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.gf = load i8, ptr %i.ge, align 4
  %i.gg = and i8 %i.gf, 1
  %i.gh = icmp eq i8 %i.gg, 0
  br i1 %i.gh, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit75
  %i.gi = load i32, ptr %7, align 8, !tbaa !91
  store i32 %i.gi, ptr %i.fz, align 8, !tbaa !91
  store i8 %i.gc, ptr %i.ga, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i76

bb.am:                                            ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit75
  %i.gj = load ptr, ptr %i.c, align 8, !tbaa !98, !nonnull !99, !align !100
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.gj, ptr noundef nonnull align 8 dereferenceable(16) %i.fz, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i76 unwind label %bb.bb

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i76:   ; preds = %bb.am, %bb.al
  %i.gk = load i8, ptr %i.i, align 8, !tbaa !183, !range !190, !noundef !99
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %_ZN13mpzzp_manager3setER3mpzRKS0_.exit, label %bb.an

bb.an:                                            ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i76
  invoke void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.fz)
          to label %_ZN13mpzzp_manager3setER3mpzRKS0_.exit unwind label %bb.bb

.critedge61.preheader:                            ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit, %_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE9push_backEOS2_.exit85
  %.0133 = phi i32 [ %i.hq, %_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE9push_backEOS2_.exit85 ], [ 0, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit ]
  %i.gm = call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16) ; 3 uses
  store ptr null, ptr %i.gm, align 8, !tbaa !162
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store ptr %i.b, ptr %i.gn, align 8, !tbaa !201
  %i.go = load ptr, ptr %9, align 8, !tbaa !332   ; 4 uses
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.critedge61.preheader
  %i.gq = getelementptr inbounds i8, ptr %i.go, i64 -4
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !70 ; 2 uses
  %i.gs = getelementptr inbounds i8, ptr %i.go, i64 -8
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !70
  %i.gu = icmp eq i32 %i.gr, %i.gt
  br i1 %i.gu, label %bb.ap, label %_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE9push_backEOS2_.exit

bb.ap:                                            ; preds = %bb.ao, %.critedge61.preheader
  call void @_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  %.pre.i79 = load ptr, ptr %9, align 8, !tbaa !332 ; 2 uses
  %.phi.trans.insert.i80 = getelementptr inbounds i8, ptr %.pre.i79, i64 -4
  %.pre2.i81 = load i32, ptr %.phi.trans.insert.i80, align 4, !tbaa !70
  br label %_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE9push_backEOS2_.exit

_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE9push_backEOS2_.exit: ; preds = %bb.ao, %bb.ap
  %i.gv = phi i32 [ %.pre2.i81, %bb.ap ], [ %i.gr, %bb.ao ] ; 2 uses
  %i.gw = phi ptr [ %.pre.i79, %bb.ap ], [ %i.go, %bb.ao ] ; 2 uses
  %i.gx = getelementptr inbounds i8, ptr %i.gw, i64 -4
  %i.gy = zext i32 %i.gv to i64
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.gy
  store ptr %i.gm, ptr %i.gz, align 8, !tbaa !334
  %i.ha = add i32 %i.gv, 1
  store i32 %i.ha, ptr %i.gx, align 4, !tbaa !70
  %i.hb = call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16) ; 3 uses
  store ptr null, ptr %i.hb, align 8, !tbaa !162
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store ptr %i.b, ptr %i.hc, align 8, !tbaa !201
  %i.hd = load ptr, ptr %10, align 8, !tbaa !332  ; 4 uses
  %i.he = icmp eq ptr %i.hd, null
  br i1 %i.he, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE9push_backEOS2_.exit
  %i.hf = getelementptr inbounds i8, ptr %i.hd, i64 -4
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !70 ; 2 uses
  %i.hh = getelementptr inbounds i8, ptr %i.hd, i64 -8
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !70
  %i.hj = icmp eq i32 %i.hg, %i.hi
  br i1 %i.hj, label %bb.ar, label %_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE9push_backEOS2_.exit85

bb.ar:                                            ; preds = %bb.aq, %_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE9push_backEOS2_.exit
  call void @_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  %.pre.i82 = load ptr, ptr %10, align 8, !tbaa !332 ; 2 uses
  %.phi.trans.insert.i83 = getelementptr inbounds i8, ptr %.pre.i82, i64 -4
  %.pre2.i84 = load i32, ptr %.phi.trans.insert.i83, align 4, !tbaa !70
  br label %_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE9push_backEOS2_.exit85

_ZN6vectorIPN11upolynomial21scoped_numeral_vectorELb1EjE9push_backEOS2_.exit85: ; preds = %bb.aq, %bb.ar
  %i.hk = phi i32 [ %.pre2.i84, %bb.ar ], [ %i.hg, %bb.aq ] ; 2 uses
  %i.hl = phi ptr [ %.pre.i82, %bb.ar ], [ %i.hd, %bb.aq ] ; 2 uses
  %i.hm = getelementptr inbounds i8, ptr %i.hl, i64 -4
  %i.hn = zext i32 %i.hk to i64
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %i.hn
  store ptr %i.hb, ptr %i.ho, align 8, !tbaa !334
  %i.hp = add i32 %i.hk, 1
  store i32 %i.hp, ptr %i.hm, align 4, !tbaa !70
  %i.hq = add nuw i32 %.0133, 1                   ; 2 uses
  %.not54 = icmp ugt i32 %i.hq, %4
  br i1 %.not54, label %bb.aj, label %.critedge61.preheader, !llvm.loop !778

_ZN13mpzzp_manager3setER3mpzRKS0_.exit:           ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i76, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  store ptr null, ptr %14, align 8, !tbaa !162
  %i.hr = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.hr, align 8, !tbaa !201
  %i.hs = load ptr, ptr %6, align 8, !tbaa !162   ; 3 uses
  %i.ht = icmp eq ptr %i.hs, null
  br i1 %i.ht, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit87, label %bb.as

bb.as:                                            ; preds = %_ZN13mpzzp_manager3setER3mpzRKS0_.exit
  %i.hu = getelementptr inbounds i8, ptr %i.hs, i64 -4
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !70
  br label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit87

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit87:             ; preds = %_ZN13mpzzp_manager3setER3mpzRKS0_.exit, %bb.as
  %.0.i86 = phi i32 [ %i.hv, %bb.as ], [ 0, %_ZN13mpzzp_manager3setER3mpzRKS0_.exit ]
  invoke void @_ZN11upolynomial12core_manager3setEjPK3mpzR7svectorIS1_jE(ptr noundef nonnull align 8 dereferenceable(272) %1, i32 noundef %.0.i86, ptr noundef %i.hs, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.at unwind label %bb.bc

bb.at:                                            ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit87
  invoke void @_ZN11upolynomial12core_manager3mulER7svectorI3mpzjERKS2_(ptr noundef nonnull align 8 dereferenceable(272) %1, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(16) %i.fz)
          to label %bb.au unwind label %bb.bc

bb.au:                                            ; preds = %bb.at
  %i.hw = load ptr, ptr %14, align 8, !tbaa !162  ; 3 uses
  %i.hx = icmp eq ptr %i.hw, null
  br i1 %i.hx, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit89, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hy = getelementptr inbounds i8, ptr %i.hw, i64 -4
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !70
  br label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit89

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit89:             ; preds = %bb.au, %bb.av
  %.0.i88 = phi i32 [ %i.hz, %bb.av ], [ 0, %bb.au ]
  %i.ia = load ptr, ptr %10, align 8, !tbaa !332
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !334
  invoke void @_ZN11upolynomial12core_manager3setEjPK3mpzR7svectorIS1_jE(ptr noundef nonnull align 8 dereferenceable(272) %1, i32 noundef %.0.i88, ptr noundef %i.hw, ptr noundef nonnull align 8 dereferenceable(8) %i.ib)
          to label %bb.aw unwind label %bb.bc

bb.aw:                                            ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit89
  %i.ic = load ptr, ptr %14, align 8, !tbaa !162  ; 3 uses
  %i.id = icmp eq ptr %i.ic, null
  br i1 %i.id, label %_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i:           ; preds = %bb.aw
  %i.ie = getelementptr inbounds i8, ptr %i.ic, i64 -4
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !70 ; 2 uses
  %.not.i.i90 = icmp eq i32 %i.if, 0
  br i1 %.not.i.i90, label %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i
  %wide.trip.count.i.i = zext i32 %i.if to i64
  br label %bb.ax

._crit_edge.i.i:                                  ; preds = %.noexc.i
  %.pre.i.i91 = load ptr, ptr %14, align 8, !tbaa !162 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pre.i.i91, null
  br i1 %.not.i.i.i, label %_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev.exit, label %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.thread3.i

_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.thread3.i: ; preds = %._crit_edge.i.i
  %i.ig = getelementptr inbounds i8, ptr %.pre.i.i91, i64 -4
  store i32 0, ptr %i.ig, align 4, !tbaa !70
  br label %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.i

bb.ax:                                            ; preds = %.noexc.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %.noexc.i ] ; 2 uses
  %i.ih = load ptr, ptr %i.hr, align 8, !tbaa !292, !nonnull !99, !align !100
  %i.ii = load ptr, ptr %14, align 8, !tbaa !162
  %i.ij = getelementptr inbounds nuw [16 x i8], ptr %i.ii, i64 %indvars.iv.i.i
  %i.ik = load ptr, ptr %i.ih, align 8, !tbaa !98, !nonnull !99, !align !100
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.ik, ptr noundef nonnull align 8 dereferenceable(16) %i.ij)
          to label %.noexc.i unwind label %bb.az

.noexc.i:                                         ; preds = %bb.ax
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.ax, !llvm.loop !34

_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.i: ; preds = %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.thread3.i, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i
  %.pr6.i = phi ptr [ %.pre.i.i91, %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.thread3.i ], [ %i.ic, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i ]
  %i.il = getelementptr inbounds i8, ptr %.pr6.i, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.il)
          to label %_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev.exit unwind label %bb.ay

bb.ay:                                            ; preds = %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.i
  %i.im = landingpad { ptr, i32 }
          catch ptr null
  %i.in = extractvalue { ptr, i32 } %i.im, 0
  call void @__clang_call_terminate(ptr %i.in) #28
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.io = landingpad { ptr, i32 }
          catch ptr null
  %i.ip = extractvalue { ptr, i32 } %i.io, 0
  call void @__clang_call_terminate(ptr %i.ip) #28
  unreachable

_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev.exit: ; preds = %bb.aw, %._crit_edge.i.i, %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  %i.iq = load ptr, ptr %13, align 8, !tbaa !203, !nonnull !99, !align !100
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !98, !nonnull !99, !align !100
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.ir, ptr noundef nonnull align 8 dereferenceable(16) %i.fz)
          to label %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit unwind label %bb.ba

bb.ba:                                            ; preds = %_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev.exit
  %i.is = landingpad { ptr, i32 }
          catch ptr null
  %i.it = extractvalue { ptr, i32 } %i.is, 0
  call void @__clang_call_terminate(ptr %i.it) #28
  unreachable

_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit:   ; preds = %_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %bb.be

bb.bb:                                            ; preds = %bb.an, %bb.am
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit89, %bb.at, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit87
  %i.iv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.pn = phi { ptr, i32 } [ %i.iv, %bb.bc ], [ %i.iu, %bb.bb ]
  call void @_ZN15_scoped_numeralI13mpzzp_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %bb.bf

bb.be:                                            ; preds = %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit73, %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit
  %.not121 = phi i1 [ false, %_ZN7obj_refIN10polynomial10polynomialENS0_7managerEED2Ev.exit73 ], [ true, %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit ]
  ret i1 %.not121

bb.bf:                                            ; preds = %bb.bd, %.loopexit.split-lp.loopexit.split-lp
  %.pn56.pn.pn = phi { ptr, i32 } [ %.pn56.pn, %.loopexit.split-lp.loopexit.split-lp ], [ %.pn, %bb.bd ]
  resume { ptr, i32 } %.pn56.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z7deallocIN11upolynomial21scoped_numeral_vectorEEvPT_(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !162    ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i:           ; preds = %bb.b
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !70   ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count.i.i = zext i32 %i.e to i64
  br label %bb.c

._crit_edge.i.i:                                  ; preds = %.noexc.i
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !162 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i.i, label %_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev.exit, label %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.thread3.i

_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.thread3.i: ; preds = %._crit_edge.i.i
  %i.g = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  store i32 0, ptr %i.g, align 4, !tbaa !70
  br label %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.i

bb.c:                                             ; preds = %.noexc.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %.noexc.i ] ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !292, !nonnull !99, !align !100
  %i.i = load ptr, ptr %0, align 8, !tbaa !162
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %indvars.iv.i.i
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !98, !nonnull !99, !align !100
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.c
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.c, !llvm.loop !34

_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.i: ; preds = %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.thread3.i, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i
  %.pr6.i = phi ptr [ %.pre.i.i, %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.thread3.i ], [ %i.b, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i ]
  %i.l = getelementptr inbounds i8, ptr %.pr6.i, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.l)
          to label %_ZN22_scoped_numeral_vectorI13mpzzp_managerED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN22_scoped_numeral_vectorI13mpzzp_managerE5resetEv.exit.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
end_hunk_3
