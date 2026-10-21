Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/dl_product_relation?download=true
inline.NumInlined: 1630
inline.NumDeleted: 739
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN7datalog23product_relation_plugin21filter_interpreted_fnC2ERKNS_16product_relationEP3app:bb.a
  %i.m = load i32, ptr %i.l, align 4, !tbaa !58
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %.critedge61, label %_ZNK7datalog16product_relation4sizeEv.exit31.lr.ph

bb.b:                                             ; preds = %_ZNK7datalog16product_relation4sizeEv.exit
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !99, !nonnull !95, !align !96
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !97, !nonnull !95, !align !96
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !105
  %i.s = invoke noundef ptr @_ZN7datalog16relation_manager24mk_filter_interpreted_fnERKNS_13relation_baseEP3app(ptr noundef nonnull align 8 dereferenceable(200) %i.p, ptr noundef nonnull align 8 dereferenceable(28) %i.r, ptr noundef %2)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !152  ; 4 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !58   ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !58
  %i.z = icmp eq i32 %i.w, %i.y
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  invoke void @_ZN6vectorIPN7datalog17tr_infrastructureINS0_15relation_traitsEE10mutator_fnELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !152 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !58
  br label %bb.f

bb.f:                                             ; preds = %.noexc, %bb.d
  %i.aa = phi i32 [ %.pre2.i, %.noexc ], [ %i.w, %bb.d ] ; 2 uses
  %i.ab = phi ptr [ %.pre.i, %.noexc ], [ %i.t, %bb.d ] ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -4
  %i.ad = zext i32 %i.aa to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ad
  store ptr %i.s, ptr %i.ae, align 8, !tbaa !154
  %i.af = add i32 %i.aa, 1
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !103 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %.critedge61, label %_ZNK7datalog16product_relation4sizeEv.exit, !llvm.loop !262

.critedge61:                                      ; preds = %bb.f, %_ZNK7datalog16product_relation4sizeEv.exit31.thread, %bb.s, %_ZNK7datalog16product_relation4sizeEv.exit29.preheader, %bb.a
  ret void

_ZNK7datalog16product_relation4sizeEv.exit31.lr.ph: ; preds = %_ZNK7datalog16product_relation4sizeEv.exit29.preheader, %_ZNK7datalog16product_relation4sizeEv.exit31.thread
  %indvars.iv69100 = phi i64 [ %indvars.iv.next70, %_ZNK7datalog16product_relation4sizeEv.exit31.thread ], [ 0, %_ZNK7datalog16product_relation4sizeEv.exit29.preheader ] ; 6 uses
  %i.ai = phi ptr [ %i.am, %_ZNK7datalog16product_relation4sizeEv.exit31.thread ], [ %i.g, %_ZNK7datalog16product_relation4sizeEv.exit29.preheader ]
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !152
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv69100
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !154 ; 2 uses
  %.sroa.2.0.insert.shift.i37 = shl nuw i64 %indvars.iv69100, 32
  br label %_ZNK7datalog16product_relation4sizeEv.exit31

_ZNK7datalog16product_relation4sizeEv.exit31:     ; preds = %_ZNK7datalog16product_relation4sizeEv.exit31.lr.ph, %bb.s
  %indvars.iv71 = phi i64 [ %indvars.iv69100, %_ZNK7datalog16product_relation4sizeEv.exit31.lr.ph ], [ %indvars.iv.next72, %bb.s ]
  %i.am = phi ptr [ %i.ai, %_ZNK7datalog16product_relation4sizeEv.exit31.lr.ph ], [ %i.cp, %bb.s ] ; 4 uses
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 6 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !58
  %i.ap = zext i32 %i.ao to i64
  %i.aq = icmp samesign ult i64 %indvars.iv.next72, %i.ap
  br i1 %i.aq, label %bb.g, label %_ZNK7datalog16product_relation4sizeEv.exit31.thread

_ZNK7datalog16product_relation4sizeEv.exit31.thread: ; preds = %_ZNK7datalog16product_relation4sizeEv.exit31
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69100, 1 ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !58
  %i.at = zext i32 %i.as to i64
  %i.au = icmp samesign ult i64 %indvars.iv.next70, %i.at
  br i1 %i.au, label %_ZNK7datalog16product_relation4sizeEv.exit31.lr.ph, label %.critedge61, !llvm.loop !263

bb.g:                                             ; preds = %_ZNK7datalog16product_relation4sizeEv.exit31
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !152
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next72
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !154 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.next72
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !105
  %i.ba = load ptr, ptr %i.al, align 8, !tbaa !40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = invoke noundef zeroext i1 %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull align 8 dereferenceable(28) %i.az)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  br i1 %i.bd, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %.sroa.2.0.insert.shift.i = shl nuw i64 %indvars.iv.next72, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %indvars.iv69100
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !157 ; 4 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 -4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !58 ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.be, i64 -8
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !58
  %i.bk = icmp eq i32 %i.bh, %i.bj
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  invoke void @_ZN6vectorISt4pairIjjELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc35:                                         ; preds = %bb.k
  %.pre.i32 = load ptr, ptr %i.b, align 8, !tbaa !157 ; 2 uses
  %.phi.trans.insert.i33 = getelementptr inbounds i8, ptr %.pre.i32, i64 -4
  %.pre2.i34 = load i32, ptr %.phi.trans.insert.i33, align 4, !tbaa !58
  br label %bb.l

bb.l:                                             ; preds = %.noexc35, %bb.j
  %i.bl = phi i32 [ %.pre2.i34, %.noexc35 ], [ %i.bh, %bb.j ]
  %i.bm = phi ptr [ %.pre.i32, %.noexc35 ], [ %i.be, %bb.j ]
  %i.bn = zext i32 %i.bl to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bn
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bo, align 4
  %i.bp = load ptr, ptr %i.b, align 8, !tbaa !157
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -4 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !58
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !58
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.l
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !103
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv69100
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !105
  %i.bw = load ptr, ptr %i.ax, align 8, !tbaa !40
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = invoke noundef zeroext i1 %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull align 8 dereferenceable(28) %i.bv)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  br i1 %i.bz, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %.sroa.0.0.insert.insert.i39 = or disjoint i64 %.sroa.2.0.insert.shift.i37, %indvars.iv.next72
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !157 ; 4 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = getelementptr inbounds i8, ptr %i.ca, i64 -4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !58 ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %i.ca, i64 -8
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !58
  %i.cg = icmp eq i32 %i.cd, %i.cf
  br i1 %i.cg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  invoke void @_ZN6vectorISt4pairIjjELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc43:                                         ; preds = %bb.q
  %.pre.i40 = load ptr, ptr %i.b, align 8, !tbaa !157 ; 2 uses
  %.phi.trans.insert.i41 = getelementptr inbounds i8, ptr %.pre.i40, i64 -4
  %.pre2.i42 = load i32, ptr %.phi.trans.insert.i41, align 4, !tbaa !58
  br label %bb.r

bb.r:                                             ; preds = %.noexc43, %bb.p
  %i.ch = phi i32 [ %.pre2.i42, %.noexc43 ], [ %i.cd, %bb.p ]
  %i.ci = phi ptr [ %.pre.i40, %.noexc43 ], [ %i.ca, %bb.p ]
  %i.cj = zext i32 %i.ch to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cj
  store i64 %.sroa.0.0.insert.insert.i39, ptr %i.ck, align 4
  %i.cl = load ptr, ptr %i.b, align 8, !tbaa !157
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -4 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !58
  %i.co = add i32 %i.cn, 1
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !58
  br label %bb.s

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.k, %bb.m, %bb.g, %bb.q, %bb.b, %bb.e
  %lpad.loopexit.split-lp101 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6vectorISt4pairIjjELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #23
  tail call void @_ZN6vectorIPN7datalog17tr_infrastructureINS0_15relation_traitsEE10mutator_fnELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #23
  resume { ptr, i32 } %lpad.loopexit.split-lp101

bb.s:                                             ; preds = %bb.r, %bb.n
  %i.cp = load ptr, ptr %i.c, align 8, !tbaa !103 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %.critedge61, label %_ZNK7datalog16product_relation4sizeEv.exit31, !llvm.loop !264
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7datalog16product_relationC2ERNS_23product_relation_pluginERKNS_18relation_signatureE(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 29), (32, 48)) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN7datalog17tr_infrastructureINS_15relation_traitsEE13base_ancestorE, i64 16), ptr %0, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !128
  %i.c = load ptr, ptr %2, align 8, !tbaa !128    ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7datalog13relation_baseC2ERNS_15relation_pluginERKNS_18relation_signatureE.exit, label %_ZNK6vectorIP4sortLb0EjE8capacityEv.exit.i.i.i.i.i.i.i

_ZNK6vectorIP4sortLb0EjE8capacityEv.exit.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %i.e = load <2 x i32>, ptr %i.d, align 4, !tbaa !58
  %i.f = load i32, ptr %i.d, align 4, !tbaa !58
  %i.g = zext i32 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 3
  %i.i = add nuw nsw i64 %i.h, 8
  %i.j = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.i) ; 2 uses
  store <2 x i32> %i.e, ptr %i.j, align 4, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store ptr %i.k, ptr %i.b, align 8, !tbaa !128
  %i.l = load ptr, ptr %2, align 8, !tbaa !128    ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN7datalog13relation_baseC2ERNS_15relation_pluginERKNS_18relation_signatureE.exit, label %_ZNK6vectorIP4sortLb0EjE3endEv.exit.i.i.i.i.i.i.i

_ZNK6vectorIP4sortLb0EjE3endEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNK6vectorIP4sortLb0EjE8capacityEv.exit.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !58   ; 3 uses
  %i.p = icmp ugt i32 %i.o, 1
  br i1 %i.p, label %bb.b, label %bb.c, !prof !116

bb.b:                                             ; preds = %_ZNK6vectorIP4sortLb0EjE3endEv.exit.i.i.i.i.i.i.i
  %i.q = zext i32 %i.o to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 8 %i.l, i64 %i.r, i1 false)
  br label %_ZN7datalog13relation_baseC2ERNS_15relation_pluginERKNS_18relation_signatureE.exit

bb.c:                                             ; preds = %_ZNK6vectorIP4sortLb0EjE3endEv.exit.i.i.i.i.i.i.i
  %i.s = icmp eq i32 %i.o, 1
  br i1 %i.s, label %bb.d, label %_ZN7datalog13relation_baseC2ERNS_15relation_pluginERKNS_18relation_signatureE.exit

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !132
  store ptr %i.t, ptr %i.k, align 8, !tbaa !132
  br label %_ZN7datalog13relation_baseC2ERNS_15relation_pluginERKNS_18relation_signatureE.exit

_ZN7datalog13relation_baseC2ERNS_15relation_pluginERKNS_18relation_signatureE.exit: ; preds = %bb.a, %_ZNK6vectorIP4sortLb0EjE8capacityEv.exit.i.i.i.i.i.i.i, %bb.b, %bb.c, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !33
  store i32 %i.w, ptr %i.u, align 8, !tbaa !106
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN7datalog16product_relationE, i64 16), ptr %0, align 8, !tbaa !40
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.x, align 4, !tbaa !122
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  invoke void @_ZN7datalog16product_relation19ensure_correct_kindEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN7datalog13relation_baseC2ERNS_15relation_pluginERKNS_18relation_signatureE.exit
  ret void

bb.f:                                             ; preds = %_ZN7datalog13relation_baseC2ERNS_15relation_pluginERKNS_18relation_signatureE.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN6vectorIiLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23
  tail call void @_ZN6vectorIPN7datalog13relation_baseELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #23
  tail call void @_ZN7datalog17tr_infrastructureINS_15relation_traitsEE13base_ancestorD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %0) #23
  resume { ptr, i32 } %i.z
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7datalog16product_relation19ensure_correct_kindEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK6vectorIPN7datalog13relation_baseELb0EjE4sizeEv.exit.thread, label %_ZNK6vectorIPN7datalog13relation_baseELb0EjE4sizeEv.exit

_ZNK6vectorIPN7datalog13relation_baseELb0EjE4sizeEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !58   ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45   ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZNK6vectorIiLb0EjE4sizeEv.exit.i, label %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread

_ZNK6vectorIPN7datalog13relation_baseELb0EjE4sizeEv.exit.thread: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45   ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %._crit_edge.thread, label %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i.thread

_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i.thread:  ; preds = %_ZNK6vectorIPN7datalog13relation_baseELb0EjE4sizeEv.exit.thread
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  br label %bb.b

_ZNK6vectorIiLb0EjE4sizeEv.exit.thread:           ; preds = %_ZNK6vectorIPN7datalog13relation_baseELb0EjE4sizeEv.exit
  %i.m = getelementptr inbounds i8, ptr %i.g, i64 -4 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !58   ; 3 uses
  %i.o = icmp ne i32 %i.e, %i.n
  %i.p = icmp eq i32 %i.e, 0
  %i.q = or i1 %i.p, %i.o
  br i1 %i.q, label %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i, label %.lr.ph

_ZNK6vectorIiLb0EjE4sizeEv.exit.i:                ; preds = %_ZNK6vectorIPN7datalog13relation_baseELb0EjE4sizeEv.exit
  %i.r = icmp eq i32 %i.e, 0
  br i1 %i.r, label %._crit_edge.thread, label %thread-pre-split.i.preheader

_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i:         ; preds = %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread
  %.not15.i = icmp ugt i32 %i.e, %i.n
  br i1 %.not15.i, label %thread-pre-split.i.preheader, label %bb.b

thread-pre-split.i.preheader:                     ; preds = %_ZNK6vectorIiLb0EjE4sizeEv.exit.i, %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i
  %.ph = phi ptr [ %i.g, %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i ], [ null, %_ZNK6vectorIiLb0EjE4sizeEv.exit.i ]
  %.0.i16.i.ph = phi i32 [ %i.n, %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i ], [ 0, %_ZNK6vectorIiLb0EjE4sizeEv.exit.i ] ; 2 uses
  br label %thread-pre-split.i

bb.b:                                             ; preds = %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i.thread, %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i
  %i.s = phi ptr [ %i.j, %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i.thread ], [ %i.g, %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i ]
  %i.t = phi ptr [ %i.l, %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i.thread ], [ %i.m, %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i ]
  %i.u = phi ptr [ %i.i, %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i.thread ], [ %i.f, %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i ]
  %.0.i212528 = phi i32 [ 0, %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i.thread ], [ %i.e, %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i ] ; 2 uses
  store i32 %.0.i212528, ptr %i.t, align 4, !tbaa !58
  br label %_ZN6vectorIiLb0EjE6resizeEj.exit

thread-pre-split.i:                               ; preds = %thread-pre-split.i.preheader, %_ZNK6vectorIiLb0EjE8capacityEv.exit.thread.i
  %i.v = phi ptr [ %.pr.pre.i, %_ZNK6vectorIiLb0EjE8capacityEv.exit.thread.i ], [ %.ph, %thread-pre-split.i.preheader ] ; 6 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZNK6vectorIiLb0EjE8capacityEv.exit.thread.i, label %_ZNK6vectorIiLb0EjE8capacityEv.exit.i

_ZNK6vectorIiLb0EjE8capacityEv.exit.i:            ; preds = %thread-pre-split.i
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !58
  %i.z = icmp ugt i32 %i.e, %i.y
  br i1 %i.z, label %_ZNK6vectorIiLb0EjE8capacityEv.exit.thread.i, label %bb.c

_ZNK6vectorIiLb0EjE8capacityEv.exit.thread.i:     ; preds = %_ZNK6vectorIiLb0EjE8capacityEv.exit.i, %thread-pre-split.i
  tail call void @_ZN6vectorIiLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %.pr.pre.i = load ptr, ptr %i.f, align 8, !tbaa !45
  br label %thread-pre-split.i, !llvm.loop !265

bb.c:                                             ; preds = %_ZNK6vectorIiLb0EjE8capacityEv.exit.i
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 -4
  store i32 %i.e, ptr %i.aa, align 4, !tbaa !58
  %.not1218.i = icmp eq i32 %.0.i16.i.ph, %i.e
  br i1 %.not1218.i, label %_ZN6vectorIiLb0EjE6resizeEj.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.ab = zext i32 %i.e to i64
  %i.ac = zext i32 %.0.i16.i.ph to i64            ; 2 uses
  %i.ad = getelementptr [4 x i8], ptr %i.v, i64 %i.ac
  %i.ae = sub nsw i64 %i.ab, %i.ac
  %i.af = shl nsw i64 %i.ae, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ad, i8 0, i64 %i.af, i1 false), !tbaa !58
  br label %_ZN6vectorIiLb0EjE6resizeEj.exit

_ZN6vectorIiLb0EjE6resizeEj.exit:                 ; preds = %.lr.ph.preheader.i, %bb.c, %bb.b
  %i.ag = phi ptr [ %i.s, %bb.b ], [ %i.v, %.lr.ph.preheader.i ], [ %i.v, %bb.c ]
  %i.ah = phi ptr [ %i.u, %bb.b ], [ %i.f, %.lr.ph.preheader.i ], [ %i.f, %bb.c ] ; 2 uses
  %.0.i18 = phi i32 [ %.0.i212528, %bb.b ], [ %i.e, %.lr.ph.preheader.i ], [ %i.e, %bb.c ] ; 2 uses
  %.not = icmp eq i32 %.0.i18, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread, %_ZN6vectorIiLb0EjE6resizeEj.exit
  %i.ai = phi i1 [ true, %_ZN6vectorIiLb0EjE6resizeEj.exit ], [ false, %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread ] ; 2 uses
  %.0.i1842 = phi i32 [ %.0.i18, %_ZN6vectorIiLb0EjE6resizeEj.exit ], [ %i.e, %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread ] ; 3 uses
  %i.aj = phi ptr [ %i.ah, %_ZN6vectorIiLb0EjE6resizeEj.exit ], [ %i.f, %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread ]
  %i.ak = phi ptr [ %i.ag, %_ZN6vectorIiLb0EjE6resizeEj.exit ], [ %i.g, %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread ] ; 3 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !103 ; 3 uses
  %wide.trip.count = zext i32 %.0.i1842 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.am = icmp eq i32 %.0.i1842, 1
  br i1 %i.am, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.d

._crit_edge.unr-lcssa:                            ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.014.in29.epil.init = phi i1 [ %i.ai, %.lr.ph ], [ %i.bk, %._crit_edge.unr-lcssa ]
  %lcmp.mod47 = trunc i32 %.0.i1842 to i1
  tail call void @llvm.assume(i1 %lcmp.mod47)
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.epil.init
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !105
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !106 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.epil.init ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !58
  %i.at = icmp ne i32 %i.as, %i.aq
  %i.au = or i1 %.014.in29.epil.init, %i.at
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !58
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.lcssa = phi i1 [ %i.bk, %._crit_edge.unr-lcssa ], [ %i.au, %.epil.preheader ]
  br i1 %.lcssa, label %._crit_edge.thread, label %bb.f

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.d ] ; 4 uses
  %.014.in29 = phi i1 [ %i.ai, %.lr.ph.new ], [ %i.bk, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.d ]
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !105
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !106 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !58
  %i.bb = icmp ne i32 %i.ba, %i.ay
  %i.bc = or i1 %.014.in29, %i.bb
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !58
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !105
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !106 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !58
  %i.bj = icmp ne i32 %i.bi, %i.bg
  %i.bk = or i1 %i.bc, %i.bj                      ; 3 uses
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !58
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.d, !llvm.loop !266

._crit_edge.thread:                               ; preds = %_ZNK6vectorIPN7datalog13relation_baseELb0EjE4sizeEv.exit.thread, %_ZNK6vectorIiLb0EjE4sizeEv.exit.i, %_ZN6vectorIiLb0EjE6resizeEj.exit, %._crit_edge
  %i.bl = phi ptr [ %i.aj, %._crit_edge ], [ %i.ah, %_ZN6vectorIiLb0EjE6resizeEj.exit ], [ %i.i, %_ZNK6vectorIPN7datalog13relation_baseELb0EjE4sizeEv.exit.thread ], [ %i.f, %_ZNK6vectorIiLb0EjE4sizeEv.exit.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !99, !nonnull !95, !align !96
  %i.bo = tail call ptr @__dynamic_cast(ptr nonnull %i.bn, ptr nonnull @_ZTIN7datalog15relation_pluginE, ptr nonnull @_ZTIN7datalog23product_relation_pluginE, i64 0) #23 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.e, label %_ZNK7datalog16product_relation10get_pluginEv.exit

bb.e:                                             ; preds = %._crit_edge.thread
  tail call void @__cxa_bad_cast() #24
  unreachable

_ZNK7datalog16product_relation10get_pluginEv.exit: ; preds = %._crit_edge.thread
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.bs = tail call noundef i32 @_ZN7datalog14rel_spec_storeINS_8rel_specE12svector_hashINS_23product_relation_plugin8fid_hashEENS_14vector_eq_procIS1_EEE17get_relation_kindERKNS_18relation_signatureERKS1_(ptr noundef nonnull align 8 dereferenceable(64) %i.br, ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull align 8 dereferenceable(8) %i.bl)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.bs, ptr %i.bt, align 8, !tbaa !106
  br label %bb.f

bb.f:                                             ; preds = %_ZNK7datalog16product_relation10get_pluginEv.exit, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7datalog17tr_infrastructureINS_15relation_traitsEE13base_ancestorD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN7datalog17tr_infrastructureINS_15relation_traitsEE13base_ancestorE, i64 16), ptr %0, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN6vectorIP4sortLb0EjED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
