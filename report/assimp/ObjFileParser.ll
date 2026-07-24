inline.NumInlined: 2069
inline.NumDeleted: 754
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN6Assimp13ObjFileParser9parseFileERNS_14IOStreamBufferIcEE:bb.a
  %i.bw = icmp eq ptr %i.bv, %i.y
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.q
  %i.bx = load i64, ptr %i.y, align 8
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.ck

bb.r:                                             ; preds = %bb.l
  switch i8 %i.bc, label %bb.cf [
    i8 118, label %bb.s
    i8 99, label %bb.cb
    i8 111, label %bb.ca
    i8 115, label %bb.bx
    i8 35, label %bb.al
    i8 117, label %bb.ao
    i8 109, label %bb.be
    i8 103, label %bb.bw
    i8 102, label %bb.ak
    i8 108, label %bb.aj
    i8 112, label %bb.aj
  ]

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bb, i64 1 ; 2 uses
  store ptr %i.bz, ptr %0, align 8
  %i.ca = load i8, ptr %i.bz, align 1
  switch i8 %i.ca, label %.backedge [
    i8 32, label %bb.t
    i8 9, label %bb.t
    i8 116, label %bb.af
    i8 110, label %bb.ai
  ]

.backedge:                                        ; preds = %bb.s, %_ZN6Assimp13ObjFileParser14getGroupNumberEv.exit, %_ZN6Assimp13ObjFileParser10getCommentEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %bb.ab, %bb.ac, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit77, %bb.ca, %bb.bw, %bb.ak, %bb.ai, %bb.ag, %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  %.043.be = phi i1 [ %.144, %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit ], [ false, %bb.ca ], [ false, %bb.ag ], [ false, %bb.ai ], [ false, %bb.s ], [ false, %bb.ak ], [ false, %_ZN6Assimp13ObjFileParser10getCommentEv.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ], [ false, %bb.bw ], [ false, %_ZN6Assimp13ObjFileParser14getGroupNumberEv.exit ], [ false, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit77 ], [ false, %bb.ac ], [ false, %bb.ab ]
  br label %bb.b, !llvm.loop !8

bb.t:                                             ; preds = %bb.s, %bb.s
  %i.cb = call noundef i64 @_ZN6Assimp13ObjFileParser32getNumComponentsInDataDefinitionEv(ptr noundef nonnull align 8 dereferenceable(4184) %0)
  switch i64 %i.cb, label %bb.ab [
    i64 3, label %bb.u
    i64 4, label %bb.w
    i64 6, label %bb.x
  ]

bb.u:                                             ; preds = %bb.t
  %i.cc = load ptr, ptr %i.v, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 104
  invoke void @_ZN6Assimp13ObjFileParser10getVector3ERSt6vectorI10aiVector3tIfESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(4184) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cd)
          to label %bb.ab unwind label %bb.v

bb.v:                                             ; preds = %bb.aa, %bb.w, %bb.u
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.w:                                             ; preds = %bb.t
  %i.cf = load ptr, ptr %i.v, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 104
  invoke void @_ZN6Assimp13ObjFileParser21getHomogeneousVector3ERSt6vectorI10aiVector3tIfESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(4184) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cg)
          to label %bb.ab unwind label %bb.v

bb.x:                                             ; preds = %bb.t
  %i.ch = load ptr, ptr %i.v, align 8             ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 152 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 160
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %i.cl = load ptr, ptr %i.ci, align 8
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = sdiv exact i64 %i.co, 12                ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 104
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 112
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = load ptr, ptr %i.cq, align 8
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = sdiv exact i64 %i.cw, 12                ; 2 uses
  %i.cy = icmp ult i64 %i.cp, %i.cx
  br i1 %i.cy, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store <2 x float> zeroinitializer, ptr %4, align 8
  store float 0.000000e+00, ptr %i.w, align 8
  %i.cz = sub nuw nsw i64 %i.cx, %i.cp
  invoke void @_ZNSt6vectorI10aiVector3tIfESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr %i.ck, i64 noundef %i.cz, ptr noundef nonnull align 4 dereferenceable(12) %4)
          to label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit unwind label %bb.z

_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %.pre193 = load ptr, ptr %i.v, align 8
  br label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.ck

bb.aa:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit, %bb.x
  %i.db = phi ptr [ %.pre193, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit ], [ %i.ch, %bb.x ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 104
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 152
  invoke void @_ZN6Assimp13ObjFileParser14getTwoVectors3ERSt6vectorI10aiVector3tIfESaIS3_EES6_(ptr noundef nonnull align 8 dereferenceable(4184) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %i.dd)
          to label %bb.ab unwind label %bb.v

bb.ab:                                            ; preds = %bb.t, %bb.w, %bb.aa, %bb.u
  %i.de = load ptr, ptr %i.v, align 8             ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 152 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8            ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 160
  %i.di = load ptr, ptr %i.dh, align 8            ; 3 uses
  %i.dj = icmp eq ptr %i.dg, %i.di
  br i1 %i.dj, label %.backedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dg to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = sdiv exact i64 %i.dm, 12                ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.de, i64 104
  %i.dp = getelementptr inbounds nuw i8, ptr %i.de, i64 112
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = load ptr, ptr %i.do, align 8
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = sdiv exact i64 %i.du, 12                ; 2 uses
  %i.dw = icmp ult i64 %i.dn, %i.dv
  br i1 %i.dw, label %bb.ad, label %.backedge

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store <2 x float> zeroinitializer, ptr %5, align 8
  store float 0.000000e+00, ptr %i.x, align 8
  %i.dx = sub nuw nsw i64 %i.dv, %i.dn
  invoke void @_ZNSt6vectorI10aiVector3tIfESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.df, ptr %i.di, i64 noundef %i.dx, ptr noundef nonnull align 4 dereferenceable(12) %5)
          to label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit77 unwind label %bb.ae

_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit77: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %.backedge

bb.ae:                                            ; preds = %bb.ad
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.ck

bb.af:                                            ; preds = %bb.s
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  store ptr %i.dz, ptr %0, align 8
  %i.ea = load ptr, ptr %i.v, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 264
  %i.ec = invoke noundef i64 @_ZN6Assimp13ObjFileParser17getTexCoordVectorERSt6vectorI10aiVector3tIfESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(4184) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.eb)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ed = load ptr, ptr %i.v, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 288 ; 2 uses
  %i.ef = trunc i64 %i.ec to i32
  %i.eg = load i32, ptr %i.ee, align 4
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %i.eg, i32 %i.ef)
  store i32 %.sroa.speculated, ptr %i.ee, align 8
  br label %.backedge

bb.ah:                                            ; preds = %bb.af
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.ai:                                            ; preds = %bb.s
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  store ptr %i.ei, ptr %0, align 8
  %i.ej = load ptr, ptr %i.v, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 128
  invoke void @_ZN6Assimp13ObjFileParser10getVector3ERSt6vectorI10aiVector3tIfESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(4184) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ek)
          to label %.backedge unwind label %bb.k

bb.aj:                                            ; preds = %bb.r, %bb.r
  %i.el = icmp eq i8 %i.bc, 108
  %i.em = select i1 %i.el, i32 2, i32 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.r, %bb.aj
  %i.en = phi i32 [ %i.em, %bb.aj ], [ 8, %bb.r ]
  invoke void @_ZN6Assimp13ObjFileParser7getFaceE15aiPrimitiveType(ptr noundef nonnull align 8 dereferenceable(4184) %0, i32 noundef %i.en)
          to label %.backedge unwind label %bb.k

bb.al:                                            ; preds = %bb.r
  %.sroa.0.0.copyload.i = load ptr, ptr %i.g, align 8 ; 7 uses
  %11 = ptrtoaddr ptr %.sroa.0.0.copyload.i to i64
  %.not.i.i78 = icmp ult ptr %i.bb, %.sroa.0.0.copyload.i
  br i1 %.not.i.i78, label %.preheader.i.i, label %_ZN6Assimp13ObjFileParser10getCommentEv.exit

.preheader.i.i:                                   ; preds = %bb.al
  %i.eo = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 -1 ; 2 uses
  %i.ep = icmp eq ptr %i.bb, %i.eo
  br i1 %i.ep, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
  %.sroa.010.021.i.i = phi ptr [ %i.er, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i ], [ %i.bb, %.preheader.i.i ] ; 6 uses
  %i.eq = load i8, ptr %.sroa.010.021.i.i, align 1
  switch i8 %i.eq, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i [
    i8 13, label %.critedge.i.i
    i8 10, label %.critedge.i.i
    i8 0, label %.critedge.i.i
    i8 12, label %.critedge.i.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i:             ; preds = %.lr.ph.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i.i, i64 1 ; 4 uses
  %i.es = icmp eq ptr %i.er, %.sroa.0.0.copyload.i
  %i.et = icmp eq ptr %i.er, %i.eo
  %.0.i.i.i = or i1 %i.es, %i.et
  br i1 %.0.i.i.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !9

.critedge.i.i:                                    ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.preheader.i.i
  %.sroa.010.0.lcssa.i.i = phi ptr [ %i.bb, %.preheader.i.i ], [ %.sroa.010.021.i.i, %.lr.ph.i.i ], [ %.sroa.010.021.i.i, %.lr.ph.i.i ], [ %.sroa.010.021.i.i, %.lr.ph.i.i ], [ %.sroa.010.021.i.i, %.lr.ph.i.i ], [ %i.er, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i ] ; 3 uses
  %.not19.i.i = icmp eq ptr %.sroa.010.0.lcssa.i.i, %.sroa.0.0.copyload.i
  br i1 %.not19.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.critedge.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i.i, i64 1
  %i.ev = load i32, ptr %i.o, align 8
  %i.ew = add i32 %i.ev, 1
  store i32 %i.ew, ptr %i.o, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.critedge.i.i
  %.sroa.010.1.i.i = phi ptr [ %i.eu, %bb.am ], [ %.sroa.010.0.lcssa.i.i, %.critedge.i.i ] ; 5 uses
  %.not2030.i.i = icmp eq ptr %.sroa.010.1.i.i, %.sroa.0.0.copyload.i
  br i1 %.not2030.i.i, label %_ZN6Assimp13ObjFileParser10getCommentEv.exit, label %.lr.ph32.preheader.i.i

.lr.ph32.preheader.i.i:                           ; preds = %bb.an
  %.sroa.010.136.i.i = ptrtoaddr ptr %.sroa.010.1.i.i to i64
  %i.ex = sub i64 %11, %.sroa.010.136.i.i
  %scevgep.i.i = getelementptr i8, ptr %.sroa.010.1.i.i, i64 %i.ex
  br label %.lr.ph32.i.i

.lr.ph32.i.i:                                     ; preds = %.critedge4.i.i, %.lr.ph32.preheader.i.i
  %.sroa.010.231.i.i = phi ptr [ %i.ez, %.critedge4.i.i ], [ %.sroa.010.1.i.i, %.lr.ph32.preheader.i.i ] ; 3 uses
  %i.ey = load i8, ptr %.sroa.010.231.i.i, align 1
  switch i8 %i.ey, label %_ZN6Assimp13ObjFileParser10getCommentEv.exit [
    i8 9, label %.critedge4.i.i
    i8 32, label %.critedge4.i.i
  ]

.critedge4.i.i:                                   ; preds = %.lr.ph32.i.i, %.lr.ph32.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i.i, i64 1 ; 2 uses
  %.not20.i.i = icmp eq ptr %i.ez, %.sroa.0.0.copyload.i
  br i1 %.not20.i.i, label %_ZN6Assimp13ObjFileParser10getCommentEv.exit, label %.lr.ph32.i.i, !llvm.loop !10

_ZN6Assimp13ObjFileParser10getCommentEv.exit:     ; preds = %.lr.ph32.i.i, %.critedge4.i.i, %bb.al, %bb.an
  %.sroa.010.3.i.i = phi ptr [ %i.bb, %bb.al ], [ %.sroa.010.1.i.i, %bb.an ], [ %scevgep.i.i, %.critedge4.i.i ], [ %.sroa.010.231.i.i, %.lr.ph32.i.i ]
  store ptr %.sroa.010.3.i.i, ptr %0, align 8
  br label %.backedge

bb.ao:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store ptr %i.p, ptr %6, align 8
  store i64 0, ptr %i.q, align 8
  store i8 0, ptr %i.p, align 8
  %.sroa.014.0.copyload = load ptr, ptr %i.g, align 8
  %i.fa = invoke ptr @_ZN6Assimp14getNameNoSpaceIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_RNSt7__cxx1112basic_stringIcSt11char_traitsIcES5_EE(ptr nonnull %i.bb, ptr %.sroa.014.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.ap unwind label %bb.az     ; 0 uses

bb.ap:                                            ; preds = %bb.ao
  %i.fb = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef signext 32, i64 noundef 0) #28 ; 2 uses
  %.not62 = icmp eq i64 %i.fb, -1
  br i1 %.not62, label %bb.bb, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !11)
  %i.fc = load i64, ptr %i.q, align 8, !noalias !11
  store ptr %i.r, ptr %7, align 8, !alias.scope !11
  %i.fd = load ptr, ptr %6, align 8, !noalias !11 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.fb, i64 %i.fc) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28, !noalias !11
  store i64 %spec.select.i.i.i, ptr %i.b, align 8, !noalias !11
  %i.fe = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.fe, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.aq
  %i.ff = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc79 unwind label %bb.ba  ; 2 uses

.noexc79:                                         ; preds = %.noexc10.i.i
  store ptr %i.ff, ptr %7, align 8, !alias.scope !11
  %i.fg = load i64, ptr %i.b, align 8, !noalias !11
  store i64 %i.fg, ptr %i.r, align 8, !alias.scope !11
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc79, %bb.aq
  %i.fh = phi ptr [ %i.ff, %.noexc79 ], [ %i.r, %bb.aq ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.as [
    i64 1, label %bb.ar
    i64 0, label %bb.at
  ]

bb.ar:                                            ; preds = %._crit_edge.i.i.i
  %i.fi = load i8, ptr %i.fd, align 1
  store i8 %i.fi, ptr %i.fh, align 1
  br label %bb.at

bb.as:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fh, ptr align 1 %i.fd, i64 %spec.select.i.i.i, i1 false)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %._crit_edge.i.i.i
  %i.fj = load i64, ptr %i.b, align 8, !noalias !11 ; 2 uses
  store i64 %i.fj, ptr %i.s, align 8, !alias.scope !11
  %i.fk = load ptr, ptr %7, align 8, !alias.scope !11
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fj
  store i8 0, ptr %i.fl, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28, !noalias !11
  %i.fm = load ptr, ptr %6, align 8               ; 6 uses
  %i.fn = icmp eq ptr %i.fm, %i.p
  %i.fo = load ptr, ptr %7, align 8               ; 5 uses
  %i.fp = icmp eq ptr %i.fo, %i.r                 ; 2 uses
  br i1 %i.fn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.at
  br i1 %i.fp, label %bb.au, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.at
  br i1 %i.fp, label %bb.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.fq = load i64, ptr %i.s, align 8             ; 3 uses
  %i.fr = icmp ult i64 %i.fq, 16
  call void @llvm.assume(i1 %i.fr)
  switch i64 %i.fq, label %bb.aw [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au
  %i.fs = load i8, ptr %i.fo, align 1
  store i8 %i.fs, ptr %i.fm, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.aw:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fm, ptr align 1 %i.fo, i64 %i.fq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.aw, %bb.av, %bb.au
  %i.ft = load i64, ptr %i.s, align 8             ; 2 uses
  store i64 %i.ft, ptr %i.q, align 8
  %i.fu = load ptr, ptr %6, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.ft
  store i8 0, ptr %i.fv, align 1
  %.pre.i = load ptr, ptr %7, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.fo, ptr %6, align 8
  %i.fw = load <2 x i64>, ptr %i.s, align 8
  store <2 x i64> %i.fw, ptr %i.q, align 8
  br label %bb.ay

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.fx = load i64, ptr %i.p, align 8
  store ptr %i.fo, ptr %6, align 8
  %i.fy = load <2 x i64>, ptr %i.s, align 8
  store <2 x i64> %i.fy, ptr %i.q, align 8
  %.not.i = icmp eq ptr %i.fm, null
  br i1 %.not.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.fm, ptr %7, align 8
  store i64 %i.fx, ptr %i.r, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ay:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.r, ptr %7, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ax, %bb.ay
  %i.fz = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.fm, %bb.ax ], [ %i.r, %bb.ay ]
  store i64 0, ptr %i.s, align 8
  store i8 0, ptr %i.fz, align 1
  %i.ga = load ptr, ptr %7, align 8               ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.r
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.gc = load i64, ptr %i.r, align 8
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.bb

bb.az:                                            ; preds = %bb.ao
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.ba:                                            ; preds = %.noexc10.i.i
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.bd

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %bb.ap
  %i.gg = load i64, ptr %i.q, align 8
  %i.gh = icmp eq i64 %i.gg, 6
  %.pre191 = load ptr, ptr %6, align 8            ; 4 uses
  br i1 %i.gh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread173

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.bb
  %i.gi = load i32, ptr %.pre191, align 1
  %i.gj = xor i32 %i.gi, 1835365237
  %i.gk = getelementptr i8, ptr %.pre191, i64 4
  %i.gl = load i16, ptr %i.gk, align 1
  %i.gm = zext i16 %i.gl to i32
  %i.gn = xor i32 %i.gm, 27764
  %i.go = or i32 %i.gj, %i.gn
  %i.gp = icmp ne i32 %i.go, 0
  %i.gq = zext i1 %i.gp to i32
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread173

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  invoke void @_ZN6Assimp13ObjFileParser15getMaterialDescEv(ptr noundef nonnull align 8 dereferenceable(4184) %0)
          to label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread173_crit_edge unwind label %bb.bc

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread173_crit_edge: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.pre = load ptr, ptr %6, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread173

bb.bc:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
end_hunk_0
begin_hunk_1_@_ZN6Assimp13ObjFileParser9parseFileERNS_14IOStreamBufferIcEE:bb.a

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread173: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread173_crit_edge, %bb.bb, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.gt = phi ptr [ %.pre, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread173_crit_edge ], [ %.pre191, %bb.bb ], [ %.pre191, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ] ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %i.p
  br i1 %i.gu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread173
  %i.gv = load i64, ptr %i.p, align 8
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread173, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %.backedge

bb.bd:                                            ; preds = %bb.ba, %bb.bc, %bb.az
  %.pn63.pn = phi { ptr, i32 } [ %i.ge, %bb.az ], [ %i.gs, %bb.bc ], [ %i.gf, %bb.ba ]
  %i.gx = load ptr, ptr %6, align 8               ; 2 uses
  %i.gy = icmp eq ptr %i.gx, %i.p
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.bd
  %i.gz = load i64, ptr %i.p, align 8
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.ha) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.ck

bb.be:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store ptr %i.k, ptr %8, align 8
  store i64 0, ptr %i.l, align 8
  store i8 0, ptr %i.k, align 8
  %.sroa.09.0.copyload = load ptr, ptr %i.g, align 8
  %i.hb = invoke ptr @_ZN6Assimp14getNameNoSpaceIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_RNSt7__cxx1112basic_stringIcSt11char_traitsIcES5_EE(ptr nonnull %i.bb, ptr %.sroa.09.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.bf unwind label %bb.bp     ; 0 uses

bb.bf:                                            ; preds = %bb.be
  %i.hc = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 noundef signext 32, i64 noundef 0) #28 ; 2 uses
  %.not = icmp eq i64 %i.hc, -1
  br i1 %.not, label %bb.br, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !14)
  %i.hd = load i64, ptr %i.l, align 8, !noalias !14
  store ptr %i.m, ptr %9, align 8, !alias.scope !14
  %i.he = load ptr, ptr %8, align 8, !noalias !14 ; 2 uses
  %spec.select.i.i.i89 = call noundef i64 @llvm.umin.i64(i64 %i.hc, i64 %i.hd) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !14
  store i64 %spec.select.i.i.i89, ptr %i.a, align 8, !noalias !14
  %i.hf = icmp ugt i64 %spec.select.i.i.i89, 15
  br i1 %i.hf, label %.noexc10.i.i91, label %._crit_edge.i.i.i90

.noexc10.i.i91:                                   ; preds = %bb.bg
  %i.hg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc92 unwind label %bb.bq  ; 2 uses

.noexc92:                                         ; preds = %.noexc10.i.i91
  store ptr %i.hg, ptr %9, align 8, !alias.scope !14
  %i.hh = load i64, ptr %i.a, align 8, !noalias !14
  store i64 %i.hh, ptr %i.m, align 8, !alias.scope !14
  br label %._crit_edge.i.i.i90

._crit_edge.i.i.i90:                              ; preds = %.noexc92, %bb.bg
  %i.hi = phi ptr [ %i.hg, %.noexc92 ], [ %i.m, %bb.bg ] ; 2 uses
  switch i64 %spec.select.i.i.i89, label %bb.bi [
    i64 1, label %bb.bh
    i64 0, label %bb.bj
  ]

bb.bh:                                            ; preds = %._crit_edge.i.i.i90
  %i.hj = load i8, ptr %i.he, align 1
  store i8 %i.hj, ptr %i.hi, align 1
  br label %bb.bj

bb.bi:                                            ; preds = %._crit_edge.i.i.i90
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hi, ptr align 1 %i.he, i64 %spec.select.i.i.i89, i1 false)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %._crit_edge.i.i.i90
  %i.hk = load i64, ptr %i.a, align 8, !noalias !14 ; 2 uses
  store i64 %i.hk, ptr %i.n, align 8, !alias.scope !14
  %i.hl = load ptr, ptr %9, align 8, !alias.scope !14
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hk
  store i8 0, ptr %i.hm, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !14
  %i.hn = load ptr, ptr %8, align 8               ; 6 uses
  %i.ho = icmp eq ptr %i.hn, %i.k
  %i.hp = load ptr, ptr %9, align 8               ; 5 uses
  %i.hq = icmp eq ptr %i.hp, %i.m                 ; 2 uses
  br i1 %i.ho, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i99: ; preds = %bb.bj
  br i1 %i.hq, label %bb.bk, label %.thread.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i94: ; preds = %bb.bj
  br i1 %i.hq, label %bb.bk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i95

bb.bk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i99
  %i.hr = load i64, ptr %i.n, align 8             ; 3 uses
  %i.hs = icmp ult i64 %i.hr, 16
  call void @llvm.assume(i1 %i.hs)
  switch i64 %i.hr, label %bb.bm [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i97
    i64 1, label %bb.bl
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.ht = load i8, ptr %i.hp, align 1
  store i8 %i.ht, ptr %i.hn, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i97

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hn, ptr align 1 %i.hp, i64 %i.hr, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i97: ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.hu = load i64, ptr %i.n, align 8             ; 2 uses
  store i64 %i.hu, ptr %i.l, align 8
  %i.hv = load ptr, ptr %8, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hu
  store i8 0, ptr %i.hw, align 1
  %.pre.i98 = load ptr, ptr %9, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit101

.thread.i100:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i99
  store ptr %i.hp, ptr %8, align 8
  %i.hx = load <2 x i64>, ptr %i.n, align 8
  store <2 x i64> %i.hx, ptr %i.l, align 8
  br label %bb.bo

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i95: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i94
  %i.hy = load i64, ptr %i.k, align 8
  store ptr %i.hp, ptr %8, align 8
  %i.hz = load <2 x i64>, ptr %i.n, align 8
  store <2 x i64> %i.hz, ptr %i.l, align 8
  %.not.i96 = icmp eq ptr %i.hn, null
  br i1 %.not.i96, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i95
  store ptr %i.hn, ptr %9, align 8
  store i64 %i.hy, ptr %i.m, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit101

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i95, %.thread.i100
  store ptr %i.m, ptr %9, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i97, %bb.bn, %bb.bo
  %i.ia = phi ptr [ %.pre.i98, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i97 ], [ %i.hn, %bb.bn ], [ %i.m, %bb.bo ]
  store i64 0, ptr %i.n, align 8
  store i8 0, ptr %i.ia, align 1
  %i.ib = load ptr, ptr %9, align 8               ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.m
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit101
  %i.id = load i64, ptr %i.m, align 8
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.ie) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit101, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.br

bb.bp:                                            ; preds = %bb.be
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bq:                                            ; preds = %.noexc10.i.i91
  %i.ig = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.bv

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, %bb.bf
  %i.ih = load i64, ptr %i.l, align 8
  switch i64 %i.ih, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit129.thread175 [
    i64 2, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit106
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit129
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit106: ; preds = %bb.br
  %i.ii = load ptr, ptr %8, align 8
  %i.ij = load i16, ptr %i.ii, align 1
  %i.ik = icmp ne i16 %i.ij, 26477
  %i.il = zext i1 %i.ik to i32
  %i.im = icmp eq i32 %i.il, 0
  br i1 %i.im, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit106.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit129.thread175

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit106.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit106
  %.sroa.01.0.copyload.i107 = load ptr, ptr %0, align 8 ; 5 uses
  %.sroa.0.0.copyload.i108 = load ptr, ptr %i.g, align 8 ; 7 uses
  %12 = ptrtoaddr ptr %.sroa.0.0.copyload.i108 to i64
  %.not.i.i109 = icmp ult ptr %.sroa.01.0.copyload.i107, %.sroa.0.0.copyload.i108
  br i1 %.not.i.i109, label %.preheader.i.i111, label %_ZN6Assimp13ObjFileParser27getGroupNumberAndResolutionEv.exit

.preheader.i.i111:                                ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit106.thread
  %i.in = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i108, i64 -1 ; 2 uses
  %i.io = icmp eq ptr %.sroa.01.0.copyload.i107, %i.in
  br i1 %i.io, label %.critedge.i.i114, label %.lr.ph.i.i112

.lr.ph.i.i112:                                    ; preds = %.preheader.i.i111, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i126
  %.sroa.010.021.i.i113 = phi ptr [ %i.iq, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i126 ], [ %.sroa.01.0.copyload.i107, %.preheader.i.i111 ] ; 6 uses
  %i.ip = load i8, ptr %.sroa.010.021.i.i113, align 1
  switch i8 %i.ip, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i126 [
    i8 13, label %.critedge.i.i114
    i8 10, label %.critedge.i.i114
    i8 0, label %.critedge.i.i114
    i8 12, label %.critedge.i.i114
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i126:          ; preds = %.lr.ph.i.i112
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i.i113, i64 1 ; 4 uses
  %i.ir = icmp eq ptr %i.iq, %.sroa.0.0.copyload.i108
  %i.is = icmp eq ptr %i.iq, %i.in
  %.0.i.i.i127 = or i1 %i.ir, %i.is
  br i1 %.0.i.i.i127, label %.critedge.i.i114, label %.lr.ph.i.i112, !llvm.loop !9

.critedge.i.i114:                                 ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i126, %.lr.ph.i.i112, %.lr.ph.i.i112, %.lr.ph.i.i112, %.lr.ph.i.i112, %.preheader.i.i111
  %.sroa.010.0.lcssa.i.i115 = phi ptr [ %.sroa.01.0.copyload.i107, %.preheader.i.i111 ], [ %.sroa.010.021.i.i113, %.lr.ph.i.i112 ], [ %.sroa.010.021.i.i113, %.lr.ph.i.i112 ], [ %.sroa.010.021.i.i113, %.lr.ph.i.i112 ], [ %.sroa.010.021.i.i113, %.lr.ph.i.i112 ], [ %i.iq, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i126 ] ; 3 uses
  %.not19.i.i116 = icmp eq ptr %.sroa.010.0.lcssa.i.i115, %.sroa.0.0.copyload.i108
  br i1 %.not19.i.i116, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.critedge.i.i114
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i.i115, i64 1
  %i.iu = load i32, ptr %i.o, align 8
  %i.iv = add i32 %i.iu, 1
  store i32 %i.iv, ptr %i.o, align 8
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.critedge.i.i114
  %.sroa.010.1.i.i117 = phi ptr [ %i.it, %bb.bs ], [ %.sroa.010.0.lcssa.i.i115, %.critedge.i.i114 ] ; 5 uses
  %.not2030.i.i118 = icmp eq ptr %.sroa.010.1.i.i117, %.sroa.0.0.copyload.i108
  br i1 %.not2030.i.i118, label %_ZN6Assimp13ObjFileParser27getGroupNumberAndResolutionEv.exit, label %.lr.ph32.preheader.i.i119

.lr.ph32.preheader.i.i119:                        ; preds = %bb.bt
  %.sroa.010.136.i.i120 = ptrtoaddr ptr %.sroa.010.1.i.i117 to i64
  %i.iw = sub i64 %12, %.sroa.010.136.i.i120
  %scevgep.i.i121 = getelementptr i8, ptr %.sroa.010.1.i.i117, i64 %i.iw
  br label %.lr.ph32.i.i122

.lr.ph32.i.i122:                                  ; preds = %.critedge4.i.i124, %.lr.ph32.preheader.i.i119
  %.sroa.010.231.i.i123 = phi ptr [ %i.iy, %.critedge4.i.i124 ], [ %.sroa.010.1.i.i117, %.lr.ph32.preheader.i.i119 ] ; 3 uses
  %i.ix = load i8, ptr %.sroa.010.231.i.i123, align 1
  switch i8 %i.ix, label %_ZN6Assimp13ObjFileParser27getGroupNumberAndResolutionEv.exit [
    i8 9, label %.critedge4.i.i124
    i8 32, label %.critedge4.i.i124
  ]

.critedge4.i.i124:                                ; preds = %.lr.ph32.i.i122, %.lr.ph32.i.i122
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i.i123, i64 1 ; 2 uses
  %.not20.i.i125 = icmp eq ptr %i.iy, %.sroa.0.0.copyload.i108
  br i1 %.not20.i.i125, label %_ZN6Assimp13ObjFileParser27getGroupNumberAndResolutionEv.exit, label %.lr.ph32.i.i122, !llvm.loop !10

_ZN6Assimp13ObjFileParser27getGroupNumberAndResolutionEv.exit: ; preds = %.lr.ph32.i.i122, %.critedge4.i.i124, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit106.thread, %bb.bt
  %.sroa.010.3.i.i110 = phi ptr [ %.sroa.01.0.copyload.i107, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit106.thread ], [ %.sroa.010.1.i.i117, %bb.bt ], [ %scevgep.i.i121, %.critedge4.i.i124 ], [ %.sroa.010.231.i.i123, %.lr.ph32.i.i122 ]
  store ptr %.sroa.010.3.i.i110, ptr %0, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit129.thread175

bb.bu:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit129.thread
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit129: ; preds = %bb.br
  %i.ja = load ptr, ptr %8, align 8               ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 1
  %i.jc = xor i32 %i.jb, 1819047021
  %i.jd = getelementptr i8, ptr %i.ja, i64 4
  %i.je = load i16, ptr %i.jd, align 1
  %i.jf = zext i16 %i.je to i32
  %i.jg = xor i32 %i.jf, 25193
  %i.jh = or i32 %i.jc, %i.jg
  %i.ji = icmp ne i32 %i.jh, 0
  %i.jj = zext i1 %i.ji to i32
  %i.jk = icmp eq i32 %i.jj, 0
  br i1 %i.jk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit129.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit129.thread175

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit129.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit129
  invoke void @_ZN6Assimp13ObjFileParser14getMaterialLibEv(ptr noundef nonnull align 8 dereferenceable(4184) %0)
          to label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit129.thread175 unwind label %bb.bu

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit129.thread175: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit106, %bb.br, %_ZN6Assimp13ObjFileParser27getGroupNumberAndResolutionEv.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit129.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit129
  %i.jl = phi i1 [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit129 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit129.thread ], [ true, %_ZN6Assimp13ObjFileParser27getGroupNumberAndResolutionEv.exit ], [ false, %bb.br ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit106 ]
  %i.jm = load ptr, ptr %8, align 8               ; 2 uses
  %i.jn = icmp eq ptr %i.jm, %i.k
  br i1 %i.jn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit129.thread175
  %i.jo = load i64, ptr %i.k, align 8
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit129.thread175, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br i1 %i.jl, label %.backedge, label %bb.cf

bb.bv:                                            ; preds = %bb.bq, %bb.bu, %bb.bp
  %.pn.pn = phi { ptr, i32 } [ %i.if, %bb.bp ], [ %i.iz, %bb.bu ], [ %i.ig, %bb.bq ]
  %i.jq = load ptr, ptr %8, align 8               ; 2 uses
  %i.jr = icmp eq ptr %i.jq, %i.k
  br i1 %i.jr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %bb.bv
  %i.js = load i64, ptr %i.k, align 8
  %i.jt = add i64 %i.js, 1
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.jt) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.ck

bb.bw:                                            ; preds = %bb.r
  invoke void @_ZN6Assimp13ObjFileParser12getGroupNameEv(ptr noundef nonnull align 8 dereferenceable(4184) %0)
          to label %.backedge unwind label %bb.k

bb.bx:                                            ; preds = %bb.r
  %.sroa.0.0.copyload.i137 = load ptr, ptr %i.g, align 8 ; 7 uses
  %13 = ptrtoaddr ptr %.sroa.0.0.copyload.i137 to i64
  %.not.i.i138 = icmp ult ptr %i.bb, %.sroa.0.0.copyload.i137
  br i1 %.not.i.i138, label %.preheader.i.i140, label %_ZN6Assimp13ObjFileParser14getGroupNumberEv.exit

.preheader.i.i140:                                ; preds = %bb.bx
  %i.ju = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i137, i64 -1 ; 2 uses
  %i.jv = icmp eq ptr %i.bb, %i.ju
  br i1 %i.jv, label %.critedge.i.i143, label %.lr.ph.i.i141

.lr.ph.i.i141:                                    ; preds = %.preheader.i.i140, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i155
  %.sroa.010.021.i.i142 = phi ptr [ %i.jx, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i155 ], [ %i.bb, %.preheader.i.i140 ] ; 6 uses
  %i.jw = load i8, ptr %.sroa.010.021.i.i142, align 1
  switch i8 %i.jw, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i155 [
    i8 13, label %.critedge.i.i143
    i8 10, label %.critedge.i.i143
    i8 0, label %.critedge.i.i143
    i8 12, label %.critedge.i.i143
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i155:          ; preds = %.lr.ph.i.i141
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i.i142, i64 1 ; 4 uses
  %i.jy = icmp eq ptr %i.jx, %.sroa.0.0.copyload.i137
  %i.jz = icmp eq ptr %i.jx, %i.ju
  %.0.i.i.i156 = or i1 %i.jy, %i.jz
  br i1 %.0.i.i.i156, label %.critedge.i.i143, label %.lr.ph.i.i141, !llvm.loop !9

.critedge.i.i143:                                 ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i155, %.lr.ph.i.i141, %.lr.ph.i.i141, %.lr.ph.i.i141, %.lr.ph.i.i141, %.preheader.i.i140
  %.sroa.010.0.lcssa.i.i144 = phi ptr [ %i.bb, %.preheader.i.i140 ], [ %.sroa.010.021.i.i142, %.lr.ph.i.i141 ], [ %.sroa.010.021.i.i142, %.lr.ph.i.i141 ], [ %.sroa.010.021.i.i142, %.lr.ph.i.i141 ], [ %.sroa.010.021.i.i142, %.lr.ph.i.i141 ], [ %i.jx, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i155 ] ; 3 uses
  %.not19.i.i145 = icmp eq ptr %.sroa.010.0.lcssa.i.i144, %.sroa.0.0.copyload.i137
  br i1 %.not19.i.i145, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %.critedge.i.i143
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i.i144, i64 1
  %i.kb = load i32, ptr %i.o, align 8
  %i.kc = add i32 %i.kb, 1
  store i32 %i.kc, ptr %i.o, align 8
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %.critedge.i.i143
  %.sroa.010.1.i.i146 = phi ptr [ %i.ka, %bb.by ], [ %.sroa.010.0.lcssa.i.i144, %.critedge.i.i143 ] ; 5 uses
  %.not2030.i.i147 = icmp eq ptr %.sroa.010.1.i.i146, %.sroa.0.0.copyload.i137
  br i1 %.not2030.i.i147, label %_ZN6Assimp13ObjFileParser14getGroupNumberEv.exit, label %.lr.ph32.preheader.i.i148

.lr.ph32.preheader.i.i148:                        ; preds = %bb.bz
  %.sroa.010.136.i.i149 = ptrtoaddr ptr %.sroa.010.1.i.i146 to i64
  %i.kd = sub i64 %13, %.sroa.010.136.i.i149
  %scevgep.i.i150 = getelementptr i8, ptr %.sroa.010.1.i.i146, i64 %i.kd
  br label %.lr.ph32.i.i151

.lr.ph32.i.i151:                                  ; preds = %.critedge4.i.i153, %.lr.ph32.preheader.i.i148
  %.sroa.010.231.i.i152 = phi ptr [ %i.kf, %.critedge4.i.i153 ], [ %.sroa.010.1.i.i146, %.lr.ph32.preheader.i.i148 ] ; 3 uses
  %i.ke = load i8, ptr %.sroa.010.231.i.i152, align 1
  switch i8 %i.ke, label %_ZN6Assimp13ObjFileParser14getGroupNumberEv.exit [
    i8 9, label %.critedge4.i.i153
    i8 32, label %.critedge4.i.i153
  ]

.critedge4.i.i153:                                ; preds = %.lr.ph32.i.i151, %.lr.ph32.i.i151
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i.i152, i64 1 ; 2 uses
  %.not20.i.i154 = icmp eq ptr %i.kf, %.sroa.0.0.copyload.i137
  br i1 %.not20.i.i154, label %_ZN6Assimp13ObjFileParser14getGroupNumberEv.exit, label %.lr.ph32.i.i151, !llvm.loop !10

_ZN6Assimp13ObjFileParser14getGroupNumberEv.exit: ; preds = %.lr.ph32.i.i151, %.critedge4.i.i153, %bb.bx, %bb.bz
  %.sroa.010.3.i.i139 = phi ptr [ %i.bb, %bb.bx ], [ %.sroa.010.1.i.i146, %bb.bz ], [ %scevgep.i.i150, %.critedge4.i.i153 ], [ %.sroa.010.231.i.i152, %.lr.ph32.i.i151 ]
  store ptr %.sroa.010.3.i.i139, ptr %0, align 8
  br label %.backedge

bb.ca:                                            ; preds = %bb.r
  invoke void @_ZN6Assimp13ObjFileParser13getObjectNameEv(ptr noundef nonnull align 8 dereferenceable(4184) %0)
          to label %.backedge unwind label %bb.k

bb.cb:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  store ptr %i.t, ptr %10, align 8
  store i64 0, ptr %i.u, align 8
  store i8 0, ptr %i.t, align 8
  %.sroa.04.0.copyload = load ptr, ptr %i.g, align 8
  %i.kg = invoke ptr @_ZN6Assimp14getNameNoSpaceIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_RNSt7__cxx1112basic_stringIcSt11char_traitsIcES5_EE(ptr nonnull %i.bb, ptr %.sroa.04.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.cc unwind label %bb.ce     ; 0 uses

bb.cc:                                            ; preds = %bb.cb
  %i.kh = load i64, ptr %i.u, align 8             ; 2 uses
  %i.ki = icmp eq i64 %i.kh, 6
  %.pre192 = load ptr, ptr %10, align 8           ; 4 uses
  br i1 %i.ki, label %bb.cd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit158

bb.cd:                                            ; preds = %bb.cc
  %i.kj = load i32, ptr %.pre192, align 1
  %i.kk = xor i32 %i.kj, 2037674851
  %i.kl = getelementptr i8, ptr %.pre192, i64 4
  %i.km = load i16, ptr %i.kl, align 1
  %i.kn = zext i16 %i.km to i32
  %i.ko = xor i32 %i.kn, 25968
  %i.kp = or i32 %i.kk, %i.ko
  %i.kq = icmp ne i32 %i.kp, 0
  %i.kr = zext i1 %i.kq to i32
  %i.ks = icmp eq i32 %i.kr, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit158

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit158: ; preds = %bb.cc, %bb.cd
  %i.kt = phi i1 [ false, %bb.cc ], [ %i.ks, %bb.cd ]
  %i.ku = icmp eq ptr %.pre192, %i.t
  br i1 %i.ku, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i160: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit158
  %i.kv = icmp ult i64 %i.kh, 16
  call void @llvm.assume(i1 %i.kv)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit158
  %i.kw = load i64, ptr %i.t, align 8
  %i.kx = add i64 %i.kw, 1
  call void @_ZdlPvm(ptr noundef %.pre192, i64 noundef %i.kx) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cb
  %i.ky = landingpad { ptr, i32 }
          cleanup
  %i.kz = load ptr, ptr %10, align 8              ; 2 uses
  %i.la = icmp eq ptr %i.kz, %i.t
  br i1 %i.la, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %bb.ce
  %i.lb = load i64, ptr %i.t, align 8
  %i.lc = add i64 %i.lb, 1
  call void @_ZdlPvm(ptr noundef %i.kz, i64 noundef %i.lc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.ck

bb.cf:                                            ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  %.144 = phi i1 [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ true, %bb.m ], [ false, %bb.r ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ], [ %i.kt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ]
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.g, align 8 ; 7 uses
  %14 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.not.i165 = icmp ult ptr %.sroa.01.0.copyload, %.sroa.0.0.copyload
  br i1 %.not.i165, label %.preheader.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit

.preheader.i:                                     ; preds = %bb.cf
  %i.ld = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 -1 ; 2 uses
  %i.le = icmp eq ptr %.sroa.01.0.copyload, %i.ld
  br i1 %i.le, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %.sroa.010.021.i = phi ptr [ %i.lg, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.01.0.copyload, %.preheader.i ] ; 6 uses
  %i.lf = load i8, ptr %.sroa.010.021.i, align 1
  switch i8 %i.lf, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 13, label %.critedge.i
    i8 10, label %.critedge.i
    i8 0, label %.critedge.i
    i8 12, label %.critedge.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %.lr.ph.i
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i, i64 1 ; 4 uses
  %i.lh = icmp eq ptr %i.lg, %.sroa.0.0.copyload
  %i.li = icmp eq ptr %i.lg, %i.ld
  %.0.i.i = or i1 %i.lh, %i.li
  br i1 %.0.i.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !9

.critedge.i:                                      ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.preheader.i
  %.sroa.010.0.lcssa.i = phi ptr [ %.sroa.01.0.copyload, %.preheader.i ], [ %i.lg, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ] ; 3 uses
  %.not19.i = icmp eq ptr %.sroa.010.0.lcssa.i, %.sroa.0.0.copyload
  br i1 %.not19.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %.critedge.i
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i, i64 1
  %i.lk = load i32, ptr %i.o, align 8
  %i.ll = add i32 %i.lk, 1
  store i32 %i.ll, ptr %i.o, align 8
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.critedge.i
  %.sroa.010.1.i = phi ptr [ %i.lj, %bb.cg ], [ %.sroa.010.0.lcssa.i, %.critedge.i ] ; 5 uses
  %.not2030.i = icmp eq ptr %.sroa.010.1.i, %.sroa.0.0.copyload
  br i1 %.not2030.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.preheader.i

.lr.ph32.preheader.i:                             ; preds = %bb.ch
  %.sroa.010.136.i = ptrtoaddr ptr %.sroa.010.1.i to i64
  %i.lm = sub i64 %14, %.sroa.010.136.i
  %scevgep.i = getelementptr i8, ptr %.sroa.010.1.i, i64 %i.lm
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.critedge4.i, %.lr.ph32.preheader.i
  %.sroa.010.231.i = phi ptr [ %i.lo, %.critedge4.i ], [ %.sroa.010.1.i, %.lr.ph32.preheader.i ] ; 3 uses
  %i.ln = load i8, ptr %.sroa.010.231.i, align 1
  switch i8 %i.ln, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit [
    i8 9, label %.critedge4.i
    i8 32, label %.critedge4.i
  ]

.critedge4.i:                                     ; preds = %.lr.ph32.i, %.lr.ph32.i
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i, i64 1 ; 2 uses
  %.not20.i = icmp eq ptr %i.lo, %.sroa.0.0.copyload
  br i1 %.not20.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.i, !llvm.loop !10

_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit: ; preds = %.critedge4.i, %.lr.ph32.i, %bb.ch, %bb.cf
  %.sroa.010.3.i = phi ptr [ %.sroa.01.0.copyload, %bb.cf ], [ %.sroa.010.1.i, %bb.ch ], [ %.sroa.010.231.i, %.lr.ph32.i ], [ %scevgep.i, %.critedge4.i ]
  store ptr %.sroa.010.3.i, ptr %0, align 8
  br label %.backedge

bb.ci:                                            ; preds = %bb.c
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.lp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.lq = load ptr, ptr %i.lp, align 8
  %i.lr = ptrtoint ptr %i.lq to i64
  %i.ls = ptrtoint ptr %i.ab to i64
  %i.lt = sub i64 %i.lr, %i.ls
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.lt) #29
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.ci, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.ck:                                            ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, %bb.ae, %bb.z, %bb.v, %bb.i
  %.pn68.pn = phi { ptr, i32 } [ %i.as, %bb.i ], [ %i.da, %bb.z ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %i.ky, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164 ], [ %i.eh, %bb.ah ], [ %i.ba, %bb.k ], [ %.pn63.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135 ], [ %i.dy, %bb.ae ], [ %i.ce, %bb.v ]
  %i.lu = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i166 = icmp eq ptr %i.lu, null
  br i1 %.not.i.i.i166, label %_ZNSt6vectorIcSaIcEED2Ev.exit167, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.lv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.lw = load ptr, ptr %i.lv, align 8
  %i.lx = ptrtoint ptr %i.lw to i64
  %i.ly = ptrtoint ptr %i.lu to i64
  %i.lz = sub i64 %i.lx, %i.ly
  call void @_ZdlPvm(ptr noundef nonnull %i.lu, i64 noundef %i.lz) #29
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit167

_ZNSt6vectorIcSaIcEED2Ev.exit167:                 ; preds = %bb.ck, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn68.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6Assimp13ObjFileParser9setBufferERSt6vectorIcSaIcEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(4184) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK6Assimp13ObjFileParser8GetModelEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4184) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN6Assimp14IOStreamBufferIcE15getNextDataLineERSt6vectorIcSaIcEEc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef signext %2) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.b = load i64, ptr %i.a, align 8
  tail call void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = load i64, ptr %i.a, align 8
  %.not = icmp ult i64 %i.d, %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  br i1 %.not, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ 0, %bb.b ], [ %i.g, %bb.a ]
  %i.j = load ptr, ptr %0, align 8                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.l = load ptr, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef %i.i, i32 noundef 0), !inline_history !17 ; 0 uses
  %i.p = load ptr, ptr %0, align 8                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load i64, ptr %i.a, align 8
  %i.t = load ptr, ptr %i.p, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef i64 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull %i.r, i64 noundef 1, i64 noundef %i.s), !inline_history !17 ; 4 uses
  %.not19 = icmp eq i64 %i.w, 0
  br i1 %.not19, label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.x = load i64, ptr %i.a, align 8              ; 2 uses
  %i.y = icmp ult i64 %i.w, %i.x
  br i1 %i.y, label %bb.d, label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit.thread

bb.d:                                             ; preds = %bb.c
  store i64 %i.w, ptr %i.a, align 8
  br label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit.thread

_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit.thread: ; preds = %bb.c, %bb.d
  %i.z = phi i64 [ %i.w, %bb.d ], [ %i.x, %bb.c ]
  %i.aa = load i64, ptr %i.k, align 8
  %i.ab = add i64 %i.aa, %i.z
  store i64 %i.ab, ptr %i.k, align 8
  store i64 0, ptr %i.c, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %i.ac, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit.thread, %bb.b
  %i.af = phi i64 [ 0, %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit.thread ], [ %i.d, %bb.b ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.backedge, %bb.e
  %.promoted = phi i64 [ %i.af, %bb.e ], [ %.promoted.be, %.backedge ] ; 2 uses
  %.0 = phi i64 [ 0, %bb.e ], [ %i.az, %.backedge ] ; 6 uses
  %i.al = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.am = getelementptr i8, ptr %i.al, i64 %.promoted ; 2 uses
  %i.an = load i8, ptr %i.am, align 1             ; 3 uses
  %i.ao = icmp eq i8 %2, %i.an
  br i1 %i.ao, label %bb.g, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr i8, ptr %i.am, i64 1
  %i.aq = load i8, ptr %i.ap, align 1
  switch i8 %i.aq, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread [
    i8 13, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.preheader
    i8 10, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.preheader
    i8 0, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.preheader
    i8 12, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.preheader
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.preheader:       ; preds = %bb.g, %bb.g, %bb.g, %bb.g
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit

_ZN6Assimp9IsLineEndIcEEbT_.exit:                 ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.preheader, %_ZN6Assimp9IsLineEndIcEEbT_.exit
  %storemerge.in21 = phi i64 [ %storemerge, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ %.promoted, %_ZN6Assimp9IsLineEndIcEEbT_.exit.preheader ] ; 2 uses
  %storemerge = add i64 %storemerge.in21, 1       ; 3 uses
  store i64 %storemerge, ptr %i.c, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %storemerge
  %i.as = load i8, ptr %i.ar, align 1
  %.not14 = icmp eq i8 %i.as, 10
  br i1 %.not14, label %bb.h, label %_ZN6Assimp9IsLineEndIcEEbT_.exit, !llvm.loop !18

bb.h:                                             ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit
  %i.at = add i64 %storemerge.in21, 2             ; 2 uses
  store i64 %i.at, ptr %i.c, align 8
  %.phi.trans.insert22 = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.at
  %.pre23 = load i8, ptr %.phi.trans.insert22, align 1
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit17

_ZN6Assimp9IsLineEndIcEEbT_.exit.thread:          ; preds = %bb.g, %bb.f
  switch i8 %i.an, label %_ZN6Assimp9IsLineEndIcEEbT_.exit17 [
    i8 13, label %_ZN6Assimp9IsLineEndIcEEbT_.exit17.thread
    i8 10, label %_ZN6Assimp9IsLineEndIcEEbT_.exit17.thread
    i8 0, label %_ZN6Assimp9IsLineEndIcEEbT_.exit17.thread
    i8 12, label %_ZN6Assimp9IsLineEndIcEEbT_.exit17.thread
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit17:               ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread, %bb.h
  %i.au = phi i8 [ %i.an, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread ], [ %.pre23, %bb.h ]
  %i.av = load ptr, ptr %1, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %.0
  store i8 %i.au, ptr %i.aw, align 1
  %i.ax = load i64, ptr %i.c, align 8
  %i.ay = add i64 %i.ax, 1                        ; 2 uses
  store i64 %i.ay, ptr %i.c, align 8
  %i.az = add i64 %.0, 1                          ; 4 uses
  %i.ba = load ptr, ptr %i.ah, align 8
  %i.bb = load ptr, ptr %1, align 8
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = icmp eq i64 %i.az, %i.be
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit17
  %i.bg = shl i64 %i.az, 1
  tail call void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bg)
  %.pre24 = load i64, ptr %i.c, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit17
  %i.bh = phi i64 [ %.pre24, %bb.i ], [ %i.ay, %_ZN6Assimp9IsLineEndIcEEbT_.exit17 ] ; 3 uses
  %i.bi = load i64, ptr %i.ai, align 8
  %.not15 = icmp ult i64 %i.bh, %i.bi
  br i1 %.not15, label %bb.k, label %_ZN6Assimp9IsLineEndIcEEbT_.exit17.thread

bb.k:                                             ; preds = %bb.j
  %i.bj = load i64, ptr %i.a, align 8
  %.not16 = icmp ult i64 %i.bh, %i.bj
  br i1 %.not16, label %.backedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr %0, align 8               ; 2 uses
  %i.bl = load i64, ptr %i.aj, align 8
  %i.bm = load ptr, ptr %i.bk, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call noundef i32 %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, i64 noundef %i.bl, i32 noundef 0), !inline_history !17 ; 0 uses
  %i.bq = load ptr, ptr %0, align 8               ; 2 uses
  %i.br = load ptr, ptr %i.ag, align 8
  %i.bs = load i64, ptr %i.a, align 8
  %i.bt = load ptr, ptr %i.bq, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = tail call noundef i64 %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull %i.br, i64 noundef 1, i64 noundef %i.bs), !inline_history !17 ; 4 uses
  %.not20 = icmp eq i64 %i.bw, 0
  br i1 %.not20, label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = load i64, ptr %i.a, align 8             ; 2 uses
  %i.by = icmp ult i64 %i.bw, %i.bx
  br i1 %i.by, label %bb.n, label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit18.thread

bb.n:                                             ; preds = %bb.m
  store i64 %i.bw, ptr %i.a, align 8
  br label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit18.thread

_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit18.thread: ; preds = %bb.m, %bb.n
  %i.bz = phi i64 [ %i.bw, %bb.n ], [ %i.bx, %bb.m ]
  %i.ca = load i64, ptr %i.aj, align 8
  %i.cb = add i64 %i.ca, %i.bz
  store i64 %i.cb, ptr %i.aj, align 8
  store i64 0, ptr %i.c, align 8
  %i.cc = load i64, ptr %i.ak, align 8
  %i.cd = add i64 %i.cc, 1
  store i64 %i.cd, ptr %i.ak, align 8
  br label %.backedge

.backedge:                                        ; preds = %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit18.thread, %bb.k
  %.promoted.be = phi i64 [ 0, %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit18.thread ], [ %i.bh, %bb.k ]
  br label %bb.f, !llvm.loop !19

_ZN6Assimp9IsLineEndIcEEbT_.exit17.thread:        ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread, %bb.j
  %.1 = phi i64 [ %i.az, %bb.j ], [ %.0, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread ], [ %.0, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread ], [ %.0, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread ], [ %.0, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread ]
  %i.ce = load ptr, ptr %1, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.1
  store i8 10, ptr %i.cf, align 1
  %i.cg = load i64, ptr %i.c, align 8
  %i.ch = add i64 %i.cg, 1
  store i64 %i.ch, ptr %i.c, align 8
  br label %_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit

_ZN6Assimp14IOStreamBufferIcE13readNextBlockEv.exit: ; preds = %bb.l, %._crit_edge, %_ZN6Assimp9IsLineEndIcEEbT_.exit17.thread
  %.113 = phi i1 [ false, %._crit_edge ], [ true, %_ZN6Assimp9IsLineEndIcEEbT_.exit17.thread ], [ false, %bb.l ]
  ret i1 %.113
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden ptr @_ZN6Assimp14getNameNoSpaceIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_RNSt7__cxx1112basic_stringIcSt11char_traitsIcES5_EE(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = ptrtoaddr ptr %0 to i64
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.c, ptr noundef nonnull @.str.28, i64 noundef 0) ; 0 uses
  %i.e = icmp eq ptr %0, %1
  %i.f = getelementptr inbounds i8, ptr %1, i64 -1 ; 3 uses
  %i.g = icmp eq ptr %0, %i.f
  %.0.i = select i1 %i.e, i1 true, i1 %i.g
  br i1 %.0.i, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.a, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit
  %.sroa.025.036 = phi ptr [ %i.i, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit ], [ %0, %bb.a ] ; 8 uses
  %i.h = load i8, ptr %.sroa.025.036, align 1
  switch i8 %i.h, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit [
    i8 13, label %.critedge
    i8 10, label %.critedge
    i8 0, label %.critedge
    i8 12, label %.critedge
    i8 32, label %.critedge
    i8 9, label %.critedge
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit:         ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.025.036, i64 1 ; 4 uses
  %i.j = icmp eq ptr %i.i, %1
  %i.k = icmp eq ptr %i.i, %i.f
  %.0.i17 = select i1 %i.j, i1 true, i1 %i.k
  br i1 %.0.i17, label %.critedge, label %.preheader, !llvm.loop !20

.critedge:                                        ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit
  %.sroa.025.0.lcssa = phi ptr [ %.sroa.025.036, %.preheader ], [ %.sroa.025.036, %.preheader ], [ %.sroa.025.036, %.preheader ], [ %.sroa.025.036, %.preheader ], [ %.sroa.025.036, %.preheader ], [ %.sroa.025.036, %.preheader ], [ %i.i, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit ] ; 3 uses
  %.sroa.025.0.lcssa37 = ptrtoaddr ptr %.sroa.025.0.lcssa to i64 ; 2 uses
  %i.l = add i64 %.sroa.025.0.lcssa37, 1
  br label %bb.b

bb.b:                                             ; preds = %.critedge2, %.critedge
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge2 ], [ %i.l, %.critedge ] ; 2 uses
  %.sroa.025.1 = phi ptr [ %i.v, %.critedge2 ], [ %.sroa.025.0.lcssa, %.critedge ] ; 4 uses
  %i.m = icmp eq ptr %.sroa.025.1, %1
  %i.n = icmp eq ptr %.sroa.025.1, %i.f
  %.0.i18 = select i1 %i.m, i1 true, i1 %i.n
  br i1 %.0.i18, label %.critedge2, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i8, ptr %.sroa.025.1, align 1
  switch i8 %i.o, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit20.preheader [
    i8 13, label %.critedge2
    i8 10, label %.critedge2
    i8 0, label %.critedge2
    i8 12, label %.critedge2
    i8 32, label %.critedge2
    i8 9, label %.critedge2
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit20.preheader: ; preds = %bb.c
  %i.p = sub i64 0, %.sroa.025.0.lcssa37
  %scevgep = getelementptr i8, ptr %.sroa.025.0.lcssa, i64 %i.p
  %umax = tail call i64 @llvm.umax.i64(i64 %3, i64 %indvars.iv)
  %scevgep38 = getelementptr i8, ptr %scevgep, i64 %umax ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.q, ptr %4, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %5 = ptrtoint ptr %scevgep38 to i64
  %i.s = ptrtoint ptr %0 to i64
  %i.t = sub i64 %5, %i.s                         ; 4 uses
  store i64 %i.t, ptr %i.a, align 8
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i, label %._crit_edge.i.i

.critedge2:                                       ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.b
  %i.v = getelementptr inbounds i8, ptr %.sroa.025.1, i64 -1
  %indvars.iv.next = add i64 %indvars.iv, -1
  br label %bb.b, !llvm.loop !21

.noexc.i:                                         ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit20.preheader
  %i.w = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.w, ptr %4, align 8
  %i.x = load i64, ptr %i.a, align 8
  store i64 %i.x, ptr %i.q, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit20.preheader
  %i.y = phi ptr [ %i.w, %.noexc.i ], [ %i.q, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit20.preheader ] ; 2 uses
  switch i64 %i.t, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.z = load i8, ptr %0, align 1
  store i8 %i.z, ptr %i.y, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr nonnull align 1 %0, i64 %i.t, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.aa = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.aa, ptr %i.r, align 8
  %i.ab = load ptr, ptr %4, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  store i8 0, ptr %i.ac, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.ad = load i64, ptr %i.r, align 8
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %4, align 8               ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.q
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ai = load i64, ptr %i.q, align 8
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.g, %bb.f
  %i.ak = load ptr, ptr %4, align 8               ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.q
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.am = load i64, ptr %i.q, align 8
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %i.af

bb.i:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %.sroa.013.0 = phi ptr [ %scevgep38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %1, %bb.a ]
  ret ptr %.sroa.013.0
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read) uwtable
define noundef i64 @_ZN6Assimp13ObjFileParser32getNumComponentsInDataDefinitionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4184) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4128
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %1 = ptrtoaddr ptr %i.c to i64                  ; 3 uses
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit15

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit15:       ; preds = %.critedge.i.i13, %bb.a
  %.024 = phi ptr [ %i.a, %bb.a ], [ %.0.lcssa.i.i14, %.critedge.i.i13 ] ; 6 uses
  %.06 = phi i1 [ false, %bb.a ], [ %.17, %.critedge.i.i13 ]
  %.05 = phi i64 [ 0, %bb.a ], [ %spec.select8, %.critedge.i.i13 ] ; 7 uses
  br i1 %.06, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit15
  %i.d = load i8, ptr %.024, align 1
  switch i8 %i.d, label %_ZN6Assimp9IsLineEndIcEEbT_.exit [
    i8 92, label %bb.c
    i8 13, label %bb.d
    i8 10, label %bb.d
    i8 0, label %bb.d
    i8 12, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.024, i64 1
  %i.f = load i8, ptr %i.e, align 1
  switch i8 %i.f, label %_ZN6Assimp9IsLineEndIcEEbT_.exit [
    i8 13, label %_ZN6AssimpL19isDataDefinitionEndEPKc.exit
    i8 10, label %_ZN6AssimpL19isDataDefinitionEndEPKc.exit
    i8 0, label %_ZN6AssimpL19isDataDefinitionEndEPKc.exit
    i8 12, label %_ZN6AssimpL19isDataDefinitionEndEPKc.exit
  ]

_ZN6AssimpL19isDataDefinitionEndEPKc.exit:        ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.024, i64 2
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit

_ZN6Assimp9IsLineEndIcEEbT_.exit:                 ; preds = %bb.b, %bb.c, %bb.d, %_ZN6AssimpL19isDataDefinitionEndEPKc.exit
  %.1 = phi ptr [ %i.g, %_ZN6AssimpL19isDataDefinitionEndEPKc.exit ], [ %.024, %bb.d ], [ %.024, %bb.b ], [ %.024, %bb.c ] ; 3 uses
  %.17 = phi i1 [ false, %_ZN6AssimpL19isDataDefinitionEndEPKc.exit ], [ true, %bb.d ], [ false, %bb.b ], [ false, %bb.c ]
  %2 = ptrtoaddr ptr %.1 to i64
  %i.h = sub i64 %1, %2
  %scevgep.i.i = getelementptr i8, ptr %.1, i64 %i.h ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %_ZN6Assimp9IsLineEndIcEEbT_.exit
  %.0.i.i = phi ptr [ %.1, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ %i.j, %bb.g ] ; 4 uses
  %i.i = load i8, ptr %.0.i.i, align 1            ; 2 uses
  switch i8 %i.i, label %.critedge.i.i [
    i8 32, label %bb.f
    i8 9, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %.not.i.i = icmp eq ptr %.0.i.i, %i.c
  br i1 %.not.i.i, label %.critedge.i.ithread-pre-split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.e, !llvm.loop !22

.critedge.i.ithread-pre-split:                    ; preds = %bb.f
  %.pr = load i8, ptr %scevgep.i.i, align 1
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.e, %.critedge.i.ithread-pre-split
  %i.k = phi i8 [ %.pr, %.critedge.i.ithread-pre-split ], [ %i.i, %bb.e ] ; 5 uses
  %.0.lcssa.i.i = phi ptr [ %scevgep.i.i, %.critedge.i.ithread-pre-split ], [ %.0.i.i, %bb.e ] ; 5 uses
  switch i8 %i.k, label %bb.h [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 35, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  ]

bb.h:                                             ; preds = %.critedge.i.i
  %i.l = add i8 %i.k, -48
  %or.cond.i = icmp ult i8 %i.l, 10
  br i1 %or.cond.i, label %_ZN6AssimpL10isNanOrInfEPKc.exit, label %switch.early.test

switch.early.test:                                ; preds = %bb.h
  switch i8 %i.k, label %_ZN6AssimpL10isNanOrInfEPKc.exit.fold.split [
    i8 45, label %_ZN6AssimpL10isNanOrInfEPKc.exit
    i8 43, label %_ZN6AssimpL10isNanOrInfEPKc.exit
    i8 78, label %bb.i
    i8 110, label %bb.i
    i8 73, label %bb.k
    i8 105, label %bb.k
  ]

bb.i:                                             ; preds = %switch.early.test, %switch.early.test
  %i.m = tail call i32 @strncasecmp(ptr noundef nonnull readonly %.0.lcssa.i.i, ptr noundef nonnull @.str.21, i64 noundef 3) #31
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZN6AssimpL10isNanOrInfEPKc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %cond.i = icmp eq i8 %i.k, 105
  br i1 %cond.i, label %bb.k, label %_ZN6AssimpL10isNanOrInfEPKc.exit

bb.k:                                             ; preds = %switch.early.test, %switch.early.test, %bb.j
  %i.o = tail call i32 @strncasecmp(ptr noundef nonnull readonly %.0.lcssa.i.i, ptr noundef nonnull @.str.22, i64 noundef 3) #31
  %i.p = icmp eq i32 %i.o, 0
  %i.q = zext i1 %i.p to i64
  br label %_ZN6AssimpL10isNanOrInfEPKc.exit

_ZN6AssimpL10isNanOrInfEPKc.exit.fold.split:      ; preds = %switch.early.test
  br label %_ZN6AssimpL10isNanOrInfEPKc.exit

_ZN6AssimpL10isNanOrInfEPKc.exit:                 ; preds = %switch.early.test, %switch.early.test, %_ZN6AssimpL10isNanOrInfEPKc.exit.fold.split, %bb.h, %bb.k, %bb.j, %bb.i
  %i.r = phi i64 [ 1, %switch.early.test ], [ 1, %bb.i ], [ 0, %bb.j ], [ %i.q, %bb.k ], [ 1, %switch.early.test ], [ 1, %bb.h ], [ 0, %_ZN6AssimpL10isNanOrInfEPKc.exit.fold.split ]
  %3 = ptrtoaddr ptr %.0.lcssa.i.i to i64
  %i.s = sub i64 %1, %3
  %scevgep.i.i.i = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.s
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %_ZN6AssimpL10isNanOrInfEPKc.exit
  %i.t = phi i8 [ %i.k, %_ZN6AssimpL10isNanOrInfEPKc.exit ], [ %.pre, %bb.n ]
  %.0.i.i.i = phi ptr [ %.0.lcssa.i.i, %_ZN6AssimpL10isNanOrInfEPKc.exit ], [ %i.u, %bb.n ] ; 3 uses
  switch i8 %i.t, label %.critedge.i.i.i.preheader [
    i8 32, label %bb.m
    i8 9, label %bb.m
  ]

.critedge.i.i.i.preheader:                        ; preds = %bb.m, %bb.l
  %storemerge.i.ph = phi ptr [ %scevgep.i.i.i, %bb.m ], [ %.0.i.i.i, %bb.l ]
  br label %.critedge.i.i.i

bb.m:                                             ; preds = %bb.l, %bb.l
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %i.c
  br i1 %.not.i.i.i, label %.critedge.i.i.i.preheader, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.u, align 1
  br label %bb.l, !llvm.loop !22

.critedge.i.i.i:                                  ; preds = %.critedge.i.i.i.preheader, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i
  %storemerge.i = phi ptr [ %i.w, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i ], [ %storemerge.i.ph, %.critedge.i.i.i.preheader ] ; 5 uses
  %i.v = load i8, ptr %storemerge.i, align 1      ; 2 uses
  switch i8 %i.v, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i [
    i8 32, label %_ZN6Assimp9SkipTokenERPKcS1_.exit
    i8 9, label %_ZN6Assimp9SkipTokenERPKcS1_.exit
    i8 13, label %_ZN6Assimp9SkipTokenERPKcS1_.exit
    i8 10, label %_ZN6Assimp9SkipTokenERPKcS1_.exit
    i8 0, label %_ZN6Assimp9SkipTokenERPKcS1_.exit
    i8 12, label %_ZN6Assimp9SkipTokenERPKcS1_.exit
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i:       ; preds = %.critedge.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 1
  br label %.critedge.i.i.i, !llvm.loop !23

_ZN6Assimp9SkipTokenERPKcS1_.exit:                ; preds = %.critedge.i.i.i, %.critedge.i.i.i, %.critedge.i.i.i, %.critedge.i.i.i, %.critedge.i.i.i, %.critedge.i.i.i
  %spec.select8 = add i64 %i.r, %.05              ; 6 uses
  %4 = ptrtoaddr ptr %storemerge.i to i64
  %i.x = sub i64 %1, %4
  %scevgep.i.i10 = getelementptr i8, ptr %storemerge.i, i64 %i.x ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %_ZN6Assimp9SkipTokenERPKcS1_.exit
  %i.y = phi i8 [ %i.v, %_ZN6Assimp9SkipTokenERPKcS1_.exit ], [ %.pre39, %bb.q ] ; 2 uses
  %.0.i.i11 = phi ptr [ %storemerge.i, %_ZN6Assimp9SkipTokenERPKcS1_.exit ], [ %i.z, %bb.q ] ; 3 uses
  switch i8 %i.y, label %.critedge.i.i13 [
    i8 32, label %bb.p
    i8 9, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %.not.i.i12 = icmp eq ptr %.0.i.i11, %i.c
  br i1 %.not.i.i12, label %.critedge.i.i13thread-pre-split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i11, i64 1 ; 2 uses
  %.pre39 = load i8, ptr %i.z, align 1
  br label %bb.o, !llvm.loop !22

.critedge.i.i13thread-pre-split:                  ; preds = %bb.p
  %.pr26 = load i8, ptr %scevgep.i.i10, align 1
  br label %.critedge.i.i13

.critedge.i.i13:                                  ; preds = %bb.o, %.critedge.i.i13thread-pre-split
  %i.aa = phi i8 [ %.pr26, %.critedge.i.i13thread-pre-split ], [ %i.y, %bb.o ]
  %.0.lcssa.i.i14 = phi ptr [ %scevgep.i.i10, %.critedge.i.i13thread-pre-split ], [ %.0.i.i11, %bb.o ]
  switch i8 %i.aa, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit15 [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 35, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit:         ; preds = %.critedge.i.i13, %.critedge.i.i13, %.critedge.i.i13, %.critedge.i.i13, %.critedge.i.i13, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit15
  %.2 = phi i64 [ %.05, %.critedge.i.i ], [ %.05, %.critedge.i.i ], [ %.05, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit15 ], [ %.05, %.critedge.i.i ], [ %.05, %.critedge.i.i ], [ %.05, %.critedge.i.i ], [ %spec.select8, %.critedge.i.i13 ], [ %spec.select8, %.critedge.i.i13 ], [ %spec.select8, %.critedge.i.i13 ], [ %spec.select8, %.critedge.i.i13 ], [ %spec.select8, %.critedge.i.i13 ]
  ret i64 %.2
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13ObjFileParser10getVector3ERSt6vectorI10aiVector3tIfESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(4184) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 15 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %0, align 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.sroa.03.0.copyload.i = load ptr, ptr %i.e, align 8 ; 9 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.03.0.copyload.i, i64 -1 ; 4 uses
  %i.g = icmp eq ptr %.sroa.04.0.copyload.i, %.sroa.03.0.copyload.i
  %i.h = icmp eq ptr %.sroa.04.0.copyload.i, %i.f
  %.0.i6.i.i = select i1 %i.g, i1 true, i1 %i.h
  br i1 %.0.i6.i.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
  %.sroa.0.07.i.i = phi ptr [ %i.j, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i ], [ %.sroa.04.0.copyload.i, %bb.a ] ; 3 uses
  %i.i = load i8, ptr %.sroa.0.07.i.i, align 1
  switch i8 %i.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i:             ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 1 ; 4 uses
  %i.k = icmp eq ptr %i.j, %.sroa.03.0.copyload.i
  %i.l = icmp eq ptr %i.j, %i.f
  %.0.i.i.i = select i1 %i.k, i1 true, i1 %i.l
  br i1 %.0.i.i.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, label %.lr.ph.i.i, !llvm.loop !24

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i, %.lr.ph.i.i, %bb.a
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.04.0.copyload.i, %bb.a ], [ %.sroa.0.07.i.i, %.lr.ph.i.i ], [ %i.j, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i ] ; 4 uses
  store ptr %.sroa.0.0.lcssa.i.i, ptr %0, align 8
  %i.m = load i8, ptr %.sroa.0.0.lcssa.i.i, align 1
  %i.n = icmp eq i8 %i.m, 92
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 2 ; 5 uses
  store ptr %i.o, ptr %0, align 8
  %i.p = icmp eq ptr %i.o, %.sroa.03.0.copyload.i
  %i.q = icmp eq ptr %i.o, %i.f
  %.0.i6.i14.i = select i1 %i.p, i1 true, i1 %i.q
  br i1 %.0.i6.i14.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i, label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %bb.b, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i
  %.sroa.0.07.i16.i = phi ptr [ %i.s, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i ], [ %i.o, %bb.b ] ; 3 uses
  %i.r = load i8, ptr %.sroa.0.07.i16.i, align 1
  switch i8 %i.r, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i:           ; preds = %.lr.ph.i15.i, %.lr.ph.i15.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i16.i, i64 1 ; 4 uses
  %i.t = icmp eq ptr %i.s, %.sroa.03.0.copyload.i
  %i.u = icmp eq ptr %i.s, %i.f
  %.0.i.i18.i = select i1 %i.t, i1 true, i1 %i.u
  br i1 %.0.i.i18.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i, label %.lr.ph.i15.i, !llvm.loop !24

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i, %.lr.ph.i15.i, %bb.b
  %.sroa.0.0.lcssa.i19.i = phi ptr [ %i.o, %bb.b ], [ %.sroa.0.07.i16.i, %.lr.ph.i15.i ], [ %i.s, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i ] ; 2 uses
  store ptr %.sroa.0.0.lcssa.i19.i, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
  %i.v = phi ptr [ %.sroa.0.0.lcssa.i19.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i ], [ %.sroa.0.0.lcssa.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ] ; 2 uses
  %.not22.i = icmp eq ptr %i.v, %.sroa.03.0.copyload.i
  br i1 %.not22.i, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %i.w = phi ptr [ %i.aj, %bb.d ], [ %i.v, %bb.c ] ; 4 uses
  %.023.i = phi i64 [ %i.ai, %bb.d ], [ 0, %bb.c ] ; 10 uses
  %i.x = load i8, ptr %i.w, align 1               ; 2 uses
  switch i8 %i.x, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i [
    i8 32, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 9, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 13, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 10, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 0, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 12, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i:       ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 %.023.i
  store i8 %i.x, ptr %i.y, align 1
  %i.z = add nuw nsw i64 %.023.i, 1               ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 3 uses
  store ptr %i.aa, ptr %0, align 8
  %.not.i = icmp eq ptr %i.aa, %.sroa.03.0.copyload.i
  br i1 %.not.i, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i
  %i.ab = load i8, ptr %i.aa, align 1             ; 2 uses
  switch i8 %i.ab, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.1 [
    i8 32, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 9, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 13, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 10, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 0, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 12, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.1:     ; preds = %.lr.ph.i.1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.z
  store i8 %i.ab, ptr %i.ac, align 1
  %i.ad = add nuw nsw i64 %.023.i, 2              ; 9 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 2 ; 3 uses
  store ptr %i.ae, ptr %0, align 8
  %.not.i.1 = icmp eq ptr %i.ae, %.sroa.03.0.copyload.i
  br i1 %.not.i.1, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.1
  %i.af = load i8, ptr %i.ae, align 1             ; 2 uses
  switch i8 %i.af, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.2 [
    i8 32, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 9, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 13, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 10, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 0, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 12, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.2:     ; preds = %.lr.ph.i.2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ad
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = icmp eq i64 %i.ad, 4094
  br i1 %i.ah, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.2
  %i.ai = add nuw nsw i64 %.023.i, 3              ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 3 ; 3 uses
  store ptr %i.aj, ptr %0, align 8
  %.not.i.2 = icmp eq ptr %i.aj, %.sroa.03.0.copyload.i
  br i1 %.not.i.2, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit, label %.lr.ph.i, !llvm.loop !25

_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit: ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i, %.lr.ph.i.1, %.lr.ph.i.1, %.lr.ph.i.1, %.lr.ph.i.1, %.lr.ph.i.1, %.lr.ph.i.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.1, %.lr.ph.i.2, %.lr.ph.i.2, %.lr.ph.i.2, %.lr.ph.i.2, %.lr.ph.i.2, %.lr.ph.i.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.2, %bb.d, %bb.c
  %.1.i = phi i64 [ 0, %bb.c ], [ %i.ai, %bb.d ], [ %.023.i, %.lr.ph.i ], [ %.023.i, %.lr.ph.i ], [ %.023.i, %.lr.ph.i ], [ %.023.i, %.lr.ph.i ], [ %.023.i, %.lr.ph.i ], [ %.023.i, %.lr.ph.i ], [ %i.z, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i ], [ %i.z, %.lr.ph.i.1 ], [ %i.z, %.lr.ph.i.1 ], [ %i.z, %.lr.ph.i.1 ], [ %i.z, %.lr.ph.i.1 ], [ %i.z, %.lr.ph.i.1 ], [ %i.z, %.lr.ph.i.1 ], [ 4095, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.2 ], [ %i.ad, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.1 ], [ %i.ad, %.lr.ph.i.2 ], [ %i.ad, %.lr.ph.i.2 ], [ %i.ad, %.lr.ph.i.2 ], [ %i.ad, %.lr.ph.i.2 ], [ %i.ad, %.lr.ph.i.2 ], [ %i.ad, %.lr.ph.i.2 ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 %.1.i
  store i8 0, ptr %i.ak, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store float 0.000000e+00, ptr %i.c, align 4
  %i.al = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i1 noundef zeroext true) ; 0 uses
  %i.am = load float, ptr %i.c, align 4           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %.sroa.04.0.copyload.i4 = load ptr, ptr %0, align 8 ; 4 uses
  %.sroa.03.0.copyload.i5 = load ptr, ptr %i.e, align 8 ; 9 uses
  %i.an = getelementptr inbounds i8, ptr %.sroa.03.0.copyload.i5, i64 -1 ; 4 uses
  %i.ao = icmp eq ptr %.sroa.04.0.copyload.i4, %.sroa.03.0.copyload.i5
  %i.ap = icmp eq ptr %.sroa.04.0.copyload.i4, %i.an
  %.0.i6.i.i6 = select i1 %i.ao, i1 true, i1 %i.ap
  br i1 %.0.i6.i.i6, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i11, label %.lr.ph.i.i7

.lr.ph.i.i7:                                      ; preds = %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i9
  %.sroa.0.07.i.i8 = phi ptr [ %i.ar, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i9 ], [ %.sroa.04.0.copyload.i4, %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit ] ; 3 uses
  %i.aq = load i8, ptr %.sroa.0.07.i.i8, align 1
  switch i8 %i.aq, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i11 [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i9
end_hunk_1
begin_hunk_2_@_ZN6Assimp13ObjFileParser10getVector3ERSt6vectorI10aiVector3tIfESaIS3_EE:bb.a
  %i.ca = icmp eq ptr %i.bz, %.sroa.03.0.copyload.i28
  %i.cb = icmp eq ptr %i.bz, %i.bv
  %.0.i.i.i33 = select i1 %i.ca, i1 true, i1 %i.cb
  br i1 %.0.i.i.i33, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i34, label %.lr.ph.i.i30, !llvm.loop !24

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i34: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i32, %.lr.ph.i.i30, %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit26
  %.sroa.0.0.lcssa.i.i35 = phi ptr [ %.sroa.04.0.copyload.i27, %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit26 ], [ %.sroa.0.07.i.i31, %.lr.ph.i.i30 ], [ %i.bz, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i32 ] ; 4 uses
  store ptr %.sroa.0.0.lcssa.i.i35, ptr %0, align 8
  %i.cc = load i8, ptr %.sroa.0.0.lcssa.i.i35, align 1
  %i.cd = icmp eq i8 %i.cc, 92
  br i1 %i.cd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i34
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i35, i64 2 ; 5 uses
  store ptr %i.ce, ptr %0, align 8
  %i.cf = icmp eq ptr %i.ce, %.sroa.03.0.copyload.i28
  %i.cg = icmp eq ptr %i.ce, %i.bv
  %.0.i6.i14.i42 = select i1 %i.cf, i1 true, i1 %i.cg
  br i1 %.0.i6.i14.i42, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i47, label %.lr.ph.i15.i43

.lr.ph.i15.i43:                                   ; preds = %bb.h, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i45
  %.sroa.0.07.i16.i44 = phi ptr [ %i.ci, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i45 ], [ %i.ce, %bb.h ] ; 3 uses
  %i.ch = load i8, ptr %.sroa.0.07.i16.i44, align 1
  switch i8 %i.ch, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i47 [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i45
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i45
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i45:         ; preds = %.lr.ph.i15.i43, %.lr.ph.i15.i43
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i16.i44, i64 1 ; 4 uses
  %i.cj = icmp eq ptr %i.ci, %.sroa.03.0.copyload.i28
  %i.ck = icmp eq ptr %i.ci, %i.bv
  %.0.i.i18.i46 = select i1 %i.cj, i1 true, i1 %i.ck
  br i1 %.0.i.i18.i46, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i47, label %.lr.ph.i15.i43, !llvm.loop !24

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i47: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i45, %.lr.ph.i15.i43, %bb.h
  %.sroa.0.0.lcssa.i19.i48 = phi ptr [ %i.ce, %bb.h ], [ %.sroa.0.07.i16.i44, %.lr.ph.i15.i43 ], [ %i.ci, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i45 ] ; 2 uses
  store ptr %.sroa.0.0.lcssa.i19.i48, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i47, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i34
  %i.cl = phi ptr [ %.sroa.0.0.lcssa.i19.i48, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i47 ], [ %.sroa.0.0.lcssa.i.i35, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i34 ] ; 2 uses
  %.not22.i36 = icmp eq ptr %i.cl, %.sroa.03.0.copyload.i28
  br i1 %.not22.i36, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit49, label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %bb.i, %bb.j
  %i.cm = phi ptr [ %i.cz, %bb.j ], [ %i.cl, %bb.i ] ; 4 uses
  %.023.i38 = phi i64 [ %i.cy, %bb.j ], [ 0, %bb.i ] ; 10 uses
  %i.cn = load i8, ptr %i.cm, align 1             ; 2 uses
  switch i8 %i.cn, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i40 [
    i8 32, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit49
    i8 9, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit49
    i8 13, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit49
    i8 10, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit49
    i8 0, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit49
    i8 12, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit49
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i40:     ; preds = %.lr.ph.i37
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 %.023.i38
  store i8 %i.cn, ptr %i.co, align 1
  %i.cp = add nuw nsw i64 %.023.i38, 1            ; 8 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 1 ; 3 uses
  store ptr %i.cq, ptr %0, align 8
  %.not.i41 = icmp eq ptr %i.cq, %.sroa.03.0.copyload.i28
  br i1 %.not.i41, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit49, label %.lr.ph.i37.1

.lr.ph.i37.1:                                     ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i40
  %i.cr = load i8, ptr %i.cq, align 1             ; 2 uses
  switch i8 %i.cr, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i40.1 [
    i8 32, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit49
    i8 9, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit49
    i8 13, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit49
    i8 10, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit49
    i8 0, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit49
    i8 12, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit49
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i40.1:   ; preds = %.lr.ph.i37.1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cp
  store i8 %i.cr, ptr %i.cs, align 1
  %i.ct = add nuw nsw i64 %.023.i38, 2            ; 9 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 2 ; 3 uses
  store ptr %i.cu, ptr %0, align 8
  %.not.i41.1 = icmp eq ptr %i.cu, %.sroa.03.0.copyload.i28
  br i1 %.not.i41.1, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit49, label %.lr.ph.i37.2

.lr.ph.i37.2:                                     ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i40.1
  %i.cv = load i8, ptr %i.cu, align 1             ; 2 uses
  switch i8 %i.cv, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i40.2 [
    i8 32, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit49
    i8 9, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit49
    i8 13, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit49
    i8 10, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit49
    i8 0, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit49
    i8 12, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit49
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i40.2:   ; preds = %.lr.ph.i37.2
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ct
  store i8 %i.cv, ptr %i.cw, align 1
  %i.cx = icmp eq i64 %i.ct, 4094
  br i1 %i.cx, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit49, label %bb.j

bb.j:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i40.2
  %i.cy = add nuw nsw i64 %.023.i38, 3            ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cm, i64 3 ; 3 uses
  store ptr %i.cz, ptr %0, align 8
  %.not.i41.2 = icmp eq ptr %i.cz, %.sroa.03.0.copyload.i28
  br i1 %.not.i41.2, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit49, label %.lr.ph.i37, !llvm.loop !25

_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit49: ; preds = %.lr.ph.i37, %.lr.ph.i37, %.lr.ph.i37, %.lr.ph.i37, %.lr.ph.i37, %.lr.ph.i37, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i40, %.lr.ph.i37.1, %.lr.ph.i37.1, %.lr.ph.i37.1, %.lr.ph.i37.1, %.lr.ph.i37.1, %.lr.ph.i37.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i40.1, %.lr.ph.i37.2, %.lr.ph.i37.2, %.lr.ph.i37.2, %.lr.ph.i37.2, %.lr.ph.i37.2, %.lr.ph.i37.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i40.2, %bb.j, %bb.i
  %.1.i39 = phi i64 [ 0, %bb.i ], [ %i.cy, %bb.j ], [ %.023.i38, %.lr.ph.i37 ], [ %.023.i38, %.lr.ph.i37 ], [ %.023.i38, %.lr.ph.i37 ], [ %.023.i38, %.lr.ph.i37 ], [ %.023.i38, %.lr.ph.i37 ], [ %.023.i38, %.lr.ph.i37 ], [ %i.cp, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i40 ], [ %i.cp, %.lr.ph.i37.1 ], [ %i.cp, %.lr.ph.i37.1 ], [ %i.cp, %.lr.ph.i37.1 ], [ %i.cp, %.lr.ph.i37.1 ], [ %i.cp, %.lr.ph.i37.1 ], [ %i.cp, %.lr.ph.i37.1 ], [ 4095, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i40.2 ], [ %i.ct, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i40.1 ], [ %i.ct, %.lr.ph.i37.2 ], [ %i.ct, %.lr.ph.i37.2 ], [ %i.ct, %.lr.ph.i37.2 ], [ %i.ct, %.lr.ph.i37.2 ], [ %i.ct, %.lr.ph.i37.2 ], [ %i.ct, %.lr.ph.i37.2 ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 %.1.i39
  store i8 0, ptr %i.da, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store float 0.000000e+00, ptr %i.a, align 4
  %i.db = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i1 noundef zeroext true) ; 0 uses
  %i.dc = load float, ptr %i.a, align 4           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.de = load ptr, ptr %i.dd, align 8            ; 7 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8
  %.not.i50 = icmp eq ptr %i.de, %i.dg
  br i1 %.not.i50, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit49
  store float %i.am, ptr %i.de, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store float %i.bu, ptr %i.dh, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store float %i.dc, ptr %i.di, align 4
  %i.dj = load ptr, ptr %i.dd, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  store ptr %i.dk, ptr %i.dd, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit

bb.l:                                             ; preds = %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit49
  %i.dl = load ptr, ptr %1, align 8               ; 5 uses
  %i.dm = ptrtoint ptr %i.de to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dm, %i.dn                    ; 4 uses
  %i.dp = icmp eq i64 %i.do, 9223372036854775800
  br i1 %i.dp, label %bb.m, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #32
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.dq = sdiv exact i64 %i.do, 12                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dq, i64 1)
  %i.dr = add nsw i64 %.sroa.speculated.i.i.i, %i.dq ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.dq
  %i.dt = call i64 @llvm.umin.i64(i64 %i.dr, i64 768614336404564650)
  %i.du = select i1 %i.ds, i64 768614336404564650, i64 %i.dt ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.du, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dv = mul nuw nsw i64 %i.du, 12
  %i.dw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dv) #30 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.do ; 3 uses
  store float %i.am, ptr %i.dx, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  store float %i.bu, ptr %i.dy, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store float %i.dc, ptr %i.dz, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.dl, %i.de
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i ], [ %i.dw, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i ], [ %i.dl, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !alias.scope !26
  %i.ea = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ea, %i.de
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !30

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dw, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.eb, %.lr.ph.i.i.i.i.i ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 12
  %.not.i35.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef %i.do) #29
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i
  store ptr %i.dw, ptr %1, align 8
  store ptr %i.ec, ptr %i.dd, align 8
  %i.ed = getelementptr inbounds nuw [12 x i8], ptr %i.dw, i64 %i.du
  store ptr %i.ed, ptr %i.df, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit: ; preds = %bb.k, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8 ; 7 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %2 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.not.i51 = icmp ult ptr %.sroa.01.0.copyload, %.sroa.0.0.copyload
  br i1 %.not.i51, label %.preheader.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit

.preheader.i:                                     ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit
  %i.ef = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 -1 ; 2 uses
  %i.eg = icmp eq ptr %.sroa.01.0.copyload, %i.ef
  br i1 %i.eg, label %.critedge.i, label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %.preheader.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %.sroa.010.021.i = phi ptr [ %i.ei, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.01.0.copyload, %.preheader.i ] ; 6 uses
  %i.eh = load i8, ptr %.sroa.010.021.i, align 1
  switch i8 %i.eh, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 13, label %.critedge.i
    i8 10, label %.critedge.i
    i8 0, label %.critedge.i
    i8 12, label %.critedge.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %.lr.ph.i52
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i, i64 1 ; 4 uses
  %i.ej = icmp eq ptr %i.ei, %.sroa.0.0.copyload
  %i.ek = icmp eq ptr %i.ei, %i.ef
  %.0.i.i = or i1 %i.ej, %i.ek
  br i1 %.0.i.i, label %.critedge.i, label %.lr.ph.i52, !llvm.loop !9

.critedge.i:                                      ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.lr.ph.i52, %.preheader.i
  %.sroa.010.0.lcssa.i = phi ptr [ %.sroa.01.0.copyload, %.preheader.i ], [ %i.ei, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.010.021.i, %.lr.ph.i52 ], [ %.sroa.010.021.i, %.lr.ph.i52 ], [ %.sroa.010.021.i, %.lr.ph.i52 ], [ %.sroa.010.021.i, %.lr.ph.i52 ] ; 3 uses
  %.not19.i = icmp eq ptr %.sroa.010.0.lcssa.i, %.sroa.0.0.copyload
  br i1 %.not19.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.critedge.i
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i, i64 1
  %i.em = load i32, ptr %i.ee, align 8
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.ee, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.critedge.i
  %.sroa.010.1.i = phi ptr [ %i.el, %bb.o ], [ %.sroa.010.0.lcssa.i, %.critedge.i ] ; 5 uses
  %.not2030.i = icmp eq ptr %.sroa.010.1.i, %.sroa.0.0.copyload
  br i1 %.not2030.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.preheader.i

.lr.ph32.preheader.i:                             ; preds = %bb.p
  %.sroa.010.136.i = ptrtoaddr ptr %.sroa.010.1.i to i64
  %i.eo = sub i64 %2, %.sroa.010.136.i
  %scevgep.i = getelementptr i8, ptr %.sroa.010.1.i, i64 %i.eo
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.critedge4.i, %.lr.ph32.preheader.i
  %.sroa.010.231.i = phi ptr [ %i.eq, %.critedge4.i ], [ %.sroa.010.1.i, %.lr.ph32.preheader.i ] ; 3 uses
  %i.ep = load i8, ptr %.sroa.010.231.i, align 1
  switch i8 %i.ep, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit [
    i8 9, label %.critedge4.i
    i8 32, label %.critedge4.i
  ]

.critedge4.i:                                     ; preds = %.lr.ph32.i, %.lr.ph32.i
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i, i64 1 ; 2 uses
  %.not20.i = icmp eq ptr %i.eq, %.sroa.0.0.copyload
  br i1 %.not20.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.i, !llvm.loop !10

_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit: ; preds = %.lr.ph32.i, %.critedge4.i, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit, %bb.p
  %.sroa.010.3.i = phi ptr [ %.sroa.01.0.copyload, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit ], [ %.sroa.010.1.i, %bb.p ], [ %.sroa.010.231.i, %.lr.ph32.i ], [ %scevgep.i, %.critedge4.i ]
  store ptr %.sroa.010.3.i, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13ObjFileParser21getHomogeneousVector3ERSt6vectorI10aiVector3tIfESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(4184) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 20 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %0, align 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.sroa.03.0.copyload.i = load ptr, ptr %i.f, align 8 ; 9 uses
  %i.g = getelementptr inbounds i8, ptr %.sroa.03.0.copyload.i, i64 -1 ; 4 uses
  %i.h = icmp eq ptr %.sroa.04.0.copyload.i, %.sroa.03.0.copyload.i
  %i.i = icmp eq ptr %.sroa.04.0.copyload.i, %i.g
  %.0.i6.i.i = select i1 %i.h, i1 true, i1 %i.i
  br i1 %.0.i6.i.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
  %.sroa.0.07.i.i = phi ptr [ %i.k, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i ], [ %.sroa.04.0.copyload.i, %bb.a ] ; 3 uses
  %i.j = load i8, ptr %.sroa.0.07.i.i, align 1
  switch i8 %i.j, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i:             ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 1 ; 4 uses
  %i.l = icmp eq ptr %i.k, %.sroa.03.0.copyload.i
  %i.m = icmp eq ptr %i.k, %i.g
  %.0.i.i.i = select i1 %i.l, i1 true, i1 %i.m
  br i1 %.0.i.i.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, label %.lr.ph.i.i, !llvm.loop !24

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i, %.lr.ph.i.i, %bb.a
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.04.0.copyload.i, %bb.a ], [ %.sroa.0.07.i.i, %.lr.ph.i.i ], [ %i.k, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i ] ; 4 uses
  store ptr %.sroa.0.0.lcssa.i.i, ptr %0, align 8
  %i.n = load i8, ptr %.sroa.0.0.lcssa.i.i, align 1
  %i.o = icmp eq i8 %i.n, 92
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 2 ; 5 uses
  store ptr %i.p, ptr %0, align 8
  %i.q = icmp eq ptr %i.p, %.sroa.03.0.copyload.i
  %i.r = icmp eq ptr %i.p, %i.g
  %.0.i6.i14.i = select i1 %i.q, i1 true, i1 %i.r
  br i1 %.0.i6.i14.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i, label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %bb.b, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i
  %.sroa.0.07.i16.i = phi ptr [ %i.t, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i ], [ %i.p, %bb.b ] ; 3 uses
  %i.s = load i8, ptr %.sroa.0.07.i16.i, align 1
  switch i8 %i.s, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i:           ; preds = %.lr.ph.i15.i, %.lr.ph.i15.i
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i16.i, i64 1 ; 4 uses
  %i.u = icmp eq ptr %i.t, %.sroa.03.0.copyload.i
  %i.v = icmp eq ptr %i.t, %i.g
  %.0.i.i18.i = select i1 %i.u, i1 true, i1 %i.v
  br i1 %.0.i.i18.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i, label %.lr.ph.i15.i, !llvm.loop !24

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i, %.lr.ph.i15.i, %bb.b
  %.sroa.0.0.lcssa.i19.i = phi ptr [ %i.p, %bb.b ], [ %.sroa.0.07.i16.i, %.lr.ph.i15.i ], [ %i.t, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i ] ; 2 uses
  store ptr %.sroa.0.0.lcssa.i19.i, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
  %i.w = phi ptr [ %.sroa.0.0.lcssa.i19.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i ], [ %.sroa.0.0.lcssa.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ] ; 2 uses
  %.not22.i = icmp eq ptr %i.w, %.sroa.03.0.copyload.i
  br i1 %.not22.i, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %i.x = phi ptr [ %i.ak, %bb.d ], [ %i.w, %bb.c ] ; 4 uses
  %.023.i = phi i64 [ %i.aj, %bb.d ], [ 0, %bb.c ] ; 10 uses
  %i.y = load i8, ptr %i.x, align 1               ; 2 uses
  switch i8 %i.y, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i [
    i8 32, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 9, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 13, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 10, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 0, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 12, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i:       ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 %.023.i
  store i8 %i.y, ptr %i.z, align 1
  %i.aa = add nuw nsw i64 %.023.i, 1              ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 3 uses
  store ptr %i.ab, ptr %0, align 8
  %.not.i = icmp eq ptr %i.ab, %.sroa.03.0.copyload.i
  br i1 %.not.i, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i
  %i.ac = load i8, ptr %i.ab, align 1             ; 2 uses
  switch i8 %i.ac, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.1 [
    i8 32, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 9, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 13, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 10, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 0, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 12, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.1:     ; preds = %.lr.ph.i.1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aa
  store i8 %i.ac, ptr %i.ad, align 1
  %i.ae = add nuw nsw i64 %.023.i, 2              ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 2 ; 3 uses
  store ptr %i.af, ptr %0, align 8
  %.not.i.1 = icmp eq ptr %i.af, %.sroa.03.0.copyload.i
  br i1 %.not.i.1, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.1
  %i.ag = load i8, ptr %i.af, align 1             ; 2 uses
  switch i8 %i.ag, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.2 [
    i8 32, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 9, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 13, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 10, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 0, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 12, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.2:     ; preds = %.lr.ph.i.2
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ae
  store i8 %i.ag, ptr %i.ah, align 1
  %i.ai = icmp eq i64 %i.ae, 4094
  br i1 %i.ai, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.2
  %i.aj = add nuw nsw i64 %.023.i, 3              ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 3 ; 3 uses
  store ptr %i.ak, ptr %0, align 8
  %.not.i.2 = icmp eq ptr %i.ak, %.sroa.03.0.copyload.i
  br i1 %.not.i.2, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit, label %.lr.ph.i, !llvm.loop !25

_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit: ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i, %.lr.ph.i.1, %.lr.ph.i.1, %.lr.ph.i.1, %.lr.ph.i.1, %.lr.ph.i.1, %.lr.ph.i.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.1, %.lr.ph.i.2, %.lr.ph.i.2, %.lr.ph.i.2, %.lr.ph.i.2, %.lr.ph.i.2, %.lr.ph.i.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.2, %bb.d, %bb.c
  %.1.i = phi i64 [ 0, %bb.c ], [ %i.aj, %bb.d ], [ %.023.i, %.lr.ph.i ], [ %.023.i, %.lr.ph.i ], [ %.023.i, %.lr.ph.i ], [ %.023.i, %.lr.ph.i ], [ %.023.i, %.lr.ph.i ], [ %.023.i, %.lr.ph.i ], [ %i.aa, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i ], [ %i.aa, %.lr.ph.i.1 ], [ %i.aa, %.lr.ph.i.1 ], [ %i.aa, %.lr.ph.i.1 ], [ %i.aa, %.lr.ph.i.1 ], [ %i.aa, %.lr.ph.i.1 ], [ %i.aa, %.lr.ph.i.1 ], [ 4095, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.2 ], [ %i.ae, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.1 ], [ %i.ae, %.lr.ph.i.2 ], [ %i.ae, %.lr.ph.i.2 ], [ %i.ae, %.lr.ph.i.2 ], [ %i.ae, %.lr.ph.i.2 ], [ %i.ae, %.lr.ph.i.2 ], [ %i.ae, %.lr.ph.i.2 ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 %.1.i
  store i8 0, ptr %i.al, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store float 0.000000e+00, ptr %i.d, align 4
  %i.am = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i1 noundef zeroext true) ; 0 uses
  %i.an = load float, ptr %i.d, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  %.sroa.04.0.copyload.i12 = load ptr, ptr %0, align 8 ; 4 uses
  %.sroa.03.0.copyload.i13 = load ptr, ptr %i.f, align 8 ; 9 uses
  %i.ao = getelementptr inbounds i8, ptr %.sroa.03.0.copyload.i13, i64 -1 ; 4 uses
  %i.ap = icmp eq ptr %.sroa.04.0.copyload.i12, %.sroa.03.0.copyload.i13
  %i.aq = icmp eq ptr %.sroa.04.0.copyload.i12, %i.ao
  %.0.i6.i.i14 = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %.0.i6.i.i14, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i19, label %.lr.ph.i.i15

.lr.ph.i.i15:                                     ; preds = %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i17
  %.sroa.0.07.i.i16 = phi ptr [ %i.as, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i17 ], [ %.sroa.04.0.copyload.i12, %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit ] ; 3 uses
  %i.ar = load i8, ptr %.sroa.0.07.i.i16, align 1
  switch i8 %i.ar, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i19 [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i17
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i17
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i17:           ; preds = %.lr.ph.i.i15, %.lr.ph.i.i15
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i16, i64 1 ; 4 uses
  %i.at = icmp eq ptr %i.as, %.sroa.03.0.copyload.i13
  %i.au = icmp eq ptr %i.as, %i.ao
  %.0.i.i.i18 = select i1 %i.at, i1 true, i1 %i.au
  br i1 %.0.i.i.i18, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i19, label %.lr.ph.i.i15, !llvm.loop !24

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i19: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i17, %.lr.ph.i.i15, %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
  %.sroa.0.0.lcssa.i.i20 = phi ptr [ %.sroa.04.0.copyload.i12, %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit ], [ %.sroa.0.07.i.i16, %.lr.ph.i.i15 ], [ %i.as, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i17 ] ; 4 uses
  store ptr %.sroa.0.0.lcssa.i.i20, ptr %0, align 8
  %i.av = load i8, ptr %.sroa.0.0.lcssa.i.i20, align 1
  %i.aw = icmp eq i8 %i.av, 92
  br i1 %i.aw, label %bb.e, label %bb.f

end_hunk_2
begin_hunk_3_@_ZN6Assimp13ObjFileParser21getHomogeneousVector3ERSt6vectorI10aiVector3tIfESaIS3_EE:bb.a
  %.sroa.0.07.i16.i75 = phi ptr [ %i.dr, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i76 ], [ %i.dn, %bb.k ] ; 3 uses
  %i.dq = load i8, ptr %.sroa.0.07.i16.i75, align 1
  switch i8 %i.dq, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i78 [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i76
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i76
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i76:         ; preds = %.lr.ph.i15.i74, %.lr.ph.i15.i74
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i16.i75, i64 1 ; 4 uses
  %i.ds = icmp eq ptr %i.dr, %.sroa.03.0.copyload.i59
  %i.dt = icmp eq ptr %i.dr, %i.de
  %.0.i.i18.i77 = select i1 %i.ds, i1 true, i1 %i.dt
  br i1 %.0.i.i18.i77, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i78, label %.lr.ph.i15.i74, !llvm.loop !24

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i78: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i76, %.lr.ph.i15.i74, %bb.k
  %.sroa.0.0.lcssa.i19.i79 = phi ptr [ %i.dn, %bb.k ], [ %.sroa.0.07.i16.i75, %.lr.ph.i15.i74 ], [ %i.dr, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i76 ] ; 2 uses
  store ptr %.sroa.0.0.lcssa.i19.i79, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i78, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i65
  %i.du = phi ptr [ %.sroa.0.0.lcssa.i19.i79, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i78 ], [ %.sroa.0.0.lcssa.i.i66, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i65 ] ; 2 uses
  %.not22.i67 = icmp eq ptr %i.du, %.sroa.03.0.copyload.i59
  br i1 %.not22.i67, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80, label %.lr.ph.i68

.lr.ph.i68:                                       ; preds = %bb.l, %bb.m
  %i.dv = phi ptr [ %i.ei, %bb.m ], [ %i.du, %bb.l ] ; 4 uses
  %.023.i69 = phi i64 [ %i.eh, %bb.m ], [ 0, %bb.l ] ; 10 uses
  %i.dw = load i8, ptr %i.dv, align 1             ; 2 uses
  switch i8 %i.dw, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i71 [
    i8 32, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
    i8 9, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
    i8 13, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
    i8 10, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
    i8 0, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
    i8 12, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i71:     ; preds = %.lr.ph.i68
  %i.dx = getelementptr inbounds nuw i8, ptr %i.e, i64 %.023.i69
  store i8 %i.dw, ptr %i.dx, align 1
  %i.dy = add nuw nsw i64 %.023.i69, 1            ; 8 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 1 ; 3 uses
  store ptr %i.dz, ptr %0, align 8
  %.not.i72 = icmp eq ptr %i.dz, %.sroa.03.0.copyload.i59
  br i1 %.not.i72, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80, label %.lr.ph.i68.1

.lr.ph.i68.1:                                     ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i71
  %i.ea = load i8, ptr %i.dz, align 1             ; 2 uses
  switch i8 %i.ea, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i71.1 [
    i8 32, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
    i8 9, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
    i8 13, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
    i8 10, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
    i8 0, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
    i8 12, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i71.1:   ; preds = %.lr.ph.i68.1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.dy
  store i8 %i.ea, ptr %i.eb, align 1
  %i.ec = add nuw nsw i64 %.023.i69, 2            ; 9 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dv, i64 2 ; 3 uses
  store ptr %i.ed, ptr %0, align 8
  %.not.i72.1 = icmp eq ptr %i.ed, %.sroa.03.0.copyload.i59
  br i1 %.not.i72.1, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80, label %.lr.ph.i68.2

.lr.ph.i68.2:                                     ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i71.1
  %i.ee = load i8, ptr %i.ed, align 1             ; 2 uses
  switch i8 %i.ee, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i71.2 [
    i8 32, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
    i8 9, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
    i8 13, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
    i8 10, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
    i8 0, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
    i8 12, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i71.2:   ; preds = %.lr.ph.i68.2
  %i.ef = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ec
  store i8 %i.ee, ptr %i.ef, align 1
  %i.eg = icmp eq i64 %i.ec, 4094
  br i1 %i.eg, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80, label %bb.m

bb.m:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i71.2
  %i.eh = add nuw nsw i64 %.023.i69, 3            ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dv, i64 3 ; 3 uses
  store ptr %i.ei, ptr %0, align 8
  %.not.i72.2 = icmp eq ptr %i.ei, %.sroa.03.0.copyload.i59
  br i1 %.not.i72.2, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80, label %.lr.ph.i68, !llvm.loop !25

_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80: ; preds = %.lr.ph.i68, %.lr.ph.i68, %.lr.ph.i68, %.lr.ph.i68, %.lr.ph.i68, %.lr.ph.i68, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i71, %.lr.ph.i68.1, %.lr.ph.i68.1, %.lr.ph.i68.1, %.lr.ph.i68.1, %.lr.ph.i68.1, %.lr.ph.i68.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i71.1, %.lr.ph.i68.2, %.lr.ph.i68.2, %.lr.ph.i68.2, %.lr.ph.i68.2, %.lr.ph.i68.2, %.lr.ph.i68.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i71.2, %bb.m, %bb.l
  %.1.i70 = phi i64 [ 0, %bb.l ], [ %i.eh, %bb.m ], [ %.023.i69, %.lr.ph.i68 ], [ %.023.i69, %.lr.ph.i68 ], [ %.023.i69, %.lr.ph.i68 ], [ %.023.i69, %.lr.ph.i68 ], [ %.023.i69, %.lr.ph.i68 ], [ %.023.i69, %.lr.ph.i68 ], [ %i.dy, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i71 ], [ %i.dy, %.lr.ph.i68.1 ], [ %i.dy, %.lr.ph.i68.1 ], [ %i.dy, %.lr.ph.i68.1 ], [ %i.dy, %.lr.ph.i68.1 ], [ %i.dy, %.lr.ph.i68.1 ], [ %i.dy, %.lr.ph.i68.1 ], [ 4095, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i71.2 ], [ %i.ec, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i71.1 ], [ %i.ec, %.lr.ph.i68.2 ], [ %i.ec, %.lr.ph.i68.2 ], [ %i.ec, %.lr.ph.i68.2 ], [ %i.ec, %.lr.ph.i68.2 ], [ %i.ec, %.lr.ph.i68.2 ], [ %i.ec, %.lr.ph.i68.2 ]
  %i.ej = getelementptr inbounds nuw i8, ptr %i.e, i64 %.1.i70
  store i8 0, ptr %i.ej, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store float 0.000000e+00, ptr %i.a, align 4
  %i.ek = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i1 noundef zeroext true) ; 0 uses
  %i.el = load float, ptr %i.a, align 4           ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.em = fcmp oeq float %i.el, 0.000000e+00
  br i1 %i.em, label %bb.n, label %bb.q

bb.n:                                             ; preds = %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
  %i.en = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.en, ptr noundef nonnull @.str.6)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @__cxa_throw(ptr nonnull %i.en, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.en) #28
  resume { ptr, i32 } %i.eo

bb.q:                                             ; preds = %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
  %i.ep = insertelement <2 x float> poison, float %i.an, i64 0
  %i.eq = insertelement <2 x float> %i.ep, float %i.bv, i64 1
  %i.er = insertelement <2 x float> poison, float %i.el, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = fdiv <2 x float> %i.eq, %i.es           ; 2 uses
  %i.eu = fdiv float %i.dd, %i.el                 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ew = load ptr, ptr %i.ev, align 8            ; 6 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8
  %.not.i81 = icmp eq ptr %i.ew, %i.ey
  br i1 %.not.i81, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store <2 x float> %i.et, ptr %i.ew, align 4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store float %i.eu, ptr %i.ez, align 4
  %i.fa = load ptr, ptr %i.ev, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 12
  store ptr %i.fb, ptr %i.ev, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJfffEEERS1_DpOT_.exit

bb.s:                                             ; preds = %bb.q
  %i.fc = load ptr, ptr %1, align 8               ; 5 uses
  %i.fd = ptrtoint ptr %i.ew to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe                    ; 4 uses
  %i.fg = icmp eq i64 %i.ff, 9223372036854775800
  br i1 %i.fg, label %bb.t, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.t:                                             ; preds = %bb.s
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #32
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.s
  %i.fh = sdiv exact i64 %i.ff, 12                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fh, i64 1)
  %i.fi = add nsw i64 %.sroa.speculated.i.i.i, %i.fh ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.fh
  %i.fk = call i64 @llvm.umin.i64(i64 %i.fi, i64 768614336404564650)
  %i.fl = select i1 %i.fj, i64 768614336404564650, i64 %i.fk ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fl, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.fm = mul nuw nsw i64 %i.fl, 12
  %i.fn = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fm) #30 ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.ff ; 2 uses
  store <2 x float> %i.et, ptr %i.fo, align 4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store float %i.eu, ptr %i.fp, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.fc, %i.ew
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.fr, %.lr.ph.i.i.i.i.i ], [ %i.fn, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i ], [ %i.fc, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !alias.scope !31
  %i.fq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fq, %i.ew
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !30

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.fn, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.fr, %.lr.ph.i.i.i.i.i ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 12
  %.not.i35.i.i = icmp eq ptr %i.fc, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJfffEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef %i.ff) #29
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJfffEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJfffEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.u, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i
  store ptr %i.fn, ptr %1, align 8
  store ptr %i.fs, ptr %i.ev, align 8
  %i.ft = getelementptr inbounds nuw [12 x i8], ptr %i.fn, i64 %i.fl
  store ptr %i.ft, ptr %i.ex, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJfffEEERS1_DpOT_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJfffEEERS1_DpOT_.exit: ; preds = %bb.r, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJfffEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.f, align 8 ; 7 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %2 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.not.i82 = icmp ult ptr %.sroa.01.0.copyload, %.sroa.0.0.copyload
  br i1 %.not.i82, label %.preheader.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit

.preheader.i:                                     ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJfffEEERS1_DpOT_.exit
  %i.fv = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 -1 ; 2 uses
  %i.fw = icmp eq ptr %.sroa.01.0.copyload, %i.fv
  br i1 %i.fw, label %.critedge.i, label %.lr.ph.i83

.lr.ph.i83:                                       ; preds = %.preheader.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %.sroa.010.021.i = phi ptr [ %i.fy, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.01.0.copyload, %.preheader.i ] ; 6 uses
  %i.fx = load i8, ptr %.sroa.010.021.i, align 1
  switch i8 %i.fx, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 13, label %.critedge.i
    i8 10, label %.critedge.i
    i8 0, label %.critedge.i
    i8 12, label %.critedge.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %.lr.ph.i83
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i, i64 1 ; 4 uses
  %i.fz = icmp eq ptr %i.fy, %.sroa.0.0.copyload
  %i.ga = icmp eq ptr %i.fy, %i.fv
  %.0.i.i = or i1 %i.fz, %i.ga
  br i1 %.0.i.i, label %.critedge.i, label %.lr.ph.i83, !llvm.loop !9

.critedge.i:                                      ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %.lr.ph.i83, %.lr.ph.i83, %.lr.ph.i83, %.lr.ph.i83, %.preheader.i
  %.sroa.010.0.lcssa.i = phi ptr [ %.sroa.01.0.copyload, %.preheader.i ], [ %i.fy, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.010.021.i, %.lr.ph.i83 ], [ %.sroa.010.021.i, %.lr.ph.i83 ], [ %.sroa.010.021.i, %.lr.ph.i83 ], [ %.sroa.010.021.i, %.lr.ph.i83 ] ; 3 uses
  %.not19.i = icmp eq ptr %.sroa.010.0.lcssa.i, %.sroa.0.0.copyload
  br i1 %.not19.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.critedge.i
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i, i64 1
  %i.gc = load i32, ptr %i.fu, align 8
  %i.gd = add i32 %i.gc, 1
  store i32 %i.gd, ptr %i.fu, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.critedge.i
  %.sroa.010.1.i = phi ptr [ %i.gb, %bb.v ], [ %.sroa.010.0.lcssa.i, %.critedge.i ] ; 5 uses
  %.not2030.i = icmp eq ptr %.sroa.010.1.i, %.sroa.0.0.copyload
  br i1 %.not2030.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.preheader.i

.lr.ph32.preheader.i:                             ; preds = %bb.w
  %.sroa.010.136.i = ptrtoaddr ptr %.sroa.010.1.i to i64
  %i.ge = sub i64 %2, %.sroa.010.136.i
  %scevgep.i = getelementptr i8, ptr %.sroa.010.1.i, i64 %i.ge
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.critedge4.i, %.lr.ph32.preheader.i
  %.sroa.010.231.i = phi ptr [ %i.gg, %.critedge4.i ], [ %.sroa.010.1.i, %.lr.ph32.preheader.i ] ; 3 uses
  %i.gf = load i8, ptr %.sroa.010.231.i, align 1
  switch i8 %i.gf, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit [
    i8 9, label %.critedge4.i
    i8 32, label %.critedge4.i
  ]

.critedge4.i:                                     ; preds = %.lr.ph32.i, %.lr.ph32.i
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i, i64 1 ; 2 uses
  %.not20.i = icmp eq ptr %i.gg, %.sroa.0.0.copyload
  br i1 %.not20.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.i, !llvm.loop !10

_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit: ; preds = %.lr.ph32.i, %.critedge4.i, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJfffEEERS1_DpOT_.exit, %bb.w
  %.sroa.010.3.i = phi ptr [ %.sroa.01.0.copyload, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJfffEEERS1_DpOT_.exit ], [ %.sroa.010.1.i, %bb.w ], [ %.sroa.010.231.i, %.lr.ph32.i ], [ %scevgep.i, %.critedge4.i ]
  store ptr %.sroa.010.3.i, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13ObjFileParser14getTwoVectors3ERSt6vectorI10aiVector3tIfESaIS3_EES6_(ptr noundef nonnull align 8 dereferenceable(4184) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %i.e = alloca float, align 4                    ; 5 uses
  %i.f = alloca float, align 4                    ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 30 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %0, align 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %.sroa.03.0.copyload.i = load ptr, ptr %i.h, align 8 ; 9 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.03.0.copyload.i, i64 -1 ; 4 uses
  %i.j = icmp eq ptr %.sroa.04.0.copyload.i, %.sroa.03.0.copyload.i
  %i.k = icmp eq ptr %.sroa.04.0.copyload.i, %i.i
  %.0.i6.i.i = select i1 %i.j, i1 true, i1 %i.k
  br i1 %.0.i6.i.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
  %.sroa.0.07.i.i = phi ptr [ %i.m, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i ], [ %.sroa.04.0.copyload.i, %bb.a ] ; 3 uses
  %i.l = load i8, ptr %.sroa.0.07.i.i, align 1
  switch i8 %i.l, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i:             ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 1 ; 4 uses
  %i.n = icmp eq ptr %i.m, %.sroa.03.0.copyload.i
  %i.o = icmp eq ptr %i.m, %i.i
  %.0.i.i.i = select i1 %i.n, i1 true, i1 %i.o
  br i1 %.0.i.i.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, label %.lr.ph.i.i, !llvm.loop !24

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i, %.lr.ph.i.i, %bb.a
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.04.0.copyload.i, %bb.a ], [ %.sroa.0.07.i.i, %.lr.ph.i.i ], [ %i.m, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i ] ; 4 uses
  store ptr %.sroa.0.0.lcssa.i.i, ptr %0, align 8
  %i.p = load i8, ptr %.sroa.0.0.lcssa.i.i, align 1
  %i.q = icmp eq i8 %i.p, 92
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 2 ; 5 uses
  store ptr %i.r, ptr %0, align 8
  %i.s = icmp eq ptr %i.r, %.sroa.03.0.copyload.i
  %i.t = icmp eq ptr %i.r, %i.i
  %.0.i6.i14.i = select i1 %i.s, i1 true, i1 %i.t
  br i1 %.0.i6.i14.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i, label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %bb.b, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i
  %.sroa.0.07.i16.i = phi ptr [ %i.v, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i ], [ %i.r, %bb.b ] ; 3 uses
  %i.u = load i8, ptr %.sroa.0.07.i16.i, align 1
  switch i8 %i.u, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i:           ; preds = %.lr.ph.i15.i, %.lr.ph.i15.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i16.i, i64 1 ; 4 uses
  %i.w = icmp eq ptr %i.v, %.sroa.03.0.copyload.i
  %i.x = icmp eq ptr %i.v, %i.i
  %.0.i.i18.i = select i1 %i.w, i1 true, i1 %i.x
  br i1 %.0.i.i18.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i, label %.lr.ph.i15.i, !llvm.loop !24

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i, %.lr.ph.i15.i, %bb.b
  %.sroa.0.0.lcssa.i19.i = phi ptr [ %i.r, %bb.b ], [ %.sroa.0.07.i16.i, %.lr.ph.i15.i ], [ %i.v, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i ] ; 2 uses
  store ptr %.sroa.0.0.lcssa.i19.i, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
  %i.y = phi ptr [ %.sroa.0.0.lcssa.i19.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i ], [ %.sroa.0.0.lcssa.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ] ; 2 uses
  %.not22.i = icmp eq ptr %i.y, %.sroa.03.0.copyload.i
  br i1 %.not22.i, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %i.z = phi ptr [ %i.am, %bb.d ], [ %i.y, %bb.c ] ; 4 uses
  %.023.i = phi i64 [ %i.al, %bb.d ], [ 0, %bb.c ] ; 10 uses
  %i.aa = load i8, ptr %i.z, align 1              ; 2 uses
  switch i8 %i.aa, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i [
    i8 32, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 9, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 13, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 10, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 0, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 12, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i:       ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 %.023.i
  store i8 %i.aa, ptr %i.ab, align 1
  %i.ac = add nuw nsw i64 %.023.i, 1              ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 3 uses
  store ptr %i.ad, ptr %0, align 8
  %.not.i = icmp eq ptr %i.ad, %.sroa.03.0.copyload.i
  br i1 %.not.i, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i
  %i.ae = load i8, ptr %i.ad, align 1             ; 2 uses
  switch i8 %i.ae, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.1 [
    i8 32, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 9, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 13, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 10, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 0, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 12, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.1:     ; preds = %.lr.ph.i.1
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ac
  store i8 %i.ae, ptr %i.af, align 1
  %i.ag = add nuw nsw i64 %.023.i, 2              ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 2 ; 3 uses
  store ptr %i.ah, ptr %0, align 8
  %.not.i.1 = icmp eq ptr %i.ah, %.sroa.03.0.copyload.i
  br i1 %.not.i.1, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.1
  %i.ai = load i8, ptr %i.ah, align 1             ; 2 uses
  switch i8 %i.ai, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.2 [
    i8 32, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 9, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 13, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 10, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 0, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 12, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.2:     ; preds = %.lr.ph.i.2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ag
  store i8 %i.ai, ptr %i.aj, align 1
  %i.ak = icmp eq i64 %i.ag, 4094
  br i1 %i.ak, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.2
  %i.al = add nuw nsw i64 %.023.i, 3              ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 3 ; 3 uses
  store ptr %i.am, ptr %0, align 8
  %.not.i.2 = icmp eq ptr %i.am, %.sroa.03.0.copyload.i
  br i1 %.not.i.2, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit, label %.lr.ph.i, !llvm.loop !25

_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit: ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i, %.lr.ph.i.1, %.lr.ph.i.1, %.lr.ph.i.1, %.lr.ph.i.1, %.lr.ph.i.1, %.lr.ph.i.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.1, %.lr.ph.i.2, %.lr.ph.i.2, %.lr.ph.i.2, %.lr.ph.i.2, %.lr.ph.i.2, %.lr.ph.i.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.2, %bb.d, %bb.c
  %.1.i = phi i64 [ 0, %bb.c ], [ %i.al, %bb.d ], [ %.023.i, %.lr.ph.i ], [ %.023.i, %.lr.ph.i ], [ %.023.i, %.lr.ph.i ], [ %.023.i, %.lr.ph.i ], [ %.023.i, %.lr.ph.i ], [ %.023.i, %.lr.ph.i ], [ %i.ac, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i ], [ %i.ac, %.lr.ph.i.1 ], [ %i.ac, %.lr.ph.i.1 ], [ %i.ac, %.lr.ph.i.1 ], [ %i.ac, %.lr.ph.i.1 ], [ %i.ac, %.lr.ph.i.1 ], [ %i.ac, %.lr.ph.i.1 ], [ 4095, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.2 ], [ %i.ag, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.1 ], [ %i.ag, %.lr.ph.i.2 ], [ %i.ag, %.lr.ph.i.2 ], [ %i.ag, %.lr.ph.i.2 ], [ %i.ag, %.lr.ph.i.2 ], [ %i.ag, %.lr.ph.i.2 ], [ %i.ag, %.lr.ph.i.2 ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 %.1.i
  store i8 0, ptr %i.an, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  store float 0.000000e+00, ptr %i.f, align 4
  %i.ao = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.f, i1 noundef zeroext true) ; 0 uses
  %i.ap = load float, ptr %i.f, align 4           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  %.sroa.04.0.copyload.i5 = load ptr, ptr %0, align 8 ; 4 uses
  %.sroa.03.0.copyload.i6 = load ptr, ptr %i.h, align 8 ; 9 uses
  %i.aq = getelementptr inbounds i8, ptr %.sroa.03.0.copyload.i6, i64 -1 ; 4 uses
  %i.ar = icmp eq ptr %.sroa.04.0.copyload.i5, %.sroa.03.0.copyload.i6
  %i.as = icmp eq ptr %.sroa.04.0.copyload.i5, %i.aq
  %.0.i6.i.i7 = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %.0.i6.i.i7, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i12, label %.lr.ph.i.i8

.lr.ph.i.i8:                                      ; preds = %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i10
  %.sroa.0.07.i.i9 = phi ptr [ %i.au, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i10 ], [ %.sroa.04.0.copyload.i5, %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit ] ; 3 uses
  %i.at = load i8, ptr %.sroa.0.07.i.i9, align 1
  switch i8 %i.at, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i12 [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i10
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i10
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i10:           ; preds = %.lr.ph.i.i8, %.lr.ph.i.i8
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i9, i64 1 ; 4 uses
  %i.av = icmp eq ptr %i.au, %.sroa.03.0.copyload.i6
  %i.aw = icmp eq ptr %i.au, %i.aq
  %.0.i.i.i11 = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %.0.i.i.i11, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i12, label %.lr.ph.i.i8, !llvm.loop !24

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i12: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i10, %.lr.ph.i.i8, %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
  %.sroa.0.0.lcssa.i.i13 = phi ptr [ %.sroa.04.0.copyload.i5, %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit ], [ %.sroa.0.07.i.i9, %.lr.ph.i.i8 ], [ %i.au, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i10 ] ; 4 uses
  store ptr %.sroa.0.0.lcssa.i.i13, ptr %0, align 8
  %i.ax = load i8, ptr %.sroa.0.0.lcssa.i.i13, align 1
  %i.ay = icmp eq i8 %i.ax, 92
end_hunk_3
begin_hunk_4_@_ZN6Assimp13ObjFileParser14getTwoVectors3ERSt6vectorI10aiVector3tIfESaIS3_EES6_:bb.a
  %i.hc = icmp eq ptr %i.hb, %.sroa.03.0.copyload.i99
  %i.hd = icmp eq ptr %i.hb, %i.gx
  %.0.i.i.i104 = select i1 %i.hc, i1 true, i1 %i.hd
  br i1 %.0.i.i.i104, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i105, label %.lr.ph.i.i101, !llvm.loop !24

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i105: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i103, %.lr.ph.i.i101, %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit97
  %.sroa.0.0.lcssa.i.i106 = phi ptr [ %.sroa.04.0.copyload.i98, %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit97 ], [ %.sroa.0.07.i.i102, %.lr.ph.i.i101 ], [ %i.hb, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i103 ] ; 4 uses
  store ptr %.sroa.0.0.lcssa.i.i106, ptr %0, align 8
  %i.he = load i8, ptr %.sroa.0.0.lcssa.i.i106, align 1
  %i.hf = icmp eq i8 %i.he, 92
  br i1 %i.hf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i105
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i106, i64 2 ; 5 uses
  store ptr %i.hg, ptr %0, align 8
  %i.hh = icmp eq ptr %i.hg, %.sroa.03.0.copyload.i99
  %i.hi = icmp eq ptr %i.hg, %i.gx
  %.0.i6.i14.i113 = select i1 %i.hh, i1 true, i1 %i.hi
  br i1 %.0.i6.i14.i113, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i118, label %.lr.ph.i15.i114

.lr.ph.i15.i114:                                  ; preds = %bb.u, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i116
  %.sroa.0.07.i16.i115 = phi ptr [ %i.hk, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i116 ], [ %i.hg, %bb.u ] ; 3 uses
  %i.hj = load i8, ptr %.sroa.0.07.i16.i115, align 1
  switch i8 %i.hj, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i118 [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i116
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i116
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i116:        ; preds = %.lr.ph.i15.i114, %.lr.ph.i15.i114
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i16.i115, i64 1 ; 4 uses
  %i.hl = icmp eq ptr %i.hk, %.sroa.03.0.copyload.i99
  %i.hm = icmp eq ptr %i.hk, %i.gx
  %.0.i.i18.i117 = select i1 %i.hl, i1 true, i1 %i.hm
  br i1 %.0.i.i18.i117, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i118, label %.lr.ph.i15.i114, !llvm.loop !24

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i118: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i116, %.lr.ph.i15.i114, %bb.u
  %.sroa.0.0.lcssa.i19.i119 = phi ptr [ %i.hg, %bb.u ], [ %.sroa.0.07.i16.i115, %.lr.ph.i15.i114 ], [ %i.hk, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i116 ] ; 2 uses
  store ptr %.sroa.0.0.lcssa.i19.i119, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i118, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i105
  %i.hn = phi ptr [ %.sroa.0.0.lcssa.i19.i119, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i118 ], [ %.sroa.0.0.lcssa.i.i106, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i105 ] ; 2 uses
  %.not22.i107 = icmp eq ptr %i.hn, %.sroa.03.0.copyload.i99
  br i1 %.not22.i107, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit120, label %.lr.ph.i108

.lr.ph.i108:                                      ; preds = %bb.v, %bb.w
  %i.ho = phi ptr [ %i.ib, %bb.w ], [ %i.hn, %bb.v ] ; 4 uses
  %.023.i109 = phi i64 [ %i.ia, %bb.w ], [ 0, %bb.v ] ; 10 uses
  %i.hp = load i8, ptr %i.ho, align 1             ; 2 uses
  switch i8 %i.hp, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i111 [
    i8 32, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit120
    i8 9, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit120
    i8 13, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit120
    i8 10, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit120
    i8 0, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit120
    i8 12, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit120
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i111:    ; preds = %.lr.ph.i108
  %i.hq = getelementptr inbounds nuw i8, ptr %i.g, i64 %.023.i109
  store i8 %i.hp, ptr %i.hq, align 1
  %i.hr = add nuw nsw i64 %.023.i109, 1           ; 8 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 1 ; 3 uses
  store ptr %i.hs, ptr %0, align 8
  %.not.i112 = icmp eq ptr %i.hs, %.sroa.03.0.copyload.i99
  br i1 %.not.i112, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit120, label %.lr.ph.i108.1

.lr.ph.i108.1:                                    ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i111
  %i.ht = load i8, ptr %i.hs, align 1             ; 2 uses
  switch i8 %i.ht, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i111.1 [
    i8 32, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit120
    i8 9, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit120
    i8 13, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit120
    i8 10, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit120
    i8 0, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit120
    i8 12, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit120
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i111.1:  ; preds = %.lr.ph.i108.1
  %i.hu = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.hr
  store i8 %i.ht, ptr %i.hu, align 1
  %i.hv = add nuw nsw i64 %.023.i109, 2           ; 9 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ho, i64 2 ; 3 uses
  store ptr %i.hw, ptr %0, align 8
  %.not.i112.1 = icmp eq ptr %i.hw, %.sroa.03.0.copyload.i99
  br i1 %.not.i112.1, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit120, label %.lr.ph.i108.2

.lr.ph.i108.2:                                    ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i111.1
  %i.hx = load i8, ptr %i.hw, align 1             ; 2 uses
  switch i8 %i.hx, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i111.2 [
    i8 32, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit120
    i8 9, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit120
    i8 13, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit120
    i8 10, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit120
    i8 0, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit120
    i8 12, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit120
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i111.2:  ; preds = %.lr.ph.i108.2
  %i.hy = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.hv
  store i8 %i.hx, ptr %i.hy, align 1
  %i.hz = icmp eq i64 %i.hv, 4094
  br i1 %i.hz, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit120, label %bb.w

bb.w:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i111.2
  %i.ia = add nuw nsw i64 %.023.i109, 3           ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ho, i64 3 ; 3 uses
  store ptr %i.ib, ptr %0, align 8
  %.not.i112.2 = icmp eq ptr %i.ib, %.sroa.03.0.copyload.i99
  br i1 %.not.i112.2, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit120, label %.lr.ph.i108, !llvm.loop !25

_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit120: ; preds = %.lr.ph.i108, %.lr.ph.i108, %.lr.ph.i108, %.lr.ph.i108, %.lr.ph.i108, %.lr.ph.i108, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i111, %.lr.ph.i108.1, %.lr.ph.i108.1, %.lr.ph.i108.1, %.lr.ph.i108.1, %.lr.ph.i108.1, %.lr.ph.i108.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i111.1, %.lr.ph.i108.2, %.lr.ph.i108.2, %.lr.ph.i108.2, %.lr.ph.i108.2, %.lr.ph.i108.2, %.lr.ph.i108.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i111.2, %bb.w, %bb.v
  %.1.i110 = phi i64 [ 0, %bb.v ], [ %i.ia, %bb.w ], [ %.023.i109, %.lr.ph.i108 ], [ %.023.i109, %.lr.ph.i108 ], [ %.023.i109, %.lr.ph.i108 ], [ %.023.i109, %.lr.ph.i108 ], [ %.023.i109, %.lr.ph.i108 ], [ %.023.i109, %.lr.ph.i108 ], [ %i.hr, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i111 ], [ %i.hr, %.lr.ph.i108.1 ], [ %i.hr, %.lr.ph.i108.1 ], [ %i.hr, %.lr.ph.i108.1 ], [ %i.hr, %.lr.ph.i108.1 ], [ %i.hr, %.lr.ph.i108.1 ], [ %i.hr, %.lr.ph.i108.1 ], [ 4095, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i111.2 ], [ %i.hv, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i111.1 ], [ %i.hv, %.lr.ph.i108.2 ], [ %i.hv, %.lr.ph.i108.2 ], [ %i.hv, %.lr.ph.i108.2 ], [ %i.hv, %.lr.ph.i108.2 ], [ %i.hv, %.lr.ph.i108.2 ], [ %i.hv, %.lr.ph.i108.2 ]
  %i.ic = getelementptr inbounds nuw i8, ptr %i.g, i64 %.1.i110
  store i8 0, ptr %i.ic, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store float 0.000000e+00, ptr %i.a, align 4
  %i.id = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i1 noundef zeroext true) ; 0 uses
  %i.ie = load float, ptr %i.a, align 4           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ig = load ptr, ptr %i.if, align 8            ; 7 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8
  %.not.i121 = icmp eq ptr %i.ig, %i.ii
  br i1 %.not.i121, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit120
  store float %i.fo, ptr %i.ig, align 4
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 4
  store float %i.gw, ptr %i.ij, align 4
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  store float %i.ie, ptr %i.ik, align 4
  %i.il = load ptr, ptr %i.if, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 12
  store ptr %i.im, ptr %i.if, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit134

bb.y:                                             ; preds = %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit120
  %i.in = load ptr, ptr %2, align 8               ; 5 uses
  %i.io = ptrtoint ptr %i.ig to i64
  %i.ip = ptrtoint ptr %i.in to i64
  %i.iq = sub i64 %i.io, %i.ip                    ; 4 uses
  %i.ir = icmp eq i64 %i.iq, 9223372036854775800
  br i1 %i.ir, label %bb.z, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i122

bb.z:                                             ; preds = %bb.y
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #32
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i122: ; preds = %bb.y
  %i.is = sdiv exact i64 %i.iq, 12                ; 3 uses
  %.sroa.speculated.i.i.i123 = call i64 @llvm.umax.i64(i64 %i.is, i64 1)
  %i.it = add nsw i64 %.sroa.speculated.i.i.i123, %i.is ; 2 uses
  %i.iu = icmp ult i64 %i.it, %i.is
  %i.iv = call i64 @llvm.umin.i64(i64 %i.it, i64 768614336404564650)
  %i.iw = select i1 %i.iu, i64 768614336404564650, i64 %i.iv ; 3 uses
  %.not.i.i.i124 = icmp ne i64 %i.iw, 0
  call void @llvm.assume(i1 %.not.i.i.i124)
  %i.ix = mul nuw nsw i64 %i.iw, 12
  %i.iy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ix) #30 ; 5 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.iq ; 3 uses
  store float %i.fo, ptr %i.iz, align 4
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 4
  store float %i.gw, ptr %i.ja, align 4
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  store float %i.ie, ptr %i.jb, align 4
  %.not10.i.i.i.i.i125 = icmp eq ptr %i.in, %i.ig
  br i1 %.not10.i.i.i.i.i125, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i130, label %.lr.ph.i.i.i.i.i126

.lr.ph.i.i.i.i.i126:                              ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i122, %.lr.ph.i.i.i.i.i126
  %.012.i.i.i.i.i127 = phi ptr [ %i.jd, %.lr.ph.i.i.i.i.i126 ], [ %i.iy, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i122 ] ; 2 uses
  %.0911.i.i.i.i.i128 = phi ptr [ %i.jc, %.lr.ph.i.i.i.i.i126 ], [ %i.in, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i122 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i127, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i128, i64 12, i1 false), !alias.scope !39
  %i.jc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i128, i64 12 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i127, i64 12 ; 2 uses
  %.not.i.i.i.i.i129 = icmp eq ptr %i.jc, %i.ig
  br i1 %.not.i.i.i.i.i129, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i130, label %.lr.ph.i.i.i.i.i126, !llvm.loop !30

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i130: ; preds = %.lr.ph.i.i.i.i.i126, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i122
  %.0.lcssa.i.i.i.i.i131 = phi ptr [ %i.iy, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i122 ], [ %i.jd, %.lr.ph.i.i.i.i.i126 ]
  %i.je = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i131, i64 12
  %.not.i35.i.i132 = icmp eq ptr %i.in, null
  br i1 %.not.i35.i.i132, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i133, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i130
  call void @_ZdlPvm(ptr noundef nonnull %i.in, i64 noundef %i.iq) #29
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i133

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i133: ; preds = %bb.aa, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i130
  store ptr %i.iy, ptr %2, align 8
  store ptr %i.je, ptr %i.if, align 8
  %i.jf = getelementptr inbounds nuw [12 x i8], ptr %i.iy, i64 %i.iw
  store ptr %i.jf, ptr %i.ih, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit134

_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit134: ; preds = %bb.x, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i133
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.h, align 8 ; 7 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %3 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.not.i135 = icmp ult ptr %.sroa.01.0.copyload, %.sroa.0.0.copyload
  br i1 %.not.i135, label %.preheader.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit

.preheader.i:                                     ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit134
  %i.jh = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 -1 ; 2 uses
  %i.ji = icmp eq ptr %.sroa.01.0.copyload, %i.jh
  br i1 %i.ji, label %.critedge.i, label %.lr.ph.i136

.lr.ph.i136:                                      ; preds = %.preheader.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %.sroa.010.021.i = phi ptr [ %i.jk, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.01.0.copyload, %.preheader.i ] ; 6 uses
  %i.jj = load i8, ptr %.sroa.010.021.i, align 1
  switch i8 %i.jj, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 13, label %.critedge.i
    i8 10, label %.critedge.i
    i8 0, label %.critedge.i
    i8 12, label %.critedge.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %.lr.ph.i136
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i, i64 1 ; 4 uses
  %i.jl = icmp eq ptr %i.jk, %.sroa.0.0.copyload
  %i.jm = icmp eq ptr %i.jk, %i.jh
  %.0.i.i = or i1 %i.jl, %i.jm
  br i1 %.0.i.i, label %.critedge.i, label %.lr.ph.i136, !llvm.loop !9

.critedge.i:                                      ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %.lr.ph.i136, %.lr.ph.i136, %.lr.ph.i136, %.lr.ph.i136, %.preheader.i
  %.sroa.010.0.lcssa.i = phi ptr [ %.sroa.01.0.copyload, %.preheader.i ], [ %i.jk, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.010.021.i, %.lr.ph.i136 ], [ %.sroa.010.021.i, %.lr.ph.i136 ], [ %.sroa.010.021.i, %.lr.ph.i136 ], [ %.sroa.010.021.i, %.lr.ph.i136 ] ; 3 uses
  %.not19.i = icmp eq ptr %.sroa.010.0.lcssa.i, %.sroa.0.0.copyload
  br i1 %.not19.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.critedge.i
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i, i64 1
  %i.jo = load i32, ptr %i.jg, align 8
  %i.jp = add i32 %i.jo, 1
  store i32 %i.jp, ptr %i.jg, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.critedge.i
  %.sroa.010.1.i = phi ptr [ %i.jn, %bb.ab ], [ %.sroa.010.0.lcssa.i, %.critedge.i ] ; 5 uses
  %.not2030.i = icmp eq ptr %.sroa.010.1.i, %.sroa.0.0.copyload
  br i1 %.not2030.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.preheader.i

.lr.ph32.preheader.i:                             ; preds = %bb.ac
  %.sroa.010.136.i = ptrtoaddr ptr %.sroa.010.1.i to i64
  %i.jq = sub i64 %3, %.sroa.010.136.i
  %scevgep.i = getelementptr i8, ptr %.sroa.010.1.i, i64 %i.jq
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.critedge4.i, %.lr.ph32.preheader.i
  %.sroa.010.231.i = phi ptr [ %i.js, %.critedge4.i ], [ %.sroa.010.1.i, %.lr.ph32.preheader.i ] ; 3 uses
  %i.jr = load i8, ptr %.sroa.010.231.i, align 1
  switch i8 %i.jr, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit [
    i8 9, label %.critedge4.i
    i8 32, label %.critedge4.i
  ]

.critedge4.i:                                     ; preds = %.lr.ph32.i, %.lr.ph32.i
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i, i64 1 ; 2 uses
  %.not20.i = icmp eq ptr %i.js, %.sroa.0.0.copyload
  br i1 %.not20.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.i, !llvm.loop !10

_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit: ; preds = %.lr.ph32.i, %.critedge4.i, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit134, %bb.ac
  %.sroa.010.3.i = phi ptr [ %.sroa.01.0.copyload, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit134 ], [ %.sroa.010.1.i, %bb.ac ], [ %.sroa.010.231.i, %.lr.ph32.i ], [ %scevgep.i, %.critedge4.i ]
  store ptr %.sroa.010.3.i, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6Assimp13ObjFileParser17getTexCoordVectorERSt6vectorI10aiVector3tIfESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(4184) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %i.e = alloca float, align 4                    ; 5 uses
  %i.f = tail call noundef i64 @_ZN6Assimp13ObjFileParser32getNumComponentsInDataDefinitionEv(ptr noundef nonnull align 8 dereferenceable(4184) %0) ; 2 uses
  switch i64 %i.f, label %bb.s [
    i64 2, label %bb.b
    i64 3, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 10 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %0, align 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.03.0.copyload.i = load ptr, ptr %i.h, align 8 ; 9 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.03.0.copyload.i, i64 -1 ; 4 uses
  %i.j = icmp eq ptr %.sroa.04.0.copyload.i, %.sroa.03.0.copyload.i
  %i.k = icmp eq ptr %.sroa.04.0.copyload.i, %i.i
  %.0.i6.i.i = select i1 %i.j, i1 true, i1 %i.k
  br i1 %.0.i6.i.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
  %.sroa.0.07.i.i = phi ptr [ %i.m, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i ], [ %.sroa.04.0.copyload.i, %bb.b ] ; 3 uses
  %i.l = load i8, ptr %.sroa.0.07.i.i, align 1
  switch i8 %i.l, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i:             ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 1 ; 4 uses
  %i.n = icmp eq ptr %i.m, %.sroa.03.0.copyload.i
  %i.o = icmp eq ptr %i.m, %i.i
  %.0.i.i.i = select i1 %i.n, i1 true, i1 %i.o
  br i1 %.0.i.i.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, label %.lr.ph.i.i, !llvm.loop !24

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i, %.lr.ph.i.i, %bb.b
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.04.0.copyload.i, %bb.b ], [ %.sroa.0.07.i.i, %.lr.ph.i.i ], [ %i.m, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i ] ; 4 uses
  store ptr %.sroa.0.0.lcssa.i.i, ptr %0, align 8
  %i.p = load i8, ptr %.sroa.0.0.lcssa.i.i, align 1
  %i.q = icmp eq i8 %i.p, 92
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 2 ; 5 uses
  store ptr %i.r, ptr %0, align 8
  %i.s = icmp eq ptr %i.r, %.sroa.03.0.copyload.i
  %i.t = icmp eq ptr %i.r, %i.i
  %.0.i6.i14.i = select i1 %i.s, i1 true, i1 %i.t
  br i1 %.0.i6.i14.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i, label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %bb.c, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i
  %.sroa.0.07.i16.i = phi ptr [ %i.v, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.u = load i8, ptr %.sroa.0.07.i16.i, align 1
  switch i8 %i.u, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i:           ; preds = %.lr.ph.i15.i, %.lr.ph.i15.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i16.i, i64 1 ; 4 uses
  %i.w = icmp eq ptr %i.v, %.sroa.03.0.copyload.i
  %i.x = icmp eq ptr %i.v, %i.i
  %.0.i.i18.i = select i1 %i.w, i1 true, i1 %i.x
  br i1 %.0.i.i18.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i, label %.lr.ph.i15.i, !llvm.loop !24

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i, %.lr.ph.i15.i, %bb.c
  %.sroa.0.0.lcssa.i19.i = phi ptr [ %i.r, %bb.c ], [ %.sroa.0.07.i16.i, %.lr.ph.i15.i ], [ %i.v, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i ] ; 2 uses
  store ptr %.sroa.0.0.lcssa.i19.i, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
  %i.y = phi ptr [ %.sroa.0.0.lcssa.i19.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i ], [ %.sroa.0.0.lcssa.i.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ] ; 2 uses
  %.not22.i = icmp eq ptr %i.y, %.sroa.03.0.copyload.i
  br i1 %.not22.i, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %i.z = phi ptr [ %i.am, %bb.e ], [ %i.y, %bb.d ] ; 4 uses
  %.023.i = phi i64 [ %i.al, %bb.e ], [ 0, %bb.d ] ; 10 uses
  %i.aa = load i8, ptr %i.z, align 1              ; 2 uses
  switch i8 %i.aa, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i [
    i8 32, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 9, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 13, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 10, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 0, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 12, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i:       ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 %.023.i
  store i8 %i.aa, ptr %i.ab, align 1
  %i.ac = add nuw nsw i64 %.023.i, 1              ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 3 uses
  store ptr %i.ad, ptr %0, align 8
  %.not.i = icmp eq ptr %i.ad, %.sroa.03.0.copyload.i
  br i1 %.not.i, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i
  %i.ae = load i8, ptr %i.ad, align 1             ; 2 uses
  switch i8 %i.ae, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.1 [
    i8 32, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 9, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 13, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 10, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 0, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 12, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.1:     ; preds = %.lr.ph.i.1
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ac
  store i8 %i.ae, ptr %i.af, align 1
  %i.ag = add nuw nsw i64 %.023.i, 2              ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 2 ; 3 uses
  store ptr %i.ah, ptr %0, align 8
  %.not.i.1 = icmp eq ptr %i.ah, %.sroa.03.0.copyload.i
  br i1 %.not.i.1, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.1
  %i.ai = load i8, ptr %i.ah, align 1             ; 2 uses
  switch i8 %i.ai, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.2 [
    i8 32, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 9, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 13, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 10, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 0, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
    i8 12, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.2:     ; preds = %.lr.ph.i.2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ag
  store i8 %i.ai, ptr %i.aj, align 1
  %i.ak = icmp eq i64 %i.ag, 4094
  br i1 %i.ak, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.2
  %i.al = add nuw nsw i64 %.023.i, 3              ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 3 ; 3 uses
  store ptr %i.am, ptr %0, align 8
  %.not.i.2 = icmp eq ptr %i.am, %.sroa.03.0.copyload.i
  br i1 %.not.i.2, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit, label %.lr.ph.i, !llvm.loop !25

_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit: ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i, %.lr.ph.i.1, %.lr.ph.i.1, %.lr.ph.i.1, %.lr.ph.i.1, %.lr.ph.i.1, %.lr.ph.i.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.1, %.lr.ph.i.2, %.lr.ph.i.2, %.lr.ph.i.2, %.lr.ph.i.2, %.lr.ph.i.2, %.lr.ph.i.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.2, %bb.e, %bb.d
  %.1.i = phi i64 [ 0, %bb.d ], [ %i.al, %bb.e ], [ %.023.i, %.lr.ph.i ], [ %.023.i, %.lr.ph.i ], [ %.023.i, %.lr.ph.i ], [ %.023.i, %.lr.ph.i ], [ %.023.i, %.lr.ph.i ], [ %.023.i, %.lr.ph.i ], [ %i.ac, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i ], [ %i.ac, %.lr.ph.i.1 ], [ %i.ac, %.lr.ph.i.1 ], [ %i.ac, %.lr.ph.i.1 ], [ %i.ac, %.lr.ph.i.1 ], [ %i.ac, %.lr.ph.i.1 ], [ %i.ac, %.lr.ph.i.1 ], [ 4095, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.2 ], [ %i.ag, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.1 ], [ %i.ag, %.lr.ph.i.2 ], [ %i.ag, %.lr.ph.i.2 ], [ %i.ag, %.lr.ph.i.2 ], [ %i.ag, %.lr.ph.i.2 ], [ %i.ag, %.lr.ph.i.2 ], [ %i.ag, %.lr.ph.i.2 ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 %.1.i
  store i8 0, ptr %i.an, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  store float 0.000000e+00, ptr %i.e, align 4
  %i.ao = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.e, i1 noundef zeroext true) ; 0 uses
  %i.ap = load float, ptr %i.e, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  %.sroa.04.0.copyload.i8 = load ptr, ptr %0, align 8 ; 4 uses
  %.sroa.03.0.copyload.i9 = load ptr, ptr %i.h, align 8 ; 9 uses
  %i.aq = getelementptr inbounds i8, ptr %.sroa.03.0.copyload.i9, i64 -1 ; 4 uses
  %i.ar = icmp eq ptr %.sroa.04.0.copyload.i8, %.sroa.03.0.copyload.i9
  %i.as = icmp eq ptr %.sroa.04.0.copyload.i8, %i.aq
  %.0.i6.i.i10 = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %.0.i6.i.i10, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i15, label %.lr.ph.i.i11

.lr.ph.i.i11:                                     ; preds = %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i13
  %.sroa.0.07.i.i12 = phi ptr [ %i.au, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i13 ], [ %.sroa.04.0.copyload.i8, %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit ] ; 3 uses
  %i.at = load i8, ptr %.sroa.0.07.i.i12, align 1
  switch i8 %i.at, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i15 [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i13
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i13
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i13:           ; preds = %.lr.ph.i.i11, %.lr.ph.i.i11
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i12, i64 1 ; 4 uses
  %i.av = icmp eq ptr %i.au, %.sroa.03.0.copyload.i9
  %i.aw = icmp eq ptr %i.au, %i.aq
  %.0.i.i.i14 = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %.0.i.i.i14, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i15, label %.lr.ph.i.i11, !llvm.loop !24
end_hunk_4
begin_hunk_5_@_ZN6Assimp13ObjFileParser17getTexCoordVectorERSt6vectorI10aiVector3tIfESaIS3_EE:bb.a
  %i.ff = icmp eq ptr %i.fd, %i.eq
  %.0.i.i18.i96 = select i1 %i.fe, i1 true, i1 %i.ff
  br i1 %.0.i.i18.i96, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i97, label %.lr.ph.i15.i93, !llvm.loop !24

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i97: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i95, %.lr.ph.i15.i93, %bb.p
  %.sroa.0.0.lcssa.i19.i98 = phi ptr [ %i.ez, %bb.p ], [ %.sroa.0.07.i16.i94, %.lr.ph.i15.i93 ], [ %i.fd, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17.i95 ] ; 2 uses
  store ptr %.sroa.0.0.lcssa.i19.i98, ptr %0, align 8
  br label %bb.q

bb.q:                                             ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i97, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i84
  %i.fg = phi ptr [ %.sroa.0.0.lcssa.i19.i98, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20.i97 ], [ %.sroa.0.0.lcssa.i.i85, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i84 ] ; 2 uses
  %.not22.i86 = icmp eq ptr %i.fg, %.sroa.03.0.copyload.i78
  br i1 %.not22.i86, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit99, label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %bb.q, %bb.r
  %i.fh = phi ptr [ %i.fu, %bb.r ], [ %i.fg, %bb.q ] ; 4 uses
  %.023.i88 = phi i64 [ %i.ft, %bb.r ], [ 0, %bb.q ] ; 10 uses
  %i.fi = load i8, ptr %i.fh, align 1             ; 2 uses
  switch i8 %i.fi, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i90 [
    i8 32, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit99
    i8 9, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit99
    i8 13, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit99
    i8 10, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit99
    i8 0, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit99
    i8 12, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit99
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i90:     ; preds = %.lr.ph.i87
  %i.fj = getelementptr inbounds nuw i8, ptr %i.by, i64 %.023.i88
  store i8 %i.fi, ptr %i.fj, align 1
  %i.fk = add nuw nsw i64 %.023.i88, 1            ; 8 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 1 ; 3 uses
  store ptr %i.fl, ptr %0, align 8
  %.not.i91 = icmp eq ptr %i.fl, %.sroa.03.0.copyload.i78
  br i1 %.not.i91, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit99, label %.lr.ph.i87.1

.lr.ph.i87.1:                                     ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i90
  %i.fm = load i8, ptr %i.fl, align 1             ; 2 uses
  switch i8 %i.fm, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i90.1 [
    i8 32, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit99
    i8 9, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit99
    i8 13, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit99
    i8 10, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit99
    i8 0, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit99
    i8 12, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit99
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i90.1:   ; preds = %.lr.ph.i87.1
  %i.fn = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.fk
  store i8 %i.fm, ptr %i.fn, align 1
  %i.fo = add nuw nsw i64 %.023.i88, 2            ; 9 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fh, i64 2 ; 3 uses
  store ptr %i.fp, ptr %0, align 8
  %.not.i91.1 = icmp eq ptr %i.fp, %.sroa.03.0.copyload.i78
  br i1 %.not.i91.1, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit99, label %.lr.ph.i87.2

.lr.ph.i87.2:                                     ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i90.1
  %i.fq = load i8, ptr %i.fp, align 1             ; 2 uses
  switch i8 %i.fq, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i90.2 [
    i8 32, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit99
    i8 9, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit99
    i8 13, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit99
    i8 10, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit99
    i8 0, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit99
    i8 12, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit99
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i90.2:   ; preds = %.lr.ph.i87.2
  %i.fr = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.fo
  store i8 %i.fq, ptr %i.fr, align 1
  %i.fs = icmp eq i64 %i.fo, 4094
  br i1 %i.fs, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit99, label %bb.r

bb.r:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i90.2
  %i.ft = add nuw nsw i64 %.023.i88, 3            ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fh, i64 3 ; 3 uses
  store ptr %i.fu, ptr %0, align 8
  %.not.i91.2 = icmp eq ptr %i.fu, %.sroa.03.0.copyload.i78
  br i1 %.not.i91.2, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit99, label %.lr.ph.i87, !llvm.loop !25

_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit99: ; preds = %.lr.ph.i87, %.lr.ph.i87, %.lr.ph.i87, %.lr.ph.i87, %.lr.ph.i87, %.lr.ph.i87, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i90, %.lr.ph.i87.1, %.lr.ph.i87.1, %.lr.ph.i87.1, %.lr.ph.i87.1, %.lr.ph.i87.1, %.lr.ph.i87.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i90.1, %.lr.ph.i87.2, %.lr.ph.i87.2, %.lr.ph.i87.2, %.lr.ph.i87.2, %.lr.ph.i87.2, %.lr.ph.i87.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i90.2, %bb.r, %bb.q
  %.1.i89 = phi i64 [ 0, %bb.q ], [ %i.ft, %bb.r ], [ %.023.i88, %.lr.ph.i87 ], [ %.023.i88, %.lr.ph.i87 ], [ %.023.i88, %.lr.ph.i87 ], [ %.023.i88, %.lr.ph.i87 ], [ %.023.i88, %.lr.ph.i87 ], [ %.023.i88, %.lr.ph.i87 ], [ %i.fk, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i90 ], [ %i.fk, %.lr.ph.i87.1 ], [ %i.fk, %.lr.ph.i87.1 ], [ %i.fk, %.lr.ph.i87.1 ], [ %i.fk, %.lr.ph.i87.1 ], [ %i.fk, %.lr.ph.i87.1 ], [ %i.fk, %.lr.ph.i87.1 ], [ 4095, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i90.2 ], [ %i.fo, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i90.1 ], [ %i.fo, %.lr.ph.i87.2 ], [ %i.fo, %.lr.ph.i87.2 ], [ %i.fo, %.lr.ph.i87.2 ], [ %i.fo, %.lr.ph.i87.2 ], [ %i.fo, %.lr.ph.i87.2 ], [ %i.fo, %.lr.ph.i87.2 ]
  %i.fv = getelementptr inbounds nuw i8, ptr %i.by, i64 %.1.i89
  store i8 0, ptr %i.fv, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store float 0.000000e+00, ptr %i.a, align 4
  %i.fw = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.by, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i1 noundef zeroext true) ; 0 uses
  %i.fx = load float, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.v

bb.s:                                             ; preds = %bb.a
  %i.fy = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fy, ptr noundef nonnull @.str.5)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @__cxa_throw(ptr nonnull %i.fy, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.fz = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.fy) #28
  resume { ptr, i32 } %i.fz

bb.v:                                             ; preds = %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit99, %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit30
  %.0112 = phi float [ %i.ap, %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit30 ], [ %i.dh, %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit99 ] ; 2 uses
  %.0111 = phi float [ %i.bx, %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit30 ], [ %i.ep, %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit99 ] ; 2 uses
  %storemerge = phi float [ 0.000000e+00, %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit30 ], [ %i.fx, %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit99 ] ; 2 uses
  %i.ga = call float @llvm.fabs.f32(float %.0112)
  %i.gb = fcmp one float %i.ga, +inf
  %.1113 = select i1 %i.gb, float %.0112, float 0.000000e+00 ; 2 uses
  %i.gc = call float @llvm.fabs.f32(float %.0111)
  %i.gd = fcmp one float %i.gc, +inf
  %.1 = select i1 %i.gd, float %.0111, float 0.000000e+00 ; 2 uses
  %i.ge = call float @llvm.fabs.f32(float %storemerge)
  %i.gf = fcmp one float %i.ge, +inf
  %.0 = select i1 %i.gf, float %storemerge, float 0.000000e+00 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.gh = load ptr, ptr %i.gg, align 8            ; 7 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8
  %.not.i100 = icmp eq ptr %i.gh, %i.gj
  br i1 %.not.i100, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store float %.1113, ptr %i.gh, align 4
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  store float %.1, ptr %i.gk, align 4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store float %.0, ptr %i.gl, align 4
  %i.gm = load ptr, ptr %i.gg, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 12
  store ptr %i.gn, ptr %i.gg, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit

bb.x:                                             ; preds = %bb.v
  %i.go = load ptr, ptr %1, align 8               ; 5 uses
  %i.gp = ptrtoint ptr %i.gh to i64
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = sub i64 %i.gp, %i.gq                    ; 4 uses
  %i.gs = icmp eq i64 %i.gr, 9223372036854775800
  br i1 %i.gs, label %bb.y, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.y:                                             ; preds = %bb.x
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #32
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.x
  %i.gt = sdiv exact i64 %i.gr, 12                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.gt, i64 1)
  %i.gu = add nsw i64 %.sroa.speculated.i.i.i, %i.gt ; 2 uses
  %i.gv = icmp ult i64 %i.gu, %i.gt
  %i.gw = call i64 @llvm.umin.i64(i64 %i.gu, i64 768614336404564650)
  %i.gx = select i1 %i.gv, i64 768614336404564650, i64 %i.gw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.gx, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.gy = mul nuw nsw i64 %i.gx, 12
  %i.gz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gy) #30 ; 5 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gr ; 3 uses
  store float %.1113, ptr %i.ha, align 4
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  store float %.1, ptr %i.hb, align 4
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store float %.0, ptr %i.hc, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.go, %i.gh
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.he, %.lr.ph.i.i.i.i.i ], [ %i.gz, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.hd, %.lr.ph.i.i.i.i.i ], [ %i.go, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !alias.scope !43
  %i.hd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hd, %i.gh
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !30

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.gz, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.he, %.lr.ph.i.i.i.i.i ]
  %i.hf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 12
  %.not.i35.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef %i.gr) #29
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.z, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i
  store ptr %i.gz, ptr %1, align 8
  store ptr %i.hf, ptr %i.gg, align 8
  %i.hg = getelementptr inbounds nuw [12 x i8], ptr %i.gz, i64 %i.gx
  store ptr %i.hg, ptr %i.gi, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit: ; preds = %bb.w, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.hh, align 8 ; 7 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %2 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.not.i101 = icmp ult ptr %.sroa.01.0.copyload, %.sroa.0.0.copyload
  br i1 %.not.i101, label %.preheader.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit

.preheader.i:                                     ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit
  %i.hj = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 -1 ; 2 uses
  %i.hk = icmp eq ptr %.sroa.01.0.copyload, %i.hj
  br i1 %i.hk, label %.critedge.i, label %.lr.ph.i102

.lr.ph.i102:                                      ; preds = %.preheader.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %.sroa.010.021.i = phi ptr [ %i.hm, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.01.0.copyload, %.preheader.i ] ; 6 uses
  %i.hl = load i8, ptr %.sroa.010.021.i, align 1
  switch i8 %i.hl, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 13, label %.critedge.i
    i8 10, label %.critedge.i
    i8 0, label %.critedge.i
    i8 12, label %.critedge.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %.lr.ph.i102
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i, i64 1 ; 4 uses
  %i.hn = icmp eq ptr %i.hm, %.sroa.0.0.copyload
  %i.ho = icmp eq ptr %i.hm, %i.hj
  %.0.i.i = or i1 %i.hn, %i.ho
  br i1 %.0.i.i, label %.critedge.i, label %.lr.ph.i102, !llvm.loop !9

.critedge.i:                                      ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %.lr.ph.i102, %.lr.ph.i102, %.lr.ph.i102, %.lr.ph.i102, %.preheader.i
  %.sroa.010.0.lcssa.i = phi ptr [ %.sroa.01.0.copyload, %.preheader.i ], [ %i.hm, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.010.021.i, %.lr.ph.i102 ], [ %.sroa.010.021.i, %.lr.ph.i102 ], [ %.sroa.010.021.i, %.lr.ph.i102 ], [ %.sroa.010.021.i, %.lr.ph.i102 ] ; 3 uses
  %.not19.i = icmp eq ptr %.sroa.010.0.lcssa.i, %.sroa.0.0.copyload
  br i1 %.not19.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.critedge.i
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i, i64 1
  %i.hq = load i32, ptr %i.hi, align 8
  %i.hr = add i32 %i.hq, 1
  store i32 %i.hr, ptr %i.hi, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.critedge.i
  %.sroa.010.1.i = phi ptr [ %i.hp, %bb.aa ], [ %.sroa.010.0.lcssa.i, %.critedge.i ] ; 5 uses
  %.not2030.i = icmp eq ptr %.sroa.010.1.i, %.sroa.0.0.copyload
  br i1 %.not2030.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.preheader.i

.lr.ph32.preheader.i:                             ; preds = %bb.ab
  %.sroa.010.136.i = ptrtoaddr ptr %.sroa.010.1.i to i64
  %i.hs = sub i64 %2, %.sroa.010.136.i
  %scevgep.i = getelementptr i8, ptr %.sroa.010.1.i, i64 %i.hs
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.critedge4.i, %.lr.ph32.preheader.i
  %.sroa.010.231.i = phi ptr [ %i.hu, %.critedge4.i ], [ %.sroa.010.1.i, %.lr.ph32.preheader.i ] ; 3 uses
  %i.ht = load i8, ptr %.sroa.010.231.i, align 1
  switch i8 %i.ht, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit [
    i8 9, label %.critedge4.i
    i8 32, label %.critedge4.i
  ]

.critedge4.i:                                     ; preds = %.lr.ph32.i, %.lr.ph32.i
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i, i64 1 ; 2 uses
  %.not20.i = icmp eq ptr %i.hu, %.sroa.0.0.copyload
  br i1 %.not20.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.i, !llvm.loop !10

_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit: ; preds = %.lr.ph32.i, %.critedge4.i, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit, %bb.ab
  %.sroa.010.3.i = phi ptr [ %.sroa.01.0.copyload, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit ], [ %.sroa.010.1.i, %bb.ab ], [ %.sroa.010.231.i, %.lr.ph32.i ], [ %scevgep.i, %.critedge4.i ]
  store ptr %.sroa.010.3.i, ptr %0, align 8
  ret i64 %i.f
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13ObjFileParser7getFaceE15aiPrimitiveType(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(4184) %0, i32 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.sroa.041.0.copyload = load ptr, ptr %0, align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.sroa.040.0.copyload = load ptr, ptr %i.a, align 8 ; 7 uses
  %i.b = getelementptr inbounds i8, ptr %.sroa.040.0.copyload, i64 -1 ; 4 uses
  %i.c = icmp eq ptr %.sroa.041.0.copyload, %.sroa.040.0.copyload
  %i.d = icmp eq ptr %.sroa.041.0.copyload, %i.b
  %.0.i5.i.i = select i1 %i.c, i1 true, i1 %i.d
  br i1 %.0.i5.i.i, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i
  %.sroa.0.06.i.i = phi ptr [ %i.f, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i ], [ %.sroa.041.0.copyload, %bb.a ] ; 8 uses
  %i.e = load i8, ptr %.sroa.0.06.i.i, align 1
  switch i8 %i.e, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i [
    i8 32, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
    i8 9, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
    i8 13, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
    i8 10, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
    i8 0, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
    i8 12, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i:     ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i, i64 1 ; 4 uses
  %i.g = icmp eq ptr %i.f, %.sroa.040.0.copyload
  %i.h = icmp eq ptr %i.f, %i.b
  %.0.i.i.i = select i1 %i.g, i1 true, i1 %i.h
  br i1 %.0.i.i.i, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, label %.lr.ph.i.i, !llvm.loop !47

_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %bb.a
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.041.0.copyload, %bb.a ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %i.f, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i ] ; 4 uses
  %i.i = icmp eq ptr %.sroa.0.0.lcssa.i.i, %.sroa.040.0.copyload
  %i.j = icmp eq ptr %.sroa.0.0.lcssa.i.i, %i.b
  %.0.i6.i.i = select i1 %i.i, i1 true, i1 %i.j
  br i1 %.0.i6.i.i, label %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
  %.sroa.0.07.i.i = phi ptr [ %i.l, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i ], [ %.sroa.0.0.lcssa.i.i, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ] ; 3 uses
  %i.k = load i8, ptr %.sroa.0.07.i.i, align 1
  switch i8 %i.k, label %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i:             ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 1 ; 4 uses
  %i.m = icmp eq ptr %i.l, %.sroa.040.0.copyload
  %i.n = icmp eq ptr %i.l, %i.b
  %.0.i.i9.i = select i1 %i.m, i1 true, i1 %i.n
  br i1 %.0.i.i9.i, label %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit, label %.lr.ph.i8.i, !llvm.loop !24

_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit: ; preds = %.lr.ph.i8.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
  %i.o = phi ptr [ %.sroa.0.0.lcssa.i.i, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %.sroa.0.07.i.i, %.lr.ph.i8.i ], [ %i.l, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i ] ; 5 uses
  store ptr %i.o, ptr %0, align 8
  %i.p = icmp eq ptr %i.o, %.sroa.040.0.copyload
  br i1 %i.p, label %bb.ca, label %bb.b

bb.b:                                             ; preds = %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit
  %i.q = load i8, ptr %i.o, align 1
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.ca, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #30 ; 24 uses
  store i32 %1, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.t, i8 0, i64 80, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = load ptr, ptr %i.w, align 8
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = sdiv exact i64 %i.ac, 12
  %i.ae = trunc i64 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 264
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 272
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = sdiv exact i64 %i.al, 12
  %i.an = trunc i64 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = sdiv exact i64 %i.au, 12
  %i.aw = trunc i64 %i.av to i32
  %i.ax = icmp eq ptr %i.ai, %i.ah
  %i.ay = icmp ne ptr %i.ar, %i.aq
  %invariant.op = and i1 %i.ax, %i.ay
  %i.az = icmp ult ptr %i.o, %.sroa.040.0.copyload
  br i1 %i.az, label %.lr.ph219, label %.thread.thread

.lr.ph219:                                        ; preds = %bb.c
  %i.ba = icmp eq i32 %1, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.s, i64 48 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.s, i64 56 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.s, i64 64 ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.s, i64 72 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 9 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph219, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.thread
  %i.bk = phi ptr [ %i.o, %.lr.ph219 ], [ %i.hv, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.thread ] ; 2 uses
  %.049217 = phi i1 [ false, %.lr.ph219 ], [ %.251, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.thread ] ; 18 uses
  %.052216 = phi i32 [ 0, %.lr.ph219 ], [ %.254, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.thread ] ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 1
  switch i8 %i.bl, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit [
    i8 13, label %.thread
    i8 10, label %.thread
    i8 0, label %.thread
    i8 12, label %.thread
    i8 35, label %.thread
    i8 47, label %bb.e
    i8 32, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.thread
    i8 9, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.thread
  ]

bb.e:                                             ; preds = %bb.d
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bm = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.bm, ptr noundef nonnull @.str.7)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bn = add nsw i32 %.052216, 1
  br label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.thread

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit:         ; preds = %bb.d
  %i.bo = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.bk, ptr noundef null, i32 noundef 10) #28, !inline_history !48
  %i.bp = trunc i64 %i.bo to i32                  ; 10 uses
  %i.bq = icmp slt i32 %i.bp, 0                   ; 2 uses
  %spec.select = select i1 %i.bq, i32 2, i32 1    ; 2 uses
  %.060.off212 = add i32 %i.bp, 9
  %.not66213 = icmp ult i32 %.060.off212, 19
  br i1 %.not66213, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit, %.lr.ph
  %.157215 = phi i32 [ %i.bs, %.lr.ph ], [ %spec.select, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit ]
  %.060214 = phi i32 [ %i.br, %.lr.ph ], [ %i.bp, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit ]
  %i.br = sdiv i32 %.060214, 10                   ; 2 uses
  %i.bs = add nuw nsw i32 %.157215, 1             ; 2 uses
  %.060.off = add nsw i32 %i.br, 9
  %.not66 = icmp ult i32 %.060.off, 19
  br i1 %.not66, label %._crit_edge, label %.lr.ph, !llvm.loop !49

._crit_edge:                                      ; preds = %.lr.ph, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit
  %.157.lcssa = phi i32 [ %spec.select, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit ], [ %i.bs, %.lr.ph ]
  %i.bt = icmp eq i32 %.052216, 1
  %or.cond3.reass = and i1 %i.bt, %invariant.op
  %spec.select74 = select i1 %or.cond3.reass, i32 2, i32 %.052216 ; 3 uses
  %i.bu = icmp sgt i32 %i.bp, 0
  br i1 %i.bu, label %bb.h, label %bb.ad

bb.h:                                             ; preds = %._crit_edge
  switch i32 %spec.select74, label %bb.aa [
    i32 0, label %bb.i
    i32 1, label %bb.o
    i32 2, label %bb.u
  ]

bb.i:                                             ; preds = %bb.h
  %i.bv = add nsw i32 %i.bp, -1                   ; 2 uses
  %i.bw = load ptr, ptr %i.bh, align 8            ; 3 uses
  %i.bx = load ptr, ptr %i.bi, align 8
  %.not.i.i = icmp eq ptr %i.bw, %i.bx
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.bv, ptr %i.bw, align 4
  %i.by = load ptr, ptr %i.bh, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store ptr %i.bz, ptr %i.bh, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.k:                                             ; preds = %bb.i
  %i.ca = load ptr, ptr %i.t, align 8             ; 4 uses
  %i.cb = ptrtoint ptr %i.bw to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 6 uses
  %i.ce = icmp eq i64 %i.cd, 9223372036854775804
  br i1 %i.ce, label %bb.l, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #32
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.k
  %i.cf = ashr exact i64 %i.cd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cf, i64 1)
  %i.cg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cf ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %i.cf
  %i.ci = tail call i64 @llvm.umin.i64(i64 %i.cg, i64 2305843009213693951)
  %i.cj = select i1 %i.ch, i64 2305843009213693951, i64 %i.ci ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ck = shl nuw nsw i64 %i.cj, 2
  %i.cl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #30 ; 4 uses
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 %i.cd ; 2 uses
  store i32 %i.bv, ptr %i.cm, align 4
  %i.cn = icmp sgt i64 %i.cd, 0
  br i1 %i.cn, label %bb.m, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cl, ptr align 4 %i.ca, i64 %i.cd, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.m, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.cd) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.cl, ptr %i.t, align 8
  store ptr %i.co, ptr %i.bh, align 8
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cj
  store ptr %i.cp, ptr %i.bi, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.o:                                             ; preds = %bb.h
  %i.cq = add nsw i32 %i.bp, -1                   ; 2 uses
  %i.cr = load ptr, ptr %i.bf, align 8            ; 3 uses
  %i.cs = load ptr, ptr %i.bg, align 8
  %.not.i.i75 = icmp eq ptr %i.cr, %i.cs
  br i1 %.not.i.i75, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %i.cq, ptr %i.cr, align 4
  %i.ct = load ptr, ptr %i.bf, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store ptr %i.cu, ptr %i.bf, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.q:                                             ; preds = %bb.o
  %i.cv = load ptr, ptr %i.be, align 8            ; 4 uses
  %i.cw = ptrtoint ptr %i.cr to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx                    ; 6 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775804
  br i1 %i.cz, label %bb.r, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i76

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #32
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i76: ; preds = %bb.q
  %i.da = ashr exact i64 %i.cy, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i77 = tail call i64 @llvm.umax.i64(i64 %i.da, i64 1)
  %i.db = add nsw i64 %.sroa.speculated.i.i.i.i77, %i.da ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.da
  %i.dd = tail call i64 @llvm.umin.i64(i64 %i.db, i64 2305843009213693951)
  %i.de = select i1 %i.dc, i64 2305843009213693951, i64 %i.dd ; 3 uses
  %.not.i.i.i.i78 = icmp ne i64 %i.de, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i78)
  %i.df = shl nuw nsw i64 %i.de, 2
  %i.dg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #30 ; 4 uses
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 %i.cy ; 2 uses
  store i32 %i.cq, ptr %i.dh, align 4
  %i.di = icmp sgt i64 %i.cy, 0
  br i1 %i.di, label %bb.s, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i79

bb.s:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i76
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dg, ptr align 4 %i.cv, i64 %i.cy, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i79

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i79: ; preds = %bb.s, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i76
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %.not.i17.i.i.i80 = icmp eq ptr %i.cv, null
  br i1 %.not.i17.i.i.i80, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i81, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i79
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.cy) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i81

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i81: ; preds = %bb.t, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i79
  store ptr %i.dg, ptr %i.be, align 8
  store ptr %i.dj, ptr %i.bf, align 8
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.de
  store ptr %i.dk, ptr %i.bg, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.u:                                             ; preds = %bb.h
  %i.dl = add nsw i32 %i.bp, -1                   ; 2 uses
  %i.dm = load ptr, ptr %i.bc, align 8            ; 3 uses
  %i.dn = load ptr, ptr %i.bd, align 8
  %.not.i.i83 = icmp eq ptr %i.dm, %i.dn
  br i1 %.not.i.i83, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 %i.dl, ptr %i.dm, align 4
  %i.do = load ptr, ptr %i.bc, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  store ptr %i.dp, ptr %i.bc, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.w:                                             ; preds = %bb.u
  %i.dq = load ptr, ptr %i.bb, align 8            ; 4 uses
  %i.dr = ptrtoint ptr %i.dm to i64
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds                    ; 6 uses
  %i.du = icmp eq i64 %i.dt, 9223372036854775804
  br i1 %i.du, label %bb.x, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i84

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #32
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i84: ; preds = %bb.w
  %i.dv = ashr exact i64 %i.dt, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i85 = tail call i64 @llvm.umax.i64(i64 %i.dv, i64 1)
  %i.dw = add nsw i64 %.sroa.speculated.i.i.i.i85, %i.dv ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.dv
  %i.dy = tail call i64 @llvm.umin.i64(i64 %i.dw, i64 2305843009213693951)
  %i.dz = select i1 %i.dx, i64 2305843009213693951, i64 %i.dy ; 3 uses
  %.not.i.i.i.i86 = icmp ne i64 %i.dz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i86)
  %i.ea = shl nuw nsw i64 %i.dz, 2
  %i.eb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ea) #30 ; 4 uses
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 %i.dt ; 2 uses
  store i32 %i.dl, ptr %i.ec, align 4
  %i.ed = icmp sgt i64 %i.dt, 0
  br i1 %i.ed, label %bb.y, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i87

bb.y:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i84
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eb, ptr align 4 %i.dq, i64 %i.dt, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i87

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i87: ; preds = %bb.y, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i84
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %.not.i17.i.i.i88 = icmp eq ptr %i.dq, null
  br i1 %.not.i17.i.i.i88, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i89, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i87
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.dt) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i89

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i89: ; preds = %bb.z, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i87
  store ptr %i.eb, ptr %i.bb, align 8
  store ptr %i.ee, ptr %i.bc, align 8
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.dz
  store ptr %i.ef, ptr %i.bd, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.aa:                                            ; preds = %bb.h
  %.sroa.01.0.copyload.i = load ptr, ptr %0, align 8 ; 5 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8 ; 7 uses
  %4 = ptrtoaddr ptr %.sroa.0.0.copyload.i to i64
  %.not.i.i91 = icmp ult ptr %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %.not.i.i91, label %.preheader.i.i, label %_ZN6Assimp13ObjFileParser22reportErrorTokenInFaceEv.exit

.preheader.i.i:                                   ; preds = %bb.aa
  %i.eg = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 -1 ; 2 uses
  %i.eh = icmp eq ptr %.sroa.01.0.copyload.i, %i.eg
  br i1 %i.eh, label %.critedge.i.i, label %.lr.ph.i.i92

.lr.ph.i.i92:                                     ; preds = %.preheader.i.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i93
  %.sroa.010.021.i.i = phi ptr [ %i.ej, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i93 ], [ %.sroa.01.0.copyload.i, %.preheader.i.i ] ; 6 uses
  %i.ei = load i8, ptr %.sroa.010.021.i.i, align 1
  switch i8 %i.ei, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i93 [
    i8 13, label %.critedge.i.i
    i8 10, label %.critedge.i.i
    i8 0, label %.critedge.i.i
    i8 12, label %.critedge.i.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i93:           ; preds = %.lr.ph.i.i92
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i.i, i64 1 ; 4 uses
  %i.ek = icmp eq ptr %i.ej, %.sroa.0.0.copyload.i
  %i.el = icmp eq ptr %i.ej, %i.eg
  %.0.i.i.i94 = or i1 %i.ek, %i.el
  br i1 %.0.i.i.i94, label %.critedge.i.i, label %.lr.ph.i.i92, !llvm.loop !9

.critedge.i.i:                                    ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i93, %.lr.ph.i.i92, %.lr.ph.i.i92, %.lr.ph.i.i92, %.lr.ph.i.i92, %.preheader.i.i
  %.sroa.010.0.lcssa.i.i = phi ptr [ %.sroa.01.0.copyload.i, %.preheader.i.i ], [ %.sroa.010.021.i.i, %.lr.ph.i.i92 ], [ %.sroa.010.021.i.i, %.lr.ph.i.i92 ], [ %.sroa.010.021.i.i, %.lr.ph.i.i92 ], [ %.sroa.010.021.i.i, %.lr.ph.i.i92 ], [ %i.ej, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i93 ] ; 3 uses
  %.not19.i.i = icmp eq ptr %.sroa.010.0.lcssa.i.i, %.sroa.0.0.copyload.i
  br i1 %.not19.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.critedge.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i.i, i64 1
  %i.en = load i32, ptr %i.bj, align 8
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr %i.bj, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.critedge.i.i
  %.sroa.010.1.i.i = phi ptr [ %i.em, %bb.ab ], [ %.sroa.010.0.lcssa.i.i, %.critedge.i.i ] ; 5 uses
  %.not2030.i.i = icmp eq ptr %.sroa.010.1.i.i, %.sroa.0.0.copyload.i
  br i1 %.not2030.i.i, label %_ZN6Assimp13ObjFileParser22reportErrorTokenInFaceEv.exit, label %.lr.ph32.preheader.i.i

.lr.ph32.preheader.i.i:                           ; preds = %bb.ac
  %.sroa.010.136.i.i = ptrtoaddr ptr %.sroa.010.1.i.i to i64
  %i.ep = sub i64 %4, %.sroa.010.136.i.i
  %scevgep.i.i = getelementptr i8, ptr %.sroa.010.1.i.i, i64 %i.ep
  br label %.lr.ph32.i.i

.lr.ph32.i.i:                                     ; preds = %.critedge4.i.i, %.lr.ph32.preheader.i.i
  %.sroa.010.231.i.i = phi ptr [ %i.er, %.critedge4.i.i ], [ %.sroa.010.1.i.i, %.lr.ph32.preheader.i.i ] ; 3 uses
  %i.eq = load i8, ptr %.sroa.010.231.i.i, align 1
  switch i8 %i.eq, label %_ZN6Assimp13ObjFileParser22reportErrorTokenInFaceEv.exit [
    i8 9, label %.critedge4.i.i
    i8 32, label %.critedge4.i.i
  ]

.critedge4.i.i:                                   ; preds = %.lr.ph32.i.i, %.lr.ph32.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i.i, i64 1 ; 2 uses
  %.not20.i.i = icmp eq ptr %i.er, %.sroa.0.0.copyload.i
  br i1 %.not20.i.i, label %_ZN6Assimp13ObjFileParser22reportErrorTokenInFaceEv.exit, label %.lr.ph32.i.i, !llvm.loop !10

_ZN6Assimp13ObjFileParser22reportErrorTokenInFaceEv.exit: ; preds = %.lr.ph32.i.i, %.critedge4.i.i, %bb.aa, %bb.ac
  %.sroa.010.3.i.i = phi ptr [ %.sroa.01.0.copyload.i, %bb.aa ], [ %.sroa.010.1.i.i, %bb.ac ], [ %scevgep.i.i, %.critedge4.i.i ], [ %.sroa.010.231.i.i, %.lr.ph32.i.i ]
  store ptr %.sroa.010.3.i.i, ptr %0, align 8
  %i.es = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.es, ptr noundef nonnull @.str.20)
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.ad:                                            ; preds = %._crit_edge
  br i1 %i.bq, label %bb.ae, label %bb.ba

bb.ae:                                            ; preds = %bb.ad
  switch i32 %spec.select74, label %bb.ax [
    i32 0, label %bb.af
    i32 1, label %bb.al
    i32 2, label %bb.ar
  ]

bb.af:                                            ; preds = %bb.ae
  %i.et = add nsw i32 %i.bp, %i.ae                ; 2 uses
  %i.eu = load ptr, ptr %i.bh, align 8            ; 3 uses
  %i.ev = load ptr, ptr %i.bi, align 8
  %.not.i.i95 = icmp eq ptr %i.eu, %i.ev
  br i1 %.not.i.i95, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i32 %i.et, ptr %i.eu, align 4
  %i.ew = load ptr, ptr %i.bh, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  store ptr %i.ex, ptr %i.bh, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.ah:                                            ; preds = %bb.af
  %i.ey = load ptr, ptr %i.t, align 8             ; 4 uses
  %i.ez = ptrtoint ptr %i.eu to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa                    ; 6 uses
  %i.fc = icmp eq i64 %i.fb, 9223372036854775804
  br i1 %i.fc, label %bb.ai, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i96

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #32
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i96: ; preds = %bb.ah
  %i.fd = ashr exact i64 %i.fb, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i97 = tail call i64 @llvm.umax.i64(i64 %i.fd, i64 1)
  %i.fe = add nsw i64 %.sroa.speculated.i.i.i.i97, %i.fd ; 2 uses
  %i.ff = icmp ult i64 %i.fe, %i.fd
  %i.fg = tail call i64 @llvm.umin.i64(i64 %i.fe, i64 2305843009213693951)
  %i.fh = select i1 %i.ff, i64 2305843009213693951, i64 %i.fg ; 3 uses
  %.not.i.i.i.i98 = icmp ne i64 %i.fh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i98)
  %i.fi = shl nuw nsw i64 %i.fh, 2
  %i.fj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fi) #30 ; 4 uses
  %i.fk = getelementptr inbounds i8, ptr %i.fj, i64 %i.fb ; 2 uses
  store i32 %i.et, ptr %i.fk, align 4
  %i.fl = icmp sgt i64 %i.fb, 0
  br i1 %i.fl, label %bb.aj, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i99

bb.aj:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i96
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fj, ptr align 4 %i.ey, i64 %i.fb, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i99

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i99: ; preds = %bb.aj, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i96
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %.not.i17.i.i.i100 = icmp eq ptr %i.ey, null
  br i1 %.not.i17.i.i.i100, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i101, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i99
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ey, i64 noundef %i.fb) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i101

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i101: ; preds = %bb.ak, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i99
  store ptr %i.fj, ptr %i.t, align 8
  store ptr %i.fm, ptr %i.bh, align 8
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.fh
  store ptr %i.fn, ptr %i.bi, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.al:                                            ; preds = %bb.ae
  %i.fo = add nsw i32 %i.bp, %i.an                ; 2 uses
  %i.fp = load ptr, ptr %i.bf, align 8            ; 3 uses
  %i.fq = load ptr, ptr %i.bg, align 8
  %.not.i.i103 = icmp eq ptr %i.fp, %i.fq
  br i1 %.not.i.i103, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i32 %i.fo, ptr %i.fp, align 4
  %i.fr = load ptr, ptr %i.bf, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  store ptr %i.fs, ptr %i.bf, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.an:                                            ; preds = %bb.al
  %i.ft = load ptr, ptr %i.be, align 8            ; 4 uses
  %i.fu = ptrtoint ptr %i.fp to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv                    ; 6 uses
  %i.fx = icmp eq i64 %i.fw, 9223372036854775804
  br i1 %i.fx, label %bb.ao, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i104

bb.ao:                                            ; preds = %bb.an
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #32
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i104: ; preds = %bb.an
  %i.fy = ashr exact i64 %i.fw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i105 = tail call i64 @llvm.umax.i64(i64 %i.fy, i64 1)
  %i.fz = add nsw i64 %.sroa.speculated.i.i.i.i105, %i.fy ; 2 uses
  %i.ga = icmp ult i64 %i.fz, %i.fy
  %i.gb = tail call i64 @llvm.umin.i64(i64 %i.fz, i64 2305843009213693951)
  %i.gc = select i1 %i.ga, i64 2305843009213693951, i64 %i.gb ; 3 uses
  %.not.i.i.i.i106 = icmp ne i64 %i.gc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i106)
  %i.gd = shl nuw nsw i64 %i.gc, 2
  %i.ge = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gd) #30 ; 4 uses
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 %i.fw ; 2 uses
  store i32 %i.fo, ptr %i.gf, align 4
  %i.gg = icmp sgt i64 %i.fw, 0
  br i1 %i.gg, label %bb.ap, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i107

bb.ap:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i104
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ge, ptr align 4 %i.ft, i64 %i.fw, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i107

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i107: ; preds = %bb.ap, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i104
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %.not.i17.i.i.i108 = icmp eq ptr %i.ft, null
  br i1 %.not.i17.i.i.i108, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i109, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i107
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ft, i64 noundef %i.fw) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i109

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i109: ; preds = %bb.aq, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i107
  store ptr %i.ge, ptr %i.be, align 8
  store ptr %i.gh, ptr %i.bf, align 8
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.gc
  store ptr %i.gi, ptr %i.bg, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.ar:                                            ; preds = %bb.ae
  %i.gj = add nsw i32 %i.bp, %i.aw                ; 2 uses
  %i.gk = load ptr, ptr %i.bc, align 8            ; 3 uses
  %i.gl = load ptr, ptr %i.bd, align 8
  %.not.i.i111 = icmp eq ptr %i.gk, %i.gl
  br i1 %.not.i.i111, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i32 %i.gj, ptr %i.gk, align 4
  %i.gm = load ptr, ptr %i.bc, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  store ptr %i.gn, ptr %i.bc, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.at:                                            ; preds = %bb.ar
  %i.go = load ptr, ptr %i.bb, align 8            ; 4 uses
  %i.gp = ptrtoint ptr %i.gk to i64
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = sub i64 %i.gp, %i.gq                    ; 6 uses
  %i.gs = icmp eq i64 %i.gr, 9223372036854775804
  br i1 %i.gs, label %bb.au, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i112

bb.au:                                            ; preds = %bb.at
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #32
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i112: ; preds = %bb.at
  %i.gt = ashr exact i64 %i.gr, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i113 = tail call i64 @llvm.umax.i64(i64 %i.gt, i64 1)
  %i.gu = add nsw i64 %.sroa.speculated.i.i.i.i113, %i.gt ; 2 uses
  %i.gv = icmp ult i64 %i.gu, %i.gt
  %i.gw = tail call i64 @llvm.umin.i64(i64 %i.gu, i64 2305843009213693951)
  %i.gx = select i1 %i.gv, i64 2305843009213693951, i64 %i.gw ; 3 uses
  %.not.i.i.i.i114 = icmp ne i64 %i.gx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i114)
  %i.gy = shl nuw nsw i64 %i.gx, 2
  %i.gz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gy) #30 ; 4 uses
  %i.ha = getelementptr inbounds i8, ptr %i.gz, i64 %i.gr ; 2 uses
  store i32 %i.gj, ptr %i.ha, align 4
  %i.hb = icmp sgt i64 %i.gr, 0
  br i1 %i.hb, label %bb.av, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i115

bb.av:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i112
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gz, ptr align 4 %i.go, i64 %i.gr, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i115

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i115: ; preds = %bb.av, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i112
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  %.not.i17.i.i.i116 = icmp eq ptr %i.go, null
  br i1 %.not.i17.i.i.i116, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i117, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i115
  tail call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef %i.gr) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i117

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i117: ; preds = %bb.aw, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i115
  store ptr %i.gz, ptr %i.bb, align 8
  store ptr %i.hc, ptr %i.bc, align 8
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.gx
  store ptr %i.hd, ptr %i.bd, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.ax:                                            ; preds = %bb.ae
  %.sroa.01.0.copyload.i119 = load ptr, ptr %0, align 8 ; 5 uses
  %.sroa.0.0.copyload.i120 = load ptr, ptr %i.a, align 8 ; 7 uses
  %5 = ptrtoaddr ptr %.sroa.0.0.copyload.i120 to i64
  %.not.i.i121 = icmp ult ptr %.sroa.01.0.copyload.i119, %.sroa.0.0.copyload.i120
  br i1 %.not.i.i121, label %.preheader.i.i123, label %_ZN6Assimp13ObjFileParser22reportErrorTokenInFaceEv.exit140

.preheader.i.i123:                                ; preds = %bb.ax
  %i.he = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i120, i64 -1 ; 2 uses
  %i.hf = icmp eq ptr %.sroa.01.0.copyload.i119, %i.he
  br i1 %i.hf, label %.critedge.i.i126, label %.lr.ph.i.i124

.lr.ph.i.i124:                                    ; preds = %.preheader.i.i123, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i138
  %.sroa.010.021.i.i125 = phi ptr [ %i.hh, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i138 ], [ %.sroa.01.0.copyload.i119, %.preheader.i.i123 ] ; 6 uses
  %i.hg = load i8, ptr %.sroa.010.021.i.i125, align 1
  switch i8 %i.hg, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i138 [
    i8 13, label %.critedge.i.i126
    i8 10, label %.critedge.i.i126
    i8 0, label %.critedge.i.i126
    i8 12, label %.critedge.i.i126
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i138:          ; preds = %.lr.ph.i.i124
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i.i125, i64 1 ; 4 uses
  %i.hi = icmp eq ptr %i.hh, %.sroa.0.0.copyload.i120
  %i.hj = icmp eq ptr %i.hh, %i.he
  %.0.i.i.i139 = or i1 %i.hi, %i.hj
  br i1 %.0.i.i.i139, label %.critedge.i.i126, label %.lr.ph.i.i124, !llvm.loop !9

.critedge.i.i126:                                 ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i138, %.lr.ph.i.i124, %.lr.ph.i.i124, %.lr.ph.i.i124, %.lr.ph.i.i124, %.preheader.i.i123
  %.sroa.010.0.lcssa.i.i127 = phi ptr [ %.sroa.01.0.copyload.i119, %.preheader.i.i123 ], [ %.sroa.010.021.i.i125, %.lr.ph.i.i124 ], [ %.sroa.010.021.i.i125, %.lr.ph.i.i124 ], [ %.sroa.010.021.i.i125, %.lr.ph.i.i124 ], [ %.sroa.010.021.i.i125, %.lr.ph.i.i124 ], [ %i.hh, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i138 ] ; 3 uses
  %.not19.i.i128 = icmp eq ptr %.sroa.010.0.lcssa.i.i127, %.sroa.0.0.copyload.i120
  br i1 %.not19.i.i128, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.critedge.i.i126
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i.i127, i64 1
  %i.hl = load i32, ptr %i.bj, align 8
  %i.hm = add i32 %i.hl, 1
  store i32 %i.hm, ptr %i.bj, align 8
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.critedge.i.i126
  %.sroa.010.1.i.i129 = phi ptr [ %i.hk, %bb.ay ], [ %.sroa.010.0.lcssa.i.i127, %.critedge.i.i126 ] ; 5 uses
  %.not2030.i.i130 = icmp eq ptr %.sroa.010.1.i.i129, %.sroa.0.0.copyload.i120
  br i1 %.not2030.i.i130, label %_ZN6Assimp13ObjFileParser22reportErrorTokenInFaceEv.exit140, label %.lr.ph32.preheader.i.i131

.lr.ph32.preheader.i.i131:                        ; preds = %bb.az
  %.sroa.010.136.i.i132 = ptrtoaddr ptr %.sroa.010.1.i.i129 to i64
  %i.hn = sub i64 %5, %.sroa.010.136.i.i132
  %scevgep.i.i133 = getelementptr i8, ptr %.sroa.010.1.i.i129, i64 %i.hn
  br label %.lr.ph32.i.i134

.lr.ph32.i.i134:                                  ; preds = %.critedge4.i.i136, %.lr.ph32.preheader.i.i131
  %.sroa.010.231.i.i135 = phi ptr [ %i.hp, %.critedge4.i.i136 ], [ %.sroa.010.1.i.i129, %.lr.ph32.preheader.i.i131 ] ; 3 uses
  %i.ho = load i8, ptr %.sroa.010.231.i.i135, align 1
  switch i8 %i.ho, label %_ZN6Assimp13ObjFileParser22reportErrorTokenInFaceEv.exit140 [
    i8 9, label %.critedge4.i.i136
    i8 32, label %.critedge4.i.i136
  ]

.critedge4.i.i136:                                ; preds = %.lr.ph32.i.i134, %.lr.ph32.i.i134
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i.i135, i64 1 ; 2 uses
  %.not20.i.i137 = icmp eq ptr %i.hp, %.sroa.0.0.copyload.i120
  br i1 %.not20.i.i137, label %_ZN6Assimp13ObjFileParser22reportErrorTokenInFaceEv.exit140, label %.lr.ph32.i.i134, !llvm.loop !10

_ZN6Assimp13ObjFileParser22reportErrorTokenInFaceEv.exit140: ; preds = %.lr.ph32.i.i134, %.critedge4.i.i136, %bb.ax, %bb.az
  %.sroa.010.3.i.i122 = phi ptr [ %.sroa.01.0.copyload.i119, %bb.ax ], [ %.sroa.010.1.i.i129, %bb.az ], [ %scevgep.i.i133, %.critedge4.i.i136 ], [ %.sroa.010.231.i.i135, %.lr.ph32.i.i134 ]
  store ptr %.sroa.010.3.i.i122, ptr %0, align 8
  %i.hq = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.hq, ptr noundef nonnull @.str.20)
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.ba:                                            ; preds = %bb.ad
  tail call void @_ZN6Assimp7ObjFile4FaceD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.s) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 88) #29
  %i.hr = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.hr, ptr noundef nonnull @.str.8)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  tail call void @__cxa_throw(ptr nonnull %i.hr, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.hs = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.hr) #28
  br label %bb.cb

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i117, %bb.as, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i109, %bb.am, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i101, %bb.ag, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i89, %bb.v, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i81, %bb.p, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, %bb.j, %_ZN6Assimp13ObjFileParser22reportErrorTokenInFaceEv.exit140, %_ZN6Assimp13ObjFileParser22reportErrorTokenInFaceEv.exit
  %.150 = phi i1 [ %.049217, %_ZN6Assimp13ObjFileParser22reportErrorTokenInFaceEv.exit140 ], [ %.049217, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.049217, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i81 ], [ %.049217, %_ZN6Assimp13ObjFileParser22reportErrorTokenInFaceEv.exit ], [ true, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i89 ], [ %.049217, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i101 ], [ %.049217, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i109 ], [ %.049217, %bb.j ], [ %.049217, %bb.p ], [ true, %bb.v ], [ %.049217, %bb.ag ], [ %.049217, %bb.am ], [ true, %bb.as ], [ true, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i117 ]
  %i.ht = zext nneg i32 %.157.lcssa to i64
  br label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.thread

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.thread:  ; preds = %bb.d, %bb.d, %bb.g, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %.258 = phi i64 [ 1, %bb.g ], [ %i.ht, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ], [ 1, %bb.d ], [ 1, %bb.d ]
  %.254 = phi i32 [ %i.bn, %bb.g ], [ %spec.select74, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ], [ 0, %bb.d ], [ 0, %bb.d ]
  %.251 = phi i1 [ %.049217, %bb.g ], [ %.150, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ], [ %.049217, %bb.d ], [ %.049217, %bb.d ] ; 2 uses
  %i.hu = load ptr, ptr %0, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %.258 ; 3 uses
  store ptr %i.hv, ptr %0, align 8
  %i.hw = load ptr, ptr %i.a, align 8
  %i.hx = icmp ult ptr %i.hv, %i.hw
  br i1 %i.hx, label %bb.d, label %.thread

.thread:                                          ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.thread, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %.049.lcssa.ph = phi i1 [ %.251, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.thread ], [ %.049217, %bb.d ], [ %.049217, %bb.d ], [ %.049217, %bb.d ], [ %.049217, %bb.d ], [ %.049217, %bb.d ]
  %.pre = load ptr, ptr %i.t, align 8
  %.pre231 = load ptr, ptr %i.bh, align 8
  %i.hy = icmp eq ptr %.pre, %.pre231
  %i.hz = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  br i1 %i.hy, label %.thread.thread, label %bb.bi

.thread.thread:                                   ; preds = %bb.c, %.thread
  %i.ia = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ia, ptr noundef nonnull @.str.9)
  %.sroa.09.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %.sroa.08.0.copyload = load ptr, ptr %i.a, align 8 ; 7 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %6 = ptrtoaddr ptr %.sroa.08.0.copyload to i64
  %.not.i = icmp ult ptr %.sroa.09.0.copyload, %.sroa.08.0.copyload
  br i1 %.not.i, label %.preheader.i, label %.loopexit

.preheader.i:                                     ; preds = %.thread.thread
  %i.ic = getelementptr inbounds i8, ptr %.sroa.08.0.copyload, i64 -1 ; 2 uses
  %i.id = icmp eq ptr %.sroa.09.0.copyload, %i.ic
  br i1 %i.id, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %.sroa.010.021.i = phi ptr [ %i.if, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.09.0.copyload, %.preheader.i ] ; 6 uses
  %i.ie = load i8, ptr %.sroa.010.021.i, align 1
  switch i8 %i.ie, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 13, label %.critedge.i
    i8 10, label %.critedge.i
    i8 0, label %.critedge.i
    i8 12, label %.critedge.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %.lr.ph.i
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i, i64 1 ; 4 uses
  %i.ig = icmp eq ptr %i.if, %.sroa.08.0.copyload
  %i.ih = icmp eq ptr %i.if, %i.ic
  %.0.i.i = or i1 %i.ig, %i.ih
  br i1 %.0.i.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !9

.critedge.i:                                      ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.preheader.i
  %.sroa.010.0.lcssa.i = phi ptr [ %.sroa.09.0.copyload, %.preheader.i ], [ %i.if, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ] ; 3 uses
  %.not19.i = icmp eq ptr %.sroa.010.0.lcssa.i, %.sroa.08.0.copyload
  br i1 %.not19.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.critedge.i
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i, i64 1
  %i.ij = load i32, ptr %i.ib, align 8
  %i.ik = add i32 %i.ij, 1
  store i32 %i.ik, ptr %i.ib, align 8
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.critedge.i
  %.sroa.010.1.i = phi ptr [ %i.ii, %bb.bd ], [ %.sroa.010.0.lcssa.i, %.critedge.i ] ; 5 uses
  %.not2030.i = icmp eq ptr %.sroa.010.1.i, %.sroa.08.0.copyload
  br i1 %.not2030.i, label %.loopexit, label %.lr.ph32.preheader.i

.lr.ph32.preheader.i:                             ; preds = %bb.be
  %.sroa.010.136.i = ptrtoaddr ptr %.sroa.010.1.i to i64
  %i.il = sub i64 %6, %.sroa.010.136.i
  %scevgep.i = getelementptr i8, ptr %.sroa.010.1.i, i64 %i.il
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.critedge4.i, %.lr.ph32.preheader.i
  %.sroa.010.231.i = phi ptr [ %i.in, %.critedge4.i ], [ %.sroa.010.1.i, %.lr.ph32.preheader.i ] ; 3 uses
  %i.im = load i8, ptr %.sroa.010.231.i, align 1
  switch i8 %i.im, label %.loopexit [
    i8 9, label %.critedge4.i
    i8 32, label %.critedge4.i
  ]

.critedge4.i:                                     ; preds = %.lr.ph32.i, %.lr.ph32.i
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i, i64 1 ; 2 uses
  %.not20.i = icmp eq ptr %i.in, %.sroa.08.0.copyload
  br i1 %.not20.i, label %.loopexit, label %.lr.ph32.i, !llvm.loop !10

.loopexit:                                        ; preds = %.critedge4.i, %.lr.ph32.i, %bb.be, %.thread.thread
  %.sroa.010.3.i = phi ptr [ %.sroa.09.0.copyload, %.thread.thread ], [ %.sroa.010.1.i, %bb.be ], [ %.sroa.010.231.i, %.lr.ph32.i ], [ %scevgep.i, %.critedge4.i ]
  store ptr %.sroa.010.3.i, ptr %0, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.ip = load ptr, ptr %i.io, align 8            ; 3 uses
  %.not.i.i.i.i141 = icmp eq ptr %i.ip, null
  br i1 %.not.i.i.i.i141, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i, label %bb.bf

bb.bf:                                            ; preds = %.loopexit
  %i.iq = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.ir = load ptr, ptr %i.iq, align 8
  %i.is = ptrtoint ptr %i.ir to i64
  %i.it = ptrtoint ptr %i.ip to i64
  %i.iu = sub i64 %i.is, %i.it
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ip, i64 noundef %i.iu) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i:                  ; preds = %bb.bf, %.loopexit
  %i.iv = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.iw = load ptr, ptr %i.iv, align 8            ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit2.i, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  %i.ix = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.iy = load ptr, ptr %i.ix, align 8
  %i.iz = ptrtoint ptr %i.iy to i64
  %i.ja = ptrtoint ptr %i.iw to i64
  %i.jb = sub i64 %i.iz, %i.ja
  tail call void @_ZdlPvm(ptr noundef nonnull %i.iw, i64 noundef %i.jb) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit2.i

_ZNSt6vectorIjSaIjEED2Ev.exit2.i:                 ; preds = %bb.bg, %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  %i.jc = load ptr, ptr %i.t, align 8             ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.jc, null
  br i1 %.not.i.i.i3.i, label %_ZN6Assimp7ObjFile4FaceD2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit2.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.je = load ptr, ptr %i.jd, align 8
  %i.jf = ptrtoint ptr %i.je to i64
  %i.jg = ptrtoint ptr %i.jc to i64
  %i.jh = sub i64 %i.jf, %i.jg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.jc, i64 noundef %i.jh) #29
  br label %_ZN6Assimp7ObjFile4FaceD2Ev.exit

_ZN6Assimp7ObjFile4FaceD2Ev.exit:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit2.i, %bb.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 88) #29
  br label %bb.ca

bb.bi:                                            ; preds = %.thread
  %i.ji = load ptr, ptr %i.u, align 8             ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 64
  %i.jk = load ptr, ptr %i.jj, align 8            ; 2 uses
  %.not69 = icmp eq ptr %i.jk, null
  br i1 %.not69, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 72
  %i.jm = load ptr, ptr %i.jl, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj
  %.sink = phi ptr [ %i.jm, %bb.bj ], [ %i.jk, %bb.bi ]
  %i.jn = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  store ptr %.sink, ptr %i.jn, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ji, i64 56
  %i.jp = load ptr, ptr %i.jo, align 8
  %i.jq = icmp eq ptr %i.jp, null
  br i1 %i.jq, label %._crit_edge.i.i, label %bb.bn

._crit_edge.i.i:                                  ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.jr = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.jr, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.jr, ptr noundef nonnull align 1 dereferenceable(13) @_ZN6AssimpL14DefaultObjNameE, i64 13, i1 false)
  %i.js = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 13, ptr %i.js, align 8
  %i.jt = getelementptr inbounds nuw i8, ptr %2, i64 29
  store i8 0, ptr %i.jt, align 1
  invoke void @_ZN6Assimp13ObjFileParser12createObjectERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(4184) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %._crit_edge.i.i
  %i.ju = load ptr, ptr %2, align 8               ; 2 uses
  %i.jv = icmp eq ptr %i.ju, %i.jr
  br i1 %i.jv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bl
  %i.jw = load i64, ptr %i.jr, align 8
  %i.jx = add i64 %i.jw, 1
  call void @_ZdlPvm(ptr noundef %i.ju, i64 noundef %i.jx) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %.pre232 = load ptr, ptr %i.u, align 8
  br label %bb.bn

bb.bm:                                            ; preds = %._crit_edge.i.i
  %i.jy = landingpad { ptr, i32 }
          cleanup
  %i.jz = load ptr, ptr %2, align 8               ; 2 uses
  %i.ka = icmp eq ptr %i.jz, %i.jr
  br i1 %i.ka, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %bb.bm
  %i.kb = load i64, ptr %i.jr, align 8
  %i.kc = add i64 %i.kb, 1
  call void @_ZdlPvm(ptr noundef %i.jz, i64 noundef %i.kc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.cb

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bk
  %i.kd = phi ptr [ %.pre232, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ji, %bb.bk ]
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 296
  %i.kf = load ptr, ptr %i.ke, align 8            ; 2 uses
  %i.kg = icmp eq ptr %i.kf, null
  br i1 %i.kg, label %._crit_edge.i.i145, label %bb.bq

._crit_edge.i.i145:                               ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.kh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.kh, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.kh, ptr noundef nonnull align 1 dereferenceable(13) @_ZN6AssimpL14DefaultObjNameE, i64 13, i1 false)
  %i.ki = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 13, ptr %i.ki, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %3, i64 29
  store i8 0, ptr %i.kj, align 1
  invoke void @_ZN6Assimp13ObjFileParser10createMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(4184) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.bo unwind label %bb.bp

bb.bo:                                            ; preds = %._crit_edge.i.i145
  %i.kk = load ptr, ptr %3, align 8               ; 2 uses
  %i.kl = icmp eq ptr %i.kk, %i.kh
  br i1 %i.kl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %bb.bo
  %i.km = load i64, ptr %i.kh, align 8
  %i.kn = add i64 %i.km, 1
  call void @_ZdlPvm(ptr noundef %i.kk, i64 noundef %i.kn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %.pre233 = load ptr, ptr %i.u, align 8
  %.phi.trans.insert234 = getelementptr inbounds nuw i8, ptr %.pre233, i64 296
  %.pre235 = load ptr, ptr %.phi.trans.insert234, align 8
  br label %bb.bq

bb.bp:                                            ; preds = %._crit_edge.i.i145
  %i.ko = landingpad { ptr, i32 }
          cleanup
  %i.kp = load ptr, ptr %3, align 8               ; 2 uses
  %i.kq = icmp eq ptr %i.kp, %i.kh
  br i1 %i.kq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %bb.bp
  %i.kr = load i64, ptr %i.kh, align 8
  %i.ks = add i64 %i.kr, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.ks) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.cb

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, %bb.bn
  %i.kt = phi ptr [ %.pre235, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151 ], [ %i.kf, %bb.bn ] ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 32 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 40 ; 4 uses
  %i.kw = load ptr, ptr %i.kv, align 8            ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 48 ; 2 uses
  %i.ky = load ptr, ptr %i.kx, align 8
  %.not.i155 = icmp eq ptr %i.kw, %i.ky
  br i1 %.not.i155, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  store ptr %i.s, ptr %i.kw, align 8
  %i.kz = load ptr, ptr %i.kv, align 8
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  store ptr %i.la, ptr %i.kv, align 8
  br label %_ZNSt6vectorIPN6Assimp7ObjFile4FaceESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit

bb.bs:                                            ; preds = %bb.bq
  %i.lb = load ptr, ptr %i.ku, align 8            ; 4 uses
  %i.lc = ptrtoint ptr %i.kw to i64
  %i.ld = ptrtoint ptr %i.lb to i64
  %i.le = sub i64 %i.lc, %i.ld                    ; 6 uses
  %i.lf = icmp eq i64 %i.le, 9223372036854775800
  br i1 %i.lf, label %bb.bt, label %_ZNKSt6vectorIPN6Assimp7ObjFile4FaceESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.bt:                                            ; preds = %bb.bs
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #32
  unreachable

_ZNKSt6vectorIPN6Assimp7ObjFile4FaceESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bs
  %i.lg = ashr exact i64 %i.le, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.lg, i64 1)
  %i.lh = add nsw i64 %.sroa.speculated.i.i.i, %i.lg ; 2 uses
  %i.li = icmp ult i64 %i.lh, %i.lg
  %i.lj = call i64 @llvm.umin.i64(i64 %i.lh, i64 1152921504606846975)
  %i.lk = select i1 %i.li, i64 1152921504606846975, i64 %i.lj ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.lk, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ll = shl nuw nsw i64 %i.lk, 3
  %i.lm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ll) #30 ; 4 uses
  %i.ln = getelementptr inbounds i8, ptr %i.lm, i64 %i.le ; 2 uses
  store ptr %i.s, ptr %i.ln, align 8
  %i.lo = icmp sgt i64 %i.le, 0
  br i1 %i.lo, label %bb.bu, label %_ZNSt6vectorIPN6Assimp7ObjFile4FaceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.bu:                                            ; preds = %_ZNKSt6vectorIPN6Assimp7ObjFile4FaceESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lm, ptr align 8 %i.lb, i64 %i.le, i1 false)
  br label %_ZNSt6vectorIPN6Assimp7ObjFile4FaceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN6Assimp7ObjFile4FaceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.bu, %_ZNKSt6vectorIPN6Assimp7ObjFile4FaceESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %.not.i17.i.i = icmp eq ptr %i.lb, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6Assimp7ObjFile4FaceESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorIPN6Assimp7ObjFile4FaceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.lb, i64 noundef %i.le) #29
  br label %_ZNSt6vectorIPN6Assimp7ObjFile4FaceESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN6Assimp7ObjFile4FaceESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.bv, %_ZNSt6vectorIPN6Assimp7ObjFile4FaceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.lm, ptr %i.ku, align 8
  store ptr %i.lp, ptr %i.kv, align 8
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %i.lk
  store ptr %i.lq, ptr %i.kx, align 8
  br label %_ZNSt6vectorIPN6Assimp7ObjFile4FaceESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit

_ZNSt6vectorIPN6Assimp7ObjFile4FaceESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit: ; preds = %bb.br, %_ZNSt6vectorIPN6Assimp7ObjFile4FaceESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %i.lr = load ptr, ptr %i.hz, align 8
  %i.ls = load ptr, ptr %i.t, align 8
  %i.lt = ptrtoint ptr %i.lr to i64
  %i.lu = ptrtoint ptr %i.ls to i64
  %i.lv = sub i64 %i.lt, %i.lu
  %i.lw = lshr exact i64 %i.lv, 2
  %i.lx = trunc i64 %i.lw to i32
  %i.ly = load ptr, ptr %i.u, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 296
  %i.ma = load ptr, ptr %i.lz, align 8
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 64 ; 2 uses
  %i.mc = load i32, ptr %i.mb, align 8
  %i.md = add i32 %i.mc, %i.lx
  store i32 %i.md, ptr %i.mb, align 8
  %i.me = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.mf = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.mg = load ptr, ptr %i.mf, align 8
  %i.mh = load ptr, ptr %i.me, align 8
  %i.mi = ptrtoint ptr %i.mg to i64
  %i.mj = ptrtoint ptr %i.mh to i64
  %i.mk = sub i64 %i.mi, %i.mj
  %i.ml = lshr exact i64 %i.mk, 2
  %i.mm = trunc i64 %i.ml to i32
  %i.mn = load ptr, ptr %i.u, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 296
  %i.mp = load ptr, ptr %i.mo, align 8
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 68 ; 2 uses
  %i.mr = load i32, ptr %i.mq, align 4
  %i.ms = add i32 %i.mr, %i.mm
  store i32 %i.ms, ptr %i.mq, align 4
  %i.mt = load ptr, ptr %i.u, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 296
  %i.mv = load ptr, ptr %i.mu, align 8
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 104 ; 2 uses
  %i.mx = load i8, ptr %i.mw, align 8, !range !50, !noundef !51
  %i.my = trunc nuw i8 %i.mx to i1
  %.not = xor i1 %i.my, true
  %or.cond5 = select i1 %.not, i1 %.049.lcssa.ph, i1 false
  br i1 %or.cond5, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %_ZNSt6vectorIPN6Assimp7ObjFile4FaceESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit
  store i8 1, ptr %i.mw, align 8
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %_ZNSt6vectorIPN6Assimp7ObjFile4FaceESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit
  %.sroa.06.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 7 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %7 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.not.i156 = icmp ult ptr %.sroa.06.0.copyload, %.sroa.0.0.copyload
  br i1 %.not.i156, label %.preheader.i158, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit175

.preheader.i158:                                  ; preds = %bb.bx
  %i.na = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 -1 ; 2 uses
  %i.nb = icmp eq ptr %.sroa.06.0.copyload, %i.na
  br i1 %i.nb, label %.critedge.i161, label %.lr.ph.i159

.lr.ph.i159:                                      ; preds = %.preheader.i158, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i173
  %.sroa.010.021.i160 = phi ptr [ %i.nd, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i173 ], [ %.sroa.06.0.copyload, %.preheader.i158 ] ; 6 uses
  %i.nc = load i8, ptr %.sroa.010.021.i160, align 1
  switch i8 %i.nc, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i173 [
    i8 13, label %.critedge.i161
    i8 10, label %.critedge.i161
    i8 0, label %.critedge.i161
    i8 12, label %.critedge.i161
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i173:            ; preds = %.lr.ph.i159
  %i.nd = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i160, i64 1 ; 4 uses
  %i.ne = icmp eq ptr %i.nd, %.sroa.0.0.copyload
  %i.nf = icmp eq ptr %i.nd, %i.na
  %.0.i.i174 = or i1 %i.ne, %i.nf
  br i1 %.0.i.i174, label %.critedge.i161, label %.lr.ph.i159, !llvm.loop !9

.critedge.i161:                                   ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i173, %.lr.ph.i159, %.lr.ph.i159, %.lr.ph.i159, %.lr.ph.i159, %.preheader.i158
  %.sroa.010.0.lcssa.i162 = phi ptr [ %.sroa.06.0.copyload, %.preheader.i158 ], [ %i.nd, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i173 ], [ %.sroa.010.021.i160, %.lr.ph.i159 ], [ %.sroa.010.021.i160, %.lr.ph.i159 ], [ %.sroa.010.021.i160, %.lr.ph.i159 ], [ %.sroa.010.021.i160, %.lr.ph.i159 ] ; 3 uses
  %.not19.i163 = icmp eq ptr %.sroa.010.0.lcssa.i162, %.sroa.0.0.copyload
  br i1 %.not19.i163, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %.critedge.i161
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i162, i64 1
  %i.nh = load i32, ptr %i.mz, align 8
  %i.ni = add i32 %i.nh, 1
  store i32 %i.ni, ptr %i.mz, align 8
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %.critedge.i161
  %.sroa.010.1.i164 = phi ptr [ %i.ng, %bb.by ], [ %.sroa.010.0.lcssa.i162, %.critedge.i161 ] ; 5 uses
  %.not2030.i165 = icmp eq ptr %.sroa.010.1.i164, %.sroa.0.0.copyload
  br i1 %.not2030.i165, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit175, label %.lr.ph32.preheader.i166

.lr.ph32.preheader.i166:                          ; preds = %bb.bz
  %.sroa.010.136.i167 = ptrtoaddr ptr %.sroa.010.1.i164 to i64
  %i.nj = sub i64 %7, %.sroa.010.136.i167
  %scevgep.i168 = getelementptr i8, ptr %.sroa.010.1.i164, i64 %i.nj
  br label %.lr.ph32.i169

.lr.ph32.i169:                                    ; preds = %.critedge4.i171, %.lr.ph32.preheader.i166
  %.sroa.010.231.i170 = phi ptr [ %i.nl, %.critedge4.i171 ], [ %.sroa.010.1.i164, %.lr.ph32.preheader.i166 ] ; 3 uses
  %i.nk = load i8, ptr %.sroa.010.231.i170, align 1
  switch i8 %i.nk, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit175 [
    i8 9, label %.critedge4.i171
    i8 32, label %.critedge4.i171
  ]

.critedge4.i171:                                  ; preds = %.lr.ph32.i169, %.lr.ph32.i169
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i170, i64 1 ; 2 uses
  %.not20.i172 = icmp eq ptr %i.nl, %.sroa.0.0.copyload
  br i1 %.not20.i172, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit175, label %.lr.ph32.i169, !llvm.loop !10

_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit175: ; preds = %.lr.ph32.i169, %.critedge4.i171, %bb.bx, %bb.bz
  %.sroa.010.3.i157 = phi ptr [ %.sroa.06.0.copyload, %bb.bx ], [ %.sroa.010.1.i164, %bb.bz ], [ %.sroa.010.231.i170, %.lr.ph32.i169 ], [ %scevgep.i168, %.critedge4.i171 ]
  store ptr %.sroa.010.3.i157, ptr %0, align 8
  br label %bb.ca

bb.ca:                                            ; preds = %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit175, %_ZN6Assimp7ObjFile4FaceD2Ev.exit, %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit, %bb.b
  ret void

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %bb.bc
  %.pn71.pn = phi { ptr, i32 } [ %i.ko, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154 ], [ %i.jy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ %i.hs, %bb.bc ]
  resume { ptr, i32 } %.pn71.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6Assimp13ObjFileParser10getCommentEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(4184) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %1 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.not.i = icmp ult ptr %.sroa.01.0.copyload, %.sroa.0.0.copyload
  br i1 %.not.i, label %.preheader.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit

.preheader.i:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 -1 ; 2 uses
  %i.d = icmp eq ptr %.sroa.01.0.copyload, %i.c
  br i1 %i.d, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %.sroa.010.021.i = phi ptr [ %i.f, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.01.0.copyload, %.preheader.i ] ; 6 uses
  %i.e = load i8, ptr %.sroa.010.021.i, align 1
  switch i8 %i.e, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 13, label %.critedge.i
    i8 10, label %.critedge.i
    i8 0, label %.critedge.i
    i8 12, label %.critedge.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i, i64 1 ; 4 uses
  %i.g = icmp eq ptr %i.f, %.sroa.0.0.copyload
  %i.h = icmp eq ptr %i.f, %i.c
  %.0.i.i = or i1 %i.g, %i.h
  br i1 %.0.i.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !9

.critedge.i:                                      ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.preheader.i
  %.sroa.010.0.lcssa.i = phi ptr [ %.sroa.01.0.copyload, %.preheader.i ], [ %i.f, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ] ; 3 uses
  %.not19.i = icmp eq ptr %.sroa.010.0.lcssa.i, %.sroa.0.0.copyload
  br i1 %.not19.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.critedge.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i, i64 1
  %i.j = load i32, ptr %i.b, align 8
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge.i
  %.sroa.010.1.i = phi ptr [ %i.i, %bb.b ], [ %.sroa.010.0.lcssa.i, %.critedge.i ] ; 5 uses
  %.not2030.i = icmp eq ptr %.sroa.010.1.i, %.sroa.0.0.copyload
  br i1 %.not2030.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.preheader.i

.lr.ph32.preheader.i:                             ; preds = %bb.c
  %.sroa.010.136.i = ptrtoaddr ptr %.sroa.010.1.i to i64
  %i.l = sub i64 %1, %.sroa.010.136.i
  %scevgep.i = getelementptr i8, ptr %.sroa.010.1.i, i64 %i.l
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.critedge4.i, %.lr.ph32.preheader.i
  %.sroa.010.231.i = phi ptr [ %i.n, %.critedge4.i ], [ %.sroa.010.1.i, %.lr.ph32.preheader.i ] ; 3 uses
  %i.m = load i8, ptr %.sroa.010.231.i, align 1
  switch i8 %i.m, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit [
    i8 9, label %.critedge4.i
    i8 32, label %.critedge4.i
  ]

.critedge4.i:                                     ; preds = %.lr.ph32.i, %.lr.ph32.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i, i64 1 ; 2 uses
  %.not20.i = icmp eq ptr %i.n, %.sroa.0.0.copyload
  br i1 %.not20.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.i, !llvm.loop !10

_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit: ; preds = %.lr.ph32.i, %.critedge4.i, %bb.a, %bb.c
  %.sroa.010.3.i = phi ptr [ %.sroa.01.0.copyload, %bb.a ], [ %.sroa.010.1.i, %bb.c ], [ %.sroa.010.231.i, %.lr.ph32.i ], [ %scevgep.i, %.critedge4.i ]
  store ptr %.sroa.010.3.i, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13ObjFileParser15getMaterialDescEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(4184) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 26 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %3 = alloca %struct.aiString, align 4           ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %.sroa.09.0.copyload = load ptr, ptr %0, align 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.08.0.copyload = load ptr, ptr %i.d, align 8 ; 8 uses
  %i.e = getelementptr inbounds i8, ptr %.sroa.08.0.copyload, i64 -1 ; 4 uses
  %i.f = icmp eq ptr %.sroa.09.0.copyload, %.sroa.08.0.copyload
  %i.g = icmp eq ptr %.sroa.09.0.copyload, %i.e
  %.0.i5.i.i = select i1 %i.f, i1 true, i1 %i.g
  br i1 %.0.i5.i.i, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i
  %.sroa.0.06.i.i = phi ptr [ %i.i, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i ], [ %.sroa.09.0.copyload, %bb.a ] ; 8 uses
  %i.h = load i8, ptr %.sroa.0.06.i.i, align 1
  switch i8 %i.h, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i [
    i8 32, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
    i8 9, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
    i8 13, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
    i8 10, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
    i8 0, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
    i8 12, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i:     ; preds = %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i, i64 1 ; 4 uses
  %i.j = icmp eq ptr %i.i, %.sroa.08.0.copyload
  %i.k = icmp eq ptr %i.i, %i.e
  %.0.i.i.i = select i1 %i.j, i1 true, i1 %i.k
  br i1 %.0.i.i.i, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, label %.lr.ph.i.i, !llvm.loop !47

_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %bb.a
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.09.0.copyload, %bb.a ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %i.i, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i ] ; 4 uses
  %i.l = icmp eq ptr %.sroa.0.0.lcssa.i.i, %.sroa.08.0.copyload
  %i.m = icmp eq ptr %.sroa.0.0.lcssa.i.i, %i.e
  %.0.i6.i.i = select i1 %i.l, i1 true, i1 %i.m
  br i1 %.0.i6.i.i, label %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
  %.sroa.0.07.i.i = phi ptr [ %i.o, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i ], [ %.sroa.0.0.lcssa.i.i, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ] ; 3 uses
  %i.n = load i8, ptr %.sroa.0.07.i.i, align 1
  switch i8 %i.n, label %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i:             ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 1 ; 4 uses
  %i.p = icmp eq ptr %i.o, %.sroa.08.0.copyload
  %i.q = icmp eq ptr %i.o, %i.e
  %.0.i.i9.i = select i1 %i.p, i1 true, i1 %i.q
  br i1 %.0.i.i9.i, label %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit, label %.lr.ph.i8.i, !llvm.loop !24

_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit: ; preds = %.lr.ph.i8.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
  %.promoted = phi ptr [ %.sroa.0.0.lcssa.i.i, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %.sroa.0.07.i.i, %.lr.ph.i8.i ], [ %i.o, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i ] ; 6 uses
  store ptr %.promoted, ptr %0, align 8
  %i.r = icmp eq ptr %.promoted, %.sroa.08.0.copyload
  br i1 %i.r, label %bb.aq, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit, %_ZN6Assimp9IsLineEndIcEEbT_.exit
  %i.s = phi ptr [ %i.u, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ %.promoted, %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit ] ; 6 uses
  %i.t = load i8, ptr %i.s, align 1
  switch i8 %i.t, label %_ZN6Assimp9IsLineEndIcEEbT_.exit [
    i8 13, label %.critedge
    i8 10, label %.critedge
    i8 0, label %.critedge
    i8 12, label %.critedge
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit:                 ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 3 uses
  store ptr %i.u, ptr %0, align 8
  %.not61 = icmp eq ptr %i.u, %.sroa.08.0.copyload
  br i1 %.not61, label %.critedge, label %.lr.ph, !llvm.loop !52

.critedge:                                        ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %.lcssa.ph = phi ptr [ %.sroa.08.0.copyload, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ %i.s, %.lr.ph ], [ %i.s, %.lr.ph ], [ %i.s, %.lr.ph ], [ %i.s, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  store ptr %i.v, ptr %1, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  store i64 0, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.x = ptrtoint ptr %.lcssa.ph to i64
  %i.y = ptrtoint ptr %.promoted to i64
  %i.z = sub i64 %i.x, %i.y                       ; 4 uses
  store i64 %i.z, ptr %i.c, align 8
  %i.aa = icmp ugt i64 %i.z, 15
  br i1 %i.aa, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %.critedge
  %i.ab = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.ab, ptr %1, align 8
  %i.ac = load i64, ptr %i.c, align 8
  store i64 %i.ac, ptr %i.v, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %.critedge
  %i.ad = phi ptr [ %i.ab, %.noexc.i ], [ %i.v, %.critedge ] ; 2 uses
  switch i64 %i.z, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.ae = load i8, ptr %.promoted, align 1
  store i8 %i.ae, ptr %i.ad, align 1
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr nonnull align 1 %.promoted, i64 %i.z, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.af = load i64, ptr %i.c, align 8             ; 2 uses
  store i64 %i.af, ptr %i.w, align 8
  %i.ag = load ptr, ptr %1, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  store i8 0, ptr %i.ah, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_Z7ai_trimRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.ai = load ptr, ptr %1, align 8               ; 6 uses
  %i.aj = icmp eq ptr %i.ai, %i.v
  %i.ak = load ptr, ptr %2, align 8               ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.am = icmp eq ptr %i.ak, %i.al                ; 2 uses
  br i1 %i.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.e
  br i1 %i.am, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.e
  br i1 %i.am, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8            ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.ap)
  switch i64 %i.ao, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.aq = load i8, ptr %i.ak, align 1
  store i8 %i.aq, ptr %i.ai, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.ak, i64 %i.ao, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.ar = load i64, ptr %i.an, align 8            ; 2 uses
  store i64 %i.ar, ptr %i.w, align 8
  %i.as = load ptr, ptr %1, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ar
  store i8 0, ptr %i.at, align 1
  %.pre.i = load ptr, ptr %2, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
end_hunk_5
begin_hunk_6_@_ZN6Assimp13ObjFileParser15getMaterialDescEv:bb.a
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = ashr exact i64 %i.fp, 5
  %i.fr = load ptr, ptr %1, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, %.lr.ph.i.i28
  %.012.i.i = phi i64 [ 0, %.lr.ph.i.i28 ], [ %i.fz, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i ] ; 3 uses
  %i.fs = getelementptr inbounds nuw [32 x i8], ptr %i.fm, i64 %.012.i.i ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load i64, ptr %i.ft, align 8
  %i.fv = icmp eq i64 %i.fh, %i.fu
  br i1 %i.fv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i: ; preds = %bb.ad
  %i.fw = load ptr, ptr %i.fs, align 8
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.fr, ptr %i.fw, i64 %i.fh)
  %i.fx = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.fx, label %bb.ae, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i

bb.ae:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i
  %i.fy = trunc i64 %.012.i.i to i32
  br label %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i, %bb.ad
  %i.fz = add nuw i64 %.012.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.fz, %i.fq
  br i1 %exitcond.not.i.i, label %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.ad, !llvm.loop !53

_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, %bb.ae, %.preheader.i.i, %bb.ac
  %.010.i.i = phi i32 [ -1, %bb.ac ], [ %i.fy, %bb.ae ], [ -1, %.preheader.i.i ], [ -1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i ]
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ff, i64 100
  %i.gb = load i32, ptr %i.ga, align 4            ; 2 uses
  %.not.i29 = icmp eq i32 %i.gb, -1
  %.not8.i = icmp eq i32 %i.gb, %.010.i.i
  %or.cond.i = or i1 %.not.i29, %.not8.i
  br i1 %or.cond.i, label %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread58, label %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  %i.gf = load ptr, ptr %i.ge, align 8
  %.not62 = icmp eq ptr %i.gd, %i.gf
  br i1 %.not62, label %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread58, label %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %bb.ab, %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fd, i64 232
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fd, i64 240
  %i.gi = load i64, ptr %i.gh, align 8
  %i.gj = icmp eq i64 %i.gi, 0                    ; 2 uses
  %spec.select60 = select i1 %i.gj, ptr %1, ptr %i.gg
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.gk, ptr %4, align 8
  %i.gl = load ptr, ptr %spec.select60, align 8   ; 2 uses
  %.sroa.gep76 = getelementptr inbounds nuw i8, ptr %i.fd, i64 240
  %.val = load i64, ptr %i.w, align 8
  %.sroa.gep76.val = load i64, ptr %.sroa.gep76, align 8
  %i.gm = select i1 %i.gj, i64 %.val, i64 %.sroa.gep76.val ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.gm, ptr %i.a, align 8
  %i.gn = icmp ugt i64 %i.gm, 15
  br i1 %i.gn, label %.noexc.i32, label %._crit_edge.i.i31

.noexc.i32:                                       ; preds = %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %i.go = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc33 unwind label %bb.aj  ; 2 uses

.noexc33:                                         ; preds = %.noexc.i32
  store ptr %i.go, ptr %4, align 8
  %i.gp = load i64, ptr %i.a, align 8
  store i64 %i.gp, ptr %i.gk, align 8
  br label %._crit_edge.i.i31

._crit_edge.i.i31:                                ; preds = %.noexc33, %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %i.gq = phi ptr [ %i.go, %.noexc33 ], [ %i.gk, %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ] ; 2 uses
  switch i64 %i.gm, label %bb.ag [
    i64 1, label %bb.af
    i64 0, label %bb.ah
  ]

bb.af:                                            ; preds = %._crit_edge.i.i31
  %i.gr = load i8, ptr %i.gl, align 1
  store i8 %i.gr, ptr %i.gq, align 1
  br label %bb.ah

bb.ag:                                            ; preds = %._crit_edge.i.i31
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gq, ptr align 1 %i.gl, i64 %i.gm, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %._crit_edge.i.i31
  %i.gs = load i64, ptr %i.a, align 8             ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.gs, ptr %i.gt, align 8
  %i.gu = load ptr, ptr %4, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gs
  store i8 0, ptr %i.gv, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  invoke void @_ZN6Assimp13ObjFileParser10createMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(4184) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.gw = load ptr, ptr %4, align 8               ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %i.gk
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.ai
  %i.gy = load i64, ptr %i.gk, align 8
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.gz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %.pre = load i64, ptr %i.w, align 8
  %.pre77.pre = load ptr, ptr %i.bj, align 8
  br label %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread58

bb.aj:                                            ; preds = %.noexc.i32
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

bb.ak:                                            ; preds = %bb.ah
  %i.hb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hc = load ptr, ptr %4, align 8               ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.gk
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.ak
  %i.he = load i64, ptr %i.gk, align 8
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hf) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %bb.aj
  %.pn = phi { ptr, i32 } [ %i.ha, %bb.aj ], [ %i.hb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %i.hb, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.ar

_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread58: ; preds = %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.pre77 = phi ptr [ %i.fd, %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ %.pre77.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %i.fd, %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 3 uses
  %i.hg = phi i64 [ %i.fh, %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %i.fh, %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 3 uses
  %i.hh = icmp eq i64 %i.hg, 0
  br i1 %i.hh, label %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread58
  %i.hi = getelementptr inbounds nuw i8, ptr %.pre77, i64 80
  %i.hj = getelementptr inbounds nuw i8, ptr %.pre77, i64 88
  %i.hk = load ptr, ptr %i.hj, align 8            ; 2 uses
  %i.hl = load ptr, ptr %i.hi, align 8            ; 3 uses
  %.not.i40 = icmp eq ptr %i.hk, %i.hl
  br i1 %.not.i40, label %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.hm = ptrtoint ptr %i.hk to i64
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = sub i64 %i.hm, %i.hn
  %i.hp = ashr exact i64 %i.ho, 5
  %i.hq = load ptr, ptr %1, align 8
  br label %bb.al

bb.al:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %.lr.ph.i
  %.012.i = phi i64 [ 0, %.lr.ph.i ], [ %i.hy, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ] ; 3 uses
  %i.hr = getelementptr inbounds nuw [32 x i8], ptr %i.hl, i64 %.012.i ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = load i64, ptr %i.hs, align 8
  %i.hu = icmp eq i64 %i.hg, %i.ht
  br i1 %i.hu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.al
  %i.hv = load ptr, ptr %i.hr, align 8
  %bcmp.i.i = call i32 @bcmp(ptr %i.hq, ptr %i.hv, i64 %i.hg)
  %i.hw = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.hw, label %bb.am, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i

bb.am:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.hx = trunc i64 %.012.i to i32
  br label %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.al
  %i.hy = add nuw i64 %.012.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.hy, %i.hp
  br i1 %exitcond.not.i, label %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.al, !llvm.loop !53

_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread58, %.preheader.i, %bb.am
  %.010.i = phi i32 [ -1, %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread58 ], [ %i.hx, %bb.am ], [ -1, %.preheader.i ], [ -1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ]
  %i.hz = getelementptr inbounds nuw i8, ptr %.pre77, i64 296
  %i.ia = load ptr, ptr %i.hz, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 100
  store i32 %.010.i, ptr %i.ib, align 4
  br label %bb.an

bb.an:                                            ; preds = %_ZNK8aiStringeqERKS_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.sroa.03.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8 ; 7 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %5 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.not.i41 = icmp ult ptr %.sroa.03.0.copyload, %.sroa.0.0.copyload
  br i1 %.not.i41, label %.preheader.i42, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit

.preheader.i42:                                   ; preds = %bb.an
  %i.id = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 -1 ; 2 uses
  %i.ie = icmp eq ptr %.sroa.03.0.copyload, %i.id
  br i1 %i.ie, label %.critedge.i, label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %.preheader.i42, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %.sroa.010.021.i = phi ptr [ %i.ig, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.03.0.copyload, %.preheader.i42 ] ; 6 uses
  %i.if = load i8, ptr %.sroa.010.021.i, align 1
  switch i8 %i.if, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 13, label %.critedge.i
    i8 10, label %.critedge.i
    i8 0, label %.critedge.i
    i8 12, label %.critedge.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %.lr.ph.i43
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i, i64 1 ; 4 uses
  %i.ih = icmp eq ptr %i.ig, %.sroa.0.0.copyload
  %i.ii = icmp eq ptr %i.ig, %i.id
  %.0.i.i = or i1 %i.ih, %i.ii
  br i1 %.0.i.i, label %.critedge.i, label %.lr.ph.i43, !llvm.loop !9

.critedge.i:                                      ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %.lr.ph.i43, %.lr.ph.i43, %.lr.ph.i43, %.lr.ph.i43, %.preheader.i42
  %.sroa.010.0.lcssa.i = phi ptr [ %.sroa.03.0.copyload, %.preheader.i42 ], [ %i.ig, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.010.021.i, %.lr.ph.i43 ], [ %.sroa.010.021.i, %.lr.ph.i43 ], [ %.sroa.010.021.i, %.lr.ph.i43 ], [ %.sroa.010.021.i, %.lr.ph.i43 ] ; 3 uses
  %.not19.i = icmp eq ptr %.sroa.010.0.lcssa.i, %.sroa.0.0.copyload
  br i1 %.not19.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.critedge.i
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i, i64 1
  %i.ik = load i32, ptr %i.ic, align 8
  %i.il = add i32 %i.ik, 1
  store i32 %i.il, ptr %i.ic, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.critedge.i
  %.sroa.010.1.i = phi ptr [ %i.ij, %bb.ao ], [ %.sroa.010.0.lcssa.i, %.critedge.i ] ; 5 uses
  %.not2030.i = icmp eq ptr %.sroa.010.1.i, %.sroa.0.0.copyload
  br i1 %.not2030.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.preheader.i

.lr.ph32.preheader.i:                             ; preds = %bb.ap
  %.sroa.010.136.i = ptrtoaddr ptr %.sroa.010.1.i to i64
  %i.im = sub i64 %5, %.sroa.010.136.i
  %scevgep.i = getelementptr i8, ptr %.sroa.010.1.i, i64 %i.im
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.critedge4.i, %.lr.ph32.preheader.i
  %.sroa.010.231.i = phi ptr [ %i.io, %.critedge4.i ], [ %.sroa.010.1.i, %.lr.ph32.preheader.i ] ; 3 uses
  %i.in = load i8, ptr %.sroa.010.231.i, align 1
  switch i8 %i.in, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit [
    i8 9, label %.critedge4.i
    i8 32, label %.critedge4.i
  ]

.critedge4.i:                                     ; preds = %.lr.ph32.i, %.lr.ph32.i
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i, i64 1 ; 2 uses
  %.not20.i = icmp eq ptr %i.io, %.sroa.0.0.copyload
  br i1 %.not20.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.i, !llvm.loop !10

_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit: ; preds = %.critedge4.i, %.lr.ph32.i, %bb.ap, %bb.an
  %.sroa.010.3.i = phi ptr [ %.sroa.03.0.copyload, %bb.an ], [ %.sroa.010.1.i, %bb.ap ], [ %.sroa.010.231.i, %.lr.ph32.i ], [ %scevgep.i, %.critedge4.i ]
  store ptr %.sroa.010.3.i, ptr %0, align 8
  %i.ip = load ptr, ptr %1, align 8               ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.v
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit
  %i.ir = load i64, ptr %i.v, align 8
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.is) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  ret void

bb.ar:                                            ; preds = %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %bb.k
  %.pn20 = phi { ptr, i32 } [ %i.fa, %bb.z ], [ %i.bi, %bb.k ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ]
  %i.it = load ptr, ptr %1, align 8               ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.v
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.ar
  %i.iv = load i64, ptr %i.v, align 8
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.iw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %.pn20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6Assimp13ObjFileParser27getGroupNumberAndResolutionEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(4184) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %1 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.not.i = icmp ult ptr %.sroa.01.0.copyload, %.sroa.0.0.copyload
  br i1 %.not.i, label %.preheader.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit

.preheader.i:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 -1 ; 2 uses
  %i.d = icmp eq ptr %.sroa.01.0.copyload, %i.c
  br i1 %i.d, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %.sroa.010.021.i = phi ptr [ %i.f, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.01.0.copyload, %.preheader.i ] ; 6 uses
  %i.e = load i8, ptr %.sroa.010.021.i, align 1
  switch i8 %i.e, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 13, label %.critedge.i
    i8 10, label %.critedge.i
    i8 0, label %.critedge.i
    i8 12, label %.critedge.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i, i64 1 ; 4 uses
  %i.g = icmp eq ptr %i.f, %.sroa.0.0.copyload
  %i.h = icmp eq ptr %i.f, %i.c
  %.0.i.i = or i1 %i.g, %i.h
  br i1 %.0.i.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !9

.critedge.i:                                      ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.preheader.i
  %.sroa.010.0.lcssa.i = phi ptr [ %.sroa.01.0.copyload, %.preheader.i ], [ %i.f, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ] ; 3 uses
  %.not19.i = icmp eq ptr %.sroa.010.0.lcssa.i, %.sroa.0.0.copyload
  br i1 %.not19.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.critedge.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i, i64 1
  %i.j = load i32, ptr %i.b, align 8
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge.i
  %.sroa.010.1.i = phi ptr [ %i.i, %bb.b ], [ %.sroa.010.0.lcssa.i, %.critedge.i ] ; 5 uses
  %.not2030.i = icmp eq ptr %.sroa.010.1.i, %.sroa.0.0.copyload
  br i1 %.not2030.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.preheader.i

.lr.ph32.preheader.i:                             ; preds = %bb.c
  %.sroa.010.136.i = ptrtoaddr ptr %.sroa.010.1.i to i64
  %i.l = sub i64 %1, %.sroa.010.136.i
  %scevgep.i = getelementptr i8, ptr %.sroa.010.1.i, i64 %i.l
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.critedge4.i, %.lr.ph32.preheader.i
  %.sroa.010.231.i = phi ptr [ %i.n, %.critedge4.i ], [ %.sroa.010.1.i, %.lr.ph32.preheader.i ] ; 3 uses
  %i.m = load i8, ptr %.sroa.010.231.i, align 1
  switch i8 %i.m, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit [
    i8 9, label %.critedge4.i
    i8 32, label %.critedge4.i
  ]

.critedge4.i:                                     ; preds = %.lr.ph32.i, %.lr.ph32.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i, i64 1 ; 2 uses
  %.not20.i = icmp eq ptr %i.n, %.sroa.0.0.copyload
  br i1 %.not20.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.i, !llvm.loop !10

_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit: ; preds = %.lr.ph32.i, %.critedge4.i, %bb.a, %bb.c
  %.sroa.010.3.i = phi ptr [ %.sroa.01.0.copyload, %bb.a ], [ %.sroa.010.1.i, %bb.c ], [ %.sroa.010.231.i, %.lr.ph32.i ], [ %scevgep.i, %.critedge4.i ]
  store ptr %.sroa.010.3.i, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13ObjFileParser14getMaterialLibEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(4184) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::vector.30", align 8    ; 10 uses
  %9 = alloca %"class.Assimp::ObjFileMtlImporter", align 8 ; 8 uses
  %.sroa.06.0.copyload = load ptr, ptr %0, align 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.05.0.copyload = load ptr, ptr %i.d, align 8 ; 8 uses
  %i.e = getelementptr inbounds i8, ptr %.sroa.05.0.copyload, i64 -1 ; 4 uses
  %i.f = icmp eq ptr %.sroa.06.0.copyload, %.sroa.05.0.copyload
  %i.g = icmp eq ptr %.sroa.06.0.copyload, %i.e
  %.0.i5.i.i = select i1 %i.f, i1 true, i1 %i.g
  br i1 %.0.i5.i.i, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i
  %.sroa.0.06.i.i = phi ptr [ %i.i, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i ], [ %.sroa.06.0.copyload, %bb.a ] ; 8 uses
  %i.h = load i8, ptr %.sroa.0.06.i.i, align 1
  switch i8 %i.h, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i [
    i8 32, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
    i8 9, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
    i8 13, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
    i8 10, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
    i8 0, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
    i8 12, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i:     ; preds = %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i, i64 1 ; 4 uses
  %i.j = icmp eq ptr %i.i, %.sroa.05.0.copyload
  %i.k = icmp eq ptr %i.i, %i.e
  %.0.i.i.i = select i1 %i.j, i1 true, i1 %i.k
  br i1 %.0.i.i.i, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, label %.lr.ph.i.i, !llvm.loop !47

_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %bb.a
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.06.0.copyload, %bb.a ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %i.i, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i ] ; 4 uses
  %i.l = icmp eq ptr %.sroa.0.0.lcssa.i.i, %.sroa.05.0.copyload
  %i.m = icmp eq ptr %.sroa.0.0.lcssa.i.i, %i.e
  %.0.i6.i.i = select i1 %i.l, i1 true, i1 %i.m
  br i1 %.0.i6.i.i, label %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
  %.sroa.0.07.i.i = phi ptr [ %i.o, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i ], [ %.sroa.0.0.lcssa.i.i, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ] ; 3 uses
  %i.n = load i8, ptr %.sroa.0.07.i.i, align 1
  switch i8 %i.n, label %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i:             ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 1 ; 4 uses
  %i.p = icmp eq ptr %i.o, %.sroa.05.0.copyload
  %i.q = icmp eq ptr %i.o, %i.e
  %.0.i.i9.i = select i1 %i.p, i1 true, i1 %i.q
  br i1 %.0.i.i9.i, label %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit, label %.lr.ph.i8.i, !llvm.loop !24

_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit: ; preds = %.lr.ph.i8.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
  %.promoted = phi ptr [ %.sroa.0.0.lcssa.i.i, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %.sroa.0.07.i.i, %.lr.ph.i8.i ], [ %i.o, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i ] ; 6 uses
  store ptr %.promoted, ptr %0, align 8
  %i.r = icmp eq ptr %.promoted, %.sroa.05.0.copyload
  br i1 %i.r, label %bb.av, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit, %_ZN6Assimp9IsLineEndIcEEbT_.exit
  %i.s = phi ptr [ %i.u, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ %.promoted, %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit ] ; 6 uses
  %i.t = load i8, ptr %i.s, align 1
  switch i8 %i.t, label %_ZN6Assimp9IsLineEndIcEEbT_.exit [
    i8 13, label %.critedge
    i8 10, label %.critedge
    i8 0, label %.critedge
    i8 12, label %.critedge
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit:                 ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 3 uses
  store ptr %i.u, ptr %0, align 8
  %.not134 = icmp eq ptr %i.u, %.sroa.05.0.copyload
  br i1 %.not134, label %.critedge, label %.lr.ph, !llvm.loop !54

.critedge:                                        ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %.lcssa.ph = phi ptr [ %.sroa.05.0.copyload, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ %i.s, %.lr.ph ], [ %i.s, %.lr.ph ], [ %i.s, %.lr.ph ], [ %i.s, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.v, ptr %1, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store i64 0, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.x = ptrtoint ptr %.lcssa.ph to i64
  %i.y = ptrtoint ptr %.promoted to i64
  %i.z = sub i64 %i.x, %i.y                       ; 4 uses
  store i64 %i.z, ptr %i.c, align 8
  %i.aa = icmp ugt i64 %i.z, 15
  br i1 %i.aa, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %.critedge
  %i.ab = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.ab, ptr %1, align 8
  %i.ac = load i64, ptr %i.c, align 8
  store i64 %i.ac, ptr %i.v, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %.critedge
  %i.ad = phi ptr [ %i.ab, %.noexc.i ], [ %i.v, %.critedge ] ; 2 uses
  switch i64 %i.z, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.ae = load i8, ptr %.promoted, align 1
  store i8 %i.ae, ptr %i.ad, align 1
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr nonnull align 1 %.promoted, i64 %i.z, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.af = load i64, ptr %i.c, align 8             ; 2 uses
  store i64 %i.af, ptr %i.w, align 8
  %i.ag = load ptr, ptr %1, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  store i8 0, ptr %i.ah, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.ai, ptr %2, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %i.aj, align 8
  store i8 0, ptr %i.ai, align 8
  %i.ak = load i64, ptr %i.w, align 8
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.am = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.am, ptr noundef nonnull @.str.12)
          to label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.t, %bb.h, %bb.f, %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit110

bb.h:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4136 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = invoke noundef i64 %i.as(ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  %.not = icmp eq i64 %i.at, 0
  br i1 %.not, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.au = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = invoke noundef nonnull align 8 dereferenceable(32) ptr %i.ax(ptr noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %bb.k unwind label %bb.q       ; 2 uses

end_hunk_6
begin_hunk_7_@_ZN6Assimp13ObjFileParser14getMaterialLibEv:bb.a
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 2, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 18
  store i8 0, ptr %i.da, align 2
  %i.db = load ptr, ptr %2, align 8
  %i.dc = load ptr, ptr %i.cx, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = invoke noundef ptr %i.de(ptr noundef nonnull align 8 dereferenceable(32) %i.cx, ptr noundef %i.db, ptr noundef nonnull %i.cy)
          to label %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit unwind label %bb.aj, !inline_history !58 ; 2 uses

_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.dg = load ptr, ptr %4, align 8               ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.cy
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit
  %i.di = load i64, ptr %i.cy, align 8
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %.not.i = icmp eq ptr %i.df, null
  br i1 %.not.i, label %bb.u, label %bb.aq

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.dk = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.v unwind label %bb.ak

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6Assimp6Logger5errorIJRA37_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.dk, ptr noundef nonnull align 1 dereferenceable(37) @.str.14, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.w unwind label %bb.ak

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 4152
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 4160
  %i.dn = load i64, ptr %i.dm, align 8            ; 2 uses
  %i.do = add i64 %i.dn, -3
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.dp, ptr %6, align 8, !alias.scope !59
  %i.dq = load ptr, ptr %i.dl, align 8, !noalias !59 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.do, i64 %i.dn) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !59
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !noalias !59
  %i.dr = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.dr, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.w
  %i.ds = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc62 unwind label %bb.al  ; 2 uses

.noexc62:                                         ; preds = %.noexc10.i.i
  store ptr %i.ds, ptr %6, align 8, !alias.scope !59
  %i.dt = load i64, ptr %i.a, align 8, !noalias !59
  store i64 %i.dt, ptr %i.dp, align 8, !alias.scope !59
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc62, %bb.w
  %i.du = phi ptr [ %i.ds, %.noexc62 ], [ %i.dp, %bb.w ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %bb.z
  ]

bb.x:                                             ; preds = %._crit_edge.i.i.i
  %i.dv = load i8, ptr %i.dq, align 1
  store i8 %i.dv, ptr %i.du, align 1
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.du, ptr align 1 %i.dq, i64 %spec.select.i.i.i, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %._crit_edge.i.i.i
  %i.dw = load i64, ptr %i.a, align 8, !noalias !59 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.dw, ptr %i.dx, align 8, !alias.scope !59
  %i.dy = load ptr, ptr %6, align 8, !alias.scope !59
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dw
  store i8 0, ptr %i.dz, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !59
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.ea = load i64, ptr %i.dx, align 8, !noalias !62
  %i.eb = add i64 %i.ea, -4611686018427387901
  %i.ec = icmp ult i64 %i.eb, 3
  br i1 %i.ec, label %bb.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #32
          to label %.noexc64 unwind label %bb.am

.noexc64:                                         ; preds = %bb.aa
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.z
  %i.ed = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.15, i64 noundef 3)
          to label %.noexc65 unwind label %bb.am  ; 6 uses

.noexc65:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  store ptr %i.ee, ptr %5, align 8, !alias.scope !62
  %i.ef = load ptr, ptr %i.ed, align 8            ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 5 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

bb.ab:                                            ; preds = %.noexc65
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ej = load i64, ptr %i.ei, align 8            ; 3 uses
  %i.ek = icmp ult i64 %i.ej, 16
  call void @llvm.assume(i1 %i.ek)
  %i.el = add nuw nsw i64 %i.ej, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ee, ptr noundef nonnull align 8 dereferenceable(1) %i.eg, i64 %i.el, i1 false)
  br label %bb.ac

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %.noexc65
  store ptr %i.ef, ptr %5, align 8, !alias.scope !62
  %i.em = load i64, ptr %i.eg, align 8
  store i64 %i.em, ptr %i.ee, align 8, !alias.scope !62
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63, %bb.ab
  %i.en = phi i64 [ %i.ej, %bb.ab ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63 ]
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.en, ptr %i.ep, align 8, !alias.scope !62
  store ptr %i.eg, ptr %i.ed, align 8
  store i64 0, ptr %i.eo, align 8
  store i8 0, ptr %i.eg, align 8
  %i.eq = load ptr, ptr %6, align 8               ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.dp
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.ac
  %i.es = load i64, ptr %i.dp, align 8
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.eu = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ad unwind label %bb.an

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  invoke void @_ZN6Assimp6Logger4infoIJRA37_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.eu, ptr noundef nonnull align 1 dereferenceable(37) @.str.16, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %._crit_edge.i.i69 unwind label %bb.an

._crit_edge.i.i69:                                ; preds = %bb.ad
  %i.ev = load ptr, ptr %i.ao, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.ew = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.ew, ptr %7, align 8
  store i16 25202, ptr %i.ew, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 2, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %7, i64 18
  store i8 0, ptr %i.ey, align 2
  %i.ez = load ptr, ptr %5, align 8
  %i.fa = load ptr, ptr %i.ev, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = invoke noundef ptr %i.fc(ptr noundef nonnull align 8 dereferenceable(32) %i.ev, ptr noundef %i.ez, ptr noundef nonnull %i.ew)
          to label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EE5resetEPS1_.exit unwind label %bb.ao, !inline_history !58 ; 2 uses

_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %._crit_edge.i.i69
  %i.fe = load ptr, ptr %7, align 8               ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.ew
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EE5resetEPS1_.exit
  %i.fg = load i64, ptr %i.ew, align 8
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EE5resetEPS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %.not135 = icmp eq ptr %i.fd, null
  br i1 %.not135, label %bb.ae, label %.critedge40

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %i.fi = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.af unwind label %bb.an

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN6Assimp6Logger5errorIJRA46_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.fi, ptr noundef nonnull align 1 dereferenceable(46) @.str.17, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ag unwind label %bb.an

bb.ag:                                            ; preds = %bb.af
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8 ; 7 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %10 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.not.i78 = icmp ult ptr %.sroa.01.0.copyload, %.sroa.0.0.copyload
  br i1 %.not.i78, label %.preheader.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit

.preheader.i:                                     ; preds = %bb.ag
  %i.fk = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 -1 ; 2 uses
  %i.fl = icmp eq ptr %.sroa.01.0.copyload, %i.fk
  br i1 %i.fl, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %.sroa.010.021.i = phi ptr [ %i.fn, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.01.0.copyload, %.preheader.i ] ; 6 uses
  %i.fm = load i8, ptr %.sroa.010.021.i, align 1
  switch i8 %i.fm, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 13, label %.critedge.i
    i8 10, label %.critedge.i
    i8 0, label %.critedge.i
    i8 12, label %.critedge.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %.lr.ph.i
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i, i64 1 ; 4 uses
  %i.fo = icmp eq ptr %i.fn, %.sroa.0.0.copyload
  %i.fp = icmp eq ptr %i.fn, %i.fk
  %.0.i.i = or i1 %i.fo, %i.fp
  br i1 %.0.i.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !9

.critedge.i:                                      ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.preheader.i
  %.sroa.010.0.lcssa.i = phi ptr [ %.sroa.01.0.copyload, %.preheader.i ], [ %i.fn, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ] ; 3 uses
  %.not19.i = icmp eq ptr %.sroa.010.0.lcssa.i, %.sroa.0.0.copyload
  br i1 %.not19.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.critedge.i
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i, i64 1
  %i.fr = load i32, ptr %i.fj, align 8
  %i.fs = add i32 %i.fr, 1
  store i32 %i.fs, ptr %i.fj, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.critedge.i
  %.sroa.010.1.i = phi ptr [ %i.fq, %bb.ah ], [ %.sroa.010.0.lcssa.i, %.critedge.i ] ; 5 uses
  %.not2030.i = icmp eq ptr %.sroa.010.1.i, %.sroa.0.0.copyload
  br i1 %.not2030.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.preheader.i

.lr.ph32.preheader.i:                             ; preds = %bb.ai
  %.sroa.010.136.i = ptrtoaddr ptr %.sroa.010.1.i to i64
  %i.ft = sub i64 %10, %.sroa.010.136.i
  %scevgep.i = getelementptr i8, ptr %.sroa.010.1.i, i64 %i.ft
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.critedge4.i, %.lr.ph32.preheader.i
  %.sroa.010.231.i = phi ptr [ %i.fv, %.critedge4.i ], [ %.sroa.010.1.i, %.lr.ph32.preheader.i ] ; 3 uses
  %i.fu = load i8, ptr %.sroa.010.231.i, align 1
  switch i8 %i.fu, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit [
    i8 9, label %.critedge4.i
    i8 32, label %.critedge4.i
  ]

.critedge4.i:                                     ; preds = %.lr.ph32.i, %.lr.ph32.i
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i, i64 1 ; 2 uses
  %.not20.i = icmp eq ptr %i.fv, %.sroa.0.0.copyload
  br i1 %.not20.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.i, !llvm.loop !10

_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit: ; preds = %.critedge4.i, %.lr.ph32.i, %bb.ai, %bb.ag
  %.sroa.010.3.i = phi ptr [ %.sroa.01.0.copyload, %bb.ag ], [ %.sroa.010.1.i, %bb.ai ], [ %.sroa.010.231.i, %.lr.ph32.i ], [ %scevgep.i, %.critedge4.i ]
  store ptr %.sroa.010.3.i, ptr %0, align 8
  %i.fw = load ptr, ptr %5, align 8               ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.ee
  br i1 %i.fx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit
  %i.fy = load i64, ptr %i.ee, align 8
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i80

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.ga = landingpad { ptr, i32 }
          cleanup
  %i.gb = load ptr, ptr %4, align 8               ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.cy
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.aj
  %i.gd = load i64, ptr %i.cy, align 8
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.ge) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit110

bb.ak:                                            ; preds = %bb.v, %bb.u
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit110

bb.al:                                            ; preds = %.noexc10.i.i
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.aa
  %i.gh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gi = load ptr, ptr %6, align 8               ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.dp
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.am
  %i.gk = load i64, ptr %i.dp, align 8
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gl) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %bb.al
  %.pn25 = phi { ptr, i32 } [ %i.gg, %bb.al ], [ %i.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %i.gh, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

bb.an:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %._crit_edge.i.i69
  %i.gn = landingpad { ptr, i32 }
          cleanup
  %i.go = load ptr, ptr %7, align 8               ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.ew
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.ao
  %i.gq = load i64, ptr %i.ew, align 8
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gr) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %bb.an
  %.pn29 = phi { ptr, i32 } [ %i.gn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %i.gm, %bb.an ] ; 2 uses
  %i.gs = load ptr, ptr %5, align 8               ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.ee
  br i1 %i.gt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.ap
  %i.gu = load i64, ptr %i.ee, align 8
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %.pn29.pn = phi { ptr, i32 } [ %.pn25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ], [ %.pn29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %.pn29, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit110

.critedge40:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %i.gw = load ptr, ptr %5, align 8               ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %i.ee
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %.critedge40
  %i.gy = load i64, ptr %i.ee, align 8
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.gz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %.critedge40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %.sroa.0118.3 = phi ptr [ %i.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  invoke void @_ZN6Assimp12BaseImporter16TextFileToBufferEPNS_8IOStreamERSt6vectorIcSaIcEENS0_12TextFileModeE(ptr noundef nonnull %.sroa.0118.3, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef 0)
          to label %bb.ar unwind label %bb.aw

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8
  invoke void @_ZN6Assimp18ObjFileMtlImporterC1ERSt6vectorIcSaIcEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcES2_EEPNS_7ObjFile5ModelE(ptr noundef nonnull align 8 dereferenceable(88) %9, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.hb)
          to label %bb.as unwind label %bb.ax

bb.as:                                            ; preds = %bb.ar
  %i.hc = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.hd = load ptr, ptr %i.hc, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.he = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.hf = load ptr, ptr %i.he, align 8
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = ptrtoint ptr %i.hd to i64
  %i.hi = sub i64 %i.hg, %i.hh
  call void @_ZdlPvm(ptr noundef nonnull %i.hd, i64 noundef %i.hi) #29
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit.i

_ZNSt6vectorIcSaIcEED2Ev.exit.i:                  ; preds = %bb.at, %bb.as
  %i.hj = load ptr, ptr %9, align 8               ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.hl = icmp eq ptr %i.hj, %i.hk
  br i1 %i.hl, label %_ZN6Assimp18ObjFileMtlImporterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i97: ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit.i
  %i.hm = load i64, ptr %i.hk, align 8
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hn) #29
  br label %_ZN6Assimp18ObjFileMtlImporterD2Ev.exit

_ZN6Assimp18ObjFileMtlImporterD2Ev.exit:          ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.ho = load ptr, ptr %8, align 8               ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i, label %.thread, label %bb.au

bb.au:                                            ; preds = %_ZN6Assimp18ObjFileMtlImporterD2Ev.exit
  %i.hp = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = ptrtoint ptr %i.ho to i64
  %i.ht = sub i64 %i.hr, %i.hs
  call void @_ZdlPvm(ptr noundef nonnull %i.ho, i64 noundef %i.ht) #29
  br label %.thread

.thread:                                          ; preds = %bb.au, %_ZN6Assimp18ObjFileMtlImporterD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.hu = load ptr, ptr %.sroa.0118.3, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0118.3) #28, !inline_history !65
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i80: ; preds = %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i80, %.thread, %bb.f
  %i.hx = load ptr, ptr %2, align 8               ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.ai
end_hunk_7
begin_hunk_8_@_ZN6Assimp13ObjFileParser12getGroupNameEv:bb.a
  br i1 %.0.i.i.i, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, label %.lr.ph.i.i, !llvm.loop !47

_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %bb.a
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.011.0.copyload, %bb.a ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %i.h, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i ] ; 4 uses
  %i.k = icmp eq ptr %.sroa.0.0.lcssa.i.i, %.sroa.010.0.copyload
  %i.l = icmp eq ptr %.sroa.0.0.lcssa.i.i, %i.d
  %.0.i6.i.i = select i1 %i.k, i1 true, i1 %i.l
  br i1 %.0.i6.i.i, label %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
  %.sroa.0.07.i.i = phi ptr [ %i.n, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i ], [ %.sroa.0.0.lcssa.i.i, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ] ; 3 uses
  %i.m = load i8, ptr %.sroa.0.07.i.i, align 1
  switch i8 %i.m, label %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i:             ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 1 ; 4 uses
  %i.o = icmp eq ptr %i.n, %.sroa.010.0.copyload
  %i.p = icmp eq ptr %i.n, %i.d
  %.0.i.i9.i = select i1 %i.o, i1 true, i1 %i.p
  br i1 %.0.i.i9.i, label %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit, label %.lr.ph.i8.i, !llvm.loop !24

_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i, %.lr.ph.i8.i, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
  %.sroa.0.0.lcssa.i11.i = phi ptr [ %.sroa.0.0.lcssa.i.i, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %.sroa.0.07.i.i, %.lr.ph.i8.i ], [ %i.n, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i ] ; 2 uses
  store ptr %.sroa.0.0.lcssa.i11.i, ptr %0, align 8
  %i.q = invoke ptr @_ZN6Assimp7getNameIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_RNSt7__cxx1112basic_stringIcSt11char_traitsIcES5_EE(ptr %.sroa.0.0.lcssa.i11.i, ptr %.sroa.010.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.c       ; 5 uses

bb.b:                                             ; preds = %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit
  store ptr %i.q, ptr %0, align 8
  %.sroa.04.0.copyload = load ptr, ptr %i.c, align 8 ; 4 uses
  %i.r = icmp eq ptr %i.q, %.sroa.04.0.copyload
  %i.s = getelementptr inbounds i8, ptr %.sroa.04.0.copyload, i64 -1
  %i.t = icmp eq ptr %i.q, %i.s
  %.0.i = select i1 %i.r, i1 true, i1 %i.t
  br i1 %.0.i, label %bb.r, label %bb.d

bb.c:                                             ; preds = %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 232
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 240
  %i.z = load i64, ptr %i.y, align 8              ; 3 uses
  %i.aa = load i64, ptr %i.b, align 8             ; 5 uses
  %i.ab = icmp eq i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp eq i64 %i.z, 0
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.e
  %i.ad = load ptr, ptr %1, align 8
  %i.ae = load ptr, ptr %i.x, align 8
  %bcmp.i.i = call i32 @bcmp(ptr %i.ae, ptr %i.ad, i64 %i.z)
  %.not = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.d, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 184 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIjSaIjEESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.ai = load ptr, ptr %1, align 8               ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ak) ; 2 uses
  %i.al = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.al, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call i32 @memcmp(ptr noundef %i.an, ptr noundef %i.ai, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.f
  %i.ap = sub i64 %i.ak, %i.aa
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ap, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ao, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.aq = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.aq, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.aq, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorIjSaIjEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.f, !llvm.loop !66

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorIjSaIjEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.ar = icmp eq ptr %.19.i.i.i, %i.ah
  br i1 %i.ar, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIjSaIjEESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorIjSaIjEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.at = load i64, ptr %i.as, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.at, i64 %i.aa) ; 2 uses
  %i.au = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.au, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call i32 @memcmp(ptr noundef %i.ai, ptr noundef %i.aw, i64 noundef %.sroa.speculated.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.g
  %i.ay = sub i64 %i.aa, %i.at
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ay, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ax, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.az = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i = select i1 %i.az, ptr %i.ah, ptr %.19.i.i.i
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIjSaIjEESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIjSaIjEESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorIjSaIjEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %.sroa.0.0.i.i = phi ptr [ %i.ah, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ %i.ah, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorIjSaIjEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 2 uses
  invoke void @_ZN6Assimp13ObjFileParser12createObjectERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(4184) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIjSaIjEESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit
  %i.ba = load ptr, ptr %i.v, align 8             ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 176
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 184
  %i.bd = icmp eq ptr %.sroa.0.0.i.i, %i.bc
  br i1 %i.bd, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.be = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %bb.j unwind label %bb.m       ; 3 uses

bb.j:                                             ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i8 0, i64 24, i1 false)
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIjSaIjEESt4lessIS5_ESaISt4pairIKS5_S9_EEEixERSD_(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  store ptr %i.be, ptr %i.bf, align 8
  %i.bg = load ptr, ptr %i.v, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.o, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIjSaIjEESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.n:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.sink46 = phi ptr [ %i.ba, %bb.n ], [ %i.bg, %bb.k ]
  %.sink = phi ptr [ %i.bk, %bb.n ], [ %i.be, %bb.k ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.sink46, i64 224
  store ptr %.sink, ptr %i.bl, align 8
  %i.bm = load ptr, ptr %i.v, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 232
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit_crit_edge unwind label %bb.l

._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit_crit_edge: ; preds = %bb.o
  %.sroa.01.0.copyload.pre = load ptr, ptr %0, align 8
  %.sroa.0.0.copyload.pre = load ptr, ptr %i.c, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit_crit_edge, %bb.e, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %.sroa.0.0.copyload = phi ptr [ %.sroa.0.0.copyload.pre, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit_crit_edge ], [ %.sroa.04.0.copyload, %bb.e ], [ %.sroa.04.0.copyload, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ] ; 7 uses
  %.sroa.01.0.copyload = phi ptr [ %.sroa.01.0.copyload.pre, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit_crit_edge ], [ %i.q, %bb.e ], [ %i.q, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ] ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %2 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.not.i = icmp ult ptr %.sroa.01.0.copyload, %.sroa.0.0.copyload
  br i1 %.not.i, label %.preheader.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit

.preheader.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.bp = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 -1 ; 2 uses
  %i.bq = icmp eq ptr %.sroa.01.0.copyload, %i.bp
  br i1 %i.bq, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %.sroa.010.021.i = phi ptr [ %i.bs, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.01.0.copyload, %.preheader.i ] ; 6 uses
  %i.br = load i8, ptr %.sroa.010.021.i, align 1
  switch i8 %i.br, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 13, label %.critedge.i
    i8 10, label %.critedge.i
    i8 0, label %.critedge.i
    i8 12, label %.critedge.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %.lr.ph.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i, i64 1 ; 4 uses
  %i.bt = icmp eq ptr %i.bs, %.sroa.0.0.copyload
  %i.bu = icmp eq ptr %i.bs, %i.bp
  %.0.i.i = or i1 %i.bt, %i.bu
  br i1 %.0.i.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !9

.critedge.i:                                      ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.preheader.i
  %.sroa.010.0.lcssa.i = phi ptr [ %.sroa.01.0.copyload, %.preheader.i ], [ %i.bs, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ] ; 3 uses
  %.not19.i = icmp eq ptr %.sroa.010.0.lcssa.i, %.sroa.0.0.copyload
  br i1 %.not19.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.critedge.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i, i64 1
  %i.bw = load i32, ptr %i.bo, align 8
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bo, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.critedge.i
  %.sroa.010.1.i = phi ptr [ %i.bv, %bb.p ], [ %.sroa.010.0.lcssa.i, %.critedge.i ] ; 5 uses
  %.not2030.i = icmp eq ptr %.sroa.010.1.i, %.sroa.0.0.copyload
  br i1 %.not2030.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.preheader.i

.lr.ph32.preheader.i:                             ; preds = %bb.q
  %.sroa.010.136.i = ptrtoaddr ptr %.sroa.010.1.i to i64
  %i.by = sub i64 %2, %.sroa.010.136.i
  %scevgep.i = getelementptr i8, ptr %.sroa.010.1.i, i64 %i.by
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.critedge4.i, %.lr.ph32.preheader.i
  %.sroa.010.231.i = phi ptr [ %i.ca, %.critedge4.i ], [ %.sroa.010.1.i, %.lr.ph32.preheader.i ] ; 3 uses
  %i.bz = load i8, ptr %.sroa.010.231.i, align 1
  switch i8 %i.bz, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit [
    i8 9, label %.critedge4.i
    i8 32, label %.critedge4.i
  ]

.critedge4.i:                                     ; preds = %.lr.ph32.i, %.lr.ph32.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i, i64 1 ; 2 uses
  %.not20.i = icmp eq ptr %i.ca, %.sroa.0.0.copyload
  br i1 %.not20.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.i, !llvm.loop !10

_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit: ; preds = %.critedge4.i, %.lr.ph32.i, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %.sroa.010.3.i = phi ptr [ %.sroa.01.0.copyload, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ], [ %.sroa.010.1.i, %bb.q ], [ %.sroa.010.231.i, %.lr.ph32.i ], [ %scevgep.i, %.critedge4.i ]
  store ptr %.sroa.010.3.i, ptr %0, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.b, %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit
  %i.cb = load ptr, ptr %1, align 8               ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.a
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.cd = load i64, ptr %i.a, align 8
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret void

bb.s:                                             ; preds = %bb.l, %bb.m, %bb.c
  %.pn17 = phi { ptr, i32 } [ %i.bh, %bb.l ], [ %i.bi, %bb.m ], [ %i.u, %bb.c ]
  %i.cf = load ptr, ptr %1, align 8               ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.a
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.s
  %i.ch = load i64, ptr %i.a, align 8
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %.pn17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6Assimp13ObjFileParser14getGroupNumberEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(4184) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %1 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.not.i = icmp ult ptr %.sroa.01.0.copyload, %.sroa.0.0.copyload
  br i1 %.not.i, label %.preheader.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit

.preheader.i:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 -1 ; 2 uses
  %i.d = icmp eq ptr %.sroa.01.0.copyload, %i.c
  br i1 %i.d, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %.sroa.010.021.i = phi ptr [ %i.f, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.01.0.copyload, %.preheader.i ] ; 6 uses
  %i.e = load i8, ptr %.sroa.010.021.i, align 1
  switch i8 %i.e, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 13, label %.critedge.i
    i8 10, label %.critedge.i
    i8 0, label %.critedge.i
    i8 12, label %.critedge.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i, i64 1 ; 4 uses
  %i.g = icmp eq ptr %i.f, %.sroa.0.0.copyload
  %i.h = icmp eq ptr %i.f, %i.c
  %.0.i.i = or i1 %i.g, %i.h
  br i1 %.0.i.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !9

.critedge.i:                                      ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.preheader.i
  %.sroa.010.0.lcssa.i = phi ptr [ %.sroa.01.0.copyload, %.preheader.i ], [ %i.f, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ] ; 3 uses
  %.not19.i = icmp eq ptr %.sroa.010.0.lcssa.i, %.sroa.0.0.copyload
  br i1 %.not19.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.critedge.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i, i64 1
  %i.j = load i32, ptr %i.b, align 8
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge.i
  %.sroa.010.1.i = phi ptr [ %i.i, %bb.b ], [ %.sroa.010.0.lcssa.i, %.critedge.i ] ; 5 uses
  %.not2030.i = icmp eq ptr %.sroa.010.1.i, %.sroa.0.0.copyload
  br i1 %.not2030.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.preheader.i

.lr.ph32.preheader.i:                             ; preds = %bb.c
  %.sroa.010.136.i = ptrtoaddr ptr %.sroa.010.1.i to i64
  %i.l = sub i64 %1, %.sroa.010.136.i
  %scevgep.i = getelementptr i8, ptr %.sroa.010.1.i, i64 %i.l
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.critedge4.i, %.lr.ph32.preheader.i
  %.sroa.010.231.i = phi ptr [ %i.n, %.critedge4.i ], [ %.sroa.010.1.i, %.lr.ph32.preheader.i ] ; 3 uses
  %i.m = load i8, ptr %.sroa.010.231.i, align 1
  switch i8 %i.m, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit [
    i8 9, label %.critedge4.i
    i8 32, label %.critedge4.i
  ]

.critedge4.i:                                     ; preds = %.lr.ph32.i, %.lr.ph32.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i, i64 1 ; 2 uses
  %.not20.i = icmp eq ptr %i.n, %.sroa.0.0.copyload
  br i1 %.not20.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.i, !llvm.loop !10

_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit: ; preds = %.lr.ph32.i, %.critedge4.i, %bb.a, %bb.c
  %.sroa.010.3.i = phi ptr [ %.sroa.01.0.copyload, %bb.a ], [ %.sroa.010.1.i, %bb.c ], [ %.sroa.010.231.i, %.lr.ph32.i ], [ %scevgep.i, %.critedge4.i ]
  store ptr %.sroa.010.3.i, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13ObjFileParser13getObjectNameEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(4184) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %.sroa.05.0.copyload = load ptr, ptr %0, align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.04.0.copyload = load ptr, ptr %i.b, align 8 ; 8 uses
  %i.c = getelementptr inbounds i8, ptr %.sroa.04.0.copyload, i64 -1 ; 4 uses
  %i.d = icmp eq ptr %.sroa.05.0.copyload, %.sroa.04.0.copyload
  %i.e = icmp eq ptr %.sroa.05.0.copyload, %i.c
  %.0.i5.i.i = select i1 %i.d, i1 true, i1 %i.e
  br i1 %.0.i5.i.i, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i
  %.sroa.0.06.i.i = phi ptr [ %i.g, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i ], [ %.sroa.05.0.copyload, %bb.a ] ; 8 uses
  %i.f = load i8, ptr %.sroa.0.06.i.i, align 1
  switch i8 %i.f, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i [
    i8 32, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
    i8 9, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
    i8 13, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
    i8 10, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
    i8 0, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
    i8 12, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i:     ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i, i64 1 ; 4 uses
  %i.h = icmp eq ptr %i.g, %.sroa.04.0.copyload
  %i.i = icmp eq ptr %i.g, %i.c
  %.0.i.i.i = select i1 %i.h, i1 true, i1 %i.i
  br i1 %.0.i.i.i, label %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, label %.lr.ph.i.i, !llvm.loop !47

_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %bb.a
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.05.0.copyload, %bb.a ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %.sroa.0.06.i.i, %.lr.ph.i.i ], [ %i.g, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i.i ] ; 4 uses
  %i.j = icmp eq ptr %.sroa.0.0.lcssa.i.i, %.sroa.04.0.copyload
  %i.k = icmp eq ptr %.sroa.0.0.lcssa.i.i, %i.c
  %.0.i6.i.i = select i1 %i.j, i1 true, i1 %i.k
  br i1 %.0.i6.i.i, label %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
  %.sroa.0.07.i.i = phi ptr [ %i.m, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i ], [ %.sroa.0.0.lcssa.i.i, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ] ; 3 uses
  %i.l = load i8, ptr %.sroa.0.07.i.i, align 1
  switch i8 %i.l, label %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i:             ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 1 ; 4 uses
  %i.n = icmp eq ptr %i.m, %.sroa.04.0.copyload
  %i.o = icmp eq ptr %i.m, %i.c
  %.0.i.i9.i = select i1 %i.n, i1 true, i1 %i.o
  br i1 %.0.i.i9.i, label %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit, label %.lr.ph.i8.i, !llvm.loop !24

_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit: ; preds = %.lr.ph.i8.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i
  %.promoted = phi ptr [ %.sroa.0.0.lcssa.i.i, %_ZN6Assimp16getNextDelimiterIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit.i ], [ %.sroa.0.07.i.i, %.lr.ph.i8.i ], [ %i.m, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i.i ] ; 6 uses
  store ptr %.promoted, ptr %0, align 8
  %i.p = icmp eq ptr %.promoted, %.sroa.04.0.copyload
  br i1 %i.p, label %bb.l, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit
  %i.q = phi ptr [ %i.s, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit ], [ %.promoted, %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit ] ; 8 uses
  %i.r = load i8, ptr %i.q, align 1
  switch i8 %i.r, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit [
    i8 32, label %.critedge
    i8 9, label %.critedge
    i8 13, label %.critedge
    i8 10, label %.critedge
    i8 0, label %.critedge
    i8 12, label %.critedge
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit:         ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 3 uses
  store ptr %i.s, ptr %0, align 8
  %.not = icmp eq ptr %i.s, %.sroa.04.0.copyload
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !67

.critedge:                                        ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %.lcssa23.ph = phi ptr [ %.sroa.04.0.copyload, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit ], [ %i.q, %.lr.ph ], [ %i.q, %.lr.ph ], [ %i.q, %.lr.ph ], [ %i.q, %.lr.ph ], [ %i.q, %.lr.ph ], [ %i.q, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.t, ptr %1, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i64 0, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.v = ptrtoint ptr %.lcssa23.ph to i64
  %i.w = ptrtoint ptr %.promoted to i64
  %i.x = sub i64 %i.v, %i.w                       ; 4 uses
  store i64 %i.x, ptr %i.a, align 8
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %.critedge
  %i.z = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.z, ptr %1, align 8
  %i.aa = load i64, ptr %i.a, align 8
  store i64 %i.aa, ptr %i.t, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %.critedge
  %i.ab = phi ptr [ %i.z, %.noexc.i ], [ %i.t, %.critedge ] ; 2 uses
  switch i64 %i.x, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.ac = load i8, ptr %.promoted, align 1
  store i8 %i.ac, ptr %i.ab, align 1
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr nonnull align 1 %.promoted, i64 %i.x, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.ad = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.ad, ptr %i.u, align 8
  %i.ae = load ptr, ptr %1, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ad
  store i8 0, ptr %i.af, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.ag = load i64, ptr %i.u, align 8             ; 3 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  store ptr null, ptr %i.ak, align 8
  %i.al = load ptr, ptr %i.ai, align 8            ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.not2237 = icmp eq ptr %i.an, %i.ap
  br i1 %.not2237, label %.loopexit, label %.lr.ph39

.lr.ph39:                                         ; preds = %bb.e
  %i.aq = load ptr, ptr %1, align 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph39, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread21
  %.sroa.016.038 = phi ptr [ %i.an, %.lr.ph39 ], [ %i.ay, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread21 ] ; 2 uses
  %i.ar = load ptr, ptr %.sroa.016.038, align 8   ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8
  %i.au = icmp eq i64 %i.at, %i.ag
  br i1 %i.au, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread21

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.f
  %i.av = load ptr, ptr %i.ar, align 8
  %bcmp.i = call i32 @bcmp(ptr %i.av, ptr %i.aq, i64 %i.ag)
  %i.aw = icmp eq i32 %bcmp.i, 0
  br i1 %i.aw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread21

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  store ptr %i.ar, ptr %i.ax, align 8
  %.pre = load ptr, ptr %i.ai, align 8
  br label %.loopexit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread21: ; preds = %bb.f, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.016.038, i64 8 ; 2 uses
  %.not22 = icmp eq ptr %i.ay, %i.ap
  br i1 %.not22, label %.loopexit, label %bb.f, !llvm.loop !68

.loopexit:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread21, %bb.e, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.az = phi ptr [ %.pre, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ %i.al, %bb.e ], [ %i.al, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread21 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.loopexit
  invoke void @_ZN6Assimp13ObjFileParser12createObjectERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(4184) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %1, align 8               ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.t
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

bb.i:                                             ; preds = %.loopexit, %bb.g, %bb.d
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.b, align 8 ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %2 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.not.i = icmp ult ptr %.sroa.01.0.copyload, %.sroa.0.0.copyload
  br i1 %.not.i, label %.preheader.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit

.preheader.i:                                     ; preds = %bb.i
  %i.bh = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 -1 ; 2 uses
  %i.bi = icmp eq ptr %.sroa.01.0.copyload, %i.bh
  br i1 %i.bi, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %.sroa.010.021.i = phi ptr [ %i.bk, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.01.0.copyload, %.preheader.i ] ; 6 uses
  %i.bj = load i8, ptr %.sroa.010.021.i, align 1
  switch i8 %i.bj, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 13, label %.critedge.i
    i8 10, label %.critedge.i
    i8 0, label %.critedge.i
    i8 12, label %.critedge.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %.lr.ph.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i, i64 1 ; 4 uses
  %i.bl = icmp eq ptr %i.bk, %.sroa.0.0.copyload
  %i.bm = icmp eq ptr %i.bk, %i.bh
  %.0.i.i = or i1 %i.bl, %i.bm
  br i1 %.0.i.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !9

.critedge.i:                                      ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.preheader.i
  %.sroa.010.0.lcssa.i = phi ptr [ %.sroa.01.0.copyload, %.preheader.i ], [ %i.bk, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ] ; 3 uses
  %.not19.i = icmp eq ptr %.sroa.010.0.lcssa.i, %.sroa.0.0.copyload
  br i1 %.not19.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.critedge.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i, i64 1
  %i.bo = load i32, ptr %i.bg, align 8
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bg, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge.i
  %.sroa.010.1.i = phi ptr [ %i.bn, %bb.j ], [ %.sroa.010.0.lcssa.i, %.critedge.i ] ; 5 uses
  %.not2030.i = icmp eq ptr %.sroa.010.1.i, %.sroa.0.0.copyload
  br i1 %.not2030.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.preheader.i

.lr.ph32.preheader.i:                             ; preds = %bb.k
  %.sroa.010.136.i = ptrtoaddr ptr %.sroa.010.1.i to i64
  %i.bq = sub i64 %2, %.sroa.010.136.i
  %scevgep.i = getelementptr i8, ptr %.sroa.010.1.i, i64 %i.bq
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.critedge4.i, %.lr.ph32.preheader.i
  %.sroa.010.231.i = phi ptr [ %i.bs, %.critedge4.i ], [ %.sroa.010.1.i, %.lr.ph32.preheader.i ] ; 3 uses
  %i.br = load i8, ptr %.sroa.010.231.i, align 1
  switch i8 %i.br, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit [
    i8 9, label %.critedge4.i
    i8 32, label %.critedge4.i
  ]

.critedge4.i:                                     ; preds = %.lr.ph32.i, %.lr.ph32.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i, i64 1 ; 2 uses
  %.not20.i = icmp eq ptr %i.bs, %.sroa.0.0.copyload
  br i1 %.not20.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.i, !llvm.loop !10

_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit: ; preds = %.critedge4.i, %.lr.ph32.i, %bb.k, %bb.i
  %.sroa.010.3.i = phi ptr [ %.sroa.01.0.copyload, %bb.i ], [ %.sroa.010.1.i, %bb.k ], [ %.sroa.010.231.i, %.lr.ph32.i ], [ %scevgep.i, %.critedge4.i ]
  store ptr %.sroa.010.3.i, ptr %0, align 8
  %i.bt = load ptr, ptr %1, align 8               ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.t
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit
  %i.bv = load i64, ptr %i.t, align 8
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.l

bb.l:                                             ; preds = %_ZN6Assimp12getNextTokenIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.h
  %i.bx = load i64, ptr %i.t, align 8
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.by) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %i.bd
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6Assimp13ObjFileParser12copyNextWordEPcm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(4184) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #11 align 2 {
bb.a:
  %.sroa.04.0.copyload = load ptr, ptr %0, align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.03.0.copyload = load ptr, ptr %i.a, align 8 ; 6 uses
  %i.b = getelementptr inbounds i8, ptr %.sroa.03.0.copyload, i64 -1 ; 4 uses
  %i.c = icmp eq ptr %.sroa.04.0.copyload, %.sroa.03.0.copyload
  %i.d = icmp eq ptr %.sroa.04.0.copyload, %i.b
  %.0.i6.i = select i1 %i.c, i1 true, i1 %i.d
  br i1 %.0.i6.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %.sroa.0.07.i = phi ptr [ %i.f, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.04.0.copyload, %bb.a ] ; 3 uses
  %i.e = load i8, ptr %.sroa.0.07.i, align 1
  switch i8 %i.e, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %.lr.ph.i, %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 1 ; 4 uses
  %i.g = icmp eq ptr %i.f, %.sroa.03.0.copyload
  %i.h = icmp eq ptr %i.f, %i.b
  %.0.i.i = select i1 %i.g, i1 true, i1 %i.h
  br i1 %.0.i.i, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit, label %.lr.ph.i, !llvm.loop !24

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit: ; preds = %.lr.ph.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %bb.a
  %.sroa.0.0.lcssa.i = phi ptr [ %.sroa.04.0.copyload, %bb.a ], [ %i.f, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.0.07.i, %.lr.ph.i ] ; 4 uses
  store ptr %.sroa.0.0.lcssa.i, ptr %0, align 8
  %i.i = load i8, ptr %.sroa.0.0.lcssa.i, align 1
  %i.j = icmp eq i8 %i.i, 92
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 2 ; 5 uses
  store ptr %i.k, ptr %0, align 8
  %i.l = icmp eq ptr %i.k, %.sroa.03.0.copyload
  %i.m = icmp eq ptr %i.k, %i.b
  %.0.i6.i14 = select i1 %i.l, i1 true, i1 %i.m
  br i1 %.0.i6.i14, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %bb.b, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17
  %.sroa.0.07.i16 = phi ptr [ %i.o, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17 ], [ %i.k, %bb.b ] ; 3 uses
  %i.n = load i8, ptr %.sroa.0.07.i16, align 1
  switch i8 %i.n, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20 [
    i8 32, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17
    i8 9, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i17:             ; preds = %.lr.ph.i15, %.lr.ph.i15
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i16, i64 1 ; 4 uses
  %i.p = icmp eq ptr %i.o, %.sroa.03.0.copyload
  %i.q = icmp eq ptr %i.o, %i.b
  %.0.i.i18 = select i1 %i.p, i1 true, i1 %i.q
  br i1 %.0.i.i18, label %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20, label %.lr.ph.i15, !llvm.loop !24

_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20: ; preds = %.lr.ph.i15, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17, %bb.b
  %.sroa.0.0.lcssa.i19 = phi ptr [ %i.k, %bb.b ], [ %i.o, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i17 ], [ %.sroa.0.07.i16, %.lr.ph.i15 ] ; 2 uses
  store ptr %.sroa.0.0.lcssa.i19, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit
  %i.r = phi ptr [ %.sroa.0.0.lcssa.i19, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit20 ], [ %.sroa.0.0.lcssa.i, %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit ] ; 2 uses
  %.not22 = icmp eq ptr %i.r, %.sroa.03.0.copyload
  br i1 %.not22, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.s = add i64 %2, -2
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %i.t = phi ptr [ %i.r, %.lr.ph ], [ %i.z, %bb.e ]
  %.023 = phi i64 [ 0, %.lr.ph ], [ %i.w, %bb.e ] ; 9 uses
  %i.u = load i8, ptr %i.t, align 1               ; 2 uses
  switch i8 %i.u, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit [
    i8 32, label %.critedge
    i8 9, label %.critedge
    i8 13, label %.critedge
    i8 10, label %.critedge
    i8 0, label %.critedge
    i8 12, label %.critedge
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit:         ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.023
  store i8 %i.u, ptr %i.v, align 1
  %i.w = add i64 %.023, 1                         ; 3 uses
  %i.x = icmp eq i64 %.023, %i.s
  br i1 %i.x, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit
  %i.y = load ptr, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 3 uses
  store ptr %i.z, ptr %0, align 8
  %i.aa = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.z, %i.aa
  br i1 %.not, label %.critedge, label %bb.d, !llvm.loop !25

.critedge:                                        ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit, %bb.e, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.c
  %.1 = phi i64 [ 0, %bb.c ], [ %i.w, %bb.e ], [ %.023, %bb.d ], [ %.023, %bb.d ], [ %.023, %bb.d ], [ %.023, %bb.d ], [ %.023, %bb.d ], [ %.023, %bb.d ], [ %i.w, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.1
  store i8 0, ptr %i.ab, align 1
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  store ptr %1, ptr %i.a, align 8
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %2, align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #28
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
end_hunk_8
begin_hunk_9_@_ZN6Assimp13ObjFileParser10getVector2ERSt6vectorI10aiVector2tIfESaIS3_EE:bb.a

.lr.ph.i14:                                       ; preds = %bb.f, %bb.g
  %i.bd = phi ptr [ %i.bq, %bb.g ], [ %i.bc, %bb.f ] ; 4 uses
  %.023.i15 = phi i64 [ %i.bp, %bb.g ], [ 0, %bb.f ] ; 10 uses
  %i.be = load i8, ptr %i.bd, align 1             ; 2 uses
  switch i8 %i.be, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i17 [
    i8 32, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit26
    i8 9, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit26
    i8 13, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit26
    i8 10, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit26
    i8 0, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit26
    i8 12, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit26
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i17:     ; preds = %.lr.ph.i14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 %.023.i15
  store i8 %i.be, ptr %i.bf, align 1
  %i.bg = add nuw nsw i64 %.023.i15, 1            ; 8 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 1 ; 3 uses
  store ptr %i.bh, ptr %0, align 8
  %.not.i18 = icmp eq ptr %i.bh, %.sroa.03.0.copyload.i5
  br i1 %.not.i18, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit26, label %.lr.ph.i14.1

.lr.ph.i14.1:                                     ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i17
  %i.bi = load i8, ptr %i.bh, align 1             ; 2 uses
  switch i8 %i.bi, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i17.1 [
    i8 32, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit26
    i8 9, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit26
    i8 13, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit26
    i8 10, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit26
    i8 0, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit26
    i8 12, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit26
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i17.1:   ; preds = %.lr.ph.i14.1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bg
  store i8 %i.bi, ptr %i.bj, align 1
  %i.bk = add nuw nsw i64 %.023.i15, 2            ; 9 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 2 ; 3 uses
  store ptr %i.bl, ptr %0, align 8
  %.not.i18.1 = icmp eq ptr %i.bl, %.sroa.03.0.copyload.i5
  br i1 %.not.i18.1, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit26, label %.lr.ph.i14.2

.lr.ph.i14.2:                                     ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i17.1
  %i.bm = load i8, ptr %i.bl, align 1             ; 2 uses
  switch i8 %i.bm, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i17.2 [
    i8 32, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit26
    i8 9, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit26
    i8 13, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit26
    i8 10, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit26
    i8 0, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit26
    i8 12, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit26
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i17.2:   ; preds = %.lr.ph.i14.2
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bk
  store i8 %i.bm, ptr %i.bn, align 1
  %i.bo = icmp eq i64 %i.bk, 4094
  br i1 %i.bo, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit26, label %bb.g

bb.g:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i17.2
  %i.bp = add nuw nsw i64 %.023.i15, 3            ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 3 ; 3 uses
  store ptr %i.bq, ptr %0, align 8
  %.not.i18.2 = icmp eq ptr %i.bq, %.sroa.03.0.copyload.i5
  br i1 %.not.i18.2, label %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit26, label %.lr.ph.i14, !llvm.loop !25

_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit26: ; preds = %.lr.ph.i14, %.lr.ph.i14, %.lr.ph.i14, %.lr.ph.i14, %.lr.ph.i14, %.lr.ph.i14, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i17, %.lr.ph.i14.1, %.lr.ph.i14.1, %.lr.ph.i14.1, %.lr.ph.i14.1, %.lr.ph.i14.1, %.lr.ph.i14.1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i17.1, %.lr.ph.i14.2, %.lr.ph.i14.2, %.lr.ph.i14.2, %.lr.ph.i14.2, %.lr.ph.i14.2, %.lr.ph.i14.2, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i17.2, %bb.g, %bb.f
  %.1.i16 = phi i64 [ 0, %bb.f ], [ %i.bp, %bb.g ], [ %.023.i15, %.lr.ph.i14 ], [ %.023.i15, %.lr.ph.i14 ], [ %.023.i15, %.lr.ph.i14 ], [ %.023.i15, %.lr.ph.i14 ], [ %.023.i15, %.lr.ph.i14 ], [ %.023.i15, %.lr.ph.i14 ], [ %i.bg, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i17 ], [ %i.bg, %.lr.ph.i14.1 ], [ %i.bg, %.lr.ph.i14.1 ], [ %i.bg, %.lr.ph.i14.1 ], [ %i.bg, %.lr.ph.i14.1 ], [ %i.bg, %.lr.ph.i14.1 ], [ %i.bg, %.lr.ph.i14.1 ], [ 4095, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i17.2 ], [ %i.bk, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i17.1 ], [ %i.bk, %.lr.ph.i14.2 ], [ %i.bk, %.lr.ph.i14.2 ], [ %i.bk, %.lr.ph.i14.2 ], [ %i.bk, %.lr.ph.i14.2 ], [ %i.bk, %.lr.ph.i14.2 ], [ %i.bk, %.lr.ph.i14.2 ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 %.1.i16
  store i8 0, ptr %i.br, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store float 0.000000e+00, ptr %i.a, align 4
  %i.bs = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i1 noundef zeroext true) ; 0 uses
  %i.bt = load float, ptr %i.a, align 4           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bv = load ptr, ptr %i.bu, align 8            ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8
  %.not.i27 = icmp eq ptr %i.bv, %i.bx
  br i1 %.not.i27, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit26
  store float %i.al, ptr %i.bv, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store float %i.bt, ptr %i.by, align 4
  %i.bz = load ptr, ptr %i.bu, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.ca, ptr %i.bu, align 8
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE12emplace_backIJRfS5_EEERS1_DpOT_.exit

bb.i:                                             ; preds = %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit26
  %i.cb = load ptr, ptr %1, align 8               ; 7 uses
  %i.cc = ptrtoint ptr %i.bv to i64               ; 2 uses
  %i.cd = ptrtoint ptr %i.cb to i64               ; 3 uses
  %i.ce = sub i64 %i.cc, %i.cd                    ; 4 uses
  %i.cf = icmp eq i64 %i.ce, 9223372036854775800
  br i1 %i.cf, label %bb.j, label %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #32
  unreachable

_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.cg = ashr exact i64 %i.ce, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cg, i64 1)
  %i.ch = add nsw i64 %.sroa.speculated.i.i.i, %i.cg ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.cg
  %i.cj = call i64 @llvm.umin.i64(i64 %i.ch, i64 1152921504606846975)
  %i.ck = select i1 %i.ci, i64 1152921504606846975, i64 %i.cj ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ck, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cl = shl nuw nsw i64 %i.ck, 3
  %i.cm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #30 ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ce ; 2 uses
  store float %i.al, ptr %i.cn, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  store float %i.bt, ptr %i.co, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.cb, %i.bv
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.cp = ptrtoaddr ptr %i.cm to i64
  %i.cq = sub i64 %i.cc, %i.cd
  %i.cr = add i64 %i.cq, -8                       ; 2 uses
  %i.cs = lshr i64 %i.cr, 3
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cr, 72
  %i.cu = sub i64 %i.cd, %i.cp
  %diff.check = icmp ugt i64 %i.cu, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader55, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ct, 4611686018427387900     ; 3 uses
  %i.cv = shl i64 %n.vec, 3                       ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cm, i64 %i.cv  ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cb, i64 %i.cv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cy = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cm, i64 %i.cy ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.cb, i64 %i.cy ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.cz = getelementptr i8, ptr %next.gep52, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep52, align 4, !alias.scope !72, !noalias !69
  %wide.load53 = load <2 x i64>, ptr %i.cz, align 4, !alias.scope !72, !noalias !69
  %i.da = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !69, !noalias !72
  store <2 x i64> %wide.load53, ptr %i.da, align 4, !alias.scope !69, !noalias !72
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ct, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader55

.lr.ph.i.i.i.i.i.preheader55:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cw, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cx, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader55, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader55 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader55 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.dc = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !72, !noalias !69
  store i64 %i.dc, ptr %.012.i.i.i.i.i, align 4, !alias.scope !69, !noalias !72
  %i.dd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dd, %i.bv
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !77

_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cm, %_ZNKSt6vectorI10aiVector2tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cw, %middle.block ], [ %i.de, %.lr.ph.i.i.i.i.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i34.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRfS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.ce) #29
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRfS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRfS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.cm, ptr %1, align 8
  store ptr %i.df, ptr %i.bu, align 8
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ck
  store ptr %i.dg, ptr %i.bw, align 8
  br label %_ZNSt6vectorI10aiVector2tIfESaIS1_EE12emplace_backIJRfS5_EEERS1_DpOT_.exit

_ZNSt6vectorI10aiVector2tIfESaIS1_EE12emplace_backIJRfS5_EEERS1_DpOT_.exit: ; preds = %bb.h, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE17_M_realloc_insertIJRfS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8 ; 7 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %2 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.not.i28 = icmp ult ptr %.sroa.01.0.copyload, %.sroa.0.0.copyload
  br i1 %.not.i28, label %.preheader.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit

.preheader.i:                                     ; preds = %_ZNSt6vectorI10aiVector2tIfESaIS1_EE12emplace_backIJRfS5_EEERS1_DpOT_.exit
  %i.di = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 -1 ; 2 uses
  %i.dj = icmp eq ptr %.sroa.01.0.copyload, %i.di
  br i1 %i.dj, label %.critedge.i, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.preheader.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %.sroa.010.021.i = phi ptr [ %i.dl, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.01.0.copyload, %.preheader.i ] ; 6 uses
  %i.dk = load i8, ptr %.sroa.010.021.i, align 1
  switch i8 %i.dk, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 13, label %.critedge.i
    i8 10, label %.critedge.i
    i8 0, label %.critedge.i
    i8 12, label %.critedge.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %.lr.ph.i29
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i, i64 1 ; 4 uses
  %i.dm = icmp eq ptr %i.dl, %.sroa.0.0.copyload
  %i.dn = icmp eq ptr %i.dl, %i.di
  %.0.i.i = or i1 %i.dm, %i.dn
  br i1 %.0.i.i, label %.critedge.i, label %.lr.ph.i29, !llvm.loop !9

.critedge.i:                                      ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %.lr.ph.i29, %.lr.ph.i29, %.lr.ph.i29, %.lr.ph.i29, %.preheader.i
  %.sroa.010.0.lcssa.i = phi ptr [ %.sroa.01.0.copyload, %.preheader.i ], [ %i.dl, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.010.021.i, %.lr.ph.i29 ], [ %.sroa.010.021.i, %.lr.ph.i29 ], [ %.sroa.010.021.i, %.lr.ph.i29 ], [ %.sroa.010.021.i, %.lr.ph.i29 ] ; 3 uses
  %.not19.i = icmp eq ptr %.sroa.010.0.lcssa.i, %.sroa.0.0.copyload
  br i1 %.not19.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.critedge.i
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i, i64 1
  %i.dp = load i32, ptr %i.dh, align 8
  %i.dq = add i32 %i.dp, 1
  store i32 %i.dq, ptr %i.dh, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.critedge.i
  %.sroa.010.1.i = phi ptr [ %i.do, %bb.l ], [ %.sroa.010.0.lcssa.i, %.critedge.i ] ; 5 uses
  %.not2030.i = icmp eq ptr %.sroa.010.1.i, %.sroa.0.0.copyload
  br i1 %.not2030.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.preheader.i

.lr.ph32.preheader.i:                             ; preds = %bb.m
  %.sroa.010.136.i = ptrtoaddr ptr %.sroa.010.1.i to i64
  %i.dr = sub i64 %2, %.sroa.010.136.i
  %scevgep.i = getelementptr i8, ptr %.sroa.010.1.i, i64 %i.dr
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.critedge4.i, %.lr.ph32.preheader.i
  %.sroa.010.231.i = phi ptr [ %i.dt, %.critedge4.i ], [ %.sroa.010.1.i, %.lr.ph32.preheader.i ] ; 3 uses
  %i.ds = load i8, ptr %.sroa.010.231.i, align 1
  switch i8 %i.ds, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit [
    i8 9, label %.critedge4.i
    i8 32, label %.critedge4.i
  ]

.critedge4.i:                                     ; preds = %.lr.ph32.i, %.lr.ph32.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i, i64 1 ; 2 uses
  %.not20.i = icmp eq ptr %i.dt, %.sroa.0.0.copyload
  br i1 %.not20.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.i, !llvm.loop !10

_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit: ; preds = %.lr.ph32.i, %.critedge4.i, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE12emplace_backIJRfS5_EEERS1_DpOT_.exit, %bb.m
  %.sroa.010.3.i = phi ptr [ %.sroa.01.0.copyload, %_ZNSt6vectorI10aiVector2tIfESaIS1_EE12emplace_backIJRfS5_EEERS1_DpOT_.exit ], [ %.sroa.010.1.i, %bb.m ], [ %.sroa.010.231.i, %.lr.ph32.i ], [ %scevgep.i, %.critedge4.i ]
  store ptr %.sroa.010.3.i, ptr %0, align 8
  ret void
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #14

declare void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13ObjFileParser22reportErrorTokenInFaceEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(4184) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %1 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.not.i = icmp ult ptr %.sroa.01.0.copyload, %.sroa.0.0.copyload
  br i1 %.not.i, label %.preheader.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit

.preheader.i:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 -1 ; 2 uses
  %i.d = icmp eq ptr %.sroa.01.0.copyload, %i.c
  br i1 %i.d, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %.sroa.010.021.i = phi ptr [ %i.f, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.01.0.copyload, %.preheader.i ] ; 6 uses
  %i.e = load i8, ptr %.sroa.010.021.i, align 1
  switch i8 %i.e, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 13, label %.critedge.i
    i8 10, label %.critedge.i
    i8 0, label %.critedge.i
    i8 12, label %.critedge.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i, i64 1 ; 4 uses
  %i.g = icmp eq ptr %i.f, %.sroa.0.0.copyload
  %i.h = icmp eq ptr %i.f, %i.c
  %.0.i.i = or i1 %i.g, %i.h
  br i1 %.0.i.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !9

.critedge.i:                                      ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.preheader.i
  %.sroa.010.0.lcssa.i = phi ptr [ %.sroa.01.0.copyload, %.preheader.i ], [ %i.f, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ], [ %.sroa.010.021.i, %.lr.ph.i ] ; 3 uses
  %.not19.i = icmp eq ptr %.sroa.010.0.lcssa.i, %.sroa.0.0.copyload
  br i1 %.not19.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.critedge.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i, i64 1
  %i.j = load i32, ptr %i.b, align 8
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge.i
  %.sroa.010.1.i = phi ptr [ %i.i, %bb.b ], [ %.sroa.010.0.lcssa.i, %.critedge.i ] ; 5 uses
  %.not2030.i = icmp eq ptr %.sroa.010.1.i, %.sroa.0.0.copyload
  br i1 %.not2030.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.preheader.i

.lr.ph32.preheader.i:                             ; preds = %bb.c
  %.sroa.010.136.i = ptrtoaddr ptr %.sroa.010.1.i to i64
  %i.l = sub i64 %1, %.sroa.010.136.i
  %scevgep.i = getelementptr i8, ptr %.sroa.010.1.i, i64 %i.l
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.critedge4.i, %.lr.ph32.preheader.i
  %.sroa.010.231.i = phi ptr [ %i.n, %.critedge4.i ], [ %.sroa.010.1.i, %.lr.ph32.preheader.i ] ; 3 uses
  %i.m = load i8, ptr %.sroa.010.231.i, align 1
  switch i8 %i.m, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit [
    i8 9, label %.critedge4.i
    i8 32, label %.critedge4.i
  ]

.critedge4.i:                                     ; preds = %.lr.ph32.i, %.lr.ph32.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i, i64 1 ; 2 uses
  %.not20.i = icmp eq ptr %i.n, %.sroa.0.0.copyload
  br i1 %.not20.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.i, !llvm.loop !10

_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit: ; preds = %.lr.ph32.i, %.critedge4.i, %bb.a, %bb.c
  %.sroa.010.3.i = phi ptr [ %.sroa.01.0.copyload, %bb.a ], [ %.sroa.010.1.i, %bb.c ], [ %.sroa.010.231.i, %.lr.ph32.i ], [ %scevgep.i, %.critedge4.i ]
  store ptr %.sroa.010.3.i, ptr %0, align 8
  %i.o = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.o, ptr noundef nonnull @.str.20)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp7ObjFile4FaceD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIjSaIjEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit2

_ZNSt6vectorIjSaIjEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIjSaIjEED2Ev.exit4, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit4

_ZNSt6vectorIjSaIjEED2Ev.exit4:                   ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit2, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp13ObjFileParser12createObjectERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4184) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #30 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.d, align 8
  store i8 0, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store float 1.000000e+00, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, i8 0, i64 48, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store ptr %i.b, ptr %i.o, align 8
  %i.p = load ptr, ptr %i.m, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load ptr, ptr %i.q, align 8
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.s = load ptr, ptr %i.m, align 8              ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 56 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 48 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %.not.i = icmp eq ptr %i.w, %i.y
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = load ptr, ptr %i.u, align 8
  store ptr %i.z, ptr %i.w, align 8
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ab, ptr %i.v, align 8
  br label %_ZNSt6vectorIPN6Assimp7ObjFile6ObjectESaIS3_EE9push_backERKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.ac = load ptr, ptr %i.t, align 8             ; 4 uses
  %i.ad = ptrtoint ptr %i.w to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 6 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775800
  br i1 %i.ag, label %bb.d, label %_ZNKSt6vectorIPN6Assimp7ObjFile6ObjectESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #32
  unreachable

_ZNKSt6vectorIPN6Assimp7ObjFile6ObjectESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.ah = ashr exact i64 %i.af, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 1152921504606846975)
  %i.al = select i1 %i.aj, i64 1152921504606846975, i64 %i.ak ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.al, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #30 ; 4 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %i.af ; 2 uses
  %i.ap = load ptr, ptr %i.u, align 8
  store ptr %i.ap, ptr %i.ao, align 8
  %i.aq = icmp sgt i64 %i.af, 0
  br i1 %i.aq, label %bb.e, label %_ZNSt6vectorIPN6Assimp7ObjFile6ObjectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPN6Assimp7ObjFile6ObjectESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr align 8 %i.ac, i64 %i.af, i1 false)
  br label %_ZNSt6vectorIPN6Assimp7ObjFile6ObjectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN6Assimp7ObjFile6ObjectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPN6Assimp7ObjFile6ObjectESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6Assimp7ObjFile6ObjectESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN6Assimp7ObjFile6ObjectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.af) #29
  br label %_ZNSt6vectorIPN6Assimp7ObjFile6ObjectESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN6Assimp7ObjFile6ObjectESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPN6Assimp7ObjFile6ObjectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.an, ptr %i.t, align 8
  store ptr %i.ar, ptr %i.v, align 8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.al
  store ptr %i.as, ptr %i.x, align 8
  br label %_ZNSt6vectorIPN6Assimp7ObjFile6ObjectESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPN6Assimp7ObjFile6ObjectESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.b, %_ZNSt6vectorIPN6Assimp7ObjFile6ObjectESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  tail call void @_ZN6Assimp13ObjFileParser10createMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(4184) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.at = load ptr, ptr %i.m, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not = icmp eq ptr %i.av, null
  br i1 %.not, label %bb.m, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN6Assimp7ObjFile6ObjectESaIS3_EE9push_backERKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.ax, ptr %2, align 8
  %i.ay = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.ay, ptr %i.a, align 8
  %i.az = icmp ugt i64 %i.ay, 15
  br i1 %i.az, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.g
  %i.ba = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ba, ptr %2, align 8
end_hunk_9
begin_hunk_10_@_ZN6Assimp13ObjFileParser14getNewMaterialEv:bb.a
  %i.az = sub i64 %i.au, %i.ar
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.az, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ay, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ba = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.ba, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.ba, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.g, !llvm.loop !3

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.bb = icmp eq ptr %.19.i.i.i, %i.aq
  br i1 %i.bb, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp7ObjFile8MaterialESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.bd = load i64, ptr %i.bc, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bd, i64 %i.ar) ; 2 uses
  %i.be = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.be, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call i32 @memcmp(ptr noundef %i.as, ptr noundef %i.bg, i64 noundef %.sroa.speculated.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp7ObjFile8MaterialESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.h
  %i.bi = sub i64 %i.ar, %i.bd
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bi, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp7ObjFile8MaterialESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp7ObjFile8MaterialESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.bh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.bj = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.bj, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp7ObjFile8MaterialESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread, label %bb.l

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp7ObjFile8MaterialESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp7ObjFile8MaterialEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPSt13_Rb_tree_nodeISC_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %.critedge, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp7ObjFile8MaterialESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit
  %i.bk = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp7ObjFile8MaterialESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread
  invoke void @_ZN6Assimp6Logger4warnIJRA38_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.bk, ptr noundef nonnull align 1 dereferenceable(38) @.str.18, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bl = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  store ptr %i.bn, ptr %i.bo, align 8
  br label %bb.r

bb.k:                                             ; preds = %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, %bb.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp7ObjFile8MaterialESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.thread
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %i.bq = load ptr, ptr %1, align 8               ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.y
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

bb.l:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp7ObjFile8MaterialESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.an, i64 296
  %i.bt = load ptr, ptr %i.bs, align 8            ; 4 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = icmp eq i64 %i.ar, 0
  br i1 %i.bv, label %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.bx = getelementptr inbounds nuw i8, ptr %i.an, i64 88
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  %i.bz = load ptr, ptr %i.bw, align 8            ; 3 uses
  %.not.i.i = icmp eq ptr %i.by, %i.bz
  br i1 %.not.i.i, label %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i19

.lr.ph.i.i19:                                     ; preds = %.preheader.i.i
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = ashr exact i64 %i.cc, 5
  br label %bb.n

bb.n:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, %.lr.ph.i.i19
  %.012.i.i = phi i64 [ 0, %.lr.ph.i.i19 ], [ %i.cl, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %i.bz, i64 %.012.i.i ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = icmp eq i64 %i.ar, %i.cg
  br i1 %i.ch, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i: ; preds = %bb.n
  %i.ci = load ptr, ptr %i.ce, align 8
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.as, ptr %i.ci, i64 %i.ar)
  %i.cj = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.cj, label %bb.o, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i

bb.o:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i
  %i.ck = trunc i64 %.012.i.i to i32
  br label %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i, %bb.n
  %i.cl = add nuw i64 %.012.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cl, %i.cd
  br i1 %exitcond.not.i.i, label %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.n, !llvm.loop !53

_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, %bb.o, %.preheader.i.i, %bb.m
  %.010.i.i = phi i32 [ -1, %bb.m ], [ %i.ck, %bb.o ], [ -1, %.preheader.i.i ], [ -1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bt, i64 100
  %i.cn = load i32, ptr %i.cm, align 4            ; 2 uses
  %.not.i = icmp eq i32 %i.cn, -1
  %.not8.i = icmp eq i32 %i.cn, %.010.i.i
  %or.cond.i20 = or i1 %.not.i, %.not8.i
  br i1 %or.cond.i20, label %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread35, label %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8
  %.not37 = icmp eq ptr %i.cp, %i.cr
  br i1 %.not37, label %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread35, label %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %bb.l, %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  invoke void @_ZN6Assimp13ObjFileParser10createMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(4184) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread._ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread35_crit_edge unwind label %bb.k

_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread._ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread35_crit_edge: ; preds = %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %.pre = load i64, ptr %i.af, align 8
  %.pre44.pre = load ptr, ptr %i.am, align 8
  br label %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread35

_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread35: ; preds = %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread._ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread35_crit_edge, %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.pre44 = phi ptr [ %.pre44.pre, %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread._ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread35_crit_edge ], [ %i.an, %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ %i.an, %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 3 uses
  %i.cs = phi i64 [ %.pre, %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread._ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread35_crit_edge ], [ %i.ar, %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ %i.ar, %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 3 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread35
  %i.cu = getelementptr inbounds nuw i8, ptr %.pre44, i64 80
  %i.cv = getelementptr inbounds nuw i8, ptr %.pre44, i64 88
  %i.cw = load ptr, ptr %i.cv, align 8            ; 2 uses
  %i.cx = load ptr, ptr %i.cu, align 8            ; 3 uses
  %.not.i21 = icmp eq ptr %i.cw, %i.cx
  br i1 %.not.i21, label %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %.preheader.i
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = ashr exact i64 %i.da, 5
  %i.dc = load ptr, ptr %1, align 8
  br label %bb.p

bb.p:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %.lr.ph.i22
  %.012.i = phi i64 [ 0, %.lr.ph.i22 ], [ %i.dk, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [32 x i8], ptr %i.cx, i64 %.012.i ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = icmp eq i64 %i.cs, %i.df
  br i1 %i.dg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.p
  %i.dh = load ptr, ptr %i.dd, align 8
  %bcmp.i.i = call i32 @bcmp(ptr %i.dc, ptr %i.dh, i64 %i.cs)
  %i.di = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.di, label %bb.q, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i

bb.q:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.dj = trunc i64 %.012.i to i32
  br label %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.p
  %i.dk = add nuw i64 %.012.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dk, %i.db
  br i1 %exitcond.not.i, label %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.p, !llvm.loop !53

_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread35, %.preheader.i, %bb.q
  %.010.i = phi i32 [ -1, %_ZN6Assimp13ObjFileParser12needsNewMeshERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread35 ], [ %i.dj, %bb.q ], [ -1, %.preheader.i ], [ -1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.pre44, i64 296
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 100
  store i32 %.010.i, ptr %i.dn, align 4
  br label %bb.r

bb.r:                                             ; preds = %_ZN6Assimp13ObjFileParser16getMaterialIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.j
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8 ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.b, align 8 ; 7 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %2 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.not.i23 = icmp ult ptr %.sroa.01.0.copyload, %.sroa.0.0.copyload
  br i1 %.not.i23, label %.preheader.i24, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit

.preheader.i24:                                   ; preds = %bb.r
  %i.dp = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 -1 ; 2 uses
  %i.dq = icmp eq ptr %.sroa.01.0.copyload, %i.dp
  br i1 %i.dq, label %.critedge.i, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.preheader.i24, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i26
  %.sroa.010.021.i = phi ptr [ %i.ds, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i26 ], [ %.sroa.01.0.copyload, %.preheader.i24 ] ; 6 uses
  %i.dr = load i8, ptr %.sroa.010.021.i, align 1
  switch i8 %i.dr, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i26 [
    i8 13, label %.critedge.i
    i8 10, label %.critedge.i
    i8 0, label %.critedge.i
    i8 12, label %.critedge.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i26:             ; preds = %.lr.ph.i25
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.010.021.i, i64 1 ; 4 uses
  %i.dt = icmp eq ptr %i.ds, %.sroa.0.0.copyload
  %i.du = icmp eq ptr %i.ds, %i.dp
  %.0.i.i27 = or i1 %i.dt, %i.du
  br i1 %.0.i.i27, label %.critedge.i, label %.lr.ph.i25, !llvm.loop !9

.critedge.i:                                      ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i26, %.lr.ph.i25, %.lr.ph.i25, %.lr.ph.i25, %.lr.ph.i25, %.preheader.i24
  %.sroa.010.0.lcssa.i = phi ptr [ %.sroa.01.0.copyload, %.preheader.i24 ], [ %i.ds, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i26 ], [ %.sroa.010.021.i, %.lr.ph.i25 ], [ %.sroa.010.021.i, %.lr.ph.i25 ], [ %.sroa.010.021.i, %.lr.ph.i25 ], [ %.sroa.010.021.i, %.lr.ph.i25 ] ; 3 uses
  %.not19.i = icmp eq ptr %.sroa.010.0.lcssa.i, %.sroa.0.0.copyload
  br i1 %.not19.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge.i
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.010.0.lcssa.i, i64 1
  %i.dw = load i32, ptr %i.do, align 8
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.do, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.critedge.i
  %.sroa.010.1.i = phi ptr [ %i.dv, %bb.s ], [ %.sroa.010.0.lcssa.i, %.critedge.i ] ; 5 uses
  %.not2030.i = icmp eq ptr %.sroa.010.1.i, %.sroa.0.0.copyload
  br i1 %.not2030.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.preheader.i

.lr.ph32.preheader.i:                             ; preds = %bb.t
  %.sroa.010.136.i = ptrtoaddr ptr %.sroa.010.1.i to i64
  %i.dy = sub i64 %2, %.sroa.010.136.i
  %scevgep.i = getelementptr i8, ptr %.sroa.010.1.i, i64 %i.dy
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.critedge4.i, %.lr.ph32.preheader.i
  %.sroa.010.231.i = phi ptr [ %i.ea, %.critedge4.i ], [ %.sroa.010.1.i, %.lr.ph32.preheader.i ] ; 3 uses
  %i.dz = load i8, ptr %.sroa.010.231.i, align 1
  switch i8 %i.dz, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit [
    i8 9, label %.critedge4.i
    i8 32, label %.critedge4.i
  ]

.critedge4.i:                                     ; preds = %.lr.ph32.i, %.lr.ph32.i
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.010.231.i, i64 1 ; 2 uses
  %.not20.i = icmp eq ptr %i.ea, %.sroa.0.0.copyload
  br i1 %.not20.i, label %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, label %.lr.ph32.i, !llvm.loop !10

_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit: ; preds = %.critedge4.i, %.lr.ph32.i, %bb.t, %bb.r
  %.sroa.010.3.i = phi ptr [ %.sroa.01.0.copyload, %bb.r ], [ %.sroa.010.1.i, %bb.t ], [ %.sroa.010.231.i, %.lr.ph32.i ], [ %scevgep.i, %.critedge4.i ]
  store ptr %.sroa.010.3.i, ptr %0, align 8
  %i.eb = load ptr, ptr %1, align 8               ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.y
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit
  %i.ed = load i64, ptr %i.y, align 8
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp8skipLineIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_Rj.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.u

bb.u:                                             ; preds = %_ZN6Assimp11getNextWordIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.k
  %i.ef = load i64, ptr %i.y, align 8
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.eg) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %i.bp
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4warnIJRA38_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(38) %1) #28
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 1 dereferenceable(38) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA38_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4) #28
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA38_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA38_cEERKT_.exit
  %i.d = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %3, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %4, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %4, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #28
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA38_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %3, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden ptr @_ZN6Assimp7getNameIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_RNSt7__cxx1112basic_stringIcSt11char_traitsIcES5_EE(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = ptrtoaddr ptr %0 to i64
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.c, ptr noundef nonnull @.str.28, i64 noundef 0) ; 0 uses
  %i.e = icmp eq ptr %0, %1
  %i.f = getelementptr inbounds i8, ptr %1, i64 -1 ; 2 uses
  %i.g = icmp eq ptr %0, %i.f
  %.0.i = select i1 %i.e, i1 true, i1 %i.g
  br i1 %.0.i, label %bb.i, label %.preheader26

.preheader26:                                     ; preds = %bb.a, %_ZN6Assimp9IsLineEndIcEEbT_.exit
  %.sroa.018.027 = phi ptr [ %i.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ %0, %bb.a ] ; 6 uses
  %i.h = load i8, ptr %.sroa.018.027, align 1
  switch i8 %i.h, label %_ZN6Assimp9IsLineEndIcEEbT_.exit [
    i8 13, label %.critedge
    i8 10, label %.critedge
    i8 0, label %.critedge
    i8 12, label %.critedge
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit:                 ; preds = %.preheader26
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.018.027, i64 1 ; 4 uses
  %i.j = icmp eq ptr %i.i, %1
  %i.k = icmp eq ptr %i.i, %i.f
  %.0.i13 = select i1 %i.j, i1 true, i1 %i.k
  br i1 %.0.i13, label %.critedge, label %.preheader26, !llvm.loop !88

.critedge:                                        ; preds = %.preheader26, %.preheader26, %.preheader26, %.preheader26, %_ZN6Assimp9IsLineEndIcEEbT_.exit
  %.sroa.018.0.lcssa = phi ptr [ %.sroa.018.027, %.preheader26 ], [ %.sroa.018.027, %.preheader26 ], [ %.sroa.018.027, %.preheader26 ], [ %.sroa.018.027, %.preheader26 ], [ %i.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit ] ; 3 uses
  %.sroa.018.0.lcssa28 = ptrtoaddr ptr %.sroa.018.0.lcssa to i64 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.critedge
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %.sroa.018.0.lcssa28, %.critedge ] ; 2 uses
  %.sroa.018.1 = phi ptr [ %i.s, %bb.c ], [ %.sroa.018.0.lcssa, %.critedge ] ; 2 uses
  %i.l = load i8, ptr %.sroa.018.1, align 1
  switch i8 %i.l, label %.preheader.preheader [
    i8 32, label %bb.c
    i8 9, label %bb.c
  ]

.preheader.preheader:                             ; preds = %bb.b
  %i.m = sub i64 0, %.sroa.018.0.lcssa28
  %scevgep = getelementptr i8, ptr %.sroa.018.0.lcssa, i64 %i.m
  %umax = tail call i64 @llvm.umax.i64(i64 %3, i64 %indvars.iv)
  %scevgep29 = getelementptr i8, ptr %scevgep, i64 %umax ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.n, ptr %4, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %5 = ptrtoint ptr %scevgep29 to i64
  %i.p = ptrtoint ptr %0 to i64
  %i.q = sub i64 %5, %i.p                         ; 4 uses
  store i64 %i.q, ptr %i.a, align 8
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %.noexc.i, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.s = getelementptr inbounds i8, ptr %.sroa.018.1, i64 -1
  %indvars.iv.next = add i64 %indvars.iv, -1
  br label %bb.b, !llvm.loop !89

.noexc.i:                                         ; preds = %.preheader.preheader
  %i.t = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.t, ptr %4, align 8
  %i.u = load i64, ptr %i.a, align 8
  store i64 %i.u, ptr %i.n, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %.preheader.preheader
  %i.v = phi ptr [ %i.t, %.noexc.i ], [ %i.n, %.preheader.preheader ] ; 2 uses
  switch i64 %i.q, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.w = load i8, ptr %0, align 1
  store i8 %i.w, ptr %i.v, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr nonnull align 1 %0, i64 %i.q, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.x = load i64, ptr %i.a, align 8              ; 2 uses
  store i64 %i.x, ptr %i.o, align 8
  %i.y = load ptr, ptr %4, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store i8 0, ptr %i.z, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.aa = load i64, ptr %i.o, align 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %4, align 8               ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.n
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.af = load i64, ptr %i.n, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.g, %bb.f
  %i.ah = load ptr, ptr %4, align 8               ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.n
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.aj = load i64, ptr %i.n, align 8
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %i.ac

bb.i:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %.sroa.09.0 = phi ptr [ %scevgep29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ], [ %1, %bb.a ]
  ret ptr %.sroa.09.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIjSaIjEESt4lessIS5_ESaISt4pairIKS5_S9_EEEixERSD_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.86", align 8     ; 4 uses
  %3 = alloca %"class.std::tuple.76", align 1     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIjSaIjEESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit, label %bb.b, !llvm.loop !66

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIjSaIjEESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIjSaIjEESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #28 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIjSaIjEESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIjSaIjEESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %1, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorIjSaIjEEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESN_IJEEEEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #16 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #28 ; 0 uses
  tail call void @_ZSt9terminatev() #33
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
end_hunk_10
