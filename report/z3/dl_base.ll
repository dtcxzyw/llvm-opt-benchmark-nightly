inline.NumInlined: 722
inline.NumDeleted: 344
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7datalog15table_signature17from_join_projectERKS0_S2_jPKjS4_jS4_RS0_:bb.a
  %i.f = load i32, ptr %i.e, align 8, !tbaa !333
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7datalog17tr_infrastructureINS_12table_traitsEE14signature_base12from_projectERKNS_15table_signatureEjPKjRS4_(ptr noundef nonnull align 8 dereferenceable(12) %8, i32 noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(12) %7)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  %i.h = load i32, ptr %i.a, align 8, !tbaa !333  ; 3 uses
  %i.i = icmp eq ptr %6, null
  br i1 %i.i, label %_ZN7datalog15table_signature12from_projectERKS0_jPKjRS0_.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.j = load ptr, ptr %8, align 8, !tbaa !332    ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK7datalog15table_signature16first_functionalEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !15
  br label %_ZNK7datalog15table_signature16first_functionalEv.exit.i

_ZNK7datalog15table_signature16first_functionalEv.exit.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.m, %bb.f ], [ 0, %bb.e ]
  %i.n = sub i32 %.0.i.i.i, %i.h
  %i.o = load i32, ptr %6, align 4, !tbaa !15
  %i.p = icmp ult i32 %i.o, %i.n
  %i.q = sub i32 %i.h, %5
  %spec.select.i = select i1 %i.p, i32 0, i32 %i.q
  br label %_ZN7datalog15table_signature12from_projectERKS0_jPKjRS0_.exit

_ZN7datalog15table_signature12from_projectERKS0_jPKjRS0_.exit: ; preds = %.noexc, %_ZNK7datalog15table_signature16first_functionalEv.exit.i
  %.sink.i = phi i32 [ %i.h, %.noexc ], [ %spec.select.i, %_ZNK7datalog15table_signature16first_functionalEv.exit.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.sink.i, ptr %i.r, align 8, !tbaa !333
  br label %bb.ax

bb.g:                                             ; preds = %bb.d, %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.t = load ptr, ptr %0, align 8, !tbaa !332    ; 3 uses
  %i.u = icmp eq ptr %i.t, null                   ; 2 uses
  br i1 %i.u, label %_ZNK6vectorImLb0EjE4sizeEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !15
  br label %_ZNK6vectorImLb0EjE4sizeEv.exit

_ZNK6vectorImLb0EjE4sizeEv.exit:                  ; preds = %bb.h, %bb.i
  %.0.i = phi i32 [ %i.w, %bb.i ], [ 0, %bb.h ]
  %i.x = load ptr, ptr %1, align 8, !tbaa !332    ; 3 uses
  %i.y = icmp eq ptr %i.x, null                   ; 2 uses
  br i1 %i.y, label %_ZNK6vectorImLb0EjE4sizeEv.exit105, label %bb.j

bb.j:                                             ; preds = %_ZNK6vectorImLb0EjE4sizeEv.exit
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !15
  br label %_ZNK6vectorImLb0EjE4sizeEv.exit105

_ZNK6vectorImLb0EjE4sizeEv.exit105:               ; preds = %_ZNK6vectorImLb0EjE4sizeEv.exit, %bb.j
  %.0.i104 = phi i32 [ %i.aa, %bb.j ], [ 0, %_ZNK6vectorImLb0EjE4sizeEv.exit ]
  %i.ab = add i32 %.0.i104, %.0.i                 ; 5 uses
  br i1 %i.u, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK6vectorImLb0EjE4sizeEv.exit105
  %i.ac = getelementptr inbounds i8, ptr %i.t, i64 -4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !15
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNK6vectorImLb0EjE4sizeEv.exit105
  %.0.i.i = phi i32 [ %i.ad, %bb.k ], [ 0, %_ZNK6vectorImLb0EjE4sizeEv.exit105 ] ; 3 uses
  %i.ae = sub i32 %.0.i.i, %i.c                   ; 3 uses
  br i1 %i.y, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds i8, ptr %i.x, i64 -4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !15
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i:                ; preds = %bb.l, %bb.m
  %.0.i.i106 = phi i32 [ %i.ag, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !333 ; 2 uses
  %i.aj = sub i32 %.0.i.i106, %i.ai               ; 4 uses
  %i.ak = add i32 %i.aj, %i.ae                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr null, ptr %9, align 8, !tbaa !23
  %.not.not.i = icmp eq i32 %i.ab, 0              ; 2 uses
  br i1 %.not.not.i, label %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit, label %.preheader137

thread-pre-split.i:                               ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i
  %.pr.pre.i = load ptr, ptr %9, align 8, !tbaa !23
  br label %.preheader137

.preheader137:                                    ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, %thread-pre-split.i
  %i.al = phi ptr [ %.pr.pre.i, %thread-pre-split.i ], [ null, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ] ; 4 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i

_ZNK6vectorIjLb0EjE8capacityEv.exit.i:            ; preds = %.preheader137
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !15
  %i.ap = icmp ugt i32 %i.ab, %i.ao
  br i1 %i.ap, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i, label %.lr.ph.preheader.i

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i:     ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i, %.preheader137
  invoke void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %thread-pre-split.i unwind label %bb.o

.lr.ph.preheader.i:                               ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i
  %i.aq = getelementptr inbounds i8, ptr %i.al, i64 -4
  store i32 %i.ab, ptr %i.aq, align 4, !tbaa !15
  %i.ar = zext i32 %i.ab to i64
  %i.as = shl nuw nsw i64 %i.ar, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.al, i8 0, i64 %i.as, i1 false), !tbaa !15
  br label %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit

_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit:         ; preds = %.lr.ph.preheader.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, i8 0, i64 16, i1 false)
  invoke void @_ZN6regionC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.at)
          to label %_ZN22union_find_default_ctxC2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @_ZN6vectorIjLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.av) #22
  call void @_ZN6vectorIP5trailLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(56) %10) #22
  br label %.body

_ZN22union_find_default_ctxC2Ev.exit:             ; preds = %_ZN6vectorIjLb0EjE6resizeIiEEvjRKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store ptr %10, ptr %11, align 8, !tbaa !345
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr %10, ptr %i.aw, align 8, !tbaa !347
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10union_findI22union_find_default_ctxE12mk_var_trailE, i64 16), ptr %i.ay, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 48
  store ptr %11, ptr %i.az, align 8, !tbaa !349
  br i1 %.not.not.i, label %.preheader136, label %.lr.ph

.preheader136:                                    ; preds = %bb.t, %_ZN22union_find_default_ctxC2Ev.exit
  %.not151 = icmp eq i32 %2, 0
  br i1 %.not151, label %.preheader135, label %.lr.ph145

.lr.ph145:                                        ; preds = %.preheader136
  %i.ba = sub i32 %.0.i.i, %i.aj
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 32
  %wide.trip.count = zext i32 %2 to i64
  br label %bb.u

bb.o:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.lr.ph:                                           ; preds = %_ZN22union_find_default_ctxC2Ev.exit, %bb.t
  %.087143 = phi i32 [ %i.bh, %bb.t ], [ 0, %_ZN22union_find_default_ctxC2Ev.exit ] ; 2 uses
  %i.be = invoke noundef i32 @_ZN10union_findI22union_find_default_ctxE6mk_varEv(ptr noundef nonnull align 8 dereferenceable(56) %11)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %.lr.ph
  %i.bf = icmp eq i32 %i.be, %.087143
  br i1 %i.bf, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.4, i32 noundef 189, ptr noundef nonnull @.str.5)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.lr.ph
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.t:                                             ; preds = %bb.p, %bb.r
  %i.bh = add nuw i32 %.087143, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.bh, %i.ab
  br i1 %exitcond.not, label %.preheader136, label %.lr.ph, !llvm.loop !351

.preheader135:                                    ; preds = %_ZN10union_findI22union_find_default_ctxE5mergeEjj.exit, %.preheader136
  %.not152 = icmp eq i32 %i.ak, 0
  br i1 %.not152, label %.preheader, label %.lr.ph147

.lr.ph147:                                        ; preds = %.preheader135
  %i.bi = load ptr, ptr %i.ax, align 8, !tbaa !23 ; 3 uses
  %i.bj = load ptr, ptr %9, align 8, !tbaa !23    ; 3 uses
  %i.bk = add i32 %.0.i.i106, %.0.i.i
  %i.bl = xor i32 %i.ai, -1
  %i.bm = add i32 %i.bk, %i.bl
  %xtraiter = and i32 %i.ak, 1
  %i.bn = icmp eq i32 %i.bm, %i.c
  br i1 %i.bn, label %.epil.preheader, label %.lr.ph147.new

.lr.ph147.new:                                    ; preds = %.lr.ph147
  %unroll_iter = and i32 %i.ak, -2
  br label %bb.aa

bb.u:                                             ; preds = %.lr.ph145, %_ZN10union_findI22union_find_default_ctxE5mergeEjj.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next, %_ZN10union_findI22union_find_default_ctxE5mergeEjj.exit ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !15 ; 2 uses
  %i.bq = icmp ugt i32 %i.ae, %i.bp
  %i.br = select i1 %i.bq, i32 0, i32 %i.aj
  %i.bs = add i32 %i.bp, %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !15 ; 2 uses
  %i.bv = load ptr, ptr %i.ax, align 8, !tbaa !23 ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %bb.u
  %.08.i.i = phi i32 [ %i.bs, %bb.u ], [ %i.by, %bb.v ] ; 5 uses
  %i.bw = zext i32 %.08.i.i to i64                ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !15 ; 2 uses
  %.not.i.i = icmp eq i32 %i.by, %.08.i.i
  br i1 %.not.i.i, label %_ZNK10union_findI22union_find_default_ctxE4findEj.exit.i.preheader, label %bb.v

_ZNK10union_findI22union_find_default_ctxE4findEj.exit.i.preheader: ; preds = %bb.v
  %i.bz = icmp ugt i32 %i.aj, %i.bu
  %.v = select i1 %i.bz, i32 %i.ae, i32 %i.ba
  %i.ca = add i32 %i.bu, %.v
  br label %_ZNK10union_findI22union_find_default_ctxE4findEj.exit.i

_ZNK10union_findI22union_find_default_ctxE4findEj.exit.i: ; preds = %_ZNK10union_findI22union_find_default_ctxE4findEj.exit.i.preheader, %_ZNK10union_findI22union_find_default_ctxE4findEj.exit.i
  %.08.i2.i = phi i32 [ %i.cd, %_ZNK10union_findI22union_find_default_ctxE4findEj.exit.i ], [ %i.ca, %_ZNK10union_findI22union_find_default_ctxE4findEj.exit.i.preheader ] ; 5 uses
  %i.cb = zext i32 %.08.i2.i to i64               ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !15 ; 2 uses
  %.not.i3.i = icmp eq i32 %i.cd, %.08.i2.i
  br i1 %.not.i3.i, label %_ZNK10union_findI22union_find_default_ctxE4findEj.exit4.i, label %_ZNK10union_findI22union_find_default_ctxE4findEj.exit.i

_ZNK10union_findI22union_find_default_ctxE4findEj.exit4.i: ; preds = %_ZNK10union_findI22union_find_default_ctxE4findEj.exit.i
  %i.ce = icmp eq i32 %.08.i.i, %.08.i2.i
  br i1 %i.ce, label %_ZN10union_findI22union_find_default_ctxE5mergeEjj.exit, label %.noexc.i

.noexc.i:                                         ; preds = %_ZNK10union_findI22union_find_default_ctxE4findEj.exit4.i
  %i.cf = load ptr, ptr %i.bb, align 8, !tbaa !23 ; 4 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.bw
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !15
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.cb
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !15
  %i.ck = icmp ugt i32 %i.ch, %i.cj               ; 2 uses
  %spec.select.i109 = select i1 %i.ck, i32 %.08.i.i, i32 %.08.i2.i ; 2 uses
  %spec.select30.i = select i1 %i.ck, i32 %.08.i2.i, i32 %.08.i.i ; 2 uses
  %i.cl = zext i32 %spec.select30.i to i64        ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.cl
  store i32 %spec.select.i109, ptr %i.cm, align 4, !tbaa !15
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.cl
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !15
  %i.cp = zext i32 %spec.select.i109 to i64       ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.cp ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !15
  %i.cs = add i32 %i.cr, %i.co
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !15
  %i.ct = load ptr, ptr %i.bc, align 8, !tbaa !23 ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cl ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cp ; 2 uses
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !15
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !15
  store i32 %i.cx, ptr %i.cu, align 4, !tbaa !15
  store i32 %i.cw, ptr %i.cv, align 4, !tbaa !15
  %i.cy = load ptr, ptr %i.aw, align 8, !tbaa !352, !nonnull !21, !align !22 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = invoke noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.cz, i64 noundef 24)
          to label %.noexc110 unwind label %bb.y  ; 4 uses

.noexc110:                                        ; preds = %.noexc.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10union_findI22union_find_default_ctxE11merge_trailE, i64 16), ptr %i.da, align 8, !tbaa !8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr %11, ptr %i.db, align 8
  %.sroa.6.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store i32 %spec.select30.i, ptr %.sroa.6.8..sroa_idx.i, align 8
  %i.dc = load ptr, ptr %i.cy, align 8, !tbaa !356 ; 4 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %.noexc5.i, label %bb.w

bb.w:                                             ; preds = %.noexc110
  %i.de = getelementptr inbounds i8, ptr %i.dc, i64 -4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !15 ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.dc, i64 -8
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !15
  %i.di = icmp eq i32 %i.df, %i.dh
  br i1 %i.di, label %.noexc5.i, label %bb.x

.noexc5.i:                                        ; preds = %bb.w, %.noexc110
  invoke void @_ZN6vectorIP5trailLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(56) %i.cy)
          to label %.noexc111 unwind label %bb.y

.noexc111:                                        ; preds = %.noexc5.i
  %.pre.i.i.i = load ptr, ptr %i.cy, align 8, !tbaa !356 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !15
  br label %bb.x

bb.x:                                             ; preds = %.noexc111, %bb.w
  %i.dj = phi i32 [ %.pre2.i.i.i, %.noexc111 ], [ %i.df, %bb.w ] ; 2 uses
  %i.dk = phi ptr [ %.pre.i.i.i, %.noexc111 ], [ %i.dc, %bb.w ] ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -4
  %i.dm = zext i32 %i.dj to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dm
  store ptr %i.da, ptr %i.dn, align 8, !tbaa !357
  %i.do = add i32 %i.dj, 1
  store i32 %i.do, ptr %i.dl, align 4, !tbaa !15
  br label %_ZN10union_findI22union_find_default_ctxE5mergeEjj.exit

_ZN10union_findI22union_find_default_ctxE5mergeEjj.exit: ; preds = %bb.x, %_ZNK10union_findI22union_find_default_ctxE4findEj.exit4.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond163.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond163.not, label %.preheader135, label %bb.u, !llvm.loop !359

bb.y:                                             ; preds = %.noexc5.i, %.noexc.i
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

.preheader.loopexit.unr-lcssa:                    ; preds = %_ZNK10union_findI22union_find_default_ctxE4findEj.exit.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph147
  %.079146.epil.init = phi i32 [ 0, %.lr.ph147 ], [ %i.el, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod210 = trunc i32 %i.ak to i1
  call void @llvm.assume(i1 %lcmp.mod210)
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.epil.preheader
  %.08.i.epil = phi i32 [ %.079146.epil.init, %.epil.preheader ], [ %i.ds, %bb.z ] ; 2 uses
  %i.dq = zext i32 %.08.i.epil to i64             ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !15 ; 2 uses
  %.not.i.epil = icmp eq i32 %i.ds, %.08.i.epil
  br i1 %.not.i.epil, label %_ZNK10union_findI22union_find_default_ctxE4findEj.exit.epil, label %bb.z

_ZNK10union_findI22union_find_default_ctxE4findEj.exit.epil: ; preds = %bb.z
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.dq ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !15
  %i.dv = add i32 %i.du, 1
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !15
  br label %.preheader

.preheader:                                       ; preds = %_ZNK10union_findI22union_find_default_ctxE4findEj.exit.epil, %.preheader.loopexit.unr-lcssa, %.preheader135
  %.not153 = icmp eq i32 %5, 0
  br i1 %.not153, label %._crit_edge, label %.lr.ph149

.lr.ph149:                                        ; preds = %.preheader
  %i.dw = load ptr, ptr %i.ax, align 8
  %i.dx = load ptr, ptr %9, align 8
  %wide.trip.count167 = zext i32 %5 to i64
  br label %bb.ad

bb.aa:                                            ; preds = %_ZNK10union_findI22union_find_default_ctxE4findEj.exit.1, %.lr.ph147.new
  %.079146 = phi i32 [ 0, %.lr.ph147.new ], [ %i.el, %_ZNK10union_findI22union_find_default_ctxE4findEj.exit.1 ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph147.new ], [ %niter.next.1, %_ZNK10union_findI22union_find_default_ctxE4findEj.exit.1 ]
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %.08.i = phi i32 [ %.079146, %bb.aa ], [ %i.ea, %bb.ab ] ; 2 uses
  %i.dy = zext i32 %.08.i to i64                  ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !15 ; 2 uses
  %.not.i = icmp eq i32 %i.ea, %.08.i
  br i1 %.not.i, label %_ZNK10union_findI22union_find_default_ctxE4findEj.exit, label %bb.ab

_ZNK10union_findI22union_find_default_ctxE4findEj.exit: ; preds = %bb.ab
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.dy ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !15
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !15
  %i.ee = or disjoint i32 %.079146, 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %_ZNK10union_findI22union_find_default_ctxE4findEj.exit
  %.08.i.1 = phi i32 [ %i.ee, %_ZNK10union_findI22union_find_default_ctxE4findEj.exit ], [ %i.eh, %bb.ac ] ; 2 uses
  %i.ef = zext i32 %.08.i.1 to i64                ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !15 ; 2 uses
  %.not.i.1 = icmp eq i32 %i.eh, %.08.i.1
  br i1 %.not.i.1, label %_ZNK10union_findI22union_find_default_ctxE4findEj.exit.1, label %bb.ac

_ZNK10union_findI22union_find_default_ctxE4findEj.exit.1: ; preds = %bb.ac
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.ef ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !15
  %i.ek = add i32 %i.ej, 1
  store i32 %i.ek, ptr %i.ei, align 4, !tbaa !15
  %i.el = add nuw i32 %.079146, 2                 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.loopexit.unr-lcssa, label %bb.aa, !llvm.loop !360

bb.ad:                                            ; preds = %.lr.ph149, %bb.af
  %indvars.iv164 = phi i64 [ 0, %.lr.ph149 ], [ %indvars.iv.next165, %bb.af ] ; 2 uses
end_hunk_0
