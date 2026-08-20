inline.NumInlined: 412
inline.NumDeleted: 186
loop-unroll.NumCompletelyUnrolled: 90
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 94
begin_hunk_0_@_ZL11low_set_pbcP5t_pbc7PbcTypePKiPA3_Kf:bb.a

.preheader257.split:                              ; preds = %.preheader257
  br i1 %i.bk, label %.thread412, label %.split.us.thread388

.thread412:                                       ; preds = %.preheader257.split
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 3, ptr %i.bv, align 4, !tbaa !19
  br label %.loopexit254.thread436

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.37, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 1 dereferenceable(60) @.str.8, i8 noundef zeroext 2)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.36, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef 388) #28
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.g
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.l:                                             ; preds = %bb.h
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #20
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.by, %bb.m ], [ %i.bx, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.bz = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !17
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.k ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.ca

bb.o:                                             ; preds = %.preheader257.split.us.preheader
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  store i32 5, ptr %i.ce, align 4, !tbaa !19
  %i.cf = xor i1 %i.bp, true
  %i.cg = or i1 %i.bm, %i.cf
  br i1 %i.cg, label %bb.p, label %bb.q

.lr.ph273:                                        ; preds = %.preheader251.thread, %.preheader251
  %i.ch = phi i32 [ 2, %.preheader251.thread ], [ %.pre, %.preheader251 ] ; 2 uses
  %i.ci = zext nneg i32 %i.ch to i64              ; 3 uses
  %i.cj = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %i.ci ; 9 uses
  %xtraiter = and i64 %i.ci, 7                    ; 3 uses
  %i.ck = icmp samesign ult i32 %i.ch, 8
  br i1 %i.ck, label %.epil.preheader, label %.lr.ph273.new

.lr.ph273.new:                                    ; preds = %.lr.ph273
  %unroll_iter = and i64 %i.ci, 2147483640
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %not. = xor i1 %i.bp, true
  %spec.select455 = zext i1 %not. to i32
  store i32 %spec.select455, ptr %i.ag, align 4, !tbaa !35
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  br i1 %or.cond284.2, label %.preheader251, label %.preheader251.thread

.preheader251.thread:                             ; preds = %bb.q
  store i32 2, ptr %i.ag, align 4, !tbaa !35
  br label %.lr.ph273

.preheader251:                                    ; preds = %bb.q
  %.pre = load i32, ptr %i.ag, align 4, !tbaa !35 ; 2 uses
  %i.cl = icmp sgt i32 %.pre, 0
  br i1 %i.cl, label %.lr.ph273, label %.loopexit252

bb.r:                                             ; preds = %bb.ah, %.lr.ph273.new
  %i.cm = phi i32 [ 5, %.lr.ph273.new ], [ %i.dz, %bb.ah ]
  %indvars.iv = phi i64 [ 0, %.lr.ph273.new ], [ %indvars.iv.next.7, %bb.ah ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph273.new ], [ %niter.next.7, %bb.ah ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv
  %i.co = load float, ptr %i.cn, align 4, !tbaa !23
  %i.cp = fcmp une float %i.co, 0.000000e+00
  br i1 %i.cp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 6, ptr %i.ce, align 4, !tbaa !19
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.cq = phi i32 [ %i.cm, %bb.r ], [ 6, %bb.s ]
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !23
  %i.cu = fcmp une float %i.ct, 0.000000e+00
  br i1 %i.cu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 6, ptr %i.ce, align 4, !tbaa !19
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cv = phi i32 [ %i.cq, %bb.t ], [ 6, %bb.u ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !23
  %i.cz = fcmp une float %i.cy, 0.000000e+00
  br i1 %i.cz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 6, ptr %i.ce, align 4, !tbaa !19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.da = phi i32 [ %i.cv, %bb.v ], [ 6, %bb.w ]
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !23
  %i.de = fcmp une float %i.dd, 0.000000e+00
  br i1 %i.de, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 6, ptr %i.ce, align 4, !tbaa !19
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.df = phi i32 [ %i.da, %bb.x ], [ 6, %bb.y ]
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load float, ptr %i.dh, align 4, !tbaa !23
  %i.dj = fcmp une float %i.di, 0.000000e+00
  br i1 %i.dj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 6, ptr %i.ce, align 4, !tbaa !19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dk = phi i32 [ %i.df, %bb.z ], [ 6, %bb.aa ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 20
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !23
  %i.do = fcmp une float %i.dn, 0.000000e+00
  br i1 %i.do, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 6, ptr %i.ce, align 4, !tbaa !19
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dp = phi i32 [ %i.dk, %bb.ab ], [ 6, %bb.ac ]
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !23
  %i.dt = fcmp une float %i.ds, 0.000000e+00
  br i1 %i.dt, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 6, ptr %i.ce, align 4, !tbaa !19
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.du = phi i32 [ %i.dp, %bb.ad ], [ 6, %bb.ae ]
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 28
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !23
  %i.dy = fcmp une float %i.dx, 0.000000e+00
  br i1 %i.dy, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 6, ptr %i.ce, align 4, !tbaa !19
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.dz = phi i32 [ %i.du, %bb.af ], [ 6, %bb.ag ] ; 3 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit252.loopexit.unr-lcssa, label %bb.r, !llvm.loop !37

.split.us.thread:                                 ; preds = %.preheader257.split.us.preheader
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 3, ptr %i.ea, align 4, !tbaa !19
  br i1 %i.bm, label %bb.ai, label %.split

.split:                                           ; preds = %.split.us.thread
  store i32 0, ptr %i.ag, align 4, !tbaa !35
  br i1 %i.bp, label %.split422, label %bb.aj

bb.ai:                                            ; preds = %.split.us.thread
  br i1 %i.bp, label %.split422, label %bb.aj

.split422:                                        ; preds = %.split, %bb.ai
  %.sroa.0355.1387400411 = phi i32 [ 0, %.split ], [ 1, %bb.ai ] ; 2 uses
  store i32 1, ptr %i.ag, align 4, !tbaa !35
  br i1 %or.cond284.2, label %.loopexit254.1.thread, label %.lr.ph.2

bb.aj:                                            ; preds = %.split, %bb.ai
  %.sroa.0355.1387400408 = phi i32 [ 0, %.split ], [ 1, %bb.ai ] ; 2 uses
  br i1 %or.cond284.2, label %.loopexit254.thread436, label %.lr.ph.1

.loopexit254.thread436:                           ; preds = %.thread412, %bb.aj
  %.ph = phi ptr [ %i.ea, %bb.aj ], [ %i.bv, %.thread412 ]
  %.sroa.0355.1387400408417.ph = phi i32 [ %.sroa.0355.1387400408, %bb.aj ], [ 1, %.thread412 ]
  store i32 2, ptr %i.ag, align 4, !tbaa !35
  br label %.lr.ph.1

.loopexit254.1.thread:                            ; preds = %.split422
  store i32 2, ptr %i.ag, align 4, !tbaa !35
  br label %.loopexit252

.lr.ph.1:                                         ; preds = %bb.aj, %.loopexit254.thread436
  %.sroa.0355.1387400408416435 = phi i32 [ %.sroa.0355.1387400408417.ph, %.loopexit254.thread436 ], [ %.sroa.0355.1387400408, %bb.aj ] ; 4 uses
  %.sroa.20.0382402406420433 = phi i1 [ true, %.loopexit254.thread436 ], [ false, %bb.aj ] ; 2 uses
  %i.eb = phi ptr [ %.ph, %.loopexit254.thread436 ], [ %i.ea, %bb.aj ] ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !23
  %i.ee = fcmp une float %i.ed, 0.000000e+00
  br i1 %i.ee, label %.split453, label %.loopexit254.1

.split453:                                        ; preds = %.lr.ph.1
  store i32 4, ptr %i.eb, align 4, !tbaa !19
  br i1 %.sroa.20.0382402406420433, label %.loopexit252, label %.lr.ph.2

.loopexit254.1:                                   ; preds = %.lr.ph.1
  br i1 %.sroa.20.0382402406420433, label %.loopexit252, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.split422, %.split453, %.loopexit254.1
  %i.ef = phi i32 [ 4, %.split453 ], [ 3, %.loopexit254.1 ], [ 3, %.split422 ]
  %i.eg = phi ptr [ %i.eb, %.split453 ], [ %i.eb, %.loopexit254.1 ], [ %i.ea, %.split422 ] ; 2 uses
  %.sroa.11.0384401407418427451 = phi i1 [ false, %.split453 ], [ false, %.loopexit254.1 ], [ true, %.split422 ] ; 2 uses
  %.sroa.0355.1387400408416428450 = phi i32 [ %.sroa.0355.1387400408416435, %.split453 ], [ %.sroa.0355.1387400408416435, %.loopexit254.1 ], [ %.sroa.0355.1387400411, %.split422 ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !23
  %i.ej = fcmp une float %i.ei, 0.000000e+00
  br i1 %i.ej, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph.2
  store i32 4, ptr %i.eg, align 4, !tbaa !19
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph.2
  %i.ek = phi i32 [ 4, %bb.ak ], [ %i.ef, %.lr.ph.2 ]
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.em = load float, ptr %i.el, align 4, !tbaa !23
  %i.en = fcmp une float %i.em, 0.000000e+00
  br i1 %i.en, label %bb.am, label %.loopexit252

bb.am:                                            ; preds = %bb.al
  store i32 4, ptr %i.eg, align 4, !tbaa !19
  br label %.loopexit252

.split.us.thread388:                              ; preds = %.preheader257.split, %.preheader257.split.us.preheader
  %.sroa.0355.1395 = phi i32 [ %spec.select, %.preheader257.split.us.preheader ], [ 1, %.preheader257.split ] ; 4 uses
  %.sroa.11.0394 = phi i1 [ %i.bp, %.preheader257.split.us.preheader ], [ false, %.preheader257.split ] ; 4 uses
  %.sroa.20.0393 = phi i1 [ %or.cond284.2, %.preheader257.split.us.preheader ], [ false, %.preheader257.split ] ; 4 uses
  br i1 %i.bi, label %bb.as, label %bb.an

bb.an:                                            ; preds = %.split.us.thread388
  %i.eo = load float, ptr %i.n, align 4, !tbaa !23
  %i.ep = fcmp une float %i.eo, 0.000000e+00
  br i1 %i.ep, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eq = load float, ptr %i.w, align 4, !tbaa !23
  %i.er = fcmp une float %i.eq, 0.000000e+00
  br i1 %i.er, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.es = load float, ptr %i.z, align 4, !tbaa !23
  %i.et = fcmp une float %i.es, 0.000000e+00
  br i1 %i.et, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.eu, align 4, !tbaa !19
  br label %.loopexit252

bb.ar:                                            ; preds = %bb.ap
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.ev, align 4, !tbaa !19
  br label %.loopexit252

bb.as:                                            ; preds = %.split.us.thread388
  %i.ew = load float, ptr %i.z, align 4, !tbaa !23
  %i.ex = fcmp une float %i.ew, 0.000000e+00      ; 2 uses
  %i.ey = select i1 %i.ex, i32 8, i32 7
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !19
  br i1 %i.ex, label %bb.at, label %.loopexit252

bb.at:                                            ; preds = %bb.as
  %i.fa = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.fb = tail call i64 @fwrite(ptr nonnull @.str.38, i64 71, i64 1, ptr %i.fa) #32 ; 0 uses
  store i32 10, ptr %i.ez, align 4, !tbaa !19
  br label %.loopexit252

bb.au:                                            ; preds = %.preheader257.split.us.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 1 dereferenceable(60) @.str.8, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef 474, ptr noundef nonnull @.str.39, i32 noundef %spec.select458) #28
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.ca

.loopexit252.loopexit.unr-lcssa:                  ; preds = %bb.ah
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit252, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit252.loopexit.unr-lcssa, %.lr.ph273
  %.epil.init = phi i32 [ 5, %.lr.ph273 ], [ %i.dz, %.loopexit252.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph273 ], [ %indvars.iv.next.7, %.loopexit252.loopexit.unr-lcssa ]
  %lcmp.mod460 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod460)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.az, %.epil.preheader
  %i.fd = phi i32 [ %.epil.init, %.epil.preheader ], [ %i.fh, %bb.az ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.az ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.az ]
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.epil
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !23
  %i.fg = fcmp une float %i.ff, 0.000000e+00
  br i1 %i.fg, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 6, ptr %i.ce, align 4, !tbaa !19
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.fh = phi i32 [ %i.fd, %bb.ax ], [ 6, %bb.ay ] ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit252, label %bb.ax, !llvm.loop !38

.loopexit252:                                     ; preds = %.loopexit252.loopexit.unr-lcssa, %bb.az, %.loopexit254.1, %.loopexit254.1.thread, %.split453, %bb.am, %bb.al, %.preheader251, %bb.ar, %bb.aq, %bb.at, %bb.as
  %.sroa.0355.1386 = phi i32 [ %.sroa.0355.1395, %bb.as ], [ %.sroa.0355.1387400408416428450, %bb.al ], [ %spec.select, %.preheader251 ], [ %.sroa.0355.1395, %bb.ar ], [ %.sroa.0355.1395, %bb.aq ], [ %.sroa.0355.1395, %bb.at ], [ %.sroa.0355.1387400408416435, %.split453 ], [ %.sroa.0355.1387400408416435, %.loopexit254.1 ], [ %.sroa.0355.1387400411, %.loopexit254.1.thread ], [ %.sroa.0355.1387400408416428450, %bb.am ], [ %spec.select, %bb.az ], [ %spec.select, %.loopexit252.loopexit.unr-lcssa ]
  %.sroa.11.0385 = phi i1 [ %.sroa.11.0394, %bb.as ], [ %.sroa.11.0384401407418427451, %bb.al ], [ %i.bp, %.preheader251 ], [ %.sroa.11.0394, %bb.ar ], [ %.sroa.11.0394, %bb.aq ], [ %.sroa.11.0394, %bb.at ], [ false, %.split453 ], [ false, %.loopexit254.1 ], [ true, %.loopexit254.1.thread ], [ %.sroa.11.0384401407418427451, %bb.am ], [ %i.bp, %bb.az ], [ %i.bp, %.loopexit252.loopexit.unr-lcssa ]
  %.sroa.20.0383 = phi i1 [ %.sroa.20.0393, %bb.as ], [ false, %bb.al ], [ true, %.preheader251 ], [ %.sroa.20.0393, %bb.ar ], [ %.sroa.20.0393, %bb.aq ], [ %.sroa.20.0393, %bb.at ], [ true, %.split453 ], [ true, %.loopexit254.1 ], [ true, %.loopexit254.1.thread ], [ false, %bb.am ], [ %or.cond284.2, %bb.az ], [ %or.cond284.2, %.loopexit252.loopexit.unr-lcssa ]
  %i.fi = phi i32 [ 7, %bb.as ], [ %i.ek, %bb.al ], [ 5, %.preheader251 ], [ 1, %bb.ar ], [ 2, %bb.aq ], [ 10, %bb.at ], [ 4, %.split453 ], [ 3, %.loopexit254.1 ], [ 3, %.loopexit254.1.thread ], [ 4, %bb.am ], [ %i.dz, %.loopexit252.loopexit.unr-lcssa ], [ %i.fh, %bb.az ]
  %i.fj = load float, ptr %3, align 4, !tbaa !23  ; 5 uses
  %i.fk = load float, ptr %i.h, align 4, !tbaa !23 ; 2 uses
  %i.fl = fmul float %i.fk, %i.fk
  %i.fm = tail call float @llvm.fmuladd.f32(float %i.fj, float %i.fj, float %i.fl)
  %i.fn = load float, ptr %i.k, align 4, !tbaa !23 ; 2 uses
  %i.fo = tail call noundef float @llvm.fmuladd.f32(float %i.fn, float %i.fn, float %i.fm) ; 2 uses
  %i.fp = load float, ptr %i.n, align 4, !tbaa !23 ; 2 uses
  %i.fq = load float, ptr %i.q, align 4, !tbaa !23 ; 5 uses
  %i.fr = fmul float %i.fq, %i.fq
  %i.fs = tail call float @llvm.fmuladd.f32(float %i.fp, float %i.fp, float %i.fr)
  %i.ft = load float, ptr %i.t, align 4, !tbaa !23 ; 2 uses
  %i.fu = tail call noundef float @llvm.fmuladd.f32(float %i.ft, float %i.ft, float %i.fs) ; 2 uses
  %i.fv = fcmp olt float %i.fu, %i.fo
  %.sroa.speculated23.i = select i1 %i.fv, float %i.fu, float %i.fo
  %i.fw = fmul float %.sroa.speculated23.i, 2.500000e-01 ; 3 uses
  br i1 %i.bk, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.loopexit252
  %i.fx = load float, ptr %i.w, align 4, !tbaa !23 ; 2 uses
  %i.fy = load float, ptr %i.z, align 4, !tbaa !23 ; 3 uses
  %i.fz = fmul float %i.fy, %i.fy
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.fx, float %i.fx, float %i.fz)
  %i.gb = load float, ptr %i.ac, align 4, !tbaa !23 ; 4 uses
  %i.gc = tail call noundef float @llvm.fmuladd.f32(float %i.gb, float %i.gb, float %i.ga)
  %i.gd = fmul float %i.gc, 2.500000e-01          ; 2 uses
  %i.ge = fcmp olt float %i.gd, %i.fw
  %.sroa.speculated19.i = select i1 %i.ge, float %i.gd, float %i.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
end_hunk_0
begin_hunk_1_@_ZL22putAtomsInBoxTemplatedILb0EEv7PbcTypePA3_KfS3_N3gmx8ArrayRefINS4_11BasicVectorIfEEEES8_:bb.a
  %i.du = fmul float %i.dt, %i.x
  %i.dv = tail call noundef float @llvm.floor.f32(float %i.du)
  %i.dw = load float, ptr %i.y, align 4, !tbaa !23
  %i.dx = fneg float %i.dv
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.dx, float %i.dw, float %i.dt)
  store float %i.dy, ptr %i.ds, align 4, !tbaa !23
  br label %bb.k

.loopexit5:                                       ; preds = %bb.k, %bb.i, %.preheader7, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #11

; Function Attrs: mustprogress nounwind uwtable
define void @_Z20put_atoms_in_box_omp7PbcTypePA3_KfbS2_N3gmx8ArrayRefINS3_11BasicVectorIfEEEES7_i(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr %4, ptr %5, ptr noundef byval(%"class.gmx::ArrayRef") align 8 %6, i32 noundef %7) local_unnamed_addr #15 {
bb.a:
  %8 = alloca %"class.gmx::ArrayRef", align 8     ; 3 uses
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca i8, align 1                       ; 2 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %i.e = alloca i32, align 4                      ; 2 uses
  %i.f = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %4, ptr %8, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %5, ptr %i.g, align 8
  store i32 %0, ptr %i.a, align 4, !tbaa !84
  store ptr %1, ptr %i.b, align 8, !tbaa !85
  %i.h = zext i1 %2 to i8
  store i8 %i.h, ptr %i.c, align 1, !tbaa !87
  store ptr %3, ptr %i.d, align 8, !tbaa !85
  store i32 %7, ptr %i.e, align 4, !tbaa !36
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.f, i32 %7)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_Z20put_atoms_in_box_omp7PbcTypePA3_KfbS2_N3gmx8ArrayRefINS3_11BasicVectorIfEEEES7_i.omp_outlined, ptr nonnull %i.e, ptr nonnull %8, ptr nonnull %i.c, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.d, ptr nonnull %6)
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_Z20put_atoms_in_box_omp7PbcTypePA3_KfbS2_N3gmx8ArrayRefINS3_11BasicVectorIfEEEES7_i.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %8) #19 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %10 = alloca %"class.gmx::BasicVector.6", align 16 ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !36     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 %i.g, ptr %i.b, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 1, ptr %i.c, align 4, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 0, ptr %i.d, align 4, !tbaa !36
  %i.h = load i32, ptr %0, align 4, !tbaa !36     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !36
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !36
  %i.k = load i32, ptr %i.a, align 4, !tbaa !36   ; 2 uses
  %.not40 = icmp sgt i32 %i.k, %i.j
  br i1 %.not40, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = sext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.u
  %i.p = phi i32 [ %i.j, %.lr.ph ], [ %i.hj, %bb.u ]
  %indvars.iv = phi i64 [ %i.m, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %3, align 8 ; 4 uses
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !89
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = sdiv exact i64 %i.t, 12                  ; 2 uses
  %i.v = mul i64 %i.u, %indvars.iv
  %i.w = load i32, ptr %2, align 4, !tbaa !36
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %i.y = udiv i64 %i.v, %i.x                      ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.z = mul i64 %i.u, %indvars.iv.next
  %i.aa = udiv i64 %i.z, %i.x                     ; 2 uses
  %i.ab = load i8, ptr %4, align 1, !tbaa !87, !range !92, !noundef !93
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = load i32, ptr %5, align 4, !tbaa !84    ; 2 uses
  %i.ae = load ptr, ptr %6, align 8, !tbaa !85    ; 11 uses
  br i1 %i.ac, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  %i.af = load ptr, ptr %7, align 8, !tbaa !85    ; 9 uses
  %.idx37 = mul nsw i64 %i.y, 12                  ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 %.idx37 ; 2 uses
  %.idx = mul nsw i64 %i.aa, 12                   ; 2 uses
  %i.ah = load i64, ptr %8, align 8
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = getelementptr inbounds [12 x i8], ptr %i.ai, i64 %i.y ; 2 uses
  switch i32 %i.ad, label %bb.h [
    i32 3, label %bb.e
    i32 2, label %vector.ph
  ]

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 1 dereferenceable(60) @.str.8, i8 noundef zeroext 2)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_Z14c_pbcTypeNamesB5cxx11, i64 96), align 8, !tbaa !15
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef 1448, ptr noundef nonnull @.str.50, ptr noundef %i.ak) #28
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.noexc
  unreachable

bb.g:                                             ; preds = %.noexc
  %i.al = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %.body

bb.h:                                             ; preds = %bb.d
  br label %vector.ph

vector.ph:                                        ; preds = %bb.h, %bb.d
  %exitcond35.not.i.1 = phi i1 [ false, %bb.h ], [ true, %bb.d ]
  %i.am = phi i1 [ true, %bb.h ], [ false, %bb.d ]
  %.066.i = phi i64 [ 3, %bb.h ], [ 2, %bb.d ]    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %trip.count.minus.1 = add nsw i64 %.066.i, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.an = icmp samesign uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %wide.gep = getelementptr inbounds nuw [12 x i8], ptr %i.ae, <4 x i64> <i64 0, i64 1, i64 2, i64 3>
  %wide.gep71 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.gep, <4 x i64> <i64 0, i64 1, i64 2, i64 3>
  %wide.masked.gather = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep71, <4 x i1> %i.an, <4 x float> poison), !tbaa !23
  %i.ao = fdiv <4 x float> splat (float 1.000000e+00), %wide.masked.gather
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.ao, ptr align 16 %10, <4 x i1> %i.an), !tbaa !23
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !23
  %i.ar = fcmp une float %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.k, label %bb.i

bb.i:                                             ; preds = %vector.ph
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.at = load float, ptr %i.as, align 4, !tbaa !23
  %i.au = fcmp une float %i.at, 0.000000e+00
  br i1 %i.au, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.aw = load float, ptr %i.av, align 4, !tbaa !23
  %i.ax = fcmp une float %i.aw, 0.000000e+00
  br i1 %i.ax, label %bb.k, label %.preheader7.i

.preheader7.i:                                    ; preds = %bb.j
  %gepdiff = sub nsw i64 %.idx, %.idx37           ; 2 uses
  %i.ay = icmp sgt i64 %gepdiff, 0
  br i1 %i.ay, label %.preheader6.lr.ph.i, label %_ZL22putAtomsInBoxTemplatedILb1EEv7PbcTypePA3_KfS3_N3gmx8ArrayRefINS4_11BasicVectorIfEEEES8_.exit

.preheader6.lr.ph.i:                              ; preds = %.preheader7.i
  %i.az = udiv exact i64 %gepdiff, 12
  %i.ba = load float, ptr %10, align 16, !tbaa !23
  %i.bb = load float, ptr %i.n, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.be = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.bf = load float, ptr %i.o, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 28
  %i.bj = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  br label %.preheader6.i

bb.k:                                             ; preds = %bb.j, %bb.i, %vector.ph
  %gepdiff38 = sub nsw i64 %.idx, %.idx37         ; 2 uses
  %i.bk = icmp sgt i64 %gepdiff38, 0
  br i1 %i.bk, label %.preheader.lr.ph.i, label %_ZL22putAtomsInBoxTemplatedILb1EEv7PbcTypePA3_KfS3_N3gmx8ArrayRefINS4_11BasicVectorIfEEEES8_.exit

.preheader.lr.ph.i:                               ; preds = %bb.k
  %i.bl = udiv exact i64 %gepdiff38, 12
  %indvars.iv.next43.i = add nsw i64 %.066.i, -1  ; 6 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.next43.i
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !23
  %i.bo = getelementptr inbounds nuw [12 x i8], ptr %i.ae, i64 %indvars.iv.next43.i
  %i.bp = getelementptr inbounds nuw [12 x i8], ptr %i.af, i64 %indvars.iv.next43.i
  %indvars.iv.next43.i.1 = add nsw i64 %.066.i, -2 ; 7 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.next43.i.1
  %i.br = getelementptr inbounds nuw [12 x i8], ptr %i.ae, i64 %indvars.iv.next43.i.1
  %i.bs = getelementptr inbounds nuw [12 x i8], ptr %i.af, i64 %indvars.iv.next43.i.1
  %lcmp.mod74.1 = icmp ne i64 %indvars.iv.next43.i, 0
  %i.bt = add nsw i64 %.066.i, -3
  %indvars.iv.next43.i.2 = add nsw i64 %.066.i, -3 ; 4 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.next43.i.2
  %i.bv = getelementptr inbounds nuw [12 x i8], ptr %i.ae, i64 %indvars.iv.next43.i.2 ; 5 uses
  %i.bw = getelementptr inbounds nuw [12 x i8], ptr %i.af, i64 %indvars.iv.next43.i.2 ; 5 uses
  %i.bx = icmp ult i64 %i.bt, 3
  %lcmp.mod.2.not = icmp eq i64 %indvars.iv.next43.i.1, 0
  %lcmp.mod74.2 = icmp ne i64 %indvars.iv.next43.i.1, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit.i.2, %.preheader.lr.ph.i
  %.06417.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %i.fj, %.loopexit.i.2 ] ; 3 uses
  %i.by = getelementptr inbounds nuw [12 x i8], ptr %i.ag, i64 %.06417.i ; 10 uses
  %i.bz = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %.06417.i ; 7 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next43.i
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !23
  %i.cc = fmul float %i.cb, %i.bn
  %i.cd = call noundef float @llvm.floor.f32(float %i.cc)
  %i.ce = fneg float %i.cd                        ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i
  %indvars.iv37.i.epil = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next38.i.epil, %bb.l ] ; 5 uses
  %epil.iter = phi i64 [ 0, %.preheader.i ], [ %epil.iter.next, %bb.l ]
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv37.i.epil
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !23
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv37.i.epil ; 2 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !23
  %i.cj = call float @llvm.fmuladd.f32(float %i.ce, float %i.cg, float %i.ci)
  store float %i.cj, ptr %i.ch, align 4, !tbaa !23
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv37.i.epil
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !23
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv37.i.epil ; 2 uses
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !23
  %i.co = call float @llvm.fmuladd.f32(float %i.ce, float %i.cl, float %i.cn)
  store float %i.co, ptr %i.cm, align 4, !tbaa !23
  %indvars.iv.next38.i.epil = add nuw nsw i64 %indvars.iv37.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %.066.i
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %bb.l, !llvm.loop !94

.loopexit.i:                                      ; preds = %bb.l
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next43.i.1
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !23
  %i.cr = load float, ptr %i.bq, align 4, !tbaa !23
  %i.cs = fmul float %i.cq, %i.cr
  %i.ct = call noundef float @llvm.floor.f32(float %i.cs)
  %i.cu = fneg float %i.ct                        ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod74.1)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.loopexit.i
  %indvars.iv37.i.epil.1 = phi i64 [ 0, %.loopexit.i ], [ %indvars.iv.next38.i.epil.1, %bb.m ] ; 5 uses
  %epil.iter.1 = phi i64 [ 0, %.loopexit.i ], [ %epil.iter.next.1, %bb.m ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv37.i.epil.1
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !23
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv37.i.epil.1 ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !23
  %i.cz = call float @llvm.fmuladd.f32(float %i.cu, float %i.cw, float %i.cy)
  store float %i.cz, ptr %i.cx, align 4, !tbaa !23
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv37.i.epil.1
  %i.db = load float, ptr %i.da, align 4, !tbaa !23
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv37.i.epil.1 ; 2 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !23
  %i.de = call float @llvm.fmuladd.f32(float %i.cu, float %i.db, float %i.dd)
  store float %i.de, ptr %i.dc, align 4, !tbaa !23
  %indvars.iv.next38.i.epil.1 = add nuw nsw i64 %indvars.iv37.i.epil.1, 1
  %epil.iter.next.1 = add i64 %epil.iter.1, 1     ; 2 uses
  %epil.iter.cmp.1.not = icmp eq i64 %epil.iter.next.1, %indvars.iv.next43.i
  br i1 %epil.iter.cmp.1.not, label %.loopexit.i.1, label %bb.m, !llvm.loop !94

.loopexit.i.1:                                    ; preds = %bb.m
  br i1 %i.am, label %bb.n, label %.loopexit.i.2

bb.n:                                             ; preds = %.loopexit.i.1
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next43.i.2
  %i.dg = load float, ptr %i.df, align 4, !tbaa !23
  %i.dh = load float, ptr %i.bu, align 4, !tbaa !23
  %i.di = fmul float %i.dg, %i.dh
  %i.dj = call noundef float @llvm.floor.f32(float %i.di)
  %i.dk = fneg float %i.dj                        ; 10 uses
  br i1 %i.bx, label %.epil.preheader.2, label %.new.2

.new.2:                                           ; preds = %bb.n, %.new.2
  %indvars.iv37.i.2 = phi i64 [ %indvars.iv.next38.i.3.2, %.new.2 ], [ 0, %bb.n ] ; 8 uses
  %niter.2 = phi i64 [ %niter.next.3.2, %.new.2 ], [ 0, %bb.n ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv37.i.2
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !23
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv37.i.2 ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !23
  %i.dp = call float @llvm.fmuladd.f32(float %i.dk, float %i.dm, float %i.do)
  store float %i.dp, ptr %i.dn, align 4, !tbaa !23
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv37.i.2
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !23
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv37.i.2 ; 2 uses
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !23
  %i.du = call float @llvm.fmuladd.f32(float %i.dk, float %i.dr, float %i.dt)
  store float %i.du, ptr %i.ds, align 4, !tbaa !23
  %indvars.iv.next38.i.276 = or disjoint i64 %indvars.iv37.i.2, 1 ; 4 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next38.i.276
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !23
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next38.i.276 ; 2 uses
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !23
  %i.dz = call float @llvm.fmuladd.f32(float %i.dk, float %i.dw, float %i.dy)
  store float %i.dz, ptr %i.dx, align 4, !tbaa !23
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next38.i.276
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !23
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.next38.i.276 ; 2 uses
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !23
  %i.ee = call float @llvm.fmuladd.f32(float %i.dk, float %i.eb, float %i.ed)
  store float %i.ee, ptr %i.ec, align 4, !tbaa !23
  %indvars.iv.next38.i.1.2 = or disjoint i64 %indvars.iv37.i.2, 2 ; 4 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next38.i.1.2
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !23
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next38.i.1.2 ; 2 uses
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !23
  %i.ej = call float @llvm.fmuladd.f32(float %i.dk, float %i.eg, float %i.ei)
  store float %i.ej, ptr %i.eh, align 4, !tbaa !23
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next38.i.1.2
  %i.el = load float, ptr %i.ek, align 4, !tbaa !23
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.next38.i.1.2 ; 2 uses
  %i.en = load float, ptr %i.em, align 4, !tbaa !23
  %i.eo = call float @llvm.fmuladd.f32(float %i.dk, float %i.el, float %i.en)
  store float %i.eo, ptr %i.em, align 4, !tbaa !23
  %indvars.iv.next38.i.2.2 = or disjoint i64 %indvars.iv37.i.2, 3 ; 4 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next38.i.2.2
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !23
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next38.i.2.2 ; 2 uses
  %i.es = load float, ptr %i.er, align 4, !tbaa !23
  %i.et = call float @llvm.fmuladd.f32(float %i.dk, float %i.eq, float %i.es)
  store float %i.et, ptr %i.er, align 4, !tbaa !23
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next38.i.2.2
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !23
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.next38.i.2.2 ; 2 uses
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !23
  %i.ey = call float @llvm.fmuladd.f32(float %i.dk, float %i.ev, float %i.ex)
  store float %i.ey, ptr %i.ew, align 4, !tbaa !23
  %indvars.iv.next38.i.3.2 = add nuw nsw i64 %indvars.iv37.i.2, 4 ; 2 uses
  %niter.next.3.2 = add i64 %niter.2, 4           ; 2 uses
  %niter.ncmp.3.2 = icmp eq i64 %niter.next.3.2, 0
  br i1 %niter.ncmp.3.2, label %.loopexit.i.unr-lcssa.2, label %.new.2, !llvm.loop !95

.loopexit.i.unr-lcssa.2:                          ; preds = %.new.2
  br i1 %lcmp.mod.2.not, label %.loopexit.i.2, label %.epil.preheader.2

.epil.preheader.2:                                ; preds = %.loopexit.i.unr-lcssa.2, %bb.n
  %indvars.iv37.i.epil.init.2 = phi i64 [ 0, %bb.n ], [ %indvars.iv.next38.i.3.2, %.loopexit.i.unr-lcssa.2 ]
  call void @llvm.assume(i1 %lcmp.mod74.2)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader.2
  %indvars.iv37.i.epil.2 = phi i64 [ %indvars.iv37.i.epil.init.2, %.epil.preheader.2 ], [ %indvars.iv.next38.i.epil.2, %bb.o ] ; 5 uses
  %epil.iter.2 = phi i64 [ 0, %.epil.preheader.2 ], [ %epil.iter.next.2, %bb.o ]
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv37.i.epil.2
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !23
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv37.i.epil.2 ; 2 uses
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !23
  %i.fd = call float @llvm.fmuladd.f32(float %i.dk, float %i.fa, float %i.fc)
  store float %i.fd, ptr %i.fb, align 4, !tbaa !23
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv37.i.epil.2
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !23
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv37.i.epil.2 ; 2 uses
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !23
  %i.fi = call float @llvm.fmuladd.f32(float %i.dk, float %i.ff, float %i.fh)
  store float %i.fi, ptr %i.fg, align 4, !tbaa !23
  %indvars.iv.next38.i.epil.2 = add nuw nsw i64 %indvars.iv37.i.epil.2, 1
  %epil.iter.next.2 = add i64 %epil.iter.2, 1     ; 2 uses
  %epil.iter.cmp.2.not = icmp eq i64 %epil.iter.next.2, %indvars.iv.next43.i.1
  br i1 %epil.iter.cmp.2.not, label %.loopexit.i.2, label %bb.o, !llvm.loop !94

.loopexit.i.2:                                    ; preds = %.loopexit.i.unr-lcssa.2, %bb.o, %.loopexit.i.1
  %i.fj = add nuw nsw i64 %.06417.i, 1            ; 2 uses
  %exitcond46.not.i = icmp eq i64 %i.fj, %i.bl
  br i1 %exitcond46.not.i, label %_ZL22putAtomsInBoxTemplatedILb1EEv7PbcTypePA3_KfS3_N3gmx8ArrayRefINS4_11BasicVectorIfEEEES8_.exit, label %.preheader.i, !llvm.loop !96

.preheader6.i:                                    ; preds = %bb.p, %.preheader6.lr.ph.i
  %.06112.i = phi i64 [ 0, %.preheader6.lr.ph.i ], [ %i.gj, %bb.p ] ; 3 uses
  %i.fk = getelementptr inbounds nuw [12 x i8], ptr %i.ag, i64 %.06112.i ; 4 uses
  %i.fl = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %.06112.i ; 9 uses
  %i.fm = load float, ptr %i.fk, align 4, !tbaa !23 ; 2 uses
  %i.fn = fmul float %i.fm, %i.ba
  %i.fo = call noundef float @llvm.floor.f32(float %i.fn)
  %i.fp = load float, ptr %i.ae, align 4, !tbaa !23
  %i.fq = fneg float %i.fo                        ; 2 uses
  %i.fr = call float @llvm.fmuladd.f32(float %i.fq, float %i.fp, float %i.fm)
  store float %i.fr, ptr %i.fk, align 4, !tbaa !23
  %i.fs = load float, ptr %i.af, align 4, !tbaa !23
  %i.ft = load float, ptr %i.fl, align 4, !tbaa !23
  %i.fu = call float @llvm.fmuladd.f32(float %i.fq, float %i.fs, float %i.ft)
  store float %i.fu, ptr %i.fl, align 4, !tbaa !23
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fk, i64 4 ; 2 uses
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !23 ; 2 uses
  %i.fx = fmul float %i.fw, %i.bb
  %i.fy = call noundef float @llvm.floor.f32(float %i.fx)
  %i.fz = load float, ptr %i.bc, align 4, !tbaa !23
  %i.ga = fneg float %i.fy                        ; 3 uses
  %i.gb = call float @llvm.fmuladd.f32(float %i.ga, float %i.fz, float %i.fw)
  store float %i.gb, ptr %i.fv, align 4, !tbaa !23
  %i.gc = load float, ptr %i.bd, align 4, !tbaa !23
  %i.gd = load float, ptr %i.fl, align 4, !tbaa !23
  %i.ge = call float @llvm.fmuladd.f32(float %i.ga, float %i.gc, float %i.gd)
  store float %i.ge, ptr %i.fl, align 4, !tbaa !23
  %i.gf = load float, ptr %i.be, align 4, !tbaa !23
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fl, i64 4 ; 2 uses
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !23
  %i.gi = call float @llvm.fmuladd.f32(float %i.ga, float %i.gf, float %i.gh)
  store float %i.gi, ptr %i.gg, align 4, !tbaa !23
  br i1 %exitcond35.not.i.1, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.q, %.preheader6.i
  %i.gj = add nuw nsw i64 %.06112.i, 1            ; 2 uses
  %exitcond36.not.i = icmp eq i64 %i.gj, %i.az
  br i1 %exitcond36.not.i, label %_ZL22putAtomsInBoxTemplatedILb1EEv7PbcTypePA3_KfS3_N3gmx8ArrayRefINS4_11BasicVectorIfEEEES8_.exit, label %.preheader6.i, !llvm.loop !97

bb.q:                                             ; preds = %.preheader6.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 2 uses
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !23 ; 2 uses
  %i.gm = fmul float %i.gl, %i.bf
  %i.gn = call noundef float @llvm.floor.f32(float %i.gm)
  %i.go = load float, ptr %i.bg, align 4, !tbaa !23
  %i.gp = fneg float %i.gn                        ; 4 uses
  %i.gq = call float @llvm.fmuladd.f32(float %i.gp, float %i.go, float %i.gl)
  store float %i.gq, ptr %i.gk, align 4, !tbaa !23
  %i.gr = load float, ptr %i.bh, align 4, !tbaa !23
  %i.gs = load float, ptr %i.fl, align 4, !tbaa !23
  %i.gt = call float @llvm.fmuladd.f32(float %i.gp, float %i.gr, float %i.gs)
  store float %i.gt, ptr %i.fl, align 4, !tbaa !23
  %i.gu = load float, ptr %i.bi, align 4, !tbaa !23
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fl, i64 4 ; 2 uses
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !23
  %i.gx = call float @llvm.fmuladd.f32(float %i.gp, float %i.gu, float %i.gw)
  store float %i.gx, ptr %i.gv, align 4, !tbaa !23
  %i.gy = load float, ptr %i.bj, align 4, !tbaa !23
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !23
  %i.hb = call float @llvm.fmuladd.f32(float %i.gp, float %i.gy, float %i.ha)
  store float %i.hb, ptr %i.gz, align 4, !tbaa !23
  br label %bb.p

_ZL22putAtomsInBoxTemplatedILb1EEv7PbcTypePA3_KfS3_N3gmx8ArrayRefINS4_11BasicVectorIfEEEES8_.exit: ; preds = %bb.p, %.loopexit.i.2, %.preheader7.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.u

.loopexit:                                        ; preds = %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.al, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.hc = extractvalue { ptr, i32 } %eh.lpad-body, 0 ; 2 uses
  %i.hd = extractvalue { ptr, i32 } %eh.lpad-body, 1
  %i.he = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #20
  %i.hf = icmp eq i32 %i.hd, %i.he
  br i1 %i.hf, label %bb.r, label %bb.x

bb.r:                                             ; preds = %.body
  %i.hg = call ptr @__cxa_begin_catch(ptr %i.hc) #20
  invoke void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8) %i.hg) #28
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.c
  %i.hh = getelementptr inbounds [12 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.y
  %i.hi = getelementptr inbounds [12 x i8], ptr %.sroa.0.0.copyload.i, i64 %i.aa
  invoke fastcc void @_ZL22putAtomsInBoxTemplatedILb0EEv7PbcTypePA3_KfS3_N3gmx8ArrayRefINS4_11BasicVectorIfEEEES8_(i32 noundef %i.ad, ptr noundef %i.ae, ptr %i.hh, ptr %i.hi)
          to label %._crit_edge44 unwind label %.loopexit

._crit_edge44:                                    ; preds = %bb.t
  %.pre = load i32, ptr %i.b, align 4, !tbaa !36
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge44, %_ZL22putAtomsInBoxTemplatedILb1EEv7PbcTypePA3_KfS3_N3gmx8ArrayRefINS4_11BasicVectorIfEEEES8_.exit
  %i.hj = phi i32 [ %.pre, %._crit_edge44 ], [ %i.p, %_ZL22putAtomsInBoxTemplatedILb1EEv7PbcTypePA3_KfS3_N3gmx8ArrayRefINS4_11BasicVectorIfEEEES8_.exit ] ; 2 uses
  %i.hk = sext i32 %i.hj to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.hk
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.u, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.w:                                             ; preds = %bb.r
  %i.hl = landingpad { ptr, i32 }
          catch ptr null
  %i.hm = extractvalue { ptr, i32 } %i.hl, 0
  call void @__clang_call_terminate(ptr %i.hm) #30
  unreachable

bb.x:                                             ; preds = %.body
  call void @__clang_call_terminate(ptr %i.hc) #30
  unreachable
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #20

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #21

; Function Attrs: noreturn
declare void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #20

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #20

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #20

; Function Attrs: nounwind
declare !callback !98 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define void @_Z31put_atoms_in_triclinic_unitcelliPA3_KfN3gmx8ArrayRefINS2_11BasicVectorIfEEEE(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr %2, ptr %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @_Z15calc_box_centeriPA3_KfPf(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !23 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.l = load <2 x float>, ptr %i.g, align 4, !tbaa !23 ; 3 uses
  %i.m = load <2 x float>, ptr %i.h, align 4, !tbaa !23
  %i.n = fadd <2 x float> %i.m, zeroinitializer
  %i.o = load <2 x float>, ptr %i.d, align 4, !tbaa !23 ; 2 uses
  %i.p = fadd <2 x float> %i.n, %i.o
  %i.q = fadd <2 x float> %i.p, %i.l              ; 2 uses
  %i.r = extractelement <2 x float> %i.o, i64 0   ; 3 uses
  %i.s = fdiv float %i.c, %i.r                    ; 2 uses
  %i.t = fneg float %i.c
  %i.u = extractelement <2 x float> %i.l, i64 0   ; 2 uses
  %i.v = fmul float %i.u, %i.t
  %i.w = tail call float @llvm.fmuladd.f32(float %i.r, float %i.f, float %i.v)
  %i.x = extractelement <2 x float> %i.l, i64 1   ; 2 uses
  %i.y = fmul float %i.r, %i.x
  %i.z = fdiv float %i.w, %i.y                    ; 2 uses
  %i.aa = fdiv float %i.u, %i.x                   ; 2 uses
  %i.ab = extractelement <2 x float> %i.q, i64 0
  %i.ac = fmul float %i.ab, 5.000000e-01
  %i.ad = extractelement <2 x float> %i.q, i64 1
  %i.ae = fmul float %i.ad, 5.000000e-01
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ag = load float, ptr %i.af, align 4, !tbaa !23
  %i.ah = fsub float %i.ag, %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_1
