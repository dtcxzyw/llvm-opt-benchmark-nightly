Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/regtree?download=true
inline.NumInlined: 853
inline.NumDeleted: 384
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2cv4face18FacemarkKazemiImpl12getBestSplitESt6vectorINS_6Point_IfEESaIS4_EERS2_INS0_15training_sampleESaIS7_EEmmRNS0_6splitrERS2_IS6_SaIS6_EEl:bb.a
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2cv4face6splitrESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN2cv4face6splitrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.ct = load ptr, ptr %i.ai, align 8, !tbaa !155
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = sub i64 %i.cu, %i.cf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.cv) #21
  br label %_ZNSt6vectorIN2cv4face6splitrESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN2cv4face6splitrESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN2cv4face6splitrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.co, ptr %11, align 8, !tbaa !63
  store ptr %i.cs, ptr %i.ah, align 8, !tbaa !154
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %i.cm
  store ptr %i.cw, ptr %i.ai, align 8, !tbaa !155
  br label %_ZNSt6vectorIN2cv4face6splitrESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN2cv4face6splitrESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN2cv4face6splitrESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.n
  %.not.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN2cv4face6splitrESaIS2_EE9push_backEOS2_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.ax) #21
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %_ZNSt6vectorIN2cv4face6splitrESaIS2_EE9push_backEOS2_.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.cx = load ptr, ptr %10, align 8, !tbaa !47
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cx, i64 %.0103288 ; 3 uses
  %i.cz = load ptr, ptr %2, align 8, !tbaa !43    ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !44
  %i.dc = load ptr, ptr %i.cz, align 8, !tbaa !36
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.dd, %i.de                    ; 2 uses
  %i.dg = ashr exact i64 %i.df, 3                 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !44 ; 2 uses
  %i.dj = load ptr, ptr %i.cy, align 8, !tbaa !36 ; 2 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 3                 ; 3 uses
  %i.do = icmp ugt i64 %i.dg, %i.dn
  br i1 %i.do, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit
  %i.dp = sub nuw nsw i64 %i.dg, %i.dn
  invoke void @_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i64 noundef %i.dp)
          to label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit unwind label %bb.w

bb.t:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit
  %i.dq = icmp ult i64 %i.dg, %i.dn
  br i1 %i.dq, label %bb.u, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit

bb.u:                                             ; preds = %bb.t
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.df ; 2 uses
  %.not.i.i140 = icmp eq ptr %i.di, %i.dr
  br i1 %.not.i.i140, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.u
  store ptr %i.dr, ptr %i.dh, align 8, !tbaa !44
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.u, %bb.t, %bb.s
  %i.ds = add nuw i64 %.0103288, 1                ; 2 uses
  %i.dt = load i64, ptr %i.v, align 8, !tbaa !151 ; 6 uses
  %i.du = icmp ult i64 %i.ds, %i.dt
  br i1 %i.du, label %bb.l, label %._crit_edge, !llvm.loop !130

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %lpad.loopexit.split-lp745 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit143

.loopexit.split-lp268.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIN2cv4face6splitrESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i142 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i142, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit143, label %bb.v

bb.v:                                             ; preds = %.loopexit.split-lp268.loopexit.split-lp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.ax) #21
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit143

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit143: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.v, %.loopexit.split-lp268.loopexit.split-lp
  %.pn122 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %bb.v ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp268.loopexit.split-lp ], [ %lpad.loopexit.split-lp745, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.ar

bb.w:                                             ; preds = %bb.s
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %._crit_edge.thread, %._crit_edge, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %i.dw = trunc i64 %3 to i32
  %i.dx = trunc i64 %4 to i32
  store i32 %i.dw, ptr %15, align 4, !tbaa !65
  %i.dy = getelementptr inbounds nuw i8, ptr %15, i64 4
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4face12splitSamplesE, i64 16), ptr %16, align 8, !tbaa !68
  %i.dz = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %2, ptr %i.dz, align 8, !tbaa !157
  %i.ea = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %10, ptr %i.ea, align 8, !tbaa !75
  %i.eb = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr %14, ptr %i.eb, align 8, !tbaa !158
  %i.ec = getelementptr inbounds nuw i8, ptr %16, i64 32
  store ptr %i.v, ptr %i.ec, align 8, !tbaa !76
  %i.ed = getelementptr inbounds nuw i8, ptr %16, i64 40
  store ptr %11, ptr %i.ed, align 8, !tbaa !159
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %16, double noundef -1.000000e+00)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.ee = load ptr, ptr %6, align 8, !tbaa !47
  %i.ef = getelementptr inbounds nuw [24 x i8], ptr %i.ee, i64 %7 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !44 ; 2 uses
  %i.ei = load ptr, ptr %i.ef, align 8, !tbaa !36 ; 2 uses
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.ej, %i.ek                    ; 4 uses
  %.not264 = icmp eq ptr %i.eh, %i.ei
  br i1 %.not264, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit151, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.em = icmp ugt i64 %i.el, 9223372036854775800
  br i1 %i.em, label %.invoke, label %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.y
  %i.en = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.el) #22
          to label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit147 unwind label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit164.thread ; 5 uses

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit147: ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.en, i8 0, i64 %i.el, i1 false), !tbaa !57
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.el
  %i.ep = ptrtoint ptr %i.eo to i64               ; 3 uses
  %.pre354 = load ptr, ptr %6, align 8, !tbaa !47
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre354, i64 %7 ; 2 uses
  %.phi.trans.insert355 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.pre356 = load ptr, ptr %.phi.trans.insert355, align 8, !tbaa !44 ; 2 uses
  %.pre357 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !36 ; 2 uses
  %.pre361 = ptrtoint ptr %.pre356 to i64
  %.pre362 = ptrtoint ptr %.pre357 to i64
  %i.eq = icmp eq ptr %.pre356, %.pre357
  %i.er = sub i64 %.pre361, %.pre362              ; 4 uses
  br i1 %i.eq, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit151, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit147
  %i.es = icmp ugt i64 %i.er, 9223372036854775800
  br i1 %i.es, label %bb.aa, label %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i196

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #20
          to label %.noexc206 unwind label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit164.thread421

.noexc206:                                        ; preds = %bb.aa
  unreachable

_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i196: ; preds = %bb.z
  %i.et = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.er) #22
          to label %.noexc150 unwind label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit164.thread421 ; 3 uses

.noexc150:                                        ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i196
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.et, i8 0, i64 %i.er, i1 false), !tbaa !57
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.er
  %i.ev = ptrtoint ptr %i.eu to i64
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit151

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit151: ; preds = %bb.x, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit147, %.noexc150
  %.sroa.0237.1419 = phi ptr [ %i.en, %.noexc150 ], [ %i.en, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit147 ], [ null, %bb.x ] ; 35 uses
  %.sroa.21.1418 = phi i64 [ %i.ep, %.noexc150 ], [ %i.ep, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit147 ], [ 0, %bb.x ] ; 2 uses
  %.sroa.17.0 = phi i64 [ %i.ev, %.noexc150 ], [ 0, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit147 ], [ 0, %bb.x ] ; 4 uses
  %.sroa.0220.1 = phi ptr [ %i.et, %.noexc150 ], [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit147 ], [ null, %bb.x ] ; 37 uses
  %i.ew = load ptr, ptr %i.x, align 8, !tbaa !48  ; 2 uses
  %i.ex = load ptr, ptr %10, align 8, !tbaa !47   ; 4 uses
  %.not316 = icmp eq ptr %i.ew, %i.ex
  br i1 %.not316, label %._crit_edge309, label %.lr.ph308

.lr.ph308:                                        ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit151
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = sdiv exact i64 %i.fa, 24
  %i.fc = load ptr, ptr %14, align 8, !tbaa !53
  %i.fd = add i64 %4, 1                           ; 2 uses
  %i.fe = ptrtoint ptr %.sroa.0220.1 to i64       ; 2 uses
  %i.ff = sub i64 %.sroa.17.0, %i.fe
  %i.fg = ashr exact i64 %i.ff, 3                 ; 2 uses
  %.not317 = icmp eq i64 %.sroa.17.0, %i.fe
  %umax346 = call i64 @llvm.umax.i64(i64 %i.fg, i64 1) ; 3 uses
  %scevgep = getelementptr i8, ptr %.sroa.0220.1, i64 4 ; 3 uses
  %scevgep614 = getelementptr i8, ptr %.sroa.0237.1419, i64 4 ; 3 uses
  %scevgep615 = getelementptr i8, ptr %.sroa.0220.1, i64 -4
  %scevgep616 = getelementptr i8, ptr %.sroa.0237.1419, i64 -4
  %xtraiter765 = and i64 %umax346, 1
  %i.fh = icmp ult i64 %i.fg, 2
  %unroll_iter = and i64 %umax346, -2
  %lcmp.mod768.not = icmp eq i64 %xtraiter765, 0
  %lcmp.mod771 = trunc i64 %umax346 to i1
  br label %bb.ac

._crit_edge309:                                   ; preds = %._crit_edge300, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit151
  %.0100.lcssa = phi i64 [ 0, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit151 ], [ %.1, %._crit_edge300 ] ; 2 uses
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %i.ex, i64 %.0100.lcssa
  %i.fj = shl nsw i64 %7, 1                       ; 2 uses
  %i.fk = or disjoint i64 %i.fj, 1                ; 2 uses
  %i.fl = load ptr, ptr %6, align 8, !tbaa !47
  %i.fm = getelementptr inbounds nuw [24 x i8], ptr %i.fl, i64 %i.fk
  %i.fn = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.fm, ptr noundef nonnull align 8 dereferenceable(24) %i.fi)
          to label %bb.ad unwind label %bb.an     ; 0 uses

bb.ab:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit164.thread: ; preds = %.invoke, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i, %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166

bb.ac:                                            ; preds = %.lr.ph308, %._crit_edge300
  %.099307 = phi i64 [ 0, %.lr.ph308 ], [ %i.mr, %._crit_edge300 ] ; 4 uses
  %.0100306 = phi i64 [ 0, %.lr.ph308 ], [ %.1, %._crit_edge300 ]
  %.0101305 = phi double [ -1.000000e+00, %.lr.ph308 ], [ %.1102, %._crit_edge300 ] ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %.099307
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !50 ; 4 uses
  %i.fs = add i64 %i.fr, %3                       ; 2 uses
  %i.ft = sub i64 %i.fd, %i.fs                    ; 2 uses
  %i.fu = getelementptr inbounds nuw [24 x i8], ptr %i.ex, i64 %.099307 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !44 ; 8 uses
  %i.fx = load ptr, ptr %i.fu, align 8, !tbaa !36 ; 22 uses
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz                    ; 17 uses
  %i.gb = ashr exact i64 %i.ga, 3                 ; 14 uses
  %.not318 = icmp eq ptr %i.fw, %i.fx
  br i1 %.not318, label %.preheader, label %.lr.ph291

.lr.ph291:                                        ; preds = %bb.ac
  %.not120 = icmp eq i64 %i.fd, %i.fs
  %i.gc = uitofp i64 %i.ft to float               ; 8 uses
  %.not121 = icmp eq i64 %i.fr, 0                 ; 2 uses
  %i.gd = uitofp i64 %i.fr to float               ; 8 uses
  br i1 %.not120, label %.lr.ph291.split.us, label %.lr.ph291.split

.lr.ph291.split.us:                               ; preds = %.lr.ph291
  br i1 %.not121, label %.lr.ph291.split.us.split.us.preheader, label %.lr.ph291.split.us.split.preheader

.lr.ph291.split.us.split.preheader:               ; preds = %.lr.ph291.split.us
  %min.iters.check479 = icmp ult i64 %i.gb, 4
  br i1 %min.iters.check479, label %.lr.ph291.split.us.split.preheader738, label %vector.memcheck480

vector.memcheck480:                               ; preds = %.lr.ph291.split.us.split.preheader
  %i.ge = getelementptr i8, ptr %.sroa.0237.1419, i64 %i.ga ; 2 uses
  %i.gf = getelementptr i8, ptr %.sroa.0220.1, i64 %i.ga ; 2 uses
  %bound0 = icmp ult ptr %.sroa.0237.1419, %i.gf
  %bound1 = icmp ult ptr %.sroa.0220.1, %i.ge
  %found.conflict = and i1 %bound0, %bound1
  %bound0481 = icmp ult ptr %.sroa.0237.1419, %i.fw
  %bound1482 = icmp ult ptr %i.fx, %i.ge
  %found.conflict483 = and i1 %bound0481, %bound1482
  %conflict.rdx = or i1 %found.conflict, %found.conflict483
  %bound0484 = icmp ult ptr %.sroa.0220.1, %i.fw
  %bound1485 = icmp ult ptr %i.fx, %i.gf
  %found.conflict486 = and i1 %bound0484, %bound1485
  %conflict.rdx487 = or i1 %conflict.rdx, %found.conflict486
  br i1 %conflict.rdx487, label %.lr.ph291.split.us.split.preheader738, label %vector.ph488

vector.ph488:                                     ; preds = %vector.memcheck480
  %n.vec489 = and i64 %i.gb, -4                   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.gd, i64 0
  %i.gg = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body490

vector.body490:                                   ; preds = %vector.body490, %vector.ph488
  %index491 = phi i64 [ 0, %vector.ph488 ], [ %index.next493, %vector.body490 ] ; 5 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0237.1419, i64 %index491
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0237.1419, i64 %index491
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  store <4 x i32> zeroinitializer, ptr %i.gh, align 4, !tbaa !57, !alias.scope !160, !noalias !161
  store <4 x i32> zeroinitializer, ptr %i.gj, align 4, !tbaa !57, !alias.scope !160, !noalias !161
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %index491
  %wide.vec = load <8 x float>, ptr %i.gk, align 4, !tbaa !57, !alias.scope !162
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0220.1, i64 %index491
  %interleaved.vec = fdiv <8 x float> %wide.vec, %i.gg
  store <8 x float> %interleaved.vec, ptr %i.gl, align 4, !tbaa !57, !alias.scope !163, !noalias !162
  %index.next493 = add nuw i64 %index491, 4       ; 2 uses
  %i.gm = icmp eq i64 %index.next493, %n.vec489
  br i1 %i.gm, label %middle.block494, label %vector.body490, !llvm.loop !135

middle.block494:                                  ; preds = %vector.body490
  %cmp.n495 = icmp eq i64 %i.gb, %n.vec489
  br i1 %cmp.n495, label %.preheader, label %.lr.ph291.split.us.split.preheader738

.lr.ph291.split.us.split.preheader738:            ; preds = %vector.memcheck480, %.lr.ph291.split.us.split.preheader, %middle.block494
  %.098289.us.ph = phi i64 [ 0, %vector.memcheck480 ], [ 0, %.lr.ph291.split.us.split.preheader ], [ %n.vec489, %middle.block494 ] ; 6 uses
  %.neg775 = or disjoint i64 %.098289.us.ph, 1
  %i.gn = and i64 %i.ga, 8
  %lcmp.mod764.not.a = icmp eq i64 %i.gn, 0
  br i1 %lcmp.mod764.not.a, label %.lr.ph291.split.us.split.prol.loopexit, label %.lr.ph291.split.us.split.prol

.lr.ph291.split.us.split.prol:                    ; preds = %.lr.ph291.split.us.split.preheader738
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0237.1419, i64 %.098289.us.ph ; 2 uses
  store i32 0, ptr %i.go, align 4, !tbaa !57
  %.sroa_idx217.us.prol = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  store i32 0, ptr %.sroa_idx217.us.prol, align 4, !tbaa !57
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.098289.us.ph
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0220.1, i64 %.098289.us.ph
  %i.gr = load <2 x float>, ptr %i.gp, align 4, !tbaa !57
  %i.gs = insertelement <2 x float> poison, float %i.gd, i64 0
  %i.gt = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gu = fdiv <2 x float> %i.gr, %i.gt
  store <2 x float> %i.gu, ptr %i.gq, align 4, !tbaa !57
  %i.gv = or disjoint i64 %.098289.us.ph, 1
  br label %.lr.ph291.split.us.split.prol.loopexit

.lr.ph291.split.us.split.prol.loopexit:           ; preds = %.lr.ph291.split.us.split.prol, %.lr.ph291.split.us.split.preheader738
  %.098289.us.unr = phi i64 [ %.098289.us.ph, %.lr.ph291.split.us.split.preheader738 ], [ %i.gv, %.lr.ph291.split.us.split.prol ]
  %i.gw = icmp eq i64 %i.gb, %.neg775
  br i1 %i.gw, label %.preheader, label %.lr.ph291.split.us.split.preheader738.new

.lr.ph291.split.us.split.preheader738.new:        ; preds = %.lr.ph291.split.us.split.prol.loopexit
  %i.gx = insertelement <2 x float> poison, float %i.gd, i64 0
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = insertelement <2 x float> poison, float %i.gd, i64 0
  %i.ha = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph291.split.us.split

.lr.ph291.split.us.split.us.preheader:            ; preds = %.lr.ph291.split.us
  call void @llvm.memset.p0.i64(ptr align 4 %.sroa.0237.1419, i8 0, i64 %i.ga, i1 false), !tbaa !57
  call void @llvm.memset.p0.i64(ptr align 4 %.sroa.0220.1, i8 0, i64 %i.ga, i1 false), !tbaa !57
  br label %.preheader

.lr.ph291.split.us.split:                         ; preds = %.lr.ph291.split.us.split, %.lr.ph291.split.us.split.preheader738.new
  %.098289.us = phi i64 [ %.098289.us.unr, %.lr.ph291.split.us.split.preheader738.new ], [ %i.hm, %.lr.ph291.split.us.split ] ; 5 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0237.1419, i64 %.098289.us ; 2 uses
  store i32 0, ptr %i.hb, align 4, !tbaa !57
  %.sroa_idx217.us = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  store i32 0, ptr %.sroa_idx217.us, align 4, !tbaa !57
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.098289.us
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0220.1, i64 %.098289.us
  %i.he = load <2 x float>, ptr %i.hc, align 4, !tbaa !57
  %i.hf = fdiv <2 x float> %i.he, %i.gy
  store <2 x float> %i.hf, ptr %i.hd, align 4, !tbaa !57
  %i.hg = add nuw i64 %.098289.us, 1              ; 3 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0237.1419, i64 %i.hg ; 2 uses
  store i32 0, ptr %i.hh, align 4, !tbaa !57
  %.sroa_idx217.us.1 = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  store i32 0, ptr %.sroa_idx217.us.1, align 4, !tbaa !57
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.hg
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0220.1, i64 %i.hg
  %i.hk = load <2 x float>, ptr %i.hi, align 4, !tbaa !57
  %i.hl = fdiv <2 x float> %i.hk, %i.ha
  store <2 x float> %i.hl, ptr %i.hj, align 4, !tbaa !57
  %i.hm = add nuw i64 %.098289.us, 2              ; 2 uses
  %exitcond343.not.1 = icmp eq i64 %i.hm, %i.gb
  br i1 %exitcond343.not.1, label %.preheader, label %.lr.ph291.split.us.split, !llvm.loop !136

.lr.ph291.split:                                  ; preds = %.lr.ph291
  %i.hn = load ptr, ptr %6, align 8, !tbaa !47
  %i.ho = getelementptr inbounds nuw [24 x i8], ptr %i.hn, i64 %7
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !36 ; 16 uses
  %min.iters.check521 = icmp ult i64 %i.gb, 4     ; 2 uses
  br i1 %.not121, label %.lr.ph291.split.split.us.preheader, label %.lr.ph291.split.split.preheader

.lr.ph291.split.split.preheader:                  ; preds = %.lr.ph291.split
  br i1 %min.iters.check521, label %.lr.ph291.split.split.preheader741, label %vector.memcheck617

vector.memcheck617:                               ; preds = %.lr.ph291.split.split.preheader
  %17 = getelementptr i8, ptr %scevgep616, i64 %i.ga ; 3 uses
  %i.hq = getelementptr i8, ptr %scevgep615, i64 %i.ga ; 3 uses
  %18 = add i64 %i.ga, -4                         ; 2 uses
  %i.hr = getelementptr i8, ptr %i.hp, i64 %18    ; 2 uses
  %i.hs = getelementptr i8, ptr %i.fx, i64 %18    ; 2 uses
  %i.ht = getelementptr i8, ptr %.sroa.0237.1419, i64 %i.ga ; 3 uses
  %i.hu = getelementptr i8, ptr %.sroa.0220.1, i64 %i.ga ; 3 uses
  %i.hv = getelementptr i8, ptr %i.hp, i64 4      ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hp, i64 %i.ga  ; 2 uses
  %i.hx = getelementptr i8, ptr %i.fx, i64 4      ; 2 uses
  %bound0618 = icmp ult ptr %.sroa.0237.1419, %i.hq
  %bound1619 = icmp ult ptr %.sroa.0220.1, %17
  %found.conflict620 = and i1 %bound0618, %bound1619
  %bound0621 = icmp ult ptr %.sroa.0237.1419, %i.hr
  %bound1622 = icmp ult ptr %i.hp, %17
  %found.conflict623 = and i1 %bound0621, %bound1622
  %conflict.rdx624 = or i1 %found.conflict620, %found.conflict623
  %bound0625 = icmp ult ptr %.sroa.0237.1419, %i.hs
  %bound1626 = icmp ult ptr %i.fx, %17
  %found.conflict627 = and i1 %bound0625, %bound1626
  %conflict.rdx628 = or i1 %conflict.rdx624, %found.conflict627
  %bound0629 = icmp ult ptr %.sroa.0220.1, %i.hr
  %bound1630 = icmp ult ptr %i.hp, %i.hq
  %found.conflict631 = and i1 %bound0629, %bound1630
  %conflict.rdx632 = or i1 %conflict.rdx628, %found.conflict631
  %bound0633 = icmp ult ptr %.sroa.0220.1, %i.hs
  %bound1634 = icmp ult ptr %i.fx, %i.hq
  %found.conflict635 = and i1 %bound0633, %bound1634
  %conflict.rdx636 = or i1 %conflict.rdx632, %found.conflict635
  %bound0637 = icmp ult ptr %scevgep614, %i.hu
  %bound1638 = icmp ult ptr %scevgep, %i.ht
  %found.conflict639 = and i1 %bound0637, %bound1638
  %conflict.rdx640 = or i1 %conflict.rdx636, %found.conflict639
  %bound0641 = icmp ult ptr %scevgep614, %i.hw
  %bound1642 = icmp ult ptr %i.hv, %i.ht
  %found.conflict643 = and i1 %bound0641, %bound1642
  %conflict.rdx644 = or i1 %conflict.rdx640, %found.conflict643
  %bound0645 = icmp ult ptr %scevgep614, %i.fw
  %bound1646 = icmp ult ptr %i.hx, %i.ht
  %found.conflict647 = and i1 %bound0645, %bound1646
  %conflict.rdx648 = or i1 %conflict.rdx644, %found.conflict647
  %bound0649 = icmp ult ptr %scevgep, %i.hw
  %bound1650 = icmp ult ptr %i.hv, %i.hu
  %found.conflict651 = and i1 %bound0649, %bound1650
  %conflict.rdx652 = or i1 %conflict.rdx648, %found.conflict651
  %bound0653 = icmp ult ptr %scevgep, %i.fw
  %bound1654 = icmp ult ptr %i.hx, %i.hu
  %found.conflict655 = and i1 %bound0653, %bound1654
  %conflict.rdx656 = or i1 %conflict.rdx652, %found.conflict655
  br i1 %conflict.rdx656, label %.lr.ph291.split.split.preheader741, label %vector.ph657

vector.ph657:                                     ; preds = %vector.memcheck617
  %n.vec658 = and i64 %i.gb, -4                   ; 3 uses
  %broadcast.splatinsert659 = insertelement <4 x float> poison, float %i.gc, i64 0
  %broadcast.splatinsert661 = insertelement <4 x float> poison, float %i.gd, i64 0
  %i.hy = shufflevector <4 x float> %broadcast.splatinsert659, <4 x float> poison, <8 x i32> zeroinitializer
  %i.hz = shufflevector <4 x float> %broadcast.splatinsert661, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body663

vector.body663:                                   ; preds = %vector.body663, %vector.ph657
  %index664 = phi i64 [ 0, %vector.ph657 ], [ %index.next676, %vector.body663 ] ; 5 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %index664
  %wide.vec665 = load <8 x float>, ptr %i.ia, align 4, !tbaa !57
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %index664 ; 2 uses
  %wide.vec668 = load <8 x float>, ptr %i.ib, align 4, !tbaa !57
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0237.1419, i64 %index664
  %i.id = fsub <8 x float> %wide.vec665, %wide.vec668
  %interleaved.vec671 = fdiv <8 x float> %i.id, %i.hy
  store <8 x float> %interleaved.vec671, ptr %i.ic, align 4, !tbaa !57
  %wide.vec672 = load <8 x float>, ptr %i.ib, align 4, !tbaa !57
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0220.1, i64 %index664
  %interleaved.vec675 = fdiv <8 x float> %wide.vec672, %i.hz
  store <8 x float> %interleaved.vec675, ptr %i.ie, align 4, !tbaa !57
  %index.next676 = add nuw i64 %index664, 4       ; 2 uses
  %i.if = icmp eq i64 %index.next676, %n.vec658
  br i1 %i.if, label %middle.block677, label %vector.body663, !llvm.loop !137

middle.block677:                                  ; preds = %vector.body663
  %cmp.n678 = icmp eq i64 %i.gb, %n.vec658
  br i1 %cmp.n678, label %.preheader, label %.lr.ph291.split.split.preheader741

.lr.ph291.split.split.preheader741:               ; preds = %vector.memcheck617, %.lr.ph291.split.split.preheader, %middle.block677
  %.098289.ph = phi i64 [ 0, %vector.memcheck617 ], [ 0, %.lr.ph291.split.split.preheader ], [ %n.vec658, %middle.block677 ] ; 7 uses
  %.neg = or disjoint i64 %.098289.ph, 1
  %i.ig = and i64 %i.ga, 8
  %lcmp.mod.not = icmp eq i64 %i.ig, 0
  br i1 %lcmp.mod.not, label %.lr.ph291.split.split.prol.loopexit, label %.lr.ph291.split.split.prol

.lr.ph291.split.split.prol:                       ; preds = %.lr.ph291.split.split.preheader741
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %.098289.ph
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.098289.ph ; 2 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0237.1419, i64 %.098289.ph
  %i.ik = load <2 x float>, ptr %i.ih, align 4, !tbaa !57
  %i.il = load <2 x float>, ptr %i.ii, align 4, !tbaa !57
  %i.im = fsub <2 x float> %i.ik, %i.il
  %i.in = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.io = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ip = fdiv <2 x float> %i.im, %i.io
  store <2 x float> %i.ip, ptr %i.ij, align 4, !tbaa !57
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0220.1, i64 %.098289.ph
  %i.ir = load <2 x float>, ptr %i.ii, align 4, !tbaa !57
  %i.is = insertelement <2 x float> poison, float %i.gd, i64 0
  %i.it = shufflevector <2 x float> %i.is, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iu = fdiv <2 x float> %i.ir, %i.it
  store <2 x float> %i.iu, ptr %i.iq, align 4, !tbaa !57
  %i.iv = or disjoint i64 %.098289.ph, 1
  br label %.lr.ph291.split.split.prol.loopexit

.lr.ph291.split.split.prol.loopexit:              ; preds = %.lr.ph291.split.split.prol, %.lr.ph291.split.split.preheader741
  %.098289.unr = phi i64 [ %.098289.ph, %.lr.ph291.split.split.preheader741 ], [ %i.iv, %.lr.ph291.split.split.prol ]
  %i.iw = icmp eq i64 %i.gb, %.neg
  br i1 %i.iw, label %.preheader, label %.lr.ph291.split.split.preheader741.new

.lr.ph291.split.split.preheader741.new:           ; preds = %.lr.ph291.split.split.prol.loopexit
  %i.ix = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.iy = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iz = insertelement <2 x float> poison, float %i.gd, i64 0
  %i.ja = shufflevector <2 x float> %i.iz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jb = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.jc = shufflevector <2 x float> %i.jb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jd = insertelement <2 x float> poison, float %i.gd, i64 0
  %i.je = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph291.split.split

.lr.ph291.split.split.us.preheader:               ; preds = %.lr.ph291.split
  br i1 %min.iters.check521, label %.lr.ph291.split.split.us.preheader739, label %vector.memcheck522

vector.memcheck522:                               ; preds = %.lr.ph291.split.split.us.preheader
  %i.jf = getelementptr i8, ptr %.sroa.0237.1419, i64 %i.ga ; 3 uses
  %i.jg = getelementptr i8, ptr %.sroa.0220.1, i64 %i.ga ; 3 uses
  %i.jh = getelementptr i8, ptr %i.hp, i64 %i.ga  ; 2 uses
  %bound0523 = icmp ult ptr %.sroa.0237.1419, %i.jg
  %bound1524 = icmp ult ptr %.sroa.0220.1, %i.jf
  %found.conflict525 = and i1 %bound0523, %bound1524
  %bound0526 = icmp ult ptr %.sroa.0237.1419, %i.jh
  %bound1527 = icmp ult ptr %i.hp, %i.jf
  %found.conflict528 = and i1 %bound0526, %bound1527
  %conflict.rdx529 = or i1 %found.conflict525, %found.conflict528
  %bound0530 = icmp ult ptr %.sroa.0237.1419, %i.fw
  %bound1531 = icmp ult ptr %i.fx, %i.jf
  %found.conflict532 = and i1 %bound0530, %bound1531
  %conflict.rdx533 = or i1 %conflict.rdx529, %found.conflict532
  %bound0534 = icmp ult ptr %.sroa.0220.1, %i.jh
  %bound1535 = icmp ult ptr %i.hp, %i.jg
  %found.conflict536 = and i1 %bound0534, %bound1535
  %conflict.rdx537 = or i1 %conflict.rdx533, %found.conflict536
  %bound0538 = icmp ult ptr %.sroa.0220.1, %i.fw
  %bound1539 = icmp ult ptr %i.fx, %i.jg
  %found.conflict540 = and i1 %bound0538, %bound1539
  %conflict.rdx541 = or i1 %conflict.rdx537, %found.conflict540
  br i1 %conflict.rdx541, label %.lr.ph291.split.split.us.preheader739, label %vector.ph542

vector.ph542:                                     ; preds = %vector.memcheck522
  %n.vec543 = and i64 %i.gb, -4                   ; 3 uses
  %broadcast.splatinsert544 = insertelement <4 x float> poison, float %i.gc, i64 0
  %i.ji = shufflevector <4 x float> %broadcast.splatinsert544, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body546

vector.body546:                                   ; preds = %vector.body546, %vector.ph542
  %index547 = phi i64 [ 0, %vector.ph542 ], [ %index.next555, %vector.body546 ] ; 6 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %index547
  %wide.vec548 = load <8 x float>, ptr %i.jj, align 4, !tbaa !57, !alias.scope !164
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %index547
  %wide.vec551 = load <8 x float>, ptr %i.jk, align 4, !tbaa !57, !alias.scope !165
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0237.1419, i64 %index547
  %i.jm = fsub <8 x float> %wide.vec548, %wide.vec551
  %interleaved.vec554 = fdiv <8 x float> %i.jm, %i.ji
  store <8 x float> %interleaved.vec554, ptr %i.jl, align 4, !tbaa !57, !alias.scope !166, !noalias !167
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0220.1, i64 %index547
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0220.1, i64 %index547
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  store <4 x i32> zeroinitializer, ptr %i.jn, align 4, !tbaa !57, !alias.scope !168, !noalias !169
  store <4 x i32> zeroinitializer, ptr %i.jp, align 4, !tbaa !57, !alias.scope !168, !noalias !169
  %index.next555 = add nuw i64 %index547, 4       ; 2 uses
  %i.jq = icmp eq i64 %index.next555, %n.vec543
  br i1 %i.jq, label %middle.block556, label %vector.body546, !llvm.loop !143

middle.block556:                                  ; preds = %vector.body546
  %cmp.n557 = icmp eq i64 %i.gb, %n.vec543
  br i1 %cmp.n557, label %.preheader, label %.lr.ph291.split.split.us.preheader739

.lr.ph291.split.split.us.preheader739:            ; preds = %vector.memcheck522, %.lr.ph291.split.split.us.preheader, %middle.block556
  %.098289.us292.ph = phi i64 [ 0, %vector.memcheck522 ], [ 0, %.lr.ph291.split.split.us.preheader ], [ %n.vec543, %middle.block556 ] ; 7 uses
  %.neg774 = or disjoint i64 %.098289.us292.ph, 1
  %i.jr = and i64 %i.ga, 8
  %lcmp.mod762.not = icmp eq i64 %i.jr, 0
  br i1 %lcmp.mod762.not, label %.lr.ph291.split.split.us.prol.loopexit, label %.lr.ph291.split.split.us.prol

.lr.ph291.split.split.us.prol:                    ; preds = %.lr.ph291.split.split.us.preheader739
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %.098289.us292.ph
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.098289.us292.ph
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0237.1419, i64 %.098289.us292.ph
  %i.jv = load <2 x float>, ptr %i.js, align 4, !tbaa !57
  %i.jw = load <2 x float>, ptr %i.jt, align 4, !tbaa !57
  %i.jx = fsub <2 x float> %i.jv, %i.jw
  %i.jy = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.jz = shufflevector <2 x float> %i.jy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ka = fdiv <2 x float> %i.jx, %i.jz
  store <2 x float> %i.ka, ptr %i.ju, align 4, !tbaa !57
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0220.1, i64 %.098289.us292.ph ; 2 uses
  store i32 0, ptr %i.kb, align 4, !tbaa !57
  %.sroa_idx215.us293.prol = getelementptr inbounds nuw i8, ptr %i.kb, i64 4
  store i32 0, ptr %.sroa_idx215.us293.prol, align 4, !tbaa !57
  %i.kc = or disjoint i64 %.098289.us292.ph, 1
  br label %.lr.ph291.split.split.us.prol.loopexit

.lr.ph291.split.split.us.prol.loopexit:           ; preds = %.lr.ph291.split.split.us.prol, %.lr.ph291.split.split.us.preheader739
  %.098289.us292.unr = phi i64 [ %.098289.us292.ph, %.lr.ph291.split.split.us.preheader739 ], [ %i.kc, %.lr.ph291.split.split.us.prol ]
  %i.kd = icmp eq i64 %i.gb, %.neg774
  br i1 %i.kd, label %.preheader, label %.lr.ph291.split.split.us.preheader739.new

.lr.ph291.split.split.us.preheader739.new:        ; preds = %.lr.ph291.split.split.us.prol.loopexit
  %i.ke = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.kf = shufflevector <2 x float> %i.ke, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kg = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.kh = shufflevector <2 x float> %i.kg, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph291.split.split.us

.lr.ph291.split.split.us:                         ; preds = %.lr.ph291.split.split.us, %.lr.ph291.split.split.us.preheader739.new
  %.098289.us292 = phi i64 [ %.098289.us292.unr, %.lr.ph291.split.split.us.preheader739.new ], [ %i.kz, %.lr.ph291.split.split.us ] ; 6 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %.098289.us292
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.098289.us292
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0237.1419, i64 %.098289.us292
  %i.kl = load <2 x float>, ptr %i.ki, align 4, !tbaa !57
  %i.km = load <2 x float>, ptr %i.kj, align 4, !tbaa !57
  %i.kn = fsub <2 x float> %i.kl, %i.km
  %i.ko = fdiv <2 x float> %i.kn, %i.kf
end_hunk_0
