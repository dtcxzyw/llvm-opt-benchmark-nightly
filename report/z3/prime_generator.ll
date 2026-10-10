Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/prime_generator?download=true
inline.NumInlined: 118
inline.NumDeleted: 59
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN15prime_generator22process_next_k_numbersEm:bb.a
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph105.preheader ], [ %indvars.iv.next.1, %_ZN6vectorImLb0EjE6shrinkEj.exit.unr-lcssa ]
  %.049104.epil.init = phi i32 [ 0, %.lr.ph105.preheader ], [ %.150.1, %_ZN6vectorImLb0EjE6shrinkEj.exit.unr-lcssa ] ; 3 uses
  %lcmp.mod263 = trunc i32 %i.am to i1
  call void @llvm.assume(i1 %lcmp.mod263)
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.epil.init
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !14 ; 2 uses
  %i.bh = urem i64 %i.bg, %i.ao
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %_ZN6vectorImLb0EjE6shrinkEj.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph105.epil.preheader
  %i.bj = zext i32 %.049104.epil.init to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bj
  store i64 %i.bg, ptr %i.bk, align 8, !tbaa !14
  %i.bl = add i32 %.049104.epil.init, 1
  br label %_ZN6vectorImLb0EjE6shrinkEj.exit

_ZN6vectorImLb0EjE6shrinkEj.exit:                 ; preds = %.lr.ph105.epil.preheader, %bb.m, %_ZN6vectorImLb0EjE6shrinkEj.exit.unr-lcssa
  %.150.lcssa = phi i32 [ %.150.1, %_ZN6vectorImLb0EjE6shrinkEj.exit.unr-lcssa ], [ %.049104.epil.init, %.lr.ph105.epil.preheader ], [ %i.bl, %bb.m ] ; 7 uses
  %i.bm = icmp eq i32 %.150.lcssa, 0
  br i1 %i.bm, label %.critedge.loopexit92, label %bb.n

bb.n:                                             ; preds = %_ZN6vectorImLb0EjE6shrinkEj.exit
  %i.bn = add i32 %.150.lcssa, -1
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !14
  %i.br = udiv i64 %i.bq, %i.ao
  %i.bs = add i64 %i.br, 1
  %i.bt = icmp ugt i64 %i.ao, %i.bs
  br i1 %i.bt, label %.preheader, label %bb.ac

.preheader:                                       ; preds = %bb.n
  store i32 %.150.lcssa, ptr %i.ae, align 4, !tbaa !12
  %wide.trip.count158 = zext i32 %.150.lcssa to i64
  br label %bb.o

bb.o:                                             ; preds = %.preheader, %bb.aa
  %i.bu = phi ptr [ %i.ah, %.preheader ], [ %i.dk, %bb.aa ] ; 4 uses
  %indvars.iv152 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next153, %bb.aa ] ; 2 uses
  %i.bv = load ptr, ptr %4, align 8, !tbaa !11
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv152
  %i.bx = icmp eq ptr %i.bu, null
  br i1 %i.bx, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = getelementptr inbounds i8, ptr %i.bu, i64 -4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !12 ; 5 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bu, i64 -8 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !12
  %i.cc = icmp eq i32 %i.bz, %i.cb
  br i1 %i.cc, label %bb.r, label %bb.aa

bb.q:                                             ; preds = %bb.o
  %i.cd = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %.noexc87 unwind label %bb.ab  ; 3 uses

.noexc87:                                         ; preds = %bb.q
  store i32 2, ptr %i.cd, align 4, !tbaa !12
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store i32 0, ptr %i.ce, align 4, !tbaa !12
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  store ptr %i.cf, ptr %0, align 8, !tbaa !11
  br label %.noexc71

bb.r:                                             ; preds = %bb.p
  %i.cg = mul i32 %i.bz, 3
  %i.ch = add i32 %i.cg, 1
  %i.ci = lshr i32 %i.ch, 1                       ; 3 uses
  %i.cj = shl i32 %i.ci, 3
  %i.ck = add i32 %i.cj, 8                        ; 2 uses
  %.not.i84 = icmp ugt i32 %i.ci, %i.bz
  br i1 %.not.i84, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cl = shl i32 %i.bz, 3
  %i.cm = add i32 %i.cl, 8
  %.not27.i = icmp ugt i32 %i.ck, %i.cm
  br i1 %.not27.i, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cn = call ptr @__cxa_allocate_exception(i64 40) #18 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.cn, align 8, !tbaa !17
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 24 ; 3 uses
  store ptr %i.cp, ptr %i.co, align 8, !tbaa !20
  %i.cq = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !23 ; 3 uses
  %i.cv = icmp ult i64 %i.cu, 16
  call void @llvm.assume(i1 %i.cv)
  %i.cw = add nuw nsw i64 %i.cu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cp, ptr noundef nonnull align 8 dereferenceable(1) %i.cr, i64 %i.cw, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.u
  store ptr %i.cq, ptr %i.co, align 8, !tbaa !22
  %i.cx = load i64, ptr %i.cr, align 8, !tbaa !24
  store i64 %i.cx, ptr %i.cp, align 8, !tbaa !24
  %.phi.trans.insert.i85 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i86 = load i64, ptr %.phi.trans.insert.i85, align 8, !tbaa !23
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.v
  %i.cy = phi i64 [ %i.cu, %bb.v ], [ %.pre.i86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store i64 %i.cy, ptr %i.da, align 8, !tbaa !23
  store ptr %i.cr, ptr %2, align 8, !tbaa !22
  store i64 0, ptr %i.cz, align 8, !tbaa !23
  store i8 0, ptr %i.cr, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.cn, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #19
          to label %bb.z unwind label %bb.w

bb.w:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.db = landingpad { ptr, i32 }
          cleanup
  %i.dc = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.cr
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.w
  %i.de = load i64, ptr %i.cr, align 8, !tbaa !24
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %.body

bb.x:                                             ; preds = %bb.t
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @__cxa_free_exception(ptr %i.cn) #18
  br label %.body

bb.y:                                             ; preds = %bb.s
  %i.dh = zext i32 %i.ck to i64
  %i.di = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.ca, i64 noundef %i.dh)
          to label %.noexc88 unwind label %bb.ab  ; 2 uses

.noexc88:                                         ; preds = %bb.y
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  store ptr %i.dj, ptr %0, align 8, !tbaa !11
  store i32 %i.ci, ptr %i.di, align 4, !tbaa !12
  br label %.noexc71

bb.z:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

.noexc71:                                         ; preds = %.noexc88, %.noexc87
  %.pre.i68 = phi ptr [ %i.dj, %.noexc88 ], [ %i.cf, %.noexc87 ] ; 2 uses
  %.phi.trans.insert.i69 = getelementptr inbounds i8, ptr %.pre.i68, i64 -4
  %.pre2.i70 = load i32, ptr %.phi.trans.insert.i69, align 4, !tbaa !12
  br label %bb.aa

bb.aa:                                            ; preds = %.noexc71, %bb.p
  %i.dk = phi ptr [ %.pre.i68, %.noexc71 ], [ %i.bu, %bb.p ] ; 3 uses
  %i.dl = phi i32 [ %.pre2.i70, %.noexc71 ], [ %i.bz, %bb.p ] ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dk, i64 -4
  %i.dn = zext i32 %i.dl to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dn
  %i.dp = load i64, ptr %i.bw, align 8, !tbaa !14
  store i64 %i.dp, ptr %i.do, align 8, !tbaa !14
  %i.dq = add i32 %i.dl, 1
  store i32 %i.dq, ptr %i.dm, align 4, !tbaa !12
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %exitcond159.not = icmp eq i64 %indvars.iv.next153, %wide.trip.count158
  br i1 %exitcond159.not, label %split, label %bb.o, !llvm.loop !36

bb.ab:                                            ; preds = %bb.y, %bb.q
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ac:                                            ; preds = %bb.n
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %exitcond138.not = icmp eq i64 %indvars.iv.next135, %wide.trip.count137
  br i1 %exitcond138.not, label %._crit_edge, label %.lr.ph105.preheader, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.ac
  store i32 %.150.lcssa, ptr %i.ae, align 4, !tbaa !12
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge, %_ZNK6vectorImLb0EjE4sizeEv.exit
  %i.ds = phi i32 [ %.150.lcssa, %._crit_edge ], [ %i.af, %_ZNK6vectorImLb0EjE4sizeEv.exit ] ; 3 uses
  %.153.lcssa = phi i32 [ %.0.i, %._crit_edge ], [ %.052236, %_ZNK6vectorImLb0EjE4sizeEv.exit ]
  br i1 %i.ai, label %.lr.ph114.preheader, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dt = getelementptr inbounds i8, ptr %i.ah, i64 -4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !12
  %i.dv = add i32 %i.du, -1
  %i.dw = zext i32 %i.dv to i64
  br label %.lr.ph114.preheader

.lr.ph114.preheader:                              ; preds = %bb.ad, %bb.ae
  %.0.i.i73 = phi i64 [ %i.dw, %bb.ae ], [ 4294967295, %bb.ad ]
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.0.i.i73
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !14 ; 2 uses
  %i.dz = mul i64 %i.dy, %i.dy
  %wide.trip.count142 = zext i32 %i.ds to i64
  br label %.lr.ph114

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %bb.ai
  %i.ea = phi ptr [ %i.ah, %.lr.ph114.preheader ], [ %i.em, %bb.ai ] ; 3 uses
  %indvars.iv139 = phi i64 [ 0, %.lr.ph114.preheader ], [ %indvars.iv.next140, %bb.ai ] ; 6 uses
  %i.eb = load ptr, ptr %4, align 8, !tbaa !11    ; 8 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv139 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !14 ; 2 uses
  %i.ee = icmp ult i64 %i.ed, %i.dz
  br i1 %i.ee, label %bb.af, label %._crit_edge115

bb.af:                                            ; preds = %.lr.ph114
  %i.ef = getelementptr inbounds i8, ptr %i.ea, i64 -4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !12 ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %i.ea, i64 -8
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !12
  %i.ej = icmp eq i32 %i.eg, %i.ei
  br i1 %i.ej, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN6vectorImLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %.noexc80 unwind label %bb.ah

.noexc80:                                         ; preds = %bb.ag
  %.pre.i77 = load ptr, ptr %0, align 8, !tbaa !11 ; 2 uses
  %.phi.trans.insert.i78 = getelementptr inbounds i8, ptr %.pre.i77, i64 -4
  %.pre2.i79 = load i32, ptr %.phi.trans.insert.i78, align 4, !tbaa !12
  %.pre = load i64, ptr %i.ec, align 8, !tbaa !14
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ai:                                            ; preds = %.noexc80, %bb.af
  %i.el = phi i64 [ %.pre, %.noexc80 ], [ %i.ed, %bb.af ]
  %i.em = phi ptr [ %.pre.i77, %.noexc80 ], [ %i.ea, %bb.af ] ; 3 uses
  %i.en = phi i32 [ %.pre2.i79, %.noexc80 ], [ %i.eg, %bb.af ] ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %i.em, i64 -4
  %i.ep = zext i32 %i.en to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.ep
  store i64 %i.el, ptr %i.eq, align 8, !tbaa !14
  %i.er = add i32 %i.en, 1
  store i32 %i.er, ptr %i.eo, align 4, !tbaa !12
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %exitcond143.not = icmp eq i64 %indvars.iv.next140, %wide.trip.count142
  br i1 %exitcond143.not, label %._crit_edge123, label %.lr.ph114, !llvm.loop !38

._crit_edge115:                                   ; preds = %.lr.ph114
  %i.es = trunc nuw i64 %indvars.iv139 to i32     ; 2 uses
  %i.et = icmp ugt i32 %i.ds, %i.es
  br i1 %i.et, label %.lr.ph122, label %._crit_edge123.thread

.lr.ph122:                                        ; preds = %._crit_edge115
  %i.eu = sub nuw i32 %i.ds, %i.es                ; 4 uses
  %i.ev = zext i32 %i.eu to i64                   ; 3 uses
  %min.iters.check = icmp ult i32 %i.eu, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph122
  %n.vec = and i64 %i.ev, 4294967292              ; 4 uses
  %i.ew = add nuw i64 %indvars.iv139, %n.vec
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv139
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %index ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %wide.load = load <2 x i64>, ptr %i.ey, align 8, !tbaa !14
  %wide.load237 = load <2 x i64>, ptr %i.ez, align 8, !tbaa !14
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %index ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store <2 x i64> %wide.load, ptr %i.fa, align 8, !tbaa !14
  store <2 x i64> %wide.load237, ptr %i.fb, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fc = icmp eq i64 %index.next, %n.vec
  br i1 %i.fc, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ev
  br i1 %cmp.n, label %._crit_edge123.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph122, %middle.block
  %indvars.iv146.ph = phi i64 [ %indvars.iv139, %.lr.ph122 ], [ %i.ew, %middle.block ]
  %indvars.iv144.ph = phi i64 [ 0, %.lr.ph122 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %scalar.ph ], [ %indvars.iv146.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv144 = phi i64 [ %indvars.iv.next145, %scalar.ph ], [ %indvars.iv144.ph, %scalar.ph.preheader ] ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv146
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !14
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv144
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !14
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %exitcond151.not = icmp eq i64 %indvars.iv.next145, %i.ev
  br i1 %exitcond151.not, label %._crit_edge123.thread, label %scalar.ph, !llvm.loop !40

._crit_edge123:                                   ; preds = %bb.ai
  %.pre160.pre.pre = load ptr, ptr %4, align 8, !tbaa !11 ; 2 uses
  %.not.i82 = icmp eq ptr %.pre160.pre.pre, null
  br i1 %.not.i82, label %.critedge, label %._crit_edge123.thread

._crit_edge123.thread:                            ; preds = %scalar.ph, %middle.block, %._crit_edge115, %._crit_edge123
  %.0.lcssa194 = phi i32 [ 0, %._crit_edge123 ], [ 0, %._crit_edge115 ], [ %i.eu, %middle.block ], [ %i.eu, %scalar.ph ]
  %.pre160.pre189193 = phi ptr [ %.pre160.pre.pre, %._crit_edge123 ], [ %i.eb, %._crit_edge115 ], [ %i.eb, %middle.block ], [ %i.eb, %scalar.ph ]
  %i.fg = getelementptr inbounds i8, ptr %.pre160.pre189193, i64 -4
  store i32 %.0.lcssa194, ptr %i.fg, align 4, !tbaa !12
  br label %.critedge

.critedge.loopexit92:                             ; preds = %_ZN6vectorImLb0EjE6shrinkEj.exit
  store i32 0, ptr %i.ae, align 4, !tbaa !12
  br label %split

.critedge:                                        ; preds = %._crit_edge123.thread, %._crit_edge123
  %i.fh = load ptr, ptr %4, align 8, !tbaa !11    ; 2 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %_ZN6vectorImLb0EjED2Ev.exit, label %_ZNK6vectorImLb0EjE5emptyEv.exit, !llvm.loop !41

split:                                            ; preds = %bb.aa, %.critedge.loopexit92
  %.pr.pre = load ptr, ptr %4, align 8, !tbaa !11 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i, label %_ZN6vectorImLb0EjED2Ev.exit, label %split.thread

split.thread:                                     ; preds = %_ZNK6vectorImLb0EjE5emptyEv.exit, %split
  %.pr199 = phi ptr [ %.pr.pre, %split ], [ %i.ad, %_ZNK6vectorImLb0EjE5emptyEv.exit ]
  %i.fj = getelementptr inbounds i8, ptr %.pr199, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fj)
          to label %_ZN6vectorImLb0EjED2Ev.exit unwind label %bb.aj

bb.aj:                                            ; preds = %split.thread
  %i.fk = landingpad { ptr, i32 }
          catch ptr null
  %i.fl = extractvalue { ptr, i32 } %i.fk, 0
  call void @__clang_call_terminate(ptr %i.fl) #21
  unreachable

_ZN6vectorImLb0EjED2Ev.exit:                      ; preds = %.critedge, %.preheader93, %split, %split.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

.body:                                            ; preds = %bb.ab, %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %bb.g, %bb.ah
  %.pn63.pn = phi { ptr, i32 } [ %i.dg, %bb.x ], [ %i.ac, %bb.g ], [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ek, %bb.ah ], [ %i.dr, %bb.ab ]
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
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN15prime_generatorclEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11     ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZNK6vectorImLb0EjE4sizeEv.exit.thread, label %_ZNK6vectorImLb0EjE4sizeEv.exit

_ZNK6vectorImLb0EjE4sizeEv.exit:                  ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !12
  %i.e = icmp ult i32 %1, %i.d
  br i1 %i.e, label %.loopexit, label %_ZNK6vectorImLb0EjE4sizeEv.exit.thread

_ZNK6vectorImLb0EjE4sizeEv.exit.thread:           ; preds = %bb.a, %_ZNK6vectorImLb0EjE4sizeEv.exit
  %i.f = icmp ugt i32 %1, 1048576
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZNK6vectorImLb0EjE4sizeEv.exit.thread
  %i.g = tail call ptr @__cxa_allocate_exception(i64 40) #18 ; 3 uses
  invoke void @_ZN25prime_generator_exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTI25prime_generator_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.g) #18
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %_ZNK6vectorImLb0EjE4sizeEv.exit.thread
  tail call void @_ZN15prime_generator22process_next_k_numbersEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 1024)
  %i.i = load ptr, ptr %0, align 8, !tbaa !11     ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.critedge.preheader, label %_ZNK6vectorImLb0EjE4sizeEv.exit12

_ZNK6vectorImLb0EjE4sizeEv.exit12:                ; preds = %bb.e
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !12
  %i.m = icmp ult i32 %1, %i.l
  br i1 %i.m, label %.loopexit, label %.critedge.preheader

end_hunk_0
