inline.NumInlined: 1372
inline.NumDeleted: 727
begin_hunk_0_@_ZN6Assimp13SceneCombiner11MergeScenesEPP7aiSceneS2_RSt6vectorINS_14AttachmentInfoESaIS5_EEj:bb.a
  %i.cm = ptrtoint ptr %i.cc to i64
  %i.cn = ptrtoint ptr %i.cb to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = sdiv exact i64 %i.co, 96                ; 11 uses
  %i.cq = icmp ugt i64 %i.cp, 2305843009213693951
  br i1 %i.cq, label %bb.w, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

bb.w:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #25
          to label %.noexc458 unwind label %bb.ad

.noexc458:                                        ; preds = %bb.w
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge
  %.not.i.i.i.i457 = icmp eq ptr %i.cc, %i.cb
  br i1 %.not.i.i.i.i457, label %._crit_edge860.thread, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.cr = shl nuw nsw i64 %i.cp, 2                ; 3 uses
  %i.cs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #22
          to label %.noexc459 unwind label %bb.ad ; 14 uses

.noexc459:                                        ; preds = %bb.x
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cs, i8 -1, i64 %i.cr, i1 false)
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cp ; 6 uses
  %i.cu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #22
          to label %.noexc465 unwind label %_ZNSt6vectorIjSaIjEED2Ev.exit686.thread ; 8 uses

bb.y:                                             ; preds = %_ZNSt12_Vector_baseIN6Assimp11SceneHelperESaIS1_EEC2EmRKS2_.exit.i, %bb.v
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ji

bb.z:                                             ; preds = %.lr.ph, %_ZN6Assimp11SceneHelperD2Ev.exit
  %i.cw = phi ptr [ %i.ap, %.lr.ph ], [ %i.du, %_ZN6Assimp11SceneHelperD2Ev.exit ]
  %i.cx = phi i64 [ 0, %.lr.ph ], [ %i.db, %_ZN6Assimp11SceneHelperD2Ev.exit ]
  %.0325852 = phi i32 [ 0, %.lr.ph ], [ %i.da, %_ZN6Assimp11SceneHelperD2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8
  store ptr %i.cz, ptr %8, align 8
  store i32 0, ptr %i.ce, align 8
  store i32 0, ptr %i.cf, align 8
  store ptr null, ptr %i.cg, align 8
  store ptr %i.cf, ptr %i.ch, align 8
  store ptr %i.cf, ptr %i.ci, align 8
  store i64 0, ptr %i.cj, align 8
  store i8 0, ptr %i.ck, align 8
  %i.da = add i32 %.0325852, 1                    ; 2 uses
  %i.db = zext i32 %i.da to i64                   ; 3 uses
  %i.dc = getelementptr inbounds nuw [96 x i8], ptr %i.cb, i64 %i.db ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.dc, ptr noundef nonnull align 8 dereferenceable(96) %8, i64 44, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 64 ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8
  invoke void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %i.dd, ptr noundef %i.df)
          to label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE5clearEv.exit.i.i.i.i unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  %i.dh = extractvalue { ptr, i32 } %i.dg, 0
  call void @__clang_call_terminate(ptr %i.dh) #26
  unreachable

_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE5clearEv.exit.i.i.i.i: ; preds = %bb.z
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 56 ; 4 uses
  store ptr null, ptr %i.de, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 72 ; 2 uses
  store ptr %i.di, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 80
  store ptr %i.di, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dc, i64 88 ; 2 uses
  store i64 0, ptr %i.dl, align 8
  %i.dm = load ptr, ptr %i.cg, align 8            ; 3 uses
  %.not.i.i.i.i460 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i460, label %_ZN6Assimp11SceneHelperaSEOS0_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE5clearEv.exit.i.i.i.i
  %i.dn = load i32, ptr %i.cf, align 8
  store i32 %i.dn, ptr %i.di, align 8
  store ptr %i.dm, ptr %i.de, align 8
  %i.do = load <2 x ptr>, ptr %i.ch, align 8
  store <2 x ptr> %i.do, ptr %i.dj, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %i.di, ptr %i.dp, align 8
  %i.dq = load i64, ptr %i.cj, align 8
  store i64 %i.dq, ptr %i.dl, align 8
  store ptr null, ptr %i.cg, align 8
  store ptr %i.cf, ptr %i.ch, align 8
  store ptr %i.cf, ptr %i.ci, align 8
  store i64 0, ptr %i.cj, align 8
  br label %_ZN6Assimp11SceneHelperaSEOS0_.exit

_ZN6Assimp11SceneHelperaSEOS0_.exit:              ; preds = %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE5clearEv.exit.i.i.i.i, %bb.ab
  invoke void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %i.cl, ptr noundef null)
          to label %_ZN6Assimp11SceneHelperD2Ev.exit unwind label %bb.ac

bb.ac:                                            ; preds = %_ZN6Assimp11SceneHelperaSEOS0_.exit
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #26
  unreachable

_ZN6Assimp11SceneHelperD2Ev.exit:                 ; preds = %_ZN6Assimp11SceneHelperaSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.dt = load ptr, ptr %i.ae, align 8
  %i.du = load ptr, ptr %2, align 8               ; 2 uses
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = ashr exact i64 %i.dx, 4
  %i.dz = icmp ugt i64 %i.dy, %i.db
  br i1 %i.dz, label %bb.z, label %._crit_edge, !llvm.loop !17

.noexc465:                                        ; preds = %.noexc459
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cp ; 5 uses
  store i32 0, ptr %i.cu, align 4
  %i.eb = add nsw i64 %i.cp, -1                   ; 2 uses
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %.lr.ph859.preheader, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

.lr.ph859.preheader:                              ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc465
  br label %.lr.ph859

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc465
  %i.ed = getelementptr i8, ptr %i.cu, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.eb, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ed, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false)
  br label %.lr.ph859.preheader

._crit_edge860:                                   ; preds = %.loopexit824
  %i.ee = and i32 %3, 1
  %.not388 = icmp eq i32 %i.ee, 0
  br i1 %.not388, label %.loopexit823, label %.preheader822

._crit_edge860.thread:                            ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ef = and i32 %3, 1
  %.not3881232 = icmp eq i32 %i.ef, 0
  br label %.loopexit823

.preheader822:                                    ; preds = %._crit_edge860
  %i.eg = icmp ugt i64 %i.cp, 1
  br i1 %i.eg, label %.lr.ph864, label %.loopexit823

.lr.ph864:                                        ; preds = %.preheader822
  %i.eh = and i32 %3, 16
  %.not440 = icmp eq i32 %i.eh, 0
  br label %bb.ah

bb.ad:                                            ; preds = %bb.x, %bb.w
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit688

_ZNSt6vectorIjSaIjEED2Ev.exit686.thread:          ; preds = %.noexc459
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.jh

.lr.ph859:                                        ; preds = %.lr.ph859.preheader, %.loopexit824
  %i.ek = phi i64 [ %.pre-phi1081, %.loopexit824 ], [ 0, %.lr.ph859.preheader ] ; 2 uses
  %.0326857 = phi i32 [ %.pre-phi, %.loopexit824 ], [ 0, %.lr.ph859.preheader ] ; 13 uses
  %i.el = add i32 %.0326857, 2
  %i.em = zext i32 %i.el to i64                   ; 2 uses
  %umax1335 = call i64 @llvm.umax.i64(i64 %i.cp, i64 %i.em)
  %i.en = add nuw nsw i64 %umax1335, 1
  %i.eo = sub nsw i64 %i.en, %i.em                ; 3 uses
  %i.ep = add i32 %.0326857, 2
  %i.eq = zext i32 %i.ep to i64
  %i.er = call i64 @llvm.usub.sat.i64(i64 %i.cp, i64 %i.eq) ; 3 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.ek ; 2 uses
  %i.et = load i32, ptr %i.es, align 4            ; 2 uses
  %.not447 = icmp eq i32 %i.et, %.0326857
  %.not448 = icmp eq i32 %i.et, -1
  %or.cond795 = or i1 %.not447, %.not448
  br i1 %or.cond795, label %bb.ae, label %.lr.ph859..loopexit824_crit_edge

.lr.ph859..loopexit824_crit_edge:                 ; preds = %.lr.ph859
  %.pre1079 = add i32 %.0326857, 1                ; 2 uses
  %.pre1080 = zext i32 %.pre1079 to i64
  br label %.loopexit824

bb.ae:                                            ; preds = %.lr.ph859
  store i32 %.0326857, ptr %i.es, align 4
  %.0329853 = add i32 %.0326857, 1                ; 7 uses
  %i.eu = zext i32 %.0329853 to i64               ; 8 uses
  %i.ev = icmp ugt i64 %i.cp, %i.eu
  br i1 %i.ev, label %.lr.ph856, label %.loopexit824

.lr.ph856:                                        ; preds = %bb.ae
  %i.ew = getelementptr inbounds nuw [96 x i8], ptr %i.cb, i64 %i.ek
  %.pre1055 = load ptr, ptr %i.ew, align 8        ; 2 uses
  %min.iters.check = icmp ult i64 %i.eo, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph856
  %i.ex = trunc i64 %i.er to i32
  %i.ey = sub i32 -3, %.0326857
  %i.ez = icmp ult i32 %i.ey, %i.ex
  %i.fa = trunc i64 %i.er to i32
  %i.fb = sub i32 -2, %.0326857
  %i.fc = icmp ult i32 %i.fb, %i.fa
  %i.fd = icmp ugt i64 %i.er, 4294967295
  %i.fe = or i1 %i.fc, %i.fd
  %i.ff = or i1 %i.ez, %i.fe
  br i1 %i.ff, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.eo, -4                      ; 4 uses
  %i.fg = add i64 %n.vec, %i.eu
  %i.fh = trunc i64 %n.vec to i32
  %i.fi = add i32 %.0329853, %i.fh
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %.pre1055, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue1341, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue1341 ] ; 2 uses
  %i.fj = add i64 %index, %i.eu                   ; 5 uses
  %i.fk = add i64 %i.fj, 1                        ; 2 uses
  %i.fl = add i64 %i.fj, 2                        ; 2 uses
  %i.fm = add i64 %i.fj, 3                        ; 2 uses
  %i.fn = getelementptr inbounds nuw [96 x i8], ptr %i.cb, i64 %i.fj
  %i.fo = getelementptr inbounds nuw [96 x i8], ptr %i.cb, i64 %i.fk
  %i.fp = getelementptr inbounds nuw [96 x i8], ptr %i.cb, i64 %i.fl
  %i.fq = getelementptr inbounds nuw [96 x i8], ptr %i.cb, i64 %i.fm
  %i.fr = load ptr, ptr %i.fn, align 8
  %i.fs = load ptr, ptr %i.fo, align 8
  %i.ft = insertelement <2 x ptr> poison, ptr %i.fr, i64 0
  %i.fu = insertelement <2 x ptr> %i.ft, ptr %i.fs, i64 1
  %i.fv = load ptr, ptr %i.fp, align 8
  %i.fw = load ptr, ptr %i.fq, align 8
  %i.fx = insertelement <2 x ptr> poison, ptr %i.fv, i64 0
  %i.fy = insertelement <2 x ptr> %i.fx, ptr %i.fw, i64 1
  %i.fz = icmp eq <2 x ptr> %broadcast.splat, %i.fu ; 2 uses
  %i.ga = icmp eq <2 x ptr> %broadcast.splat, %i.fy ; 2 uses
  %i.gb = extractelement <2 x i1> %i.fz, i64 0
  br i1 %i.gb, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.fj
  store i32 %.0326857, ptr %i.gc, align 4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.gd = extractelement <2 x i1> %i.fz, i64 1
  br i1 %i.gd, label %pred.store.if1336, label %pred.store.continue1337

pred.store.if1336:                                ; preds = %pred.store.continue
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.fk
  store i32 %.0326857, ptr %i.ge, align 4
  br label %pred.store.continue1337

pred.store.continue1337:                          ; preds = %pred.store.if1336, %pred.store.continue
  %i.gf = extractelement <2 x i1> %i.ga, i64 0
  br i1 %i.gf, label %pred.store.if1338, label %pred.store.continue1339

pred.store.if1338:                                ; preds = %pred.store.continue1337
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.fl
  store i32 %.0326857, ptr %i.gg, align 4
  br label %pred.store.continue1339

pred.store.continue1339:                          ; preds = %pred.store.if1338, %pred.store.continue1337
  %i.gh = extractelement <2 x i1> %i.ga, i64 1
  br i1 %i.gh, label %pred.store.if1340, label %pred.store.continue1341

pred.store.if1340:                                ; preds = %pred.store.continue1339
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.fm
  store i32 %.0326857, ptr %i.gi, align 4
  br label %pred.store.continue1341

pred.store.continue1341:                          ; preds = %pred.store.if1340, %pred.store.continue1339
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gj = icmp eq i64 %index.next, %n.vec
  br i1 %i.gj, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %pred.store.continue1341
  %cmp.n = icmp eq i64 %i.eo, %n.vec
  br i1 %cmp.n, label %.loopexit824, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph856, %middle.block
  %.ph = phi i64 [ %i.eu, %vector.scevcheck ], [ %i.eu, %.lr.ph856 ], [ %i.fg, %middle.block ]
  %.0329854.ph = phi i32 [ %.0329853, %vector.scevcheck ], [ %.0329853, %.lr.ph856 ], [ %i.fi, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.ag
  %i.gk = phi i64 [ %i.gp, %bb.ag ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.0329854 = phi i32 [ %.0329, %bb.ag ], [ %.0329854.ph, %scalar.ph.preheader ]
  %i.gl = getelementptr inbounds nuw [96 x i8], ptr %i.cb, i64 %i.gk
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = icmp eq ptr %.pre1055, %i.gm
  br i1 %i.gn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %scalar.ph
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.gk
  store i32 %.0326857, ptr %i.go, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %scalar.ph, %bb.af
  %.0329 = add i32 %.0329854, 1                   ; 2 uses
  %i.gp = zext i32 %.0329 to i64                  ; 2 uses
  %i.gq = icmp ugt i64 %i.cp, %i.gp
  br i1 %i.gq, label %scalar.ph, label %.loopexit824, !llvm.loop !21

.loopexit824:                                     ; preds = %bb.ag, %middle.block, %.lr.ph859..loopexit824_crit_edge, %bb.ae
  %.pre-phi1081 = phi i64 [ %.pre1080, %.lr.ph859..loopexit824_crit_edge ], [ %i.eu, %bb.ae ], [ %i.eu, %middle.block ], [ %i.eu, %bb.ag ] ; 2 uses
  %.pre-phi = phi i32 [ %.pre1079, %.lr.ph859..loopexit824_crit_edge ], [ %.0329853, %bb.ae ], [ %.0329853, %middle.block ], [ %.0329853, %bb.ag ]
  %i.gr = icmp ugt i64 %i.cp, %.pre-phi1081
  br i1 %i.gr, label %.lr.ph859, label %._crit_edge860, !llvm.loop !22

bb.ah:                                            ; preds = %.lr.ph864, %.loopexit821
  %i.gs = phi ptr [ %i.cb, %.lr.ph864 ], [ %i.md, %.loopexit821 ]
  %i.gt = phi i64 [ 1, %.lr.ph864 ], [ %i.mf, %.loopexit821 ] ; 3 uses
  %.0330863 = phi i32 [ 1, %.lr.ph864 ], [ %i.me, %.loopexit821 ] ; 2 uses
  %i.gu = getelementptr inbounds nuw [96 x i8], ptr %i.gs, i64 %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.gv, i64 noundef 32, ptr noundef nonnull @.str.2, i32 noundef %.0330863) #23
  %i.gx = load ptr, ptr %7, align 8               ; 4 uses
  %i.gy = getelementptr inbounds nuw [96 x i8], ptr %i.gx, i64 %i.gt ; 5 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 40
  store i32 %i.gw, ptr %i.gz, align 8
  br i1 %.not440, label %.loopexit821, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ha = load ptr, ptr %i.gy, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 48
  invoke void @_ZN6Assimp13SceneCombiner13AddNodeHashesEP6aiNodeRSt3setIjSt4lessIjESaIjEE(ptr noundef %i.hc, ptr noundef nonnull align 8 dereferenceable(48) %i.hd)
          to label %.preheader820 unwind label %bb.aj

.preheader820:                                    ; preds = %bb.ai
  %i.he = load ptr, ptr %i.gy, align 8            ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 48
  %i.hg = load i32, ptr %i.hf, align 8
  %.not970 = icmp eq i32 %i.hg, 0
  br i1 %.not970, label %.loopexit821, label %.lr.ph862

bb.aj:                                            ; preds = %bb.ai
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.lr.ph862:                                        ; preds = %.preheader820, %bb.as
  %i.hi = phi ptr [ %i.lv, %bb.as ], [ %i.gx, %.preheader820 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.as ], [ 0, %.preheader820 ] ; 2 uses
  %i.hj = phi ptr [ %i.lx, %bb.as ], [ %i.he, %.preheader820 ]
  %i.hk = phi ptr [ %i.lw, %bb.as ], [ %i.gy, %.preheader820 ] ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 56
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %indvars.iv
  %i.ho = load ptr, ptr %i.hn, align 8            ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 4 ; 5 uses
  %i.hq = load i32, ptr %i.ho, align 8            ; 2 uses
  %i.hr = icmp eq i32 %i.hq, 0
  br i1 %i.hr, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph862
  %i.hs = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hp) #21
  %i.ht = trunc i64 %i.hs to i32
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph862
  %.056.i = phi i32 [ %i.ht, %bb.ak ], [ %i.hq, %.lr.ph862 ] ; 3 uses
  %i.hu = and i32 %.056.i, 3
  %i.hv = lshr i32 %.056.i, 2                     ; 4 uses
  switch i32 %i.hv, label %.lr.ph.i.preheader.new [
    i32 0, label %._crit_edge.i
    i32 1, label %.lr.ph.i.epil.preheader
  ]

.lr.ph.i.preheader.new:                           ; preds = %bb.al
  %unroll_iter = and i32 %i.hv, 1073741822
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.05463.i = phi ptr [ %i.hp, %.lr.ph.i.preheader.new ], [ %i.it, %.lr.ph.i ] ; 5 uses
  %.05562.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.iv, %.lr.ph.i ]
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.hw = load i16, ptr %.05463.i, align 1
  %i.hx = zext i16 %i.hw to i32
  %i.hy = add i32 %.05562.i, %i.hx                ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.05463.i, i64 2
  %i.ia = load i16, ptr %i.hz, align 1
  %i.ib = zext i16 %i.ia to i32
  %i.ic = shl nuw nsw i32 %i.ib, 11
  %i.id = shl i32 %i.hy, 16
  %i.ie = xor i32 %i.ic, %i.id
  %i.if = xor i32 %i.ie, %i.hy                    ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.05463.i, i64 4
  %i.ih = lshr i32 %i.if, 11
  %i.ii = add i32 %i.ih, %i.if
  %i.ij = load i16, ptr %i.ig, align 1
  %i.ik = zext i16 %i.ij to i32
  %i.il = add i32 %i.ii, %i.ik                    ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.05463.i, i64 6
  %i.in = load i16, ptr %i.im, align 1
  %i.io = zext i16 %i.in to i32
  %i.ip = shl nuw nsw i32 %i.io, 11
  %i.iq = shl i32 %i.il, 16
  %i.ir = xor i32 %i.ip, %i.iq
end_hunk_0
