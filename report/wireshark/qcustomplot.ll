Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/qcustomplot?download=true
inline.NumInlined: 26883
inline.NumDeleted: 6472
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_ZNK8QCPGraph23getOptimizedScatterDataEP5QListI12QCPGraphDataENS2_14const_iteratorES4_:bb.a
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %5, i64 155, ptr nonnull @__PRETTY_FUNCTION__._ZNK8QCPGraph23getOptimizedScatterDataEP5QListI12QCPGraphDataENS2_14const_iteratorES4_)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %_ZNK8QPointerI7QCPAxisE4dataEv.exit169.thread
  %i.w = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.f unwind label %bb.i       ; 0 uses

bb.f:                                             ; preds = %.noexc
  %i.x = load ptr, ptr %5, align 8                ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %_ZN7QStringD2Ev.exit.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i:    ; preds = %bb.f
  %i.y = atomicrmw sub ptr %i.x, i32 1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.y, 1
  br i1 %.not.i.i.i, label %bb.g, label %_ZN7QStringD2Ev.exit.i

bb.g:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i
  %i.z = load ptr, ptr %5, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.z, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit.i

_ZN7QStringD2Ev.exit.i:                           ; preds = %bb.g, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  %i.aa = load ptr, ptr %6, align 8               ; 3 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 48
  %i.ac = load i8, ptr %i.ab, align 8, !range !175, !noundef !176
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.h, label %_ZN6QDebuglsEPKc.exit

bb.h:                                             ; preds = %_ZN7QStringD2Ev.exit.i
  %i.ae = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.aa, i8 noundef signext 32)
          to label %._ZN6QDebuglsEPKc.exit_crit_edge unwind label %bb.p ; 0 uses

._ZN6QDebuglsEPKc.exit_crit_edge:                 ; preds = %bb.h
  %.pre363 = load ptr, ptr %6, align 8
  br label %_ZN6QDebuglsEPKc.exit

bb.i:                                             ; preds = %.noexc
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %5, align 8               ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i2.i, label %_ZN7QStringD2Ev.exit5.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i:   ; preds = %bb.i
  %i.ah = atomicrmw sub ptr %i.ag, i32 1 acq_rel, align 4
  %.not.i.i4.i = icmp eq i32 %i.ah, 1
  br i1 %.not.i.i4.i, label %bb.j, label %_ZN7QStringD2Ev.exit5.i

bb.j:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i
  %i.ai = load ptr, ptr %5, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ai, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit5.i

_ZN7QStringD2Ev.exit5.i:                          ; preds = %bb.j, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  br label %.body

_ZN6QDebuglsEPKc.exit:                            ; preds = %._ZN6QDebuglsEPKc.exit_crit_edge, %_ZN7QStringD2Ev.exit.i
  %i.aj = phi ptr [ %.pre363, %._ZN6QDebuglsEPKc.exit_crit_edge ], [ %i.aa, %_ZN7QStringD2Ev.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #51
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %4, i64 25, ptr nonnull @.str.85)
          to label %.noexc179 unwind label %bb.p

.noexc179:                                        ; preds = %_ZN6QDebuglsEPKc.exit
  %i.ak = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.k unwind label %bb.n       ; 0 uses

bb.k:                                             ; preds = %.noexc179
  %i.al = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i.i175 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i175, label %_ZN7QStringD2Ev.exit.i178, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i176

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i176: ; preds = %bb.k
  %i.am = atomicrmw sub ptr %i.al, i32 1 acq_rel, align 4
  %.not.i.i.i177 = icmp eq i32 %i.am, 1
  br i1 %.not.i.i.i177, label %bb.l, label %_ZN7QStringD2Ev.exit.i178

bb.l:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i176
  %i.an = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.an, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit.i178

_ZN7QStringD2Ev.exit.i178:                        ; preds = %bb.l, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i176, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  %i.ao = load ptr, ptr %6, align 8               ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 48
  %i.aq = load i8, ptr %i.ap, align 8, !range !175, !noundef !176
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.m, label %_ZN6QDebuglsEPKc.exit183

bb.m:                                             ; preds = %_ZN7QStringD2Ev.exit.i178
  %i.as = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.ao, i8 noundef signext 32)
          to label %_ZN6QDebuglsEPKc.exit183 unwind label %bb.p ; 0 uses

bb.n:                                             ; preds = %.noexc179
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i2.i171 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i2.i171, label %_ZN7QStringD2Ev.exit5.i174, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i172

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i172: ; preds = %bb.n
  %i.av = atomicrmw sub ptr %i.au, i32 1 acq_rel, align 4
  %.not.i.i4.i173 = icmp eq i32 %i.av, 1
  br i1 %.not.i.i4.i173, label %bb.o, label %_ZN7QStringD2Ev.exit5.i174

bb.o:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i172
  %i.aw = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.aw, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit5.i174

_ZN7QStringD2Ev.exit5.i174:                       ; preds = %bb.o, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i172, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  br label %.body

_ZN6QDebuglsEPKc.exit183:                         ; preds = %_ZN7QStringD2Ev.exit.i178, %bb.m
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %6) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  br label %.loopexit

bb.p:                                             ; preds = %bb.m, %_ZN6QDebuglsEPKc.exit, %bb.h, %_ZNK8QPointerI7QCPAxisE4dataEv.exit169.thread
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %_ZN7QStringD2Ev.exit5.i174, %_ZN7QStringD2Ev.exit5.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %_ZN7QStringD2Ev.exit5.i ], [ %i.ax, %bb.p ], [ %i.at, %_ZN7QStringD2Ev.exit5.i174 ]
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %6) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  resume { ptr, i32 } %eh.lpad-body

bb.q:                                             ; preds = %_ZNK8QPointerI7QCPAxisE4dataEv.exit169
  %i.ay = getelementptr i8, ptr %0, i64 288
  %i.az = load i32, ptr %i.ay, align 8
  %.fr358 = freeze i32 %i.az                      ; 2 uses
  %i.ba = add i32 %.fr358, 1                      ; 9 uses
  %i.bb = icmp sgt i32 %.fr358, 0                 ; 6 uses
  %i.bc = getelementptr i8, ptr %0, i64 192       ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr i8, ptr %i.bd, i64 32
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr [16 x i8], ptr %i.bf, i64 %i.bi
  %i.bk = ptrtoint ptr %2 to i64
  %i.bl = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = lshr exact i64 %i.bm, 4
  %i.bo = trunc i64 %i.bn to i32                  ; 2 uses
  %i.bp = ptrtoint ptr %3 to i64                  ; 2 uses
  %i.bq = sub i64 %i.bp, %i.bl
  %i.br = lshr exact i64 %i.bq, 4
  %i.bs = trunc i64 %i.br to i32                  ; 5 uses
  %i.bt = icmp ne ptr %2, %3
  %or.cond283301 = select i1 %i.bb, i1 %i.bt, i1 false
  br i1 %or.cond283301, label %.lr.ph.split, label %.critedge

.lr.ph.split:                                     ; preds = %bb.q, %bb.r
  %.0137303 = phi i32 [ %i.bv, %bb.r ], [ %i.bo, %bb.q ] ; 3 uses
  %.sroa.0275.0302 = phi ptr [ %i.bw, %bb.r ], [ %2, %bb.q ] ; 2 uses
  %i.bu = srem i32 %.0137303, %i.ba
  %.not165 = icmp eq i32 %i.bu, 0
  br i1 %.not165, label %.critedge, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split
  %i.bv = add i32 %.0137303, 1                    ; 2 uses
  %i.bw = getelementptr i8, ptr %.sroa.0275.0302, i64 16 ; 3 uses
  %.not359 = icmp eq ptr %i.bw, %3
  br i1 %.not359, label %.critedge, label %.lr.ph.split, !llvm.loop !1155

.critedge:                                        ; preds = %.lr.ph.split, %bb.r, %bb.q
  %.sroa.0275.0.lcssa = phi ptr [ %2, %bb.q ], [ %i.bw, %bb.r ], [ %.sroa.0275.0302, %.lr.ph.split ] ; 14 uses
  %.0137.lcssa = phi i32 [ %i.bo, %bb.q ], [ %i.bv, %bb.r ], [ %.0137303, %.lr.ph.split ] ; 3 uses
  %i.bx = icmp eq ptr %.sroa.0275.0.lcssa, %3
  br i1 %i.bx, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %.critedge
  %i.by = ptrtoint ptr %.sroa.0275.0.lcssa to i64
  %i.bz = sub i64 %i.bp, %i.by                    ; 2 uses
  %i.ca = getelementptr i8, ptr %0, i64 312       ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8, !range !175, !noundef !176
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.t, label %.lr.ph314

bb.t:                                             ; preds = %bb.s
  %i.cd = lshr exact i64 %i.bz, 4
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = load double, ptr %.sroa.0275.0.lcssa, align 8
  %i.cg = tail call noundef double @_ZNK7QCPAxis12coordToPixelEd(ptr noundef nonnull align 8 dereferenceable_or_null(472) %i.i, double noundef %i.cf)
  %i.ch = getelementptr i8, ptr %3, i64 -16
  %i.ci = load double, ptr %i.ch, align 8
  %i.cj = tail call noundef double @_ZNK7QCPAxis12coordToPixelEd(ptr noundef nonnull align 8 dereferenceable_or_null(472) %i.i, double noundef %i.ci)
  %i.ck = fsub double %i.cg, %i.cj
  %i.cl = tail call double @llvm.fabs.f64(double %i.ck)
  %i.cm = fptosi double %i.cl to i32
  %i.cn = shl i32 %i.cm, 1
  %i.co = add i32 %i.cn, 2
  %.pre = load i8, ptr %i.ca, align 8, !range !175
  %i.cp = trunc nuw i8 %.pre to i1
  %.not166 = icmp sle i32 %i.co, %i.ce
  %or.cond168.not = select i1 %i.cp, i1 %.not166, i1 false
  br i1 %or.cond168.not, label %bb.u, label %.lr.ph314

bb.u:                                             ; preds = %bb.t
  %i.cq = getelementptr i8, ptr %i.q, i64 304
  %.sroa.0.0.copyload.i = load double, ptr %i.cq, align 8 ; 6 uses
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.q, i64 312
  %.sroa.2.0.copyload.i = load double, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 6 uses
  %i.cr = getelementptr i8, ptr %.sroa.0275.0.lcssa, i64 8
  %i.cs = load double, ptr %i.cr, align 8         ; 2 uses
  %i.ct = getelementptr i8, ptr %i.i, i64 320
  %i.cu = load i8, ptr %i.ct, align 8, !range !175, !noundef !176
  %i.cv = trunc nuw i8 %i.cu to i1
  %i.cw = getelementptr i8, ptr %i.i, i64 76
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = icmp ne i32 %i.cx, 2
  %.not.i = xor i1 %i.cy, %i.cv                   ; 2 uses
  %not..not.i = xor i1 %.not.i, true
  %i.cz = load double, ptr %.sroa.0275.0.lcssa, align 8
  %i.da = tail call noundef double @_ZNK7QCPAxis12coordToPixelEd(ptr noundef nonnull align 8 dereferenceable_or_null(472) %i.i, double noundef %i.cz)
  %i.db = uitofp i1 %not..not.i to double         ; 2 uses
  %i.dc = fadd double %i.da, %i.db
  %i.dd = fptosi double %i.dc to i32
  %i.de = sitofp i32 %i.dd to double
  %i.df = tail call noundef double @_ZNK7QCPAxis12pixelToCoordEd(ptr noundef nonnull align 8 dereferenceable_or_null(472) %i.i, double noundef %i.de) ; 3 uses
  %i.dg = tail call noundef double @_ZNK7QCPAxis12coordToPixelEd(ptr noundef nonnull align 8 dereferenceable_or_null(472) %i.i, double noundef %i.df)
  %i.dh = select i1 %.not.i, double 1.000000e+00, double -1.000000e+00 ; 2 uses
  %i.di = fadd double %i.dh, %i.dg
  %i.dj = tail call noundef double @_ZNK7QCPAxis12pixelToCoordEd(ptr noundef nonnull align 8 dereferenceable_or_null(472) %i.i, double noundef %i.di)
  %i.dk = fsub double %i.df, %i.dj                ; 3 uses
  %i.dl = fcmp ult double %i.dk, 0.000000e+00
  %i.dm = fneg double %i.dk
  %i.dn = select i1 %i.dl, double %i.dm, double %i.dk
  %i.do = getelementptr i8, ptr %i.i, i64 324
  %i.dp = load i32, ptr %i.do, align 4
  %i.dq = icmp eq i32 %i.dp, 1
  br i1 %i.bb, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dr = getelementptr i8, ptr %.sroa.0275.0.lcssa, i64 16
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.ds = add i32 %.0137.lcssa, %i.ba             ; 2 uses
  %i.dt = icmp slt i32 %i.ds, %i.bs
  br i1 %i.dt, label %bb.x, label %._crit_edge.thread

bb.x:                                             ; preds = %bb.w
  %i.du = sext i32 %i.ba to i64
  %i.dv = getelementptr [16 x i8], ptr %.sroa.0275.0.lcssa, i64 %i.du
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %.sroa.0248.0 = phi ptr [ %i.dv, %bb.x ], [ %i.dr, %bb.v ] ; 2 uses
  %.0152 = phi i32 [ %i.ds, %bb.x ], [ %.0137.lcssa, %bb.v ]
  %.not296320 = icmp eq ptr %.sroa.0248.0, %3
  br i1 %.not296320, label %._crit_edge.thread, label %.lr.ph338

.lr.ph338:                                        ; preds = %bb.y
  %i.dw = getelementptr i8, ptr %1, i64 16        ; 3 uses
  %i.dx = sext i32 %i.ba to i64                   ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph338, %bb.aq
  %.0140337 = phi i32 [ 1, %.lr.ph338 ], [ %.1141, %bb.aq ] ; 3 uses
  %.0142336 = phi double [ %i.dn, %.lr.ph338 ], [ %.2, %bb.aq ] ; 3 uses
  %.0144335 = phi double [ %i.df, %.lr.ph338 ], [ %.1145, %bb.aq ] ; 2 uses
  %.sroa.039.0332 = phi ptr [ %.sroa.0275.0.lcssa, %.lr.ph338 ], [ %.sroa.039.2, %bb.aq ] ; 6 uses
  %.sroa.041.0329 = phi ptr [ %.sroa.0275.0.lcssa, %.lr.ph338 ], [ %.sroa.041.2, %bb.aq ] ; 6 uses
  %.0146328 = phi double [ %i.cs, %.lr.ph338 ], [ %.2148, %bb.aq ] ; 4 uses
  %.0149327 = phi double [ %i.cs, %.lr.ph338 ], [ %.2151, %bb.aq ] ; 4 uses
  %.1153326 = phi i32 [ %.0152, %.lr.ph338 ], [ %.2154, %bb.aq ] ; 2 uses
  %.sroa.0248.1322 = phi ptr [ %.sroa.0248.0, %.lr.ph338 ], [ %.sroa.0248.2, %bb.aq ] ; 13 uses
  %.sroa.0241.0321 = phi ptr [ %.sroa.0275.0.lcssa, %.lr.ph338 ], [ %.sroa.0241.1, %bb.aq ] ; 6 uses
  %i.dy = load double, ptr %.sroa.0248.1322, align 8
  %i.dz = fadd double %.0144335, %.0142336
  %i.ea = fcmp olt double %i.dy, %i.dz
  br i1 %i.ea, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.eb = getelementptr i8, ptr %.sroa.0248.1322, i64 8
  %i.ec = load double, ptr %i.eb, align 8         ; 6 uses
  %i.ed = fcmp olt double %i.ec, %.0149327
  %i.ee = fcmp ogt double %i.ec, %.sroa.0.0.copyload.i ; 2 uses
  %or.cond284 = select i1 %i.ed, i1 %i.ee, i1 false
  %i.ef = fcmp olt double %i.ec, %.sroa.2.0.copyload.i ; 2 uses
  %or.cond285 = select i1 %or.cond284, i1 %i.ef, i1 false
  br i1 %or.cond285, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eg = fcmp ogt double %i.ec, %.0146328
  %or.cond286 = select i1 %i.eg, i1 %i.ee, i1 false
  %or.cond287 = select i1 %or.cond286, i1 %i.ef, i1 false
  br i1 %or.cond287, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.ab, %bb.ac
  %.1150 = phi double [ %.0149327, %bb.ab ], [ %.0149327, %bb.ac ], [ %i.ec, %bb.aa ]
  %.1147 = phi double [ %.0146328, %bb.ab ], [ %i.ec, %bb.ac ], [ %.0146328, %bb.aa ]
  %.sroa.041.1 = phi ptr [ %.sroa.041.0329, %bb.ab ], [ %.sroa.041.0329, %bb.ac ], [ %.sroa.0248.1322, %bb.aa ]
  %.sroa.039.1 = phi ptr [ %.sroa.039.0332, %bb.ab ], [ %.sroa.0248.1322, %bb.ac ], [ %.sroa.039.0332, %bb.aa ]
  %i.eh = add i32 %.0140337, 1
  br label %bb.an

bb.ae:                                            ; preds = %bb.z
  %i.ei = icmp sgt i32 %.0140337, 1
  br i1 %i.ei, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.ej = tail call noundef double @_ZNK7QCPAxis12coordToPixelEd(ptr noundef nonnull align 8 dereferenceable_or_null(472) %i.q, double noundef %.0149327)
  %i.ek = tail call noundef double @_ZNK7QCPAxis12coordToPixelEd(ptr noundef nonnull align 8 dereferenceable_or_null(472) %i.q, double noundef %.0146328)
  %i.el = fsub double %i.ej, %i.ek                ; 3 uses
  %i.em = fcmp ult double %i.el, 0.000000e+00
  %i.en = fneg double %i.el
  %i.eo = select i1 %i.em, double %i.en, double %i.el ; 2 uses
  %i.ep = fcmp ogt double %i.eo, 1.000000e+00
  %.sroa.speculated236 = select i1 %i.ep, double %i.eo, double 1.000000e+00
  %i.eq = fmul nnan double %.sroa.speculated236, 2.500000e-01
  %i.er = uitofp nneg i32 %.0140337 to double
  %i.es = fdiv double %i.er, %i.eq                ; 2 uses
  %i.et = tail call double @llvm.copysign.f64(double 5.000000e-01, double %i.es)
  %i.eu = fadd double %i.es, %i.et
  %i.ev = fptosi double %i.eu to i32
  %.sroa.speculated229 = tail call i32 @llvm.smax.i32(i32 %i.ev, i32 1) ; 2 uses
  %.not298316 = icmp eq ptr %.sroa.0241.0321, %.sroa.0248.1322
  br i1 %.not298316, label %_ZN5QListI12QCPGraphDataE6appendERKS0_.exit192, label %.lr.ph319

.lr.ph319:                                        ; preds = %bb.af
  br i1 %i.bb, label %.lr.ph319.split.us, label %.lr.ph319.split

.lr.ph319.split.us:                               ; preds = %.lr.ph319, %_ZN5QListI12QCPGraphDataE6appendERKS0_.exit.us
  %.0138318.us = phi i32 [ %i.fi, %_ZN5QListI12QCPGraphDataE6appendERKS0_.exit.us ], [ 0, %.lr.ph319 ] ; 2 uses
  %.sroa.0220.0317.us = phi ptr [ %i.fj, %_ZN5QListI12QCPGraphDataE6appendERKS0_.exit.us ], [ %.sroa.0241.0321, %.lr.ph319 ] ; 5 uses
  %i.ew = srem i32 %.0138318.us, %.sroa.speculated229
  %i.ex = icmp eq i32 %i.ew, 0
  %i.ey = icmp eq ptr %.sroa.0220.0317.us, %.sroa.041.0329
  %or.cond288.us = select i1 %i.ex, i1 true, i1 %i.ey
  %i.ez = icmp eq ptr %.sroa.0220.0317.us, %.sroa.039.0332
  %or.cond289.us = select i1 %or.cond288.us, i1 true, i1 %i.ez
  br i1 %or.cond289.us, label %bb.ag, label %_ZN5QListI12QCPGraphDataE6appendERKS0_.exit.us

bb.ag:                                            ; preds = %.lr.ph319.split.us
  %i.fa = getelementptr i8, ptr %.sroa.0220.0317.us, i64 8
  %i.fb = load double, ptr %i.fa, align 8         ; 2 uses
  %i.fc = fcmp ogt double %i.fb, %.sroa.0.0.copyload.i
  %i.fd = fcmp olt double %i.fb, %.sroa.2.0.copyload.i
  %or.cond290.us = select i1 %i.fc, i1 %i.fd, i1 false
  br i1 %or.cond290.us, label %bb.ah, label %_ZN5QListI12QCPGraphDataE6appendERKS0_.exit.us

bb.ah:                                            ; preds = %bb.ag
  %i.fe = load i64, ptr %i.dw, align 8
  tail call void @_ZN9QtPrivate12QPodArrayOpsI12QCPGraphDataE7emplaceIJRKS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %1, i64 noundef %i.fe, ptr noundef align 8 dereferenceable(16) %.sroa.0220.0317.us)
  %i.ff = load ptr, ptr %1, align 8               ; 2 uses
  %.not.i.i.i.i.i.i.us = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i.i.i.i.us, label %_ZNK17QArrayDataPointerI12QCPGraphDataE11needsDetachEv.exit.thread.i.i.i.i.i.us, label %_ZNK17QArrayDataPointerI12QCPGraphDataE11needsDetachEv.exit.i.i.i.i.i.us

_ZNK17QArrayDataPointerI12QCPGraphDataE11needsDetachEv.exit.i.i.i.i.i.us: ; preds = %bb.ah
  %i.fg = load atomic i32, ptr %i.ff monotonic, align 4
  %i.fh = icmp sgt i32 %i.fg, 1
  br i1 %i.fh, label %_ZNK17QArrayDataPointerI12QCPGraphDataE11needsDetachEv.exit.thread.i.i.i.i.i.us, label %_ZN5QListI12QCPGraphDataE6appendERKS0_.exit.us

_ZNK17QArrayDataPointerI12QCPGraphDataE11needsDetachEv.exit.thread.i.i.i.i.i.us: ; preds = %_ZNK17QArrayDataPointerI12QCPGraphDataE11needsDetachEv.exit.i.i.i.i.i.us, %bb.ah
  tail call void @_ZN17QArrayDataPointerI12QCPGraphDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %1, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListI12QCPGraphDataE6appendERKS0_.exit.us

_ZN5QListI12QCPGraphDataE6appendERKS0_.exit.us:   ; preds = %_ZNK17QArrayDataPointerI12QCPGraphDataE11needsDetachEv.exit.thread.i.i.i.i.i.us, %_ZNK17QArrayDataPointerI12QCPGraphDataE11needsDetachEv.exit.i.i.i.i.i.us, %bb.ag, %.lr.ph319.split.us
  %i.fi = add i32 %.0138318.us, 1
  %i.fj = getelementptr [16 x i8], ptr %.sroa.0220.0317.us, i64 %i.dx ; 2 uses
  %.not298.us = icmp eq ptr %i.fj, %.sroa.0248.1322
  br i1 %.not298.us, label %_ZN5QListI12QCPGraphDataE6appendERKS0_.exit192, label %.lr.ph319.split.us, !llvm.loop !1156

.lr.ph319.split:                                  ; preds = %.lr.ph319, %_ZN5QListI12QCPGraphDataE6appendERKS0_.exit
  %.0138318 = phi i32 [ %i.fw, %_ZN5QListI12QCPGraphDataE6appendERKS0_.exit ], [ 0, %.lr.ph319 ] ; 2 uses
  %.sroa.0220.0317 = phi ptr [ %i.fx, %_ZN5QListI12QCPGraphDataE6appendERKS0_.exit ], [ %.sroa.0241.0321, %.lr.ph319 ] ; 5 uses
  %i.fk = srem i32 %.0138318, %.sroa.speculated229
  %i.fl = icmp eq i32 %i.fk, 0
  %i.fm = icmp eq ptr %.sroa.0220.0317, %.sroa.041.0329
  %or.cond288 = select i1 %i.fl, i1 true, i1 %i.fm
  %i.fn = icmp eq ptr %.sroa.0220.0317, %.sroa.039.0332
  %or.cond289 = select i1 %or.cond288, i1 true, i1 %i.fn
  br i1 %or.cond289, label %bb.ai, label %_ZN5QListI12QCPGraphDataE6appendERKS0_.exit

bb.ai:                                            ; preds = %.lr.ph319.split
  %i.fo = getelementptr i8, ptr %.sroa.0220.0317, i64 8
  %i.fp = load double, ptr %i.fo, align 8         ; 2 uses
  %i.fq = fcmp ogt double %i.fp, %.sroa.0.0.copyload.i
  %i.fr = fcmp olt double %i.fp, %.sroa.2.0.copyload.i
  %or.cond290 = select i1 %i.fq, i1 %i.fr, i1 false
  br i1 %or.cond290, label %bb.aj, label %_ZN5QListI12QCPGraphDataE6appendERKS0_.exit

bb.aj:                                            ; preds = %bb.ai
  %i.fs = load i64, ptr %i.dw, align 8
  tail call void @_ZN9QtPrivate12QPodArrayOpsI12QCPGraphDataE7emplaceIJRKS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %1, i64 noundef %i.fs, ptr noundef align 8 dereferenceable(16) %.sroa.0220.0317)
  %i.ft = load ptr, ptr %1, align 8               ; 2 uses
end_hunk_0
