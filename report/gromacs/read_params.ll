Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/read_params?download=true
inline.NumInlined: 1214
inline.NumDeleted: 418
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN3gmx9AwhParamsC2EPSt6vectorI9t_inpfileSaIS2_EEP14WarningHandler:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !93
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !45
  invoke void @_Z20printStringNoNewlinePSt6vectorI9t_inpfileSaIS0_EEPKc(ptr noundef %i.ah, ptr noundef nonnull @.str.84)
          to label %bb.l unwind label %bb.h

bb.l:                                             ; preds = %bb.k
  %i.ai = load i64, ptr %i.e, align 8, !tbaa !24
  %i.aj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %i.ai, ptr noundef nonnull @.str.85, i64 noundef 13)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit21 unwind label %bb.h ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit21: ; preds = %bb.l
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.am = invoke noundef i32 @_Z8get_eintPSt6vectorI9t_inpfileSaIS0_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiP14WarningHandler(ptr noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 10, ptr noundef %i.al)
          to label %bb.m unwind label %bb.h

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit21
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.am, ptr %i.an, align 4, !tbaa !94
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !45
  invoke void @_Z20printStringNoNewlinePSt6vectorI9t_inpfileSaIS0_EEPKc(ptr noundef %i.ao, ptr noundef nonnull @.str.86)
          to label %bb.n unwind label %bb.h

bb.n:                                             ; preds = %bb.m
  %i.ap = load i64, ptr %i.e, align 8, !tbaa !24
  %i.aq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %i.ap, ptr noundef nonnull @.str.87, i64 noundef 19)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit22 unwind label %bb.h ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit22: ; preds = %bb.n
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.at = invoke noundef i32 @_Z8get_eintPSt6vectorI9t_inpfileSaIS0_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiP14WarningHandler(ptr noundef %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 100, ptr noundef %i.as)
          to label %bb.o unwind label %bb.h

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit22
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.at, ptr %i.au, align 8, !tbaa !95
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !45
  invoke void @_Z20printStringNoNewlinePSt6vectorI9t_inpfileSaIS0_EEPKc(ptr noundef %i.av, ptr noundef nonnull @.str.88)
          to label %bb.p unwind label %bb.h

bb.p:                                             ; preds = %bb.o
  %i.aw = load i64, ptr %i.e, align 8, !tbaa !24
  %i.ax = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %i.aw, ptr noundef nonnull @.str.89, i64 noundef 18)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit23 unwind label %bb.h ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit23: ; preds = %bb.p
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.az = load ptr, ptr %4, align 8, !tbaa !20
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.bb = invoke noundef i32 @_Z7getEnumI7BooleanET_PSt6vectorI9t_inpfileSaIS3_EEPKcP14WarningHandler(ptr noundef %i.ay, ptr noundef %i.az, ptr noundef %i.ba)
          to label %bb.q unwind label %bb.h

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit23
  %i.bc = icmp ne i32 %i.bb, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.be = zext i1 %i.bc to i8
  store i8 %i.be, ptr %i.bd, align 8, !tbaa !265
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !45
  invoke void @_Z20printStringNoNewlinePSt6vectorI9t_inpfileSaIS0_EEPKc(ptr noundef %i.bf, ptr noundef nonnull @.str.90)
          to label %bb.r unwind label %bb.h

bb.r:                                             ; preds = %bb.q
  %i.bg = load i64, ptr %i.e, align 8, !tbaa !24
  %i.bh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %i.bg, ptr noundef nonnull @.str.91, i64 noundef 9)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit24 unwind label %bb.h ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit24: ; preds = %bb.r
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.bk = invoke noundef i32 @_Z8get_eintPSt6vectorI9t_inpfileSaIS0_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiP14WarningHandler(ptr noundef %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 1, ptr noundef %i.bj)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit24
  %i.bl = icmp slt i32 %i.bk, 1
  br i1 %i.bl, label %bb.t, label %.preheader

.preheader:                                       ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  br label %bb.ap

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA79_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 1 dereferenceable(79) @.str.39, i8 noundef zeroext 2)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bp = load ptr, ptr %4, align 8, !tbaa !20
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1039, ptr noundef nonnull @.str.92, ptr noundef %i.bp) #24
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  unreachable

.loopexit:                                        ; preds = %bb.ae
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.aj
  %lpad.loopexit49 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ao, %.noexc26, %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit24
  %lpad.loopexit.split-lp50 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.t
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #22
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn15 = phi { ptr, i32 } [ %i.br, %bb.x ], [ %i.bq, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.body

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !47  ; 4 uses
  %i.bt = load ptr, ptr %0, align 8, !tbaa !96    ; 4 uses
  %i.bu = load ptr, ptr %i.bm, align 8, !tbaa !97 ; 2 uses
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bt to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = sdiv exact i64 %i.bx, 104
  %i.bz = trunc i64 %i.by to i32
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %.lr.ph99.i, label %._crit_edge100.i

.lr.ph99.i:                                       ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  br label %bb.aa

._crit_edge100.i:                                 ; preds = %._crit_edge95.i, %bb.z
  %.0.lcssa.i = phi i1 [ false, %bb.z ], [ %spec.select.i, %._crit_edge95.i ]
  %i.cd = load i8, ptr %i.bd, align 8, !tbaa !265, !range !59, !noundef !60
  %i.ce = trunc nuw i8 %i.cd to i1
  %.not.i = xor i1 %i.ce, true
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.0.lcssa.i
  br i1 %or.cond.i, label %.noexc26, label %bb.an

bb.aa:                                            ; preds = %._crit_edge95.i, %.lr.ph99.i
  %i.cf = phi ptr [ %i.bt, %.lr.ph99.i ], [ %i.cu, %._crit_edge95.i ] ; 2 uses
  %i.cg = phi ptr [ %i.bu, %.lr.ph99.i ], [ %i.cv, %._crit_edge95.i ] ; 2 uses
  %indvars.iv121.i = phi i64 [ 0, %.lr.ph99.i ], [ %indvars.iv.next122.pre-phi.i, %._crit_edge95.i ] ; 6 uses
  %.097.i = phi i1 [ false, %.lr.ph99.i ], [ %spec.select.i, %._crit_edge95.i ]
  %i.ch = getelementptr inbounds nuw [104 x i8], ptr %i.bt, i64 %indvars.iv121.i ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 88
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !69
  %i.ck = icmp sgt i32 %i.cj, 0
  %spec.select.i = select i1 %i.ck, i1 true, i1 %.097.i ; 2 uses
  %i.cl = ptrtoint ptr %i.cg to i64
  %i.cm = ptrtoint ptr %i.cf to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = sdiv exact i64 %i.cn, 104
  %sext.i = shl i64 %i.co, 32
  %i.cp = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.cq = icmp slt i64 %indvars.iv121.i, %i.cp
  br i1 %i.cq, label %.lr.ph.i, label %.._crit_edge95_crit_edge.i

.._crit_edge95_crit_edge.i:                       ; preds = %bb.aa
  %.pre133.i = add nuw nsw i64 %indvars.iv121.i, 1
  br label %._crit_edge95.i

.lr.ph.i:                                         ; preds = %bb.aa
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cs = add nuw nsw i64 %indvars.iv121.i, 1     ; 2 uses
  %i.ct = trunc nuw nsw i64 %i.cs to i32          ; 2 uses
  br label %bb.ab

._crit_edge95.loopexit.i:                         ; preds = %._crit_edge.i
  %sext142.i = shl i64 %i.fm, 32
  %.pre.i = ashr exact i64 %sext142.i, 32
  br label %._crit_edge95.i

._crit_edge95.i:                                  ; preds = %._crit_edge95.loopexit.i, %.._crit_edge95_crit_edge.i
  %indvars.iv.next122.pre-phi.i = phi i64 [ %.pre133.i, %.._crit_edge95_crit_edge.i ], [ %i.cs, %._crit_edge95.loopexit.i ] ; 2 uses
  %.pre-phi130.i = phi i64 [ %i.cp, %.._crit_edge95_crit_edge.i ], [ %.pre.i, %._crit_edge95.loopexit.i ]
  %i.cu = phi ptr [ %i.cf, %.._crit_edge95_crit_edge.i ], [ %i.fi, %._crit_edge95.loopexit.i ]
  %i.cv = phi ptr [ %i.cg, %.._crit_edge95_crit_edge.i ], [ %i.fh, %._crit_edge95.loopexit.i ]
  %i.cw = icmp slt i64 %indvars.iv.next122.pre-phi.i, %.pre-phi130.i
  br i1 %i.cw, label %bb.aa, label %._crit_edge100.i, !llvm.loop !259

bb.ab:                                            ; preds = %._crit_edge.i, %.lr.ph.i
  %indvars.iv123.i = phi i64 [ %indvars.iv121.i, %.lr.ph.i ], [ %indvars.iv.next124.pre-phi.i, %._crit_edge.i ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [104 x i8], ptr %i.bt, i64 %indvars.iv123.i ; 2 uses
  %i.cy = load ptr, ptr %i.ch, align 8, !tbaa !75 ; 3 uses
  %i.cz = load ptr, ptr %i.cr, align 8, !tbaa !72
  %i.da = ptrtoint ptr %i.cz to i64
  %7 = ptrtoint ptr %i.cy to i64
  %8 = sub i64 %i.da, %7
  %9 = load ptr, ptr %i.cx, align 8, !tbaa !75    ; 3 uses
  %i.db = ashr exact i64 %8, 6                    ; 3 uses
  %i.dc = icmp sgt i64 %i.db, 0
  br i1 %i.dc, label %.lr.ph79.i, label %.._crit_edge_crit_edge.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.ab
  %.pre132.i = add nuw nsw i64 %indvars.iv123.i, 1
  br label %._crit_edge.i

.lr.ph79.i:                                       ; preds = %bb.ab
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !72
  %10 = ptrtoint ptr %i.de to i64
  %i.df = ptrtoint ptr %9 to i64
  %i.dg = sub i64 %10, %i.df
  %.fr.i = freeze i64 %i.dg
  %i.dh = ashr i64 %.fr.i, 6                      ; 3 uses
  %i.di = icmp sgt i64 %i.dh, 0
  %i.dj = add nuw nsw i64 %indvars.iv123.i, 1     ; 4 uses
  br i1 %i.di, label %.lr.ph79.split.us.i, label %._crit_edge.i

.lr.ph79.split.us.i:                              ; preds = %.lr.ph79.i
  %.not52.i = icmp eq i64 %indvars.iv121.i, %indvars.iv123.i
  %.not52.fr.i = freeze i1 %.not52.i
  %i.dk = trunc nuw i64 %i.dj to i32              ; 2 uses
  br i1 %.not52.fr.i, label %.lr.ph79.split.us.split.us.i, label %.lr.ph79.split.us.split.i

.lr.ph79.split.us.split.us.i:                     ; preds = %.lr.ph79.split.us.i, %..loopexit_crit_edge.split.us84.us.i
  %indvars.iv117.i = phi i64 [ %indvars.iv.next118.pre-phi.i, %..loopexit_crit_edge.split.us84.us.i ], [ 0, %.lr.ph79.split.us.i ] ; 4 uses
  %i.dl = getelementptr inbounds nuw [64 x i8], ptr %i.cy, i64 %indvars.iv117.i ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !28
  %i.dn = icmp eq i32 %i.dm, 1
  br i1 %i.dn, label %.lr.ph79.split.us.split.us...loopexit_crit_edge.split.us84.us_crit_edge.i, label %.preheader.us.us.i

.lr.ph79.split.us.split.us...loopexit_crit_edge.split.us84.us_crit_edge.i: ; preds = %.lr.ph79.split.us.split.us.i
  %.pre131.i = add nuw nsw i64 %indvars.iv117.i, 1
  br label %..loopexit_crit_edge.split.us84.us.i

bb.ac:                                            ; preds = %.preheader.us.us.i, %bb.ag
  %indvars.iv113.i = phi i64 [ 0, %.preheader.us.us.i ], [ %indvars.iv.next114.i, %bb.ag ] ; 4 uses
  %i.do = getelementptr inbounds nuw [64 x i8], ptr %9, i64 %indvars.iv113.i ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !28
  %i.dq = icmp eq i32 %i.dp, 1
  %.not51.us.us.i = icmp eq i64 %indvars.iv117.i, %indvars.iv113.i
  %or.cond101.i = or i1 %.not51.us.us.i, %i.dq
  br i1 %or.cond101.i, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dr = load i32, ptr %i.ef, align 4, !tbaa !29
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !29
  %i.du = icmp eq i32 %i.dr, %i.dt
  br i1 %i.du, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.dv = load i32, ptr %i.ef, align 4, !tbaa !29
  %i.dw = add nsw i32 %i.dv, 1
  %i.dx = trunc i64 %indvars.iv113.i to i32
  %i.dy = add i32 %i.dx, 1
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.96, i32 noundef %i.dw, i32 noundef %i.ct, i32 noundef %i.eh, i32 noundef %i.dk, i32 noundef %i.dy)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.ae
  %i.dz = load ptr, ptr %3, align 8, !tbaa !20
  %i.ea = load i64, ptr %i.cb, align 8, !tbaa !24
  invoke void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %i.bs, i64 %i.ea, ptr %i.dz)
          to label %bb.af unwind label %.split.split.us.split.us.i

bb.af:                                            ; preds = %.noexc
  %i.eb = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.cc
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us83.us.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us81.us.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us81.us.i: ; preds = %bb.af
  %i.ed = load i64, ptr %i.cc, align 8, !tbaa !21
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us83.us.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us83.us.i: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us81.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us83.us.i, %bb.ad, %bb.ac
  %indvars.iv.next114.i = add nuw nsw i64 %indvars.iv113.i, 1 ; 2 uses
  %exitcond116.not.i = icmp eq i64 %indvars.iv.next114.i, %i.dh
  br i1 %exitcond116.not.i, label %..loopexit_crit_edge.split.us84.us.i, label %bb.ac, !llvm.loop !260

..loopexit_crit_edge.split.us84.us.i:             ; preds = %bb.ag, %.lr.ph79.split.us.split.us...loopexit_crit_edge.split.us84.us_crit_edge.i
  %indvars.iv.next118.pre-phi.i = phi i64 [ %.pre131.i, %.lr.ph79.split.us.split.us...loopexit_crit_edge.split.us84.us_crit_edge.i ], [ %i.eg, %bb.ag ] ; 2 uses
  %exitcond120.not.i = icmp eq i64 %indvars.iv.next118.pre-phi.i, %i.db
  br i1 %exitcond120.not.i, label %._crit_edge.i, label %.lr.ph79.split.us.split.us.i, !llvm.loop !261

.preheader.us.us.i:                               ; preds = %.lr.ph79.split.us.split.us.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dl, i64 4 ; 2 uses
  %i.eg = add nuw nsw i64 %indvars.iv117.i, 1     ; 2 uses
  %i.eh = trunc nuw i64 %i.eg to i32
  br label %bb.ac

.split.split.us.split.us.i:                       ; preds = %.noexc
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.lr.ph79.split.us.split.i:                        ; preds = %.lr.ph79.split.us.i, %..loopexit_crit_edge.split.us.us.i
  %indvars.iv109.i = phi i64 [ %indvars.iv.next110.pre-phi.i, %..loopexit_crit_edge.split.us.us.i ], [ 0, %.lr.ph79.split.us.i ] ; 3 uses
  %i.ej = getelementptr inbounds nuw [64 x i8], ptr %i.cy, i64 %indvars.iv109.i ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !28
  %i.el = icmp eq i32 %i.ek, 1
  br i1 %i.el, label %.lr.ph79.split.us.split...loopexit_crit_edge.split.us.us_crit_edge.i, label %.preheader.us.i

.lr.ph79.split.us.split...loopexit_crit_edge.split.us.us_crit_edge.i: ; preds = %.lr.ph79.split.us.split.i
  %.pre134.i = add nuw nsw i64 %indvars.iv109.i, 1
  br label %..loopexit_crit_edge.split.us.us.i

..loopexit_crit_edge.split.us.us.i:               ; preds = %bb.al, %.lr.ph79.split.us.split...loopexit_crit_edge.split.us.us_crit_edge.i
  %indvars.iv.next110.pre-phi.i = phi i64 [ %.pre134.i, %.lr.ph79.split.us.split...loopexit_crit_edge.split.us.us_crit_edge.i ], [ %i.en, %bb.al ] ; 2 uses
  %exitcond112.not.i = icmp eq i64 %indvars.iv.next110.pre-phi.i, %i.db
  br i1 %exitcond112.not.i, label %._crit_edge.i, label %.lr.ph79.split.us.split.i, !llvm.loop !261

.preheader.us.i:                                  ; preds = %.lr.ph79.split.us.split.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 4 ; 2 uses
  %i.en = add nuw nsw i64 %indvars.iv109.i, 1     ; 2 uses
  %i.eo = trunc nuw i64 %i.en to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.al, %.preheader.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.al ], [ 0, %.preheader.us.i ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [64 x i8], ptr %9, i64 %indvars.iv.i ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !28
  %i.er = icmp eq i32 %i.eq, 1
  br i1 %i.er, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.es = load i32, ptr %i.em, align 4, !tbaa !29
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !29
  %i.ev = icmp eq i32 %i.es, %i.eu
  br i1 %i.ev, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.ew = load i32, ptr %i.em, align 4, !tbaa !29
  %i.ex = add nsw i32 %i.ew, 1
  %i.ey = trunc i64 %indvars.iv.i to i32
  %i.ez = add i32 %i.ey, 1
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.96, i32 noundef %i.ex, i32 noundef %i.ct, i32 noundef %i.eo, i32 noundef %i.dk, i32 noundef %i.ez)
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit

.noexc25:                                         ; preds = %bb.aj
  %i.fa = load ptr, ptr %3, align 8, !tbaa !20
  %i.fb = load i64, ptr %i.cb, align 8, !tbaa !24
  invoke void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %i.bs, i64 %i.fb, ptr %i.fa)
          to label %bb.ak unwind label %.split.us.split.us.i

bb.ak:                                            ; preds = %.noexc25
  %i.fc = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.cc
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.us.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us.us.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us.us.i: ; preds = %bb.ak
  %i.fe = load i64, ptr %i.cc, align 8, !tbaa !21
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.us.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.us.i: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.al

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.us.i, %bb.ai, %bb.ah
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.dh
  br i1 %exitcond.not.i, label %..loopexit_crit_edge.split.us.us.i, label %bb.ah, !llvm.loop !260

.split.us.split.us.i:                             ; preds = %.noexc25
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

._crit_edge.i:                                    ; preds = %..loopexit_crit_edge.split.us.us.i, %..loopexit_crit_edge.split.us84.us.i, %.lr.ph79.i, %.._crit_edge_crit_edge.i
  %indvars.iv.next124.pre-phi.i = phi i64 [ %.pre132.i, %.._crit_edge_crit_edge.i ], [ %i.dj, %.lr.ph79.i ], [ %i.dj, %..loopexit_crit_edge.split.us84.us.i ], [ %i.dj, %..loopexit_crit_edge.split.us.us.i ] ; 2 uses
  %i.fh = load ptr, ptr %i.bm, align 8, !tbaa !97 ; 2 uses
  %i.fi = load ptr, ptr %0, align 8, !tbaa !96    ; 2 uses
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = sdiv exact i64 %i.fl, 104               ; 2 uses
  %i.fn = trunc i64 %i.fm to i32
  %i.fo = trunc nuw i64 %indvars.iv.next124.pre-phi.i to i32
  %i.fp = icmp slt i32 %i.fo, %i.fn
  br i1 %i.fp, label %bb.ab, label %._crit_edge95.loopexit.i, !llvm.loop !262

bb.am:                                            ; preds = %.split.us.split.us.i, %.split.split.us.split.us.i
  %.us-phi75.i = phi { ptr, i32 } [ %i.ei, %.split.split.us.split.us.i ], [ %i.fg, %.split.us.split.us.i ]
  %i.fq = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.cc
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.i: ; preds = %bb.am
  %i.fs = load i64, ptr %i.cc, align 8, !tbaa !21
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.ft) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63.i: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %.body

bb.an:                                            ; preds = %._crit_edge100.i
  invoke void @_ZN14WarningHandler10addWarningESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %i.bs, i64 107, ptr nonnull @.str.97)
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc26:                                         ; preds = %bb.an, %._crit_edge100.i
  %i.fu = invoke noundef zeroext i1 @_ZN3gmx31haveBiasSharingWithinSimulationERKNS_9AwhParamsE(ptr noundef nonnull align 8 dereferenceable(49) %0)
          to label %.noexc27 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc27:                                         ; preds = %.noexc26
  br i1 %i.fu, label %bb.ao, label %_ZN3gmx12_GLOBAL__N_124checkInputConsistencyAwhERKNS_9AwhParamsEP14WarningHandler.exit

bb.ao:                                            ; preds = %.noexc27
  invoke void @_ZN14WarningHandler10addWarningESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %i.bs, i64 88, ptr nonnull @.str.98)
          to label %_ZN3gmx12_GLOBAL__N_124checkInputConsistencyAwhERKNS_9AwhParamsEP14WarningHandler.exit unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.063 = phi i32 [ 0, %.preheader ], [ %i.fx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.fv = icmp eq i32 %.063, 0
  %i.fw = zext i1 %i.fv to i8
  store i8 %i.fw, ptr %i.c, align 1, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.fx = add nuw nsw i32 %.063, 1                ; 3 uses
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull @.str.93, i32 noundef %i.fx)
          to label %bb.aq unwind label %bb.ax

bb.aq:                                            ; preds = %bb.ap
  %i.fy = load ptr, ptr %i.bm, align 8, !tbaa !97 ; 3 uses
  %i.fz = load ptr, ptr %i.bn, align 8, !tbaa !98
  %.not.i29 = icmp eq ptr %i.fy, %i.fz
  br i1 %.not.i29, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ga = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.gb = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.gc = load i8, ptr %i.c, align 1, !tbaa !49, !range !59, !noundef !60
  %i.gd = trunc nuw i8 %i.gc to i1
  invoke void @_ZN3gmx13AwhBiasParamsC1EPSt6vectorI9t_inpfileSaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP14WarningHandlerb(ptr noundef nonnull align 8 dereferenceable(104) %i.fy, ptr noundef %i.ga, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.gb, i1 noundef zeroext %i.gd)
          to label %.noexc31 unwind label %.loopexit.split-lp54

.noexc31:                                         ; preds = %bb.ar
  %i.ge = load ptr, ptr %i.bm, align 8, !tbaa !97
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 104 ; 2 uses
  store ptr %i.gf, ptr %i.bm, align 8, !tbaa !97
  br label %_ZNSt6vectorIN3gmx13AwhBiasParamsESaIS1_EE12emplace_backIJRPS_I9t_inpfileSaIS5_EERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERP14WarningHandlerRbEEERS1_DpOT_.exit

bb.as:                                            ; preds = %bb.aq
  invoke void @_ZNSt6vectorIN3gmx13AwhBiasParamsESaIS1_EE17_M_realloc_insertIJRPS_I9t_inpfileSaIS5_EERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERP14WarningHandlerRbEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.fy, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %._ZNSt6vectorIN3gmx13AwhBiasParamsESaIS1_EE12emplace_backIJRPS_I9t_inpfileSaIS5_EERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERP14WarningHandlerRbEEERS1_DpOT_.exit_crit_edge unwind label %.loopexit.split-lp54

._ZNSt6vectorIN3gmx13AwhBiasParamsESaIS1_EE12emplace_backIJRPS_I9t_inpfileSaIS5_EERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERP14WarningHandlerRbEEERS1_DpOT_.exit_crit_edge: ; preds = %bb.as
  %.pre = load ptr, ptr %i.bm, align 8, !tbaa !266
  br label %_ZNSt6vectorIN3gmx13AwhBiasParamsESaIS1_EE12emplace_backIJRPS_I9t_inpfileSaIS5_EERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERP14WarningHandlerRbEEERS1_DpOT_.exit

_ZNSt6vectorIN3gmx13AwhBiasParamsESaIS1_EE12emplace_backIJRPS_I9t_inpfileSaIS5_EERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERP14WarningHandlerRbEEERS1_DpOT_.exit: ; preds = %._ZNSt6vectorIN3gmx13AwhBiasParamsESaIS1_EE12emplace_backIJRPS_I9t_inpfileSaIS5_EERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERP14WarningHandlerRbEEERS1_DpOT_.exit_crit_edge, %.noexc31
  %i.gg = phi ptr [ %.pre, %._ZNSt6vectorIN3gmx13AwhBiasParamsESaIS1_EE12emplace_backIJRPS_I9t_inpfileSaIS5_EERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERP14WarningHandlerRbEEERS1_DpOT_.exit_crit_edge ], [ %i.gf, %.noexc31 ] ; 3 uses
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 -104
  %i.gi = load ptr, ptr %i.b, align 8, !tbaa !47  ; 2 uses
  %i.gj = load ptr, ptr %i.gh, align 8, !tbaa !75 ; 2 uses
  %i.gk = getelementptr inbounds i8, ptr %i.gg, i64 -96
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !72 ; 2 uses
  %.not21.i = icmp eq ptr %i.gj, %i.gl
  br i1 %.not21.i, label %_ZN3gmx12_GLOBAL__N_128checkInputConsistencyAwhBiasERKNS_13AwhBiasParamsEP14WarningHandler.exit, label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %_ZNSt6vectorIN3gmx13AwhBiasParamsESaIS1_EE12emplace_backIJRPS_I9t_inpfileSaIS5_EERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERP14WarningHandlerRbEEERS1_DpOT_.exit
  %i.gm = getelementptr inbounds i8, ptr %i.gg, i64 -16 ; 2 uses
  br label %bb.at

bb.at:                                            ; preds = %.noexc39, %.lr.ph.i33
  %.sroa.018.022.i = phi ptr [ %i.gj, %.lr.ph.i33 ], [ %i.gv, %.noexc39 ] ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.018.022.i, i64 56
  %i.go = load double, ptr %i.gn, align 8, !tbaa !33 ; 2 uses
  %i.gp = load i32, ptr %i.gm, align 8, !tbaa !69 ; 2 uses
  %i.gq = icmp slt i32 %i.gp, 1
  %i.gr = fcmp ogt double %i.go, 0.000000e+00
  %or.cond.i34 = and i1 %i.gr, %i.gq
  br i1 %or.cond.i34, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN14WarningHandler10addWarningESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %i.gi, i64 79, ptr nonnull @.str.94)
          to label %.noexc38 unwind label %.loopexit53

.noexc38:                                         ; preds = %bb.au
  %.pre.i37 = load i32, ptr %i.gm, align 8, !tbaa !69
  br label %bb.av

bb.av:                                            ; preds = %.noexc38, %bb.at
  %i.gs = phi i32 [ %.pre.i37, %.noexc38 ], [ %i.gp, %bb.at ]
  %i.gt = icmp sgt i32 %i.gs, 0
  %i.gu = fcmp oeq double %i.go, 0.000000e+00
  %or.cond3.i = and i1 %i.gu, %i.gt
  br i1 %or.cond3.i, label %bb.aw, label %.noexc39

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN14WarningHandler10addWarningESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %i.gi, i64 98, ptr nonnull @.str.95)
          to label %.noexc39 unwind label %.loopexit53

.noexc39:                                         ; preds = %bb.aw, %bb.av
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.018.022.i, i64 64 ; 2 uses
  %.not.i35 = icmp eq ptr %i.gv, %i.gl
  br i1 %.not.i35, label %_ZN3gmx12_GLOBAL__N_128checkInputConsistencyAwhBiasERKNS_13AwhBiasParamsEP14WarningHandler.exit, label %bb.at

_ZN3gmx12_GLOBAL__N_128checkInputConsistencyAwhBiasERKNS_13AwhBiasParamsEP14WarningHandler.exit: ; preds = %.noexc39, %_ZNSt6vectorIN3gmx13AwhBiasParamsESaIS1_EE12emplace_backIJRPS_I9t_inpfileSaIS5_EERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERP14WarningHandlerRbEEERS1_DpOT_.exit
  %i.gw = load ptr, ptr %6, align 8, !tbaa !20    ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %i.bo
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN3gmx12_GLOBAL__N_128checkInputConsistencyAwhBiasERKNS_13AwhBiasParamsEP14WarningHandler.exit
  %i.gy = load i64, ptr %i.bo, align 8, !tbaa !21
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.gz) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN3gmx12_GLOBAL__N_128checkInputConsistencyAwhBiasERKNS_13AwhBiasParamsEP14WarningHandler.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %exitcond.not = icmp eq i32 %i.fx, %i.bk
  br i1 %exitcond.not, label %bb.z, label %bb.ap, !llvm.loop !263

bb.ax:                                            ; preds = %bb.ap
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN3gmx13AwhBiasParamsESaIS1_EE17_M_realloc_insertIJRPNS0_11ISerializerERKbS9_S9_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  %i.ax = tail call ptr @__cxa_begin_catch(ptr %i.aw) #22 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #21
  invoke void @__cxa_rethrow() #24
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.au

bb.g:                                             ; preds = %bb.d
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  tail call void @__clang_call_terminate(ptr %i.az) #23
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx9AwhParams9serializeEPNS_11ISerializerE(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.100, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx9AwhParams9serializeEPNS_11ISerializerEENK3$_0clEv", ptr noundef nonnull @.str.39, i32 noundef 1084) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !97
  %i.i = load ptr, ptr %0, align 8, !tbaa !96
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = sdiv exact i64 %i.l, 104
  %i.n = trunc i64 %i.m to i32
  store i32 %i.n, ptr %i.b, align 4, !tbaa !43
  %i.o = load ptr, ptr %1, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %1, align 8, !tbaa !41
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.r)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %1, align 8, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.v)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.aa = load ptr, ptr %1, align 8, !tbaa !41
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.z)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %1, align 8, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.ad)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !100
  store i32 %i.ai, ptr %i.a, align 4, !tbaa !43
  %i.aj = load ptr, ptr %1, align 8, !tbaa !41
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a), !inline_history !5
  %i.am = load i32, ptr %i.a, align 4, !tbaa !43
  store i32 %i.am, ptr %i.ah, align 4, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load ptr, ptr %1, align 8, !tbaa !41
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.an)
  %i.ar = load i32, ptr %i.b, align 4, !tbaa !43
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  %i.at = load ptr, ptr %0, align 8, !tbaa !96
  %i.au = getelementptr inbounds nuw [104 x i8], ptr %i.at, i64 %indvars.iv
  call void @_ZN3gmx13AwhBiasParams9serializeEPNS_11ISerializerE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull %1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.av = load i32, ptr %i.b, align 4, !tbaa !43
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp slt i64 %indvars.iv.next, %i.aw
  br i1 %i.ax, label %.lr.ph, label %.loopexit, !llvm.loop !293

.loopexit:                                        ; preds = %.lr.ph, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx26setStateDependentAwhParamsEPNS_9AwhParamsERK13pull_params_tP6pull_tPA3_Kf7PbcTypeRA3_S8_RK10t_inputrecfRK10gmx_mtop_tP14WarningHandler(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(888) %6, float noundef %7, ptr noundef nonnull align 1 %8, ptr noundef %9) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %11 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %14 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %17 = alloca %struct.t_pbc, align 4             ; 6 uses
  %i.a = tail call noundef zeroext i1 @_Z31haveConstantEnsembleTemperatureRK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888) %6)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx26setStateDependentAwhParamsEPNS_9AwhParamsERK13pull_params_tP6pull_tPA3_Kf7PbcTypeRA3_S8_RK10t_inputrecfRK10gmx_mtop_tP14WarningHandlerENK3$_0clEv", ptr noundef nonnull @.str.39, i32 noundef 1374) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef float @_Z27constantEnsembleTemperatureRK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888) %6)
  %i.c = fcmp ugt float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @_ZNSt10filesystem7__cxx114pathC2IA79_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 1 dereferenceable(79) @.str.39, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %16, i32 noundef 1377, ptr noundef nonnull @.str.101) #24
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

common.resume:                                    ; preds = %bb.af, %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i, %bb.l, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.f ], [ %i.bs, %bb.p ], [ %i.bh, %bb.l ], [ %i.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i ], [ %i.ft, %bb.am ], [ %i.el, %bb.af ], [ %i.hi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %common.resume

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef nonnull %17, i32 noundef %4, ptr noundef %3)
  %i.e = load ptr, ptr %0, align 8, !tbaa !96     ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !97   ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = sdiv exact i64 %i.j, 104
  %i.l = trunc i64 %i.k to i32
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph86, label %._crit_edge87

.lr.ph86:                                         ; preds = %bb.g
  %i.n = fpext float %7 to double
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  br label %bb.v

._crit_edge87:                                    ; preds = %._crit_edge, %bb.g
  %.lcssa77 = phi ptr [ %i.e, %bb.g ], [ %i.dk, %._crit_edge ]
  %.lcssa73 = phi i64 [ %i.j, %bb.g ], [ %i.do, %._crit_edge ] ; 2 uses
  %i.ab = icmp sgt i64 %.lcssa73, 0
  br i1 %i.ab, label %.lr.ph28.i, label %_ZN3gmxL29checkInputConsistencyIntervalERKNS_9AwhParamsEP14WarningHandler.exit

.lr.ph28.i:                                       ; preds = %._crit_edge87
  %i.ac = udiv exact i64 %.lcssa73, 104
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i, %.lr.ph28.i
  %indvars.iv48.i = phi i64 [ 0, %.lr.ph28.i ], [ %i.ao, %._crit_edge.i ] ; 4 uses
  %i.af = getelementptr inbounds nuw [104 x i8], ptr %.lcssa77, i64 %indvars.iv48.i ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !75 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !72
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 6                 ; 2 uses
  %i.an = icmp sgt i64 %i.am, 0
  %i.ao = add nuw nsw i64 %indvars.iv48.i, 1      ; 3 uses
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.ap = trunc nuw i64 %i.ao to i32              ; 2 uses
  br label %bb.i

._crit_edge.i:                                    ; preds = %bb.u, %bb.h
  %exitcond51.not.i = icmp eq i64 %i.ao, %i.ac
  br i1 %exitcond51.not.i, label %_ZN3gmxL29checkInputConsistencyIntervalERKNS_9AwhParamsEP14WarningHandler.exit, label %bb.h, !llvm.loop !294

bb.i:                                             ; preds = %bb.u, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.u ] ; 5 uses
  %i.aq = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %indvars.iv.i ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !29
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.au = load double, ptr %i.at, align 8, !tbaa !30 ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.aw = load double, ptr %i.av, align 8, !tbaa !31 ; 9 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !299 ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.ba = load double, ptr %i.az, align 8, !tbaa !300 ; 8 uses
  %i.bb = fcmp oeq double %i.ay, 0.000000e+00     ; 2 uses
  %i.bc = fcmp ogt double %i.au, %i.aw
  %or.cond.i = and i1 %i.bc, %i.bb
  br i1 %or.cond.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bd = trunc nuw nsw i64 %indvars.iv48.i to i32
  %i.be = trunc nuw nsw i64 %indvars.iv.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @_ZNSt10filesystem7__cxx114pathC2IA79_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 1 dereferenceable(79) @.str.39, i8 noundef zeroext 2)
  %i.bf = add nuw nsw i32 %i.bd, 1                ; 2 uses
  %i.bg = add nuw nsw i32 %i.be, 1                ; 2 uses
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef 1222, ptr noundef nonnull @.str.110, i32 noundef %i.bf, i32 noundef %i.bg, double noundef %i.au, i32 noundef %i.bf, i32 noundef %i.bg, double noundef %i.aw) #24
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %common.resume

bb.m:                                             ; preds = %bb.i
  br i1 %i.bb, label %_ZN3gmxL28intervalIsInPeriodicIntervalEddd.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = call double @llvm.fabs.f64(double %i.au)
  %i.bj = fmul double %i.ay, 5.000000e-01         ; 3 uses
  %i.bk = fcmp ole double %i.bi, %i.bj
  %i.bl = call double @llvm.fabs.f64(double %i.aw)
  %i.bm = fcmp ole double %i.bl, %i.bj
  %or.cond9.i = and i1 %i.bk, %i.bm
  br i1 %or.cond9.i, label %_ZN3gmxL28intervalIsInPeriodicIntervalEddd.exit.thread.i, label %_ZN3gmxL28intervalIsInPeriodicIntervalEddd.exit.thread6.i

_ZN3gmxL28intervalIsInPeriodicIntervalEddd.exit.thread6.i: ; preds = %bb.n
  %i.bn = trunc nuw nsw i64 %indvars.iv48.i to i32
  %i.bo = trunc nuw nsw i64 %indvars.iv.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @_ZNSt10filesystem7__cxx114pathC2IA79_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 1 dereferenceable(79) @.str.39, i8 noundef zeroext 2)
  %i.bp = add nuw nsw i32 %i.bn, 1                ; 2 uses
  %i.bq = add nuw nsw i32 %i.bo, 1                ; 2 uses
  %i.br = fmul double %i.ay, -5.000000e-01
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef 1243, ptr noundef nonnull @.str.111, i32 noundef %i.bp, i32 noundef %i.bq, double noundef %i.au, i32 noundef %i.bp, i32 noundef %i.bq, double noundef %i.aw, double noundef %i.ay, double noundef %i.br, double noundef %i.bj) #24
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %_ZN3gmxL28intervalIsInPeriodicIntervalEddd.exit.thread6.i
  unreachable

bb.p:                                             ; preds = %_ZN3gmxL28intervalIsInPeriodicIntervalEddd.exit.thread6.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %common.resume

_ZN3gmxL28intervalIsInPeriodicIntervalEddd.exit.thread.i: ; preds = %bb.n, %bb.m
  %i.bt = fcmp ogt double %i.ay, 0.000000e+00
  br i1 %i.bt, label %bb.q, label %.split7.i

bb.q:                                             ; preds = %_ZN3gmxL28intervalIsInPeriodicIntervalEddd.exit.thread.i
  %i.bu = fcmp olt double %i.au, %i.aw
  %i.bv = fcmp oge double %i.ba, %i.au            ; 2 uses
  br i1 %i.bu, label %.split.i, label %_ZN3gmxL17valueIsInIntervalEdddd.exit.i

.split.i:                                         ; preds = %bb.q
  %i.bw = fcmp ole double %i.ba, %i.aw
  %i.bx = and i1 %i.bv, %i.bw
  br i1 %i.bx, label %bb.u, label %bb.r

.split7.i:                                        ; preds = %_ZN3gmxL28intervalIsInPeriodicIntervalEddd.exit.thread.i
  %i.by = fcmp oge double %i.ba, %i.au
  %i.bz = fcmp ole double %i.ba, %i.aw
  %i.ca = and i1 %i.by, %i.bz
  br i1 %i.ca, label %bb.u, label %bb.r

_ZN3gmxL17valueIsInIntervalEdddd.exit.i:          ; preds = %bb.q
  %i.cb = fmul nnan double %i.ay, 5.000000e-01
  %i.cc = fcmp ole double %i.ba, %i.cb
  %or.cond.not.i.i = select i1 %i.bv, i1 %i.cc, i1 false
  %i.cd = fmul nnan double %i.ay, -5.000000e-01
  %i.ce = fcmp oge double %i.ba, %i.cd
  %i.cf = fcmp ole double %i.ba, %i.aw
  %i.cg = and i1 %i.ce, %i.cf
  %i.ch = select i1 %or.cond.not.i.i, i1 true, i1 %i.cg
  br i1 %i.ch, label %bb.u, label %bb.r

bb.r:                                             ; preds = %_ZN3gmxL17valueIsInIntervalEdddd.exit.i, %.split7.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.ci = add nsw i32 %i.as, 1
  %i.cj = trunc i64 %indvars.iv.i to i32
  %i.ck = add i32 %i.cj, 1                        ; 2 uses
  call void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull @.str.112, double noundef %i.ba, i32 noundef %i.ci, i32 noundef %i.ap, i32 noundef %i.ck, double noundef %i.au, i32 noundef %i.ap, i32 noundef %i.ck, double noundef %i.aw)
  %i.cl = load ptr, ptr %15, align 8, !tbaa !20
  %i.cm = load i64, ptr %i.ad, align 8, !tbaa !24
  invoke void @_ZN14WarningHandler10addWarningESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %9, i64 %i.cm, ptr %i.cl)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cn = load ptr, ptr %15, align 8, !tbaa !20   ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.ae
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.s
  %i.cp = load i64, ptr %i.ae, align 8, !tbaa !21
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cr = landingpad { ptr, i32 }
          cleanup
  %i.cs = load ptr, ptr %15, align 8, !tbaa !20   ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.ae
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i: ; preds = %bb.t
  %i.cu = load i64, ptr %i.ae, align 8, !tbaa !21
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %common.resume

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZN3gmxL17valueIsInIntervalEdddd.exit.i, %.split7.i, %.split.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.am
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.i, !llvm.loop !295

_ZN3gmxL29checkInputConsistencyIntervalERKNS_9AwhParamsEP14WarningHandler.exit: ; preds = %._crit_edge.i, %._crit_edge87
  call void @_ZN3gmx3Awh19registerAwhWithPullERKNS_9AwhParamsEP6pull_t(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  ret void

bb.v:                                             ; preds = %.lr.ph86, %._crit_edge
  %i.cw = phi ptr [ %i.e, %.lr.ph86 ], [ %i.dk, %._crit_edge ]
  %i.cx = phi ptr [ %i.g, %.lr.ph86 ], [ %i.dl, %._crit_edge ]
  %indvars.iv113 = phi i64 [ 0, %.lr.ph86 ], [ %i.di, %._crit_edge ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [104 x i8], ptr %i.e, i64 %indvars.iv113 ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !75 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !72
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.cz to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = lshr exact i64 %i.de, 6
  %i.dg = trunc i64 %i.df to i32
  %i.dh = icmp sgt i32 %i.dg, 0
  %i.di = add nuw nsw i64 %indvars.iv113, 1       ; 3 uses
  br i1 %i.dh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.v
  %i.dj = trunc nuw nsw i64 %i.di to i32
  br label %bb.w

._crit_edge.loopexit:                             ; preds = %_ZN3gmx12_GLOBAL__N_138checkFepLambdaDimDecouplingConsistencyERK10gmx_mtop_tP14WarningHandler.exit
  %.pre119 = load ptr, ptr %i.f, align 8, !tbaa !97
  %.pre120 = load ptr, ptr %0, align 8, !tbaa !96
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.v, %._crit_edge.loopexit
  %i.dk = phi ptr [ %.pre120, %._crit_edge.loopexit ], [ %i.cw, %bb.v ] ; 3 uses
  %i.dl = phi ptr [ %.pre119, %._crit_edge.loopexit ], [ %i.cx, %bb.v ] ; 2 uses
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.dk to i64
  %i.do = sub i64 %i.dm, %i.dn                    ; 2 uses
end_hunk_1
