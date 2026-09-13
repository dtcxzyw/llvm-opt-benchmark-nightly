Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/lattice_Zn?download=true
inline.NumInlined: 954
inline.NumDeleted: 441
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN5faiss16ZnSphereCodecRecC2Eii:bb.a

bb.j:                                             ; preds = %.preheader284
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i32 %storemerge, ptr %i.ab, align 8, !tbaa !63
  %i.ac = zext nneg i32 %i.aa to i64
  %i.ad = add nuw nsw i32 %2, 1
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = mul nuw nsw i64 %i.ac, %i.ae            ; 2 uses
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ae, i64 %i.af) ; 2 uses
  %mul.val = extractvalue { i64, i1 } %mul, 0     ; 5 uses
  %mul.ov = extractvalue { i64, i1 } %mul, 1
  br i1 %mul.ov, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.ag, ptr %4, align 8, !tbaa !98
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.ah, align 8, !tbaa !100
  store i8 0, ptr %i.ag, align 8, !tbaa !101
  %i.ai = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #14 ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ak = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.al = add nuw nsw i64 %i.ak, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.al)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %4, align 8, !tbaa !102
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !100
  %i.ao = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.am, i64 noundef %i.an, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #14 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.ak)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m, %bb.l
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %bb.m, %bb.k
  %i.aq = call ptr @__cxa_allocate_exception(i64 40) #14 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss16ZnSphereCodecRecC2Eii, ptr noundef nonnull @.str.5, i32 noundef 516)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.aq, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #28
          to label %bb.bk unwind label %bb.n

bb.q:                                             ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aq) #14
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.pn111 = phi { ptr, i32 } [ %i.ap, %bb.n ], [ %i.ar, %bb.q ]
  %i.as = load ptr, ptr %4, align 8, !tbaa !102   ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ag
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %bb.r
  %i.au = load i64, ptr %i.ag, align 8, !tbaa !101
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit152

bb.s:                                             ; preds = %bb.j
  %i.aw = icmp ult i64 %mul.val, 134217729
  br i1 %i.aw, label %bb.ab, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.ax, ptr %5, align 8, !tbaa !98
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.ay, align 8, !tbaa !100
  store i8 0, ptr %i.ax, align 8, !tbaa !101
  %i.az = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #14 ; 2 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.bb = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bc = add nuw nsw i64 %i.bb, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.bc)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bd = load ptr, ptr %5, align 8, !tbaa !102
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !100
  %i.bf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.bd, i64 noundef %i.be, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #14 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.bb)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.y, %bb.v, %bb.u
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.x:                                             ; preds = %bb.v, %bb.t
  %i.bh = call ptr @__cxa_allocate_exception(i64 40) #14 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss16ZnSphereCodecRecC2Eii, ptr noundef nonnull @.str.5, i32 noundef 520)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  invoke void @__cxa_throw(ptr nonnull %i.bh, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #28
          to label %bb.bk unwind label %bb.w

bb.z:                                             ; preds = %bb.x
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bh) #14
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w
  %.pn113 = phi { ptr, i32 } [ %i.bg, %bb.w ], [ %i.bi, %bb.z ]
  %i.bj = load ptr, ptr %5, align 8, !tbaa !102   ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.ax
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %bb.aa
  %i.bl = load i64, ptr %i.ax, align 8, !tbaa !101
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit152

bb.ab:                                            ; preds = %bb.s
  invoke void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.af)
          to label %_ZNSt6vectorImSaImEE6resizeEm.exit unwind label %bb.af

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %bb.ab
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !80 ; 2 uses
  %.pre224 = load ptr, ptr %i.e, align 8, !tbaa !65 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bo = ptrtoint ptr %.pre to i64
  %i.bp = ptrtoint ptr %.pre224 to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = ashr exact i64 %i.bq, 3                 ; 3 uses
  %i.bs = icmp ugt i64 %mul.val, %i.br
  br i1 %i.bs, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.bt = sub nuw nsw i64 %mul.val, %i.br
  invoke void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.bt)
          to label %_ZNSt6vectorImSaImEE6resizeEm.exit140 unwind label %bb.af

bb.ad:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.bu = icmp ult i64 %mul.val, %i.br
  br i1 %i.bu, label %bb.ae, label %_ZNSt6vectorImSaImEE6resizeEm.exit140

bb.ae:                                            ; preds = %bb.ad
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.pre224, i64 %mul.val ; 2 uses
  %.not.i.i137 = icmp eq ptr %.pre, %i.bv
  br i1 %.not.i.i137, label %_ZNSt6vectorImSaImEE6resizeEm.exit140, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i138

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i138:     ; preds = %bb.ae
  store ptr %i.bv, ptr %i.bn, align 8, !tbaa !80
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit140

_ZNSt6vectorImSaImEE6resizeEm.exit140:            ; preds = %bb.ac, %bb.ad, %bb.ae, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i138
  %i.bw = load i32, ptr %i.c, align 4, !tbaa !62  ; 7 uses
  %.not168 = icmp slt i32 %i.bw, 0
  br i1 %.not168, label %.preheader165.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit140
  %i.bx = add nuw i32 %i.bw, 1                    ; 2 uses
  %wide.trip.count = zext i32 %i.bx to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.by = icmp eq i32 %i.bw, 0
  br i1 %i.by, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  %i.bz = load ptr, ptr %i.d, align 8, !tbaa !65  ; 2 uses
  br label %.lr.ph

.preheader165.unr-lcssa:                          ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader165, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader165.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.preheader165.unr-lcssa ] ; 3 uses
  %lcmp.mod293 = trunc i32 %i.bx to i1
  tail call void @llvm.assume(i1 %lcmp.mod293)
  %i.ca = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.cb = uitofp nneg i32 %i.ca to double
  %sqrt.epil = tail call double @llvm.sqrt.f64(double %i.cb)
  %i.cc = fptosi double %sqrt.epil to i32         ; 3 uses
  %i.cd = mul nsw i32 %i.cc, %i.cc
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = icmp eq i64 %indvars.iv.epil.init, %i.ce
  %i.cg = icmp eq i32 %i.cc, 0
  %i.ch = select i1 %i.cg, i64 1, i64 2
  %.sink.epil = select i1 %i.cf, i64 %i.ch, i64 0
  %i.ci = load ptr, ptr %i.d, align 8, !tbaa !65
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.epil.init
  store i64 %.sink.epil, ptr %i.cj, align 8, !tbaa !49
  br label %.preheader165

.preheader165:                                    ; preds = %.preheader165.unr-lcssa, %.lr.ph.epil.preheader
  %i.ck = load i32, ptr %i.ab, align 8, !tbaa !63 ; 4 uses
  %.not115174 = icmp slt i32 %i.ck, 1
  br i1 %.not115174, label %.preheader165.._crit_edge176.split_crit_edge, label %.preheader164.lr.ph

.preheader165.thread:                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit140
  %i.cl = load i32, ptr %i.ab, align 8, !tbaa !63 ; 3 uses
  %.not115174272 = icmp slt i32 %i.cl, 1
  br i1 %.not115174272, label %.preheader165.._crit_edge176.split_crit_edge, label %.preheader164.lr.ph.thread

.preheader164.lr.ph.thread:                       ; preds = %.preheader165.thread
  %i.cm = add nsw i32 %i.bw, 1
  %.pre226273 = load ptr, ptr %i.d, align 8, !tbaa !65
  br label %._crit_edge176.split

.preheader165.._crit_edge176.split_crit_edge:     ; preds = %.preheader165.thread, %.preheader165
  %i.cn = phi i32 [ %i.cl, %.preheader165.thread ], [ %i.ck, %.preheader165 ]
  %.pre225 = load ptr, ptr %i.d, align 8, !tbaa !65
  %.pre228 = add nsw i32 %i.bw, 1
  br label %._crit_edge176.split

.preheader164.lr.ph:                              ; preds = %.preheader165
  %i.co = add nuw i32 %i.bw, 1                    ; 3 uses
  %.pre226 = load ptr, ptr %i.d, align 8, !tbaa !65 ; 6 uses
  %i.cp = load ptr, ptr %i.e, align 8, !tbaa !65
  %i.cq = sext i32 %i.co to i64                   ; 3 uses
  %i.cr = add nuw i32 %i.ck, 1
  %wide.trip.count216 = zext i32 %i.cr to i64
  %wide.trip.count211 = zext i32 %i.co to i64
  br label %.preheader164

bb.af:                                            ; preds = %bb.ac, %bb.ab
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit152

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ct = trunc nuw nsw i64 %indvars.iv to i32
  %i.cu = uitofp nneg i32 %i.ct to double
  %sqrt = tail call double @llvm.sqrt.f64(double %i.cu)
  %i.cv = fptosi double %sqrt to i32              ; 3 uses
  %i.cw = mul nsw i32 %i.cv, %i.cv
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = icmp eq i64 %indvars.iv, %i.cx
  %i.cz = icmp eq i32 %i.cv, 0
  %i.da = select i1 %i.cz, i64 1, i64 2
  %.sink = select i1 %i.cy, i64 %i.da, i64 0
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv
  store i64 %.sink, ptr %i.db, align 8, !tbaa !49
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.dc = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.dd = uitofp nneg i32 %i.dc to double
  %sqrt.1 = tail call double @llvm.sqrt.f64(double %i.dd)
  %i.de = fptosi double %sqrt.1 to i32            ; 3 uses
  %i.df = mul nsw i32 %i.de, %i.de
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = icmp eq i64 %indvars.iv.next, %i.dg
  %i.di = icmp eq i32 %i.de, 0
  %i.dj = select i1 %i.di, i64 1, i64 2
  %.sink.1 = select i1 %i.dh, i64 %i.dj, i64 0
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.next
  store i64 %.sink.1, ptr %i.dk, align 8, !tbaa !49
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader165.unr-lcssa, label %.lr.ph, !llvm.loop !170

.preheader164:                                    ; preds = %.preheader164.lr.ph, %._crit_edge
  %indvars.iv213 = phi i64 [ 1, %.preheader164.lr.ph ], [ %indvars.iv.next214, %._crit_edge ] ; 3 uses
  %i.dl = mul nuw nsw i64 %indvars.iv213, %i.cq
  %i.dm = add nsw i64 %indvars.iv213, -1
  %i.dn = mul nuw nsw i64 %i.dm, %i.cq            ; 2 uses
  %invariant.gep280 = getelementptr [8 x i8], ptr %.pre226, i64 %i.dn ; 3 uses
  br label %.preheader

._crit_edge176.split:                             ; preds = %._crit_edge, %.preheader164.lr.ph.thread, %.preheader165.._crit_edge176.split_crit_edge
  %i.do = phi i32 [ %i.cn, %.preheader165.._crit_edge176.split_crit_edge ], [ %i.cl, %.preheader164.lr.ph.thread ], [ %i.ck, %._crit_edge ] ; 2 uses
  %.pre-phi = phi i32 [ %.pre228, %.preheader165.._crit_edge176.split_crit_edge ], [ %i.cm, %.preheader164.lr.ph.thread ], [ %i.co, %._crit_edge ] ; 2 uses
  %i.dp = phi ptr [ %.pre225, %.preheader165.._crit_edge176.split_crit_edge ], [ %.pre226273, %.preheader164.lr.ph.thread ], [ %.pre226, %._crit_edge ]
  %i.dq = mul nsw i32 %i.do, %.pre-phi
  %i.dr = add nsw i32 %i.dq, %i.bw
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.ds
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !49 ; 3 uses
  store i64 %i.du, ptr %i.a, align 8, !tbaa !105
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.not117178 = icmp eq i64 %i.du, 0
  br i1 %.not117178, label %._crit_edge183, label %.lr.ph182

.preheader:                                       ; preds = %.preheader164, %bb.ag
  %indvars.iv206 = phi i64 [ 0, %.preheader164 ], [ %indvars.iv.next207, %bb.ag ] ; 4 uses
  %indvars.iv204 = phi i64 [ 1, %.preheader164 ], [ %indvars.iv.next205, %bb.ag ] ; 4 uses
  %i.dw = add nuw nsw i64 %indvars.iv206, %i.dl   ; 2 uses
  %i.dx = mul nuw nsw i64 %i.dw, %i.cq
  %i.dy = add i64 %indvars.iv206, %i.dn           ; 3 uses
  %invariant.gep278 = getelementptr [8 x i8], ptr %i.cp, i64 %i.dx ; 3 uses
  %xtraiter294 = and i64 %indvars.iv204, 1
  %i.dz = icmp eq i64 %indvars.iv206, 0
  br i1 %i.dz, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader
  %unroll_iter298 = and i64 %indvars.iv204, 9223372036854775806
  br label %bb.ah

._crit_edge:                                      ; preds = %bb.ag
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1 ; 2 uses
  %exitcond217.not = icmp eq i64 %indvars.iv.next214, %wide.trip.count216
  br i1 %exitcond217.not, label %._crit_edge176.split, label %.preheader164, !llvm.loop !171

.unr-lcssa:                                       ; preds = %bb.ah
  %lcmp.mod295.not = icmp eq i64 %xtraiter294, 0
  br i1 %lcmp.mod295.not, label %bb.ag, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader
  %indvars.iv197.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next198.1, %.unr-lcssa ] ; 3 uses
  %.087170.epil.init = phi i64 [ 0, %.preheader ], [ %i.ev, %.unr-lcssa ] ; 2 uses
  %lcmp.mod297 = trunc i64 %indvars.iv204 to i1
  tail call void @llvm.assume(i1 %lcmp.mod297)
  %gep279.epil = getelementptr [8 x i8], ptr %invariant.gep278, i64 %indvars.iv197.epil.init
  store i64 %.087170.epil.init, ptr %gep279.epil, align 8, !tbaa !49
  %gep281.epil = getelementptr [8 x i8], ptr %invariant.gep280, i64 %indvars.iv197.epil.init
  %i.ea = load i64, ptr %gep281.epil, align 8, !tbaa !49
  %i.eb = sub i64 %i.dy, %indvars.iv197.epil.init
  %sext.epil = shl i64 %i.eb, 32
  %i.ec = ashr exact i64 %sext.epil, 29
  %i.ed = getelementptr inbounds nuw i8, ptr %.pre226, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !49
  %i.ef = mul i64 %i.ee, %i.ea
  %i.eg = add i64 %i.ef, %.087170.epil.init
  br label %bb.ag

bb.ag:                                            ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa291 = phi i64 [ %i.ev, %.unr-lcssa ], [ %i.eg, %.epil.preheader ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.pre226, i64 %i.dw
  store i64 %.lcssa291, ptr %i.eh, align 8, !tbaa !49
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv204, 1
  %exitcond212.not = icmp eq i64 %indvars.iv.next207, %wide.trip.count211
  br i1 %exitcond212.not, label %._crit_edge, label %.preheader, !llvm.loop !172

bb.ah:                                            ; preds = %bb.ah, %.preheader.new
  %indvars.iv197 = phi i64 [ 0, %.preheader.new ], [ %indvars.iv.next198.1, %bb.ah ] ; 5 uses
  %.087170 = phi i64 [ 0, %.preheader.new ], [ %i.ev, %bb.ah ] ; 2 uses
  %niter299 = phi i64 [ 0, %.preheader.new ], [ %niter299.next.1, %bb.ah ]
  %gep279 = getelementptr [8 x i8], ptr %invariant.gep278, i64 %indvars.iv197
  store i64 %.087170, ptr %gep279, align 8, !tbaa !49
  %gep281 = getelementptr [8 x i8], ptr %invariant.gep280, i64 %indvars.iv197
  %i.ei = load i64, ptr %gep281, align 8, !tbaa !49
  %i.ej = sub i64 %i.dy, %indvars.iv197
  %sext = shl i64 %i.ej, 32
  %i.ek = ashr exact i64 %sext, 29
  %i.el = getelementptr inbounds nuw i8, ptr %.pre226, i64 %i.ek
  %i.em = load i64, ptr %i.el, align 8, !tbaa !49
  %i.en = mul i64 %i.em, %i.ei
  %i.eo = add i64 %i.en, %.087170                 ; 2 uses
  %indvars.iv.next198 = or disjoint i64 %indvars.iv197, 1 ; 3 uses
  %gep279.1 = getelementptr [8 x i8], ptr %invariant.gep278, i64 %indvars.iv.next198
  store i64 %i.eo, ptr %gep279.1, align 8, !tbaa !49
  %gep281.1 = getelementptr [8 x i8], ptr %invariant.gep280, i64 %indvars.iv.next198
  %i.ep = load i64, ptr %gep281.1, align 8, !tbaa !49
  %i.eq = sub i64 %i.dy, %indvars.iv.next198
  %sext.1 = shl i64 %i.eq, 32
  %i.er = ashr exact i64 %sext.1, 29
  %i.es = getelementptr inbounds nuw i8, ptr %.pre226, i64 %i.er
  %i.et = load i64, ptr %i.es, align 8, !tbaa !49
  %i.eu = mul i64 %i.et, %i.ep
  %i.ev = add i64 %i.eu, %i.eo                    ; 3 uses
  %indvars.iv.next198.1 = add nuw nsw i64 %indvars.iv197, 2 ; 2 uses
  %niter299.next.1 = add i64 %niter299, 2         ; 2 uses
  %niter299.ncmp.1 = icmp eq i64 %niter299.next.1, %unroll_iter298
  br i1 %niter299.ncmp.1, label %.unr-lcssa, label %bb.ah, !llvm.loop !173

.lr.ph182:                                        ; preds = %._crit_edge176.split, %.lr.ph182
  %.085180 = phi i64 [ %i.ew, %.lr.ph182 ], [ %i.du, %._crit_edge176.split ]
  %storemerge116179 = phi i32 [ %i.ex, %.lr.ph182 ], [ 0, %._crit_edge176.split ]
  %i.ew = lshr i64 %.085180, 8                    ; 2 uses
  %i.ex = add nuw nsw i32 %storemerge116179, 1    ; 2 uses
  %.not117 = icmp eq i64 %i.ew, 0
  br i1 %.not117, label %._crit_edge183, label %.lr.ph182, !llvm.loop !174

._crit_edge183:                                   ; preds = %.lr.ph182, %._crit_edge176.split
  %storemerge116.lcssa = phi i32 [ 0, %._crit_edge176.split ], [ %i.ex, %.lr.ph182 ]
  store i32 %storemerge116.lcssa, ptr %i.dv, align 4, !tbaa !177
  %i.ey = tail call i32 @llvm.smin.i32(i32 %i.do, i32 4) ; 2 uses
  %.sroa.speculated = add nsw i32 %i.ey, -1       ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i32 0, ptr %i.ez, align 8, !tbaa !64
  %i.fa = sext i32 %.pre-phi to i64               ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !67 ; 3 uses
  %i.fd = load ptr, ptr %i.f, align 8, !tbaa !66  ; 2 uses
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = sdiv exact i64 %i.fg, 24                ; 3 uses
  %i.fi = icmp ult i64 %i.fh, %i.fa
  br i1 %i.fi, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %._crit_edge183
  %i.fj = sub nuw nsw i64 %i.fa, %i.fh
  invoke void @_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.fj)
          to label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE6resizeEm.exit unwind label %bb.am

bb.aj:                                            ; preds = %._crit_edge183
  %i.fk = icmp ugt i64 %i.fh, %i.fa
  br i1 %i.fk, label %bb.ak, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE6resizeEm.exit

bb.ak:                                            ; preds = %bb.aj
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.fd, i64 %i.fa ; 3 uses
  %.not.i.i141 = icmp eq ptr %i.fc, %i.fl
  br i1 %.not.i.i141, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ak, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.fs, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i ], [ %i.fl, %bb.ak ] ; 3 uses
  %i.fm = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !46 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !47
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = ptrtoint ptr %i.fm to i64
  %i.fr = sub i64 %i.fp, %i.fq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef %i.fr) #27
  br label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i: ; preds = %bb.al, %.lr.ph.i.i.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fs, %i.fc
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i
  store ptr %i.fl, ptr %i.fb, align 8, !tbaa !67
  br label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE6resizeEm.exit

_ZNSt6vectorIS_IfSaIfEESaIS1_EE6resizeEm.exit:    ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.ak, %bb.aj, %bb.ai
  %i.ft = load i32, ptr %i.c, align 4, !tbaa !62  ; 2 uses
  %.not118188 = icmp slt i32 %i.ft, 0
  br i1 %.not118188, label %._crit_edge192, label %.lr.ph191

.lr.ph191:                                        ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EE6resizeEm.exit
  %i.fu = shl nuw nsw i32 1, %.sroa.speculated
  %i.fv = zext nneg i32 %i.fu to i64              ; 2 uses
  %i.fw = sub nsw i64 0, %i.fv
  %i.fx = shl nuw nsw i64 %i.fv, 2
  %i.fy = zext nneg i32 %.sroa.speculated to i64
  %i.fz = zext nneg i32 %.sroa.speculated to i64
  br label %bb.an

._crit_edge192:                                   ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE6resizeEm.exit
  store i32 %.sroa.speculated, ptr %i.ez, align 8, !tbaa !64
  ret void

bb.am:                                            ; preds = %bb.ai
end_hunk_0
