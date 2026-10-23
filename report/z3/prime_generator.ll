Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/prime_generator?download=true
inline.NumInlined: 118
inline.NumDeleted: 59
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN15prime_generator22process_next_k_numbersEm:bb.a

_ZN6vectorImLb0EjE6shrinkEj.exit:                 ; preds = %.lr.ph108.epil.preheader, %bb.l, %_ZN6vectorImLb0EjE6shrinkEj.exit.unr-lcssa
  %.150.lcssa = phi i32 [ %.150.1, %_ZN6vectorImLb0EjE6shrinkEj.exit.unr-lcssa ], [ %.049107.epil.init, %.lr.ph108.epil.preheader ], [ %i.bk, %bb.l ] ; 7 uses
  %i.bl = icmp eq i32 %.150.lcssa, 0
  br i1 %i.bl, label %.critedge.loopexit95, label %bb.m

bb.m:                                             ; preds = %_ZN6vectorImLb0EjE6shrinkEj.exit
  %i.bm = add i32 %.150.lcssa, -1
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !14
  %i.bq = udiv i64 %i.bp, %i.an
  %i.br = add i64 %i.bq, 1
  %i.bs = icmp ugt i64 %i.an, %i.br
  br i1 %i.bs, label %.preheader, label %bb.aa

.preheader:                                       ; preds = %bb.m
  store i32 %.150.lcssa, ptr %i.ad, align 4, !tbaa !12
  %wide.trip.count164 = zext i32 %.150.lcssa to i64
  br label %bb.n

bb.n:                                             ; preds = %.preheader, %bb.z
  %i.bt = phi ptr [ %i.ag, %.preheader ], [ %i.dj, %bb.z ] ; 4 uses
  %indvars.iv158 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next159, %bb.z ] ; 2 uses
  %i.bu = load ptr, ptr %4, align 8, !tbaa !11
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv158
  %i.bw = icmp eq ptr %i.bt, null
  br i1 %i.bw, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds i8, ptr %i.bt, i64 -4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !12 ; 5 uses
  %i.bz = getelementptr inbounds i8, ptr %i.bt, i64 -8 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !12
  %i.cb = icmp eq i32 %i.by, %i.ca
  br i1 %i.cb, label %bb.q, label %bb.z

bb.p:                                             ; preds = %bb.n
  %i.cc = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %.noexc87 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc87:                                         ; preds = %bb.p
  store i32 2, ptr %i.cc, align 4, !tbaa !12
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i32 0, ptr %i.cd, align 4, !tbaa !12
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  store ptr %i.ce, ptr %0, align 8, !tbaa !11
  br label %.noexc71

bb.q:                                             ; preds = %bb.o
  %i.cf = mul i32 %i.by, 3
  %i.cg = add i32 %i.cf, 1
  %i.ch = lshr i32 %i.cg, 1                       ; 3 uses
  %i.ci = shl i32 %i.ch, 3
  %i.cj = add i32 %i.ci, 8                        ; 2 uses
  %.not.i84 = icmp ugt i32 %i.ch, %i.by
  br i1 %.not.i84, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ck = shl i32 %i.by, 3
  %i.cl = add i32 %i.ck, 8
  %.not27.i = icmp ugt i32 %i.cj, %i.cl
  br i1 %.not27.i, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cm = call ptr @__cxa_allocate_exception(i64 40) #18 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %bb.s
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.cm, align 8, !tbaa !17
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 24 ; 3 uses
  store ptr %i.co, ptr %i.cn, align 8, !tbaa !20
  %i.cp = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !23 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 16
  call void @llvm.assume(i1 %i.cu)
  %i.cv = add nuw nsw i64 %i.ct, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.co, ptr noundef nonnull align 8 dereferenceable(1) %i.cq, i64 %i.cv, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.t
  store ptr %i.cp, ptr %i.cn, align 8, !tbaa !22
  %i.cw = load i64, ptr %i.cq, align 8, !tbaa !24
  store i64 %i.cw, ptr %i.co, align 8, !tbaa !24
  %.phi.trans.insert.i85 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i86 = load i64, ptr %.phi.trans.insert.i85, align 8, !tbaa !23
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.u
  %i.cx = phi i64 [ %i.ct, %bb.u ], [ %.pre.i86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store i64 %i.cx, ptr %i.cz, align 8, !tbaa !23
  store ptr %i.cq, ptr %2, align 8, !tbaa !22
  store i64 0, ptr %i.cy, align 8, !tbaa !23
  store i8 0, ptr %i.cq, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.cm, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #19
          to label %bb.y unwind label %bb.v

bb.v:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  %i.db = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.cq
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.v
  %i.dd = load i64, ptr %i.cq, align 8, !tbaa !24
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %.body

bb.w:                                             ; preds = %bb.s
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @__cxa_free_exception(ptr %i.cm) #18
  br label %.body

bb.x:                                             ; preds = %bb.r
  %i.dg = zext i32 %i.cj to i64
  %i.dh = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.bz, i64 noundef %i.dg)
          to label %.noexc88 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc88:                                         ; preds = %bb.x
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 2 uses
  store ptr %i.di, ptr %0, align 8, !tbaa !11
  store i32 %i.ch, ptr %i.dh, align 4, !tbaa !12
  br label %.noexc71

bb.y:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

.noexc71:                                         ; preds = %.noexc88, %.noexc87
  %.pre.i68 = phi ptr [ %i.di, %.noexc88 ], [ %i.ce, %.noexc87 ] ; 2 uses
  %.phi.trans.insert.i69 = getelementptr inbounds i8, ptr %.pre.i68, i64 -4
  %.pre2.i70 = load i32, ptr %.phi.trans.insert.i69, align 4, !tbaa !12
  br label %bb.z

bb.z:                                             ; preds = %.noexc71, %bb.o
  %i.dj = phi ptr [ %.pre.i68, %.noexc71 ], [ %i.bt, %bb.o ] ; 3 uses
  %i.dk = phi i32 [ %.pre2.i70, %.noexc71 ], [ %i.by, %bb.o ] ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.dj, i64 -4
  %i.dm = zext i32 %i.dk to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dm
  %i.do = load i64, ptr %i.bv, align 8, !tbaa !14
  store i64 %i.do, ptr %i.dn, align 8, !tbaa !14
  %i.dp = add i32 %i.dk, 1
  store i32 %i.dp, ptr %i.dl, align 4, !tbaa !12
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %exitcond165.not = icmp eq i64 %indvars.iv.next159, %wide.trip.count164
  br i1 %exitcond165.not, label %split, label %bb.n, !llvm.loop !36

bb.aa:                                            ; preds = %bb.m
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count143
  br i1 %exitcond144.not, label %._crit_edge, label %.lr.ph108.preheader, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.aa
  store i32 %.150.lcssa, ptr %i.ad, align 4, !tbaa !12
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge, %_ZNK6vectorImLb0EjE4sizeEv.exit
  %i.dq = phi i32 [ %.150.lcssa, %._crit_edge ], [ %i.ae, %_ZNK6vectorImLb0EjE4sizeEv.exit ] ; 4 uses
  %.153.lcssa = phi i32 [ %.0.i, %._crit_edge ], [ %.052245, %_ZNK6vectorImLb0EjE4sizeEv.exit ]
  br i1 %i.ah, label %.lr.ph117.preheader, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dr = getelementptr inbounds i8, ptr %i.ag, i64 -4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !12
  %i.dt = add i32 %i.ds, -1
  %i.du = zext i32 %i.dt to i64
  br label %.lr.ph117.preheader

.lr.ph117.preheader:                              ; preds = %bb.ab, %bb.ac
  %.0.i.i73 = phi i64 [ %i.du, %bb.ac ], [ 4294967295, %bb.ab ]
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.0.i.i73
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !14 ; 2 uses
  %i.dx = mul i64 %i.dw, %i.dw
  %wide.trip.count148 = zext i32 %i.dq to i64
  br label %.lr.ph117

.lr.ph117:                                        ; preds = %.lr.ph117.preheader, %bb.af
  %i.dy = phi ptr [ %i.ag, %.lr.ph117.preheader ], [ %i.ej, %bb.af ] ; 3 uses
  %indvars.iv145 = phi i64 [ 0, %.lr.ph117.preheader ], [ %indvars.iv.next146, %bb.af ] ; 6 uses
  %i.dz = load ptr, ptr %4, align 8, !tbaa !11    ; 8 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv145 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !14 ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %i.dx
  br i1 %i.ec, label %bb.ad, label %._crit_edge118

bb.ad:                                            ; preds = %.lr.ph117
  %i.ed = getelementptr inbounds i8, ptr %i.dy, i64 -4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !12 ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %i.dy, i64 -8
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !12
  %i.eh = icmp eq i32 %i.ee, %i.eg
  br i1 %i.eh, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN6vectorImLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %.noexc80 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc80:                                         ; preds = %bb.ae
  %.pre.i77 = load ptr, ptr %0, align 8, !tbaa !11 ; 2 uses
  %.phi.trans.insert.i78 = getelementptr inbounds i8, ptr %.pre.i77, i64 -4
  %.pre2.i79 = load i32, ptr %.phi.trans.insert.i78, align 4, !tbaa !12
  %.pre = load i64, ptr %i.ea, align 8, !tbaa !14
  br label %bb.af

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.x, %bb.p, %bb.ae, %bb.e
  %lpad.loopexit.split-lp252 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.af:                                            ; preds = %.noexc80, %bb.ad
  %i.ei = phi i64 [ %.pre, %.noexc80 ], [ %i.eb, %bb.ad ]
  %i.ej = phi ptr [ %.pre.i77, %.noexc80 ], [ %i.dy, %bb.ad ] ; 3 uses
  %i.ek = phi i32 [ %.pre2.i79, %.noexc80 ], [ %i.ee, %bb.ad ] ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %i.ej, i64 -4
  %i.em = zext i32 %i.ek to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.em
  store i64 %i.ei, ptr %i.en, align 8, !tbaa !14
  %i.eo = add i32 %i.ek, 1
  store i32 %i.eo, ptr %i.el, align 4, !tbaa !12
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %exitcond149.not = icmp eq i64 %indvars.iv.next146, %wide.trip.count148
  br i1 %exitcond149.not, label %._crit_edge126, label %.lr.ph117, !llvm.loop !38

._crit_edge118:                                   ; preds = %.lr.ph117
  %i.ep = trunc nuw i64 %indvars.iv145 to i32     ; 3 uses
  %i.eq = icmp ugt i32 %i.dq, %i.ep
  br i1 %i.eq, label %.lr.ph125, label %._crit_edge126.thread

.lr.ph125:                                        ; preds = %._crit_edge118
  %i.er = sub nuw i32 %i.dq, %i.ep                ; 3 uses
  %i.es = xor i32 %i.ep, -1
  %i.et = add i32 %i.dq, %i.es                    ; 2 uses
  %i.eu = zext i32 %i.et to i64
  %i.ev = add nuw nsw i64 %i.eu, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.et, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph125
  %n.vec = and i64 %i.ev, 8589934588              ; 4 uses
  %i.ew = add nuw i64 %indvars.iv145, %n.vec
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv145
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %index ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %wide.load = load <2 x i64>, ptr %i.ey, align 8, !tbaa !14
  %wide.load246 = load <2 x i64>, ptr %i.ez, align 8, !tbaa !14
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %index ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store <2 x i64> %wide.load, ptr %i.fa, align 8, !tbaa !14
  store <2 x i64> %wide.load246, ptr %i.fb, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fc = icmp eq i64 %index.next, %n.vec
  br i1 %i.fc, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ev, %n.vec
  br i1 %cmp.n, label %._crit_edge126.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph125, %middle.block
  %indvars.iv152.ph = phi i64 [ %indvars.iv145, %.lr.ph125 ], [ %i.ew, %middle.block ]
  %indvars.iv150.ph = phi i64 [ 0, %.lr.ph125 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv152 = phi i64 [ %indvars.iv.next153, %scalar.ph ], [ %indvars.iv152.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %scalar.ph ], [ %indvars.iv150.ph, %scalar.ph.preheader ] ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv152
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !14
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv150
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !14
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next151 to i32
  %exitcond157.not = icmp eq i32 %i.er, %lftr.wideiv
  br i1 %exitcond157.not, label %._crit_edge126.thread, label %scalar.ph, !llvm.loop !40

._crit_edge126:                                   ; preds = %bb.af
  %.pre166.pre.pre = load ptr, ptr %4, align 8, !tbaa !11 ; 2 uses
  %.not.i82 = icmp eq ptr %.pre166.pre.pre, null
  br i1 %.not.i82, label %.critedge, label %._crit_edge126.thread

._crit_edge126.thread:                            ; preds = %scalar.ph, %middle.block, %._crit_edge118, %._crit_edge126
  %.0.lcssa200 = phi i32 [ 0, %._crit_edge126 ], [ 0, %._crit_edge118 ], [ %i.er, %middle.block ], [ %i.er, %scalar.ph ]
  %.pre166.pre195199 = phi ptr [ %.pre166.pre.pre, %._crit_edge126 ], [ %i.dz, %._crit_edge118 ], [ %i.dz, %middle.block ], [ %i.dz, %scalar.ph ]
  %i.fg = getelementptr inbounds i8, ptr %.pre166.pre195199, i64 -4
  store i32 %.0.lcssa200, ptr %i.fg, align 4, !tbaa !12
  br label %.critedge

.critedge.loopexit95:                             ; preds = %_ZN6vectorImLb0EjE6shrinkEj.exit
  store i32 0, ptr %i.ad, align 4, !tbaa !12
  br label %split

.critedge:                                        ; preds = %._crit_edge126.thread, %._crit_edge126
  %i.fh = load ptr, ptr %4, align 8, !tbaa !11    ; 2 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %_ZN6vectorImLb0EjED2Ev.exit, label %_ZNK6vectorImLb0EjE5emptyEv.exit, !llvm.loop !41

split:                                            ; preds = %bb.z, %.critedge.loopexit95
  %.pr.pre = load ptr, ptr %4, align 8, !tbaa !11 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i, label %_ZN6vectorImLb0EjED2Ev.exit, label %split.thread

split.thread:                                     ; preds = %_ZNK6vectorImLb0EjE5emptyEv.exit, %split
  %.pr205 = phi ptr [ %.pr.pre, %split ], [ %i.ac, %_ZNK6vectorImLb0EjE5emptyEv.exit ]
  %i.fj = getelementptr inbounds i8, ptr %.pr205, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fj)
          to label %_ZN6vectorImLb0EjED2Ev.exit unwind label %bb.ag

bb.ag:                                            ; preds = %split.thread
  %i.fk = landingpad { ptr, i32 }
          catch ptr null
  %i.fl = extractvalue { ptr, i32 } %i.fk, 0
  call void @__clang_call_terminate(ptr %i.fl) #21
  unreachable

_ZN6vectorImLb0EjED2Ev.exit:                      ; preds = %.critedge, %.preheader96, %split, %split.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn63.pn = phi { ptr, i32 } [ %i.df, %bb.w ], [ %i.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %lpad.loopexit.split-lp252, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6vectorImLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %.pn63.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6vectorImLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6vectorImLb0EjE7destroyEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.b)
          to label %_ZN6vectorImLb0EjE7destroyEv.exit unwind label %bb.c

_ZN6vectorImLb0EjE7destroyEv.exit:                ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #21
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN15prime_generator10initializeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11     ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !12   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !12
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6vectorImLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !11  ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi i32 [ %.pre2.i, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %i.i = phi ptr [ %.pre.i, %bb.c ], [ %i.a, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.k = zext i32 %i.h to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.k
  store i64 2, ptr %i.l, align 8, !tbaa !14
  %i.m = add i32 %i.h, 1                          ; 3 uses
  store i32 %i.m, ptr %i.j, align 4, !tbaa !12
  %i.n = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !12
  %i.p = icmp eq i32 %i.m, %i.o
  br i1 %i.p, label %bb.e, label %_ZN6vectorImLb0EjE9push_backEOm.exit4

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6vectorImLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.pre.i1 = load ptr, ptr %0, align 8, !tbaa !11 ; 2 uses
  %.phi.trans.insert.i2 = getelementptr inbounds i8, ptr %.pre.i1, i64 -4
  %.pre2.i3 = load i32, ptr %.phi.trans.insert.i2, align 4, !tbaa !12
  br label %_ZN6vectorImLb0EjE9push_backEOm.exit4

_ZN6vectorImLb0EjE9push_backEOm.exit4:            ; preds = %bb.d, %bb.e
  %i.q = phi i32 [ %.pre2.i3, %bb.e ], [ %i.m, %bb.d ] ; 2 uses
  %i.r = phi ptr [ %.pre.i1, %bb.e ], [ %i.i, %bb.d ] ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.t = zext i32 %i.q to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.t
  store i64 3, ptr %i.u, align 8, !tbaa !14
  %i.v = add i32 %i.q, 1
  store i32 %i.v, ptr %i.s, align 4, !tbaa !12
  tail call void @_ZN15prime_generator22process_next_k_numbersEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 128)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN15prime_generator8finalizeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11     ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN6vectorImLb0EjE8finalizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.b)
  br label %_ZN6vectorImLb0EjE8finalizeEv.exit

_ZN6vectorImLb0EjE8finalizeEv.exit:               ; preds = %bb.a, %bb.b
  store ptr null, ptr %0, align 8, !tbaa !11
  ret void
end_hunk_0
