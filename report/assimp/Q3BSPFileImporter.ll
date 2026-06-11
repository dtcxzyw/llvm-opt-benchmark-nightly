inline.NumInlined: 886
inline.NumDeleted: 384
begin_hunk_0_@_ZN6Assimp17Q3BSPFileImporter11CreateNodesEPKNS_5Q3BSP10Q3BSPModelEP7aiSceneP6aiNode:bb.a
  br label %.lr.ph132.1

.lr.ph132.1:                                      ; preds = %bb.v, %.lr.ph132
  %i.bq = or disjoint i64 %.036130, 1             ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.sroa.072.0.lcssa, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %.not41.1 = icmp eq ptr %i.bs, null
  br i1 %.not41.1, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph132.1
  %i.bt = load ptr, ptr %i.bj, align 8
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bq
  store ptr %i.bs, ptr %i.bu, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph132.1
  %i.bv = add nuw i64 %.036130, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph132, !llvm.loop !25

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.x
  %i.bw = and i64 %i.h, 8
  %lcmp.mod.not = icmp eq i64 %i.bw, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph132.epil.preheader

.lr.ph132.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph132.preheader
  %.036130.epil.init = phi i64 [ 0, %.lr.ph132.preheader ], [ %i.bv, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod224 = trunc i64 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod224)
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.072.0.lcssa, i64 %.036130.epil.init
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  %.not41.epil = icmp eq ptr %i.by, null
  br i1 %.not41.epil, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %.lr.ph132.epil.preheader
  %i.bz = load ptr, ptr %i.bj, align 8
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.036130.epil.init
  store ptr %i.by, ptr %i.ca, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.y, %.lr.ph132.epil.preheader, %bb.t, %._crit_edge
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 1104
  store i32 %i.j, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1104
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = zext i32 %i.cf to i64
  %i.ch = shl nuw nsw i64 %i.cg, 3
  %i.ci = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ch) #27
          to label %bb.z unwind label %bb.u

bb.z:                                             ; preds = %.loopexit
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 1112 ; 7 uses
  store ptr %i.ci, ptr %i.cj, align 8
  %i.ck = ptrtoint ptr %.sroa.063.0.lcssa to i64  ; 2 uses
  %.not139 = icmp eq ptr %.sroa.10.0.lcssa, %.sroa.063.0.lcssa
  br i1 %.not139, label %._crit_edge136, label %.lr.ph135.preheader

.lr.ph135.preheader:                              ; preds = %bb.z
  %i.cl = ptrtoint ptr %.sroa.10.0.lcssa to i64
  %i.cm = sub i64 %i.cl, %i.ck                    ; 3 uses
  %i.cn = ashr exact i64 %i.cm, 3                 ; 2 uses
  %i.co = icmp eq i64 %i.cm, 8
  br i1 %i.co, label %.lr.ph135.epil.preheader, label %.lr.ph135.preheader.new

.lr.ph135.preheader.new:                          ; preds = %.lr.ph135.preheader
  %unroll_iter228 = and i64 %i.cn, -2
  br label %.lr.ph135

._crit_edge136:                                   ; preds = %bb.z
  %.not.i.i.i53 = icmp eq ptr %.sroa.063.0.lcssa, null
  br i1 %.not.i.i.i53, label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit, label %._crit_edge136.thread

._crit_edge136.thread.loopexit.unr-lcssa:         ; preds = %.lr.ph135
  %i.cp = and i64 %i.cm, 8
  %lcmp.mod226.not = icmp eq i64 %i.cp, 0
  br i1 %lcmp.mod226.not, label %._crit_edge136.thread, label %.lr.ph135.epil.preheader

.lr.ph135.epil.preheader:                         ; preds = %._crit_edge136.thread.loopexit.unr-lcssa, %.lr.ph135.preheader
  %.034133.epil.init = phi i64 [ 0, %.lr.ph135.preheader ], [ %i.ec, %._crit_edge136.thread.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod227 = trunc i64 %i.cn to i1
  tail call void @llvm.assume(i1 %lcmp.mod227)
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.063.0.lcssa, i64 %.034133.epil.init
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1096
  store ptr %3, ptr %i.cs, align 8
  %i.ct = load ptr, ptr %i.cj, align 8
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.034133.epil.init
  store ptr %i.cr, ptr %i.cu, align 8
  %i.cv = trunc i64 %.034133.epil.init to i32
  %i.cw = load ptr, ptr %i.cj, align 8
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %.034133.epil.init
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 1128
  %i.da = load ptr, ptr %i.cz, align 8
  store i32 %i.cv, ptr %i.da, align 4
  br label %._crit_edge136.thread

._crit_edge136.thread:                            ; preds = %.lr.ph135.epil.preheader, %._crit_edge136.thread.loopexit.unr-lcssa, %._crit_edge136
  %i.db = ptrtoint ptr %.sroa.15.0.lcssa to i64
  %i.dc = sub i64 %i.db, %i.ck
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.063.0.lcssa, i64 noundef %i.dc) #23
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit

_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit:           ; preds = %._crit_edge136, %._crit_edge136.thread
  %.not.i.i.i54 = icmp eq ptr %.sroa.072.0.lcssa, null
  br i1 %.not.i.i.i54, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit
  %i.dd = ptrtoint ptr %.sroa.19.0.lcssa to i64
  %i.de = sub i64 %i.dd, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.072.0.lcssa, i64 noundef %i.de) #23
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit

.lr.ph135:                                        ; preds = %.lr.ph135, %.lr.ph135.preheader.new
  %.034133 = phi i64 [ 0, %.lr.ph135.preheader.new ], [ %i.ec, %.lr.ph135 ] ; 6 uses
  %niter229 = phi i64 [ 0, %.lr.ph135.preheader.new ], [ %niter229.next.1, %.lr.ph135 ]
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.sroa.063.0.lcssa, i64 %.034133
  %i.dg = load ptr, ptr %i.df, align 8            ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 1096
  store ptr %3, ptr %i.dh, align 8
  %i.di = load ptr, ptr %i.cj, align 8
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.034133
  store ptr %i.dg, ptr %i.dj, align 8
  %i.dk = trunc i64 %.034133 to i32
  %i.dl = load ptr, ptr %i.cj, align 8
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %.034133
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 1128
  %i.dp = load ptr, ptr %i.do, align 8
  store i32 %i.dk, ptr %i.dp, align 4
  %i.dq = or disjoint i64 %.034133, 1             ; 4 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.063.0.lcssa, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8            ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1096
  store ptr %3, ptr %i.dt, align 8
  %i.du = load ptr, ptr %i.cj, align 8
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dq
  store ptr %i.ds, ptr %i.dv, align 8
  %i.dw = trunc i64 %i.dq to i32
  %i.dx = load ptr, ptr %i.cj, align 8
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dq
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 1128
  %i.eb = load ptr, ptr %i.ea, align 8
  store i32 %i.dw, ptr %i.eb, align 4
  %i.ec = add nuw i64 %.034133, 2                 ; 2 uses
  %niter229.next.1 = add i64 %niter229, 2         ; 2 uses
  %niter229.ncmp.1 = icmp eq i64 %niter229.next.1, %unroll_iter228
  br i1 %niter229.ncmp.1, label %._crit_edge136.thread.loopexit.unr-lcssa, label %.lr.ph135, !llvm.loop !26

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit:           ; preds = %bb.aa, %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit, %bb.a
  ret void

bb.ab:                                            ; preds = %bb.u, %bb.r
  %.sroa.19.0113 = phi ptr [ %.sroa.19.0117143, %bb.r ], [ %.sroa.19.0.lcssa, %bb.u ]
  %.sroa.072.095 = phi ptr [ %.sroa.072.0123, %bb.r ], [ %.sroa.072.0.lcssa, %bb.u ] ; 3 uses
  %.sroa.063.4 = phi ptr [ %.sroa.063.1, %bb.r ], [ %.sroa.063.0.lcssa, %bb.u ] ; 3 uses
  %.sroa.15.4 = phi ptr [ %.sroa.15.1, %bb.r ], [ %.sroa.15.0.lcssa, %bb.u ]
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.r ], [ %i.bl, %bb.u ]
  %.not.i.i.i55 = icmp eq ptr %.sroa.063.4, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit56, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ed = ptrtoint ptr %.sroa.15.4 to i64
  %i.ee = ptrtoint ptr %.sroa.063.4 to i64
  %i.ef = sub i64 %i.ed, %i.ee
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.063.4, i64 noundef %i.ef) #23
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit56

_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit56:         ; preds = %bb.ab, %bb.ac
  %.not.i.i.i57 = icmp eq ptr %.sroa.072.095, null
  br i1 %.not.i.i.i57, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit58, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit56
  %i.eg = ptrtoint ptr %.sroa.19.0113 to i64
  %i.eh = ptrtoint ptr %.sroa.072.095 to i64
  %i.ei = sub i64 %i.eg, %i.eh
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.072.095, i64 noundef %i.ei) #23
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit58

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit58:         ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit56, %bb.ad
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp17Q3BSPFileImporter15createMaterialsEPKNS_5Q3BSP10Q3BSPModelEP7aiScenePNS_18ZipArchiveIOSystemE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(160) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %8 = alloca %struct.aiString, align 4           ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.e, 2305843009213693951
  %i.h = shl i64 %i.e, 3
  %i.i = select i1 %i.g, i64 -1, i64 %i.h
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #27
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %8, i8 0, i64 1028, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.not78149 = icmp eq ptr %i.m, %i.n
  br i1 %.not78149, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 17
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 17
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = load ptr, ptr %i.ah, align 8
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am                    ; 2 uses
  %i.ao = lshr exact i64 %i.an, 3
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 %i.ap, ptr %i.aq, align 8
  %i.ar = and i64 %i.an, 34359738360
  %i.as = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ar) #27 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %i.as, ptr %i.at, align 8
  %i.au = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.av = load ptr, ptr %i.ai, align 8
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.c, label %bb.d, !prof !27

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.as, ptr align 8 %i.au, i64 %i.ay, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

bb.d:                                             ; preds = %._crit_edge
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.e, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

bb.e:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %i.au, align 8
  store ptr %i.bb, ptr %i.as, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.al

bb.f:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %.sroa.066.0150 = phi ptr [ %i.m, %.lr.ph ], [ %i.go, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.066.0150, i64 32
  store ptr %i.o, ptr %9, align 8
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.066.0150, i64 40
  %i.bf = load i64, ptr %i.be, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 %i.bf, ptr %i.c, align 8
  %i.bg = icmp ugt i64 %i.bf, 15
  br i1 %i.bg, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.f
  %i.bh = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.bh, ptr %9, align 8
  %i.bi = load i64, ptr %i.c, align 8
  store i64 %i.bi, ptr %i.o, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.f
  %i.bj = phi ptr [ %i.bh, %.noexc.i ], [ %i.o, %bb.f ] ; 2 uses
  switch i64 %i.bf, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.bk = load i8, ptr %i.bd, align 1
  store i8 %i.bk, ptr %i.bj, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr align 1 %i.bd, i64 %i.bf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.g, %bb.h
  %i.bl = load i64, ptr %i.c, align 8             ; 2 uses
  store i64 %i.bl, ptr %i.p, align 8
  %i.bm = load ptr, ptr %9, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bl
  store i8 0, ptr %i.bn, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.bo = load i64, ptr %i.p, align 8             ; 5 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.ak, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.bq = icmp ugt i64 %i.bo, 1023
  br i1 %i.bq, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = trunc nuw nsw i64 %i.bo to i32
  store i32 %i.br, ptr %8, align 4
  %i.bs = load ptr, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr align 1 %i.bs, i64 %i.bo, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bo
  store i8 0, ptr %i.bt, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.i, %bb.j
  %i.bu = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #27
          to label %bb.k unwind label %bb.af      ; 6 uses

bb.k:                                             ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.bu)
          to label %bb.l unwind label %bb.ag

bb.l:                                             ; preds = %bb.k
  %i.bv = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull %8, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 0)
          to label %bb.m unwind label %bb.af      ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.bw = load i64, ptr %i.p, align 8
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 noundef signext 46, i64 noundef 0) #22 ; 5 uses
  %i.bz = icmp eq i64 %i.by, -1
  br i1 %i.bz, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.ca = load i64, ptr %i.p, align 8, !noalias !28
  store ptr %i.r, ptr %6, align 8, !alias.scope !28
  %i.cb = load ptr, ptr %9, align 8, !noalias !28 ; 2 uses
  %spec.select.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.by, i64 %i.ca) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22, !noalias !28
  store i64 %spec.select.i.i.i.i, ptr %i.b, align 8, !noalias !28
  %i.cc = icmp ugt i64 %spec.select.i.i.i.i, 15
  br i1 %i.cc, label %.noexc10.i.i.i, label %._crit_edge.i.i.i.i

.noexc10.i.i.i:                                   ; preds = %bb.o
  %i.cd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.af    ; 2 uses

.noexc:                                           ; preds = %.noexc10.i.i.i
  store ptr %i.cd, ptr %6, align 8, !alias.scope !28
  %i.ce = load i64, ptr %i.b, align 8, !noalias !28
  store i64 %i.ce, ptr %i.r, align 8, !alias.scope !28
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %bb.o
  %i.cf = phi ptr [ %i.cd, %.noexc ], [ %i.r, %bb.o ] ; 2 uses
  switch i64 %spec.select.i.i.i.i, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cg = load i8, ptr %i.cb, align 1
  store i8 %i.cg, ptr %i.cf, align 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i

bb.q:                                             ; preds = %._crit_edge.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN6Assimp17Q3BSPFileImporter15createMaterialsEPKNS_5Q3BSP10Q3BSPModelEP7aiScenePNS_18ZipArchiveIOSystemE:bb.a
  %i.cl = load i64, ptr %i.p, align 8             ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %.not.i = icmp ult i64 %i.by, %i.cl
  br i1 %.not.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.22, i64 noundef %i.ck, i64 noundef %i.cl) #26
          to label %.noexc.i33 unwind label %.loopexit.split-lp

.noexc.i33:                                       ; preds = %bb.r
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  %i.cm = xor i64 %i.by, -1
  %i.cn = add i64 %i.cl, %i.cm
  store ptr %i.t, ptr %7, align 8, !alias.scope !31
  %i.co = load ptr, ptr %9, align 8, !noalias !31
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ck ; 2 uses
  %i.cq = sub nuw i64 %i.cl, %i.ck
  %spec.select.i.i.i14.i = call noundef i64 @llvm.umin.i64(i64 %i.cn, i64 %i.cq) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !31
  store i64 %spec.select.i.i.i14.i, ptr %i.a, align 8, !noalias !31
  %i.cr = icmp ugt i64 %spec.select.i.i.i14.i, 15
  br i1 %i.cr, label %.noexc10.i.i16.i, label %._crit_edge.i.i.i15.i

.noexc10.i.i16.i:                                 ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.cs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc17.i unwind label %.loopexit ; 2 uses

.noexc17.i:                                       ; preds = %.noexc10.i.i16.i
  store ptr %i.cs, ptr %7, align 8, !alias.scope !31
  %i.ct = load i64, ptr %i.a, align 8, !noalias !31
  store i64 %i.ct, ptr %i.t, align 8, !alias.scope !31
  br label %._crit_edge.i.i.i15.i

._crit_edge.i.i.i15.i:                            ; preds = %.noexc17.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.cu = phi ptr [ %i.cs, %.noexc17.i ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i14.i, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i.i15.i
  %i.cv = load i8, ptr %i.cp, align 1
  store i8 %i.cv, ptr %i.cu, align 1
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i.i15.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cu, ptr nonnull align 1 %i.cp, i64 %spec.select.i.i.i14.i, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i.i15.i
  %i.cw = load i64, ptr %i.a, align 8, !noalias !31 ; 2 uses
  store i64 %i.cw, ptr %i.u, align 8, !alias.scope !31
  %i.cx = load ptr, ptr %7, align 8, !alias.scope !31
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cw
  store i8 0, ptr %i.cy, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !31
  %i.cz = load ptr, ptr %6, align 8
  %i.da = call i64 @__isoc23_strtol(ptr noundef nonnull %i.cz, ptr noundef null, i32 noundef 10) #22, !inline_history !34 ; 2 uses
  %i.db = trunc i64 %i.da to i32                  ; 2 uses
  %i.dc = load ptr, ptr %7, align 8
  %i.dd = call i64 @__isoc23_strtol(ptr noundef nonnull %i.dc, ptr noundef null, i32 noundef 10) #22, !inline_history !34
  %i.de = trunc i64 %i.dd to i32                  ; 2 uses
  %i.df = load ptr, ptr %7, align 8               ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.t
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.u
  %i.dh = load i64, ptr %i.t, align 8
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.dj = load ptr, ptr %6, align 8               ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.r
  br i1 %i.dk, label %_ZN6AssimpL10extractIdsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS8_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.dl = load i64, ptr %i.r, align 8
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #23
  br label %_ZN6AssimpL10extractIdsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS8_.exit

.loopexit:                                        ; preds = %.noexc10.i.i16.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit.split-lp:                               ; preds = %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.dn = load ptr, ptr %6, align 8               ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.r
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i: ; preds = %bb.v
  %i.dp = load i64, ptr %i.r, align 8
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.body

_ZN6AssimpL10extractIdsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS8_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %.not = icmp eq i32 %i.db, -1
  br i1 %.not, label %bb.ai, label %bb.w

bb.w:                                             ; preds = %_ZN6AssimpL10extractIdsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS8_.exit
  %sext = shl i64 %i.da, 32
  %i.dr = load ptr, ptr %i.v, align 8
  %i.ds = ashr exact i64 %sext, 29
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.ds
  %i.du = load ptr, ptr %i.dt, align 8            ; 3 uses
  %.not28 = icmp eq ptr %i.du, null
  br i1 %.not28, label %bb.ai, label %._crit_edge.i.i34

._crit_edge.i.i34:                                ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr %i.w, ptr %10, align 8
  store i8 42, ptr %i.w, align 8
  store i64 1, ptr %i.x, align 8
  store i8 0, ptr %i.ag, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store ptr %i.y, ptr %11, align 8
  store i64 0, ptr %i.z, align 8
  store i8 0, ptr %i.y, align 8
  %i.dv = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.du) #22 ; 2 uses
  %i.dw = icmp ugt i64 %i.dv, 4611686018427387902
  br i1 %i.dw, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %._crit_edge.i.i34
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #26
          to label %.cont unwind label %.loopexit.split-lp80

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %._crit_edge.i.i34
  %i.dx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull %i.du, i64 noundef %i.dv)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit79 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.dy = load i64, ptr %i.x, align 8
  %i.dz = and i64 %i.dy, -4
  %i.ea = icmp eq i64 %i.dz, 4611686018427387900
  br i1 %i.ea, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.eb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.9, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit42 unwind label %.loopexit79 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i39
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.aa, ptr %4, align 8
  store i8 0, ptr %i.aa, align 8
  %i.ec = load ptr, ptr %11, align 8
  store i64 0, ptr %i.z, align 8
  store i8 0, ptr %i.ec, align 1
  %.pre.i.i = load ptr, ptr %4, align 8
  store i64 0, ptr %i.ab, align 8
  store i8 0, ptr %.pre.i.i, align 1
  %i.ed = load ptr, ptr %4, align 8               ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.aa
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit42
  %i.ef = load i64, ptr %i.aa, align 8
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.eh = load i64, ptr %i.x, align 8
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %_ZN6AssimpL17normalizePathNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_.exit, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i44
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %i.ac, ptr %5, align 8
  store i8 47, ptr %i.ac, align 8
  store i64 1, ptr %i.ad, align 8
  store i8 0, ptr %i.ae, align 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.preheader.i unwind label %bb.x

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.preheader.i: ; preds = %._crit_edge.i.i.i
  %i.ej = load i64, ptr %i.z, align 8             ; 2 uses
  %.not32.i = icmp eq i64 %i.ej, 0
  br i1 %.not32.i, label %.split.us.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.preheader.i
  %.pre170 = load ptr, ptr %11, align 8
  br label %.lr.ph.i

.split.us.i:                                      ; preds = %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.preheader.i
  %i.ek = load ptr, ptr %5, align 8               ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.ac
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i: ; preds = %.split.us.i
  %i.em = load i64, ptr %i.ac, align 8
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i: ; preds = %.split.us.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN6AssimpL17normalizePathNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_.exit

bb.x:                                             ; preds = %._crit_edge.i.i.i
  %i.eo = landingpad { ptr, i32 }
          cleanup
  %i.ep = load ptr, ptr %5, align 8               ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.ac
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i: ; preds = %bb.x
  %i.er = load i64, ptr %i.ac, align 8
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i: ; preds = %bb.ab
  %.not33.1.i = icmp eq i64 %i.fg, 0
  br i1 %.not33.1.i, label %.split.us.i, label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i, %bb.z
  %12 = phi ptr [ %13, %bb.z ], [ %.pre172, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i ] ; 2 uses
  %.030.1.i.a = phi i64 [ %i.ey, %bb.z ], [ %i.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i ]
  %.030.1.i = phi i64 [ %i.ez, %bb.z ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %12, i64 %.030.1.i ; 2 uses
  %i.eu = load i8, ptr %i.et, align 1
  %i.ev = icmp eq i8 %i.eu, 92
  br i1 %i.ev, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.1.i
  %i.ew = load ptr, ptr %5, align 8
  %i.ex = load i8, ptr %i.ew, align 1
  store i8 %i.ex, ptr %i.et, align 1
  %.pre35.i = load i64, ptr %i.z, align 8
  %.pre171 = load ptr, ptr %11, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.1.i
  %13 = phi ptr [ %.pre171, %bb.y ], [ %12, %.lr.ph.1.i ]
  %i.ey = phi i64 [ %.pre35.i, %bb.y ], [ %.030.1.i.a, %.lr.ph.1.i ] ; 2 uses
  %i.ez = add nuw i64 %.030.1.i, 1                ; 2 uses
  %i.fa = icmp ult i64 %i.ez, %i.ey
  br i1 %i.fa, label %.lr.ph.1.i, label %.split.us.i, !llvm.loop !35

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.ab
  %14 = phi ptr [ %.pre172, %bb.ab ], [ %.pre170, %.lr.ph.i.preheader ] ; 2 uses
  %.030.i.a = phi i64 [ %i.fg, %bb.ab ], [ %i.ej, %.lr.ph.i.preheader ]
  %.030.i = phi i64 [ %i.fh, %bb.ab ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %14, i64 %.030.i ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1
  %i.fd = icmp eq i8 %i.fc, 47
  br i1 %i.fd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i
  %i.fe = load ptr, ptr %5, align 8
  %i.ff = load i8, ptr %i.fe, align 1
  store i8 %i.ff, ptr %i.fb, align 1
  %.pre.i = load i64, ptr %i.z, align 8
  %.pre = load ptr, ptr %11, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i
  %.pre172 = phi ptr [ %14, %.lr.ph.i ], [ %.pre, %bb.aa ] ; 2 uses
  %i.fg = phi i64 [ %.030.i.a, %.lr.ph.i ], [ %.pre.i, %bb.aa ] ; 4 uses
  %i.fh = add nuw i64 %.030.i, 1                  ; 2 uses
  %i.fi = icmp ult i64 %i.fh, %i.fg
  br i1 %i.fi, label %.lr.ph.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i, !llvm.loop !35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.body46

_ZN6AssimpL17normalizePathNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i44
  %i.fj = invoke noundef zeroext i1 @_ZN6Assimp17Q3BSPFileImporter24importTextureFromArchiveEPKNS_5Q3BSP10Q3BSPModelEPNS_18ZipArchiveIOSystemEP7aiSceneP10aiMateriali(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %3, ptr poison, ptr noundef nonnull %i.bu, i32 noundef %i.db)
          to label %bb.ac unwind label %.loopexit79

bb.ac:                                            ; preds = %_ZN6AssimpL17normalizePathNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_.exit
  br i1 %i.fj, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fk = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ae unwind label %.loopexit79

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN6Assimp6Logger5errorIJRA36_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.fk, ptr noundef nonnull align 1 dereferenceable(36) @.str.10, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.ah unwind label %.loopexit79

bb.af:                                            ; preds = %.noexc10.i.i.i, %bb.aj, %bb.l, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ag:                                            ; preds = %bb.k
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef 16) #23
  br label %.body

.loopexit79:                                      ; preds = %_ZN6AssimpL17normalizePathNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_.exit, %bb.ad, %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i39
  %lpad.loopexit81 = landingpad { ptr, i32 }
          cleanup
  br label %.body46

.loopexit.split-lp80:                             ; preds = %.invoke
  %lpad.loopexit.split-lp82 = landingpad { ptr, i32 }
          cleanup
  br label %.body46

.body46:                                          ; preds = %.loopexit79, %.loopexit.split-lp80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i
  %eh.lpad-body47 = phi { ptr, i32 } [ %i.eo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i ], [ %lpad.loopexit81, %.loopexit79 ], [ %lpad.loopexit.split-lp82, %.loopexit.split-lp80 ]
  %i.fn = load ptr, ptr %11, align 8              ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.y
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %.body46
  %i.fp = load i64, ptr %i.y, align 8
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.fr = load ptr, ptr %10, align 8              ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.w
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ft = load i64, ptr %i.w, align 8
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.ah:                                            ; preds = %bb.ae, %bb.ac
  %i.fv = load ptr, ptr %11, align 8              ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.y
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.ah
  %i.fx = load i64, ptr %i.y, align 8
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.fz = load ptr, ptr %10, align 8              ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.w
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.gb = load i64, ptr %i.w, align 8
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gc) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.ai

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %.body

bb.ai:                                            ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZN6AssimpL10extractIdsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS8_.exit
  %.not30 = icmp eq i32 %i.de, -1
  br i1 %.not30, label %.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gd = invoke noundef zeroext i1 @_ZN6Assimp17Q3BSPFileImporter14importLightmapEPKNS_5Q3BSP10Q3BSPModelEP7aiSceneP10aiMateriali(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.bu, i32 noundef %i.de)
          to label %.thread unwind label %bb.af   ; 0 uses

.thread:                                          ; preds = %bb.m, %bb.n, %bb.aj, %bb.ai
  %i.ge = load ptr, ptr %i.k, align 8
  %i.gf = load i32, ptr %i.af, align 8
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.gg
  store ptr %i.bu, ptr %i.gh, align 8
  %i.gi = load i32, ptr %i.af, align 8
  %i.gj = add i32 %i.gi, 1
  store i32 %i.gj, ptr %i.af, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %.thread
  %i.gk = load ptr, ptr %9, align 8               ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.o
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.ak
  %i.gm = load i64, ptr %i.o, align 8
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.gn) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.go = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.066.0150) #24 ; 2 uses
  %.not78 = icmp eq ptr %i.go, %i.n
  br i1 %.not78, label %._crit_edge, label %bb.f, !llvm.loop !36

.body:                                            ; preds = %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %bb.ag
  %.pn31 = phi { ptr, i32 } [ %i.fm, %bb.ag ], [ %eh.lpad-body47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %i.fl, %bb.af ], [ %lpad.phi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i ]
  %i.gp = load ptr, ptr %9, align 8               ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.o
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %.body
  %i.gr = load i64, ptr %i.o, align 8
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gs) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  resume { ptr, i32 } %.pn31

bb.al:                                            ; preds = %bb.a, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP9aiTextureSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(160) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not13 = icmp eq ptr %i.a, %i.c
  br i1 %.not13, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.2, %bb.c ]
  ret i64 %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.015 = phi i64 [ %.2, %bb.c ], [ 0, %bb.a ]    ; 2 uses
  %.sroa.09.014 = phi ptr [ %i.k, %bb.c ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.sroa.09.014, align 8     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 4
  switch i32 %i.f, label %bb.c [
    i32 1, label %bb.b
    i32 3, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load i32, ptr %i.g, align 4
  %i.i = sext i32 %i.h to i64
  %i.j = add i64 %.015, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.2 = phi i64 [ %.015, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.09.014, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.k, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !23
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN6Assimp17Q3BSPFileImporter14CreateTopologyEPKNS_5Q3BSP10Q3BSPModelEjRSt6vectorIPNS1_10sQ3BSPFaceESaIS7_EEPP6aiMesh(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(160) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = load ptr, ptr %3, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
end_hunk_1
