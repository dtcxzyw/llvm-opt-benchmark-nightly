Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_storage_compression?download=true
inline.NumInlined: 14179
inline.NumDeleted: 6830
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 120
loop-unroll.NumUnrolled: 157
begin_hunk_0_@_ZN6duckdb9RLEFilterIiEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ba, align 8, !tbaa !301
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !302
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !142
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #30, !inline_history !2
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !142
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #30, !inline_history !2
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.n:                                             ; preds = %bb.l
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !303
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !101
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bd, %bb.o ], [ %i.bn, %bb.p ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bo, label %bb.q, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !153

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #30
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m, %_ZN6duckdb15SelectionVectorD2Ev.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !299 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 4 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 4294967297
  %i.bu = trunc i64 %i.bs to i32                  ; 2 uses
  br i1 %i.bt, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.br, align 8, !tbaa !301
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 0, ptr %i.bv, align 4, !tbaa !302
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !142
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #30, !inline_history !3
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !142
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #30, !inline_history !3
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.cc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !303
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = add nsw i32 %i.bu, -1
  store i32 %i.cd, ptr %i.br, align 8, !tbaa !101
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.v:                                             ; preds = %bb.t
  %i.ce = atomicrmw volatile add ptr %i.br, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.bu, %bb.u ], [ %i.ce, %bb.v ]
  %i.cf = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.cf, label %bb.w, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !153

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #30
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.ae

bb.x:                                             ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #30
  br label %bb.ad

bb.y:                                             ; preds = %bb.c
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.z:                                             ; preds = %bb.d
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.e
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.ab

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.0116199 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.dd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 5 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.0116199
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !101
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.cm
  store i8 1, ptr %i.cn, align 1, !tbaa !137
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.0116199
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !101
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.cr
  store i8 1, ptr %i.cs, align 1, !tbaa !137
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.0116199
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !101
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.cw
  store i8 1, ptr %i.cx, align 1, !tbaa !137
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.0116199
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !101
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.db
  store i8 1, ptr %i.dc, align 1, !tbaa !137
  %i.dd = add nuw i64 %.0116199, 4                ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !2215

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cj, %bb.aa ], [ %i.ci, %bb.z ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %10) #30
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ab ], [ %i.ch, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %8) #30
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.x
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ac ], [ %i.cg, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %common.resume

bb.ae:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %bb.a
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.df = load i64, ptr %i.de, align 8, !tbaa !2222
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i64 0, ptr %5, align 8, !tbaa !116
  br label %bb.bs

bb.ag:                                            ; preds = %bb.ae
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !429 ; 10 uses
  %i.dj = ptrtoaddr ptr %i.di to i64              ; 2 uses
  call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.dk = load i64, ptr %5, align 8, !tbaa !116
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %i.dk)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit unwind label %bb.ah

common.resume:                                    ; preds = %bb.ad, %bb.bt, %bb.ah
  %common.resume.op = phi { ptr, i32 } [ %i.dm, %bb.ah ], [ %.pn148.pn.pn, %bb.bt ], [ %.pn.pn.pn.pn.pn, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

bb.ah:                                            ; preds = %bb.ag
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.dl) #30
  br label %common.resume

_ZN6duckdb15SelectionVectorC2Em.exit:             ; preds = %bb.ag
  %i.dn = load ptr, ptr %4, align 8, !tbaa !415   ; 2 uses
  %.not185 = icmp eq ptr %i.dn, null
  %i.do = load i64, ptr %5, align 8, !tbaa !116   ; 6 uses
  %.not223 = icmp eq i64 %i.do, 0                 ; 2 uses
  br i1 %.not185, label %bb.ai, label %.preheader187

.preheader187:                                    ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  br i1 %.not223, label %._crit_edge204, label %.lr.ph203

.lr.ph203:                                        ; preds = %.preheader187
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.dr = load ptr, ptr %i.q, align 8, !tbaa !713
  %i.ds = load ptr, ptr %12, align 8
  br label %bb.ap

bb.ai:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  br i1 %.not223, label %_ZN6duckdb12RLEScanStateIiE12SkipInternalEPtm.exit, label %.lr.ph214

.lr.ph214:                                        ; preds = %bb.ai
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.dv = load ptr, ptr %12, align 8              ; 5 uses
  %i.dw = ptrtoaddr ptr %i.dv to i64
  %.pre243 = load i64, ptr %i.dt, align 8, !tbaa !824
  %.pre244 = load i64, ptr %i.du, align 8, !tbaa !825
  %i.dx = load ptr, ptr %i.q, align 8, !tbaa !713
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph214, %.loopexit
  %i.dy = phi i64 [ %.pre244, %.lr.ph214 ], [ 0, %.loopexit ] ; 5 uses
  %i.dz = phi i64 [ %.pre243, %.lr.ph214 ], [ %i.ht, %.loopexit ] ; 4 uses
  %.0111211 = phi i64 [ 0, %.lr.ph214 ], [ %i.hs, %.loopexit ] ; 17 uses
  %.0113210 = phi i64 [ 0, %.lr.ph214 ], [ %.4, %.loopexit ] ; 12 uses
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.dz
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !479
  %i.ec = zext i16 %i.eb to i64                   ; 4 uses
  %i.ed = sub i64 %i.ec, %i.dy                    ; 6 uses
  %i.ee = sub nuw i64 %i.do, %.0111211            ; 6 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.dz
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !101 ; 8 uses
  %i.eh = icmp ugt i64 %i.ed, %i.ee
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dz
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !137, !range !147, !noundef !148
  %i.ek = trunc nuw i8 %i.ej to i1                ; 2 uses
  br i1 %i.eh, label %bb.ak, label %bb.al, !prof !153

bb.ak:                                            ; preds = %bb.aj
  %i.el = icmp ne i64 %i.do, %.0111211
  %or.cond = and i1 %i.el, %i.ek
  br i1 %or.cond, label %.lr.ph218, label %.thread

.lr.ph218:                                        ; preds = %bb.ak
  %i.em = load ptr, ptr %12, align 8, !tbaa !415  ; 5 uses
  %min.iters.check304 = icmp ult i64 %i.ee, 12
  br i1 %min.iters.check304, label %scalar.ph303.preheader, label %vector.memcheck301

vector.memcheck301:                               ; preds = %.lr.ph218
  %i.en = ptrtoaddr ptr %i.em to i64
  %i.eo = shl i64 %.0113210, 2
  %i.ep = shl i64 %.0111211, 2
  %i.eq = add i64 %i.eo, %i.en
  %i.er = add i64 %i.ep, %i.dj
  %i.es = sub i64 %i.er, %i.eq
  %diff.check302 = icmp ugt i64 %i.es, -32
  br i1 %diff.check302, label %scalar.ph303.preheader, label %vector.ph305

vector.ph305:                                     ; preds = %vector.memcheck301
  %n.vec306 = and i64 %i.ee, -8                   ; 4 uses
  %i.et = add i64 %.0113210, %n.vec306            ; 2 uses
  %broadcast.splatinsert307 = insertelement <4 x i32> poison, i32 %i.eg, i64 0
  %broadcast.splat308 = shufflevector <4 x i32> %broadcast.splatinsert307, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.eu = insertelement <4 x i64> poison, i64 %.0111211, i64 0
  %i.ev = shufflevector <4 x i64> %i.eu, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep358 = getelementptr [4 x i8], ptr %i.di, i64 %.0111211
  %i.ew = getelementptr [4 x i8], ptr %i.em, i64 %.0113210
  br label %vector.body309

vector.body309:                                   ; preds = %vector.body309, %vector.ph305
  %index310 = phi i64 [ 0, %vector.ph305 ], [ %index.next311, %vector.body309 ] ; 4 uses
  %i.ex = insertelement <4 x i64> poison, i64 %index310, i64 0
  %i.ey = shufflevector <4 x i64> %i.ex, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ez = or disjoint <4 x i64> %i.ey, <i64 4, i64 5, i64 6, i64 7>
  %i.fa = or disjoint <4 x i64> %i.ey, <i64 0, i64 1, i64 2, i64 3>
  %i.fb = add <4 x i64> %i.fa, %i.ev
  %i.fc = add <4 x i64> %i.ez, %i.ev
  %gep359 = getelementptr [4 x i8], ptr %invariant.gep358, i64 %index310 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %gep359, i64 16
  store <4 x i32> %broadcast.splat308, ptr %gep359, align 4, !tbaa !101
  store <4 x i32> %broadcast.splat308, ptr %i.fd, align 4, !tbaa !101
  %i.fe = trunc <4 x i64> %i.fb to <4 x i32>
  %i.ff = trunc <4 x i64> %i.fc to <4 x i32>
  %i.fg = getelementptr [4 x i8], ptr %i.ew, i64 %index310 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store <4 x i32> %i.fe, ptr %i.fg, align 4, !tbaa !101
  store <4 x i32> %i.ff, ptr %i.fh, align 4, !tbaa !101
  %index.next311 = add nuw i64 %index310, 8       ; 2 uses
  %i.fi = icmp eq i64 %index.next311, %n.vec306
  br i1 %i.fi, label %middle.block312, label %vector.body309, !llvm.loop !2216

middle.block312:                                  ; preds = %vector.body309
  %cmp.n313 = icmp eq i64 %i.ee, %n.vec306
  br i1 %cmp.n313, label %.thread, label %scalar.ph303.preheader

scalar.ph303.preheader:                           ; preds = %vector.memcheck301, %.lr.ph218, %middle.block312
  %.0110217.ph = phi i64 [ 0, %vector.memcheck301 ], [ 0, %.lr.ph218 ], [ %n.vec306, %middle.block312 ] ; 4 uses
  %.1114216.ph = phi i64 [ %.0113210, %vector.memcheck301 ], [ %.0113210, %.lr.ph218 ], [ %i.et, %middle.block312 ] ; 3 uses
  %15 = sub i64 %i.do, %.0111211
  %i.fj = xor i64 %.0110217.ph, -1
  %i.fk = add i64 %i.do, %i.fj
  %xtraiter338 = and i64 %15, 1
  %lcmp.mod339.not = icmp eq i64 %xtraiter338, 0
  br i1 %lcmp.mod339.not, label %scalar.ph303.prol.loopexit, label %scalar.ph303.prol

scalar.ph303.prol:                                ; preds = %scalar.ph303.preheader
  %i.fl = add i64 %.0110217.ph, %.0111211         ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.fl
  store i32 %i.eg, ptr %i.fm, align 4, !tbaa !101
  %i.fn = trunc i64 %i.fl to i32
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %.1114216.ph
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !101
  %i.fp = add i64 %.1114216.ph, 1                 ; 2 uses
  %i.fq = or disjoint i64 %.0110217.ph, 1
  br label %scalar.ph303.prol.loopexit

scalar.ph303.prol.loopexit:                       ; preds = %scalar.ph303.prol, %scalar.ph303.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph303.preheader ], [ %i.fp, %scalar.ph303.prol ]
  %.0110217.unr = phi i64 [ %.0110217.ph, %scalar.ph303.preheader ], [ %i.fq, %scalar.ph303.prol ]
  %.1114216.unr = phi i64 [ %.1114216.ph, %scalar.ph303.preheader ], [ %i.fp, %scalar.ph303.prol ]
  %i.fr = icmp eq i64 %i.fk, %.0111211
  br i1 %i.fr, label %.thread, label %scalar.ph303.preheader.new

scalar.ph303.preheader.new:                       ; preds = %scalar.ph303.prol.loopexit
  %invariant.op360 = add i64 1, %.0111211
  br label %scalar.ph303

scalar.ph303:                                     ; preds = %scalar.ph303, %scalar.ph303.preheader.new
  %.0110217 = phi i64 [ %.0110217.unr, %scalar.ph303.preheader.new ], [ %i.gb, %scalar.ph303 ] ; 3 uses
  %.1114216 = phi i64 [ %.1114216.unr, %scalar.ph303.preheader.new ], [ %i.ga, %scalar.ph303 ] ; 3 uses
  %i.fs = add i64 %.0110217, %.0111211            ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.fs
  store i32 %i.eg, ptr %i.ft, align 4, !tbaa !101
  %i.fu = trunc i64 %i.fs to i32
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %.1114216
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !101
  %.reass361 = add i64 %.0110217, %invariant.op360 ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.reass361
  store i32 %i.eg, ptr %i.fw, align 4, !tbaa !101
  %i.fx = trunc i64 %.reass361 to i32
  %i.fy = getelementptr [4 x i8], ptr %i.em, i64 %.1114216
  %i.fz = getelementptr i8, ptr %i.fy, i64 4
  store i32 %i.fx, ptr %i.fz, align 4, !tbaa !101
  %i.ga = add i64 %.1114216, 2                    ; 2 uses
  %i.gb = add nuw i64 %.0110217, 2                ; 2 uses
  %exitcond241.not.1 = icmp eq i64 %i.gb, %i.ee
  br i1 %exitcond241.not.1, label %.thread, label %scalar.ph303, !llvm.loop !2217

.thread:                                          ; preds = %scalar.ph303.prol.loopexit, %scalar.ph303, %middle.block312, %bb.ak
  %.2 = phi i64 [ %.0113210, %bb.ak ], [ %i.et, %middle.block312 ], [ %.lcssa.unr, %scalar.ph303.prol.loopexit ], [ %i.ga, %scalar.ph303 ]
  %i.gc = add i64 %i.dy, %i.ee
  store i64 %i.gc, ptr %i.du, align 8, !tbaa !825
  br label %_ZN6duckdb12RLEScanStateIiE12SkipInternalEPtm.exit

bb.al:                                            ; preds = %bb.aj
  %i.gd = icmp ne i64 %i.dy, %i.ec
  %or.cond220 = and i1 %i.gd, %i.ek
  br i1 %or.cond220, label %.lr.ph208.preheader, label %.loopexit

.lr.ph208.preheader:                              ; preds = %bb.al
  %min.iters.check = icmp ult i64 %i.ed, 8
  br i1 %min.iters.check, label %.lr.ph208.preheader316, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph208.preheader
  %i.ge = shl i64 %.0113210, 2
  %i.gf = shl i64 %.0111211, 2
  %i.gg = add i64 %i.ge, %i.dw
  %i.gh = add i64 %i.gf, %i.dj
  %i.gi = sub i64 %i.gh, %i.gg
  %diff.check = icmp ugt i64 %i.gi, -32
  br i1 %diff.check, label %.lr.ph208.preheader316, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ed, -8                      ; 4 uses
  %i.gj = add i64 %.0113210, %n.vec               ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.eg, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gk = insertelement <4 x i64> poison, i64 %.0111211, i64 0
  %i.gl = shufflevector <4 x i64> %i.gk, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.di, i64 %.0111211
  %i.gm = getelementptr [4 x i8], ptr %i.dv, i64 %.0113210
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.gn = insertelement <4 x i64> poison, i64 %index, i64 0
  %i.go = shufflevector <4 x i64> %i.gn, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gp = or disjoint <4 x i64> %i.go, <i64 4, i64 5, i64 6, i64 7>
  %i.gq = or disjoint <4 x i64> %i.go, <i64 0, i64 1, i64 2, i64 3>
  %i.gr = add <4 x i64> %i.gq, %i.gl
  %i.gs = add <4 x i64> %i.gp, %i.gl
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %gep, align 4, !tbaa !101
  store <4 x i32> %broadcast.splat, ptr %i.gt, align 4, !tbaa !101
  %i.gu = trunc <4 x i64> %i.gr to <4 x i32>
  %i.gv = trunc <4 x i64> %i.gs to <4 x i32>
  %i.gw = getelementptr [4 x i8], ptr %i.gm, i64 %index ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  store <4 x i32> %i.gu, ptr %i.gw, align 4, !tbaa !101
  store <4 x i32> %i.gv, ptr %i.gx, align 4, !tbaa !101
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gy = icmp eq i64 %index.next, %n.vec
  br i1 %i.gy, label %middle.block, label %vector.body, !llvm.loop !2218

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ed, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph208.preheader316

.lr.ph208.preheader316:                           ; preds = %vector.memcheck, %.lr.ph208.preheader, %middle.block
  %.0109207.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph208.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.3206.ph = phi i64 [ %.0113210, %vector.memcheck ], [ %.0113210, %.lr.ph208.preheader ], [ %i.gj, %middle.block ] ; 3 uses
  %16 = sub i64 %i.ec, %i.dy
  %i.gz = xor i64 %.0109207.ph, -1
  %i.ha = add i64 %i.gz, %i.ec
  %xtraiter334 = and i64 %16, 1
  %lcmp.mod335.not = icmp eq i64 %xtraiter334, 0
  br i1 %lcmp.mod335.not, label %.lr.ph208.prol.loopexit, label %.lr.ph208.prol

.lr.ph208.prol:                                   ; preds = %.lr.ph208.preheader316
  %i.hb = add i64 %.0109207.ph, %.0111211         ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.hb
  store i32 %i.eg, ptr %i.hc, align 4, !tbaa !101
  %i.hd = trunc i64 %i.hb to i32
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.3206.ph
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !101
  %i.hf = add i64 %.3206.ph, 1                    ; 2 uses
  %i.hg = or disjoint i64 %.0109207.ph, 1
  br label %.lr.ph208.prol.loopexit

.lr.ph208.prol.loopexit:                          ; preds = %.lr.ph208.prol, %.lr.ph208.preheader316
  %.lcssa317.unr = phi i64 [ poison, %.lr.ph208.preheader316 ], [ %i.hf, %.lr.ph208.prol ]
  %.0109207.unr = phi i64 [ %.0109207.ph, %.lr.ph208.preheader316 ], [ %i.hg, %.lr.ph208.prol ]
  %.3206.unr = phi i64 [ %.3206.ph, %.lr.ph208.preheader316 ], [ %i.hf, %.lr.ph208.prol ]
  %i.hh = icmp eq i64 %i.ha, %i.dy
  br i1 %i.hh, label %.loopexit, label %.lr.ph208.preheader316.new

.lr.ph208.preheader316.new:                       ; preds = %.lr.ph208.prol.loopexit
  %invariant.op = add i64 1, %.0111211
  br label %.lr.ph208

.lr.ph208:                                        ; preds = %.lr.ph208, %.lr.ph208.preheader316.new
  %.0109207 = phi i64 [ %.0109207.unr, %.lr.ph208.preheader316.new ], [ %i.hr, %.lr.ph208 ] ; 3 uses
  %.3206 = phi i64 [ %.3206.unr, %.lr.ph208.preheader316.new ], [ %i.hq, %.lr.ph208 ] ; 3 uses
  %i.hi = add i64 %.0109207, %.0111211            ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.hi
  store i32 %i.eg, ptr %i.hj, align 4, !tbaa !101
  %i.hk = trunc i64 %i.hi to i32
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.3206
  store i32 %i.hk, ptr %i.hl, align 4, !tbaa !101
  %.reass = add i64 %.0109207, %invariant.op      ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.reass
  store i32 %i.eg, ptr %i.hm, align 4, !tbaa !101
  %i.hn = trunc i64 %.reass to i32
  %i.ho = getelementptr [4 x i8], ptr %i.dv, i64 %.3206
  %i.hp = getelementptr i8, ptr %i.ho, i64 4
  store i32 %i.hn, ptr %i.hp, align 4, !tbaa !101
  %i.hq = add i64 %.3206, 2                       ; 2 uses
  %i.hr = add nuw i64 %.0109207, 2                ; 2 uses
  %exitcond240.not.1 = icmp eq i64 %i.hr, %i.ed
  br i1 %exitcond240.not.1, label %.loopexit, label %.lr.ph208, !llvm.loop !2219

.loopexit:                                        ; preds = %.lr.ph208.prol.loopexit, %.lr.ph208, %middle.block, %bb.al
  %.4 = phi i64 [ %.0113210, %bb.al ], [ %i.gj, %middle.block ], [ %.lcssa317.unr, %.lr.ph208.prol.loopexit ], [ %i.hq, %.lr.ph208 ] ; 2 uses
  %i.hs = add i64 %i.ed, %.0111211                ; 2 uses
  %i.ht = add i64 %i.dz, 1                        ; 2 uses
  store i64 %i.ht, ptr %i.dt, align 8, !tbaa !824
  store i64 0, ptr %i.du, align 8, !tbaa !825
  %i.hu = icmp ult i64 %i.hs, %i.do
  br i1 %i.hu, label %bb.aj, label %_ZN6duckdb12RLEScanStateIiE12SkipInternalEPtm.exit

._crit_edge204:                                   ; preds = %bb.ba, %.preheader187
  %.7.lcssa = phi i64 [ 0, %.preheader187 ], [ %.8, %bb.ba ] ; 2 uses
  %.0108.lcssa = phi i64 [ 0, %.preheader187 ], [ %i.im, %bb.ba ]
  %i.hv = sub i64 %2, %.0108.lcssa                ; 2 uses
  %.not9.i = icmp eq i64 %i.hv, 0
  br i1 %.not9.i, label %_ZN6duckdb12RLEScanStateIiE12SkipInternalEPtm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge204
  %i.hw = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %.promoted.i = load i64, ptr %i.hw, align 8, !tbaa !824
  %.promoted11.i = load i64, ptr %i.hx, align 8, !tbaa !825
  br label %bb.am

bb.am:                                            ; preds = %bb.ao, %.lr.ph.i
  %i.hy = phi i64 [ %.promoted11.i, %.lr.ph.i ], [ %i.ii, %bb.ao ] ; 2 uses
  %i.hz = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.ij, %bb.ao ] ; 3 uses
  %.010.i = phi i64 [ %i.hv, %.lr.ph.i ], [ %i.if, %bb.ao ] ; 2 uses
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.hz
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !479
  %i.ic = zext i16 %i.ib to i64                   ; 2 uses
  %i.id = sub i64 %i.ic, %i.hy
  %i.ie = call noundef i64 @llvm.umin.i64(i64 %.010.i, i64 %i.id) ; 2 uses
  %i.if = sub nuw i64 %.010.i, %i.ie              ; 2 uses
  %i.ig = add i64 %i.ie, %i.hy                    ; 2 uses
  %.not8.i = icmp ult i64 %i.ig, %i.ic
  br i1 %.not8.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ih = add i64 %i.hz, 1                        ; 2 uses
  store i64 %i.ih, ptr %i.hw, align 8, !tbaa !824
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ii = phi i64 [ 0, %bb.an ], [ %i.ig, %bb.am ] ; 2 uses
  %i.ij = phi i64 [ %i.ih, %bb.an ], [ %i.hz, %bb.am ]
  %.not.i156 = icmp eq i64 %i.if, 0
  br i1 %.not.i156, label %._crit_edge.i, label %bb.am, !llvm.loop !43

._crit_edge.i:                                    ; preds = %bb.ao
  store i64 %i.ii, ptr %i.hx, align 8, !tbaa !825
  br label %_ZN6duckdb12RLEScanStateIiE12SkipInternalEPtm.exit

bb.ap:                                            ; preds = %.lr.ph203, %bb.ba
  %.0107202 = phi i64 [ 0, %.lr.ph203 ], [ %i.jq, %bb.ba ] ; 2 uses
  %.0108201 = phi i64 [ 0, %.lr.ph203 ], [ %i.im, %bb.ba ] ; 2 uses
  %.7200 = phi i64 [ 0, %.lr.ph203 ], [ %.8, %bb.ba ] ; 3 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.0107202
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !101 ; 2 uses
  %i.im = zext i32 %i.il to i64                   ; 5 uses
  %i.in = icmp samesign ugt i64 %.0108201, %i.im
  br i1 %i.in, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %bb.ap
  %i.io = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.58, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.ar unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.io, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  invoke void @__cxa_throw(ptr nonnull %i.io, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.bu unwind label %bb.at

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.aq
  %i.ip = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.0 = phi i1 [ false, %bb.as ], [ true, %bb.ar ] ; 2 uses
  %i.iq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ir = load ptr, ptr %13, align 8, !tbaa !151  ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.it = icmp eq ptr %i.ir, %i.is
  br i1 %i.it, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.at
  call void @_ZdlPv(ptr noundef %i.ir) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br i1 %.0, label %bb.au, label %bb.bt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br i1 %.0, label %bb.au, label %bb.bt

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn148183 = phi { ptr, i32 } [ %i.ip, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.iq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.iq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.io) #30
  br label %bb.bt

bb.av:                                            ; preds = %bb.ap
  %i.iu = sub nuw nsw i64 %i.im, %.0108201        ; 2 uses
  %.not9.i159 = icmp eq i64 %i.iu, 0
  %.pre242 = load i64, ptr %i.dp, align 8, !tbaa !824 ; 2 uses
  br i1 %.not9.i159, label %_ZN6duckdb12RLEScanStateIiE12SkipInternalEPtm.exit167, label %.lr.ph.i160

.lr.ph.i160:                                      ; preds = %bb.av
  %.promoted11.i162 = load i64, ptr %i.dq, align 8, !tbaa !825
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ay, %.lr.ph.i160
  %i.iv = phi i64 [ %.promoted11.i162, %.lr.ph.i160 ], [ %i.jf, %bb.ay ] ; 2 uses
  %i.iw = phi i64 [ %.pre242, %.lr.ph.i160 ], [ %i.jg, %bb.ay ] ; 3 uses
  %.010.i163 = phi i64 [ %i.iu, %.lr.ph.i160 ], [ %i.jc, %bb.ay ] ; 2 uses
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.iw
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !479
  %i.iz = zext i16 %i.iy to i64                   ; 2 uses
  %i.ja = sub i64 %i.iz, %i.iv
  %i.jb = call noundef i64 @llvm.umin.i64(i64 %.010.i163, i64 %i.ja) ; 2 uses
  %i.jc = sub nuw nsw i64 %.010.i163, %i.jb       ; 2 uses
  %i.jd = add i64 %i.jb, %i.iv                    ; 2 uses
  %.not8.i164 = icmp ult i64 %i.jd, %i.iz
  br i1 %.not8.i164, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.je = add i64 %i.iw, 1                        ; 2 uses
  store i64 %i.je, ptr %i.dp, align 8, !tbaa !824
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.jf = phi i64 [ 0, %bb.ax ], [ %i.jd, %bb.aw ] ; 2 uses
  %i.jg = phi i64 [ %i.je, %bb.ax ], [ %i.iw, %bb.aw ] ; 2 uses
  %.not.i165 = icmp eq i64 %i.jc, 0
  br i1 %.not.i165, label %._crit_edge.i166, label %bb.aw, !llvm.loop !43

._crit_edge.i166:                                 ; preds = %bb.ay
  store i64 %i.jf, ptr %i.dq, align 8, !tbaa !825
  br label %_ZN6duckdb12RLEScanStateIiE12SkipInternalEPtm.exit167

_ZN6duckdb12RLEScanStateIiE12SkipInternalEPtm.exit167: ; preds = %bb.av, %._crit_edge.i166
  %i.jh = phi i64 [ %.pre242, %bb.av ], [ %i.jg, %._crit_edge.i166 ] ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.jh
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !137, !range !147, !noundef !148
  %i.jk = trunc nuw i8 %i.jj to i1
  br i1 %i.jk, label %bb.az, label %bb.ba
end_hunk_0
begin_hunk_1_@_ZN6duckdb9RLEFilterIjEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ba, align 8, !tbaa !301
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !302
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !142
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #30, !inline_history !2
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !142
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #30, !inline_history !2
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.n:                                             ; preds = %bb.l
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !303
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !101
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bd, %bb.o ], [ %i.bn, %bb.p ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bo, label %bb.q, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !153

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #30
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m, %_ZN6duckdb15SelectionVectorD2Ev.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !299 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 4 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 4294967297
  %i.bu = trunc i64 %i.bs to i32                  ; 2 uses
  br i1 %i.bt, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.br, align 8, !tbaa !301
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 0, ptr %i.bv, align 4, !tbaa !302
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !142
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #30, !inline_history !3
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !142
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #30, !inline_history !3
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.cc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !303
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = add nsw i32 %i.bu, -1
  store i32 %i.cd, ptr %i.br, align 8, !tbaa !101
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.v:                                             ; preds = %bb.t
  %i.ce = atomicrmw volatile add ptr %i.br, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.bu, %bb.u ], [ %i.ce, %bb.v ]
  %i.cf = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.cf, label %bb.w, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !153

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #30
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.ae

bb.x:                                             ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #30
  br label %bb.ad

bb.y:                                             ; preds = %bb.c
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.z:                                             ; preds = %bb.d
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.e
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.ab

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.0116199 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.dd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 5 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.0116199
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !101
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.cm
  store i8 1, ptr %i.cn, align 1, !tbaa !137
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.0116199
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !101
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.cr
  store i8 1, ptr %i.cs, align 1, !tbaa !137
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.0116199
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !101
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.cw
  store i8 1, ptr %i.cx, align 1, !tbaa !137
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.0116199
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !101
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.db
  store i8 1, ptr %i.dc, align 1, !tbaa !137
  %i.dd = add nuw i64 %.0116199, 4                ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !2431

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cj, %bb.aa ], [ %i.ci, %bb.z ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %10) #30
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ab ], [ %i.ch, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %8) #30
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.x
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ac ], [ %i.cg, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %common.resume

bb.ae:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %bb.a
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.df = load i64, ptr %i.de, align 8, !tbaa !2438
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i64 0, ptr %5, align 8, !tbaa !116
  br label %bb.bs

bb.ag:                                            ; preds = %bb.ae
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !429 ; 10 uses
  %i.dj = ptrtoaddr ptr %i.di to i64              ; 2 uses
  call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.dk = load i64, ptr %5, align 8, !tbaa !116
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %i.dk)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit unwind label %bb.ah

common.resume:                                    ; preds = %bb.ad, %bb.bt, %bb.ah
  %common.resume.op = phi { ptr, i32 } [ %i.dm, %bb.ah ], [ %.pn148.pn.pn, %bb.bt ], [ %.pn.pn.pn.pn.pn, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

bb.ah:                                            ; preds = %bb.ag
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.dl) #30
  br label %common.resume

_ZN6duckdb15SelectionVectorC2Em.exit:             ; preds = %bb.ag
  %i.dn = load ptr, ptr %4, align 8, !tbaa !415   ; 2 uses
  %.not185 = icmp eq ptr %i.dn, null
  %i.do = load i64, ptr %5, align 8, !tbaa !116   ; 6 uses
  %.not223 = icmp eq i64 %i.do, 0                 ; 2 uses
  br i1 %.not185, label %bb.ai, label %.preheader187

.preheader187:                                    ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  br i1 %.not223, label %._crit_edge204, label %.lr.ph203

.lr.ph203:                                        ; preds = %.preheader187
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.dr = load ptr, ptr %i.q, align 8, !tbaa !713
  %i.ds = load ptr, ptr %12, align 8
  br label %bb.ap

bb.ai:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  br i1 %.not223, label %_ZN6duckdb12RLEScanStateIjE12SkipInternalEPtm.exit, label %.lr.ph214

.lr.ph214:                                        ; preds = %bb.ai
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.dv = load ptr, ptr %12, align 8              ; 5 uses
  %i.dw = ptrtoaddr ptr %i.dv to i64
  %.pre243 = load i64, ptr %i.dt, align 8, !tbaa !914
  %.pre244 = load i64, ptr %i.du, align 8, !tbaa !915
  %i.dx = load ptr, ptr %i.q, align 8, !tbaa !713
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph214, %.loopexit
  %i.dy = phi i64 [ %.pre244, %.lr.ph214 ], [ 0, %.loopexit ] ; 5 uses
  %i.dz = phi i64 [ %.pre243, %.lr.ph214 ], [ %i.ht, %.loopexit ] ; 4 uses
  %.0111211 = phi i64 [ 0, %.lr.ph214 ], [ %i.hs, %.loopexit ] ; 17 uses
  %.0113210 = phi i64 [ 0, %.lr.ph214 ], [ %.4, %.loopexit ] ; 12 uses
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.dz
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !479
  %i.ec = zext i16 %i.eb to i64                   ; 4 uses
  %i.ed = sub i64 %i.ec, %i.dy                    ; 6 uses
  %i.ee = sub nuw i64 %i.do, %.0111211            ; 6 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.dz
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !101 ; 8 uses
  %i.eh = icmp ugt i64 %i.ed, %i.ee
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dz
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !137, !range !147, !noundef !148
  %i.ek = trunc nuw i8 %i.ej to i1                ; 2 uses
  br i1 %i.eh, label %bb.ak, label %bb.al, !prof !153

bb.ak:                                            ; preds = %bb.aj
  %i.el = icmp ne i64 %i.do, %.0111211
  %or.cond = and i1 %i.el, %i.ek
  br i1 %or.cond, label %.lr.ph218, label %.thread

.lr.ph218:                                        ; preds = %bb.ak
  %i.em = load ptr, ptr %12, align 8, !tbaa !415  ; 5 uses
  %min.iters.check304 = icmp ult i64 %i.ee, 12
  br i1 %min.iters.check304, label %scalar.ph303.preheader, label %vector.memcheck301

vector.memcheck301:                               ; preds = %.lr.ph218
  %i.en = ptrtoaddr ptr %i.em to i64
  %i.eo = shl i64 %.0113210, 2
  %i.ep = shl i64 %.0111211, 2
  %i.eq = add i64 %i.eo, %i.en
  %i.er = add i64 %i.ep, %i.dj
  %i.es = sub i64 %i.er, %i.eq
  %diff.check302 = icmp ugt i64 %i.es, -32
  br i1 %diff.check302, label %scalar.ph303.preheader, label %vector.ph305

vector.ph305:                                     ; preds = %vector.memcheck301
  %n.vec306 = and i64 %i.ee, -8                   ; 4 uses
  %i.et = add i64 %.0113210, %n.vec306            ; 2 uses
  %broadcast.splatinsert307 = insertelement <4 x i32> poison, i32 %i.eg, i64 0
  %broadcast.splat308 = shufflevector <4 x i32> %broadcast.splatinsert307, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.eu = insertelement <4 x i64> poison, i64 %.0111211, i64 0
  %i.ev = shufflevector <4 x i64> %i.eu, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep358 = getelementptr [4 x i8], ptr %i.di, i64 %.0111211
  %i.ew = getelementptr [4 x i8], ptr %i.em, i64 %.0113210
  br label %vector.body309

vector.body309:                                   ; preds = %vector.body309, %vector.ph305
  %index310 = phi i64 [ 0, %vector.ph305 ], [ %index.next311, %vector.body309 ] ; 4 uses
  %i.ex = insertelement <4 x i64> poison, i64 %index310, i64 0
  %i.ey = shufflevector <4 x i64> %i.ex, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ez = or disjoint <4 x i64> %i.ey, <i64 4, i64 5, i64 6, i64 7>
  %i.fa = or disjoint <4 x i64> %i.ey, <i64 0, i64 1, i64 2, i64 3>
  %i.fb = add <4 x i64> %i.fa, %i.ev
  %i.fc = add <4 x i64> %i.ez, %i.ev
  %gep359 = getelementptr [4 x i8], ptr %invariant.gep358, i64 %index310 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %gep359, i64 16
  store <4 x i32> %broadcast.splat308, ptr %gep359, align 4, !tbaa !101
  store <4 x i32> %broadcast.splat308, ptr %i.fd, align 4, !tbaa !101
  %i.fe = trunc <4 x i64> %i.fb to <4 x i32>
  %i.ff = trunc <4 x i64> %i.fc to <4 x i32>
  %i.fg = getelementptr [4 x i8], ptr %i.ew, i64 %index310 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store <4 x i32> %i.fe, ptr %i.fg, align 4, !tbaa !101
  store <4 x i32> %i.ff, ptr %i.fh, align 4, !tbaa !101
  %index.next311 = add nuw i64 %index310, 8       ; 2 uses
  %i.fi = icmp eq i64 %index.next311, %n.vec306
  br i1 %i.fi, label %middle.block312, label %vector.body309, !llvm.loop !2432

middle.block312:                                  ; preds = %vector.body309
  %cmp.n313 = icmp eq i64 %i.ee, %n.vec306
  br i1 %cmp.n313, label %.thread, label %scalar.ph303.preheader

scalar.ph303.preheader:                           ; preds = %vector.memcheck301, %.lr.ph218, %middle.block312
  %.0110217.ph = phi i64 [ 0, %vector.memcheck301 ], [ 0, %.lr.ph218 ], [ %n.vec306, %middle.block312 ] ; 4 uses
  %.1114216.ph = phi i64 [ %.0113210, %vector.memcheck301 ], [ %.0113210, %.lr.ph218 ], [ %i.et, %middle.block312 ] ; 3 uses
  %15 = sub i64 %i.do, %.0111211
  %i.fj = xor i64 %.0110217.ph, -1
  %i.fk = add i64 %i.do, %i.fj
  %xtraiter338 = and i64 %15, 1
  %lcmp.mod339.not = icmp eq i64 %xtraiter338, 0
  br i1 %lcmp.mod339.not, label %scalar.ph303.prol.loopexit, label %scalar.ph303.prol

scalar.ph303.prol:                                ; preds = %scalar.ph303.preheader
  %i.fl = add i64 %.0110217.ph, %.0111211         ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.fl
  store i32 %i.eg, ptr %i.fm, align 4, !tbaa !101
  %i.fn = trunc i64 %i.fl to i32
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %.1114216.ph
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !101
  %i.fp = add i64 %.1114216.ph, 1                 ; 2 uses
  %i.fq = or disjoint i64 %.0110217.ph, 1
  br label %scalar.ph303.prol.loopexit

scalar.ph303.prol.loopexit:                       ; preds = %scalar.ph303.prol, %scalar.ph303.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph303.preheader ], [ %i.fp, %scalar.ph303.prol ]
  %.0110217.unr = phi i64 [ %.0110217.ph, %scalar.ph303.preheader ], [ %i.fq, %scalar.ph303.prol ]
  %.1114216.unr = phi i64 [ %.1114216.ph, %scalar.ph303.preheader ], [ %i.fp, %scalar.ph303.prol ]
  %i.fr = icmp eq i64 %i.fk, %.0111211
  br i1 %i.fr, label %.thread, label %scalar.ph303.preheader.new

scalar.ph303.preheader.new:                       ; preds = %scalar.ph303.prol.loopexit
  %invariant.op360 = add i64 1, %.0111211
  br label %scalar.ph303

scalar.ph303:                                     ; preds = %scalar.ph303, %scalar.ph303.preheader.new
  %.0110217 = phi i64 [ %.0110217.unr, %scalar.ph303.preheader.new ], [ %i.gb, %scalar.ph303 ] ; 3 uses
  %.1114216 = phi i64 [ %.1114216.unr, %scalar.ph303.preheader.new ], [ %i.ga, %scalar.ph303 ] ; 3 uses
  %i.fs = add i64 %.0110217, %.0111211            ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.fs
  store i32 %i.eg, ptr %i.ft, align 4, !tbaa !101
  %i.fu = trunc i64 %i.fs to i32
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %.1114216
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !101
  %.reass361 = add i64 %.0110217, %invariant.op360 ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.reass361
  store i32 %i.eg, ptr %i.fw, align 4, !tbaa !101
  %i.fx = trunc i64 %.reass361 to i32
  %i.fy = getelementptr [4 x i8], ptr %i.em, i64 %.1114216
  %i.fz = getelementptr i8, ptr %i.fy, i64 4
  store i32 %i.fx, ptr %i.fz, align 4, !tbaa !101
  %i.ga = add i64 %.1114216, 2                    ; 2 uses
  %i.gb = add nuw i64 %.0110217, 2                ; 2 uses
  %exitcond241.not.1 = icmp eq i64 %i.gb, %i.ee
  br i1 %exitcond241.not.1, label %.thread, label %scalar.ph303, !llvm.loop !2433

.thread:                                          ; preds = %scalar.ph303.prol.loopexit, %scalar.ph303, %middle.block312, %bb.ak
  %.2 = phi i64 [ %.0113210, %bb.ak ], [ %i.et, %middle.block312 ], [ %.lcssa.unr, %scalar.ph303.prol.loopexit ], [ %i.ga, %scalar.ph303 ]
  %i.gc = add i64 %i.dy, %i.ee
  store i64 %i.gc, ptr %i.du, align 8, !tbaa !915
  br label %_ZN6duckdb12RLEScanStateIjE12SkipInternalEPtm.exit

bb.al:                                            ; preds = %bb.aj
  %i.gd = icmp ne i64 %i.dy, %i.ec
  %or.cond220 = and i1 %i.gd, %i.ek
  br i1 %or.cond220, label %.lr.ph208.preheader, label %.loopexit

.lr.ph208.preheader:                              ; preds = %bb.al
  %min.iters.check = icmp ult i64 %i.ed, 8
  br i1 %min.iters.check, label %.lr.ph208.preheader316, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph208.preheader
  %i.ge = shl i64 %.0113210, 2
  %i.gf = shl i64 %.0111211, 2
  %i.gg = add i64 %i.ge, %i.dw
  %i.gh = add i64 %i.gf, %i.dj
  %i.gi = sub i64 %i.gh, %i.gg
  %diff.check = icmp ugt i64 %i.gi, -32
  br i1 %diff.check, label %.lr.ph208.preheader316, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ed, -8                      ; 4 uses
  %i.gj = add i64 %.0113210, %n.vec               ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.eg, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gk = insertelement <4 x i64> poison, i64 %.0111211, i64 0
  %i.gl = shufflevector <4 x i64> %i.gk, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.di, i64 %.0111211
  %i.gm = getelementptr [4 x i8], ptr %i.dv, i64 %.0113210
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.gn = insertelement <4 x i64> poison, i64 %index, i64 0
  %i.go = shufflevector <4 x i64> %i.gn, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gp = or disjoint <4 x i64> %i.go, <i64 4, i64 5, i64 6, i64 7>
  %i.gq = or disjoint <4 x i64> %i.go, <i64 0, i64 1, i64 2, i64 3>
  %i.gr = add <4 x i64> %i.gq, %i.gl
  %i.gs = add <4 x i64> %i.gp, %i.gl
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %gep, align 4, !tbaa !101
  store <4 x i32> %broadcast.splat, ptr %i.gt, align 4, !tbaa !101
  %i.gu = trunc <4 x i64> %i.gr to <4 x i32>
  %i.gv = trunc <4 x i64> %i.gs to <4 x i32>
  %i.gw = getelementptr [4 x i8], ptr %i.gm, i64 %index ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  store <4 x i32> %i.gu, ptr %i.gw, align 4, !tbaa !101
  store <4 x i32> %i.gv, ptr %i.gx, align 4, !tbaa !101
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gy = icmp eq i64 %index.next, %n.vec
  br i1 %i.gy, label %middle.block, label %vector.body, !llvm.loop !2434

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ed, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph208.preheader316

.lr.ph208.preheader316:                           ; preds = %vector.memcheck, %.lr.ph208.preheader, %middle.block
  %.0109207.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph208.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.3206.ph = phi i64 [ %.0113210, %vector.memcheck ], [ %.0113210, %.lr.ph208.preheader ], [ %i.gj, %middle.block ] ; 3 uses
  %16 = sub i64 %i.ec, %i.dy
  %i.gz = xor i64 %.0109207.ph, -1
  %i.ha = add i64 %i.gz, %i.ec
  %xtraiter334 = and i64 %16, 1
  %lcmp.mod335.not = icmp eq i64 %xtraiter334, 0
  br i1 %lcmp.mod335.not, label %.lr.ph208.prol.loopexit, label %.lr.ph208.prol

.lr.ph208.prol:                                   ; preds = %.lr.ph208.preheader316
  %i.hb = add i64 %.0109207.ph, %.0111211         ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.hb
  store i32 %i.eg, ptr %i.hc, align 4, !tbaa !101
  %i.hd = trunc i64 %i.hb to i32
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.3206.ph
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !101
  %i.hf = add i64 %.3206.ph, 1                    ; 2 uses
  %i.hg = or disjoint i64 %.0109207.ph, 1
  br label %.lr.ph208.prol.loopexit

.lr.ph208.prol.loopexit:                          ; preds = %.lr.ph208.prol, %.lr.ph208.preheader316
  %.lcssa317.unr = phi i64 [ poison, %.lr.ph208.preheader316 ], [ %i.hf, %.lr.ph208.prol ]
  %.0109207.unr = phi i64 [ %.0109207.ph, %.lr.ph208.preheader316 ], [ %i.hg, %.lr.ph208.prol ]
  %.3206.unr = phi i64 [ %.3206.ph, %.lr.ph208.preheader316 ], [ %i.hf, %.lr.ph208.prol ]
  %i.hh = icmp eq i64 %i.ha, %i.dy
  br i1 %i.hh, label %.loopexit, label %.lr.ph208.preheader316.new

.lr.ph208.preheader316.new:                       ; preds = %.lr.ph208.prol.loopexit
  %invariant.op = add i64 1, %.0111211
  br label %.lr.ph208

.lr.ph208:                                        ; preds = %.lr.ph208, %.lr.ph208.preheader316.new
  %.0109207 = phi i64 [ %.0109207.unr, %.lr.ph208.preheader316.new ], [ %i.hr, %.lr.ph208 ] ; 3 uses
  %.3206 = phi i64 [ %.3206.unr, %.lr.ph208.preheader316.new ], [ %i.hq, %.lr.ph208 ] ; 3 uses
  %i.hi = add i64 %.0109207, %.0111211            ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.hi
  store i32 %i.eg, ptr %i.hj, align 4, !tbaa !101
  %i.hk = trunc i64 %i.hi to i32
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.3206
  store i32 %i.hk, ptr %i.hl, align 4, !tbaa !101
  %.reass = add i64 %.0109207, %invariant.op      ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.reass
  store i32 %i.eg, ptr %i.hm, align 4, !tbaa !101
  %i.hn = trunc i64 %.reass to i32
  %i.ho = getelementptr [4 x i8], ptr %i.dv, i64 %.3206
  %i.hp = getelementptr i8, ptr %i.ho, i64 4
  store i32 %i.hn, ptr %i.hp, align 4, !tbaa !101
  %i.hq = add i64 %.3206, 2                       ; 2 uses
  %i.hr = add nuw i64 %.0109207, 2                ; 2 uses
  %exitcond240.not.1 = icmp eq i64 %i.hr, %i.ed
  br i1 %exitcond240.not.1, label %.loopexit, label %.lr.ph208, !llvm.loop !2435

.loopexit:                                        ; preds = %.lr.ph208.prol.loopexit, %.lr.ph208, %middle.block, %bb.al
  %.4 = phi i64 [ %.0113210, %bb.al ], [ %i.gj, %middle.block ], [ %.lcssa317.unr, %.lr.ph208.prol.loopexit ], [ %i.hq, %.lr.ph208 ] ; 2 uses
  %i.hs = add i64 %i.ed, %.0111211                ; 2 uses
  %i.ht = add i64 %i.dz, 1                        ; 2 uses
  store i64 %i.ht, ptr %i.dt, align 8, !tbaa !914
  store i64 0, ptr %i.du, align 8, !tbaa !915
  %i.hu = icmp ult i64 %i.hs, %i.do
  br i1 %i.hu, label %bb.aj, label %_ZN6duckdb12RLEScanStateIjE12SkipInternalEPtm.exit

._crit_edge204:                                   ; preds = %bb.ba, %.preheader187
  %.7.lcssa = phi i64 [ 0, %.preheader187 ], [ %.8, %bb.ba ] ; 2 uses
  %.0108.lcssa = phi i64 [ 0, %.preheader187 ], [ %i.im, %bb.ba ]
  %i.hv = sub i64 %2, %.0108.lcssa                ; 2 uses
  %.not9.i = icmp eq i64 %i.hv, 0
  br i1 %.not9.i, label %_ZN6duckdb12RLEScanStateIjE12SkipInternalEPtm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge204
  %i.hw = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %.promoted.i = load i64, ptr %i.hw, align 8, !tbaa !914
  %.promoted11.i = load i64, ptr %i.hx, align 8, !tbaa !915
  br label %bb.am

bb.am:                                            ; preds = %bb.ao, %.lr.ph.i
  %i.hy = phi i64 [ %.promoted11.i, %.lr.ph.i ], [ %i.ii, %bb.ao ] ; 2 uses
  %i.hz = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.ij, %bb.ao ] ; 3 uses
  %.010.i = phi i64 [ %i.hv, %.lr.ph.i ], [ %i.if, %bb.ao ] ; 2 uses
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.hz
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !479
  %i.ic = zext i16 %i.ib to i64                   ; 2 uses
  %i.id = sub i64 %i.ic, %i.hy
  %i.ie = call noundef i64 @llvm.umin.i64(i64 %.010.i, i64 %i.id) ; 2 uses
  %i.if = sub nuw i64 %.010.i, %i.ie              ; 2 uses
  %i.ig = add i64 %i.ie, %i.hy                    ; 2 uses
  %.not8.i = icmp ult i64 %i.ig, %i.ic
  br i1 %.not8.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ih = add i64 %i.hz, 1                        ; 2 uses
  store i64 %i.ih, ptr %i.hw, align 8, !tbaa !914
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ii = phi i64 [ 0, %bb.an ], [ %i.ig, %bb.am ] ; 2 uses
  %i.ij = phi i64 [ %i.ih, %bb.an ], [ %i.hz, %bb.am ]
  %.not.i156 = icmp eq i64 %i.if, 0
  br i1 %.not.i156, label %._crit_edge.i, label %bb.am, !llvm.loop !49

._crit_edge.i:                                    ; preds = %bb.ao
  store i64 %i.ii, ptr %i.hx, align 8, !tbaa !915
  br label %_ZN6duckdb12RLEScanStateIjE12SkipInternalEPtm.exit

bb.ap:                                            ; preds = %.lr.ph203, %bb.ba
  %.0107202 = phi i64 [ 0, %.lr.ph203 ], [ %i.jq, %bb.ba ] ; 2 uses
  %.0108201 = phi i64 [ 0, %.lr.ph203 ], [ %i.im, %bb.ba ] ; 2 uses
  %.7200 = phi i64 [ 0, %.lr.ph203 ], [ %.8, %bb.ba ] ; 3 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.0107202
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !101 ; 2 uses
  %i.im = zext i32 %i.il to i64                   ; 5 uses
  %i.in = icmp samesign ugt i64 %.0108201, %i.im
  br i1 %i.in, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %bb.ap
  %i.io = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.58, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.ar unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.io, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  invoke void @__cxa_throw(ptr nonnull %i.io, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.bu unwind label %bb.at

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.aq
  %i.ip = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.0 = phi i1 [ false, %bb.as ], [ true, %bb.ar ] ; 2 uses
  %i.iq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ir = load ptr, ptr %13, align 8, !tbaa !151  ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.it = icmp eq ptr %i.ir, %i.is
  br i1 %i.it, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.at
  call void @_ZdlPv(ptr noundef %i.ir) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br i1 %.0, label %bb.au, label %bb.bt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br i1 %.0, label %bb.au, label %bb.bt

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn148183 = phi { ptr, i32 } [ %i.ip, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.iq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.iq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.io) #30
  br label %bb.bt

bb.av:                                            ; preds = %bb.ap
  %i.iu = sub nuw nsw i64 %i.im, %.0108201        ; 2 uses
  %.not9.i159 = icmp eq i64 %i.iu, 0
  %.pre242 = load i64, ptr %i.dp, align 8, !tbaa !914 ; 2 uses
  br i1 %.not9.i159, label %_ZN6duckdb12RLEScanStateIjE12SkipInternalEPtm.exit167, label %.lr.ph.i160

.lr.ph.i160:                                      ; preds = %bb.av
  %.promoted11.i162 = load i64, ptr %i.dq, align 8, !tbaa !915
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ay, %.lr.ph.i160
  %i.iv = phi i64 [ %.promoted11.i162, %.lr.ph.i160 ], [ %i.jf, %bb.ay ] ; 2 uses
  %i.iw = phi i64 [ %.pre242, %.lr.ph.i160 ], [ %i.jg, %bb.ay ] ; 3 uses
  %.010.i163 = phi i64 [ %i.iu, %.lr.ph.i160 ], [ %i.jc, %bb.ay ] ; 2 uses
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.iw
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !479
  %i.iz = zext i16 %i.iy to i64                   ; 2 uses
  %i.ja = sub i64 %i.iz, %i.iv
  %i.jb = call noundef i64 @llvm.umin.i64(i64 %.010.i163, i64 %i.ja) ; 2 uses
  %i.jc = sub nuw nsw i64 %.010.i163, %i.jb       ; 2 uses
  %i.jd = add i64 %i.jb, %i.iv                    ; 2 uses
  %.not8.i164 = icmp ult i64 %i.jd, %i.iz
  br i1 %.not8.i164, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.je = add i64 %i.iw, 1                        ; 2 uses
  store i64 %i.je, ptr %i.dp, align 8, !tbaa !914
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.jf = phi i64 [ 0, %bb.ax ], [ %i.jd, %bb.aw ] ; 2 uses
  %i.jg = phi i64 [ %i.je, %bb.ax ], [ %i.iw, %bb.aw ] ; 2 uses
  %.not.i165 = icmp eq i64 %i.jc, 0
  br i1 %.not.i165, label %._crit_edge.i166, label %bb.aw, !llvm.loop !49

._crit_edge.i166:                                 ; preds = %bb.ay
  store i64 %i.jf, ptr %i.dq, align 8, !tbaa !915
  br label %_ZN6duckdb12RLEScanStateIjE12SkipInternalEPtm.exit167

_ZN6duckdb12RLEScanStateIjE12SkipInternalEPtm.exit167: ; preds = %bb.av, %._crit_edge.i166
  %i.jh = phi i64 [ %.pre242, %bb.av ], [ %i.jg, %._crit_edge.i166 ] ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.jh
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !137, !range !147, !noundef !148
  %i.jk = trunc nuw i8 %i.jj to i1
  br i1 %i.jk, label %bb.az, label %bb.ba
end_hunk_1
