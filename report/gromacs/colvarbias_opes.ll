inline.NumInlined: 4208
inline.NumDeleted: 972
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN15colvarbias_opes10computePMFEv:bb.a

bb.u:                                             ; preds = %bb.o
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

bb.v:                                             ; preds = %bb.p
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

bb.w:                                             ; preds = %bb.r
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = load ptr, ptr %1, align 8, !tbaa !115   ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.bm
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.w
  %i.co = load i64, ptr %i.bm, align 8, !tbaa !117
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65, %bb.v
  %.pn49 = phi { ptr, i32 } [ %i.ck, %bb.v ], [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65 ], [ %i.cl, %bb.w ] ; 2 uses
  %i.cq = load ptr, ptr %2, align 8, !tbaa !115   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !117
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %bb.u
  %.pn49.pn = phi { ptr, i32 } [ %i.cj, %bb.u ], [ %.pn49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %.pn49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.y

bb.x:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.al

bb.y:                                             ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %bb.l
  %.pn49.pn.pn.pn = phi { ptr, i32 } [ %i.az, %bb.l ], [ %.pn49.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %i.ci, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.at

bb.z:                                             ; preds = %bb.d
  %i.cv = load ptr, ptr %i.i, align 8, !tbaa !194
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 464
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !82
  %i.cy = load ptr, ptr %i.ac, align 8, !tbaa !86
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = invoke noundef i32 %i.da(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull %i.cx, i32 noundef %i.s, i32 noundef 0)
          to label %bb.aa unwind label %bb.k

bb.aa:                                            ; preds = %bb.z
  %.not = icmp eq i32 %i.db, %i.s
  br i1 %.not, label %bb.al, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.dc = invoke noundef ptr @_ZN12colvarmodule4mainEv()
          to label %bb.ac unwind label %bb.ai     ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.dd = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !89
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 800 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !86
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = invoke noundef i32 %i.dh(ptr noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %bb.ad unwind label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  store i32 %i.di, ptr %i.b, align 4, !tbaa !164
  invoke void @_ZN12colvarmodule6to_strB5cxx11ERKimm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i64 noundef 0, i64 noundef 0)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.dj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.212, i64 noundef 61)
          to label %.noexc74 unwind label %bb.aj  ; 6 uses

.noexc74:                                         ; preds = %bb.ae
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.dk, ptr %3, align 8, !tbaa !111, !alias.scope !1157
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !115 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 5 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

bb.af:                                            ; preds = %.noexc74
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !116 ; 3 uses
  %i.dq = icmp ult i64 %i.dp, 16
  call void @llvm.assume(i1 %i.dq)
  %i.dr = add nuw nsw i64 %i.dp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dk, ptr noundef nonnull align 8 dereferenceable(1) %i.dm, i64 %i.dr, i1 false)
  br label %bb.ag

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %.noexc74
  store ptr %i.dl, ptr %3, align 8, !tbaa !115, !alias.scope !1157
  %i.ds = load i64, ptr %i.dm, align 8, !tbaa !117
  store i64 %i.ds, ptr %i.dk, align 8, !tbaa !117, !alias.scope !1157
  %.phi.trans.insert.i72 = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %.pre.i73 = load i64, ptr %.phi.trans.insert.i72, align 8, !tbaa !116
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %bb.af
  %i.dt = phi i64 [ %i.dp, %bb.af ], [ %.pre.i73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.dt, ptr %i.dv, align 8, !tbaa !116, !alias.scope !1157
  store ptr %i.dm, ptr %i.dj, align 8, !tbaa !115
  store i64 0, ptr %i.du, align 8, !tbaa !116
  store i8 0, ptr %i.dm, align 8, !tbaa !117
  %i.dw = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef -1)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.dx = load ptr, ptr %3, align 8, !tbaa !115   ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.dk
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %bb.ah
  %i.dz = load i64, ptr %i.dk, align 8, !tbaa !117
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  %i.eb = load ptr, ptr %4, align 8, !tbaa !115   ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNSt6vectorIdSaIdEED2Ev.exit.thread124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !117
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #34
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.thread124

_ZNSt6vectorIdSaIdEED2Ev.exit.thread124:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %.thread139

bb.ai:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.thread132

bb.aj:                                            ; preds = %bb.ae
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

bb.ak:                                            ; preds = %bb.ag
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ej = load ptr, ptr %3, align 8, !tbaa !115   ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.dk
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.ak
  %i.el = load i64, ptr %i.dk, align 8, !tbaa !117
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %bb.aj
  %.pn = phi { ptr, i32 } [ %i.eh, %bb.aj ], [ %i.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %i.ei, %bb.ak ] ; 2 uses
  %i.en = load ptr, ptr %4, align 8, !tbaa !115   ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %.thread132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !117
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #34
  br label %.thread132

.thread132:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  %.pn.pn = phi { ptr, i32 } [ %i.eg, %bb.ai ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit89

bb.al:                                            ; preds = %bb.x, %bb.aa
  %.sroa.0.1 = phi ptr [ %.sroa.0.4, %bb.x ], [ null, %bb.aa ] ; 9 uses
  %.sroa.16.1 = phi ptr [ %.sroa.16.4, %bb.x ], [ null, %bb.aa ] ; 5 uses
  %i.es = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !89
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 800 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !86
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  %i.ew = load ptr, ptr %i.ev, align 8
  invoke void %i.ew(ptr noundef nonnull align 8 dereferenceable(24) %i.et)
          to label %bb.am unwind label %bb.k

bb.am:                                            ; preds = %bb.al
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 1880
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !199
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 464 ; 2 uses
  %i.fa = invoke noundef ptr @_ZN12colvarmodule4mainEv()
          to label %bb.an unwind label %bb.as     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.fb = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !89
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 800 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !86
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = invoke noundef i32 %i.ff(ptr noundef nonnull align 8 dereferenceable(24) %i.fc)
          to label %bb.ao unwind label %bb.as

bb.ao:                                            ; preds = %bb.an
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %bb.ap, label %.loopexit

bb.ap:                                            ; preds = %bb.ao
  %i.fi = load ptr, ptr %i.i, align 8, !tbaa !194
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 464
  %i.fk = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ez, ptr noundef nonnull align 8 dereferenceable(24) %i.fj)
          to label %.preheader unwind label %bb.as ; 0 uses

.preheader:                                       ; preds = %bb.ap
  %i.fl = icmp ne ptr %i.m, %i.n
  %.fr = freeze i1 %i.fl
  br i1 %.fr, label %.preheader.split.us.preheader, label %.preheader.split

.preheader.split.us.preheader:                    ; preds = %.preheader
  %umax = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1) ; 4 uses
  %i.fm = shl i64 %umax, 3                        ; 2 uses
  %i.fn = getelementptr i8, ptr %.sroa.0.1, i64 %i.fm
  %min.iters.check = icmp ult i64 %i.r, 4
  %n.vec = and i64 %umax, -4                      ; 3 uses
  %cmp.n = icmp eq i64 %i.r, %n.vec
  %xtraiter = and i64 %umax, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.split.us

.preheader.split.us:                              ; preds = %.preheader.split.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.preheader.split.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.preheader.split.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 3 uses
  %i.fo = mul i64 %i.q, %indvar
  %scevgep170 = getelementptr i8, ptr %i.fn, i64 %i.fo
  %i.fp = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !89
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 800 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !86
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 40
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = invoke noundef i32 %i.ft(ptr noundef nonnull align 8 dereferenceable(24) %i.fq)
          to label %bb.aq unwind label %.split.us

bb.aq:                                            ; preds = %.preheader.split.us
  %i.fv = sext i32 %i.fu to i64
  %i.fw = icmp slt i64 %indvars.iv, %i.fv
  br i1 %i.fw, label %.lr.ph.us, label %.loopexit

.lr.ph.us:                                        ; preds = %bb.aq
  %i.fx = add nsw i64 %indvars.iv, -1
  %i.fy = mul i64 %i.r, %i.fx
  %i.fz = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %i.fy ; 7 uses
  %i.ga = load ptr, ptr %i.ez, align 8, !tbaa !82 ; 8 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us
  %scevgep = getelementptr i8, ptr %i.ga, i64 %i.fm
  %bound0 = icmp ult ptr %i.ga, %scevgep170
  %bound1 = icmp ult ptr %i.fz, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.gb = getelementptr [8 x i8], ptr %i.fz, i64 %index ; 2 uses
  %i.gc = getelementptr i8, ptr %i.gb, i64 16
  %wide.load = load <2 x double>, ptr %i.gb, align 8, !tbaa !76, !alias.scope !1160
  %wide.load171.a = load <2 x double>, ptr %i.gc, align 8, !tbaa !76, !alias.scope !1160
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %index ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16 ; 2 uses
  %wide.load172.a = load <2 x double>, ptr %i.gd, align 8, !tbaa !76, !alias.scope !1163, !noalias !1160
  %wide.load173 = load <2 x double>, ptr %i.ge, align 8, !tbaa !76, !alias.scope !1163, !noalias !1160
  %i.gf = fadd <2 x double> %wide.load, %wide.load172.a
  %i.gg = fadd <2 x double> %wide.load171.a, %wide.load173
  store <2 x double> %i.gf, ptr %i.gd, align 8, !tbaa !76, !alias.scope !1163, !noalias !1160
  store <2 x double> %i.gg, ptr %i.ge, align 8, !tbaa !76, !alias.scope !1163, !noalias !1160
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gh = icmp eq i64 %index.next, %n.vec
  br i1 %i.gh, label %middle.block, label %vector.body, !llvm.loop !1165

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us, %middle.block
  %.0141.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.0141.us.prol = phi i64 [ %i.gn, %scalar.ph.prol ], [ %.0141.us.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.gi = getelementptr [8 x i8], ptr %i.fz, i64 %.0141.us.prol
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !76
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.0141.us.prol ; 2 uses
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !76
  %i.gm = fadd double %i.gj, %i.gl
  store double %i.gm, ptr %i.gk, align 8, !tbaa !76
  %i.gn = add nuw i64 %.0141.us.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1166

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0141.us.unr = phi i64 [ %.0141.us.ph, %scalar.ph.preheader ], [ %i.gn, %scalar.ph.prol ]
  %i.go = sub i64 %.0141.us.ph, %umax
  %i.gp = icmp ugt i64 %i.go, -4
  br i1 %i.gp, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0141.us = phi i64 [ %i.hn, %scalar.ph ], [ %.0141.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.gq = getelementptr [8 x i8], ptr %i.fz, i64 %.0141.us
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !76
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.0141.us ; 2 uses
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !76
  %i.gu = fadd double %i.gr, %i.gt
  store double %i.gu, ptr %i.gs, align 8, !tbaa !76
  %i.gv = add nuw i64 %.0141.us, 1                ; 2 uses
  %i.gw = getelementptr [8 x i8], ptr %i.fz, i64 %i.gv
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !76
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.gv ; 2 uses
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !76
  %i.ha = fadd double %i.gx, %i.gz
  store double %i.ha, ptr %i.gy, align 8, !tbaa !76
  %i.hb = add nuw i64 %.0141.us, 2                ; 2 uses
  %i.hc = getelementptr [8 x i8], ptr %i.fz, i64 %i.hb
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !76
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.hb ; 2 uses
  %i.hf = load double, ptr %i.he, align 8, !tbaa !76
  %i.hg = fadd double %i.hd, %i.hf
  store double %i.hg, ptr %i.he, align 8, !tbaa !76
  %i.hh = add nuw i64 %.0141.us, 3                ; 2 uses
  %i.hi = getelementptr [8 x i8], ptr %i.fz, i64 %i.hh
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !76
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.hh ; 2 uses
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !76
  %i.hm = fadd double %i.hj, %i.hl
  store double %i.hm, ptr %i.hk, align 8, !tbaa !76
  %i.hn = add nuw i64 %.0141.us, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.r, %i.hn
  br i1 %exitcond.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1167

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvar.next = add i64 %indvar, 1
  br label %.preheader.split.us, !llvm.loop !1168

.split.us:                                        ; preds = %.preheader.split.us
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

.preheader.split:                                 ; preds = %.preheader, %bb.ar
  %.027 = phi i32 [ %i.hw, %bb.ar ], [ 1, %.preheader ] ; 2 uses
  %i.hp = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !89
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 800 ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !86
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 40
  %i.ht = load ptr, ptr %i.hs, align 8
  %i.hu = invoke noundef i32 %i.ht(ptr noundef nonnull align 8 dereferenceable(24) %i.hq)
          to label %bb.ar unwind label %.split

bb.ar:                                            ; preds = %.preheader.split
  %i.hv = icmp slt i32 %.027, %i.hu
  %i.hw = add nuw nsw i32 %.027, 1
  br i1 %i.hv, label %.preheader.split, label %.loopexit, !llvm.loop !1168

bb.as:                                            ; preds = %bb.ap, %bb.an, %bb.am
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

.split:                                           ; preds = %.preheader.split
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

.loopexit:                                        ; preds = %bb.ar, %bb.aq, %bb.ao
  %.not.i.i.i = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.thread, label %_ZNSt6vectorIdSaIdEED2Ev.exit.thread127

_ZNSt6vectorIdSaIdEED2Ev.exit.thread127:          ; preds = %.loopexit
  %i.hz = ptrtoint ptr %.sroa.16.1 to i64
  %i.ia = ptrtoint ptr %.sroa.0.1 to i64
  %i.ib = sub i64 %i.hz, %i.ia
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.ib) #34
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.thread

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.ic = ptrtoint ptr %.sroa.16.4 to i64
  %i.id = ptrtoint ptr %.sroa.0.4 to i64
  %i.ie = sub i64 %i.ic, %i.id
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.4, i64 noundef %i.ie) #34
  br label %.thread139

bb.at:                                            ; preds = %.split, %.split.us, %bb.as, %bb.y, %bb.k
  %.sroa.0.3 = phi ptr [ %.sroa.0.4, %bb.y ], [ %.sroa.0.1, %bb.as ], [ %.sroa.0.0, %bb.k ], [ %.sroa.0.1, %.split.us ], [ %.sroa.0.1, %.split ] ; 3 uses
  %.sroa.16.3 = phi ptr [ %.sroa.16.4, %bb.y ], [ %.sroa.16.1, %bb.as ], [ %.sroa.16.0, %bb.k ], [ %.sroa.16.1, %.split.us ], [ %.sroa.16.1, %.split ]
  %.pn55.pn = phi { ptr, i32 } [ %.pn49.pn.pn.pn, %bb.y ], [ %i.hx, %bb.as ], [ %i.ay, %bb.k ], [ %i.ho, %.split.us ], [ %i.hy, %.split ] ; 2 uses
  %.not.i.i.i88 = icmp eq ptr %.sroa.0.3, null
  br i1 %.not.i.i.i88, label %_ZNSt6vectorIdSaIdEED2Ev.exit89, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.if = ptrtoint ptr %.sroa.16.3 to i64
  %i.ig = ptrtoint ptr %.sroa.0.3 to i64
  %i.ih = sub i64 %i.if, %i.ig
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.3, i64 noundef %i.ih) #34
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit89

_ZNSt6vectorIdSaIdEED2Ev.exit89:                  ; preds = %.thread132, %bb.at, %bb.au
  %.pn55.pn137 = phi { ptr, i32 } [ %.pn.pn, %.thread132 ], [ %.pn55.pn, %bb.at ], [ %.pn55.pn, %bb.au ]
  resume { ptr, i32 } %.pn55.pn137

_ZNSt6vectorIdSaIdEED2Ev.exit.thread:             ; preds = %.loopexit, %_ZNSt6vectorIdSaIdEED2Ev.exit.thread127, %bb.a
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !97
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 1840
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !194
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 1856
  tail call void @_Z11hist_to_pmfdPK18colvar_grid_scalarRSt10unique_ptrIS_St14default_deleteIS_EE(double noundef %i.ij, ptr noundef %i.il, ptr noundef nonnull align 8 dereferenceable(8) %i.im)
  %i.in = load i32, ptr %i.c, align 8, !tbaa !187
  %i.io = icmp eq i32 %i.in, 1
  br i1 %i.io, label %bb.av, label %.thread139

bb.av:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.thread
  %i.ip = load i8, ptr %i.f, align 8, !tbaa !203, !range !78, !noundef !79
  %i.iq = trunc nuw i8 %i.ip to i1
  br i1 %i.iq, label %bb.aw, label %.thread138

bb.aw:                                            ; preds = %bb.av
  %i.ir = tail call noundef ptr @_ZN12colvarmodule4mainEv() ; 0 uses
  %i.is = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !89
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 800 ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !86
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 32
  %i.iw = load ptr, ptr %i.iv, align 8
  %i.ix = tail call noundef i32 %i.iw(ptr noundef nonnull align 8 dereferenceable(24) %i.it)
  %i.iy = icmp eq i32 %i.ix, 0
  br i1 %i.iy, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.iz = load double, ptr %i.ii, align 8, !tbaa !97
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 1880
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !199
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 1888
  tail call void @_Z11hist_to_pmfdPK18colvar_grid_scalarRSt10unique_ptrIS_St14default_deleteIS_EE(double noundef %i.iz, ptr noundef %i.jb, ptr noundef nonnull align 8 dereferenceable(8) %i.jc)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %.pr = load i32, ptr %i.c, align 8, !tbaa !187
  %i.jd = icmp eq i32 %.pr, 1
  br i1 %i.jd, label %.thread138, label %.thread139

.thread138:                                       ; preds = %bb.av, %bb.ay
  %i.je = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !89
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 800 ; 2 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !86
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 48
end_hunk_0
