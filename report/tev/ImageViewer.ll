Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ImageViewer?download=true
inline.NumInlined: 16087
inline.NumDeleted: 8272
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_ZN3tev11ImageViewer11selectImageERKNSt3__110shared_ptrINS_5ImageEEEb:bb.a
  %.064183.epil.init = phi i64 [ 0, %.lr.ph185.preheader ], [ %i.ca, %._crit_edge186.loopexit.unr-lcssa ]
  %lcmp.mod275 = icmp ne i64 %xtraiter272, 0
  tail call void @llvm.assume(i1 %lcmp.mod275)
  br label %.lr.ph185.epil

.lr.ph185.epil:                                   ; preds = %.lr.ph185.epil, %.lr.ph185.epil.preheader
  %.064183.epil = phi i64 [ %i.z, %.lr.ph185.epil ], [ %.064183.epil.init, %.lr.ph185.epil.preheader ] ; 2 uses
  %epil.iter273 = phi i64 [ %epil.iter273.next, %.lr.ph185.epil ], [ 0, %.lr.ph185.epil.preheader ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.064183.epil
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !398, !nonnull !385, !noundef !385
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 240
  store i8 0, ptr %i.y, align 16, !tbaa !441
  %i.z = add nuw i64 %.064183.epil, 1
  %epil.iter273.next = add i64 %epil.iter273, 1   ; 2 uses
  %epil.iter273.cmp.not = icmp eq i64 %epil.iter273.next, %xtraiter272
  br i1 %epil.iter273.cmp.not, label %._crit_edge186, label %.lr.ph185.epil, !llvm.loop !1131

._crit_edge186:                                   ; preds = %._crit_edge186.loopexit.unr-lcssa, %.lr.ph185.epil, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !443
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !444 ; 5 uses
  store ptr null, ptr %i.ab, align 16, !tbaa !444
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge186
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = atomicrmw add ptr %i.ad, i64 -1 acq_rel, align 8
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.g, label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !89
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(24) %i.ac) #47, !inline_history !10
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ac) #47
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i.i

_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i.i: ; preds = %._crit_edge186, %bb.f, %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.ak = load ptr, ptr %i.aj, align 16, !tbaa !250 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 248
  store ptr null, ptr %i.al, align 8, !tbaa !443
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 256 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !444 ; 5 uses
  store ptr null, ptr %i.am, align 8, !tbaa !444
  %.not.i2.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i2.i.i, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit88, label %bb.h

bb.h:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = atomicrmw add ptr %i.ao, i64 -1 acq_rel, align 8
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.i, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit88

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !89
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(24) %i.an) #47, !inline_history !1132
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.an) #47
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit88

_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit88: ; preds = %bb.i, %bb.h, %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1112
  br label %bb.j

.loopexit:                                        ; preds = %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.loopexit.split-lp:                               ; preds = %bb.l, %_ZN3tev11ImageViewer35setDisplayWhiteLevelToImageMetadataEv.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.lr.ph185:                                        ; preds = %.lr.ph185, %.lr.ph185.preheader.new
  %.064183 = phi i64 [ 0, %.lr.ph185.preheader.new ], [ %i.ca, %.lr.ph185 ] ; 9 uses
  %niter277 = phi i64 [ 0, %.lr.ph185.preheader.new ], [ %niter277.next.7, %.lr.ph185 ]
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.064183
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !398, !nonnull !385, !noundef !385
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 240
  store i8 0, ptr %i.ax, align 16, !tbaa !441
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.064183
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !398, !nonnull !385, !noundef !385
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 240
  store i8 0, ptr %i.bb, align 16, !tbaa !441
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.064183
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !398, !nonnull !385, !noundef !385
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 240
  store i8 0, ptr %i.bf, align 16, !tbaa !441
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.064183
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !398, !nonnull !385, !noundef !385
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 240
  store i8 0, ptr %i.bj, align 16, !tbaa !441
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.064183
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !398, !nonnull !385, !noundef !385
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 240
  store i8 0, ptr %i.bn, align 16, !tbaa !441
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.064183
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !398, !nonnull !385, !noundef !385
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 240
  store i8 0, ptr %i.br, align 16, !tbaa !441
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.064183
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !398, !nonnull !385, !noundef !385
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 240
  store i8 0, ptr %i.bv, align 16, !tbaa !441
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.064183
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !398, !nonnull !385, !noundef !385
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 240
  store i8 0, ptr %i.bz, align 16, !tbaa !441
  %i.ca = add nuw i64 %.064183, 8                 ; 2 uses
  %niter277.next.7 = add i64 %niter277, 8         ; 2 uses
  %niter277.ncmp.7 = icmp eq i64 %niter277.next.7, %unroll_iter276
  br i1 %niter277.ncmp.7, label %._crit_edge186.loopexit.unr-lcssa, label %.lr.ph185, !llvm.loop !1133

bb.j:                                             ; preds = %bb.k, %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit88
  %i.cb = load ptr, ptr %i.au, align 8, !tbaa !419 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 80
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 88
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !396
  %i.cf = load ptr, ptr %i.cc, align 8, !tbaa !397
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = lshr exact i64 %i.ci, 3
  %i.ck = trunc i64 %i.cj to i32                  ; 2 uses
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cm = add nsw i32 %i.ck, -1
  invoke void @_ZN7nanogui6Widget15remove_child_atEi(ptr noundef nonnull align 8 dereferenceable(148) %i.cb, i32 noundef %i.cm)
          to label %bb.j unwind label %.loopexit, !llvm.loop !1134

bb.l:                                             ; preds = %bb.j
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !355
  invoke void @_ZN7nanogui8FloatBoxIfE9set_valueEf(ptr noundef nonnull align 16 dereferenceable(488) %i.co, float noundef 8.000000e+01)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.cq = load ptr, ptr %i.cp, align 16, !tbaa !351
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 496
  %i.cs = load i32, ptr %i.cr, align 16, !tbaa !447
  %i.ct = icmp eq i32 %i.cs, 2
  br i1 %i.ct, label %bb.m, label %_ZN3tev11ImageViewer18setImageWhiteLevelEf.exit

bb.m:                                             ; preds = %.noexc
  %i.cu = load ptr, ptr %i.aa, align 8, !tbaa !439 ; 2 uses
  %.not.i.i89 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i89, label %_ZN3tev11ImageViewer35setDisplayWhiteLevelToImageMetadataEv.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 304
  %i.cw = load float, ptr %i.cv, align 8, !tbaa !504
  br label %_ZN3tev11ImageViewer35setDisplayWhiteLevelToImageMetadataEv.exit.i

_ZN3tev11ImageViewer35setDisplayWhiteLevelToImageMetadataEv.exit.i: ; preds = %bb.n, %bb.m
  %i.cx = phi float [ %i.cw, %bb.n ], [ 8.000000e+01, %bb.m ]
  invoke void @_ZN3tev11ImageViewer20setDisplayWhiteLevelEf(ptr noundef nonnull readonly align 16 dereferenceable(1408) %0, float noundef %i.cx)
          to label %_ZN3tev11ImageViewer18setImageWhiteLevelEf.exit unwind label %.loopexit.split-lp

_ZN3tev11ImageViewer18setImageWhiteLevelEf.exit:  ; preds = %.noexc, %_ZN3tev11ImageViewer35setDisplayWhiteLevelToImageMetadataEv.exit.i
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 657
  store i8 1, ptr %i.cy, align 1, !tbaa !214
  br label %bb.ay

bb.o:                                             ; preds = %._crit_edge
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !505 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.dc = load ptr, ptr %i.db, align 16, !tbaa !506 ; 4 uses
  %.not7.i.i.i.i = icmp eq ptr %i.da, %i.dc
  br i1 %.not7.i.i.i.i, label %.loopexit164, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.o, %bb.p
  %.08.i.i.i.i = phi ptr [ %i.df, %bb.p ], [ %i.da, %bb.o ] ; 3 uses
  %i.dd = load ptr, ptr %.08.i.i.i.i, align 8, !tbaa !439
  %i.de = icmp eq ptr %i.dd, %.pre
  br i1 %i.de, label %.loopexit164, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.df, %i.dc
  br i1 %.not.i.i.i.i, label %.loopexit164, label %.lr.ph.i.i.i.i, !llvm.loop !11

.loopexit164:                                     ; preds = %bb.p, %.lr.ph.i.i.i.i, %bb.o
  %.0.lcssa.i.i.i.i = phi ptr [ %i.da, %bb.o ], [ %i.dc, %bb.p ], [ %.08.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.dg = ptrtoint ptr %i.da to i64               ; 2 uses
  %i.dh = ptrtoint ptr %.0.lcssa.i.i.i.i to i64
  %i.di = sub i64 %i.dh, %i.dg                    ; 2 uses
  %i.dj = ashr exact i64 %i.di, 4
  %i.dk = ptrtoint ptr %i.dc to i64
  %i.dl = sub i64 %i.dk, %i.dg
  %.not.i91 = icmp ult i64 %i.di, %i.dl
  %i.dm = select i1 %.not.i91, i64 %i.dj, i64 0   ; 6 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !417 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 80
  %sext = shl i64 %i.dm, 32
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !397 ; 8 uses
  %i.dr = ashr exact i64 %sext, 29
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !398
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 104
  %i.dv = load i8, ptr %i.du, align 8, !tbaa !234, !range !331, !noundef !385
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %.preheader, label %bb.ay

.preheader:                                       ; preds = %.loopexit164
  %i.dx = getelementptr inbounds nuw i8, ptr %i.do, i64 88
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !396 ; 2 uses
  %.not187 = icmp eq ptr %i.dy, %i.dq
  br i1 %.not187, label %._crit_edge171, label %.lr.ph170.preheader

.lr.ph170.preheader:                              ; preds = %.preheader
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dq to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = ashr exact i64 %i.eb, 3                 ; 3 uses
  %xtraiter = and i64 %i.ec, 3                    ; 3 uses
  %i.ed = icmp ult i64 %i.ec, 4
  br i1 %i.ed, label %.lr.ph170.epil.preheader, label %.lr.ph170.preheader.new

.lr.ph170.preheader.new:                          ; preds = %.lr.ph170.preheader
  %unroll_iter = and i64 %i.ec, -4
  br label %.lr.ph170

._crit_edge171.loopexit.unr-lcssa:                ; preds = %.lr.ph170
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge171, label %.lr.ph170.epil.preheader

.lr.ph170.epil.preheader:                         ; preds = %._crit_edge171.loopexit.unr-lcssa, %.lr.ph170.preheader
  %.067169.epil.init = phi i64 [ 0, %.lr.ph170.preheader ], [ %i.hf, %._crit_edge171.loopexit.unr-lcssa ]
  %lcmp.mod271 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod271)
  br label %.lr.ph170.epil

.lr.ph170.epil:                                   ; preds = %.lr.ph170.epil, %.lr.ph170.epil.preheader
  %.067169.epil = phi i64 [ %i.ej, %.lr.ph170.epil ], [ %.067169.epil.init, %.lr.ph170.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph170.epil ], [ 0, %.lr.ph170.epil.preheader ]
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.067169.epil
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !398, !nonnull !385, !noundef !385
  %i.eg = icmp eq i64 %.067169.epil, %i.dm
  %i.eh = zext i1 %i.eg to i8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 240
  store i8 %i.eh, ptr %i.ei, align 16, !tbaa !441
  %i.ej = add nuw i64 %.067169.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge171, label %.lr.ph170.epil, !llvm.loop !1135

._crit_edge171:                                   ; preds = %._crit_edge171.loopexit.unr-lcssa, %.lr.ph170.epil, %.preheader
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 6 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !507 ; 4 uses
  %.not.i.i92 = icmp eq ptr %i.em, null
  br i1 %.not.i.i92, label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i, label %bb.q

bb.q:                                             ; preds = %._crit_edge171
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = atomicrmw add ptr %i.en, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i

_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i: ; preds = %bb.q, %._crit_edge171
  store ptr %.pre, ptr %i.ek, align 8, !tbaa !443
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 3 uses
  %i.eq = load ptr, ptr %i.ep, align 16, !tbaa !444 ; 5 uses
  store ptr %i.em, ptr %i.ep, align 16, !tbaa !444
  %.not.i2.i = icmp eq ptr %i.eq, null
  br i1 %.not.i2.i, label %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100ERKS3_.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = atomicrmw add ptr %i.er, i64 -1 acq_rel, align 8
  %i.et = icmp eq i64 %i.es, 0
  br i1 %i.et, label %bb.s, label %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100ERKS3_.exitthread-pre-split

bb.s:                                             ; preds = %bb.r
  %i.eu = load ptr, ptr %i.eq, align 8, !tbaa !89
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8
  tail call void %i.ew(ptr noundef nonnull align 8 dereferenceable(24) %i.eq) #47, !inline_history !12
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.eq) #47
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100ERKS3_.exitthread-pre-split

_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100ERKS3_.exitthread-pre-split: ; preds = %bb.s, %bb.r
  %.pr = load ptr, ptr %i.ep, align 16, !tbaa !507
  %.pre195 = load ptr, ptr %i.ek, align 8, !tbaa !439
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100ERKS3_.exit

_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100ERKS3_.exit: ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100ERKS3_.exitthread-pre-split, %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i
  %i.ex = phi ptr [ %.pre195, %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100ERKS3_.exitthread-pre-split ], [ %.pre, %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i ]
  %i.ey = phi ptr [ %.pr, %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100ERKS3_.exitthread-pre-split ], [ %i.em, %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i ] ; 7 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 16, !tbaa !250 ; 2 uses
  %.not.i93 = icmp eq ptr %i.ey, null             ; 2 uses
  br i1 %.not.i93, label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i.i95, label %bb.t

bb.t:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100ERKS3_.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  %i.fc = atomicrmw add ptr %i.fb, i64 1 monotonic, align 8 ; 0 uses
  %i.fd = atomicrmw add ptr %i.fb, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i.i95

_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i.i95: ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100ERKS3_.exit, %bb.t
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 248
  store ptr %i.ex, ptr %i.fe, align 8, !tbaa !443
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 256 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !444 ; 5 uses
  store ptr %i.ey, ptr %i.ff, align 8, !tbaa !444
  %.not.i2.i.i96 = icmp eq ptr %i.fg, null
  br i1 %.not.i2.i.i96, label %_ZN3tev11ImageCanvas8setImageENSt3__110shared_ptrINS_5ImageEEE.exit97, label %bb.u

bb.u:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i.i95
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = atomicrmw add ptr %i.fh, i64 -1 acq_rel, align 8
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %bb.v, label %_ZN3tev11ImageCanvas8setImageENSt3__110shared_ptrINS_5ImageEEE.exit97

bb.v:                                             ; preds = %bb.u
  %i.fk = load ptr, ptr %i.fg, align 8, !tbaa !89
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8
  tail call void %i.fm(ptr noundef nonnull align 8 dereferenceable(24) %i.fg) #47, !inline_history !1132
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fg) #47
  br label %_ZN3tev11ImageCanvas8setImageENSt3__110shared_ptrINS_5ImageEEE.exit97

_ZN3tev11ImageCanvas8setImageENSt3__110shared_ptrINS_5ImageEEE.exit97: ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i.i95, %bb.u, %bb.v
  br i1 %.not.i93, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit99, label %bb.w

bb.w:                                             ; preds = %_ZN3tev11ImageCanvas8setImageENSt3__110shared_ptrINS_5ImageEEE.exit97
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fo = atomicrmw add ptr %i.fn, i64 -1 acq_rel, align 8
  %i.fp = icmp eq i64 %i.fo, 0
  br i1 %i.fp, label %bb.x, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit99

bb.x:                                             ; preds = %bb.w
  %i.fq = load ptr, ptr %i.ey, align 8, !tbaa !89
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8
  tail call void %i.fs(ptr noundef nonnull align 8 dereferenceable(24) %i.ey) #47, !inline_history !13
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ey) #47
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit99

_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit99: ; preds = %_ZN3tev11ImageCanvas8setImageENSt3__110shared_ptrINS_5ImageEEE.exit97, %bb.w, %bb.x
  %i.ft = load ptr, ptr %i.ek, align 8, !tbaa !439
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 304
  %i.fv = load float, ptr %i.fu, align 8, !tbaa !504
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !355
  invoke void @_ZN7nanogui8FloatBoxIfE9set_valueEf(ptr noundef nonnull align 16 dereferenceable(488) %i.fx, float noundef %i.fv)
          to label %.noexc102 unwind label %.loopexit.split-lp160

.noexc102:                                        ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit99
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.fz = load ptr, ptr %i.fy, align 16, !tbaa !351
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 496
  %i.gb = load i32, ptr %i.ga, align 16, !tbaa !447
  %i.gc = icmp eq i32 %i.gb, 2
  br i1 %i.gc, label %bb.y, label %_ZN3tev11ImageViewer18setImageWhiteLevelEf.exit104

bb.y:                                             ; preds = %.noexc102
  %i.gd = load ptr, ptr %i.ek, align 8, !tbaa !439 ; 2 uses
  %.not.i.i100 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i100, label %_ZN3tev11ImageViewer35setDisplayWhiteLevelToImageMetadataEv.exit.i101, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 304
  %i.gf = load float, ptr %i.ge, align 8, !tbaa !504
  br label %_ZN3tev11ImageViewer35setDisplayWhiteLevelToImageMetadataEv.exit.i101

_ZN3tev11ImageViewer35setDisplayWhiteLevelToImageMetadataEv.exit.i101: ; preds = %bb.z, %bb.y
  %i.gg = phi float [ %i.gf, %bb.z ], [ 8.000000e+01, %bb.y ]
  invoke void @_ZN3tev11ImageViewer20setDisplayWhiteLevelEf(ptr noundef nonnull readonly align 16 dereferenceable(1408) %0, float noundef %i.gg)
          to label %_ZN3tev11ImageViewer18setImageWhiteLevelEf.exit104 unwind label %.loopexit.split-lp160

_ZN3tev11ImageViewer18setImageWhiteLevelEf.exit104: ; preds = %_ZN3tev11ImageViewer35setDisplayWhiteLevelToImageMetadataEv.exit.i101, %.noexc102
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  br label %bb.aa

.loopexit159:                                     ; preds = %bb.ab
  %lpad.loopexit161 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.loopexit.split-lp160:                            ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit99, %_ZN3tev11ImageViewer35setDisplayWhiteLevelToImageMetadataEv.exit.i101
  %lpad.loopexit.split-lp162 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.lr.ph170:                                        ; preds = %.lr.ph170, %.lr.ph170.preheader.new
  %.067169 = phi i64 [ 0, %.lr.ph170.preheader.new ], [ %i.hf, %.lr.ph170 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph170.preheader.new ], [ %niter.next.3, %.lr.ph170 ]
end_hunk_0
begin_hunk_1_@_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev:bb.a
_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3tev11ImageViewer15selectReferenceERKNSt3__110shared_ptrINS_5ImageEEE(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(1408) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !439    ; 4 uses
  %.not67 = icmp eq ptr %i.a, null
  br i1 %.not67, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !417  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !396  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !397  ; 11 uses
  %.not90 = icmp eq ptr %i.f, %i.g
  br i1 %.not90, label %._crit_edge83, label %.lr.ph82.preheader

.lr.ph82.preheader:                               ; preds = %bb.b
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3                   ; 3 uses
  %xtraiter122 = and i64 %i.k, 7                  ; 3 uses
  %i.l = icmp ult i64 %i.k, 8
  br i1 %i.l, label %.lr.ph82.epil.preheader, label %.lr.ph82.preheader.new

.lr.ph82.preheader.new:                           ; preds = %.lr.ph82.preheader
  %unroll_iter126 = and i64 %i.k, -8
  br label %.lr.ph82

._crit_edge83.loopexit.unr-lcssa:                 ; preds = %.lr.ph82
  %lcmp.mod124.not = icmp eq i64 %xtraiter122, 0
  br i1 %lcmp.mod124.not, label %._crit_edge83, label %.lr.ph82.epil.preheader

.lr.ph82.epil.preheader:                          ; preds = %._crit_edge83.loopexit.unr-lcssa, %.lr.ph82.preheader
  %.04080.epil.init = phi i64 [ 0, %.lr.ph82.preheader ], [ %i.bf, %._crit_edge83.loopexit.unr-lcssa ]
  %lcmp.mod125 = icmp ne i64 %xtraiter122, 0
  tail call void @llvm.assume(i1 %lcmp.mod125)
  br label %.lr.ph82.epil

.lr.ph82.epil:                                    ; preds = %.lr.ph82.epil, %.lr.ph82.epil.preheader
  %.04080.epil = phi i64 [ %i.p, %.lr.ph82.epil ], [ %.04080.epil.init, %.lr.ph82.epil.preheader ] ; 2 uses
  %epil.iter123 = phi i64 [ %epil.iter123.next, %.lr.ph82.epil ], [ 0, %.lr.ph82.epil.preheader ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.04080.epil
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !398, !nonnull !385, !noundef !385
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 185
  store i8 0, ptr %i.o, align 1, !tbaa !1146
  %i.p = add nuw i64 %.04080.epil, 1
  %epil.iter123.next = add i64 %epil.iter123, 1   ; 2 uses
  %epil.iter123.cmp.not = icmp eq i64 %epil.iter123.next, %xtraiter122
  br i1 %epil.iter123.cmp.not, label %._crit_edge83, label %.lr.ph82.epil, !llvm.loop !1139

._crit_edge83:                                    ; preds = %._crit_edge83.loopexit.unr-lcssa, %.lr.ph82.epil, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.r = load ptr, ptr %i.q, align 16, !tbaa !399 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !396  ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !397  ; 3 uses
  %.not91 = icmp eq ptr %i.u, %i.v
  br i1 %.not91, label %._crit_edge87, label %.lr.ph86.preheader

.lr.ph86.preheader:                               ; preds = %._crit_edge83
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3
  br label %.lr.ph86

.lr.ph82:                                         ; preds = %.lr.ph82, %.lr.ph82.preheader.new
  %.04080 = phi i64 [ 0, %.lr.ph82.preheader.new ], [ %i.bf, %.lr.ph82 ] ; 9 uses
  %niter127 = phi i64 [ 0, %.lr.ph82.preheader.new ], [ %niter127.next.7, %.lr.ph82 ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.04080
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !398, !nonnull !385, !noundef !385
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 185
  store i8 0, ptr %i.ac, align 1, !tbaa !1146
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.04080
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !398, !nonnull !385, !noundef !385
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 185
  store i8 0, ptr %i.ag, align 1, !tbaa !1146
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.04080
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !398, !nonnull !385, !noundef !385
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 185
  store i8 0, ptr %i.ak, align 1, !tbaa !1146
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.04080
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !398, !nonnull !385, !noundef !385
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 185
  store i8 0, ptr %i.ao, align 1, !tbaa !1146
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.04080
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !398, !nonnull !385, !noundef !385
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 185
  store i8 0, ptr %i.as, align 1, !tbaa !1146
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.04080
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !398, !nonnull !385, !noundef !385
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 185
  store i8 0, ptr %i.aw, align 1, !tbaa !1146
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.04080
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !398, !nonnull !385, !noundef !385
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 185
  store i8 0, ptr %i.ba, align 1, !tbaa !1146
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.04080
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !398, !nonnull !385, !noundef !385
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 185
  store i8 0, ptr %i.be, align 1, !tbaa !1146
  %i.bf = add nuw i64 %.04080, 8                  ; 2 uses
  %niter127.next.7 = add i64 %niter127, 8         ; 2 uses
  %niter127.ncmp.7 = icmp eq i64 %niter127.next.7, %unroll_iter126
  br i1 %niter127.ncmp.7, label %._crit_edge83.loopexit.unr-lcssa, label %.lr.ph82, !llvm.loop !1140

._crit_edge87:                                    ; preds = %.lr.ph86, %._crit_edge83
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 856
  store ptr null, ptr %i.bg, align 8, !tbaa !443
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 16, !tbaa !444 ; 5 uses
  store ptr null, ptr %i.bh, align 16, !tbaa !444
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge87
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = atomicrmw add ptr %i.bj, i64 -1 acq_rel, align 8
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.d, label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !89
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  tail call void %i.bo(ptr noundef nonnull align 8 dereferenceable(24) %i.bi) #47, !inline_history !10
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bi) #47
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i.i

_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i.i: ; preds = %._crit_edge87, %bb.c, %bb.d
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.bq = load ptr, ptr %i.bp, align 16, !tbaa !250 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 264
  store ptr null, ptr %i.br, align 8, !tbaa !443
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 272 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !444 ; 5 uses
  store ptr null, ptr %i.bs, align 8, !tbaa !444
  %.not.i2.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i2.i.i, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit44, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = atomicrmw add ptr %i.bu, i64 -1 acq_rel, align 8
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.f, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit44

bb.f:                                             ; preds = %bb.e
  %i.bx = load ptr, ptr %i.bt, align 8, !tbaa !89
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  tail call void %i.bz(ptr noundef nonnull align 8 dereferenceable(24) %i.bt) #47, !inline_history !1141
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bt) #47
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit44

.lr.ph86:                                         ; preds = %.lr.ph86.preheader, %.lr.ph86
  %.04184 = phi i64 [ %i.ce, %.lr.ph86 ], [ 0, %.lr.ph86.preheader ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.04184
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !398, !nonnull !385, !noundef !385
  %i.cc = tail call ptr @__dynamic_cast(ptr nonnull %i.cb, ptr nonnull @_ZTIN7nanogui6WidgetE, ptr nonnull @_ZTIN7nanogui6ButtonE, i64 0) #47
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 105
  store i8 0, ptr %i.cd, align 1, !tbaa !356
  %i.ce = add nuw i64 %.04184, 1                  ; 2 uses
  %exitcond97.not = icmp eq i64 %i.ce, %i.z
  br i1 %exitcond97.not, label %._crit_edge87, label %.lr.ph86, !llvm.loop !1142

bb.g:                                             ; preds = %bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !505 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.ci = load ptr, ptr %i.ch, align 16, !tbaa !506 ; 4 uses
  %.not7.i.i.i.i = icmp eq ptr %i.cg, %i.ci
  br i1 %.not7.i.i.i.i, label %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %bb.h
  %.08.i.i.i.i = phi ptr [ %i.cl, %bb.h ], [ %i.cg, %bb.g ] ; 3 uses
  %i.cj = load ptr, ptr %.08.i.i.i.i, align 8, !tbaa !439
  %i.ck = icmp eq ptr %i.cj, %i.a
  br i1 %i.ck, label %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cl, %i.ci
  br i1 %.not.i.i.i.i, label %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !11

_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit: ; preds = %.lr.ph.i.i.i.i, %bb.h, %bb.g
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cg, %bb.g ], [ %.08.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ci, %bb.h ]
  %i.cm = ptrtoint ptr %i.cg to i64               ; 2 uses
  %i.cn = ptrtoint ptr %.0.lcssa.i.i.i.i to i64
  %i.co = sub i64 %i.cn, %i.cm                    ; 2 uses
  %i.cp = ashr exact i64 %i.co, 4
  %i.cq = ptrtoint ptr %i.ci to i64
  %i.cr = sub i64 %i.cq, %i.cm
  %.not.i45 = icmp ult i64 %i.co, %i.cr
  %i.cs = select i1 %.not.i45, i64 %i.cp, i64 0   ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !417 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 80
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 88
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !396 ; 2 uses
  %i.cy = load ptr, ptr %i.cv, align 8, !tbaa !397 ; 7 uses
  %.not88 = icmp eq ptr %i.cx, %i.cy
  br i1 %.not88, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = ashr exact i64 %i.db, 3                 ; 3 uses
  %xtraiter = and i64 %i.dc, 3                    ; 3 uses
  %i.dd = icmp ult i64 %i.dc, 4
  br i1 %i.dd, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.dc, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.03969.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.er, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod121 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod121)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.03969.epil = phi i64 [ %i.dj, %.lr.ph.epil ], [ %.03969.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.03969.epil
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !398, !nonnull !385, !noundef !385
  %i.dg = icmp eq i64 %.03969.epil, %i.cs
  %i.dh = zext i1 %i.dg to i8
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 185
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !1146
  %i.dj = add nuw i64 %.03969.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !1143

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.dl = load ptr, ptr %i.dk, align 16, !tbaa !399 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 80
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 88
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !396 ; 2 uses
  %i.dp = load ptr, ptr %i.dm, align 8, !tbaa !397 ; 3 uses
  %.not89 = icmp eq ptr %i.do, %i.dp
  br i1 %.not89, label %._crit_edge73, label %.lr.ph72.preheader

.lr.ph72.preheader:                               ; preds = %._crit_edge
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = ashr exact i64 %i.ds, 3
  br label %.lr.ph72

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.03969 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.er, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.03969
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !398, !nonnull !385, !noundef !385
  %i.dw = icmp eq i64 %.03969, %i.cs
  %i.dx = zext i1 %i.dw to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 185
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !1146
  %i.dz = or disjoint i64 %.03969, 1              ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dz
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !398, !nonnull !385, !noundef !385
  %i.ec = icmp eq i64 %i.dz, %i.cs
  %i.ed = zext i1 %i.ec to i8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 185
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !1146
  %i.ef = or disjoint i64 %.03969, 2              ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.ef
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !398, !nonnull !385, !noundef !385
  %i.ei = icmp eq i64 %i.ef, %i.cs
  %i.ej = zext i1 %i.ei to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 185
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !1146
  %i.el = or disjoint i64 %.03969, 3              ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.el
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !398, !nonnull !385, !noundef !385
  %i.eo = icmp eq i64 %i.el, %i.cs
  %i.ep = zext i1 %i.eo to i8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 185
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !1146
  %i.er = add nuw i64 %.03969, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !1144

._crit_edge73:                                    ; preds = %.lr.ph72, %._crit_edge
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !507 ; 4 uses
  %.not.i.i46 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i46, label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge73
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = atomicrmw add ptr %i.ev, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i

_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i: ; preds = %bb.i, %._crit_edge73
  store ptr %i.a, ptr %i.es, align 8, !tbaa !443
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 3 uses
  %i.ey = load ptr, ptr %i.ex, align 16, !tbaa !444 ; 5 uses
  store ptr %i.eu, ptr %i.ex, align 16, !tbaa !444
  %.not.i2.i = icmp eq ptr %i.ey, null
  br i1 %.not.i2.i, label %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100ERKS3_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = atomicrmw add ptr %i.ez, i64 -1 acq_rel, align 8
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %bb.k, label %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100ERKS3_.exitthread-pre-split

bb.k:                                             ; preds = %bb.j
  %i.fc = load ptr, ptr %i.ey, align 8, !tbaa !89
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8
  tail call void %i.fe(ptr noundef nonnull align 8 dereferenceable(24) %i.ey) #47, !inline_history !12
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ey) #47
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100ERKS3_.exitthread-pre-split

_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100ERKS3_.exitthread-pre-split: ; preds = %bb.k, %bb.j
  %.pr = load ptr, ptr %i.ex, align 16, !tbaa !507
  %.pre = load ptr, ptr %i.es, align 8, !tbaa !439
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100ERKS3_.exit

_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100ERKS3_.exit: ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100ERKS3_.exitthread-pre-split, %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i
  %i.ff = phi ptr [ %.pre, %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100ERKS3_.exitthread-pre-split ], [ %i.a, %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i ]
  %i.fg = phi ptr [ %.pr, %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100ERKS3_.exitthread-pre-split ], [ %i.eu, %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i ] ; 7 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.fi = load ptr, ptr %i.fh, align 16, !tbaa !250 ; 2 uses
  %.not.i47 = icmp eq ptr %i.fg, null             ; 2 uses
  br i1 %.not.i47, label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i.i49, label %bb.l

bb.l:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100ERKS3_.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 2 uses
  %i.fk = atomicrmw add ptr %i.fj, i64 1 monotonic, align 8 ; 0 uses
  %i.fl = atomicrmw add ptr %i.fj, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i.i49

_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i.i49: ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100ERKS3_.exit, %bb.l
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 264
  store ptr %i.ff, ptr %i.fm, align 8, !tbaa !443
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 272 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !444 ; 5 uses
  store ptr %i.fg, ptr %i.fn, align 8, !tbaa !444
  %.not.i2.i.i50 = icmp eq ptr %i.fo, null
  br i1 %.not.i2.i.i50, label %_ZN3tev11ImageCanvas12setReferenceENSt3__110shared_ptrINS_5ImageEEE.exit51, label %bb.m

bb.m:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i.i49
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = atomicrmw add ptr %i.fp, i64 -1 acq_rel, align 8
  %i.fr = icmp eq i64 %i.fq, 0
  br i1 %i.fr, label %bb.n, label %_ZN3tev11ImageCanvas12setReferenceENSt3__110shared_ptrINS_5ImageEEE.exit51

bb.n:                                             ; preds = %bb.m
  %i.fs = load ptr, ptr %i.fo, align 8, !tbaa !89
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8
  tail call void %i.fu(ptr noundef nonnull align 8 dereferenceable(24) %i.fo) #47, !inline_history !1141
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fo) #47
  br label %_ZN3tev11ImageCanvas12setReferenceENSt3__110shared_ptrINS_5ImageEEE.exit51

_ZN3tev11ImageCanvas12setReferenceENSt3__110shared_ptrINS_5ImageEEE.exit51: ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i.i49, %bb.m, %bb.n
  br i1 %.not.i47, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit53, label %bb.o

bb.o:                                             ; preds = %_ZN3tev11ImageCanvas12setReferenceENSt3__110shared_ptrINS_5ImageEEE.exit51
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fw = atomicrmw add ptr %i.fv, i64 -1 acq_rel, align 8
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %bb.p, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit53

bb.p:                                             ; preds = %bb.o
  %i.fy = load ptr, ptr %i.fg, align 8, !tbaa !89
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8
  tail call void %i.ga(ptr noundef nonnull align 8 dereferenceable(24) %i.fg) #47, !inline_history !13
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fg) #47
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit53

_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit53: ; preds = %_ZN3tev11ImageCanvas12setReferenceENSt3__110shared_ptrINS_5ImageEEE.exit51, %bb.o, %bb.p
  %i.gb = load ptr, ptr %i.ct, align 8, !tbaa !417 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 80
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !397 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 88
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !396 ; 2 uses
  %.not6874 = icmp eq ptr %i.gd, %i.gf
end_hunk_1
begin_hunk_2_@_ZN3tev11ImageViewer15moveImageInListEmm:bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.049 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.q = load i8, ptr %6, align 8
  %i.r = trunc i8 %i.q to i1
  br i1 %i.r, label %.split, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

.split:                                           ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !220
  %i.u = load i64, ptr %6, align 8
  %i.v = and i64 %i.u, -2
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.v) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  br i1 %.049, label %bb.f, label %bb.ad

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  br i1 %.049, label %bb.f, label %bb.ad

bb.f:                                             ; preds = %.split, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %.pn131 = phi { ptr, i32 } [ %i.o, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ], [ %i.p, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ], [ %i.p, %.split ]
  call void @__cxa_free_exception(ptr %i.k) #47
  br label %bb.ad

bb.g:                                             ; preds = %bb.b
  %i.w = icmp ult i64 %2, %i.i
  br i1 %i.w, label %bb.l, label %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit80, !prof !438

_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit80: ; preds = %bb.g
  %i.x = tail call ptr @__cxa_allocate_exception(i64 16) #47 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47, !noalias !1181
  store ptr @.str.90, ptr %4, align 16, !tbaa !220, !noalias !1181
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 1621, ptr %i.y, align 16, !tbaa !220, !noalias !1181
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 96, ptr %i.z, align 16, !tbaa !220, !noalias !1181
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr @.str.116, ptr %i.aa, align 16, !tbaa !220, !noalias !1181
  invoke void @_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %7, ptr nonnull @.str.120, i64 67, i64 49708, ptr nonnull %4)
          to label %bb.h unwind label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit81.thread

bb.h:                                             ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit80
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47, !noalias !1181
  invoke void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #50
          to label %bb.ae unwind label %bb.j

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit81.thread: ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit80
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.051 = phi i1 [ false, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ad = load i8, ptr %7, align 8
  %i.ae = trunc i8 %i.ad to i1
  br i1 %i.ae, label %.split136, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit81

.split136:                                        ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !220
  %i.ah = load i64, ptr %7, align 8
  %i.ai = and i64 %i.ah, -2
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ai) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  br i1 %.051, label %bb.k, label %bb.ad

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit81: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  br i1 %.051, label %bb.k, label %bb.ad

bb.k:                                             ; preds = %.split136, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit81.thread, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit81
  %.pn59135 = phi { ptr, i32 } [ %i.ab, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit81.thread ], [ %i.ac, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit81 ], [ %i.ac, %.split136 ]
  call void @__cxa_free_exception(ptr %i.x) #47
  br label %bb.ad

bb.l:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !417
  %i.al = trunc i64 %1 to i32
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  %sext = shl i64 %1, 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !397
  %i.ao = ashr exact i64 %sext, 29
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !398 ; 7 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit89, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !89
  %i.at = icmp eq ptr %i.as, getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN3tev11ImageButtonE, i64 16)
  br i1 %i.at, label %.lr.ph, label %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit89

_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit89: ; preds = %bb.l, %bb.m
  %i.au = tail call ptr @__cxa_allocate_exception(i64 16) #47 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47, !noalias !1182
  store ptr @.str.90, ptr %5, align 16, !tbaa !220, !noalias !1182
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 1624, ptr %i.av, align 16, !tbaa !220, !noalias !1182
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 50, ptr %i.aw, align 16, !tbaa !220, !noalias !1182
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr @.str.116, ptr %i.ax, align 16, !tbaa !220, !noalias !1182
  invoke void @_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %8, ptr nonnull @.str.122, i64 40, i64 49708, ptr nonnull %5)
          to label %bb.n unwind label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit90.thread

bb.n:                                             ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit89
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47, !noalias !1182
  invoke void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_throw(ptr nonnull %i.au, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #50
          to label %bb.ae unwind label %bb.p

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit90.thread: ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit89
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47
  br label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %.047 = phi i1 [ false, %bb.o ], [ true, %bb.n ] ; 2 uses
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ba = load i8, ptr %8, align 8
  %i.bb = trunc i8 %i.ba to i1
  br i1 %i.bb, label %.split142, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit90

.split142:                                        ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !220
  %i.be = load i64, ptr %8, align 8
  %i.bf = and i64 %i.be, -2
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bf) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47
  br i1 %.047, label %bb.q, label %bb.ad

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit90: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47
  br i1 %.047, label %bb.q, label %bb.ad

bb.q:                                             ; preds = %.split142, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit90.thread, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit90
  %.pn61141 = phi { ptr, i32 } [ %i.ay, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit90.thread ], [ %i.az, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit90 ], [ %i.az, %.split142 ]
  call void @__cxa_free_exception(ptr %i.au) #47
  br label %bb.ad

.lr.ph:                                           ; preds = %bb.m
  tail call void @_ZNK7nanogui6Object7inc_refEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #47
  %i.bg = load ptr, ptr %i.aj, align 8, !tbaa !417
  tail call void @_ZN7nanogui6Widget15remove_child_atEi(ptr noundef nonnull align 8 dereferenceable(148) %i.bg, i32 noundef %i.al)
  %i.bh = load ptr, ptr %i.aj, align 8, !tbaa !417 ; 2 uses
  %i.bi = trunc i64 %2 to i32
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !89
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  tail call void %i.bl(ptr noundef nonnull align 8 dereferenceable(148) %i.bh, i32 noundef %i.bi, ptr noundef nonnull %i.aq)
  tail call void @_ZNK7nanogui6Object7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #47
  %i.bm = icmp ugt i64 %2, %1
  %i.bn = select i1 %i.bm, i64 1, i64 -1          ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aq, i64 352 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  br label %bb.w

._crit_edge:                                      ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #47
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !505 ; 2 uses
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %1 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !507 ; 2 uses
  %i.bv = load <2 x ptr>, ptr %i.br, align 8, !tbaa !216
  store <2 x ptr> %i.bv, ptr %9, align 16, !tbaa !216
  %.not.i91 = icmp eq ptr %i.bu, null
  br i1 %.not.i91, label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bx = atomicrmw add ptr %i.bw, i64 1 monotonic, align 8 ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !505
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit

_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit: ; preds = %._crit_edge, %bb.r
  %i.by = phi ptr [ %i.bq, %._crit_edge ], [ %.pre, %bb.r ]
  %i.bz = getelementptr inbounds [16 x i8], ptr %i.by, i64 %1 ; 5 uses
  %i.ca = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %i.cc = load ptr, ptr %i.c, align 16, !tbaa !506 ; 3 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.cb, %i.cc
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrIN3tev5ImageEEES5_EET0_T_S7_S6_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit, %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100EOS3_.exit.i.i.i.i.i.i
  %storemerge9.i.i.i.i.i.i = phi ptr [ %i.cn, %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100EOS3_.exit.i.i.i.i.i.i ], [ %i.bz, %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit ] ; 3 uses
  %.08.i.i.i.i.i.i = phi ptr [ %i.cm, %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100EOS3_.exit.i.i.i.i.i.i ], [ %i.cb, %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 8
  %i.ce = load <2 x ptr>, ptr %.08.i.i.i.i.i.i, align 8, !tbaa !216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i.i, i8 0, i64 16, i1 false)
  %i.cf = load ptr, ptr %i.cd, align 8, !tbaa !444 ; 5 uses
  store <2 x ptr> %i.ce, ptr %storemerge9.i.i.i.i.i.i, align 8, !tbaa !216
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100EOS3_.exit.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = atomicrmw add ptr %i.cg, i64 -1 acq_rel, align 8
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.t, label %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100EOS3_.exit.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.cj = load ptr, ptr %i.cf, align 8, !tbaa !89
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  tail call void %i.cl(ptr noundef nonnull align 8 dereferenceable(24) %i.cf) #47, !inline_history !17
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cf) #47
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100EOS3_.exit.i.i.i.i.i.i

_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100EOS3_.exit.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %.lr.ph.i.i.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 16 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cm, %i.cc
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrIN3tev5ImageEEES5_EET0_T_S7_S6_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !18

_ZNSt3__14moveB8ne180100IPNS_10shared_ptrIN3tev5ImageEEES5_EET0_T_S7_S6_.exit.loopexit.i: ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100EOS3_.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %i.c, align 16, !tbaa !506
  %i.co = ptrtoint ptr %i.cn to i64
  br label %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrIN3tev5ImageEEES5_EET0_T_S7_S6_.exit.i

_ZNSt3__14moveB8ne180100IPNS_10shared_ptrIN3tev5ImageEEES5_EET0_T_S7_S6_.exit.i: ; preds = %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrIN3tev5ImageEEES5_EET0_T_S7_S6_.exit.loopexit.i, %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit
  %.pre-phi = phi i64 [ %i.co, %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrIN3tev5ImageEEES5_EET0_T_S7_S6_.exit.loopexit.i ], [ %i.ca, %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit ]
  %i.cp = phi ptr [ %.pre.i, %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrIN3tev5ImageEEES5_EET0_T_S7_S6_.exit.loopexit.i ], [ %i.cc, %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit ] ; 2 uses
  %storemerge.lcssa.i.i.i.i.i.i = phi ptr [ %i.cn, %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrIN3tev5ImageEEES5_EET0_T_S7_S6_.exit.loopexit.i ], [ %i.bz, %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit ] ; 2 uses
  %i.cq = sub i64 %.pre-phi, %i.ca
  %i.cr = getelementptr inbounds i8, ptr %i.bz, i64 %i.cq
  %.not6.i.i.i = icmp eq ptr %storemerge.lcssa.i.i.i.i.i.i, %i.cp
  br i1 %.not6.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrIN3tev5ImageEEES5_EET0_T_S7_S6_.exit.i, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i
  %.07.i.i.i = phi ptr [ %i.cs, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i ], [ %i.cp, %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrIN3tev5ImageEEES5_EET0_T_S7_S6_.exit.i ] ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -16 ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !507 ; 5 uses
  %.not.i.i.i.i.i4.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i4.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = atomicrmw add ptr %i.cv, i64 -1 acq_rel, align 8
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.v, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.cy = load ptr, ptr %i.cu, align 8, !tbaa !89
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  tail call void %i.da(ptr noundef nonnull align 8 dereferenceable(24) %i.cu) #47, !inline_history !19
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cu) #47
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i: ; preds = %bb.v, %bb.u, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %storemerge.lcssa.i.i.i.i.i.i, %i.cs
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

bb.w:                                             ; preds = %.lr.ph, %bb.x
  %.046145 = phi i64 [ %1, %.lr.ph ], [ %i.dq, %bb.x ] ; 2 uses
  %i.db = load ptr, ptr %i.aj, align 8, !tbaa !417
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 80
  %sext143 = shl i64 %.046145, 32
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !397
  %i.de = ashr exact i64 %sext143, 29
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !398, !nonnull !385, !noundef !385 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 104
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !234, !range !331, !noundef !385
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %_ZN3tev11ImageButton5setIdEm.exit94, label %bb.x

_ZN3tev11ImageButton5setIdEm.exit94:              ; preds = %bb.w
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 352 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 16, !tbaa !510
  %i.dm = sub i64 %i.dl, %i.bn
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  store i64 -1, ptr %i.dn, align 16, !tbaa !220
  store i64 %i.dm, ptr %i.dk, align 16, !tbaa !510
  %i.do = load i64, ptr %i.bo, align 16, !tbaa !510
  %i.dp = add i64 %i.do, %i.bn
  store i64 -1, ptr %i.bp, align 16, !tbaa !220
  store i64 %i.dp, ptr %i.bo, align 16, !tbaa !510
  br label %bb.x

bb.x:                                             ; preds = %_ZN3tev11ImageButton5setIdEm.exit94, %bb.w
  %i.dq = add i64 %.046145, %i.bn                 ; 2 uses
  %.not63 = icmp eq i64 %i.dq, %2
  br i1 %.not63, label %._crit_edge, label %bb.w, !llvm.loop !1179

.loopexit:                                        ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i, %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrIN3tev5ImageEEES5_EET0_T_S7_S6_.exit.i
  store ptr %i.cr, ptr %i.c, align 16, !tbaa !506
  %i.dr = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.ds = getelementptr inbounds [16 x i8], ptr %i.dr, i64 %2
  %i.dt = invoke ptr @_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE6insertENS_11__wrap_iterIPKS4_EERS9_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.y unwind label %bb.ac      ; 0 uses

bb.y:                                             ; preds = %.loopexit
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 657
  store i8 1, ptr %i.du, align 1, !tbaa !214
  %i.dv = load ptr, ptr %i.bs, align 8, !tbaa !507 ; 5 uses
  %.not.i95 = icmp eq ptr %i.dv, null
  br i1 %.not.i95, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = atomicrmw add ptr %i.dw, i64 -1 acq_rel, align 8
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %bb.aa, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit

bb.aa:                                            ; preds = %bb.z
  %i.dz = load ptr, ptr %i.dv, align 8, !tbaa !89
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(24) %i.dv) #47, !inline_history !13
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dv) #47
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit: ; preds = %bb.y, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #47
  br label %bb.ab

bb.ab:                                            ; preds = %bb.a, %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit
  ret void

bb.ac:                                            ; preds = %.loopexit
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #47
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit90, %bb.q, %.split142, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit81, %bb.k, %.split136, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %bb.f, %.split, %bb.ac
  %.pn64.pn.pn = phi { ptr, i32 } [ %i.ac, %.split136 ], [ %i.p, %.split ], [ %i.ec, %bb.ac ], [ %.pn131, %bb.f ], [ %i.p, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ], [ %.pn59135, %bb.k ], [ %i.ac, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit81 ], [ %.pn61141, %bb.q ], [ %i.az, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit90 ], [ %i.az, %.split142 ]
  resume { ptr, i32 } %.pn64.pn.pn

bb.ae:                                            ; preds = %bb.o, %bb.i, %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3tev11ImageViewer10drop_eventERKNSt3__16vectorINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS6_IS8_EEEE(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(1408) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__1::__fs::filesystem::path", align 8 ; 10 uses
  %3 = alloca %"class.std::__1::shared_ptr.35", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !350
  %i.c = load ptr, ptr %1, align 8, !tbaa !348    ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit
  %i.g = phi ptr [ %i.c, %.lr.ph ], [ %i.aq, %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit ]
  %.01113 = phi i64 [ 0, %.lr.ph ], [ %i.ao, %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit ] ; 3 uses
  %i.h = load ptr, ptr %i.d, align 16, !tbaa !524
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.01113 ; 4 uses
  %i.j = load i8, ptr %i.i, align 8               ; 2 uses
  %i.k = trunc i8 %i.j to i1                      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.o = select i1 %i.k, ptr %i.m, ptr %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.q = load i64, ptr %i.p, align 8
  %i.r = lshr i8 %i.j, 1
  %i.s = zext nneg i8 %i.r to i64
  %i.t = select i1 %i.k, i64 %i.q, i64 %i.s
  call void @_ZN3tev6toPathENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::__fs::filesystem::path") align 8 %2, ptr %i.o, i64 %i.t)
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !350
  %i.v = load ptr, ptr %1, align 8, !tbaa !348
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = sdiv exact i64 %i.y, 24
  %i.aa = add nsw i64 %i.z, -1
  %i.ab = icmp eq i64 %.01113, %i.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  invoke void @_ZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEE(ptr noundef nonnull align 8 dereferenceable(300) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nonnull @.str.5, i64 0, i1 noundef zeroext %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !507 ; 5 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = atomicrmw add ptr %i.ad, i64 -1 acq_rel, align 8
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.e, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !89
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(24) %i.ac) #47, !inline_history !13
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ac) #47
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit: ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  %i.aj = load i8, ptr %2, align 8
  %i.ak = trunc i8 %i.aj to i1
  br i1 %i.ak, label %bb.f, label %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit

bb.f:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit
  %i.al = load ptr, ptr %i.f, align 8, !tbaa !220
  %i.am = load i64, ptr %2, align 8
  %i.an = and i64 %i.am, -2
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.an) #49
  br label %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit

_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit: ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  %i.ao = add nuw i64 %.01113, 1                  ; 2 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !350
  %i.aq = load ptr, ptr %1, align 8, !tbaa !348   ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = sdiv exact i64 %i.at, 24
  %i.av = icmp ult i64 %i.ao, %i.au
  br i1 %i.av, label %bb.b, label %._crit_edge, !llvm.loop !1183

bb.g:                                             ; preds = %bb.b
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  %i.ax = load i8, ptr %2, align 8
  %i.ay = trunc i8 %i.ax to i1
  br i1 %i.ay, label %bb.h, label %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit12

bb.h:                                             ; preds = %bb.g
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !220
  %i.ba = load i64, ptr %2, align 8
  %i.bb = and i64 %i.ba, -2
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bb) #49
  br label %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit12

_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit12: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  resume { ptr, i32 } %i.aw

._crit_edge:                                      ; preds = %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit, %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !226
  call void @glfwFocusWindow(ptr noundef %i.bd)
end_hunk_2
begin_hunk_3_@_ZN3tev11ImageViewer11selectGroupENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE:bb.a
  %i.bu = or disjoint i64 %.02440, 1              ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !398, !nonnull !385, !noundef !385
  %i.bx = icmp eq i64 %i.bu, %.sroa.4.sroa.3.1.i
  %i.by = zext i1 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 240
  store i8 %i.by, ptr %i.bz, align 16, !tbaa !441
  %i.ca = or disjoint i64 %.02440, 2              ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !398, !nonnull !385, !noundef !385
  %i.cd = icmp eq i64 %i.ca, %.sroa.4.sroa.3.1.i
  %i.ce = zext i1 %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 240
  store i8 %i.ce, ptr %i.cf, align 16, !tbaa !441
  %i.cg = or disjoint i64 %.02440, 3              ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !398, !nonnull !385, !noundef !385
  %i.cj = icmp eq i64 %i.cg, %.sroa.4.sroa.3.1.i
  %i.ck = zext i1 %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 240
  store i8 %i.ck, ptr %i.cl, align 16, !tbaa !441
  %i.cm = add nuw i64 %.02440, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !1196

bb.d:                                             ; preds = %.lr.ph43
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.030.042, i64 8 ; 2 uses
  %.not38 = icmp eq ptr %i.cn, %i.bo
  br i1 %.not38, label %._crit_edge44.thread, label %.lr.ph43

.lr.ph43:                                         ; preds = %._crit_edge, %bb.d
  %.sroa.030.042 = phi ptr [ %i.cn, %bb.d ], [ %i.bm, %._crit_edge ] ; 2 uses
  %i.co = load ptr, ptr %.sroa.030.042, align 8, !tbaa !398, !nonnull !385, !noundef !385 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 240
  %i.cq = load i8, ptr %i.cp, align 16, !tbaa !441, !range !331, !noundef !385
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %._crit_edge44, label %bb.d

._crit_edge44:                                    ; preds = %.lr.ph43
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bk, i64 40 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !227 ; 2 uses
  %i.cv = sub i32 0, %i.cu                        ; 2 uses
  %i.cw = load i32, ptr %i.cs, align 8, !tbaa !227 ; 2 uses
  %i.cx = icmp slt i32 %i.cw, %i.cv
  br i1 %i.cx, label %.cont, label %.else

.else:                                            ; preds = %._crit_edge44
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cz = load i32, ptr %i.cy, align 16, !tbaa !227
  %i.da = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  %i.db = load i32, ptr %i.da, align 4, !tbaa !227
  %i.dc = add i32 %i.cu, %i.db
  %i.dd = sub i32 %i.cz, %i.dc
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.dd, i32 %i.cw)
  br label %.cont

.cont:                                            ; preds = %.else, %._crit_edge44
  %i.de = phi i32 [ %i.cv, %._crit_edge44 ], [ %spec.select, %.else ]
  %.sroa.0.0.insert.ext = zext i32 %i.de to i64
  store i64 %.sroa.0.0.insert.ext, ptr %i.cs, align 8, !tbaa !220
  br label %._crit_edge44.thread

._crit_edge44.thread:                             ; preds = %bb.d, %._crit_edge, %.cont
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local { ptr, i64 } @_ZN3tev11ImageViewer15nthVisibleGroupEm(ptr noundef nonnull align 16 dereferenceable(1408) %0, i64 noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !419  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !396
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !397  ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3                   ; 2 uses
  %i.k = trunc i64 %i.j to i32                    ; 5 uses
  %i.l = add i64 %1, 1                            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.n = load i8, ptr %i.m, align 16              ; 2 uses
  %i.o = trunc i8 %i.n to i1                      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.q = load ptr, ptr %i.p, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1121
  %i.s = select i1 %i.o, ptr %i.q, ptr %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.u = load i64, ptr %i.t, align 8
  %i.v = lshr i8 %i.n, 1
  %i.w = zext nneg i8 %i.v to i64
  %i.x = select i1 %i.o, i64 %i.u, i64 %i.w
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.s, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.x, 1 ; 2 uses
  %i.y = icmp eq i32 %i.k, 0
  br i1 %i.y, label %"_ZNSt3__16ranges9take_viewINS0_14transform_viewB10llvm18_nuaINS0_11filter_viewB10llvm18_nuaINS0_9iota_viewIiiEEZN3tev11ImageViewer15nthVisibleGroupEmE3$_0EEZNS7_15nthVisibleGroupEmE3$_1EEE5beginB8ne180100EvQnt13__simple_viewIT_E.exit", label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.a
  %zext = and i64 %i.j, 4294967295
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %bb.b
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i, %bb.b ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.i.i.i.i.i.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !398, !noalias !1203
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !234, !range !331, !noalias !1203, !noundef !385
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %._crit_edge.loopexit.split.loop.exit.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ae = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i, %zext
  br i1 %i.ae, label %._crit_edge, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !22

._crit_edge.loopexit.split.loop.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.af = trunc nsw i64 %indvars.iv.i.i.i.i.i.i.i to i32
  br label %"_ZNSt3__16ranges9take_viewINS0_14transform_viewB10llvm18_nuaINS0_11filter_viewB10llvm18_nuaINS0_9iota_viewIiiEEZN3tev11ImageViewer15nthVisibleGroupEmE3$_0EEZNS7_15nthVisibleGroupEmE3$_1EEE5beginB8ne180100EvQnt13__simple_viewIT_E.exit"

"_ZNSt3__16ranges9take_viewINS0_14transform_viewB10llvm18_nuaINS0_11filter_viewB10llvm18_nuaINS0_9iota_viewIiiEEZN3tev11ImageViewer15nthVisibleGroupEmE3$_0EEZNS7_15nthVisibleGroupEmE3$_1EEE5beginB8ne180100EvQnt13__simple_viewIT_E.exit": ; preds = %bb.a, %._crit_edge.loopexit.split.loop.exit.i.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i.i = phi i32 [ 0, %bb.a ], [ %i.af, %._crit_edge.loopexit.split.loop.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.ag = icmp eq i64 %i.l, 0
  %i.ah = icmp eq i32 %.sroa.01.0.lcssa.i.i.i.i.i.i.i, %i.k
  %spec.select.i47 = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %spec.select.i47, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %"_ZNSt3__116counted_iteratorINS_6ranges14transform_viewB10llvm18_nuaINS1_11filter_viewB10llvm18_nuaINS1_9iota_viewIiiEEZN3tev11ImageViewer15nthVisibleGroupEmE3$_0EEZNS7_15nthVisibleGroupEmE3$_1E10__iteratorILb0EEEEppB8ne180100Ev.exit", %bb.d, %"_ZNSt3__16ranges9take_viewINS0_14transform_viewB10llvm18_nuaINS0_11filter_viewB10llvm18_nuaINS0_9iota_viewIiiEEZN3tev11ImageViewer15nthVisibleGroupEmE3$_0EEZNS7_15nthVisibleGroupEmE3$_1EEE5beginB8ne180100EvQnt13__simple_viewIT_E.exit"
  %.pn.lcssa = phi { ptr, i64 } [ %.fca.1.insert.i, %"_ZNSt3__16ranges9take_viewINS0_14transform_viewB10llvm18_nuaINS0_11filter_viewB10llvm18_nuaINS0_9iota_viewIiiEEZN3tev11ImageViewer15nthVisibleGroupEmE3$_0EEZNS7_15nthVisibleGroupEmE3$_1EEE5beginB8ne180100EvQnt13__simple_viewIT_E.exit" ], [ %i.aj, %bb.d ], [ %i.aj, %.lr.ph ], [ %i.aj, %"_ZNSt3__116counted_iteratorINS_6ranges14transform_viewB10llvm18_nuaINS1_11filter_viewB10llvm18_nuaINS1_9iota_viewIiiEEZN3tev11ImageViewer15nthVisibleGroupEmE3$_0EEZNS7_15nthVisibleGroupEmE3$_1E10__iteratorILb0EEEEppB8ne180100Ev.exit" ], [ %.fca.1.insert.i, %bb.b ]
  ret { ptr, i64 } %.pn.lcssa

.lr.ph:                                           ; preds = %"_ZNSt3__16ranges9take_viewINS0_14transform_viewB10llvm18_nuaINS0_11filter_viewB10llvm18_nuaINS0_9iota_viewIiiEEZN3tev11ImageViewer15nthVisibleGroupEmE3$_0EEZNS7_15nthVisibleGroupEmE3$_1EEE5beginB8ne180100EvQnt13__simple_viewIT_E.exit", %"_ZNSt3__116counted_iteratorINS_6ranges14transform_viewB10llvm18_nuaINS1_11filter_viewB10llvm18_nuaINS1_9iota_viewIiiEEZN3tev11ImageViewer15nthVisibleGroupEmE3$_0EEZNS7_15nthVisibleGroupEmE3$_1E10__iteratorILb0EEEEppB8ne180100Ev.exit"
  %.sroa.4.049 = phi i32 [ %i.av, %"_ZNSt3__116counted_iteratorINS_6ranges14transform_viewB10llvm18_nuaINS1_11filter_viewB10llvm18_nuaINS1_9iota_viewIiiEEZN3tev11ImageViewer15nthVisibleGroupEmE3$_0EEZNS7_15nthVisibleGroupEmE3$_1E10__iteratorILb0EEEEppB8ne180100Ev.exit" ], [ %.sroa.01.0.lcssa.i.i.i.i.i.i.i, %"_ZNSt3__16ranges9take_viewINS0_14transform_viewB10llvm18_nuaINS0_11filter_viewB10llvm18_nuaINS0_9iota_viewIiiEEZN3tev11ImageViewer15nthVisibleGroupEmE3$_0EEZNS7_15nthVisibleGroupEmE3$_1EEE5beginB8ne180100EvQnt13__simple_viewIT_E.exit" ] ; 2 uses
  %.sroa.11.048 = phi i64 [ %i.aw, %"_ZNSt3__116counted_iteratorINS_6ranges14transform_viewB10llvm18_nuaINS1_11filter_viewB10llvm18_nuaINS1_9iota_viewIiiEEZN3tev11ImageViewer15nthVisibleGroupEmE3$_0EEZNS7_15nthVisibleGroupEmE3$_1E10__iteratorILb0EEEEppB8ne180100Ev.exit" ], [ %i.l, %"_ZNSt3__16ranges9take_viewINS0_14transform_viewB10llvm18_nuaINS0_11filter_viewB10llvm18_nuaINS0_9iota_viewIiiEEZN3tev11ImageViewer15nthVisibleGroupEmE3$_0EEZNS7_15nthVisibleGroupEmE3$_1EEE5beginB8ne180100EvQnt13__simple_viewIT_E.exit" ]
  %i.ai = sext i32 %.sroa.4.049 to i64
  %i.aj = tail call { ptr, i64 } @_ZN3tev11ImageViewer9groupNameEm(ptr noundef nonnull readonly align 16 dereferenceable(1408) %0, i64 noundef %i.ai) ; 3 uses
  %i.ak = add nsw i32 %.sroa.4.049, 1             ; 2 uses
  %i.al = icmp eq i32 %i.ak, %i.k
  br i1 %i.al, label %._crit_edge, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph
  %.val.val.val.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !419
  %i.am = getelementptr i8, ptr %.val.val.val.i.i.i.i.i, i64 80
  %.val.val.val.val.i.i.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !397
  %i.an = sext i32 %i.ak to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i, %bb.d ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val.val.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !398
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 104
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !234, !range !331, !noundef !385
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %"_ZNSt3__116counted_iteratorINS_6ranges14transform_viewB10llvm18_nuaINS1_11filter_viewB10llvm18_nuaINS1_9iota_viewIiiEEZN3tev11ImageViewer15nthVisibleGroupEmE3$_0EEZNS7_15nthVisibleGroupEmE3$_1E10__iteratorILb0EEEEppB8ne180100Ev.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %i.at = trunc nsw i64 %indvars.iv.next.i.i.i.i.i to i32
  %i.au = icmp eq i32 %i.k, %i.at
  br i1 %i.au, label %._crit_edge, label %bb.c, !llvm.loop !22

"_ZNSt3__116counted_iteratorINS_6ranges14transform_viewB10llvm18_nuaINS1_11filter_viewB10llvm18_nuaINS1_9iota_viewIiiEEZN3tev11ImageViewer15nthVisibleGroupEmE3$_0EEZNS7_15nthVisibleGroupEmE3$_1E10__iteratorILb0EEEEppB8ne180100Ev.exit": ; preds = %bb.c
  %i.av = trunc nsw i64 %indvars.iv.i.i.i.i.i to i32 ; 2 uses
  %i.aw = add nsw i64 %.sroa.11.048, -1           ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  %i.ay = icmp eq i32 %i.av, %i.k
  %spec.select.i = select i1 %i.ax, i1 true, i1 %i.ay
  br i1 %spec.select.i, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { i64, i8 } @_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(1408) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !505  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !506 ; 4 uses
  %.not7.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not7.i.i.i, label %_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_6vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS8_EEEES8_NS_8identityEQ25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISI_EEE7_SelectISK_NS0_8danglingEEEOSI_RSP_SL_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !439
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %i.h, %bb.c ] ; 3 uses
  %i.f = load ptr, ptr %.08.i.i.i, align 8, !tbaa !439
  %i.g = icmp eq ptr %i.f, %i.e
  br i1 %i.g, label %_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_6vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS8_EEEES8_NS_8identityEQ25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISI_EEE7_SelectISK_NS0_8danglingEEEOSI_RSP_SL_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, %i.d
  br i1 %.not.i.i.i, label %_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_6vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS8_EEEES8_NS_8identityEQ25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISI_EEE7_SelectISK_NS0_8danglingEEEOSI_RSP_SL_.exit, label %bb.b, !llvm.loop !11

_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_6vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS8_EEEES8_NS_8identityEQ25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISI_EEE7_SelectISK_NS0_8danglingEEEOSI_RSP_SL_.exit: ; preds = %bb.b, %bb.c, %bb.a
  %.0.lcssa.i.i.i = phi ptr [ %i.b, %bb.a ], [ %i.d, %bb.c ], [ %.08.i.i.i, %bb.b ]
  %i.i = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.j = ptrtoint ptr %.0.lcssa.i.i.i to i64
  %i.k = sub i64 %i.j, %i.i                       ; 2 uses
  %i.l = ashr exact i64 %i.k, 4
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub i64 %i.m, %i.i
  %.not = icmp ult i64 %i.k, %i.n                 ; 2 uses
  %.sroa.3.sroa.2.0 = zext i1 %.not to i8
  %.sroa.0.0.insert.insert = select i1 %.not, i64 %i.l, i64 0
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.3.sroa.2.0, 1
  ret { i64, i8 } %.fca.1.insert
}

declare void @_ZN3tev11ImageButton11showTextBoxEv(ptr noundef nonnull align 16 dereferenceable(400)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev11ImageViewer26normalizeExposureAndOffsetEv(ptr noundef nonnull align 16 dereferenceable(1408) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !439  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.d = load i8, ptr %i.c, align 16              ; 2 uses
  %i.e = trunc i8 %i.d to i1                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.g = load ptr, ptr %i.f, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1121
  %i.i = select i1 %i.e, ptr %i.g, ptr %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.k = load i64, ptr %i.j, align 8
  %i.l = lshr i8 %i.d, 1
  %i.m = zext nneg i8 %i.l to i64
  %i.n = select i1 %i.e, i64 %i.k, i64 %i.m
  %i.o = tail call { ptr, i64 } @_ZNKR3tev5Image15channelsInGroupENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE(ptr noundef nonnull align 16 dereferenceable(516) %i.b, ptr %i.i, i64 %i.n) ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.o, 0        ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.o, 1        ; 2 uses
  %.idx = mul nuw nsw i64 %i.q, 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx
  %.not3435 = icmp eq i64 %i.q, 0
  br i1 %.not3435, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK3tev7Channel10minMaxMeanEv.exit, %bb.b
  %.033.lcssa = phi float [ f0x7F7FFFFF, %bb.b ], [ %.sroa.speculated28, %_ZNK3tev7Channel10minMaxMeanEv.exit ] ; 2 uses
  %.0.lcssa = phi float [ f0x00800000, %bb.b ], [ %.sroa.speculated, %_ZNK3tev7Channel10minMaxMeanEv.exit ]
  %i.s = fsub float %.0.lcssa, %.033.lcssa
  %i.t = fdiv float 1.000000e+00, %i.s            ; 2 uses
  %i.u = tail call noundef float @log2f(float noundef %i.t) #47
  tail call void @_ZN3tev11ImageViewer11setExposureEf(ptr noundef nonnull align 16 dereferenceable(1408) %0, float noundef %i.u)
  %i.v = fneg float %.033.lcssa
  %i.w = fmul float %i.t, %i.v
  tail call void @_ZN3tev11ImageViewer9setOffsetEf(ptr noundef nonnull align 16 dereferenceable(1408) %0, float noundef %i.w)
  br label %bb.c

.lr.ph:                                           ; preds = %bb.b, %_ZNK3tev7Channel10minMaxMeanEv.exit
  %.sroa.021.038 = phi ptr [ %i.en, %_ZNK3tev7Channel10minMaxMeanEv.exit ], [ %i.p, %bb.b ] ; 5 uses
  %.037 = phi float [ %.sroa.speculated, %_ZNK3tev7Channel10minMaxMeanEv.exit ], [ f0x00800000, %bb.b ] ; 2 uses
  %.03336 = phi float [ %.sroa.speculated28, %_ZNK3tev7Channel10minMaxMeanEv.exit ], [ f0x7F7FFFFF, %bb.b ] ; 2 uses
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !439  ; 2 uses
  %i.y = load i8, ptr %.sroa.021.038, align 8     ; 2 uses
  %i.z = trunc i8 %i.y to i1                      ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.021.038, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.021.038, i64 1
  %i.ad = select i1 %i.z, ptr %i.ab, ptr %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.021.038, i64 8
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = lshr i8 %i.y, 1
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = select i1 %i.z, i64 %i.af, i64 %i.ah    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 136
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1206 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 144
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1207 ; 3 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.ak, %i.am
  br i1 %.not10.i.i.i.i.i, label %_ZNKR3tev5Image7channelENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.az, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i.i ], [ %i.ak, %.lr.ph ] ; 6 uses
  %i.an = load i8, ptr %.011.i.i.i.i.i, align 8   ; 2 uses
  %i.ao = trunc i8 %i.an to i1                    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = lshr i8 %i.an, 1
  %i.as = zext nneg i8 %i.ar to i64
  %i.at = select i1 %i.ao, i64 %i.aq, i64 %i.as
  %.not.i.i.i.i.i.i = icmp eq i64 %i.at, %i.ai
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i.i, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i.i

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 1
  %i.ax = select i1 %i.ao, ptr %i.av, ptr %i.aw
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ax, ptr %i.ad, i64 %i.ai)
  %i.ay = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ay, label %_ZNKR3tev5Image7channelENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i.i

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i.i: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.az, %i.am
  br i1 %.not.i.i.i.i.i, label %_ZNKR3tev5Image7channelENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1204

_ZNKR3tev5Image7channelENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i.i, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i.i, %.lr.ph
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph ], [ %i.am, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i.i ], [ %.011.i.i.i.i.i, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i.i ]
  %i.ba = ptrtoint ptr %.0.lcssa.i.i.i.i.i to i64
  %i.bb = ptrtoint ptr %i.ak to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.ak, i64 %i.bc ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = tail call noundef i64 @_Z7posProdIiLm2EEDaRKN7nanogui5ArrayIT_XT0_EEE(ptr noundef nonnull align 4 dereferenceable(8) %i.be) ; 2 uses
  %.not.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i, label %_ZNK3tev7Channel10minMaxMeanEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNKR3tev5Image7channelENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1210 ; 9 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !1218
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 56 ; 8 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 64 ; 8 uses
  %i.bm = load ptr, ptr @imath_half_to_float_table, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZNK3tev7Channel9dynamicAtEm.exit
  %.01225.i = phi i64 [ %i.ek, %_ZNK3tev7Channel9dynamicAtEm.exit ], [ 0, %.lr.ph.i.preheader ] ; 9 uses
  %.02024.i = phi float [ %.1.i, %_ZNK3tev7Channel9dynamicAtEm.exit ], [ -inf, %.lr.ph.i.preheader ] ; 2 uses
  %.02123.i = phi float [ %.122.i, %_ZNK3tev7Channel9dynamicAtEm.exit ], [ +inf, %.lr.ph.i.preheader ] ; 2 uses
  switch i32 %i.bj, label %_ZNK3tev7Channel9dynamicAtEm.exit [
    i32 0, label %_ZNK3tev7Channel6dataAtIKhEEPT_m.exit.i
    i32 1, label %_ZNK3tev7Channel6dataAtIKtEEPT_m.exit.i
    i32 2, label %_ZNK3tev7Channel6dataAtIKjEEPT_m.exit.i
    i32 3, label %_ZNK3tev7Channel6dataAtIKaEEPT_m.exit.i
    i32 4, label %_ZNK3tev7Channel6dataAtIKsEEPT_m.exit.i
    i32 5, label %_ZNK3tev7Channel6dataAtIKiEEPT_m.exit.i
    i32 6, label %_ZNK3tev7Channel6dataAtIKN9Imath_3_24halfEEEPT_m.exit.i
    i32 7, label %_ZNK3tev7Channel6dataAtIKfEEPT_m.exit.i
  ]

_ZNK3tev7Channel6dataAtIKhEEPT_m.exit.i:          ; preds = %.lr.ph.i
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !216
  %i.bo = load i64, ptr %i.bk, align 8, !tbaa !1220
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  %i.bq = load i64, ptr %i.bl, align 8, !tbaa !1221
  %i.br = mul i64 %i.bq, %.01225.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !220
  %i.bu = uitofp i8 %i.bt to float
  %i.bv = fdiv float %i.bu, 2.550000e+02
  br label %_ZNK3tev7Channel9dynamicAtEm.exit

_ZNK3tev7Channel6dataAtIKtEEPT_m.exit.i:          ; preds = %.lr.ph.i
  %i.bw = load ptr, ptr %i.bh, align 8, !tbaa !216
  %i.bx = load i64, ptr %i.bk, align 8, !tbaa !1220
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = load i64, ptr %i.bl, align 8, !tbaa !1221
  %i.ca = mul i64 %i.bz, %.01225.i
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %i.ca
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !1222
  %i.cd = uitofp i16 %i.cc to float
  %i.ce = fdiv float %i.cd, 6.553500e+04
  br label %_ZNK3tev7Channel9dynamicAtEm.exit

_ZNK3tev7Channel6dataAtIKjEEPT_m.exit.i:          ; preds = %.lr.ph.i
  %i.cf = load ptr, ptr %i.bh, align 8, !tbaa !216
  %i.cg = load i64, ptr %i.bk, align 8, !tbaa !1220
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = load i64, ptr %i.bl, align 8, !tbaa !1221
  %i.cj = mul i64 %i.ci, %.01225.i
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !227
  %i.cm = uitofp i32 %i.cl to double
  %i.cn = fdiv double %i.cm, f0x41EFFFFFFFE00000
  %i.co = fptrunc double %i.cn to float
  br label %_ZNK3tev7Channel9dynamicAtEm.exit

_ZNK3tev7Channel6dataAtIKaEEPT_m.exit.i:          ; preds = %.lr.ph.i
  %i.cp = load ptr, ptr %i.bh, align 8, !tbaa !216
  %i.cq = load i64, ptr %i.bk, align 8, !tbaa !1220
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cq
  %i.cs = load i64, ptr %i.bl, align 8, !tbaa !1221
  %i.ct = mul i64 %i.cs, %.01225.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !220
  %i.cw = sitofp i8 %i.cv to float
  %i.cx = fdiv float %i.cw, 1.270000e+02
  br label %_ZNK3tev7Channel9dynamicAtEm.exit

_ZNK3tev7Channel6dataAtIKsEEPT_m.exit.i:          ; preds = %.lr.ph.i
  %i.cy = load ptr, ptr %i.bh, align 8, !tbaa !216
  %i.cz = load i64, ptr %i.bk, align 8, !tbaa !1220
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.cy, i64 %i.cz
  %i.db = load i64, ptr %i.bl, align 8, !tbaa !1221
  %i.dc = mul i64 %i.db, %.01225.i
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %i.dc
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !1222
  %i.df = sitofp i16 %i.de to float
  %i.dg = fdiv float %i.df, 3.276700e+04
  br label %_ZNK3tev7Channel9dynamicAtEm.exit

_ZNK3tev7Channel6dataAtIKiEEPT_m.exit.i:          ; preds = %.lr.ph.i
  %i.dh = load ptr, ptr %i.bh, align 8, !tbaa !216
  %i.di = load i64, ptr %i.bk, align 8, !tbaa !1220
end_hunk_3
begin_hunk_4_@_ZN3tev11ImageViewer26normalizeExposureAndOffsetEv:bb.a
_ZNK3tev7Channel6dataAtIKN9Imath_3_24halfEEEPT_m.exit.i: ; preds = %.lr.ph.i
  %i.dr = load ptr, ptr %i.bh, align 8, !tbaa !216
  %i.ds = load i64, ptr %i.bk, align 8, !tbaa !1220
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.ds
  %i.du = load i64, ptr %i.bl, align 8, !tbaa !1221
  %i.dv = mul i64 %i.du, %.01225.i
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %i.dv
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !1224
  %i.dy = zext i16 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.dy
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !220
  br label %_ZNK3tev7Channel9dynamicAtEm.exit

_ZNK3tev7Channel6dataAtIKfEEPT_m.exit.i:          ; preds = %.lr.ph.i
  %i.eb = load ptr, ptr %i.bh, align 8, !tbaa !216
  %i.ec = load i64, ptr %i.bk, align 8, !tbaa !1220
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.ec
  %i.ee = load i64, ptr %i.bl, align 8, !tbaa !1221
  %i.ef = mul i64 %i.ee, %.01225.i
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.ef
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !87
  br label %_ZNK3tev7Channel9dynamicAtEm.exit

_ZNK3tev7Channel9dynamicAtEm.exit:                ; preds = %.lr.ph.i, %_ZNK3tev7Channel6dataAtIKhEEPT_m.exit.i, %_ZNK3tev7Channel6dataAtIKtEEPT_m.exit.i, %_ZNK3tev7Channel6dataAtIKjEEPT_m.exit.i, %_ZNK3tev7Channel6dataAtIKaEEPT_m.exit.i, %_ZNK3tev7Channel6dataAtIKsEEPT_m.exit.i, %_ZNK3tev7Channel6dataAtIKiEEPT_m.exit.i, %_ZNK3tev7Channel6dataAtIKN9Imath_3_24halfEEEPT_m.exit.i, %_ZNK3tev7Channel6dataAtIKfEEPT_m.exit.i
  %.0.i = phi float [ %i.eh, %_ZNK3tev7Channel6dataAtIKfEEPT_m.exit.i ], [ %i.bv, %_ZNK3tev7Channel6dataAtIKhEEPT_m.exit.i ], [ %i.ce, %_ZNK3tev7Channel6dataAtIKtEEPT_m.exit.i ], [ %i.co, %_ZNK3tev7Channel6dataAtIKjEEPT_m.exit.i ], [ %i.cx, %_ZNK3tev7Channel6dataAtIKaEEPT_m.exit.i ], [ %i.dg, %_ZNK3tev7Channel6dataAtIKsEEPT_m.exit.i ], [ %i.dq, %_ZNK3tev7Channel6dataAtIKiEEPT_m.exit.i ], [ %i.ea, %_ZNK3tev7Channel6dataAtIKN9Imath_3_24halfEEEPT_m.exit.i ], [ 0.000000e+00, %.lr.ph.i ] ; 4 uses
  %i.ei = fcmp olt float %.0.i, %.02123.i
  %.122.i = select i1 %i.ei, float %.0.i, float %.02123.i ; 2 uses
  %i.ej = fcmp ogt float %.0.i, %.02024.i
  %.1.i = select i1 %i.ej, float %.0.i, float %.02024.i ; 2 uses
  %i.ek = add nuw i64 %.01225.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ek, %i.bf
  br i1 %exitcond.not.i, label %_ZNK3tev7Channel10minMaxMeanEv.exit, label %.lr.ph.i, !llvm.loop !1205

_ZNK3tev7Channel10minMaxMeanEv.exit:              ; preds = %_ZNK3tev7Channel9dynamicAtEm.exit, %_ZNKR3tev5Image7channelENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit
  %.021.lcssa.i = phi float [ +inf, %_ZNKR3tev5Image7channelENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit ], [ %.122.i, %_ZNK3tev7Channel9dynamicAtEm.exit ] ; 2 uses
  %.020.lcssa.i = phi float [ -inf, %_ZNKR3tev5Image7channelENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit ], [ %.1.i, %_ZNK3tev7Channel9dynamicAtEm.exit ] ; 2 uses
  %i.el = fcmp olt float %.037, %.020.lcssa.i
  %.sroa.speculated = select i1 %i.el, float %.020.lcssa.i, float %.037 ; 2 uses
  %i.em = fcmp olt float %.021.lcssa.i, %.03336
  %.sroa.speculated28 = select i1 %i.em, float %.021.lcssa.i, float %.03336 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.021.038, i64 24 ; 2 uses
  %.not34 = icmp eq ptr %i.en, %i.r
  br i1 %.not34, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev11ImageViewer21toggleImageInfoWindowEv(ptr noundef nonnull align 16 dereferenceable(1408) %0) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__1::function.81", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !515 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7nanogui6Window7disposeEv(ptr noundef nonnull align 8 dereferenceable(186) %i.b)
  store ptr null, ptr %i.a, align 16, !tbaa !515
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !439
  %.not10 = icmp eq ptr %i.d, null
  br i1 %.not10, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #48 ; 4 uses
  %i.f = ptrtoint ptr %0 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @"_ZTVNSt3__110__function6__funcIZN3tev11ImageViewer21toggleImageInfoWindowEvE3$_0NS_9allocatorIS4_EEFvvEEE", i64 16), ptr %1, align 16, !tbaa !89
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.f, ptr %i.h, align 8, !tbaa !237
  store ptr %1, ptr %i.g, align 16, !tbaa !324
  invoke void @_ZN3tev15ImageInfoWindowC1EPN7nanogui6WidgetERKNSt3__110shared_ptrINS_5ImageEEENS4_8functionIFvvEEE(ptr noundef nonnull align 16 dereferenceable(256) %i.e, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr nofree noundef nonnull align 16 dereferenceable(48) %1)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  store ptr %i.e, ptr %i.a, align 16, !tbaa !515
  %i.i = load ptr, ptr %i.g, align 16, !tbaa !324 ; 4 uses
  %i.j = icmp eq ptr %i.i, %1
  br i1 %i.j, label %.sink.split.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt3__18functionIFvvEED2Ev.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.f, %bb.e
  %.sink2.i.i = phi i64 [ 32, %bb.e ], [ 40, %bb.f ]
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !89
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sink2.i.i
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #47, !inline_history !3
  %.pre = load ptr, ptr %i.a, align 16, !tbaa !515
  br label %_ZNSt3__18functionIFvvEED2Ev.exit

_ZNSt3__18functionIFvvEED2Ev.exit:                ; preds = %bb.f, %.sink.split.i.i
  %i.n = phi ptr [ %i.e, %bb.f ], [ %.pre, %.sink.split.i.i ]
  call void @_ZN7nanogui6Window6centerEv(ptr noundef nonnull align 8 dereferenceable(186) %i.n)
  %i.o = load ptr, ptr %i.a, align 16, !tbaa !515
  call void @_ZN7nanogui6Widget13request_focusEv(ptr noundef nonnull align 8 dereferenceable(148) %i.o)
  br label %.sink.split

bb.g:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %i.g, align 16, !tbaa !324 ; 4 uses
  %i.r = icmp eq ptr %i.q, %1
  br i1 %i.r, label %.sink.split.i.i7, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i.i6 = icmp eq ptr %i.q, null
  br i1 %.not.i.i6, label %_ZNSt3__18functionIFvvEED2Ev.exit9, label %.sink.split.i.i7

.sink.split.i.i7:                                 ; preds = %bb.h, %bb.g
  %.sink2.i.i8 = phi i64 [ 32, %bb.g ], [ 40, %bb.h ]
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !89
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sink2.i.i8
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #47, !inline_history !3
  br label %_ZNSt3__18functionIFvvEED2Ev.exit9

_ZNSt3__18functionIFvvEED2Ev.exit9:               ; preds = %.sink.split.i.i7, %bb.h
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 256) #49
  resume { ptr, i32 } %i.p

.sink.split:                                      ; preds = %bb.b, %_ZNSt3__18functionIFvvEED2Ev.exit
  %.sink = phi i8 [ 1, %_ZNSt3__18functionIFvvEED2Ev.exit ], [ 0, %bb.b ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !414
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  store i8 %.sink, ptr %i.x, align 16, !tbaa !386
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 657
  store i8 1, ptr %i.y, align 1, !tbaa !214
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev11ImageViewer15reloadAllImagesEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(1408) %0) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__1::shared_ptr.35", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !506 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !505  ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 784
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit
  %i.g = phi ptr [ %i.c, %.lr.ph ], [ %i.au, %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit ]
  %i.h = phi ptr [ %i.d, %.lr.ph ], [ %i.av, %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit ] ; 2 uses
  %.06 = phi i64 [ 0, %.lr.ph ], [ %i.at, %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit ] ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.06 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !439  ; 7 uses
  store ptr %i.j, ptr %1, align 8, !tbaa !439
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !507  ; 3 uses
  store ptr %i.l, ptr %i.e, align 8, !tbaa !507
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = atomicrmw add ptr %i.m, i64 1 monotonic, align 8 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !505
  %.pre7 = load ptr, ptr %i.b, align 16, !tbaa !506
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit

_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit: ; preds = %bb.b, %bb.c
  %i.o = phi ptr [ %i.g, %bb.b ], [ %.pre7, %bb.c ] ; 5 uses
  %i.p = phi ptr [ %i.h, %bb.b ], [ %.pre, %bb.c ] ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not7.i.i.i.i.i, label %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit, %bb.d
  %.08.i.i.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.p, %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit ] ; 3 uses
  %i.q = load ptr, ptr %.08.i.i.i.i.i, align 8, !tbaa !439
  %i.r = icmp eq ptr %i.q, %i.j
  br i1 %i.r, label %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, %i.o
  br i1 %.not.i.i.i.i.i, label %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !11

_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i, %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.o, %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit ], [ %i.o, %bb.d ], [ %.08.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.t = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.u = ptrtoint ptr %.0.lcssa.i.i.i.i.i to i64
  %i.v = sub i64 %i.u, %i.t
  %i.w = ptrtoint ptr %i.o to i64
  %i.x = sub i64 %i.w, %i.t
  %.not.i.i = icmp ult i64 %i.v, %i.x
  br i1 %.not.i.i, label %bb.e, label %_ZN3tev11ImageViewer11reloadImageENSt3__110shared_ptrINS_5ImageEEEb.exit

bb.e:                                             ; preds = %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i
  %i.y = load ptr, ptr %i.f, align 16, !tbaa !524
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.ab = load i8, ptr %i.aa, align 8             ; 2 uses
  %i.ac = trunc i8 %i.ab to i1                    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 49
  %i.ag = select i1 %i.ac, ptr %i.ae, ptr %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = lshr i8 %i.ab, 1
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = select i1 %i.ac, i64 %i.ai, i64 %i.ak
  invoke void @_ZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEE(ptr noundef nonnull align 8 dereferenceable(300) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr %i.ag, i64 %i.al, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN3tev11ImageViewer11reloadImageENSt3__110shared_ptrINS_5ImageEEEb.exit unwind label %bb.h

_ZN3tev11ImageViewer11reloadImageENSt3__110shared_ptrINS_5ImageEEEb.exit: ; preds = %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i, %bb.e
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !507 ; 5 uses
  %.not.i5 = icmp eq ptr %i.am, null
  br i1 %.not.i5, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3tev11ImageViewer11reloadImageENSt3__110shared_ptrINS_5ImageEEEb.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = atomicrmw add ptr %i.an, i64 -1 acq_rel, align 8
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.g, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !89
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(24) %i.am) #47, !inline_history !13
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.am) #47
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit: ; preds = %_ZN3tev11ImageViewer11reloadImageENSt3__110shared_ptrINS_5ImageEEEb.exit, %bb.f, %bb.g
  %i.at = add nuw i64 %.06, 1                     ; 2 uses
  %i.au = load ptr, ptr %i.b, align 16, !tbaa !506 ; 2 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !505 ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 4
  %i.ba = icmp ult i64 %i.at, %i.az
  br i1 %i.ba, label %bb.b, label %._crit_edge, !llvm.loop !1225

bb.h:                                             ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #47
  resume { ptr, i32 } %i.bb
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev11ImageViewer11reloadImageENSt3__110shared_ptrINS_5ImageEEEb(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(1408) %0, ptr nofree noundef align 8 dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !505  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !506 ; 4 uses
  %.not7.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not7.i.i.i.i, label %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !439
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i.i ], [ %i.h, %bb.c ] ; 3 uses
  %i.f = load ptr, ptr %.08.i.i.i.i, align 8, !tbaa !439
  %i.g = icmp eq ptr %i.f, %i.e
  br i1 %i.g, label %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.d
  br i1 %.not.i.i.i.i, label %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit, label %bb.b, !llvm.loop !11

_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit: ; preds = %bb.b, %bb.c, %bb.a
  %.0.lcssa.i.i.i.i = phi ptr [ %i.b, %bb.a ], [ %.08.i.i.i.i, %bb.b ], [ %i.d, %bb.c ]
  %i.i = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.j = ptrtoint ptr %.0.lcssa.i.i.i.i to i64
  %i.k = sub i64 %i.j, %i.i
  %i.l = ptrtoint ptr %i.d to i64
  %i.m = sub i64 %i.l, %i.i
  %.not.i = icmp ult i64 %i.k, %i.m
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !524
  %i.p = load ptr, ptr %1, align 8, !tbaa !439    ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.s = load i8, ptr %i.r, align 8               ; 2 uses
  %i.t = trunc i8 %i.s to i1                      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 49
  %i.x = select i1 %i.t, ptr %i.v, ptr %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = lshr i8 %i.s, 1
  %i.ab = zext nneg i8 %i.aa to i64
  %i.ac = select i1 %i.t, i64 %i.z, i64 %i.ab
  tail call void @_ZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEE(ptr noundef nonnull align 8 dereferenceable(300) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr %i.x, i64 %i.ac, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev11ImageViewer10resetImageEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(1408) %0) local_unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN3tev11ImageViewer11setExposureEf(ptr noundef nonnull align 16 dereferenceable(1408) %0, float noundef 0.000000e+00)
  tail call void @_ZN3tev11ImageViewer9setOffsetEf(ptr noundef nonnull align 16 dereferenceable(1408) %0, float noundef 0.000000e+00)
  tail call void @_ZN3tev11ImageViewer8setGammaEf(ptr noundef nonnull align 16 dereferenceable(1408) %0, float noundef 2.200000e+00)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !250
  tail call void @_ZN3tev11ImageCanvas14resetTransformEv(ptr noundef nonnull align 8 dereferenceable(504) %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev11ImageViewer26ungroupCurrentChannelGroupEv(ptr noundef nonnull align 16 dereferenceable(1408) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !439  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.d = load i8, ptr %i.c, align 16              ; 2 uses
  %i.e = trunc i8 %i.d to i1                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.g = load ptr, ptr %i.f, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1121
  %i.i = select i1 %i.e, ptr %i.g, ptr %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.k = load i64, ptr %i.j, align 8
  %i.l = lshr i8 %i.d, 1
  %i.m = zext nneg i8 %i.l to i64
  %i.n = select i1 %i.e, i64 %i.k, i64 %i.m
  tail call void @_ZN3tev5Image7ungroupENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE(ptr noundef nonnull align 16 dereferenceable(516) %i.b, ptr %i.i, i64 %i.n)
  tail call void @_ZN3tev11ImageViewer11selectImageERKNSt3__110shared_ptrINS_5ImageEEEb(ptr noundef nonnull align 16 dereferenceable(1408) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i1 noundef zeroext true)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !439  ; 2 uses
  %.not5 = icmp eq ptr %i.p, null
  br i1 %.not5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.r = load i8, ptr %i.q, align 16              ; 2 uses
  %i.s = trunc i8 %i.r to i1                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.u = load ptr, ptr %i.t, align 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1121
  %i.w = select i1 %i.s, ptr %i.u, ptr %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.y = load i64, ptr %i.x, align 8
  %i.z = lshr i8 %i.r, 1
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = select i1 %i.s, i64 %i.y, i64 %i.aa
  tail call void @_ZN3tev5Image7ungroupENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE(ptr noundef nonnull align 16 dereferenceable(516) %i.p, ptr %i.w, i64 %i.ab)
  tail call void @_ZN3tev11ImageViewer15selectReferenceERKNSt3__110shared_ptrINS_5ImageEEE(ptr noundef nonnull align 16 dereferenceable(1408) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.o)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN3tev11ImageViewer12setUiVisibleEb(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(1408) initializes((657, 658)) %0, i1 noundef zeroext %1) local_unnamed_addr #11 align 2 {
bb.a:
  br i1 %1, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !218
  %i.c = icmp eq i32 %i.b, 4
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !218
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !233
  %i.f = zext i1 %1 to i8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i8 %i.f, ptr %i.g, align 8, !tbaa !234
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !418
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.k = load i8, ptr %i.j, align 16, !tbaa !512, !range !331, !noundef !385
  %i.l = select i1 %1, i8 %i.k, i8 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  store i8 %i.l, ptr %i.m, align 8, !tbaa !234
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 657
  store i8 1, ptr %i.n, align 1, !tbaa !214
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev11ImageViewer15openImageDialogEv(ptr noundef nonnull align 16 dereferenceable(1408) %0) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__1::unique_ptr.931", align 8 ; 6 uses
  %2 = alloca %"class.std::__1::unique_ptr.937", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !518
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !231  ; 7 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !428
  %i.f = and i32 %i.e, 8
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !429  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !430  ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not12.i.i.i, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 33
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %.sroa.09.013.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i ], [ %i.z, %bb.d ] ; 2 uses
  %i.o = load ptr, ptr %.sroa.09.013.i.i.i, align 8, !tbaa !433 ; 2 uses
  %i.p = load i8, ptr %i.k, align 8               ; 2 uses
  %i.q = trunc i8 %i.p to i1                      ; 2 uses
  %i.r = load ptr, ptr %i.l, align 8
  %i.s = select i1 %i.q, ptr %i.r, ptr %i.m
  %i.t = load i64, ptr %i.n, align 8
  %i.u = lshr i8 %i.p, 1
  %i.v = zext nneg i8 %i.u to i64
  %i.w = select i1 %i.q, i64 %i.t, i64 %i.v
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !89
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr %i.s, i64 %i.w, i32 noundef 8, ptr nonnull @.str.134, i64 28), !inline_history !23
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %i.j
  br i1 %.not.i.i.i, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %bb.d

bb.e:                                             ; preds = %bb.a
  %i.aa = ptrtoint ptr %0 to i64
  %i.ab = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #48, !noalias !1228 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47, !noalias !1228
  %i.ac = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #48
          to label %.noexc.i unwind label %bb.o, !noalias !1228 ; 4 uses

.noexc.i:                                         ; preds = %bb.e
  invoke void @_ZNSt3__115__thread_structC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %bb.f unwind label %bb.h, !noalias !1228

bb.f:                                             ; preds = %.noexc.i
  store ptr %i.ac, ptr %1, align 8, !tbaa !529, !noalias !1228
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47, !noalias !1228
  %i.ad = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #48
          to label %bb.g unwind label %bb.i, !noalias !1228 ; 4 uses

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %1, align 8, !tbaa !530, !noalias !1228
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !529, !noalias !1228
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.aa, ptr %i.ae, align 8, !tbaa !237, !noalias !1228
  store ptr %i.ad, ptr %2, align 8, !tbaa !533, !noalias !1228
  %i.af = tail call noundef i32 @pthread_create(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef null, ptr noundef nonnull @"_ZNSt3__114__thread_proxyB8ne180100INS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN3tev11ImageViewer15openImageDialogEvE3$_0EEEEEPvSB_", ptr noundef nonnull %i.ad) #47, !noalias !1228 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
end_hunk_4
begin_hunk_5_@_ZN3tev11ImageViewer24pasteImagesFromClipboardEv:bb.a
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit91

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit91: ; preds = %_ZNSt3__115__expected_baseINS_6vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS5_EEEENS3_14ImageLoadErrorEED2Ev.exit, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #47
  store ptr %i.jh, ptr %5, align 8, !tbaa !89
  %i.og = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 24), align 8
  %i.oh = getelementptr i8, ptr %i.jh, i64 -24
  %i.oi = load i64, ptr %i.oh, align 8
  %i.oj = getelementptr inbounds i8, ptr %5, i64 %i.oi
  store ptr %i.og, ptr %i.oj, align 8, !tbaa !89
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), ptr %i.b, align 8, !tbaa !89
  %i.ok = load i8, ptr %i.q, align 8
  %i.ol = trunc i8 %i.ok to i1
  br i1 %i.ol, label %bb.dr, label %_ZNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit92

bb.dr:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit91
  %i.om = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !220
  %i.oo = load i64, ptr %i.q, align 8
  %i.op = and i64 %i.oo, -2
  call void @_ZdlPvm(ptr noundef %i.on, i64 noundef %i.op) #49
  br label %_ZNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit92

_ZNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit92: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit91, %bb.dr
  call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(100) %i.b) #47
  call void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8)) #47
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.a) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  ret void

bb.ds:                                            ; preds = %.preheader, %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit
  %.sroa.099.0108 = phi ptr [ %i.mp, %.preheader ], [ %i.pr, %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit ] ; 3 uses
  %i.oq = load ptr, ptr %.sroa.099.0108, align 8, !tbaa !439 ; 3 uses
  store ptr %i.oq, ptr %19, align 8, !tbaa !439
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.099.0108, i64 8
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !507 ; 4 uses
  store ptr %i.os, ptr %i.mt, align 8, !tbaa !507
  %.not.i = icmp eq ptr %i.os, null
  br i1 %.not.i, label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.thread, label %bb.dt

_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.thread: ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.oq, ptr %2, align 8, !tbaa !439
  store ptr null, ptr %i.mu, align 8, !tbaa !507
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i

bb.dt:                                            ; preds = %bb.ds
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 8 ; 2 uses
  %i.ou = atomicrmw add ptr %i.ot, i64 1 monotonic, align 8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.oq, ptr %2, align 8, !tbaa !439
  store ptr %i.os, ptr %i.mu, align 8, !tbaa !507
  %i.ov = atomicrmw add ptr %i.ot, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i

_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i: ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.thread, %bb.dt
  %i.ow = load ptr, ptr %i.mw, align 16, !tbaa !506
  %i.ox = load ptr, ptr %i.mv, align 8, !tbaa !505
  %i.oy = ptrtoint ptr %i.ow to i64
  %i.oz = ptrtoint ptr %i.ox to i64
  %i.pa = sub i64 %i.oy, %i.oz
  %i.pb = ashr exact i64 %i.pa, 4
  invoke void @_ZN3tev11ImageViewer11insertImageENSt3__110shared_ptrINS_5ImageEEEmb(ptr noundef nonnull align 16 dereferenceable(1408) %0, ptr nofree noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.pb, i1 noundef zeroext true)
          to label %bb.du unwind label %.body94

bb.du:                                            ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i
  %i.pc = load ptr, ptr %i.mu, align 8, !tbaa !507 ; 5 uses
  %.not.i3.i = icmp eq ptr %i.pc, null
  br i1 %.not.i3.i, label %bb.dx, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %i.pe = atomicrmw add ptr %i.pd, i64 -1 acq_rel, align 8
  %i.pf = icmp eq i64 %i.pe, 0
  br i1 %i.pf, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.pg = load ptr, ptr %i.pc, align 8, !tbaa !89
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  %i.pi = load ptr, ptr %i.ph, align 8
  call void %i.pi(ptr noundef nonnull align 8 dereferenceable(24) %i.pc) #47, !inline_history !25
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.pc) #47
  br label %bb.dx

.body94:                                          ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i
  %i.pj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #47
  call void @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #47
  br label %bb.ea

bb.dx:                                            ; preds = %bb.dw, %bb.dv, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.pk = load ptr, ptr %i.mt, align 8, !tbaa !507 ; 5 uses
  %.not.i96 = icmp eq ptr %i.pk, null
  br i1 %.not.i96, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %i.pm = atomicrmw add ptr %i.pl, i64 -1 acq_rel, align 8
  %i.pn = icmp eq i64 %i.pm, 0
  br i1 %i.pn, label %bb.dz, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit

bb.dz:                                            ; preds = %bb.dy
  %i.po = load ptr, ptr %i.pk, align 8, !tbaa !89
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 16
  %i.pq = load ptr, ptr %i.pp, align 8
  call void %i.pq(ptr noundef nonnull align 8 dereferenceable(24) %i.pk) #47, !inline_history !13
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.pk) #47
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit: ; preds = %bb.dx, %bb.dy, %bb.dz
  %i.pr = getelementptr inbounds nuw i8, ptr %.sroa.099.0108, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.pr, %i.mr
  br i1 %.not, label %bb.dk, label %bb.ds

bb.ea:                                            ; preds = %.body94, %bb.dj, %bb.di
  %.pn52 = phi { ptr, i32 } [ %i.nh, %bb.dj ], [ %i.ng, %bb.di ], [ %i.pj, %.body94 ]
  call void @_ZNSt3__115__expected_baseINS_6vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS5_EEEENS3_14ImageLoadErrorEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %16) #47
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %.body85
  %.pn52.pn = phi { ptr, i32 } [ %.pn52, %bb.ea ], [ %.pn49.pn, %.body85 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #47
  %i.ps = load i8, ptr %15, align 8
  %i.pt = trunc i8 %i.ps to i1
  br i1 %i.pt, label %bb.ec, label %.body83

bb.ec:                                            ; preds = %bb.eb
  %i.pu = load ptr, ptr %i.lm, align 8, !tbaa !220
  %i.pv = load i64, ptr %15, align 8
  %i.pw = and i64 %i.pv, -2
  call void @_ZdlPvm(ptr noundef %i.pu, i64 noundef %i.pw) #49
  br label %.body83

.body83:                                          ; preds = %bb.ec, %bb.eb, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i
  %.pn52.pn.pn = phi { ptr, i32 } [ %i.li, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i ], [ %.pn52.pn, %bb.ec ], [ %.pn52.pn, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #47
  br label %bb.ed

bb.ed:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.k, %bb.l, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit61, %.body83, %bb.cm, %bb.bj
  %.pn56.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.cm ], [ %.pn52.pn.pn, %.body83 ], [ %.pn46.pn, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit61 ], [ %.pn38.pn.pn.pn.pn.pn.pn, %bb.bj ], [ %i.z, %bb.k ], [ %i.aa, %bb.l ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt3__119basic_istringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %5) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  br label %common.resume

bb.ee:                                            ; preds = %bb.de, %bb.bo, %bb.an, %bb.af, %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev11ImageViewer15removeAllImagesEv(ptr noundef nonnull align 16 dereferenceable(1408) %0) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__1::shared_ptr.35", align 8 ; 6 uses
  %2 = alloca %"class.std::__1::shared_ptr.35", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !505
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !506
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7nanogui6Widget13request_focusEv(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %i.f = load ptr, ptr %i.c, align 16, !tbaa !506
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !505
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 4                   ; 2 uses
  %i.l = trunc i64 %i.k to i32
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 2 uses
  %i.o = and i64 %i.k, 2147483647
  br label %bb.c

._crit_edge:                                      ; preds = %bb.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  invoke void @_ZN3tev11ImageViewer11selectImageERKNSt3__110shared_ptrINS_5ImageEEEb(ptr noundef nonnull align 16 dereferenceable(1408) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext true)
          to label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit unwind label %bb.k

bb.c:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ %i.o, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 4 uses
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !417
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !397
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !398
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %i.v = load i8, ptr %i.u, align 8, !tbaa !234, !range !331, !noundef !385
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !505
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %indvars.iv.next ; 5 uses
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.c, align 16, !tbaa !506 ; 3 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrIN3tev5ImageEEES5_EET0_T_S7_S6_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100EOS3_.exit.i.i.i.i.i.i
  %storemerge9.i.i.i.i.i.i = phi ptr [ %i.am, %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100EOS3_.exit.i.i.i.i.i.i ], [ %i.y, %bb.d ] ; 3 uses
  %.08.i.i.i.i.i.i = phi ptr [ %i.al, %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100EOS3_.exit.i.i.i.i.i.i ], [ %i.aa, %bb.d ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 8
  %i.ad = load <2 x ptr>, ptr %.08.i.i.i.i.i.i, align 8, !tbaa !216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i.i, i8 0, i64 16, i1 false)
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !444 ; 5 uses
  store <2 x ptr> %i.ad, ptr %storemerge9.i.i.i.i.i.i, align 8, !tbaa !216
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100EOS3_.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = atomicrmw add ptr %i.af, i64 -1 acq_rel, align 8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100EOS3_.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !89
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(24) %i.ae) #47, !inline_history !17
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ae) #47
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100EOS3_.exit.i.i.i.i.i.i

_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100EOS3_.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e, %.lr.ph.i.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 16 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.al, %i.ab
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrIN3tev5ImageEEES5_EET0_T_S7_S6_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !18

_ZNSt3__14moveB8ne180100IPNS_10shared_ptrIN3tev5ImageEEES5_EET0_T_S7_S6_.exit.loopexit.i: ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100EOS3_.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %i.c, align 16, !tbaa !506
  %i.an = ptrtoint ptr %i.am to i64
  br label %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrIN3tev5ImageEEES5_EET0_T_S7_S6_.exit.i

_ZNSt3__14moveB8ne180100IPNS_10shared_ptrIN3tev5ImageEEES5_EET0_T_S7_S6_.exit.i: ; preds = %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrIN3tev5ImageEEES5_EET0_T_S7_S6_.exit.loopexit.i, %bb.d
  %.pre-phi = phi i64 [ %i.an, %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrIN3tev5ImageEEES5_EET0_T_S7_S6_.exit.loopexit.i ], [ %i.z, %bb.d ]
  %i.ao = phi ptr [ %.pre.i, %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrIN3tev5ImageEEES5_EET0_T_S7_S6_.exit.loopexit.i ], [ %i.ab, %bb.d ] ; 2 uses
  %storemerge.lcssa.i.i.i.i.i.i = phi ptr [ %i.am, %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrIN3tev5ImageEEES5_EET0_T_S7_S6_.exit.loopexit.i ], [ %i.y, %bb.d ] ; 2 uses
  %i.ap = sub i64 %.pre-phi, %i.z
  %i.aq = getelementptr inbounds i8, ptr %i.y, i64 %i.ap
  %.not6.i.i.i = icmp eq ptr %storemerge.lcssa.i.i.i.i.i.i, %i.ao
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE5eraseB8ne180100ENS_11__wrap_iterIPKS4_EE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrIN3tev5ImageEEES5_EET0_T_S7_S6_.exit.i, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i
  %.07.i.i.i = phi ptr [ %i.ar, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i ], [ %i.ao, %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrIN3tev5ImageEEES5_EET0_T_S7_S6_.exit.i ] ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -16 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !507 ; 5 uses
  %.not.i.i.i.i.i4.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i4.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = atomicrmw add ptr %i.au, i64 -1 acq_rel, align 8
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.h, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !89
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #47, !inline_history !19
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #47
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i: ; preds = %bb.h, %bb.g, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %storemerge.lcssa.i.i.i.i.i.i, %i.ar
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE5eraseB8ne180100ENS_11__wrap_iterIPKS4_EE.exit, label %.lr.ph.i.i.i

_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE5eraseB8ne180100ENS_11__wrap_iterIPKS4_EE.exit: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i, %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrIN3tev5ImageEEES5_EET0_T_S7_S6_.exit.i
  store ptr %i.aq, ptr %i.c, align 16, !tbaa !506
  %i.ba = load ptr, ptr %i.n, align 8, !tbaa !417
  %i.bb = trunc nuw nsw i64 %indvars.iv.next to i32
  tail call void @_ZN7nanogui6Widget15remove_child_atEi(ptr noundef nonnull align 8 dereferenceable(148) %i.ba, i32 noundef %i.bb)
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE5eraseB8ne180100ENS_11__wrap_iterIPKS4_EE.exit
  %i.bc = icmp sgt i64 %indvars.iv, 1
  br i1 %i.bc, label %bb.c, label %._crit_edge, !llvm.loop !1298

_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @_ZN3tev11ImageViewer15selectReferenceERKNSt3__110shared_ptrINS_5ImageEEE(ptr noundef nonnull align 16 dereferenceable(1408) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit
  ret void

bb.k:                                             ; preds = %._crit_edge
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  resume { ptr, i32 } %i.bd
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev11ImageViewer11removeImageENSt3__110shared_ptrINS_5ImageEEE(ptr noundef nonnull align 16 dereferenceable(1408) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__1::shared_ptr.35", align 8 ; 15 uses
  %3 = alloca %"class.std::__1::shared_ptr.35", align 8 ; 6 uses
  %4 = alloca %"class.std::__1::shared_ptr.35", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !505  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !506 ; 6 uses
  %.not7.i.i.i.i = icmp eq ptr %i.b, %i.d         ; 2 uses
  br i1 %.not7.i.i.i.i, label %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !439
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i.i ], [ %i.h, %bb.c ] ; 3 uses
  %i.f = load ptr, ptr %.08.i.i.i.i, align 8, !tbaa !439
  %i.g = icmp eq ptr %i.f, %i.e
  br i1 %i.g, label %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.d
  br i1 %.not.i.i.i.i, label %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit, label %bb.b, !llvm.loop !11

_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit: ; preds = %bb.b, %bb.c, %bb.a
  %.0.lcssa.i.i.i.i = phi ptr [ %i.b, %bb.a ], [ %.08.i.i.i.i, %bb.b ], [ %i.d, %bb.c ]
  %i.i = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.j = ptrtoint ptr %.0.lcssa.i.i.i.i to i64
  %i.k = sub i64 %i.j, %i.i                       ; 2 uses
  %i.l = ashr exact i64 %i.k, 4                   ; 3 uses
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub i64 %i.m, %i.i                       ; 4 uses
  %.not.i = icmp ult i64 %i.k, %i.n               ; 2 uses
  %.sroa.0.0.insert.insert.i = select i1 %.not.i, i64 %i.l, i64 0 ; 3 uses
  br i1 %.not.i, label %bb.d, label %bb.as

bb.d:                                             ; preds = %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !218
  %i.q = icmp eq i32 %i.p, 3
  br i1 %i.q, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 2 uses
  %i.s = load i64, ptr %i.r, align 16             ; 3 uses
  %i.t = icmp eq i64 %i.l, %i.s
  br i1 %i.t, label %bb.f, label %_ZNSt3__1ssB8ne180100ImmQaant26__is_derived_from_optionalIT0_E25three_way_comparable_withIT_S1_EEENS_24compare_three_way_resultIS2_S1_E4typeERKNS_8optionalIS2_EERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 657
  store i8 1, ptr %i.u, align 1, !tbaa !214
  store i32 0, ptr %i.o, align 8, !tbaa !218
  br label %bb.h

_ZNSt3__1ssB8ne180100ImmQaant26__is_derived_from_optionalIT0_E25three_way_comparable_withIT_S1_EEENS_24compare_three_way_resultIS2_S1_E4typeERKNS_8optionalIS2_EERKS1_.exit: ; preds = %bb.e
  %i.v = icmp ult i64 %i.l, %i.s
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt3__1ssB8ne180100ImmQaant26__is_derived_from_optionalIT0_E25three_way_comparable_withIT_S1_EEENS_24compare_three_way_resultIS2_S1_E4typeERKNS_8optionalIS2_EERKS1_.exit
  %i.w = add i64 %i.s, -1
  store i64 %i.w, ptr %i.r, align 16, !tbaa !522
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZNSt3__1ssB8ne180100ImmQaant26__is_derived_from_optionalIT0_E25three_way_comparable_withIT_S1_EEENS_24compare_three_way_resultIS2_S1_E4typeERKNS_8optionalIS2_EERKS1_.exit, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  br i1 %.not7.i.i.i.i, label %_ZN3tev11ImageViewer9nextImageERKNSt3__110shared_ptrINS_5ImageEEENS_10EDirectionE.exit36.thread, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h
  %i.x = load ptr, ptr %1, align 8, !tbaa !439, !noalias !1303
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i.i.i ], [ %i.aa, %bb.j ] ; 3 uses
  %i.y = load ptr, ptr %.08.i.i.i.i.i, align 8, !tbaa !439, !noalias !1303
  %i.z = icmp eq ptr %i.y, %i.x
  br i1 %i.z, label %._ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i_crit_edge, label %bb.j

._ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i_crit_edge: ; preds = %bb.i
  %.pre76.a = ptrtoint ptr %.08.i.i.i.i.i to i64
  %.pre78 = sub i64 %.pre76.a, %i.i
  br label %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i, label %bb.i, !llvm.loop !11

_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i: ; preds = %bb.j, %._ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i_crit_edge
  %.pre-phi79 = phi i64 [ %.pre78, %._ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i_crit_edge ], [ %i.n, %bb.j ] ; 2 uses
  %i.ab = lshr exact i64 %.pre-phi79, 4
  %.not.i.i = icmp ult i64 %.pre-phi79, %i.n
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = select i1 %.not.i.i, i32 %i.ac, i32 0   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !417, !noalias !1303 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !396, !noalias !1303
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !397, !noalias !1303 ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = lshr exact i64 %i.am, 3
  %i.ao = trunc i64 %i.an to i32                  ; 2 uses
  %invariant.op.i = add i32 %i.ao, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i
  %.0.i = phi i32 [ %i.ad, %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i ], [ %i.ap, %bb.k ]
  %.reass.i = add i32 %invariant.op.i, %.0.i
  %i.ap = srem i32 %.reass.i, %i.ao               ; 3 uses
  %i.aq = sext i32 %i.ap to i64                   ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !398, !noalias !1303
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 104
  %i.au = load i8, ptr %i.at, align 8, !tbaa !234, !range !331, !noalias !1303, !noundef !385
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = icmp eq i32 %i.ap, %i.ad
  %.not9.i = or i1 %i.aw, %i.av
  br i1 %.not9.i, label %bb.l, label %bb.k, !llvm.loop !26

bb.l:                                             ; preds = %bb.k
  %i.ax = ashr exact i64 %i.n, 4
  %.not.i10.i = icmp ugt i64 %i.ax, %i.aq
  br i1 %.not.i10.i, label %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZNKSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE20__throw_out_of_rangeB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #50, !noalias !1303
  unreachable

_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit.i: ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.aq ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !439, !noalias !1303 ; 2 uses
  store ptr %i.az, ptr %2, align 8, !tbaa !439, !alias.scope !1303
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !507, !noalias !1303 ; 8 uses
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !507, !alias.scope !1303
  %.not.i11.i = icmp eq ptr %i.bc, null
  br i1 %.not.i11.i, label %_ZN3tev11ImageViewer9nextImageERKNSt3__110shared_ptrINS_5ImageEEENS_10EDirectionE.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = atomicrmw add ptr %i.bd, i64 1 monotonic, align 8, !noalias !1303 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !505
  %.pre71 = load ptr, ptr %i.c, align 16, !tbaa !506
  br label %_ZN3tev11ImageViewer9nextImageERKNSt3__110shared_ptrINS_5ImageEEENS_10EDirectionE.exit

_ZN3tev11ImageViewer9nextImageERKNSt3__110shared_ptrINS_5ImageEEENS_10EDirectionE.exit: ; preds = %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit.i, %bb.n
  %i.bf = phi ptr [ %.pre71, %bb.n ], [ %i.d, %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit.i ] ; 6 uses
  %i.bg = phi ptr [ %.pre, %bb.n ], [ %i.b, %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit.i ] ; 5 uses
  %.not7.i.i.i.i11 = icmp eq ptr %i.bg, %i.bf     ; 2 uses
  br i1 %.not7.i.i.i.i11, label %_ZNSt3__1ssB8ne180100ImTkNS_25three_way_comparable_withIT_EEmEENS_24compare_three_way_resultIS2_T0_E4typeERKNS_8optionalIS2_EERKNS7_IS4_EE.exit, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %_ZN3tev11ImageViewer9nextImageERKNSt3__110shared_ptrINS_5ImageEEENS_10EDirectionE.exit, %bb.o
  %.08.i.i.i.i13 = phi ptr [ %i.bj, %bb.o ], [ %i.bg, %_ZN3tev11ImageViewer9nextImageERKNSt3__110shared_ptrINS_5ImageEEENS_10EDirectionE.exit ] ; 3 uses
  %i.bh = load ptr, ptr %.08.i.i.i.i13, align 8, !tbaa !439
  %i.bi = icmp eq ptr %i.bh, %i.az
  br i1 %i.bi, label %_ZNSt3__1ssB8ne180100ImTkNS_25three_way_comparable_withIT_EEmEENS_24compare_three_way_resultIS2_T0_E4typeERKNS_8optionalIS2_EERKNS7_IS4_EE.exit, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i12
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i13, i64 16 ; 2 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.bj, %i.bf
  br i1 %.not.i.i.i.i14, label %_ZNSt3__1ssB8ne180100ImTkNS_25three_way_comparable_withIT_EEmEENS_24compare_three_way_resultIS2_T0_E4typeERKNS_8optionalIS2_EERKNS7_IS4_EE.exit, label %.lr.ph.i.i.i.i12, !llvm.loop !11

_ZNSt3__1ssB8ne180100ImTkNS_25three_way_comparable_withIT_EEmEENS_24compare_three_way_resultIS2_T0_E4typeERKNS_8optionalIS2_EERKNS7_IS4_EE.exit: ; preds = %bb.o, %.lr.ph.i.i.i.i12, %_ZN3tev11ImageViewer9nextImageERKNSt3__110shared_ptrINS_5ImageEEENS_10EDirectionE.exit
  %.0.lcssa.i.i.i.i15 = phi ptr [ %i.bf, %_ZN3tev11ImageViewer9nextImageERKNSt3__110shared_ptrINS_5ImageEEENS_10EDirectionE.exit ], [ %i.bf, %bb.o ], [ %.08.i.i.i.i13, %.lr.ph.i.i.i.i12 ]
  %i.bk = ptrtoint ptr %i.bg to i64               ; 3 uses
  %i.bl = ptrtoint ptr %.0.lcssa.i.i.i.i15 to i64
  %i.bm = sub i64 %i.bl, %i.bk                    ; 2 uses
  %i.bn = ptrtoint ptr %i.bf to i64
  %i.bo = sub i64 %i.bn, %i.bk                    ; 4 uses
  %.not.i16 = icmp uge i64 %i.bm, %i.bo
  %i.bp = ashr exact i64 %i.bm, 4
  %i.bq = icmp ult i64 %i.bp, %.sroa.0.0.insert.insert.i
  %.sroa.0.0.i22 = select i1 %.not.i16, i1 true, i1 %i.bq
  br i1 %.sroa.0.0.i22, label %bb.p, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit

_ZN3tev11ImageViewer9nextImageERKNSt3__110shared_ptrINS_5ImageEEENS_10EDirectionE.exit36.thread: ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit

bb.p:                                             ; preds = %_ZNSt3__1ssB8ne180100ImTkNS_25three_way_comparable_withIT_EEmEENS_24compare_three_way_resultIS2_T0_E4typeERKNS_8optionalIS2_EERKNS7_IS4_EE.exit
  br i1 %.not7.i.i.i.i11, label %_ZN3tev11ImageViewer9nextImageERKNSt3__110shared_ptrINS_5ImageEEENS_10EDirectionE.exit36, label %.lr.ph.i.i.i.i.i23

.lr.ph.i.i.i.i.i23:                               ; preds = %bb.p
  %i.br = load ptr, ptr %1, align 8, !tbaa !439, !noalias !1304
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.lr.ph.i.i.i.i.i23
  %.08.i.i.i.i.i24 = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i23 ], [ %i.bu, %bb.r ] ; 3 uses
  %i.bs = load ptr, ptr %.08.i.i.i.i.i24, align 8, !tbaa !439, !noalias !1304
  %i.bt = icmp eq ptr %i.bs, %i.br
  br i1 %i.bt, label %._ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i26_crit_edge, label %bb.r

._ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i26_crit_edge: ; preds = %bb.q
  %.pre73.a = ptrtoint ptr %.08.i.i.i.i.i24 to i64
  %.pre74 = sub i64 %.pre73.a, %i.bk
  br label %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i26

bb.r:                                             ; preds = %bb.q
  %i.bu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i24, i64 16 ; 2 uses
  %.not.i.i.i.i.i25 = icmp eq ptr %i.bu, %i.bf
  br i1 %.not.i.i.i.i.i25, label %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i26, label %bb.q, !llvm.loop !11

_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i26: ; preds = %bb.r, %._ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i26_crit_edge
  %.pre-phi75 = phi i64 [ %.pre74, %._ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i26_crit_edge ], [ %i.bo, %bb.r ] ; 2 uses
  %i.bv = lshr exact i64 %.pre-phi75, 4
  %.not.i.i28 = icmp ult i64 %.pre-phi75, %i.bo
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = select i1 %.not.i.i28, i32 %i.bw, i32 0 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !417, !noalias !1304 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 80
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 88
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !396, !noalias !1304
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !397, !noalias !1304 ; 2 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = lshr exact i64 %i.cg, 3
  %i.ci = trunc i64 %i.ch to i32                  ; 2 uses
  %invariant.op.i29 = add i32 %i.ci, -1
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i26
  %.0.i30 = phi i32 [ %i.bx, %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i26 ], [ %i.cj, %bb.s ]
  %.reass.i31 = add i32 %invariant.op.i29, %.0.i30
  %i.cj = srem i32 %.reass.i31, %i.ci             ; 3 uses
  %i.ck = sext i32 %i.cj to i64                   ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !398, !noalias !1304
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 104
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !234, !range !331, !noalias !1304, !noundef !385
  %i.cp = trunc nuw i8 %i.co to i1
  %i.cq = icmp eq i32 %i.cj, %i.bx
  %.not9.i32 = or i1 %i.cq, %i.cp
  br i1 %.not9.i32, label %bb.t, label %bb.s, !llvm.loop !26

bb.t:                                             ; preds = %bb.s
  %i.cr = ashr exact i64 %i.bo, 4
  %.not.i10.i33 = icmp ugt i64 %i.cr, %i.ck
  br i1 %.not.i10.i33, label %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit.i34, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_ZNKSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE20__throw_out_of_rangeB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #50
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %bb.u
  unreachable

_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit.i34: ; preds = %bb.t
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %i.ck ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !439, !noalias !1304 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !507, !noalias !1304 ; 3 uses
  %.not.i11.i35 = icmp eq ptr %i.cv, null
  br i1 %.not.i11.i35, label %_ZN3tev11ImageViewer9nextImageERKNSt3__110shared_ptrINS_5ImageEEENS_10EDirectionE.exit36, label %bb.v

bb.v:                                             ; preds = %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit.i34
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = atomicrmw add ptr %i.cw, i64 1 monotonic, align 8, !noalias !1304 ; 0 uses
  br label %_ZN3tev11ImageViewer9nextImageERKNSt3__110shared_ptrINS_5ImageEEENS_10EDirectionE.exit36

_ZN3tev11ImageViewer9nextImageERKNSt3__110shared_ptrINS_5ImageEEENS_10EDirectionE.exit36: ; preds = %bb.v, %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit.i34, %bb.p
  %.sroa.053.0 = phi ptr [ %i.ct, %bb.v ], [ %i.ct, %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit.i34 ], [ null, %bb.p ]
  %.sroa.7.0 = phi ptr [ %i.cv, %bb.v ], [ null, %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit.i34 ], [ null, %bb.p ]
  store ptr %.sroa.053.0, ptr %2, align 8, !tbaa !443
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.7.0, ptr %i.cy, align 8, !tbaa !444
  %.not.i.i37 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i37, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN3tev11ImageViewer9nextImageERKNSt3__110shared_ptrINS_5ImageEEENS_10EDirectionE.exit36
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.da = atomicrmw add ptr %i.cz, i64 -1 acq_rel, align 8
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.x, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit

bb.x:                                             ; preds = %bb.w
  %i.dc = load ptr, ptr %i.bc, align 8, !tbaa !89
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  tail call void %i.de(ptr noundef nonnull align 8 dereferenceable(24) %i.bc) #47, !inline_history !10
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bc) #47
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit

bb.y:                                             ; preds = %bb.u
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit: ; preds = %_ZN3tev11ImageViewer9nextImageERKNSt3__110shared_ptrINS_5ImageEEENS_10EDirectionE.exit36.thread, %_ZN3tev11ImageViewer9nextImageERKNSt3__110shared_ptrINS_5ImageEEENS_10EDirectionE.exit36, %bb.w, %bb.x, %_ZNSt3__1ssB8ne180100ImTkNS_25three_way_comparable_withIT_EEmEENS_24compare_three_way_resultIS2_T0_E4typeERKNS_8optionalIS2_EERKNS7_IS4_EE.exit
  %i.dg = load ptr, ptr %2, align 8, !tbaa !439
  %i.dh = load ptr, ptr %1, align 8, !tbaa !439
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %bb.z, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit42

bb.z:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit
  store ptr null, ptr %2, align 8, !tbaa !443
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !444 ; 5 uses
  store ptr null, ptr %i.dj, align 8, !tbaa !444
  %.not.i.i39 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i39, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit42, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = atomicrmw add ptr %i.dl, i64 -1 acq_rel, align 8
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %bb.ab, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit42

bb.ab:                                            ; preds = %bb.aa
  %i.do = load ptr, ptr %i.dk, align 8, !tbaa !89
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8
  tail call void %i.dq(ptr noundef nonnull align 8 dereferenceable(24) %i.dk) #47, !inline_history !10
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dk) #47
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit42

_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit42: ; preds = %bb.z, %bb.aa, %bb.ab, %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit
  invoke void @_ZN7nanogui6Widget13request_focusEv(ptr noundef nonnull align 8 dereferenceable(148) %0)
          to label %bb.ac unwind label %bb.aj

bb.ac:                                            ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit42
  %i.dr = load ptr, ptr %i.a, align 8, !tbaa !505
  %i.ds = getelementptr inbounds [16 x i8], ptr %i.dr, i64 %.sroa.0.0.insert.insert.i ; 5 uses
  %i.dt = ptrtoint ptr %i.ds to i64               ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 2 uses
  %i.dv = load ptr, ptr %i.c, align 16, !tbaa !506 ; 3 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.du, %i.dv
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrIN3tev5ImageEEES5_EET0_T_S7_S6_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ac, %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100EOS3_.exit.i.i.i.i.i.i
  %storemerge9.i.i.i.i.i.i = phi ptr [ %i.eg, %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100EOS3_.exit.i.i.i.i.i.i ], [ %i.ds, %bb.ac ] ; 3 uses
  %.08.i.i.i.i.i.i = phi ptr [ %i.ef, %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100EOS3_.exit.i.i.i.i.i.i ], [ %i.du, %bb.ac ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 8
  %i.dx = load <2 x ptr>, ptr %.08.i.i.i.i.i.i, align 8, !tbaa !216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i.i, i8 0, i64 16, i1 false)
  %i.dy = load ptr, ptr %i.dw, align 8, !tbaa !444 ; 5 uses
  store <2 x ptr> %i.dx, ptr %storemerge9.i.i.i.i.i.i, align 8, !tbaa !216
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100EOS3_.exit.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = atomicrmw add ptr %i.dz, i64 -1 acq_rel, align 8
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %bb.ae, label %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100EOS3_.exit.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.ec = load ptr, ptr %i.dy, align 8, !tbaa !89
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8
  tail call void %i.ee(ptr noundef nonnull align 8 dereferenceable(24) %i.dy) #47, !inline_history !17
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dy) #47
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100EOS3_.exit.i.i.i.i.i.i

_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100EOS3_.exit.i.i.i.i.i.i: ; preds = %bb.ae, %bb.ad, %.lr.ph.i.i.i.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 16 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ef, %i.dv
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrIN3tev5ImageEEES5_EET0_T_S7_S6_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !18

_ZNSt3__14moveB8ne180100IPNS_10shared_ptrIN3tev5ImageEEES5_EET0_T_S7_S6_.exit.loopexit.i: ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100EOS3_.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %i.c, align 16, !tbaa !506
  %i.eh = ptrtoint ptr %i.eg to i64
  br label %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrIN3tev5ImageEEES5_EET0_T_S7_S6_.exit.i

_ZNSt3__14moveB8ne180100IPNS_10shared_ptrIN3tev5ImageEEES5_EET0_T_S7_S6_.exit.i: ; preds = %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrIN3tev5ImageEEES5_EET0_T_S7_S6_.exit.loopexit.i, %bb.ac
  %.pre-phi = phi i64 [ %i.eh, %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrIN3tev5ImageEEES5_EET0_T_S7_S6_.exit.loopexit.i ], [ %i.dt, %bb.ac ]
  %i.ei = phi ptr [ %.pre.i, %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrIN3tev5ImageEEES5_EET0_T_S7_S6_.exit.loopexit.i ], [ %i.dv, %bb.ac ] ; 2 uses
  %storemerge.lcssa.i.i.i.i.i.i = phi ptr [ %i.eg, %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrIN3tev5ImageEEES5_EET0_T_S7_S6_.exit.loopexit.i ], [ %i.ds, %bb.ac ] ; 2 uses
  %i.ej = sub i64 %.pre-phi, %i.dt
  %i.ek = getelementptr inbounds i8, ptr %i.ds, i64 %i.ej
  %.not6.i.i.i = icmp eq ptr %storemerge.lcssa.i.i.i.i.i.i, %i.ei
  br i1 %.not6.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrIN3tev5ImageEEES5_EET0_T_S7_S6_.exit.i, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i
  %.07.i.i.i = phi ptr [ %i.el, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i ], [ %i.ei, %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrIN3tev5ImageEEES5_EET0_T_S7_S6_.exit.i ] ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -16 ; 2 uses
  %i.em = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !507 ; 5 uses
  %.not.i.i.i.i.i4.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i.i4.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = atomicrmw add ptr %i.eo, i64 -1 acq_rel, align 8
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %bb.ag, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.er = load ptr, ptr %i.en, align 8, !tbaa !89
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8
  tail call void %i.et(ptr noundef nonnull align 8 dereferenceable(24) %i.en) #47, !inline_history !19
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.en) #47
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i: ; preds = %bb.ag, %bb.af, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %storemerge.lcssa.i.i.i.i.i.i, %i.el
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

.loopexit:                                        ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i, %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrIN3tev5ImageEEES5_EET0_T_S7_S6_.exit.i
  store ptr %i.ek, ptr %i.c, align 16, !tbaa !506
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !417
  %i.ew = trunc i64 %.sroa.0.0.insert.insert.i to i32
  invoke void @_ZN7nanogui6Widget15remove_child_atEi(ptr noundef nonnull align 8 dereferenceable(148) %i.ev, i32 noundef %i.ew)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %.loopexit
  %i.ex = load ptr, ptr %i.a, align 8, !tbaa !505
  %i.ey = load ptr, ptr %i.c, align 16, !tbaa !506
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  invoke void @_ZN3tev11ImageViewer11selectImageERKNSt3__110shared_ptrINS_5ImageEEEb(ptr noundef nonnull align 16 dereferenceable(1408) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext true)
          to label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit44 unwind label %bb.ak

_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit44: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @_ZN3tev11ImageViewer15selectReferenceERKNSt3__110shared_ptrINS_5ImageEEE(ptr noundef nonnull align 16 dereferenceable(1408) %0, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  br label %bb.ap

bb.aj:                                            ; preds = %bb.am, %.loopexit, %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit42
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ak:                                            ; preds = %bb.ai
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  br label %bb.at

bb.al:                                            ; preds = %bb.ah
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !439
  %i.fe = load ptr, ptr %1, align 8, !tbaa !439   ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN3tev11ImageViewer11selectImageERKNSt3__110shared_ptrINS_5ImageEEEb(ptr noundef nonnull align 16 dereferenceable(1408) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext true)
          to label %._crit_edge unwind label %bb.aj

._crit_edge:                                      ; preds = %bb.am
  %.pre72 = load ptr, ptr %1, align 8, !tbaa !439
  br label %bb.an

bb.an:                                            ; preds = %._crit_edge, %bb.al
  %i.fg = phi ptr [ %.pre72, %._crit_edge ], [ %i.fe, %bb.al ]
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !439
  %i.fj = icmp eq ptr %i.fi, %i.fg
  br i1 %i.fj, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void @_ZN3tev11ImageViewer15selectReferenceERKNSt3__110shared_ptrINS_5ImageEEE(ptr noundef nonnull align 16 dereferenceable(1408) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit44
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !507 ; 5 uses
  %.not.i47 = icmp eq ptr %i.fl, null
  br i1 %.not.i47, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit48, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = atomicrmw add ptr %i.fm, i64 -1 acq_rel, align 8
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %bb.ar, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit48

bb.ar:                                            ; preds = %bb.aq
  %i.fp = load ptr, ptr %i.fl, align 8, !tbaa !89
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8
  tail call void %i.fr(ptr noundef nonnull align 8 dereferenceable(24) %i.fl) #47, !inline_history !13
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fl) #47
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit48

_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit48: ; preds = %bb.ap, %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  br label %bb.as

bb.as:                                            ; preds = %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit, %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit48
  ret void

bb.at:                                            ; preds = %bb.ak, %bb.aj, %bb.y
  %.pn = phi { ptr, i32 } [ %i.df, %bb.y ], [ %i.fb, %bb.ak ], [ %i.fa, %bb.aj ]
  call void @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev11ImageViewer9nextImageERKNSt3__110shared_ptrINS_5ImageEEENS_10EDirectionE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::__1::shared_ptr.35") align 8 captures(none) %0, ptr noundef nonnull align 16 dereferenceable(1408) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i32 noundef %3) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 872 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !505  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 880
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !506 ; 4 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %.lr.ph.i.i.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.f = icmp eq i32 %3, 0
  %i.g = select i1 %i.f, i32 1, i32 -1
  %i.h = load ptr, ptr %2, align 8, !tbaa !439
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i.i ], [ %i.k, %bb.d ] ; 3 uses
  %i.i = load ptr, ptr %.08.i.i.i.i, align 8, !tbaa !439
  %i.j = icmp eq ptr %i.i, %i.h
  br i1 %i.j, label %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i.i, label %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit, label %bb.c, !llvm.loop !11

_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit: ; preds = %bb.c, %bb.d
  %.0.lcssa.i.i.i.i.ph = phi ptr [ %i.d, %bb.d ], [ %.08.i.i.i.i, %bb.c ]
  %i.l = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.m = ptrtoint ptr %.0.lcssa.i.i.i.i.ph to i64
  %i.n = sub i64 %i.m, %i.l                       ; 2 uses
  %i.o = lshr exact i64 %i.n, 4
  %i.p = ptrtoint ptr %i.d to i64
  %i.q = sub i64 %i.p, %i.l                       ; 2 uses
  %.not.i = icmp ult i64 %i.n, %i.q
  %i.r = trunc i64 %i.o to i32
  %i.s = select i1 %.not.i, i32 %i.r, i32 0       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1080
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !417  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !396
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !397  ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = lshr exact i64 %i.ab, 3
  %i.ad = trunc i64 %i.ac to i32                  ; 2 uses
  %invariant.op = add i32 %i.g, %i.ad
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit
  %.0 = phi i32 [ %i.s, %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit ], [ %i.ae, %bb.e ]
  %.reass = add i32 %.0, %invariant.op
  %i.ae = srem i32 %.reass, %i.ad                 ; 3 uses
  %i.af = sext i32 %i.ae to i64                   ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !398
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 104
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !234, !range !331, !noundef !385
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = icmp eq i32 %i.ae, %i.s
  %.not9 = or i1 %i.al, %i.ak
  br i1 %.not9, label %bb.f, label %bb.e, !llvm.loop !26

bb.f:                                             ; preds = %bb.e
  %i.am = ashr exact i64 %i.q, 4
  %.not.i10 = icmp ugt i64 %i.am, %i.af
  br i1 %.not.i10, label %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNKSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE20__throw_out_of_rangeB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #50
  unreachable

_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit: ; preds = %bb.f
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.af ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !507 ; 2 uses
  %i.aq = load <2 x ptr>, ptr %i.an, align 8, !tbaa !216
  store <2 x ptr> %i.aq, ptr %0, align 8, !tbaa !216
  %.not.i11 = icmp eq ptr %i.ap, null
  br i1 %.not.i11, label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = atomicrmw add ptr %i.ar, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit

_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit: ; preds = %bb.h, %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local { ptr, i64 } @_ZN3tev11ImageViewer9nextGroupENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEENS_10EDirectionE(ptr noundef nonnull align 16 dereferenceable(1408) %0, ptr nofree readonly captures(none) %1, i64 %2, i32 noundef %3) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !419  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !396
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !397  ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3
  %i.k = trunc i64 %i.j to i32                    ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.n = load i8, ptr %i.m, align 16              ; 2 uses
  %i.o = trunc i8 %i.n to i1                      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.q = load ptr, ptr %i.p, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1121
  %i.s = select i1 %i.o, ptr %i.q, ptr %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.u = load i64, ptr %i.t, align 8
  %i.v = lshr i8 %i.n, 1
  %i.w = zext nneg i8 %i.v to i64
  %i.x = select i1 %i.o, i64 %i.u, i64 %i.w
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.s, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.x, 1
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.y = icmp eq i32 %3, 0
  %i.z = select i1 %i.y, i32 1, i32 -1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !439 ; 3 uses
  %.not14.i = icmp eq ptr %i.ab, null
  br i1 %.not14.i, label %_ZNK3tev11ImageViewer7groupIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 416
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !508 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 424
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !509 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64               ; 3 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai
  %.not2.i.i.i.i = icmp eq ptr %i.af, %i.ad
  br i1 %.not2.i.i.i.i, label %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_4spanIKN3tev12ChannelGroupELm18446744073709551615EEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS5_11ImageViewer7groupIdESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i
  %.03.i.i.i.i = phi ptr [ %i.aw, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i ], [ %i.ad, %bb.d ] ; 6 uses
  %i.ak = load i8, ptr %.03.i.i.i.i, align 8      ; 2 uses
  %i.al = trunc i8 %i.ak to i1                    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 8
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = lshr i8 %i.ak, 1
  %i.ap = zext nneg i8 %i.ao to i64
  %i.aq = select i1 %i.al, i64 %i.an, i64 %i.ap
  %.not.i.i.i.i.i = icmp eq i64 %i.aq, %2
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 1
  %i.au = select i1 %i.al, ptr %i.as, ptr %i.at
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.au, ptr readonly %1, i64 %2)
  %i.av = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.av, label %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_4spanIKN3tev12ChannelGroupELm18446744073709551615EEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS5_11ImageViewer7groupIdESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.loopexit.i", label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aw, %i.af
  br i1 %.not.i.i.i.i, label %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_4spanIKN3tev12ChannelGroupELm18446744073709551615EEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS5_11ImageViewer7groupIdESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.loopexit.i", label %.lr.ph.i.i.i.i, !llvm.loop !21

"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_4spanIKN3tev12ChannelGroupELm18446744073709551615EEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS5_11ImageViewer7groupIdESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.loopexit.i": ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i
  %.0.lcssa.i.i.i.ph.i = phi ptr [ %.03.i.i.i.i, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i ], [ %i.aj, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i ]
  %.pre.i = ptrtoint ptr %.0.lcssa.i.i.i.ph.i to i64
  br label %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_4spanIKN3tev12ChannelGroupELm18446744073709551615EEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS5_11ImageViewer7groupIdESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.i"

"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_4spanIKN3tev12ChannelGroupELm18446744073709551615EEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS5_11ImageViewer7groupIdESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.i": ; preds = %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_4spanIKN3tev12ChannelGroupELm18446744073709551615EEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS5_11ImageViewer7groupIdESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.loopexit.i", %bb.d
  %.pre-phi.i = phi i64 [ %.pre.i, %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_4spanIKN3tev12ChannelGroupELm18446744073709551615EEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS5_11ImageViewer7groupIdESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.loopexit.i" ], [ %i.ah, %bb.d ]
  %i.ax = sub i64 %.pre-phi.i, %i.ah              ; 2 uses
  %.not.i = icmp ult i64 %i.ax, %i.ai
  br i1 %.not.i, label %bb.e, label %_ZNK3tev11ImageViewer7groupIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit

bb.e:                                             ; preds = %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_4spanIKN3tev12ChannelGroupELm18446744073709551615EEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS5_11ImageViewer7groupIdESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.i"
  %i.ay = sdiv exact i64 %i.ax, 48
  %i.az = trunc i64 %i.ay to i32
  br label %_ZNK3tev11ImageViewer7groupIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit

_ZNK3tev11ImageViewer7groupIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit: ; preds = %bb.c, %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_4spanIKN3tev12ChannelGroupELm18446744073709551615EEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS5_11ImageViewer7groupIdESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.i", %bb.e
  %.sroa.4.sroa.3.1.i = phi i32 [ 0, %bb.c ], [ %i.az, %bb.e ], [ 0, %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_4spanIKN3tev12ChannelGroupELm18446744073709551615EEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS5_11ImageViewer7groupIdESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.i" ] ; 2 uses
  %i.ba = add i32 %i.z, %i.k
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZNK3tev11ImageViewer7groupIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit
  %.0 = phi i32 [ %.sroa.4.sroa.3.1.i, %_ZNK3tev11ImageViewer7groupIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit ], [ %i.bc, %bb.f ]
  %i.bb = add i32 %i.ba, %.0
  %i.bc = srem i32 %i.bb, %i.k                    ; 3 uses
  %i.bd = sext i32 %i.bc to i64                   ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !398
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 104
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !234, !range !331, !noundef !385
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = icmp eq i32 %i.bc, %.sroa.4.sroa.3.1.i
  %.not13 = or i1 %i.bj, %i.bi
  br i1 %.not13, label %bb.g, label %bb.f, !llvm.loop !1305

bb.g:                                             ; preds = %bb.f
  %i.bk = tail call { ptr, i64 } @_ZN3tev11ImageViewer9groupNameEm(ptr noundef nonnull align 16 dereferenceable(1408) %0, i64 noundef %i.bd)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.pn = phi { ptr, i64 } [ %.fca.1.insert.i, %bb.b ], [ %i.bk, %bb.g ]
  ret { ptr, i64 } %.pn
}

declare void @glfwFocusWindow(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev11ImageViewer13draw_contentsEv(ptr noundef nonnull align 16 dereferenceable(1408) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %2 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %3 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %4 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 12 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.std::__1::shared_ptr.35", align 8 ; 14 uses
  %6 = alloca %"class.std::__1::basic_string", align 8 ; 9 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %7 = alloca %"class.std::__1::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::__1::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.std::__1::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 12 uses
  %11 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 14 uses
end_hunk_5
begin_hunk_6_@_ZN3tev11ImageViewer13draw_contentsEv:bb.a
          cleanup
  br label %.body106

.body106:                                         ; preds = %bb.bl, %bb.bp
  %eh.lpad-body107 = phi { ptr, i32 } [ %i.nj, %bb.bp ], [ %i.my, %bb.bl ] ; 2 uses
  %i.nk = load i8, ptr %24, align 8
  %i.nl = trunc i8 %i.nk to i1
  br i1 %i.nl, label %bb.bq, label %.body99

bb.bq:                                            ; preds = %.body106
  %i.nm = load ptr, ptr %i.md, align 8, !tbaa !220
  %i.nn = load i64, ptr %24, align 8
  %i.no = and i64 %i.nn, -2
  call void @_ZdlPvm(ptr noundef %i.nm, i64 noundef %i.no) #49
  br label %.body99

.body99:                                          ; preds = %bb.bq, %.body106, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i92
  %.pn = phi { ptr, i32 } [ %i.ma, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i92 ], [ %eh.lpad-body107, %bb.bq ], [ %eh.lpad-body107, %.body106 ]
  %i.np = load i8, ptr %25, align 8
  %i.nq = trunc i8 %i.np to i1
  br i1 %i.nq, label %bb.br, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit112

bb.br:                                            ; preds = %.body99
  %i.nr = load ptr, ptr %i.kr, align 8, !tbaa !220
  %i.ns = load i64, ptr %25, align 8
  %i.nt = and i64 %i.ns, -2
  call void @_ZdlPvm(ptr noundef %i.nr, i64 noundef %i.nt) #49
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit112

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit112: ; preds = %.body99, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #47
  br label %common.resume

bb.bs:                                            ; preds = %bb.ab, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit110, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.nu = load ptr, ptr %i.cc, align 8, !tbaa !350 ; 2 uses
  %i.nv = load ptr, ptr %i.cb, align 16, !tbaa !348 ; 3 uses
  %.not6.i.i.i = icmp eq ptr %i.nv, %i.nu
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bs, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i
  %.07.i.i.i = phi ptr [ %i.nw, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i ], [ %i.nu, %bb.bs ] ; 2 uses
  %i.nw = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -24 ; 4 uses
  %i.nx = load i8, ptr %i.nw, align 8
  %i.ny = trunc i8 %i.nx to i1
  br i1 %i.ny, label %bb.bt, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i

bb.bt:                                            ; preds = %.lr.ph.i.i.i
  %i.nz = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -8
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !220
  %i.ob = load i64, ptr %i.nw, align 8
  %i.oc = and i64 %i.ob, -2
  call void @_ZdlPvm(ptr noundef %i.oa, i64 noundef %i.oc) #49
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i: ; preds = %bb.bt, %.lr.ph.i.i.i
  %.not.i.i.i113 = icmp eq ptr %i.nv, %i.nw
  br i1 %.not.i.i.i113, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit, label %.lr.ph.i.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i, %bb.bs
  store ptr %i.nv, ptr %i.cc, align 8, !tbaa !350
  br label %bb.bu

bb.bu:                                            ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearB8ne180100Ev.exit, %bb.m, %bb.l
  call void @_ZN7nanogui6Screen5clearEv(ptr noundef nonnull align 16 dereferenceable(520) %0)
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.oe = load ptr, ptr %i.od, align 16, !tbaa !406
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 192
  %i.og = load i8, ptr %i.of, align 16, !tbaa !386, !range !331, !noundef !385
  %i.oh = trunc nuw i8 %i.og to i1
  br i1 %i.oh, label %bb.bv, label %.loopexit295

bb.bv:                                            ; preds = %bb.bu
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  call void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.oi)
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ok = load i64, ptr %i.oj, align 16, !tbaa !359
  %i.ol = icmp eq i64 %i.ok, 0
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.oi) #47
  br i1 %i.ol, label %bb.bw, label %.loopexit295

bb.bw:                                            ; preds = %bb.bv
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !407 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 152 ; 2 uses
  %i.op = load i8, ptr %i.oo, align 8
  %i.oq = trunc i8 %i.op to i1
  br i1 %i.oq, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.oo, i64 24, i1 false), !tbaa.struct !571
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit.i

bb.by:                                            ; preds = %bb.bw
  %i.or = getelementptr inbounds nuw i8, ptr %i.on, i64 168
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !220
  %i.ot = getelementptr inbounds nuw i8, ptr %i.on, i64 160
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !220
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %i.os, i64 noundef %i.ou)
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit.i: ; preds = %bb.by, %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47
  store ptr null, ptr %i.b, align 8, !tbaa !358
  %i.ov = load i8, ptr %6, align 8
  %i.ow = trunc i8 %i.ov to i1
  %i.ox = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.oy = load ptr, ptr %i.ox, align 8
  %i.oz = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 2 uses
  %i.pa = select i1 %i.ow, ptr %i.oy, ptr %i.oz
  %i.pb = call double @strtod(ptr noundef %i.pa, ptr noundef nonnull %i.b) #47
  %i.pc = load ptr, ptr %i.b, align 8, !tbaa !358
  %i.pd = load i8, ptr %6, align 8
  %i.pe = trunc i8 %i.pd to i1
  %i.pf = load ptr, ptr %i.ox, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  br i1 %i.pe, label %bb.bz, label %_ZNK7nanogui8FloatBoxIfE5valueEv.exit

bb.bz:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit.i
  %i.pg = load i64, ptr %6, align 8
  %i.ph = and i64 %i.pg, -2
  call void @_ZdlPvm(ptr noundef %i.pf, i64 noundef %i.ph) #49
  br label %_ZNK7nanogui8FloatBoxIfE5valueEv.exit

_ZNK7nanogui8FloatBoxIfE5valueEv.exit:            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit.i, %bb.bz
  %i.pi = phi ptr [ %i.oz, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit.i ], [ %i.pf, %bb.bz ]
  %i.pj = icmp eq ptr %i.pc, %i.pi
  %i.pk = fptrunc double %i.pb to float
  %.0.i = select i1 %i.pj, float 0.000000e+00, float %i.pk ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  %i.pl = fcmp olt float %.0.i, f0x3727C5AC
  %i.pm = fcmp ogt float %.0.i, 1.000000e+05
  %.val = select i1 %i.pm, float 1.000000e+05, float %.0.i
  %i.pn = fdiv float 1.000000e+00, %.val
  %i.po = select i1 %i.pl, float 1.000000e+05, float %i.pn ; 4 uses
  %i.pp = call i64 @_ZNSt3__16chrono12steady_clock3nowEv() #47 ; 3 uses
  %i.pq = fcmp oeq float %i.po, 5.000000e+02
  %i.pr = select i1 %i.pq, i8 0, i8 -127
  %i.ps = fcmp olt float %i.po, 5.000000e+02
  %i.pt = select i1 %i.ps, i8 1, i8 %i.pr
  %i.pu = fcmp ogt float %i.po, 5.000000e+02
  %i.pv = select i1 %i.pu, i8 -1, i8 %i.pt        ; 2 uses
  %i.pw = icmp ne i8 %i.pv, -127
  %i.px = icmp slt i8 %i.pv, 0
  %i.py = and i1 %i.pw, %i.px
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 4 uses
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.pz, align 16, !tbaa !374 ; 2 uses
  %i.qa = sub nsw i64 %i.pp, %.sroa.0.0.copyload.i2.i
  %i.qb = sitofp i64 %i.qa to float               ; 2 uses
  %i.qc = fmul float %i.po, 1.000000e+09          ; 4 uses
  %i.qd = select i1 %i.py, float %i.qc, float 5.000000e+11
  %i.qe = fcmp olt float %i.qd, %i.qb
  br i1 %i.qe, label %bb.ca, label %.preheader

.preheader:                                       ; preds = %_ZNK7nanogui8FloatBoxIfE5valueEv.exit
  %i.qf = fcmp ugt float %i.qc, %i.qb
  br i1 %i.qf, label %.loopexit295, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.qg = fptosi float %i.qc to i64
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 1080
  br label %bb.cm

bb.ca:                                            ; preds = %_ZNK7nanogui8FloatBoxIfE5valueEv.exit
  store i64 %i.pp, ptr %i.pz, align 16, !tbaa !374
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #47
  call void @llvm.experimental.noalias.scope.decl(metadata !1397)
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !505, !noalias !1397 ; 4 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.qo = load ptr, ptr %i.qn, align 16, !tbaa !506, !noalias !1397 ; 4 uses
  %i.qp = icmp eq ptr %i.qm, %i.qo
  br i1 %i.qp, label %bb.cb, label %.lr.ph.i.i.i.i.i

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %26, i8 0, i64 16, i1 false), !alias.scope !1397
  br label %_ZN3tev11ImageViewer9nextImageERKNSt3__110shared_ptrINS_5ImageEEENS_10EDirectionE.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ca
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !439, !noalias !1397
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cd, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.qm, %.lr.ph.i.i.i.i.i ], [ %i.qu, %bb.cd ] ; 3 uses
  %i.qs = load ptr, ptr %.08.i.i.i.i.i, align 8, !tbaa !439, !noalias !1397
  %i.qt = icmp eq ptr %i.qs, %i.qr
  br i1 %i.qt, label %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.qu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.qu, %i.qo
  br i1 %.not.i.i.i.i.i, label %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i, label %bb.cc, !llvm.loop !11

_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i: ; preds = %bb.cd, %bb.cc
  %.0.lcssa.i.i.i.i.ph.i = phi ptr [ %i.qo, %bb.cd ], [ %.08.i.i.i.i.i, %bb.cc ]
  %i.qv = ptrtoint ptr %i.qm to i64               ; 2 uses
  %i.qw = ptrtoint ptr %.0.lcssa.i.i.i.i.ph.i to i64
  %i.qx = sub i64 %i.qw, %i.qv                    ; 2 uses
  %i.qy = lshr exact i64 %i.qx, 4
  %i.qz = ptrtoint ptr %i.qo to i64
  %i.ra = sub i64 %i.qz, %i.qv                    ; 2 uses
  %.not.i.i115 = icmp ult i64 %i.qx, %i.ra
  %i.rb = trunc i64 %i.qy to i32
  %i.rc = select i1 %.not.i.i115, i32 %i.rb, i32 0 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !417, !noalias !1397 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 80
  %i.rg = getelementptr inbounds nuw i8, ptr %i.re, i64 88
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !396, !noalias !1397
  %i.ri = load ptr, ptr %i.rf, align 8, !tbaa !397, !noalias !1397 ; 2 uses
  %i.rj = ptrtoint ptr %i.rh to i64
  %i.rk = ptrtoint ptr %i.ri to i64
  %i.rl = sub i64 %i.rj, %i.rk
  %i.rm = lshr exact i64 %i.rl, 3
  %i.rn = trunc i64 %i.rm to i32                  ; 2 uses
  %invariant.op.i = add i32 %i.rn, 1
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ce, %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i
  %.0.i116 = phi i32 [ %i.rc, %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i ], [ %i.ro, %bb.ce ]
  %.reass.i = add i32 %invariant.op.i, %.0.i116
  %i.ro = srem i32 %.reass.i, %i.rn               ; 3 uses
  %i.rp = sext i32 %i.ro to i64                   ; 3 uses
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.ri, i64 %i.rp
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !398, !noalias !1397
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 104
  %i.rt = load i8, ptr %i.rs, align 8, !tbaa !234, !range !331, !noalias !1397, !noundef !385
  %i.ru = trunc nuw i8 %i.rt to i1
  %i.rv = icmp eq i32 %i.ro, %i.rc
  %.not9.i = or i1 %i.rv, %i.ru
  br i1 %.not9.i, label %bb.cf, label %bb.ce, !llvm.loop !26

bb.cf:                                            ; preds = %bb.ce
  %i.rw = ashr exact i64 %i.ra, 4
  %.not.i10.i = icmp ugt i64 %i.rw, %i.rp
  br i1 %.not.i10.i, label %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @_ZNKSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE20__throw_out_of_rangeB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.ql) #50, !noalias !1397
  unreachable

_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit.i: ; preds = %bb.cf
  %i.rx = getelementptr inbounds nuw [16 x i8], ptr %i.qm, i64 %i.rp ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !507, !noalias !1397 ; 3 uses
  %i.sa = load <2 x ptr>, ptr %i.rx, align 8, !tbaa !216, !noalias !1397
  store <2 x ptr> %i.sa, ptr %26, align 16, !tbaa !216, !alias.scope !1397
  %.not.i11.i = icmp eq ptr %i.rz, null
  br i1 %.not.i11.i, label %_ZN3tev11ImageViewer9nextImageERKNSt3__110shared_ptrINS_5ImageEEENS_10EDirectionE.exit, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit.i
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  %i.sc = atomicrmw add ptr %i.sb, i64 1 monotonic, align 8, !noalias !1397 ; 0 uses
  br label %_ZN3tev11ImageViewer9nextImageERKNSt3__110shared_ptrINS_5ImageEEENS_10EDirectionE.exit

_ZN3tev11ImageViewer9nextImageERKNSt3__110shared_ptrINS_5ImageEEENS_10EDirectionE.exit: ; preds = %bb.cb, %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit.i, %bb.ch
  %i.sd = phi ptr [ null, %bb.cb ], [ null, %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit.i ], [ %i.rz, %bb.ch ] ; 5 uses
  invoke void @_ZN3tev11ImageViewer11selectImageERKNSt3__110shared_ptrINS_5ImageEEEb(ptr noundef nonnull align 16 dereferenceable(1408) %0, ptr noundef nonnull align 8 dereferenceable(16) %26, i1 noundef zeroext false)
          to label %bb.ci unwind label %bb.cl

bb.ci:                                            ; preds = %_ZN3tev11ImageViewer9nextImageERKNSt3__110shared_ptrINS_5ImageEEENS_10EDirectionE.exit
  %.not.i117 = icmp eq ptr %i.sd, null
  br i1 %.not.i117, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 8
  %i.sf = atomicrmw add ptr %i.se, i64 -1 acq_rel, align 8
  %i.sg = icmp eq i64 %i.sf, 0
  br i1 %i.sg, label %bb.ck, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit

bb.ck:                                            ; preds = %bb.cj
  %i.sh = load ptr, ptr %i.sd, align 8, !tbaa !89
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 16
  %i.sj = load ptr, ptr %i.si, align 8
  call void %i.sj(ptr noundef nonnull align 8 dereferenceable(24) %i.sd) #47, !inline_history !13
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.sd) #47
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit: ; preds = %bb.ci, %bb.cj, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #47
  br label %.loopexit295

bb.cl:                                            ; preds = %_ZN3tev11ImageViewer9nextImageERKNSt3__110shared_ptrINS_5ImageEEENS_10EDirectionE.exit
  %i.sk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %26) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #47
  br label %common.resume

bb.cm:                                            ; preds = %.lr.ph, %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit135
  %.sroa.0.0.copyload.i2.i119321 = phi i64 [ %.sroa.0.0.copyload.i2.i, %.lr.ph ], [ %.sroa.0.0.copyload.i2.i119, %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit135 ]
  %i.sl = add nsw i64 %.sroa.0.0.copyload.i2.i119321, %i.qg
  store i64 %i.sl, ptr %i.pz, align 16, !tbaa !1398
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #47
  call void @llvm.experimental.noalias.scope.decl(metadata !1399)
  %i.sm = load ptr, ptr %i.qh, align 8, !tbaa !505, !noalias !1399 ; 4 uses
  %i.sn = load ptr, ptr %i.qi, align 16, !tbaa !506, !noalias !1399 ; 4 uses
  %i.so = icmp eq ptr %i.sm, %i.sn
  br i1 %i.so, label %bb.cn, label %.lr.ph.i.i.i.i.i120

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %27, i8 0, i64 16, i1 false), !alias.scope !1399
  br label %_ZN3tev11ImageViewer9nextImageERKNSt3__110shared_ptrINS_5ImageEEENS_10EDirectionE.exit133

.lr.ph.i.i.i.i.i120:                              ; preds = %bb.cm
  %i.sp = load ptr, ptr %i.qj, align 8, !tbaa !439, !noalias !1399
  br label %bb.co

bb.co:                                            ; preds = %bb.cp, %.lr.ph.i.i.i.i.i120
  %.08.i.i.i.i.i121 = phi ptr [ %i.sm, %.lr.ph.i.i.i.i.i120 ], [ %i.ss, %bb.cp ] ; 3 uses
  %i.sq = load ptr, ptr %.08.i.i.i.i.i121, align 8, !tbaa !439, !noalias !1399
  %i.sr = icmp eq ptr %i.sq, %i.sp
  br i1 %i.sr, label %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i123, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ss = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i121, i64 16 ; 2 uses
  %.not.i.i.i.i.i122 = icmp eq ptr %i.ss, %i.sn
  br i1 %.not.i.i.i.i.i122, label %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i123, label %bb.co, !llvm.loop !11

_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i123: ; preds = %bb.cp, %bb.co
  %.0.lcssa.i.i.i.i.ph.i124 = phi ptr [ %i.sn, %bb.cp ], [ %.08.i.i.i.i.i121, %bb.co ]
  %i.st = ptrtoint ptr %i.sm to i64               ; 2 uses
  %i.su = ptrtoint ptr %.0.lcssa.i.i.i.i.ph.i124 to i64
  %i.sv = sub i64 %i.su, %i.st                    ; 2 uses
  %i.sw = lshr exact i64 %i.sv, 4
  %i.sx = ptrtoint ptr %i.sn to i64
  %i.sy = sub i64 %i.sx, %i.st                    ; 2 uses
  %.not.i.i125 = icmp ult i64 %i.sv, %i.sy
  %i.sz = trunc i64 %i.sw to i32
  %i.ta = select i1 %.not.i.i125, i32 %i.sz, i32 0 ; 2 uses
  %i.tb = load ptr, ptr %i.qk, align 8, !tbaa !417, !noalias !1399 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 80
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 88
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !396, !noalias !1399
  %i.tf = load ptr, ptr %i.tc, align 8, !tbaa !397, !noalias !1399 ; 2 uses
  %i.tg = ptrtoint ptr %i.te to i64
  %i.th = ptrtoint ptr %i.tf to i64
  %i.ti = sub i64 %i.tg, %i.th
  %i.tj = lshr exact i64 %i.ti, 3
  %i.tk = trunc i64 %i.tj to i32                  ; 2 uses
  %invariant.op.i126 = add i32 %i.tk, 1
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cq, %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i123
  %.0.i127 = phi i32 [ %i.ta, %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i123 ], [ %i.tl, %bb.cq ]
  %.reass.i128 = add i32 %invariant.op.i126, %.0.i127
  %i.tl = srem i32 %.reass.i128, %i.tk            ; 3 uses
  %i.tm = sext i32 %i.tl to i64                   ; 3 uses
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %i.tm
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !398, !noalias !1399
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 104
  %i.tq = load i8, ptr %i.tp, align 8, !tbaa !234, !range !331, !noalias !1399, !noundef !385
  %i.tr = trunc nuw i8 %i.tq to i1
  %i.ts = icmp eq i32 %i.tl, %i.ta
  %.not9.i129 = or i1 %i.ts, %i.tr
  br i1 %.not9.i129, label %bb.cr, label %bb.cq, !llvm.loop !26

bb.cr:                                            ; preds = %bb.cq
  %i.tt = ashr exact i64 %i.sy, 4
  %.not.i10.i130 = icmp ugt i64 %i.tt, %i.tm
  br i1 %.not.i10.i130, label %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit.i131, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @_ZNKSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE20__throw_out_of_rangeB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.qh) #50, !noalias !1399
  unreachable

_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit.i131: ; preds = %bb.cr
  %i.tu = getelementptr inbounds nuw [16 x i8], ptr %i.sm, i64 %i.tm ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 8
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !507, !noalias !1399 ; 3 uses
  %i.tx = load <2 x ptr>, ptr %i.tu, align 8, !tbaa !216, !noalias !1399
  store <2 x ptr> %i.tx, ptr %27, align 16, !tbaa !216, !alias.scope !1399
  %.not.i11.i132 = icmp eq ptr %i.tw, null
  br i1 %.not.i11.i132, label %_ZN3tev11ImageViewer9nextImageERKNSt3__110shared_ptrINS_5ImageEEENS_10EDirectionE.exit133, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit.i131
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tw, i64 8
  %i.tz = atomicrmw add ptr %i.ty, i64 1 monotonic, align 8, !noalias !1399 ; 0 uses
  br label %_ZN3tev11ImageViewer9nextImageERKNSt3__110shared_ptrINS_5ImageEEENS_10EDirectionE.exit133

_ZN3tev11ImageViewer9nextImageERKNSt3__110shared_ptrINS_5ImageEEENS_10EDirectionE.exit133: ; preds = %bb.cn, %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit.i131, %bb.ct
  %i.ua = phi ptr [ null, %bb.cn ], [ null, %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit.i131 ], [ %i.tw, %bb.ct ] ; 5 uses
  invoke void @_ZN3tev11ImageViewer11selectImageERKNSt3__110shared_ptrINS_5ImageEEEb(ptr noundef nonnull align 16 dereferenceable(1408) %0, ptr noundef nonnull align 8 dereferenceable(16) %27, i1 noundef zeroext false)
          to label %bb.cu unwind label %bb.cx

bb.cu:                                            ; preds = %_ZN3tev11ImageViewer9nextImageERKNSt3__110shared_ptrINS_5ImageEEENS_10EDirectionE.exit133
  %.not.i134 = icmp eq ptr %i.ua, null
  br i1 %.not.i134, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit135, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  %i.uc = atomicrmw add ptr %i.ub, i64 -1 acq_rel, align 8
  %i.ud = icmp eq i64 %i.uc, 0
  br i1 %i.ud, label %bb.cw, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit135

bb.cw:                                            ; preds = %bb.cv
  %i.ue = load ptr, ptr %i.ua, align 8, !tbaa !89
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 16
  %i.ug = load ptr, ptr %i.uf, align 8
  call void %i.ug(ptr noundef nonnull align 8 dereferenceable(24) %i.ua) #47, !inline_history !13
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ua) #47
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit135

_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit135: ; preds = %bb.cu, %bb.cv, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #47
  %.sroa.0.0.copyload.i2.i119 = load i64, ptr %i.pz, align 16, !tbaa !374 ; 2 uses
  %i.uh = sub nsw i64 %i.pp, %.sroa.0.0.copyload.i2.i119
  %i.ui = sitofp i64 %i.uh to float
  %i.uj = fcmp ugt float %i.qc, %i.ui
  br i1 %i.uj, label %.loopexit295, label %bb.cm, !llvm.loop !1348

bb.cx:                                            ; preds = %_ZN3tev11ImageViewer9nextImageERKNSt3__110shared_ptrINS_5ImageEEENS_10EDirectionE.exit133
  %i.uk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %27) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #47
  br label %common.resume

.loopexit295:                                     ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit135, %.preheader, %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit, %bb.bv, %bb.bu
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.um = load ptr, ptr %i.ul, align 16, !tbaa !413
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 192
  %i.uo = load i8, ptr %i.un, align 16, !tbaa !386, !range !331, !noundef !385
  %i.up = trunc nuw i8 %i.uo to i1
  br i1 %i.up, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %.loopexit295
  %i.uq = call i64 @_ZNSt3__16chrono12steady_clock3nowEv() #47 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 2 uses
  %.sroa.0.0.copyload.i2.i137 = load i64, ptr %i.ur, align 8, !tbaa !374
  %i.us = sub nsw i64 %i.uq, %.sroa.0.0.copyload.i2.i137
  %i.ut = icmp sgt i64 %i.us, 99999999
  br i1 %i.ut, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  call void @_ZN3tev11ImageViewer28reloadImagesWhoseFileChangedEv(ptr noundef nonnull align 16 dereferenceable(1408) %0)
  %i.uu = load ptr, ptr %i.bw, align 16, !tbaa !524
  call void @_ZN3tev22BackgroundImagesLoader39checkDirectoriesForNewFilesAndLoadThoseEv(ptr noundef nonnull align 8 dereferenceable(300) %i.uu)
  store i64 %i.uq, ptr %i.ur, align 8, !tbaa !374
  br label %bb.da

bb.da:                                            ; preds = %bb.cy, %bb.cz, %.loopexit295
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #47
  %i.uv = load ptr, ptr %i.bw, align 16, !tbaa !524
  call void @_ZN3tev22BackgroundImagesLoader6tryPopEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::optional.437") align 8 %28, ptr noundef nonnull align 8 dereferenceable(300) %i.uv)
  %i.uw = getelementptr inbounds nuw i8, ptr %28, i64 56 ; 2 uses
  %i.ux = load i8, ptr %i.uw, align 8, !tbaa !573, !range !331, !noundef !385
  %i.uy = trunc nuw i8 %i.ux to i1
  br i1 %i.uy, label %.lr.ph328, label %.thread

.thread:                                          ; preds = %bb.da
  call void @_ZNSt3__124__optional_destruct_baseIN3tev13ImageAdditionELb0EED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(57) %28) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #47
  br label %bb.et

.lr.ph328:                                        ; preds = %bb.da
  %i.uz = getelementptr inbounds nuw i8, ptr %28, i64 24
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 4 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.vd = getelementptr inbounds nuw i8, ptr %28, i64 52
  %i.ve = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.vf = getelementptr inbounds nuw i8, ptr %28, i64 32 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 4 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %28, i64 40 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 4 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  br label %bb.db

bb.db:                                            ; preds = %.lr.ph328, %.loopexit289
  %.060327 = phi i8 [ 0, %.lr.ph328 ], [ %.161, %.loopexit289 ] ; 2 uses
  %.062326 = phi i1 [ false, %.lr.ph328 ], [ %.163, %.loopexit289 ]
  %i.vm = load i8, ptr %i.uz, align 8, !tbaa !568, !range !331, !noundef !385
  %i.vn = trunc nuw i8 %i.vm to i1
  br i1 %i.vn, label %bb.dm, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #47
  %i.vo = call noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %28) #47 ; 3 uses
  store ptr %i.vo, ptr %i.c, align 8, !tbaa !358
  %i.vp = load ptr, ptr %i.va, align 8, !tbaa !350 ; 9 uses
  %i.vq = load ptr, ptr %i.vb, align 16, !tbaa !349
  %i.vr = icmp ult ptr %i.vp, %i.vq
  br i1 %i.vr, label %bb.dd, label %bb.dj

bb.dd:                                            ; preds = %bb.dc
  %i.vs = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.vo) #47 ; 8 uses
  %i.vt = icmp ugt i64 %i.vs, -9
  br i1 %i.vt, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  invoke void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.vp) #50
          to label %.noexc.i.i unwind label %.loopexit.split-lp291

.noexc.i.i:                                       ; preds = %bb.de
  unreachable

bb.df:                                            ; preds = %bb.dd
  %i.vu = icmp ult i64 %i.vs, 23
  br i1 %i.vu, label %bb.dg, label %.thread.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.df
  %i.vv = or i64 %i.vs, 7                         ; 2 uses
  %i.vw = icmp eq i64 %i.vv, 23
  %i.vx = add nuw i64 %i.vv, 1
  %i.vy = select i1 %i.vw, i64 25, i64 %i.vx      ; 2 uses
  %i.vz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vy) #48
          to label %.noexc3.i.i unwind label %.loopexit290 ; 2 uses

.noexc3.i.i:                                      ; preds = %.thread.i.i.i.i.i.i.i
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  store ptr %i.vz, ptr %i.wa, align 8, !tbaa !220
  %i.wb = or i64 %i.vy, 1
  store i64 %i.wb, ptr %i.vp, align 8
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  store i64 %i.vs, ptr %i.wc, align 8, !tbaa !220
  br label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.wd = trunc nuw nsw i64 %i.vs to i8
  %i.we = shl nuw nsw i8 %i.wd, 1
  store i8 %i.we, ptr %i.vp, align 8
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vp, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.vs, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE22__construct_one_at_endB8ne180100IJPKcEEEvDpOT_.exit.i, label %bb.dh
end_hunk_6
begin_hunk_7_@_ZN3tev11ImageViewer11resizeToFitEN7nanogui5ArrayIfLm2EEE:bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.bl = load ptr, ptr %i.bk, align 16, !tbaa !250
  call void @_ZN3tev11ImageCanvas16fitImageToScreenERKNS_5ImageE(ptr noundef nonnull align 8 dereferenceable(504) %i.bl, ptr noundef nonnull align 16 dereferenceable(516) %i.bj)
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local <2 x float> @_ZN3tev11ImageViewer18sizeToFitAllImagesEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(1408) %0) local_unnamed_addr #20 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load <2 x i32>, ptr %i.a, align 16, !tbaa !227
  %i.c = sitofp <2 x i32> %i.b to <2 x float>     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !505  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !506 ; 2 uses
  %.not12 = icmp eq ptr %i.e, %i.g
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.i = load <4 x float>, ptr %i.h, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.k = load ptr, ptr %i.j, align 16             ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 60
  %i.r = shufflevector <4 x float> %i.i, <4 x float> poison, <2 x i32> zeroinitializer
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN3tev11ImageViewer14sizeToFitImageERKNSt3__110shared_ptrINS_5ImageEEE.exit, %bb.a
  %.sroa.08.0.lcssa = phi <2 x float> [ %i.c, %bb.a ], [ %i.an, %_ZN3tev11ImageViewer14sizeToFitImageERKNSt3__110shared_ptrINS_5ImageEEE.exit ]
  ret <2 x float> %.sroa.08.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZN3tev11ImageViewer14sizeToFitImageERKNSt3__110shared_ptrINS_5ImageEEE.exit
  %.sroa.05.014 = phi ptr [ %i.e, %.lr.ph ], [ %i.ao, %_ZN3tev11ImageViewer14sizeToFitImageERKNSt3__110shared_ptrINS_5ImageEEE.exit ] ; 2 uses
  %.sroa.08.013 = phi <2 x float> [ %i.c, %.lr.ph ], [ %i.an, %_ZN3tev11ImageViewer14sizeToFitImageERKNSt3__110shared_ptrINS_5ImageEEE.exit ] ; 2 uses
  %i.s = load ptr, ptr %.sroa.05.014, align 8, !tbaa !439 ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN3tev11ImageViewer14sizeToFitImageERKNSt3__110shared_ptrINS_5ImageEEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 376
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 384
  %i.v = load <2 x i32>, ptr %i.u, align 4, !tbaa !227
  %i.w = load <2 x i32>, ptr %i.t, align 4, !tbaa !227
  %i.x = sub nsw <2 x i32> %i.v, %i.w
  %i.y = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.x, <2 x i32> zeroinitializer)
  %i.z = uitofp nneg <2 x i32> %i.y to <2 x float>
  %i.aa = fdiv <2 x float> %i.z, %i.r             ; 3 uses
  %i.ab = load i8, ptr %i.l, align 8, !tbaa !234, !range !331, !noundef !385
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ad = load i32, ptr %i.m, align 8, !tbaa !227
  %i.ae = sitofp i32 %i.ad to float
  %i.af = extractelement <2 x float> %i.aa, i64 0
  %i.ag = fadd float %i.af, %i.ae
  %.sroa.07.0.vec.insert10.i = insertelement <2 x float> %i.aa, float %i.ag, i64 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.07.0.i = phi <2 x float> [ %.sroa.07.0.vec.insert10.i, %bb.d ], [ %i.aa, %bb.c ] ; 3 uses
  %i.ah = load i8, ptr %i.p, align 8, !tbaa !234, !range !331, !noundef !385
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.f, label %_ZN3tev11ImageViewer14sizeToFitImageERKNSt3__110shared_ptrINS_5ImageEEE.exit

bb.f:                                             ; preds = %bb.e
  %i.aj = load i32, ptr %i.q, align 4, !tbaa !227
  %i.ak = sitofp i32 %i.aj to float
  %.sroa.07.4.vec.extract.i = extractelement <2 x float> %.sroa.07.0.i, i64 1
  %i.al = fadd float %.sroa.07.4.vec.extract.i, %i.ak
  %.sroa.07.4.vec.insert13.i = insertelement <2 x float> %.sroa.07.0.i, float %i.al, i64 1
  br label %_ZN3tev11ImageViewer14sizeToFitImageERKNSt3__110shared_ptrINS_5ImageEEE.exit

_ZN3tev11ImageViewer14sizeToFitImageERKNSt3__110shared_ptrINS_5ImageEEE.exit: ; preds = %bb.b, %bb.e, %bb.f
  %.sroa.07.1.i = phi <2 x float> [ %.sroa.07.4.vec.insert13.i, %bb.f ], [ %.sroa.07.0.i, %bb.e ], [ %i.c, %bb.b ] ; 2 uses
  %i.am = fcmp olt <2 x float> %.sroa.08.013, %.sroa.07.1.i
  %i.an = select <2 x i1> %i.am, <2 x float> %.sroa.07.1.i, <2 x float> %.sroa.08.013 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.05.014, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ao, %i.g
  br i1 %.not, label %._crit_edge, label %bb.b
}

declare noundef zeroext i1 @_ZNK3tev22BackgroundImagesLoader15hasPendingLoadsEv(ptr noundef nonnull align 8 dereferenceable(300)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK3tev22BackgroundImagesLoader17hasImageAdditionsEv(ptr noundef nonnull align 8 dereferenceable(300)) local_unnamed_addr #5

declare void @_ZN7nanogui6Screen5clearEv(ptr noundef nonnull align 16 dereferenceable(520)) unnamed_addr #5

; Function Attrs: nounwind
declare i64 @_ZNSt3__16chrono12steady_clock3nowEv() local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK3tev11ImageViewer20watchFilesForChangesEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(1408) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !413
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.d = load i8, ptr %i.c, align 16, !tbaa !386, !range !331, !noundef !385
  %i.e = trunc nuw i8 %i.d to i1
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev11ImageViewer28reloadImagesWhoseFileChangedEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(1408) %0) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__1::__fs::filesystem::file_status", align 8 ; 4 uses
  %2 = alloca %"class.std::__1::shared_ptr.35", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !506
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !505  ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 784
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit
  %i.g = phi ptr [ %i.d, %.lr.ph ], [ %i.bh, %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit ]
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.bf, %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit ] ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.015 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !439
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @_ZNSt3__14__fs10filesystem8__statusERKNS1_4pathEPNS_10error_codeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::__fs::filesystem::file_status") align 4 %1, ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef null)
  %i.k = load i64, ptr %1, align 8
  %i.l = and i64 %i.k, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %.off = add nsw i64 %i.l, -1
  %switch = icmp ult i64 %.off, 254
  br i1 %switch, label %bb.c, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !439
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = invoke i128 @_ZNSt3__14__fs10filesystem17__last_write_timeERKNS1_4pathEPNS_10error_codeE(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef null)
          to label %_ZNSt3__14__fs10filesystem15last_write_timeB8ne180100ERKNS1_4pathE.exit unwind label %bb.d ; 2 uses

_ZNSt3__14__fs10filesystem15last_write_timeB8ne180100ERKNS1_4pathE.exit: ; preds = %bb.c
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !439  ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i = load i128, ptr %i.q, align 16, !tbaa !590
  %i.r = icmp eq i128 %i.o, %.sroa.0.0.copyload.i
  br i1 %i.r, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  %i.u = call ptr @__cxa_begin_catch(ptr %i.t) #47 ; 0 uses
  call void @__cxa_end_catch()
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit

bb.e:                                             ; preds = %_ZNSt3__14__fs10filesystem15last_write_timeB8ne180100ERKNS1_4pathE.exit
  store i128 %i.o, ptr %i.q, align 16, !tbaa !590
  store ptr %i.p, ptr %2, align 8, !tbaa !439
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !507  ; 3 uses
  store ptr %i.w, ptr %i.e, align 8, !tbaa !507
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = atomicrmw add ptr %i.x, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit

_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit: ; preds = %bb.e, %bb.f
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !505  ; 4 uses
  %i.aa = load ptr, ptr %i.b, align 16, !tbaa !506 ; 4 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not7.i.i.i.i.i, label %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit, %bb.g
  %.08.i.i.i.i.i = phi ptr [ %i.ad, %bb.g ], [ %i.z, %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit ] ; 3 uses
  %i.ab = load ptr, ptr %.08.i.i.i.i.i, align 8, !tbaa !439
  %i.ac = icmp eq ptr %i.ab, %i.p
  br i1 %i.ac, label %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !11

_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i, %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.z, %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit ], [ %i.aa, %bb.g ], [ %.08.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.ae = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.af = ptrtoint ptr %.0.lcssa.i.i.i.i.i to i64
  %i.ag = sub i64 %i.af, %i.ae
  %i.ah = ptrtoint ptr %i.aa to i64
  %i.ai = sub i64 %i.ah, %i.ae
  %.not.i.i = icmp ult i64 %i.ag, %i.ai
  br i1 %.not.i.i, label %bb.h, label %_ZN3tev11ImageViewer11reloadImageENSt3__110shared_ptrINS_5ImageEEEb.exit

bb.h:                                             ; preds = %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i
  %i.aj = load ptr, ptr %i.f, align 16, !tbaa !524
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.am = load i8, ptr %i.al, align 16            ; 2 uses
  %i.an = trunc i8 %i.am to i1                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.ap = load ptr, ptr %i.ao, align 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 49
  %i.ar = select i1 %i.an, ptr %i.ap, ptr %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.at = load i64, ptr %i.as, align 8
  %i.au = lshr i8 %i.am, 1
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = select i1 %i.an, i64 %i.at, i64 %i.av
  invoke void @_ZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEE(ptr noundef nonnull align 8 dereferenceable(300) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr %i.ar, i64 %i.aw, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN3tev11ImageViewer11reloadImageENSt3__110shared_ptrINS_5ImageEEEb.exit unwind label %bb.k

_ZN3tev11ImageViewer11reloadImageENSt3__110shared_ptrINS_5ImageEEEb.exit: ; preds = %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i, %bb.h
  %i.ax = load ptr, ptr %i.e, align 8, !tbaa !507 ; 5 uses
  %.not.i12 = icmp eq ptr %i.ax, null
  br i1 %.not.i12, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN3tev11ImageViewer11reloadImageENSt3__110shared_ptrINS_5ImageEEEb.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = atomicrmw add ptr %i.ay, i64 -1 acq_rel, align 8
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.j, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !89
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(24) %i.ax) #47, !inline_history !13
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ax) #47
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #47
  resume { ptr, i32 } %i.be

_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit: ; preds = %bb.b, %bb.d, %_ZNSt3__14__fs10filesystem15last_write_timeB8ne180100ERKNS1_4pathE.exit, %_ZN3tev11ImageViewer11reloadImageENSt3__110shared_ptrINS_5ImageEEEb.exit, %bb.i, %bb.j
  %i.bf = add nuw i64 %.015, 1                    ; 2 uses
  %i.bg = load ptr, ptr %i.b, align 16, !tbaa !506
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !505 ; 2 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = ashr exact i64 %i.bk, 4
  %i.bm = icmp ult i64 %i.bf, %i.bl
  br i1 %i.bm, label %bb.b, label %._crit_edge, !llvm.loop !1425
}

declare void @_ZN3tev22BackgroundImagesLoader39checkDirectoriesForNewFilesAndLoadThoseEv(ptr noundef nonnull align 8 dereferenceable(300)) local_unnamed_addr #5

declare void @_ZN3tev22BackgroundImagesLoader6tryPopEv(ptr dead_on_unwind writable sret(%"class.std::__1::optional.437") align 8, ptr noundef nonnull align 8 dereferenceable(300)) local_unnamed_addr #5

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #14

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev11ImageViewer12replaceImageENSt3__110shared_ptrINS_5ImageEEES4_b(ptr noundef nonnull align 16 dereferenceable(1408) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(16) %2, i1 noundef zeroext %3) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__1::shared_ptr.35", align 8 ; 9 uses
  %5 = alloca %"class.std::__1::shared_ptr.35", align 8 ; 3 uses
  %6 = alloca %"class.std::__1::basic_string", align 8 ; 18 uses
  %7 = alloca %"class.std::__1::shared_ptr.35", align 16 ; 3 uses
  %8 = alloca %"class.std::__1::shared_ptr.35", align 16 ; 4 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !439    ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #47 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.123)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #50
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #47
  br label %bb.at

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !505  ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !506 ; 7 uses
  %.not7.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not7.i.i.i.i, label %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.thread, label %.lr.ph.i.i.i.i

_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.thread: ; preds = %bb.e
  %i.h = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.i, %i.h                       ; 2 uses
  %.not.i26105 = icmp ne i64 %i.j, 0
  br label %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit37

.lr.ph.i.i.i.i:                                   ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !439
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %i.o, %bb.g ] ; 3 uses
  %i.m = load ptr, ptr %.08.i.i.i.i, align 8, !tbaa !439
  %i.n = icmp eq ptr %i.m, %i.l
  br i1 %i.n, label %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.g
  br i1 %.not.i.i.i.i, label %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit, label %bb.f, !llvm.loop !11

_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit: ; preds = %bb.f, %bb.g
  %.0.lcssa.i.i.i.i = phi ptr [ %.08.i.i.i.i, %bb.f ], [ %i.g, %bb.g ] ; 3 uses
  %i.p = ptrtoint ptr %i.e to i64                 ; 4 uses
  %i.q = ptrtoint ptr %.0.lcssa.i.i.i.i to i64
  %i.r = sub i64 %i.q, %i.p
  %i.s = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.t = sub i64 %i.s, %i.p                       ; 3 uses
  %.not.i26 = icmp ult i64 %i.r, %i.t             ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !439
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit
  %.08.i.i.i.i29 = phi ptr [ %i.e, %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit ], [ %i.x, %bb.i ] ; 4 uses
  %i.v = load ptr, ptr %.08.i.i.i.i29, align 8, !tbaa !439
  %i.w = icmp eq ptr %i.v, %i.u
  br i1 %i.w, label %._ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit37.loopexit_crit_edge, label %bb.i

._ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit37.loopexit_crit_edge: ; preds = %bb.h
  %.pre81 = ptrtoint ptr %.08.i.i.i.i29 to i64
  br label %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit37

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i29, i64 16 ; 2 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.x, %i.g
  br i1 %.not.i.i.i.i30, label %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit37, label %bb.h, !llvm.loop !11

_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit37: ; preds = %bb.i, %._ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit37.loopexit_crit_edge, %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.thread
  %.not.i26107 = phi i1 [ %.not.i26105, %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.thread ], [ %.not.i26, %._ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit37.loopexit_crit_edge ], [ %.not.i26, %bb.i ]
  %i.y = phi i64 [ %i.j, %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.thread ], [ %i.t, %._ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit37.loopexit_crit_edge ], [ %i.t, %bb.i ]
  %i.z = phi i64 [ %i.h, %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.thread ], [ %i.p, %._ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit37.loopexit_crit_edge ], [ %i.p, %bb.i ]
  %.0.lcssa.i.i.i.i106 = phi ptr [ %i.e, %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.thread ], [ %.0.lcssa.i.i.i.i, %._ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit37.loopexit_crit_edge ], [ %.0.lcssa.i.i.i.i, %bb.i ]
  %.pre-phi = phi i64 [ %i.h, %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.thread ], [ %.pre81, %._ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit37.loopexit_crit_edge ], [ %i.s, %bb.i ]
  %.0.lcssa.i.i.i.i31 = phi ptr [ %i.e, %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.thread ], [ %.08.i.i.i.i29, %._ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit37.loopexit_crit_edge ], [ %i.g, %bb.i ]
  %i.aa = sub i64 %.pre-phi, %i.z                 ; 2 uses
  %i.ab = ashr exact i64 %i.aa, 4                 ; 3 uses
  %.not.i32 = icmp ult i64 %i.aa, %i.y            ; 2 uses
  %.sroa.0.0.insert.insert.i34 = select i1 %.not.i32, i64 %i.ab, i64 0 ; 3 uses
  br i1 %.not.i32, label %bb.r, label %bb.j

bb.j:                                             ; preds = %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit37
  store ptr %i.a, ptr %5, align 8, !tbaa !439
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !507 ; 4 uses
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !507
  %.not.i38 = icmp eq ptr %i.ae, null
  br i1 %.not.i38, label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.thread, label %bb.k

_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.thread: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.a, ptr %4, align 8, !tbaa !439
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr null, ptr %i.af, align 8, !tbaa !507
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ah = atomicrmw add ptr %i.ag, i64 1 monotonic, align 8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.a, ptr %4, align 8, !tbaa !439
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.ae, ptr %i.ai, align 8, !tbaa !507
  %i.aj = atomicrmw add ptr %i.ag, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i

_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i: ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.thread, %bb.k
  %i.ak = phi ptr [ %i.af, %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.thread ], [ %i.ai, %bb.k ]
  %i.al = load ptr, ptr %i.f, align 16, !tbaa !506
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !505
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 4
  invoke void @_ZN3tev11ImageViewer11insertImageENSt3__110shared_ptrINS_5ImageEEEmb(ptr noundef nonnull align 16 dereferenceable(1408) %0, ptr nofree noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.aq, i1 noundef zeroext %3)
          to label %bb.l unwind label %.body

bb.l:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !507 ; 5 uses
  %.not.i3.i = icmp eq ptr %i.ar, null
  br i1 %.not.i3.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = atomicrmw add ptr %i.as, i64 -1 acq_rel, align 8
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !89
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(24) %i.ar) #47, !inline_history !25
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ar) #47
  br label %bb.o

.body:                                            ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #47
  call void @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #47
  br label %bb.at

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.az = load ptr, ptr %i.ac, align 8, !tbaa !507 ; 5 uses
  %.not.i39 = icmp eq ptr %i.az, null
  br i1 %.not.i39, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = atomicrmw add ptr %i.ba, i64 -1 acq_rel, align 8
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.q, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !89
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(24) %i.az) #47, !inline_history !13
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.az) #47
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit

bb.r:                                             ; preds = %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit37
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !417 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 80 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 88
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !396
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !397 ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 3
  %.not.i40 = icmp ult i64 %i.ab, %i.bp
  br i1 %.not.i40, label %_ZNKSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE2atEm.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_ZNKSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE20__throw_out_of_rangeB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.bi) #50
  unreachable

_ZNKSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE2atEm.exit: ; preds = %bb.r
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.ab
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !398, !nonnull !385, !noundef !385 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 152
  %i.bt = load i8, ptr %i.bs, align 8             ; 2 uses
  %i.bu = trunc i8 %i.bt to i1                    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 168
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 153
  %i.by = select i1 %i.bu, ptr %i.bw, ptr %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 160
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = lshr i8 %i.bt, 1
  %i.cc = zext nneg i8 %i.cb to i64
  %i.cd = select i1 %i.bu, i64 %i.ca, i64 %i.cc   ; 8 uses
  %i.ce = icmp ugt i64 %i.cd, -9
  br i1 %i.ce, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNKSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE2atEm.exit
  call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #50
  unreachable

bb.u:                                             ; preds = %_ZNKSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE2atEm.exit
  %i.cf = icmp ult i64 %i.cd, 23
  br i1 %i.cf, label %bb.v, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.u
  %i.cg = or i64 %i.cd, 7                         ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 23
  %i.ci = add nuw i64 %i.cg, 1
  %i.cj = select i1 %i.ch, i64 25, i64 %i.ci      ; 2 uses
  %i.ck = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #48 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !220
  %i.cm = or i64 %i.cj, 1
  store i64 %i.cm, ptr %6, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.cd, ptr %i.cn, align 8, !tbaa !220
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.co = trunc nuw nsw i64 %i.cd to i8
  %i.cp = shl nuw nsw i8 %i.co, 1
  store i8 %i.cp, ptr %6, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2INS_17basic_string_viewIcS2_EETnNS_9enable_ifIXaasr33__can_be_converted_to_string_viewIcS2_T_EE5valuentsr17__is_same_uncvrefISA_S5_EE5valueEiE4typeELi0EEERKSA_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread.i.i
  %.017.i.i = phi ptr [ %i.ck, %.thread.i.i ], [ %i.cq, %bb.v ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i.i, ptr align 1 %i.by, i64 %i.cd, i1 false)
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2INS_17basic_string_viewIcS2_EETnNS_9enable_ifIXaasr33__can_be_converted_to_string_viewIcS2_T_EE5valuentsr17__is_same_uncvrefISA_S5_EE5valueEiE4typeELi0EEERKSA_.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2INS_17basic_string_viewIcS2_EETnNS_9enable_ifIXaasr33__can_be_converted_to_string_viewIcS2_T_EE5valuentsr17__is_same_uncvrefISA_S5_EE5valueEiE4typeELi0EEERKSA_.exit: ; preds = %bb.v, %bb.w
  %.018.i.i = phi ptr [ %i.cq, %bb.v ], [ %.017.i.i, %bb.w ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 %i.cd
  store i8 0, ptr %i.cr, align 1, !tbaa !220
  %i.cs = icmp eq ptr %.0.lcssa.i.i.i.i106, %.0.lcssa.i.i.i.i31
  %.0.i = and i1 %.not.i26107, %i.cs
  %i.ct = or i1 %3, %.0.i
  %i.cu = load ptr, ptr %i.d, align 8, !tbaa !505 ; 4 uses
  %i.cv = load ptr, ptr %i.f, align 16, !tbaa !506 ; 4 uses
  %.not7.i.i.i.i41 = icmp eq ptr %i.cu, %i.cv
  br i1 %.not7.i.i.i.i41, label %.loopexit, label %.lr.ph.i.i.i.i42

.lr.ph.i.i.i.i42:                                 ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2INS_17basic_string_viewIcS2_EETnNS_9enable_ifIXaasr33__can_be_converted_to_string_viewIcS2_T_EE5valuentsr17__is_same_uncvrefISA_S5_EE5valueEiE4typeELi0EEERKSA_.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !439
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.lr.ph.i.i.i.i42
  %.08.i.i.i.i43 = phi ptr [ %i.cu, %.lr.ph.i.i.i.i42 ], [ %i.da, %bb.y ] ; 3 uses
  %i.cy = load ptr, ptr %.08.i.i.i.i43, align 8, !tbaa !439
  %i.cz = icmp eq ptr %i.cy, %i.cx
  br i1 %i.cz, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.da = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i43, i64 16 ; 2 uses
  %.not.i.i.i.i44 = icmp eq ptr %i.da, %i.cv
  br i1 %.not.i.i.i.i44, label %.loopexit, label %bb.x, !llvm.loop !11

.loopexit:                                        ; preds = %bb.y, %bb.x, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2INS_17basic_string_viewIcS2_EETnNS_9enable_ifIXaasr33__can_be_converted_to_string_viewIcS2_T_EE5valuentsr17__is_same_uncvrefISA_S5_EE5valueEiE4typeELi0EEERKSA_.exit
  %.0.lcssa.i.i.i.i45 = phi ptr [ %i.cu, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2INS_17basic_string_viewIcS2_EETnNS_9enable_ifIXaasr33__can_be_converted_to_string_viewIcS2_T_EE5valuentsr17__is_same_uncvrefISA_S5_EE5valueEiE4typeELi0EEERKSA_.exit ], [ %.08.i.i.i.i43, %bb.x ], [ %i.cv, %bb.y ]
  %i.db = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.dc = ptrtoint ptr %.0.lcssa.i.i.i.i45 to i64
  %i.dd = sub i64 %i.dc, %i.db                    ; 3 uses
  %i.de = ptrtoint ptr %i.cv to i64
  %i.df = sub i64 %i.de, %i.db
  %.not.i46 = icmp ult i64 %i.dd, %i.df
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !507 ; 6 uses
  %i.di = load <2 x ptr>, ptr %1, align 8, !tbaa !216
  store <2 x ptr> %i.di, ptr %7, align 16, !tbaa !216
  %.not.i52 = icmp eq ptr %i.dh, null             ; 2 uses
  br i1 %.not.i52, label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit53, label %bb.z

bb.z:                                             ; preds = %.loopexit
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dk = atomicrmw add ptr %i.dj, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit53

_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit53: ; preds = %.loopexit, %bb.z
  invoke void @_ZN3tev11ImageViewer11removeImageENSt3__110shared_ptrINS_5ImageEEE(ptr noundef nonnull align 16 dereferenceable(1408) %0, ptr nofree noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.aa unwind label %bb.ak

bb.aa:                                            ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit53
  br i1 %.not.i52, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit55, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dm = atomicrmw add ptr %i.dl, i64 -1 acq_rel, align 8
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %bb.ac, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit55

bb.ac:                                            ; preds = %bb.ab
  %i.do = load ptr, ptr %i.dh, align 8, !tbaa !89
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8
  tail call void %i.dq(ptr noundef nonnull align 8 dereferenceable(24) %i.dh) #47, !inline_history !13
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dh) #47
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit55

_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit55: ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !507 ; 2 uses
  %i.du = load <2 x ptr>, ptr %2, align 8, !tbaa !216
  store <2 x ptr> %i.du, ptr %8, align 16, !tbaa !216
  %.not.i56 = icmp eq ptr %i.dt, null
  br i1 %.not.i56, label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit57, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit55
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dw = atomicrmw add ptr %i.dv, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit57

_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit57: ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit55, %bb.ad
  invoke void @_ZN3tev11ImageViewer11insertImageENSt3__110shared_ptrINS_5ImageEEEmb(ptr noundef nonnull align 16 dereferenceable(1408) %0, ptr nofree noundef nonnull align 8 dereferenceable(16) %8, i64 noundef %.sroa.0.0.insert.insert.i34, i1 noundef zeroext %i.ct)
          to label %bb.ae unwind label %bb.al

bb.ae:                                            ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit57
  %i.dx = load ptr, ptr %i.dr, align 8, !tbaa !507 ; 5 uses
  %.not.i58 = icmp eq ptr %i.dx, null
  br i1 %.not.i58, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit59, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = atomicrmw add ptr %i.dy, i64 -1 acq_rel, align 8
  %i.ea = icmp eq i64 %i.dz, 0
  br i1 %i.ea, label %bb.ag, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit59

bb.ag:                                            ; preds = %bb.af
  %i.eb = load ptr, ptr %i.dx, align 8, !tbaa !89
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(24) %i.dx) #47, !inline_history !13
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dx) #47
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit59

_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit59: ; preds = %bb.ae, %bb.af, %bb.ag
  %i.ee = load ptr, ptr %i.bg, align 8, !tbaa !417 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 80 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 88
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !396
  %i.ei = load ptr, ptr %i.ef, align 8, !tbaa !397 ; 2 uses
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = ashr exact i64 %i.el, 3
  %.not.i60 = icmp ult i64 %.sroa.0.0.insert.insert.i34, %i.em
  br i1 %.not.i60, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit59
  invoke void @_ZNKSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE20__throw_out_of_rangeB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.ef) #50
          to label %.noexc unwind label %bb.aj

.noexc:                                           ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit59
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %.sroa.0.0.insert.insert.i34
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !398, !nonnull !385, !noundef !385 ; 7 uses
  %i.ep = load i8, ptr %6, align 8                ; 2 uses
  %i.eq = trunc i8 %i.ep to i1                    ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.eu = select i1 %i.eq, ptr %i.es, ptr %i.et   ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = lshr i8 %i.ep, 1
  %i.ey = zext nneg i8 %i.ex to i64
  %i.ez = select i1 %i.eq, i64 %i.ew, i64 %i.ey   ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eo, i64 152 ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 8             ; 2 uses
  %i.fc = trunc i8 %i.fb to i1                    ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eo, i64 160
  %i.fe = load i64, ptr %i.fd, align 8
  %i.ff = lshr i8 %i.fb, 1
  %i.fg = zext nneg i8 %i.ff to i64
  %i.fh = select i1 %i.fc, i64 %i.fe, i64 %i.fg
  %.not.i.i64 = icmp eq i64 %i.ez, %i.fh
  br i1 %.not.i.i64, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i

bb.aj:                                            ; preds = %bb.an, %_ZNKSt3__18functionIFvvEEclEv.exit.i, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i, %bb.ah
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ak:                                            ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit53
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #47
  br label %bb.ar

bb.al:                                            ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit57
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #47
  br label %bb.ar

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i: ; preds = %bb.ai
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eo, i64 153
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eo, i64 168
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = select i1 %i.fc, ptr %i.fn, ptr %i.fl
  %bcmp.i.i = call i32 @bcmp(ptr %i.eu, ptr %i.fo, i64 %i.ez)
  %i.fp = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.fp, label %_ZN3tev11ImageButton10setCaptionENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i, %bb.ai
  %i.fq = getelementptr inbounds nuw i8, ptr %i.eo, i64 64
  store i64 -1, ptr %i.fq, align 8, !tbaa !220
  %i.fr = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, ptr noundef %i.eu, i64 noundef %i.ez)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSINS_17basic_string_viewIcS2_EETnNS_9enable_ifIXaasr33__can_be_converted_to_string_viewIcS2_T_EE5valuentsr17__is_same_uncvrefISA_S5_EE5valueEiE4typeELi0EEERS5_RKSA_.exit.i unwind label %bb.aj ; 0 uses

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSINS_17basic_string_viewIcS2_EETnNS_9enable_ifIXaasr33__can_be_converted_to_string_viewIcS2_T_EE5valuentsr17__is_same_uncvrefISA_S5_EE5valueEiE4typeELi0EEERS5_RKSA_.exit.i: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.eo, i64 368
  %i.ft = getelementptr inbounds nuw i8, ptr %i.eo, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.fs, i8 0, i64 24, i1 false)
  %i.fu = load ptr, ptr %i.ft, align 16, !tbaa !324 ; 3 uses
  %.not.i65 = icmp eq ptr %i.fu, null
  br i1 %.not.i65, label %_ZN3tev11ImageButton10setCaptionENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit, label %_ZNKSt3__18functionIFvvEEclEv.exit.i

_ZNKSt3__18functionIFvvEEclEv.exit.i:             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSINS_17basic_string_viewIcS2_EETnNS_9enable_ifIXaasr33__can_be_converted_to_string_viewIcS2_T_EE5valuentsr17__is_same_uncvrefISA_S5_EE5valueEiE4typeELi0EEERS5_RKSA_.exit.i
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !89
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 48
  %i.fx = load ptr, ptr %i.fw, align 8
  invoke void %i.fx(ptr noundef nonnull align 8 dereferenceable(8) %i.fu)
          to label %_ZN3tev11ImageButton10setCaptionENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit unwind label %bb.aj, !inline_history !1426

_ZN3tev11ImageButton10setCaptionENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSINS_17basic_string_viewIcS2_EETnNS_9enable_ifIXaasr33__can_be_converted_to_string_viewIcS2_T_EE5valuentsr17__is_same_uncvrefISA_S5_EE5valueEiE4typeELi0EEERS5_RKSA_.exit.i, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i, %_ZNKSt3__18functionIFvvEEclEv.exit.i
  br i1 %.not.i46, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %_ZN3tev11ImageButton10setCaptionENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit
  %i.fy = load ptr, ptr %i.f, align 16, !tbaa !506
  %i.fz = load ptr, ptr %i.d, align 8, !tbaa !505 ; 2 uses
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %.not.i68 = icmp ult i64 %i.dd, %i.gc
  br i1 %.not.i68, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke void @_ZNKSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE20__throw_out_of_rangeB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #50
          to label %.noexc69 unwind label %bb.aj

.noexc69:                                         ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.dd
  call void @_ZN3tev11ImageViewer15selectReferenceERKNSt3__110shared_ptrINS_5ImageEEE(ptr noundef nonnull align 16 dereferenceable(1408) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.gd)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZN3tev11ImageButton10setCaptionENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit
  %i.ge = load i8, ptr %6, align 8
  %i.gf = trunc i8 %i.ge to i1
  br i1 %i.gf, label %bb.aq, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.aq:                                            ; preds = %bb.ap
  %i.gg = load ptr, ptr %i.er, align 8, !tbaa !220
  %i.gh = load i64, ptr %6, align 8
  %i.gi = and i64 %i.gh, -2
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gi) #49
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.ap, %bb.aq
end_hunk_7
begin_hunk_8_@_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE6insertENS_11__wrap_iterIPKS4_EERS9_:bb.a
  store ptr %i.cc, ptr %i.bo, align 8, !tbaa !521
  %i.cf = load ptr, ptr %i.h, align 8, !tbaa !521
  %i.cg = load ptr, ptr %i.bh, align 8, !tbaa !521
  store ptr %i.cg, ptr %i.h, align 8, !tbaa !521
  store ptr %i.cf, ptr %i.bh, align 8, !tbaa !521
  store ptr %i.ce, ptr %3, align 8, !tbaa !622
  %.not2.i.i.i.i = icmp eq ptr %i.ce, %i.cc
  br i1 %.not2.i.i.i.i, label %_ZNSt3__114__split_bufferINS_10shared_ptrIN3tev5ImageEEERNS_9allocatorIS4_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.r, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i
  %i.ch = phi ptr [ %i.cr, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i ], [ %i.cc, %bb.r ] ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -16
  store ptr %i.ci, ptr %i.bo, align 8, !tbaa !623
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 -8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !507 ; 5 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = atomicrmw add ptr %i.cl, i64 -1 acq_rel, align 8
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %bb.t, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.co = load ptr, ptr %i.ck, align 8, !tbaa !89
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(24) %i.ck) #47, !inline_history !28
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ck) #47
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i: ; preds = %bb.t, %bb.s, %.lr.ph.i.i.i.i
  %i.cr = load ptr, ptr %i.bo, align 8, !tbaa !623 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ce, %i.cr
  br i1 %.not.i.i.i.i, label %_ZNSt3__114__split_bufferINS_10shared_ptrIN3tev5ImageEEERNS_9allocatorIS4_EEE5clearB8ne180100Ev.exit.ithread-pre-split, label %.lr.ph.i.i.i.i

_ZNSt3__114__split_bufferINS_10shared_ptrIN3tev5ImageEEERNS_9allocatorIS4_EEE5clearB8ne180100Ev.exit.ithread-pre-split: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i
  %.pr = load ptr, ptr %3, align 8, !tbaa !622
  br label %_ZNSt3__114__split_bufferINS_10shared_ptrIN3tev5ImageEEERNS_9allocatorIS4_EEE5clearB8ne180100Ev.exit.i

_ZNSt3__114__split_bufferINS_10shared_ptrIN3tev5ImageEEERNS_9allocatorIS4_EEE5clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__114__split_bufferINS_10shared_ptrIN3tev5ImageEEERNS_9allocatorIS4_EEE5clearB8ne180100Ev.exit.ithread-pre-split, %bb.r
  %i.cs = phi ptr [ %.pr, %_ZNSt3__114__split_bufferINS_10shared_ptrIN3tev5ImageEEERNS_9allocatorIS4_EEE5clearB8ne180100Ev.exit.ithread-pre-split ], [ %i.ce, %bb.r ] ; 3 uses
  %.not.i24 = icmp eq ptr %i.cs, null
  br i1 %.not.i24, label %_ZNSt3__114__split_bufferINS_10shared_ptrIN3tev5ImageEEERNS_9allocatorIS4_EEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt3__114__split_bufferINS_10shared_ptrIN3tev5ImageEEERNS_9allocatorIS4_EEE5clearB8ne180100Ev.exit.i
  %i.ct = load ptr, ptr %i.bh, align 8, !tbaa !521
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cs to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.cw) #49
  br label %_ZNSt3__114__split_bufferINS_10shared_ptrIN3tev5ImageEEERNS_9allocatorIS4_EEED2Ev.exit

_ZNSt3__114__split_bufferINS_10shared_ptrIN3tev5ImageEEERNS_9allocatorIS4_EEED2Ev.exit: ; preds = %_ZNSt3__114__split_bufferINS_10shared_ptrIN3tev5ImageEEERNS_9allocatorIS4_EEE5clearB8ne180100Ev.exit.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100ERKS3_.exit

bb.v:                                             ; preds = %_ZNSt3__114__split_bufferINS_10shared_ptrIN3tev5ImageEEERNS_9allocatorIS4_EEEC2EmmS7_.exit
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__114__split_bufferINS_10shared_ptrIN3tev5ImageEEERNS_9allocatorIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  resume { ptr, i32 } %i.cx

_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100ERKS3_.exit: ; preds = %bb.l, %bb.k, %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i, %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE22__construct_one_at_endB8ne180100IJRKS4_EEEvDpOT_.exit, %_ZNSt3__114__split_bufferINS_10shared_ptrIN3tev5ImageEEERNS_9allocatorIS4_EEED2Ev.exit
  %.0 = phi ptr [ %i.e, %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE22__construct_one_at_endB8ne180100IJRKS4_EEEvDpOT_.exit ], [ %i.br, %_ZNSt3__114__split_bufferINS_10shared_ptrIN3tev5ImageEEERNS_9allocatorIS4_EEED2Ev.exit ], [ %i.e, %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i ], [ %i.e, %bb.k ], [ %i.e, %bb.l ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local <2 x float> @_ZN3tev11ImageViewer14sizeToFitImageERKNSt3__110shared_ptrINS_5ImageEEE(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(1408) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #20 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !439    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load <2 x i32>, ptr %i.b, align 16, !tbaa !227
  %i.d = sitofp <2 x i32> %i.c to <2 x float>
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.h = load <4 x float>, ptr %i.g, align 16
  %i.i = load <2 x i32>, ptr %i.f, align 4, !tbaa !227
  %i.j = load <2 x i32>, ptr %i.e, align 4, !tbaa !227
  %i.k = sub nsw <2 x i32> %i.i, %i.j
  %i.l = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.k, <2 x i32> zeroinitializer)
  %i.m = uitofp nneg <2 x i32> %i.l to <2 x float>
  %i.n = shufflevector <4 x float> %i.h, <4 x float> poison, <2 x i32> zeroinitializer
  %i.o = fdiv <2 x float> %i.m, %i.n              ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !233 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.s = load i8, ptr %i.r, align 8, !tbaa !234, !range !331, !noundef !385
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.v = load i32, ptr %i.u, align 8, !tbaa !227
  %i.w = sitofp i32 %i.v to float
  %i.x = extractelement <2 x float> %i.o, i64 0
  %i.y = fadd float %i.x, %i.w
  %.sroa.07.0.vec.insert10 = insertelement <2 x float> %i.o, float %i.y, i64 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.07.0 = phi <2 x float> [ %.sroa.07.0.vec.insert10, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !418 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !234, !range !331, !noundef !385
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 60
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !227
  %i.ag = sitofp i32 %i.af to float
  %.sroa.07.4.vec.extract = extractelement <2 x float> %.sroa.07.0, i64 1
  %i.ah = fadd float %.sroa.07.4.vec.extract, %i.ag
  %.sroa.07.4.vec.insert13 = insertelement <2 x float> %.sroa.07.0, float %i.ah, i64 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.b
  %.sroa.07.1 = phi <2 x float> [ %.sroa.07.4.vec.insert13, %bb.f ], [ %.sroa.07.0, %bb.e ], [ %i.d, %bb.b ]
  ret <2 x float> %.sroa.07.1
}

; Function Attrs: nounwind
declare void @_ZNK7nanogui6Object7inc_refEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #14

declare void @_ZN7nanogui6Widget15remove_child_atEi(ptr noundef nonnull align 8 dereferenceable(148), i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNK7nanogui6Object7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #14

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev11ImageViewer11updateImageENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEbS5_NS_3BoxIiLj2EEENS1_4spanIKfLm18446744073709551615EEE(ptr noundef nonnull align 16 dereferenceable(1408) %0, ptr %1, i64 %2, i1 noundef zeroext %3, ptr %4, i64 %5, ptr noundef byval(%"struct.tev::Box") align 8 %6, ptr nofree noundef readonly byval(%"class.std::__1::span.480") align 8 captures(none) %7) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.std::__1::basic_string_view", align 8 ; 4 uses
  %9 = alloca %"class.std::__1::basic_string_view", align 8 ; 4 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %10 = alloca %"class.std::__1::shared_ptr.35", align 8 ; 13 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  store ptr %1, ptr %8, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %2, ptr %i.d, align 8
  store ptr %4, ptr %9, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %5, ptr %i.e, align 8
  %i.f = zext i1 %3 to i8
  store i8 %i.f, ptr %i.b, align 1, !tbaa !625
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #47
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1532)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !505, !noalias !1532 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 880
  %.val2.i.i = load ptr, ptr %i.i, align 16, !tbaa !506, !noalias !1532 ; 4 uses
  %.not3.i.i.i.i.i = icmp eq ptr %i.h, %.val2.i.i
  br i1 %.not3.i.i.i.i.i, label %_ZNK3tev11ImageViewer7imageIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i.i
  %.04.i.i.i.i.i = phi ptr [ %i.w, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i.i ], [ %i.h, %bb.a ] ; 3 uses
  %.0.val.i.i.i.i.i = load ptr, ptr %.04.i.i.i.i.i, align 8, !tbaa !439, !noalias !1532 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val.i.i.i.i.i, i64 72
  %i.k = load i8, ptr %i.j, align 8, !noalias !1532 ; 2 uses
  %i.l = trunc i8 %i.k to i1                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val.i.i.i.i.i, i64 80
  %i.n = load i64, ptr %i.m, align 8, !noalias !1532
  %i.o = lshr i8 %i.k, 1
  %i.p = zext nneg i8 %i.o to i64
  %i.q = select i1 %i.l, i64 %i.n, i64 %i.p
  %.not.i.i.i.i.i.i = icmp eq i64 %i.q, %2
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i.i, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i.i

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val.i.i.i.i.i, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !noalias !1532
  %i.t = getelementptr inbounds nuw i8, ptr %.0.val.i.i.i.i.i, i64 73
  %i.u = select i1 %i.l, ptr %i.s, ptr %i.t
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.u, ptr readonly %1, i64 %2), !noalias !1532
  %i.v = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.v, label %_ZNK3tev11ImageViewer7imageIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit.i, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i.i

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i.i: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, %.val2.i.i
  br i1 %.not.i.i.i.i.i, label %_ZNK3tev11ImageViewer7imageIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !29

_ZNK3tev11ImageViewer7imageIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit.i: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i.i, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i.i, %bb.a
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.h, %bb.a ], [ %.val2.i.i, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i.i ], [ %.04.i.i.i.i.i, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i.i ]
  %i.x = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.y = ptrtoint ptr %.0.lcssa.i.i.i.i.i to i64
  %i.z = sub i64 %i.y, %i.x                       ; 2 uses
  %i.aa = ptrtoint ptr %.val2.i.i to i64
  %i.ab = sub i64 %i.aa, %i.x
  %.not.i.i = icmp ult i64 %i.z, %i.ab
  br i1 %.not.i.i, label %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit.i, label %.critedge

_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit.i: ; preds = %_ZNK3tev11ImageViewer7imageIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.z ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !439, !noalias !1532 ; 2 uses
  store ptr %i.ad, ptr %10, align 8, !tbaa !439, !alias.scope !1532
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !507, !noalias !1532 ; 3 uses
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !507, !alias.scope !1532
  %.not.i6.i = icmp eq ptr %i.ag, null
  br i1 %.not.i6.i, label %_ZN3tev11ImageViewer11imageByNameENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exitthread-pre-split, label %bb.b

bb.b:                                             ; preds = %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = atomicrmw add ptr %i.ah, i64 1 monotonic, align 8, !noalias !1532 ; 0 uses
  br label %_ZN3tev11ImageViewer11imageByNameENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exitthread-pre-split

.critedge:                                        ; preds = %_ZNK3tev11ImageViewer7imageIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false), !alias.scope !1532
  br label %bb.c

_ZN3tev11ImageViewer11imageByNameENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exitthread-pre-split: ; preds = %bb.b, %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit.i
  %i.aj = icmp eq ptr %i.ad, null
  br i1 %i.aj, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.critedge, %_ZN3tev11ImageViewer11imageByNameENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exitthread-pre-split
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !231
  invoke void @_ZN4tlog6Logger3logIJRNSt3__117basic_string_viewIcNS2_11char_traitsIcEEEEEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSC_(ptr noundef nonnull align 8 dereferenceable(56) %i.al, i32 noundef 8, ptr nonnull @.str.124, i64 57, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %_ZN4tlog7warningIJRNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSA_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.l, %_ZNKSt3__18functionIFviEEclEi.exit.i, %.noexc, %bb.c, %bb.g, %_ZN4tlog5debugIJRNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEES6_RN7nanogui5ArrayIiLm2EEESA_mRbEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSF_.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.e:                                             ; preds = %_ZN3tev11ImageViewer11imageByNameENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exitthread-pre-split
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #47
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !1534
  store i64 %i.ap, ptr %i.c, align 8, !tbaa !359
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc14 unwind label %bb.h

.noexc14:                                         ; preds = %bb.e
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !231
  invoke void @_ZN4tlog6Logger3logIJRNSt3__117basic_string_viewIcNS2_11char_traitsIcEEEES7_RN7nanogui5ArrayIiLm2EEESB_mRbEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSH_(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, i32 noundef 4, ptr nonnull @.str.125, i64 80, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %_ZN4tlog5debugIJRNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEES6_RN7nanogui5ArrayIiLm2EEESA_mRbEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSF_.exit unwind label %bb.h

_ZN4tlog5debugIJRNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEES6_RN7nanogui5ArrayIiLm2EEESA_mRbEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSF_.exit: ; preds = %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #47
  %i.as = load ptr, ptr %10, align 8, !tbaa !439
  %.sroa.02.0.copyload = load ptr, ptr %9, align 8, !tbaa !358
  %.sroa.23.0.copyload = load i64, ptr %i.e, align 8, !tbaa !359
  %.sroa.01.0.copyload = load i64, ptr %6, align 8, !tbaa !220
  %.sroa.2.0.copyload = load i64, ptr %i.an, align 8, !tbaa !220
  invoke void @_ZN3tev5Image13updateChannelENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEENS_3BoxIiLj2EEENS1_4spanIKfLm18446744073709551615EEE(ptr noundef nonnull align 16 dereferenceable(516) %i.as, ptr %.sroa.02.0.copyload, i64 %.sroa.23.0.copyload, i64 %.sroa.01.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull byval(%"class.std::__1::span.480") align 8 %7)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %_ZN4tlog5debugIJRNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEES6_RN7nanogui5ArrayIiLm2EEESA_mRbEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSF_.exit
  %i.at = load i8, ptr %i.b, align 1, !tbaa !625, !range !331, !noundef !385
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN3tev11ImageViewer11selectImageERKNSt3__110shared_ptrINS_5ImageEEEb(ptr noundef nonnull align 16 dereferenceable(1408) %0, ptr noundef nonnull align 8 dereferenceable(16) %10, i1 noundef zeroext true)
          to label %bb.i unwind label %bb.d

bb.h:                                             ; preds = %.noexc14, %bb.e
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #47
  br label %bb.o

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.ax = load ptr, ptr %10, align 8, !tbaa !439  ; 4 uses
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !439
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !439
  %i.bc = icmp eq ptr %i.ax, %i.bb
  br i1 %i.bc, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 512 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 16, !tbaa !579
  %i.bf = atomicrmw add ptr @_ZN3tev5Image3sIdE, i32 1 seq_cst, align 4
  store i32 %i.bf, ptr %i.bd, align 16, !tbaa !579
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 496
  %i.bh = load ptr, ptr %i.bg, align 16, !tbaa !354 ; 3 uses
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %_ZN4tlog7warningIJRNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSA_.exit, label %_ZNKSt3__18functionIFviEEclEi.exit.i

_ZNKSt3__18functionIFviEEclEi.exit.i:             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.be, ptr %i.a, align 4, !tbaa !227
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !89
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8
  invoke void %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc16 unwind label %bb.d, !inline_history !1531

.noexc16:                                         ; preds = %_ZNKSt3__18functionIFviEEclEi.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN4tlog7warningIJRNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSA_.exit

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.bm = invoke { ptr, i8 } @_ZNSt3__112__hash_tableINS_10shared_ptrIN3tev5ImageEEENS_4hashIS4_EENS_8equal_toIS4_EENS_9allocatorIS4_EEE25__emplace_unique_key_argsIS4_JRKS4_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS4_PvEEEEbEERKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZN4tlog7warningIJRNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSA_.exit unwind label %bb.d ; 0 uses

_ZN4tlog7warningIJRNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSA_.exit: ; preds = %bb.l, %.noexc16, %bb.k, %.noexc
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !507 ; 5 uses
  %.not.i18 = icmp eq ptr %i.bo, null
  br i1 %.not.i18, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4tlog7warningIJRNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSA_.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = atomicrmw add ptr %i.bp, i64 -1 acq_rel, align 8
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.n, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !89
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bo) #47, !inline_history !13
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bo) #47
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit: ; preds = %_ZN4tlog7warningIJRNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSA_.exit, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #47
  ret void

bb.o:                                             ; preds = %bb.h, %bb.d
  %.pn = phi { ptr, i32 } [ %i.am, %bb.d ], [ %i.av, %bb.h ]
  call void @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #47
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN3tev11ImageViewer11imageByNameENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::__1::shared_ptr.35") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(1408) %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 872
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !505  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 880
  %.val2.i = load ptr, ptr %i.c, align 16, !tbaa !506 ; 4 uses
  %.not3.i.i.i.i = icmp eq ptr %i.b, %.val2.i
  br i1 %.not3.i.i.i.i, label %_ZNK3tev11ImageViewer7imageIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i
  %.04.i.i.i.i = phi ptr [ %i.q, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0.val.i.i.i.i = load ptr, ptr %.04.i.i.i.i, align 8, !tbaa !439 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val.i.i.i.i, i64 72
  %i.e = load i8, ptr %i.d, align 8               ; 2 uses
  %i.f = trunc i8 %i.e to i1                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val.i.i.i.i, i64 80
  %i.h = load i64, ptr %i.g, align 8
  %i.i = lshr i8 %i.e, 1
  %i.j = zext nneg i8 %i.i to i64
  %i.k = select i1 %i.f, i64 %i.h, i64 %i.j
  %.not.i.i.i.i.i = icmp eq i64 %i.k, %3
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val.i.i.i.i, i64 88
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val.i.i.i.i, i64 73
  %i.o = select i1 %i.f, ptr %i.m, ptr %i.n
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.o, ptr readonly %2, i64 %3)
  %i.p = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.p, label %_ZNK3tev11ImageViewer7imageIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, %.val2.i
  br i1 %.not.i.i.i.i, label %_ZNK3tev11ImageViewer7imageIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !29

_ZNK3tev11ImageViewer7imageIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i, %bb.a
  %.0.lcssa.i.i.i.i = phi ptr [ %i.b, %bb.a ], [ %.04.i.i.i.i, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i ], [ %.val2.i, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i ]
  %i.r = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.s = ptrtoint ptr %.0.lcssa.i.i.i.i to i64
  %i.t = sub i64 %i.s, %i.r                       ; 2 uses
  %i.u = ptrtoint ptr %.val2.i to i64
  %i.v = sub i64 %i.u, %i.r
  %.not.i = icmp ult i64 %i.t, %i.v
  br i1 %.not.i, label %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit, label %bb.c

_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit: ; preds = %_ZNK3tev11ImageViewer7imageIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.t ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !507  ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.w, align 8, !tbaa !216
  store <2 x ptr> %i.z, ptr %0, align 8, !tbaa !216
  %.not.i6 = icmp eq ptr %i.y, null
  br i1 %.not.i6, label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit

bb.c:                                             ; preds = %_ZNK3tev11ImageViewer7imageIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit

_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit: ; preds = %bb.b, %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit, %bb.c
  ret void
}

declare void @_ZN3tev5Image13updateChannelENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEENS_3BoxIiLj2EEENS1_4spanIKfLm18446744073709551615EEE(ptr noundef nonnull align 16 dereferenceable(516), ptr, i64, i64, i64, ptr noundef byval(%"class.std::__1::span.480") align 8) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev11ImageViewer25updateImageVectorGraphicsENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEbbNS1_4spanIKNS_9VgCommandELm18446744073709551615EEE(ptr noundef nonnull align 16 dereferenceable(1408) %0, ptr %1, i64 %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr nofree noundef readonly byval(%"class.std::__1::span.491") align 8 captures(none) %5) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__1::basic_string_view", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %7 = alloca %"class.std::__1::shared_ptr.35", align 8 ; 8 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  store ptr %1, ptr %6, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %i.d, align 8
  %i.e = zext i1 %3 to i8
  store i8 %i.e, ptr %i.a, align 1, !tbaa !625
  %i.f = zext i1 %4 to i8
  store i8 %i.f, ptr %i.b, align 1, !tbaa !625
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #47
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1537)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !505, !noalias !1537 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 880
  %.val2.i.i = load ptr, ptr %i.i, align 16, !tbaa !506, !noalias !1537 ; 4 uses
  %.not3.i.i.i.i.i = icmp eq ptr %i.h, %.val2.i.i
  br i1 %.not3.i.i.i.i.i, label %_ZNK3tev11ImageViewer7imageIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i.i
  %.04.i.i.i.i.i = phi ptr [ %i.w, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i.i ], [ %i.h, %bb.a ] ; 3 uses
  %.0.val.i.i.i.i.i = load ptr, ptr %.04.i.i.i.i.i, align 8, !tbaa !439, !noalias !1537 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val.i.i.i.i.i, i64 72
  %i.k = load i8, ptr %i.j, align 8, !noalias !1537 ; 2 uses
  %i.l = trunc i8 %i.k to i1                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val.i.i.i.i.i, i64 80
  %i.n = load i64, ptr %i.m, align 8, !noalias !1537
  %i.o = lshr i8 %i.k, 1
  %i.p = zext nneg i8 %i.o to i64
  %i.q = select i1 %i.l, i64 %i.n, i64 %i.p
  %.not.i.i.i.i.i.i = icmp eq i64 %i.q, %2
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i.i, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i.i

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val.i.i.i.i.i, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !noalias !1537
  %i.t = getelementptr inbounds nuw i8, ptr %.0.val.i.i.i.i.i, i64 73
  %i.u = select i1 %i.l, ptr %i.s, ptr %i.t
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.u, ptr readonly %1, i64 %2), !noalias !1537
  %i.v = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.v, label %_ZNK3tev11ImageViewer7imageIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit.i, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i.i

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i.i: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, %.val2.i.i
  br i1 %.not.i.i.i.i.i, label %_ZNK3tev11ImageViewer7imageIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !29

_ZNK3tev11ImageViewer7imageIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit.i: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i.i, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i.i, %bb.a
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.h, %bb.a ], [ %.val2.i.i, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i.i ], [ %.04.i.i.i.i.i, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i.i ]
  %i.x = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.y = ptrtoint ptr %.0.lcssa.i.i.i.i.i to i64
  %i.z = sub i64 %i.y, %i.x                       ; 2 uses
  %i.aa = ptrtoint ptr %.val2.i.i to i64
  %i.ab = sub i64 %i.aa, %i.x
  %.not.i.i = icmp ult i64 %i.z, %i.ab
  br i1 %.not.i.i, label %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit.i, label %.critedge

_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit.i: ; preds = %_ZNK3tev11ImageViewer7imageIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.z ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !439, !noalias !1537 ; 3 uses
  store ptr %i.ad, ptr %7, align 8, !tbaa !439, !alias.scope !1537
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !507, !noalias !1537 ; 6 uses
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !507, !alias.scope !1537
  %.not.i6.i = icmp eq ptr %i.ag, null
  br i1 %.not.i6.i, label %_ZN3tev11ImageViewer11imageByNameENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exitthread-pre-split, label %bb.b

bb.b:                                             ; preds = %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = atomicrmw add ptr %i.ah, i64 1 monotonic, align 8, !noalias !1537 ; 0 uses
  br label %_ZN3tev11ImageViewer11imageByNameENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exitthread-pre-split

.critedge:                                        ; preds = %_ZNK3tev11ImageViewer7imageIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false), !alias.scope !1537
  br label %bb.c

_ZN3tev11ImageViewer11imageByNameENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exitthread-pre-split: ; preds = %bb.b, %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit.i
  %i.aj = icmp eq ptr %i.ad, null
  br i1 %i.aj, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.critedge, %_ZN3tev11ImageViewer11imageByNameENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exitthread-pre-split
  %i.ak = phi ptr [ null, %.critedge ], [ %i.ag, %_ZN3tev11ImageViewer11imageByNameENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exitthread-pre-split ]
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !231
  invoke void @_ZN4tlog6Logger3logIJRNSt3__117basic_string_viewIcNS2_11char_traitsIcEEEEEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSC_(ptr noundef nonnull align 8 dereferenceable(56) %i.am, i32 noundef 8, ptr nonnull @.str.126, i64 76, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZN4tlog7warningIJRNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSA_.exit unwind label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.c, %bb.g, %_ZN4tlog5debugIJRNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEmRbS7_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOSB_.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.e:                                             ; preds = %_ZN3tev11ImageViewer11imageByNameENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exitthread-pre-split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #47
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !1539 ; 2 uses
  store i64 %i.ap, ptr %i.c, align 8, !tbaa !359
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc11 unwind label %bb.h

.noexc11:                                         ; preds = %bb.e
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !231
  invoke void @_ZN4tlog6Logger3logIJRNSt3__117basic_string_viewIcNS2_11char_traitsIcEEEEmRbS8_EEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSD_(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, i32 noundef 4, ptr nonnull @.str.127, i64 78, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %_ZN4tlog5debugIJRNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEmRbS7_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOSB_.exit unwind label %bb.h

_ZN4tlog5debugIJRNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEmRbS7_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOSB_.exit: ; preds = %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #47
  %i.as = load i8, ptr %i.b, align 1, !tbaa !625, !range !331, !noundef !385
  %i.at = trunc nuw i8 %i.as to i1
  %.sroa.0.0.copyload = load ptr, ptr %5, align 8, !tbaa !1540
  invoke void @_ZN3tev5Image20updateVectorGraphicsEbNSt3__14spanIKNS_9VgCommandELm18446744073709551615EEE(ptr noundef nonnull align 16 dereferenceable(516) %i.ad, i1 noundef zeroext %i.at, ptr %.sroa.0.0.copyload, i64 %i.ap)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %_ZN4tlog5debugIJRNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEmRbS7_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOSB_.exit
  %i.au = load i8, ptr %i.a, align 1, !tbaa !625, !range !331, !noundef !385
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.g, label %_ZN4tlog7warningIJRNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSA_.exit

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN3tev11ImageViewer11selectImageERKNSt3__110shared_ptrINS_5ImageEEEb(ptr noundef nonnull align 16 dereferenceable(1408) %0, ptr noundef nonnull align 8 dereferenceable(16) %7, i1 noundef zeroext true)
          to label %_ZN4tlog7warningIJRNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSA_.exit unwind label %bb.d

bb.h:                                             ; preds = %.noexc11, %bb.e
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #47
  br label %bb.k

_ZN4tlog7warningIJRNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSA_.exit: ; preds = %.noexc, %bb.f, %bb.g
  %i.ax = phi ptr [ %i.ak, %.noexc ], [ %i.ag, %bb.f ], [ %i.ag, %bb.g ] ; 5 uses
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4tlog7warningIJRNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSA_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = atomicrmw add ptr %i.ay, i64 -1 acq_rel, align 8
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.j, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !89
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(24) %i.ax) #47, !inline_history !13
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ax) #47
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit: ; preds = %_ZN4tlog7warningIJRNSt3__117basic_string_viewIcNS1_11char_traitsIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSA_.exit, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  ret void

bb.k:                                             ; preds = %bb.h, %bb.d
  %.pn = phi { ptr, i32 } [ %i.an, %bb.d ], [ %i.aw, %bb.h ]
  call void @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  resume { ptr, i32 } %.pn
}

declare void @_ZN3tev5Image20updateVectorGraphicsEbNSt3__14spanIKNS_9VgCommandELm18446744073709551615EEE(ptr noundef nonnull align 16 dereferenceable(516), i1 noundef zeroext, ptr, i64) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev11ImageViewer18setImageWhiteLevelEf(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(1408) %0, float noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !355
  tail call void @_ZN7nanogui8FloatBoxIfE9set_valueEf(ptr noundef nonnull align 16 dereferenceable(488) %i.b, float noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !351
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 496
  %i.f = load i32, ptr %i.e, align 16, !tbaa !447
  %i.g = icmp eq i32 %i.f, 2
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !439  ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZN3tev11ImageViewer35setDisplayWhiteLevelToImageMetadataEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 304
  %i.k = load float, ptr %i.j, align 8, !tbaa !504
  br label %_ZN3tev11ImageViewer35setDisplayWhiteLevelToImageMetadataEv.exit

_ZN3tev11ImageViewer35setDisplayWhiteLevelToImageMetadataEv.exit: ; preds = %bb.b, %bb.c
  %i.l = phi float [ %i.k, %bb.c ], [ 8.000000e+01, %bb.b ]
  tail call void @_ZN3tev11ImageViewer20setDisplayWhiteLevelEf(ptr noundef nonnull readonly align 16 dereferenceable(1408) %0, float noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %_ZN3tev11ImageViewer35setDisplayWhiteLevelToImageMetadataEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local { ptr, i64 } @_ZN3tev11ImageViewer9groupNameEm(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(1408) %0, i64 noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.1602", align 16 ; 7 uses
  %3 = alloca %"class.std::__1::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !439  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !508  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !509
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 48
  %i.k = icmp ult i64 %1, %i.j
  br i1 %i.k, label %bb.h, label %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit, !prof !438

_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit: ; preds = %bb.b
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #47 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47, !noalias !1543
  store ptr @.str.90, ptr %2, align 16, !tbaa !220, !noalias !1543
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 2949, ptr %i.m, align 16, !tbaa !220, !noalias !1543
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 67, ptr %i.n, align 16, !tbaa !220, !noalias !1543
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr @.str.168, ptr %i.o, align 16, !tbaa !220, !noalias !1543
  invoke void @_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %3, ptr nonnull @.str.170, i64 42, i64 49708, ptr nonnull %2)
          to label %bb.c unwind label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread

bb.c:                                             ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47, !noalias !1543
  invoke void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #50
          to label %bb.j unwind label %bb.e

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread: ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.r = load i8, ptr %3, align 8
  %i.s = trunc i8 %i.r to i1
end_hunk_8
begin_hunk_9_@_ZNK3tev11ImageViewer16inspectionChromaEv:bb.a
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !358
  %i.by = load i8, ptr %2, align 8
  %i.bz = trunc i8 %i.by to i1
  %i.ca = load ptr, ptr %i.j, align 8             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  br i1 %i.bz, label %bb.n, label %_ZNK7nanogui8FloatBoxIfE5valueEv.exit.1

bb.n:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit.i.1
  %i.cb = load i64, ptr %2, align 8
  %i.cc = and i64 %i.cb, -2
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cc) #49
  br label %_ZNK7nanogui8FloatBoxIfE5valueEv.exit.1

_ZNK7nanogui8FloatBoxIfE5valueEv.exit.1:          ; preds = %bb.n, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit.i.1
  %i.cd = phi ptr [ %i.k, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_.exit.i.1 ], [ %i.ca, %bb.n ]
  %i.ce = icmp eq ptr %i.bx, %i.cd
  %i.cf = fptrunc double %i.bw to float
  %.0.i.1 = select i1 %i.ce, float 0.000000e+00, float %i.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  %i.cg = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store float %.0.i.1, ptr %i.cg, align 4, !tbaa !87
  %i.ch = add nuw nsw i64 %.01132, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ch, 4
  br i1 %exitcond.not, label %bb.g, label %.preheader, !llvm.loop !1578

bb.o:                                             ; preds = %bb.c
  unreachable
}

declare void @_ZN3tev6chromaENS_12EWpPrimariesE(ptr dead_on_unwind writable sret(%"struct.std::__1::array") align 4, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i8 @_ZNK3tev11ImageViewer18inspectionTransferEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(1408) %0) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v12::detail::format_arg_store.1602", align 16 ; 7 uses
  %2 = alloca %"class.std::__1::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !360
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  %i.d = load i32, ptr %i.c, align 16, !tbaa !447 ; 3 uses
  %.not = icmp ugt i32 %i.d, 13
  br i1 %.not, label %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit, label %bb.g, !prof !640

_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit: ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #47 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47, !noalias !1582
  store ptr @.str.90, ptr %1, align 16, !tbaa !220, !noalias !1582
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 2708, ptr %i.f, align 16, !tbaa !220, !noalias !1582
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 101, ptr %i.g, align 16, !tbaa !220, !noalias !1582
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr @.str.157, ptr %i.h, align 16, !tbaa !220, !noalias !1582
  invoke void @_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %2, ptr nonnull @.str.159, i64 72, i64 49708, ptr nonnull %1)
          to label %bb.b unwind label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread

bb.b:                                             ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47, !noalias !1582
  invoke void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #50
          to label %bb.i unwind label %bb.d

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread: ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ false, %bb.c ], [ true, %bb.b ]  ; 2 uses
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.k = load i8, ptr %2, align 8
  %i.l = trunc i8 %i.k to i1
  br i1 %i.l, label %.split, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

.split:                                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !220
  %i.o = load i64, ptr %2, align 8
  %i.p = and i64 %i.o, -2
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.p) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  br i1 %.0, label %bb.e, label %bb.f

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  br i1 %.0, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.split, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %.pn21 = phi { ptr, i32 } [ %i.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ], [ %i.j, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ], [ %i.j, %.split ]
  call void @__cxa_free_exception(ptr %i.e) #47
  br label %bb.f

bb.f:                                             ; preds = %.split, %bb.e, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %.pn20 = phi { ptr, i32 } [ %.pn21, %bb.e ], [ %i.j, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ], [ %i.j, %.split ]
  resume { ptr, i32 } %.pn20

bb.g:                                             ; preds = %bb.a
  %i.q = icmp eq i32 %i.d, 13
  br i1 %i.q, label %bb.h, label %_ZNKSt3__15arrayINS_4pairIN3tev8ituth2739ETransferENS_17basic_string_viewIcNS_11char_traitsIcEEEEEELm13EE2atB8ne180100Em.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt3__120__throw_out_of_rangeB8ne180100EPKc(ptr noundef nonnull @.str.336) #50
  unreachable

_ZNKSt3__15arrayINS_4pairIN3tev8ituth2739ETransferENS_17basic_string_viewIcNS_11char_traitsIcEEEEEELm13EE2atB8ne180100Em.exit: ; preds = %bb.g
  %i.r = zext nneg i32 %i.d to i64
  %i.s = getelementptr inbounds nuw [24 x i8], ptr @_ZN3tevL9TRANSFERSE, i64 %i.r
  %i.t = load i8, ptr %i.s, align 8, !tbaa !642
  ret i8 %i.t

bb.i:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK3tev11ImageViewer25inspectionAdaptWhitePointEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(1408) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !380
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.d = load i8, ptr %i.c, align 16, !tbaa !386, !range !331, !noundef !385
  %i.e = trunc nuw i8 %i.d to i1
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK3tev11ImageViewer28inspectionPremultipliedAlphaEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(1408) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !381
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.d = load i8, ptr %i.c, align 16, !tbaa !386, !range !331, !noundef !385
  %i.e = trunc nuw i8 %i.d to i1
  ret i1 %i.e
}

declare void @_ZN3tev11ImageButton17setHighlightRangeEmm(ptr noundef nonnull align 16 dereferenceable(400), i64 noundef, i64 noundef) local_unnamed_addr #5

declare i64 @_ZNK7nanogui6Widget14preferred_sizeEP10NVGcontext(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef) local_unnamed_addr #5

declare void @glfwGetCursorPos(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN7nanogui6Screen25cursor_pos_callback_eventEdd(ptr noundef nonnull align 16 dereferenceable(520), double noundef, double noundef) local_unnamed_addr #5

declare void @_ZN7nanogui6Screen11set_captionENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE(ptr noundef nonnull align 16 dereferenceable(520), ptr, i64) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN3tev7Channel7isAlphaENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE(ptr, i64) local_unnamed_addr #5

declare void @_ZNK3tev5Image9shortNameEv(ptr dead_on_unwind writable sret(%"class.std::__1::basic_string") align 8, ptr noundef nonnull align 16 dereferenceable(516)) local_unnamed_addr #5

declare i64 @_ZN3tev11ImageCanvas14getImageCoordsEPKNS_5ImageEN7nanogui5ArrayIiLm2EEE(ptr noundef nonnull align 8 dereferenceable(504), ptr noundef, i64) local_unnamed_addr #5

declare void @_ZN3tev11ImageCanvas25applyInspectionParametersERNSt3__16vectorIfNS1_9allocatorIfEEEEb(ptr noundef nonnull align 8 dereferenceable(504), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { i64, i8 } @_ZNK3tev11ImageViewer7imageIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(1408) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !505  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 880
  %.val2 = load ptr, ptr %i.c, align 16, !tbaa !506 ; 4 uses
  %.not3.i.i.i = icmp eq ptr %i.b, %.val2
  br i1 %.not3.i.i.i, label %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_6vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS8_EEEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS6_11ImageViewer7imageIdESH_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISN_EEE7_SelectISP_NS0_8danglingEEEOSN_RSU_SQ_.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i
  %.04.i.i.i = phi ptr [ %i.q, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0.val.i.i.i = load ptr, ptr %.04.i.i.i, align 8, !tbaa !439 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val.i.i.i, i64 72
  %i.e = load i8, ptr %i.d, align 8               ; 2 uses
  %i.f = trunc i8 %i.e to i1                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val.i.i.i, i64 80
  %i.h = load i64, ptr %i.g, align 8
  %i.i = lshr i8 %i.e, 1
  %i.j = zext nneg i8 %i.i to i64
  %i.k = select i1 %i.f, i64 %i.h, i64 %i.j
  %.not.i.i.i.i = icmp eq i64 %i.k, %2
  br i1 %.not.i.i.i.i, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val.i.i.i, i64 88
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val.i.i.i, i64 73
  %i.o = select i1 %i.f, ptr %i.m, ptr %i.n
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.o, ptr readonly %1, i64 %2)
  %i.p = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.p, label %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_6vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS8_EEEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS6_11ImageViewer7imageIdESH_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISN_EEE7_SelectISP_NS0_8danglingEEEOSN_RSU_SQ_.exit", label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i, %.lr.ph.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, %.val2
  br i1 %.not.i.i.i, label %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_6vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS8_EEEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS6_11ImageViewer7imageIdESH_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISN_EEE7_SelectISP_NS0_8danglingEEEOSN_RSU_SQ_.exit", label %.lr.ph.i.i.i, !llvm.loop !29

"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_6vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS8_EEEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS6_11ImageViewer7imageIdESH_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISN_EEE7_SelectISP_NS0_8danglingEEEOSN_RSU_SQ_.exit": ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i, %bb.a
  %.0.lcssa.i.i.i = phi ptr [ %i.b, %bb.a ], [ %.val2, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i ], [ %.04.i.i.i, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i ]
  %i.r = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.s = ptrtoint ptr %.0.lcssa.i.i.i to i64
  %i.t = sub i64 %i.s, %i.r                       ; 2 uses
  %i.u = ashr exact i64 %i.t, 4
  %i.v = ptrtoint ptr %.val2 to i64
  %i.w = sub i64 %i.v, %i.r
  %.not = icmp ult i64 %i.t, %i.w                 ; 2 uses
  %.sroa.3.sroa.2.0 = zext i1 %.not to i8
  %.sroa.05.0.insert.insert = select i1 %.not, i64 %i.u, i64 0
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.05.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.3.sroa.2.0, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev11ImageViewerD2Ev(ptr noundef nonnull align 16 dead_on_return(1408) dereferenceable(1408) %0) unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !518  ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !518
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt3__110unique_ptrINS_6threadENS_14default_deleteIS1_EEED2B8ne180100Ev.exit, label %_ZNKSt3__114default_deleteINS_6threadEEclB8ne180100EPS1_.exit.i.i

_ZNKSt3__114default_deleteINS_6threadEEclB8ne180100EPS1_.exit.i.i: ; preds = %bb.a
  tail call void @_ZNSt3__16threadD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #47
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 8) #49
  br label %_ZNSt3__110unique_ptrINS_6threadENS_14default_deleteIS1_EEED2B8ne180100Ev.exit

_ZNSt3__110unique_ptrINS_6threadENS_14default_deleteIS1_EEED2B8ne180100Ev.exit: ; preds = %bb.a, %_ZNKSt3__114default_deleteINS_6threadEEclB8ne180100EPS1_.exit.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !379 ; 4 uses
  %.not.i.i1 = icmp eq ptr %i.d, null
  br i1 %.not.i.i1, label %_ZNSt3__16vectorIPN7nanogui8FloatBoxIfEENS_9allocatorIS4_EEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt3__110unique_ptrINS_6threadENS_14default_deleteIS1_EEED2B8ne180100Ev.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1224
  store ptr %i.d, ptr %i.e, align 8, !tbaa !376
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !377
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.j) #49
  br label %_ZNSt3__16vectorIPN7nanogui8FloatBoxIfEENS_9allocatorIS4_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIPN7nanogui8FloatBoxIfEENS_9allocatorIS4_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__110unique_ptrINS_6threadENS_14default_deleteIS1_EEED2B8ne180100Ev.exit, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 2 uses
  %i.l = load i8, ptr %i.k, align 16
  %i.m = trunc i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.c:                                             ; preds = %_ZNSt3__16vectorIPN7nanogui8FloatBoxIfEENS_9allocatorIS4_EEED2B8ne180100Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !220
  %i.p = load i64, ptr %i.k, align 16
  %i.q = and i64 %i.p, -2
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.q) #49
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %_ZNSt3__16vectorIPN7nanogui8FloatBoxIfEENS_9allocatorIS4_EEED2B8ne180100Ev.exit, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !328  ; 4 uses
  %.not.i.i2 = icmp eq ptr %i.s, null
  br i1 %.not.i.i2, label %_ZNSt3__16vectorIPN7nanogui6ButtonENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store ptr %i.s, ptr %i.t, align 16, !tbaa !325
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !326
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.s to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.y) #49
  br label %_ZNSt3__16vectorIPN7nanogui6ButtonENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIPN7nanogui6ButtonENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.aa = load ptr, ptr %i.z, align 16, !tbaa !328 ; 4 uses
  %.not.i.i3 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i3, label %_ZNSt3__16vectorIPN7nanogui6ButtonENS_9allocatorIS3_EEED2B8ne180100Ev.exit4, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__16vectorIPN7nanogui6ButtonENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1000
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !325
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.ad = load ptr, ptr %i.ac, align 16, !tbaa !326
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.aa to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ag) #49
  br label %_ZNSt3__16vectorIPN7nanogui6ButtonENS_9allocatorIS3_EEED2B8ne180100Ev.exit4

_ZNSt3__16vectorIPN7nanogui6ButtonENS_9allocatorIS3_EEED2B8ne180100Ev.exit4: ; preds = %_ZNSt3__16vectorIPN7nanogui6ButtonENS_9allocatorIS3_EEED2B8ne180100Ev.exit, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !519 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not10.i.i.i, label %_ZNSt3__112__hash_tableINS_10shared_ptrIN3tev5ImageEEENS_4hashIS4_EENS_8equal_toIS4_EENS_9allocatorIS4_EEE17__deallocate_nodeEPNS_16__hash_node_baseIPNS_11__hash_nodeIS4_PvEEEE.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3__16vectorIPN7nanogui6ButtonENS_9allocatorIS3_EEED2B8ne180100Ev.exit4, %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeINS_10shared_ptrIN3tev5ImageEEEPvEEEEE7destroyB8ne180100IS6_vvEEvRS9_PT_.exit.i.i.i
  %.011.i.i.i = phi ptr [ %i.ak, %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeINS_10shared_ptrIN3tev5ImageEEEPvEEEEE7destroyB8ne180100IS6_vvEEvRS9_PT_.exit.i.i.i ], [ %i.aj, %_ZNSt3__16vectorIPN7nanogui6ButtonENS_9allocatorIS3_EEED2B8ne180100Ev.exit4 ] ; 3 uses
  %i.ak = load ptr, ptr %.011.i.i.i, align 8, !tbaa !519 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !507 ; 5 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeINS_10shared_ptrIN3tev5ImageEEEPvEEEEE7destroyB8ne180100IS6_vvEEvRS9_PT_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = atomicrmw add ptr %i.an, i64 -1 acq_rel, align 8
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.g, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeINS_10shared_ptrIN3tev5ImageEEEPvEEEEE7destroyB8ne180100IS6_vvEEvRS9_PT_.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !89
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(24) %i.am) #47, !inline_history !1583
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.am) #47
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeINS_10shared_ptrIN3tev5ImageEEEPvEEEEE7destroyB8ne180100IS6_vvEEvRS9_PT_.exit.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeINS_10shared_ptrIN3tev5ImageEEEPvEEEEE7destroyB8ne180100IS6_vvEEvRS9_PT_.exit.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.011.i.i.i, i64 noundef 32) #49
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_ZNSt3__112__hash_tableINS_10shared_ptrIN3tev5ImageEEENS_4hashIS4_EENS_8equal_toIS4_EENS_9allocatorIS4_EEE17__deallocate_nodeEPNS_16__hash_node_baseIPNS_11__hash_nodeIS4_PvEEEE.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !16

_ZNSt3__112__hash_tableINS_10shared_ptrIN3tev5ImageEEENS_4hashIS4_EENS_8equal_toIS4_EENS_9allocatorIS4_EEE17__deallocate_nodeEPNS_16__hash_node_baseIPNS_11__hash_nodeIS4_PvEEEE.exit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__hash_nodeINS_10shared_ptrIN3tev5ImageEEEPvEEEEE7destroyB8ne180100IS6_vvEEvRS9_PT_.exit.i.i.i, %_ZNSt3__16vectorIPN7nanogui6ButtonENS_9allocatorIS3_EEED2B8ne180100Ev.exit4
  %i.at = load ptr, ptr %i.ah, align 8, !tbaa !520 ; 2 uses
  store ptr null, ptr %i.ah, align 8, !tbaa !520
  %.not.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i, label %_ZNSt3__113unordered_setINS_10shared_ptrIN3tev5ImageEEENS_4hashIS4_EENS_8equal_toIS4_EENS_9allocatorIS4_EEED2B8ne180100Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt3__112__hash_tableINS_10shared_ptrIN3tev5ImageEEENS_4hashIS4_EENS_8equal_toIS4_EENS_9allocatorIS4_EEE17__deallocate_nodeEPNS_16__hash_node_baseIPNS_11__hash_nodeIS4_PvEEEE.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.av = load i64, ptr %i.au, align 16, !tbaa !359
  %i.aw = shl i64 %i.av, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.aw) #49
  br label %_ZNSt3__113unordered_setINS_10shared_ptrIN3tev5ImageEEENS_4hashIS4_EENS_8equal_toIS4_EENS_9allocatorIS4_EEED2B8ne180100Ev.exit

_ZNSt3__113unordered_setINS_10shared_ptrIN3tev5ImageEEENS_4hashIS4_EENS_8equal_toIS4_EENS_9allocatorIS4_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__112__hash_tableINS_10shared_ptrIN3tev5ImageEEENS_4hashIS4_EENS_8equal_toIS4_EENS_9allocatorIS4_EEE17__deallocate_nodeEPNS_16__hash_node_baseIPNS_11__hash_nodeIS4_PvEEEE.exit.i.i, %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !505 ; 5 uses
  %.not.i.i5 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i5, label %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEED2B8ne180100Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt3__113unordered_setINS_10shared_ptrIN3tev5ImageEEENS_4hashIS4_EENS_8equal_toIS4_EENS_9allocatorIS4_EEED2B8ne180100Ev.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 16, !tbaa !506 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.ay, %i.ba
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.bb, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i ], [ %i.ba, %bb.i ] ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -16 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !507 ; 5 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = atomicrmw add ptr %i.be, i64 -1 acq_rel, align 8
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.k, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !89
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(24) %i.bd) #47, !inline_history !1584
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bd) #47
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i: ; preds = %bb.k, %bb.j, %.lr.ph.i.i.i.i
  %.not.i.i.i.i6 = icmp eq ptr %i.ay, %i.bb
  br i1 %.not.i.i.i.i6, label %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i
  %.pre1.i.i = load ptr, ptr %i.ax, align 8, !tbaa !505
  br label %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, %bb.i
  %i.bk = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.ay, %bb.i ] ; 2 uses
  store ptr %i.ay, ptr %i.az, align 16, !tbaa !506
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !521
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bk to i64
  %i.bp = sub i64 %i.bn, %i.bo
  tail call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bp) #49
  br label %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__113unordered_setINS_10shared_ptrIN3tev5ImageEEENS_4hashIS4_EENS_8equal_toIS4_EENS_9allocatorIS4_EEED2B8ne180100Ev.exit, %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.br = load ptr, ptr %i.bq, align 16, !tbaa !507 ; 5 uses
  %.not.i = icmp eq ptr %i.br, null
  br i1 %.not.i, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEED2B8ne180100Ev.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = atomicrmw add ptr %i.bs, i64 -1 acq_rel, align 8
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.m, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit

bb.m:                                             ; preds = %bb.l
end_hunk_9
begin_hunk_10_@"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_42NS_9allocatorISF_EEFvvEE7__cloneEPNS0_6__baseISI_EE":bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @"_ZTVNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_42NS_9allocatorISF_EEFvvEEE", i64 16), ptr %1, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.val, ptr %i.b, align 8, !tbaa !237
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_42NS_9allocatorISF_EEFvvEE7destroyEv"(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #31 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_42NS_9allocatorISF_EEFvvEE18destroy_deallocateEv"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #49
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_42NS_9allocatorISF_EEFvvEEclEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !2405
  tail call void @_ZN3tev11ImageViewer15openImageDialogEv(ptr noundef nonnull align 16 dereferenceable(1408) %.val)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef ptr @"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_42NS_9allocatorISF_EEFvvEE6targetERKSt9type_info"(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #32 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !654
  %i.c = icmp eq ptr %i.b, @"_ZTSZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNSt3__110shared_ptrINS_22BackgroundImagesLoaderEEENS4_8weak_ptrINS_3IpcEEEbbbE4$_42"
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %spec.select = select i1 %i.c, ptr %i.d, ptr null
  ret ptr %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull align 8 dereferenceable(16) ptr @"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_42NS_9allocatorISF_EEFvvEE11target_typeEv"(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #31 align 2 {
bb.a:
  ret ptr @"_ZTIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNSt3__110shared_ptrINS_22BackgroundImagesLoaderEEENS4_8weak_ptrINS_3IpcEEEbbbE4$_42"
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_43NS_9allocatorISF_EEFvvEED0Ev"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #24 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #49
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef nonnull ptr @"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_43NS_9allocatorISF_EEFvvEE7__cloneEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
"_ZNSt3__110unique_ptrINS_10__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS3_22BackgroundImagesLoaderEEENS_8weak_ptrINS3_3IpcEEEbbbE4$_43NS_9allocatorISG_EEFvvEEENS_22__allocator_destructorINSH_ISK_EEEEED2B8ne180100Ev.exit":
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #48 ; 3 uses
  %.val2 = load i64, ptr %i.a, align 8, !tbaa !237
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @"_ZTVNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_43NS_9allocatorISF_EEFvvEEE", i64 16), ptr %i.b, align 8, !tbaa !89
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.val2, ptr %i.c, align 8, !tbaa !237
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_43NS_9allocatorISF_EEFvvEE7__cloneEPNS0_6__baseISI_EE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1) unnamed_addr #30 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.a, align 8, !tbaa !237
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @"_ZTVNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_43NS_9allocatorISF_EEFvvEEE", i64 16), ptr %1, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.val, ptr %i.b, align 8, !tbaa !237
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_43NS_9allocatorISF_EEFvvEE7destroyEv"(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #31 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_43NS_9allocatorISF_EEFvvEE18destroy_deallocateEv"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #49
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_43NS_9allocatorISF_EEFvvEEclEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !2407
  tail call void @_ZN3tev11ImageViewer15saveImageDialogEv(ptr noundef nonnull align 16 dereferenceable(1408) %.val)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef ptr @"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_43NS_9allocatorISF_EEFvvEE6targetERKSt9type_info"(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #32 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !654
  %i.c = icmp eq ptr %i.b, @"_ZTSZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNSt3__110shared_ptrINS_22BackgroundImagesLoaderEEENS4_8weak_ptrINS_3IpcEEEbbbE4$_43"
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %spec.select = select i1 %i.c, ptr %i.d, ptr null
  ret ptr %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull align 8 dereferenceable(16) ptr @"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_43NS_9allocatorISF_EEFvvEE11target_typeEv"(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #31 align 2 {
bb.a:
  ret ptr @"_ZTIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNSt3__110shared_ptrINS_22BackgroundImagesLoaderEEENS4_8weak_ptrINS_3IpcEEEbbbE4$_43"
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_44NS_9allocatorISF_EEFvvEED0Ev"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #24 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #49
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef nonnull ptr @"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_44NS_9allocatorISF_EEFvvEE7__cloneEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
"_ZNSt3__110unique_ptrINS_10__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS3_22BackgroundImagesLoaderEEENS_8weak_ptrINS3_3IpcEEEbbbE4$_44NS_9allocatorISG_EEFvvEEENS_22__allocator_destructorINSH_ISK_EEEEED2B8ne180100Ev.exit":
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #48 ; 3 uses
  %.val2 = load i64, ptr %i.a, align 8, !tbaa !237
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @"_ZTVNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_44NS_9allocatorISF_EEFvvEEE", i64 16), ptr %i.b, align 8, !tbaa !89
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.val2, ptr %i.c, align 8, !tbaa !237
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_44NS_9allocatorISF_EEFvvEE7__cloneEPNS0_6__baseISI_EE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1) unnamed_addr #30 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.a, align 8, !tbaa !237
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @"_ZTVNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_44NS_9allocatorISF_EEFvvEEE", i64 16), ptr %1, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.val, ptr %i.b, align 8, !tbaa !237
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_44NS_9allocatorISF_EEFvvEE7destroyEv"(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #31 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_44NS_9allocatorISF_EEFvvEE18destroy_deallocateEv"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #49
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_44NS_9allocatorISF_EEFvvEEclEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__1::shared_ptr.35", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !2410 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 840
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !439  ; 7 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !439
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 848
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !507  ; 4 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !507
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = atomicrmw add ptr %i.g, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i.i.i.i

_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i.i.i.i: ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 872
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !505  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 880
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !506  ; 4 uses
  %.not7.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, %i.l
  br i1 %.not7.i.i.i.i.i.i.i.i.i, label %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i.i.i.i, %bb.c
  %.08.i.i.i.i.i.i.i.i.i = phi ptr [ %i.o, %bb.c ], [ %i.j, %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i.i.i.i ] ; 3 uses
  %i.m = load ptr, ptr %.08.i.i.i.i.i.i.i.i.i, align 8, !tbaa !439
  %i.n = icmp eq ptr %i.m, %i.c
  br i1 %i.n, label %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.l
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !11

_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.j, %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i.i.i.i ], [ %i.l, %bb.c ], [ %.08.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.p = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.q = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i.i.i to i64
  %i.r = sub i64 %i.q, %i.p
  %i.s = ptrtoint ptr %i.l to i64
  %i.t = sub i64 %i.s, %i.p
  %.not.i.i.i.i.i.i = icmp ult i64 %i.r, %i.t
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %_ZN3tev11ImageViewer11reloadImageENSt3__110shared_ptrINS_5ImageEEEb.exit.i.i.i.i

bb.d:                                             ; preds = %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 784
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !524
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.y = load i8, ptr %i.x, align 8               ; 2 uses
  %i.z = trunc i8 %i.y to i1                      ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 49
  %i.ad = select i1 %i.z, ptr %i.ab, ptr %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = lshr i8 %i.y, 1
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = select i1 %i.z, i64 %i.af, i64 %i.ah
  invoke void @_ZN3tev22BackgroundImagesLoader7enqueueERKNSt3__14__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEEbRKNS1_10shared_ptrINS_5ImageEEE(ptr noundef nonnull align 8 dereferenceable(300) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr %i.ad, i64 %i.ai, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %._ZN3tev11ImageViewer11reloadImageENSt3__110shared_ptrINS_5ImageEEEb.exit_crit_edge.i.i.i.i unwind label %bb.g

._ZN3tev11ImageViewer11reloadImageENSt3__110shared_ptrINS_5ImageEEEb.exit_crit_edge.i.i.i.i: ; preds = %bb.d
  %.pre.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !507
  br label %_ZN3tev11ImageViewer11reloadImageENSt3__110shared_ptrINS_5ImageEEEb.exit.i.i.i.i

_ZN3tev11ImageViewer11reloadImageENSt3__110shared_ptrINS_5ImageEEEb.exit.i.i.i.i: ; preds = %._ZN3tev11ImageViewer11reloadImageENSt3__110shared_ptrINS_5ImageEEEb.exit_crit_edge.i.i.i.i, %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i.i.i.i.i
  %i.aj = phi ptr [ %.pre.i.i.i.i, %._ZN3tev11ImageViewer11reloadImageENSt3__110shared_ptrINS_5ImageEEEb.exit_crit_edge.i.i.i.i ], [ %i.f, %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit.i.i.i.i.i ] ; 5 uses
  %.not.i2.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i2.i.i.i.i, label %"_ZNSt3__110__function12__alloc_funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_44NS_9allocatorISF_EEFvvEEclB8ne180100Ev.exit", label %bb.e

bb.e:                                             ; preds = %_ZN3tev11ImageViewer11reloadImageENSt3__110shared_ptrINS_5ImageEEEb.exit.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = atomicrmw add ptr %i.ak, i64 -1 acq_rel, align 8
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.f, label %"_ZNSt3__110__function12__alloc_funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_44NS_9allocatorISF_EEFvvEEclB8ne180100Ev.exit"

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !89
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(24) %i.aj) #47, !inline_history !2408
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aj) #47
  br label %"_ZNSt3__110__function12__alloc_funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_44NS_9allocatorISF_EEFvvEEclB8ne180100Ev.exit"

bb.g:                                             ; preds = %bb.d
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #47
  resume { ptr, i32 } %i.aq

"_ZNSt3__110__function12__alloc_funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_44NS_9allocatorISF_EEFvvEEclB8ne180100Ev.exit": ; preds = %_ZN3tev11ImageViewer11reloadImageENSt3__110shared_ptrINS_5ImageEEEb.exit.i.i.i.i, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef ptr @"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_44NS_9allocatorISF_EEFvvEE6targetERKSt9type_info"(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #32 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !654
  %i.c = icmp eq ptr %i.b, @"_ZTSZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNSt3__110shared_ptrINS_22BackgroundImagesLoaderEEENS4_8weak_ptrINS_3IpcEEEbbbE4$_44"
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %spec.select = select i1 %i.c, ptr %i.d, ptr null
  ret ptr %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull align 8 dereferenceable(16) ptr @"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_44NS_9allocatorISF_EEFvvEE11target_typeEv"(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #31 align 2 {
bb.a:
  ret ptr @"_ZTIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNSt3__110shared_ptrINS_22BackgroundImagesLoaderEEENS4_8weak_ptrINS_3IpcEEEbbbE4$_44"
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_45NS_9allocatorISF_EEFvvEED0Ev"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #24 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #49
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef nonnull ptr @"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_45NS_9allocatorISF_EEFvvEE7__cloneEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
"_ZNSt3__110unique_ptrINS_10__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS3_22BackgroundImagesLoaderEEENS_8weak_ptrINS3_3IpcEEEbbbE4$_45NS_9allocatorISG_EEFvvEEENS_22__allocator_destructorINSH_ISK_EEEEED2B8ne180100Ev.exit":
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #48 ; 3 uses
  %.val2 = load i64, ptr %i.a, align 8, !tbaa !237
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @"_ZTVNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_45NS_9allocatorISF_EEFvvEEE", i64 16), ptr %i.b, align 8, !tbaa !89
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.val2, ptr %i.c, align 8, !tbaa !237
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_45NS_9allocatorISF_EEFvvEE7__cloneEPNS0_6__baseISI_EE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1) unnamed_addr #30 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.a, align 8, !tbaa !237
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @"_ZTVNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_45NS_9allocatorISF_EEFvvEEE", i64 16), ptr %1, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.val, ptr %i.b, align 8, !tbaa !237
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_45NS_9allocatorISF_EEFvvEE7destroyEv"(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #31 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_45NS_9allocatorISF_EEFvvEE18destroy_deallocateEv"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #49
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_45NS_9allocatorISF_EEFvvEEclEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !2412
  tail call void @_ZN3tev11ImageViewer15reloadAllImagesEv(ptr noundef nonnull readonly align 16 dereferenceable(1408) %.val)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef ptr @"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_45NS_9allocatorISF_EEFvvEE6targetERKSt9type_info"(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #32 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !654
  %i.c = icmp eq ptr %i.b, @"_ZTSZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNSt3__110shared_ptrINS_22BackgroundImagesLoaderEEENS4_8weak_ptrINS_3IpcEEEbbbE4$_45"
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %spec.select = select i1 %i.c, ptr %i.d, ptr null
  ret ptr %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull align 8 dereferenceable(16) ptr @"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_45NS_9allocatorISF_EEFvvEE11target_typeEv"(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #31 align 2 {
bb.a:
  ret ptr @"_ZTIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNSt3__110shared_ptrINS_22BackgroundImagesLoaderEEENS4_8weak_ptrINS_3IpcEEEbbbE4$_45"
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_46NS_9allocatorISF_EEFvbEED0Ev"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #24 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #49
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef nonnull ptr @"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_46NS_9allocatorISF_EEFvbEE7__cloneEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
"_ZNSt3__110unique_ptrINS_10__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS3_22BackgroundImagesLoaderEEENS_8weak_ptrINS3_3IpcEEEbbbE4$_46NS_9allocatorISG_EEFvbEEENS_22__allocator_destructorINSH_ISK_EEEEED2B8ne180100Ev.exit":
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #48 ; 3 uses
  %.val2 = load i64, ptr %i.a, align 8, !tbaa !237
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @"_ZTVNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_46NS_9allocatorISF_EEFvbEEE", i64 16), ptr %i.b, align 8, !tbaa !89
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.val2, ptr %i.c, align 8, !tbaa !237
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_46NS_9allocatorISF_EEFvbEE7__cloneEPNS0_6__baseISI_EE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1) unnamed_addr #30 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.a, align 8, !tbaa !237
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @"_ZTVNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_46NS_9allocatorISF_EEFvbEEE", i64 16), ptr %1, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.val, ptr %i.b, align 8, !tbaa !237
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_46NS_9allocatorISF_EEFvbEE7destroyEv"(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #31 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_46NS_9allocatorISF_EEFvbEE18destroy_deallocateEv"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_46NS_9allocatorISF_EEFvbEEclEOb"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %1) unnamed_addr #23 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !2414
  %.val2 = load i8, ptr %1, align 1, !tbaa !625, !range !331, !noundef !385
  %i.b = getelementptr i8, ptr %.val, i64 960
  %.val.val = load ptr, ptr %i.b, align 16, !tbaa !413
  %i.c = getelementptr inbounds nuw i8, ptr %.val.val, i64 192
  store i8 %.val2, ptr %i.c, align 16, !tbaa !386
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef ptr @"_ZNKSt3__110__function6__funcIZN3tev11ImageViewerC1EN7nanogui5ArrayIiLm2EEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS_8weak_ptrINS2_3IpcEEEbbbE4$_46NS_9allocatorISF_EEFvbEE6targetERKSt9type_info"(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #32 align 2 {
end_hunk_10
