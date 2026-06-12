inline.NumInlined: 2170
inline.NumDeleted: 1074
begin_hunk_0_@_ZN6Assimp11ASEImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  store ptr %i.v, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %2, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %1, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.ac
  %i.af = getelementptr i8, ptr %i.ae, i64 -1
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = add i8 %i.ag, -67
  %switch.and = and i8 %i.ah, -33
  %switch.selectcmp = icmp eq i8 %switch.and, 0
  %i.ai = select i1 %switch.selectcmp, i32 110, i32 200
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZN6Assimp3ASE6ParserC1EPKcmj(ptr noundef nonnull align 8 dereferenceable(188) %6, ptr noundef %i.v, i64 noundef %i.y, i32 noundef %i.ai)
          to label %bb.h unwind label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.h:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 10 uses
  store ptr %6, ptr %i.ak, align 8
  invoke void @_ZN6Assimp3ASE6Parser5ParseEv(ptr noundef nonnull align 8 dereferenceable(188) %6)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %i.ak, align 8            ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.an = load ptr, ptr %i.am, align 8            ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = icmp eq ptr %i.an, %i.ap
  br i1 %i.aq, label %bb.ai, label %.lr.ph.i.outer

._crit_edge.i:                                    ; preds = %bb.k
  br i1 %.019.i.ph, label %._crit_edge.i.thread, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.outer, %bb.k
  %.sroa.012.018.i = phi ptr [ %i.ax, %bb.k ], [ %.sroa.012.018.i.ph, %.lr.ph.i.outer ] ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.012.018.i, i64 716
  %i.as = load i8, ptr %i.ar, align 4, !range !4, !noundef !5
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.012.018.i, i64 680
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = icmp eq i32 %i.av, -1
  br i1 %i.aw, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.012.018.i, i64 720 ; 2 uses
  %.not.i64 = icmp eq ptr %i.ax, %i.bl
  br i1 %.not.i64, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !6

.thread:                                          ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.012.018.i, i64 680
  %i.az = getelementptr inbounds nuw i8, ptr %.ph, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %.ph, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = load ptr, ptr %i.az, align 8
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = sdiv exact i64 %i.bf, 736
  %i.bh = trunc i64 %i.bg to i32
  store i32 %i.bh, ptr %i.ay, align 8
  %.pre.i = load ptr, ptr %i.ak, align 8          ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.012.018.i, i64 720 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.pre.i, i64 72
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %.not.i64160 = icmp eq ptr %i.bi, %i.bk
  br i1 %.not.i64160, label %._crit_edge.i.thread, label %.lr.ph.i.outer, !llvm.loop !6

.lr.ph.i.outer:                                   ; preds = %bb.i, %.thread
  %i.bl = phi ptr [ %i.bk, %.thread ], [ %i.ap, %bb.i ]
  %.ph = phi ptr [ %.pre.i, %.thread ], [ %i.al, %bb.i ] ; 7 uses
  %.019.i.ph = phi i1 [ true, %.thread ], [ false, %bb.i ]
  %.sroa.012.018.i.ph = phi ptr [ %i.bi, %.thread ], [ %i.an, %bb.i ]
  br label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.ph, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.ph, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = icmp eq ptr %i.bn, %i.bp
  br i1 %i.bq, label %._crit_edge.i.thread, label %_ZN6Assimp11ASEImporter23GenerateDefaultMaterialEv.exit

._crit_edge.i.thread:                             ; preds = %.thread, %._crit_edge.thread.i, %._crit_edge.i
  %.lcssa26.i = phi ptr [ %.ph, %._crit_edge.thread.i ], [ %.ph, %._crit_edge.i ], [ %.pre.i, %.thread ]
  %i.br = getelementptr inbounds nuw i8, ptr %.lcssa26.i, i64 40
  %i.bs = invoke noundef nonnull align 8 dereferenceable(736) ptr @_ZNSt6vectorIN6Assimp3ASE8MaterialESaIS2_EE12emplace_backIJRA16_KcEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 1 dereferenceable(16) @.str.7)
          to label %.noexc65 unwind label %bb.o   ; 0 uses

.noexc65:                                         ; preds = %._crit_edge.i.thread
  %i.bt = load ptr, ptr %i.ak, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.bv = load ptr, ptr %i.bu, align 8            ; 5 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -696
  store <2 x float> splat (float 6.000000e-01), ptr %i.bw, align 4
  %i.bx = getelementptr inbounds i8, ptr %i.bv, i64 -688
  store float 6.000000e-01, ptr %i.bx, align 4
  %i.by = getelementptr inbounds i8, ptr %i.bv, i64 -676
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 5.000000e-02>, ptr %i.by, align 4
  %i.bz = getelementptr inbounds i8, ptr %i.bv, i64 -660
  store <2 x float> splat (float 5.000000e-02), ptr %i.bz, align 4
  %i.ca = getelementptr inbounds i8, ptr %i.bv, i64 -652
  store i32 2, ptr %i.ca, align 4
  %.pre = load ptr, ptr %i.ak, align 8
  br label %_ZN6Assimp11ASEImporter23GenerateDefaultMaterialEv.exit

_ZN6Assimp11ASEImporter23GenerateDefaultMaterialEv.exit: ; preds = %.noexc65, %._crit_edge.thread.i
  %i.cb = phi ptr [ %.pre, %.noexc65 ], [ %.ph, %._crit_edge.thread.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 64 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 72 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %i.cf = load ptr, ptr %i.cc, align 8            ; 2 uses
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = sdiv exact i64 %i.ci, 720               ; 2 uses
  %i.ck = shl nsw i64 %i.cj, 1                    ; 2 uses
  %i.cl = icmp ugt i64 %i.ck, 1152921504606846975
  br i1 %i.cl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN6Assimp11ASEImporter23GenerateDefaultMaterialEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #24
          to label %.noexc66 unwind label %bb.p

.noexc66:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %_ZN6Assimp11ASEImporter23GenerateDefaultMaterialEv.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %.not376 = icmp eq ptr %i.ce, %i.cf
  br i1 %.not376, label %.critedge, label %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.m
  %i.cn = shl nsw i64 %i.cj, 4
  %i.co = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #25
          to label %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit unwind label %bb.p ; 3 uses

_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit:     ; preds = %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.co, ptr %7, align 8
  store ptr %i.co, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.ck
  store ptr %i.cq, ptr %i.cm, align 8
  %.pre295 = load ptr, ptr %i.cc, align 8         ; 2 uses
  %.pre296 = load ptr, ptr %i.cd, align 8
  %i.cr = icmp eq ptr %.pre295, %.pre296
  br i1 %i.cr, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.q

._crit_edge:                                      ; preds = %bb.x
  br i1 %.245, label %bb.y, label %.critedge

bb.n:                                             ; preds = %bb.f
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.o:                                             ; preds = %._crit_edge.i.thread, %bb.h
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i, %bb.l, %bb.z, %bb.y
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.q:                                             ; preds = %.lr.ph, %bb.x
  %i.cw = phi ptr [ %i.cb, %.lr.ph ], [ %i.dq, %bb.x ]
  %.043195 = phi i1 [ false, %.lr.ph ], [ %.245, %bb.x ] ; 2 uses
  %.sroa.0148.0194 = phi ptr [ %.pre295, %.lr.ph ], [ %i.dr, %bb.x ] ; 7 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0148.0194, i64 716
  %i.cy = load i8, ptr %i.cx, align 4, !range !4, !noundef !5
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN6Assimp11ASEImporter25BuildUniqueRepresentationERNS_3ASE4MeshE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(717) %.sroa.0148.0194)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0148.0194, i64 48
  %i.db = load ptr, ptr %i.da, align 8            ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0148.0194, i64 56
  %i.dd = load ptr, ptr %i.dc, align 8            ; 2 uses
  %i.de = icmp eq ptr %i.db, %i.dd
  %10 = load i8, ptr %i.cs, align 8, !range !4
  %11 = trunc nuw i8 %10 to i1
  %or.cond.i = select i1 %i.de, i1 true, i1 %11
  br i1 %or.cond.i, label %.loopexit.i, label %.preheader.i

bb.t:                                             ; preds = %bb.v
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.010.016.i, i64 12 ; 2 uses
  %.not.i68 = icmp eq ptr %i.df, %i.dd
  br i1 %.not.i68, label %.loopexit.i, label %.preheader.i, !llvm.loop !8

.preheader.i:                                     ; preds = %bb.s, %bb.t
  %.sroa.010.016.i = phi ptr [ %i.df, %bb.t ], [ %i.db, %bb.s ] ; 4 uses
  %i.dg = load float, ptr %.sroa.010.016.i, align 4
  %i.dh = fcmp une float %i.dg, 0.000000e+00
  br i1 %i.dh, label %_ZN6Assimp11ASEImporter15GenerateNormalsERNS_3ASE4MeshE.exit, label %bb.u

bb.u:                                             ; preds = %.preheader.i
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.010.016.i, i64 4
  %i.dj = load float, ptr %i.di, align 4
  %i.dk = fcmp une float %i.dj, 0.000000e+00
  br i1 %i.dk, label %_ZN6Assimp11ASEImporter15GenerateNormalsERNS_3ASE4MeshE.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.010.016.i, i64 8
  %i.dm = load float, ptr %i.dl, align 4
  %i.dn = fcmp une float %i.dm, 0.000000e+00
  br i1 %i.dn, label %_ZN6Assimp11ASEImporter15GenerateNormalsERNS_3ASE4MeshE.exit, label %bb.t

.loopexit.i:                                      ; preds = %bb.t, %bb.s
  invoke void @_Z34ComputeNormalsWithSmoothingsGroupsIN6Assimp3ASE4FaceEEvR23MeshWithSmoothingGroupsIT_E(ptr noundef nonnull align 8 dereferenceable(717) %.sroa.0148.0194)
          to label %_ZN6Assimp11ASEImporter15GenerateNormalsERNS_3ASE4MeshE.exit unwind label %bb.w

_ZN6Assimp11ASEImporter15GenerateNormalsERNS_3ASE4MeshE.exit: ; preds = %bb.u, %bb.v, %.preheader.i, %.loopexit.i
  %i.do = phi i1 [ %.043195, %.loopexit.i ], [ true, %.preheader.i ], [ true, %bb.v ], [ true, %bb.u ]
  invoke void @_ZN6Assimp11ASEImporter13ConvertMeshesERNS_3ASE4MeshERSt6vectorIP6aiMeshSaIS6_EE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(717) %.sroa.0148.0194, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %_ZN6Assimp11ASEImporter15GenerateNormalsERNS_3ASE4MeshE.exit._crit_edge unwind label %bb.w

_ZN6Assimp11ASEImporter15GenerateNormalsERNS_3ASE4MeshE.exit._crit_edge: ; preds = %_ZN6Assimp11ASEImporter15GenerateNormalsERNS_3ASE4MeshE.exit
  %.pre297 = load ptr, ptr %i.ak, align 8
  br label %bb.x

bb.w:                                             ; preds = %.loopexit.i, %_ZN6Assimp11ASEImporter15GenerateNormalsERNS_3ASE4MeshE.exit, %bb.r
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.x:                                             ; preds = %_ZN6Assimp11ASEImporter15GenerateNormalsERNS_3ASE4MeshE.exit._crit_edge, %bb.q
  %i.dq = phi ptr [ %i.cw, %bb.q ], [ %.pre297, %_ZN6Assimp11ASEImporter15GenerateNormalsERNS_3ASE4MeshE.exit._crit_edge ] ; 2 uses
  %.245 = phi i1 [ %.043195, %bb.q ], [ %i.do, %_ZN6Assimp11ASEImporter15GenerateNormalsERNS_3ASE4MeshE.exit._crit_edge ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0148.0194, i64 720 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 72
  %i.dt = load ptr, ptr %i.ds, align 8
  %.not167 = icmp eq ptr %i.dr, %i.dt
  br i1 %.not167, label %._crit_edge, label %bb.q, !llvm.loop !9

bb.y:                                             ; preds = %._crit_edge
  %i.du = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.z unwind label %bb.p

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.du, ptr noundef nonnull @.str.6)
          to label %.critedge unwind label %bb.p

.critedge:                                        ; preds = %bb.m, %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit, %bb.z, %._crit_edge
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8            ; 3 uses
  %i.dx = load ptr, ptr %7, align 8               ; 3 uses
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz                    ; 2 uses
  %i.eb = lshr exact i64 %i.ea, 3
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i32 %i.ec, ptr %i.ed, align 8
  %i.ee = and i64 %i.ea, 34359738360
  %i.ef = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ee) #25
          to label %bb.aa unwind label %bb.ab     ; 4 uses

bb.aa:                                            ; preds = %.critedge
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.ef, ptr %i.eg, align 8
  %.not168196 = icmp eq ptr %i.dx, %i.dw
  br i1 %.not168196, label %._crit_edge201, label %.lr.ph200

._crit_edge201.loopexit:                          ; preds = %bb.ad
  %.pre299.a = load ptr, ptr %i.eg, align 8
  br label %._crit_edge201

._crit_edge201:                                   ; preds = %._crit_edge201.loopexit, %bb.aa
  %i.eh = phi ptr [ %i.ef, %bb.aa ], [ %.pre299.a, %._crit_edge201.loopexit ]
  %.046.lcssa = phi ptr [ %i.ef, %bb.aa ], [ %.147, %._crit_edge201.loopexit ]
  %i.ei = ptrtoint ptr %.046.lcssa to i64
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = lshr exact i64 %i.ek, 3
  %i.em = trunc i64 %i.el to i32
  store i32 %i.em, ptr %i.ed, align 8
  invoke void @_ZN6Assimp11ASEImporter20BuildMaterialIndicesEv(ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %bb.ae unwind label %bb.ab

bb.ab:                                            ; preds = %._crit_edge201, %.critedge
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.lr.ph200:                                        ; preds = %bb.aa, %bb.ad
  %i.eo = phi ptr [ %i.et, %bb.ad ], [ %i.dw, %bb.aa ]
  %.046198 = phi ptr [ %.147, %bb.ad ], [ %i.ef, %bb.aa ] ; 3 uses
  %.sroa.0143.0197 = phi ptr [ %i.eu, %bb.ad ], [ %i.dx, %bb.aa ] ; 2 uses
  %i.ep = load ptr, ptr %.sroa.0143.0197, align 8 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load i32, ptr %i.eq, align 8
  %.not = icmp eq i32 %i.er, 0
  br i1 %.not, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph200
  %i.es = getelementptr inbounds nuw i8, ptr %.046198, i64 8
  store ptr %i.ep, ptr %.046198, align 8
  %.pre298 = load ptr, ptr %i.dv, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph200, %bb.ac
  %i.et = phi ptr [ %.pre298, %bb.ac ], [ %i.eo, %.lr.ph200 ] ; 2 uses
  %.147 = phi ptr [ %i.es, %bb.ac ], [ %.046198, %.lr.ph200 ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0143.0197, i64 8 ; 2 uses
  %.not168 = icmp eq ptr %i.eu, %i.et
  br i1 %.not168, label %._crit_edge201.loopexit, label %.lr.ph200, !llvm.loop !10

bb.ae:                                            ; preds = %._crit_edge201
  %i.ev = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ew = load ptr, ptr %i.cm, align 8
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %i.ev to i64
  %i.ez = sub i64 %i.ex, %i.ey
  call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef %i.ez) #23
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit:           ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %.pre300 = load ptr, ptr %i.ak, align 8         ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre300, i64 72
  %.pre301 = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert302 = getelementptr inbounds nuw i8, ptr %.pre300, i64 64
  %.pre303 = load ptr, ptr %.phi.trans.insert302, align 8
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ab, %bb.w, %bb.p
  %.pn49 = phi { ptr, i32 } [ %i.dp, %bb.w ], [ %i.en, %bb.ab ], [ %i.cv, %bb.p ]
  %i.fa = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i.i.i71 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i71, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit72, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fb = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = ptrtoint ptr %i.fa to i64
  %i.ff = sub i64 %i.fd, %i.fe
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.ff) #23
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit72

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit72:         ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.ca

bb.ai:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit, %bb.i
  %i.fg = phi ptr [ %.pre303, %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit ], [ %i.an, %bb.i ]
  %i.fh = phi ptr [ %.pre301, %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit ], [ %i.an, %bb.i ]
  %i.fi = phi ptr [ %.pre300, %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit ], [ %i.al, %bb.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = ptrtoint ptr %i.fg to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = sdiv exact i64 %i.fl, 720
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 112 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 120 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8            ; 2 uses
  %i.fq = load ptr, ptr %i.fn, align 8            ; 2 uses
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = sub i64 %i.fr, %i.fs
  %i.fu = sdiv exact i64 %i.ft, 368
  %i.fv = add nsw i64 %i.fu, %i.fm
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fi, i64 136
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fi, i64 144
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = load ptr, ptr %i.fw, align 8
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = sdiv exact i64 %i.gc, 360
  %i.ge = add nsw i64 %i.fv, %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fi, i64 88
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fi, i64 96
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = load ptr, ptr %i.gf, align 8
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = sub i64 %i.gj, %i.gk
  %i.gm = sdiv exact i64 %i.gl, 344
  %i.gn = add nsw i64 %i.ge, %i.gm                ; 4 uses
  %i.go = icmp ugt i64 %i.gn, 1152921504606846975
  br i1 %i.go, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #24
          to label %.noexc74 unwind label %bb.al

.noexc74:                                         ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.gp = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 13 uses
  %.not377 = icmp eq i64 %i.gn, 0
  br i1 %.not377, label %_ZNSt6vectorIPN6Assimp3ASE8BaseNodeESaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIPN6Assimp3ASE8BaseNodeESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPN6Assimp3ASE8BaseNodeESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.ak
  %i.gq = shl nuw nsw i64 %i.gn, 3
  %i.gr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gq) #25
          to label %.noexc75 unwind label %bb.al  ; 4 uses

.noexc75:                                         ; preds = %_ZNSt12_Vector_baseIPN6Assimp3ASE8BaseNodeESaIS3_EE11_M_allocateEm.exit.i
  %i.gs = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.gr, ptr %8, align 8
end_hunk_0
begin_hunk_1_@_ZN6Assimp11ASEImporter25BuildUniqueRepresentationERNS_3ASE4MeshE:bb.a
  %i.ud = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ue = load ptr, ptr %i.ud, align 8
  %i.uf = ptrtoint ptr %i.ue to i64
  %i.ug = ptrtoint ptr %i.uc to i64
  %i.uh = sub i64 %i.uf, %i.ug
  call void @_ZdlPvm(ptr noundef nonnull %i.uc, i64 noundef %i.uh) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit93

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit93:  ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit91.7, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

bb.cq:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.av, %bb.cg, %bb.bx
  %.pn.pn = phi { ptr, i32 } [ %i.rl, %bb.bx ], [ %i.sa, %bb.cg ], [ %i.is, %bb.av ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.d, %bb.b
  %.pn73 = phi { ptr, i32 } [ %i.x, %bb.d ], [ %.pn.pn, %bb.cq ], [ %i.w, %bb.b ]
  call void @_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.ui = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i.i.i94 = icmp eq ptr %i.ui, null
  br i1 %.not.i.i.i94, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit95, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.uj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.uk = load ptr, ptr %i.uj, align 8
  %i.ul = ptrtoint ptr %i.uk to i64
  %i.um = ptrtoint ptr %i.ui to i64
  %i.un = sub i64 %i.ul, %i.um
  call void @_ZdlPvm(ptr noundef nonnull %i.ui, i64 noundef %i.un) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit95

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit95:  ; preds = %bb.cr, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.uo = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i96 = icmp eq ptr %i.uo, null
  br i1 %.not.i.i.i96, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EED2Ev.exit97, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit95
  %i.up = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.uq = load ptr, ptr %i.up, align 8
  %i.ur = ptrtoint ptr %i.uq to i64
  %i.us = ptrtoint ptr %i.uo to i64
  %i.ut = sub i64 %i.ur, %i.us
  call void @_ZdlPvm(ptr noundef nonnull %i.uo, i64 noundef %i.ut) #23
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EED2Ev.exit97

_ZNSt6vectorI9aiColor4tIfESaIS1_EED2Ev.exit97:    ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit95, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.uu = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.uv = load ptr, ptr %i.uu, align 8            ; 3 uses
  %.not.i.i.i98 = icmp eq ptr %i.uv, null
  br i1 %.not.i.i.i98, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EED2Ev.exit97
  %i.uw = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.ux = load ptr, ptr %i.uw, align 8
  %i.uy = ptrtoint ptr %i.ux to i64
  %i.uz = ptrtoint ptr %i.uv to i64
  %i.va = sub i64 %i.uy, %i.uz
  call void @_ZdlPvm(ptr noundef nonnull %i.uv, i64 noundef %i.va) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99:  ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EED2Ev.exit97, %bb.cu
  %i.vb = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.vc = load ptr, ptr %i.vb, align 16           ; 3 uses
  %.not.i.i.i98.1 = icmp eq ptr %i.vc, null
  br i1 %.not.i.i.i98.1, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99.1, label %bb.cv

bb.cv:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99
  %i.vd = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.ve = load ptr, ptr %i.vd, align 16
  %i.vf = ptrtoint ptr %i.ve to i64
  %i.vg = ptrtoint ptr %i.vc to i64
  %i.vh = sub i64 %i.vf, %i.vg
  call void @_ZdlPvm(ptr noundef nonnull %i.vc, i64 noundef %i.vh) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99.1

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99.1: ; preds = %bb.cv, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99
  %i.vi = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.vj = load ptr, ptr %i.vi, align 8            ; 3 uses
  %.not.i.i.i98.2 = icmp eq ptr %i.vj, null
  br i1 %.not.i.i.i98.2, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99.2, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99.1
  %i.vk = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.vl = load ptr, ptr %i.vk, align 8
  %i.vm = ptrtoint ptr %i.vl to i64
  %i.vn = ptrtoint ptr %i.vj to i64
  %i.vo = sub i64 %i.vm, %i.vn
  call void @_ZdlPvm(ptr noundef nonnull %i.vj, i64 noundef %i.vo) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99.2

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99.2: ; preds = %bb.cw, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99.1
  %i.vp = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.vq = load ptr, ptr %i.vp, align 16           ; 3 uses
  %.not.i.i.i98.3 = icmp eq ptr %i.vq, null
  br i1 %.not.i.i.i98.3, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99.3, label %bb.cx

bb.cx:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99.2
  %i.vr = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.vs = load ptr, ptr %i.vr, align 16
  %i.vt = ptrtoint ptr %i.vs to i64
  %i.vu = ptrtoint ptr %i.vq to i64
  %i.vv = sub i64 %i.vt, %i.vu
  call void @_ZdlPvm(ptr noundef nonnull %i.vq, i64 noundef %i.vv) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99.3

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99.3: ; preds = %bb.cx, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99.2
  %i.vw = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.vx = load ptr, ptr %i.vw, align 8            ; 3 uses
  %.not.i.i.i98.4 = icmp eq ptr %i.vx, null
  br i1 %.not.i.i.i98.4, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99.4, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99.3
  %i.vy = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.vz = load ptr, ptr %i.vy, align 8
  %i.wa = ptrtoint ptr %i.vz to i64
  %i.wb = ptrtoint ptr %i.vx to i64
  %i.wc = sub i64 %i.wa, %i.wb
  call void @_ZdlPvm(ptr noundef nonnull %i.vx, i64 noundef %i.wc) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99.4

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99.4: ; preds = %bb.cy, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99.3
  %i.wd = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.we = load ptr, ptr %i.wd, align 16           ; 3 uses
  %.not.i.i.i98.5 = icmp eq ptr %i.we, null
  br i1 %.not.i.i.i98.5, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99.5, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99.4
  %i.wf = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.wg = load ptr, ptr %i.wf, align 16
  %i.wh = ptrtoint ptr %i.wg to i64
  %i.wi = ptrtoint ptr %i.we to i64
  %i.wj = sub i64 %i.wh, %i.wi
  call void @_ZdlPvm(ptr noundef nonnull %i.we, i64 noundef %i.wj) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99.5

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99.5: ; preds = %bb.cz, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99.4
  %i.wk = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.wl = load ptr, ptr %i.wk, align 8            ; 3 uses
  %.not.i.i.i98.6 = icmp eq ptr %i.wl, null
  br i1 %.not.i.i.i98.6, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99.6, label %bb.da

bb.da:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99.5
  %i.wm = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.wn = load ptr, ptr %i.wm, align 8
  %i.wo = ptrtoint ptr %i.wn to i64
  %i.wp = ptrtoint ptr %i.wl to i64
  %i.wq = sub i64 %i.wo, %i.wp
  call void @_ZdlPvm(ptr noundef nonnull %i.wl, i64 noundef %i.wq) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99.6

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99.6: ; preds = %bb.da, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99.5
  %i.wr = load ptr, ptr %3, align 16              ; 3 uses
  %.not.i.i.i98.7 = icmp eq ptr %i.wr, null
  br i1 %.not.i.i.i98.7, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99.7, label %bb.db

bb.db:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99.6
  %i.ws = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.wt = load ptr, ptr %i.ws, align 16
  %i.wu = ptrtoint ptr %i.wt to i64
  %i.wv = ptrtoint ptr %i.wr to i64
  %i.ww = sub i64 %i.wu, %i.wv
  call void @_ZdlPvm(ptr noundef nonnull %i.wr, i64 noundef %i.ww) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99.7

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99.7: ; preds = %bb.db, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99.6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.wx = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i100 = icmp eq ptr %i.wx, null
  br i1 %.not.i.i.i100, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit101, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99.7
  %i.wy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.wz = load ptr, ptr %i.wy, align 8
  %i.xa = ptrtoint ptr %i.wz to i64
  %i.xb = ptrtoint ptr %i.wx to i64
  %i.xc = sub i64 %i.xa, %i.xb
  call void @_ZdlPvm(ptr noundef nonnull %i.wx, i64 noundef %i.xc) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit101

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit101: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit99.7, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %.pn73

bb.dd:                                            ; preds = %bb.au
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp11ASEImporter15GenerateNormalsERNS_3ASE4MeshE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(717) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %3 = load i8, ptr %2, align 8, !range !4
  %4 = trunc nuw i8 %3 to i1
  %or.cond = select i1 %i.e, i1 true, i1 %4
  br i1 %or.cond, label %.loopexit, label %.preheader

bb.b:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.010.016, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.f, %i.d
  br i1 %.not, label %.loopexit, label %.preheader, !llvm.loop !8

.preheader:                                       ; preds = %bb.a, %bb.b
  %.sroa.010.016 = phi ptr [ %i.f, %bb.b ], [ %i.b, %bb.a ] ; 4 uses
  %i.g = load float, ptr %.sroa.010.016, align 4
  %i.h = fcmp une float %i.g, 0.000000e+00
  br i1 %i.h, label %.thread, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.016, i64 4
  %i.j = load float, ptr %i.i, align 4
  %i.k = fcmp une float %i.j, 0.000000e+00
  br i1 %i.k, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.010.016, i64 8
  %i.m = load float, ptr %i.l, align 4
  %i.n = fcmp une float %i.m, 0.000000e+00
  br i1 %i.n, label %.thread, label %bb.b

.loopexit:                                        ; preds = %bb.b, %bb.a
  tail call void @_Z34ComputeNormalsWithSmoothingsGroupsIN6Assimp3ASE4FaceEEvR23MeshWithSmoothingGroupsIT_E(ptr noundef nonnull align 8 dereferenceable(72) %1)
  br label %.thread

.thread:                                          ; preds = %.preheader, %bb.c, %bb.d, %.loopexit
  %.1 = phi i1 [ false, %.loopexit ], [ true, %bb.d ], [ true, %bb.c ], [ true, %.preheader ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11ASEImporter13ConvertMeshesERNS_3ASE4MeshERSt6vectorIP6aiMeshSaIS6_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(717) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.126", align 8   ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = sdiv exact i64 %i.l, 736                 ; 2 uses
  %.not = icmp ugt i64 %i.m, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr %i.a, align 8
  %i.p = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.p, ptr noundef nonnull @.str.32)
  %.pre = load ptr, ptr %i.d, align 8             ; 2 uses
  %.pre566 = load i32, ptr %i.a, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %.pre567 = load ptr, ptr %.phi.trans.insert, align 8
  %.pre576 = zext i32 %.pre566 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pre-phi = phi i64 [ %.pre576, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.q = phi ptr [ %.pre567, %bb.b ], [ %i.i, %bb.a ]
  %i.r = phi ptr [ %.pre, %bb.b ], [ %i.e, %bb.a ]
  %i.s = getelementptr inbounds nuw [736 x i8], ptr %i.q, i64 %.pre-phi ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 696 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 704 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %bb.bo, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.u to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 5 uses
  %i.ab = sdiv exact i64 %i.aa, 736
  %i.ac = icmp ugt i64 %i.ab, 12531755484857032
  br i1 %i.ac, label %.noexc.i.i, label %bb.e, !prof !23

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24, !inline_history !44
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #25, !inline_history !44 ; 8 uses
  %i.ae = load ptr, ptr %i.t, align 8
  %i.af = load ptr, ptr %i.v, align 8
  %i.ag = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6Assimp3ASE8MaterialESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.ae, ptr %i.af, ptr noundef nonnull %i.ad)
          to label %_ZNSt6vectorIN6Assimp3ASE8MaterialESaIS2_EEC2ERKS4_.exit unwind label %_ZNSt12_Vector_baseIN6Assimp3ASE8MaterialESaIS2_EED2Ev.exit.i, !inline_history !45 ; 4 uses

common.resume:                                    ; preds = %_ZNSt6vectorIN6Assimp3ASE8MaterialESaIS2_EED2Ev.exit302, %bb.dk, %_ZNSt12_Vector_baseIN6Assimp3ASE8MaterialESaIS2_EED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %_ZNSt12_Vector_baseIN6Assimp3ASE8MaterialESaIS2_EED2Ev.exit.i ], [ %.pn268.pn, %bb.dk ], [ %.pn266, %_ZNSt6vectorIN6Assimp3ASE8MaterialESaIS2_EED2Ev.exit302 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt12_Vector_baseIN6Assimp3ASE8MaterialESaIS2_EED2Ev.exit.i: ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.aa) #23, !inline_history !44
  br label %common.resume

_ZNSt6vectorIN6Assimp3ASE8MaterialESaIS2_EEC2ERKS4_.exit: ; preds = %bb.e
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ad to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = sdiv i64 %i.ak, 736                     ; 5 uses
  %i.am = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.al, i64 24) ; 2 uses
  %i.an = extractvalue { i64, i1 } %i.am, 1
  %i.ao = extractvalue { i64, i1 } %i.am, 0       ; 2 uses
  %i.ap = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ao, i64 8) ; 2 uses
  %i.aq = extractvalue { i64, i1 } %i.ap, 1
  %i.ar = or i1 %i.an, %i.aq
  %i.as = extractvalue { i64, i1 } %i.ap, 0
  %i.at = select i1 %i.ar, i64 -1, i64 %i.as
  %i.au = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.at) #25
          to label %bb.f unwind label %bb.g       ; 5 uses

bb.f:                                             ; preds = %_ZNSt6vectorIN6Assimp3ASE8MaterialESaIS2_EEC2ERKS4_.exit
  store i64 %i.al, ptr %i.au, align 16
  %.ptr257 = getelementptr i8, ptr %i.au, i64 8   ; 4 uses
  %i.av = icmp eq ptr %i.ag, %i.ad                ; 2 uses
  br i1 %i.av, label %.loopexit459, label %.loopexit459.loopexit

.loopexit459.loopexit:                            ; preds = %bb.f
  %i.aw = add nsw i64 %i.ao, -24                  ; 2 uses
  %i.ax = urem i64 %i.aw, 24
  %i.ay = sub nsw i64 %i.aw, %i.ax
  %i.az = add nsw i64 %i.ay, 24
  tail call void @llvm.memset.p0.i64(ptr align 8 %.ptr257, i8 0, i64 %i.az, i1 false)
  br label %.loopexit459

.loopexit459:                                     ; preds = %.loopexit459.loopexit, %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not529 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not529, label %.preheader448, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit459
  %i.be = getelementptr [24 x i8], ptr %.ptr257, i64 %i.al ; 3 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 -24    ; 2 uses
  %i.bg = getelementptr i8, ptr %i.be, i64 -16    ; 3 uses
  %i.bh = getelementptr i8, ptr %i.be, i64 -8     ; 2 uses
  br label %bb.h

.preheader448:                                    ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, %.loopexit459
  br i1 %i.av, label %._crit_edge504, label %.lr.ph503

.lr.ph503:                                        ; preds = %.preheader448
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 664 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 632 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 684
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 616
  br label %bb.u

bb.g:                                             ; preds = %_ZNSt6vectorIN6Assimp3ASE8MaterialESaIS2_EEC2ERKS4_.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.h:                                             ; preds = %.lr.ph, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.bu = phi ptr [ %i.bd, %.lr.ph ], [ %i.dt, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ]
  %i.bv = phi i64 [ 0, %.lr.ph ], [ %i.dr, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ]
  %storemerge467 = phi i32 [ 0, %.lr.ph ], [ %i.dq, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 5 uses
  %i.bw = getelementptr inbounds nuw [132 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 124
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %.not265 = icmp ugt i64 %i.al, %i.bz
  br i1 %.not265, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.j unwind label %.loopexit454

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ca, ptr noundef nonnull @.str.33)
          to label %bb.k unwind label %.loopexit454

bb.k:                                             ; preds = %bb.j
  %i.cb = load ptr, ptr %i.bg, align 8            ; 4 uses
  %i.cc = load ptr, ptr %i.bh, align 8
  %.not.i = icmp eq ptr %i.cb, %i.cc
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %storemerge467, ptr %i.cb, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store ptr %i.cd, ptr %i.bg, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.m:                                             ; preds = %bb.k
  %i.ce = load ptr, ptr %i.bf, align 8            ; 4 uses
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg                    ; 6 uses
  %i.ci = icmp eq i64 %i.ch, 9223372036854775804
  br i1 %i.ci, label %.invoke, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.m, %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #24
          to label %.cont unwind label %.loopexit.split-lp455

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.cj = ashr exact i64 %i.ch, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cj, i64 1)
  %i.ck = add nsw i64 %.sroa.speculated.i.i.i, %i.cj ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.cj
end_hunk_1
