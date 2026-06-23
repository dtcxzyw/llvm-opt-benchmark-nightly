inline.NumInlined: 352
inline.NumDeleted: 188
begin_hunk_0_@_ZN6Assimp27ImproveCacheLocalityProcess7ExecuteEP7aiScene:bb.a
  br i1 %i.ae, label %bb.d, label %._crit_edge, !llvm.loop !3

bb.g:                                             ; preds = %._crit_edge
  %.not15 = icmp eq i32 %i.i, 0
  br i1 %.not15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.ag = uitofp i32 %i.i to float
  %i.ah = fdiv float %.0.lcssa, %i.ag
  store float %i.ah, ptr %i.c, align 4
  call void @_ZN6Assimp6Logger4infoIJRA20_KcRjRA10_S2_S5_RA33_S2_fEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.af, ptr noundef nonnull align 1 dereferenceable(20) @.str.3, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(10) @.str.4, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(33) @.str.5, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ai = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ai, ptr noundef nonnull @.str.6)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  ret void
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #4

declare void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define hidden noundef float @_ZN6Assimp27ImproveCacheLocalityProcess11ProcessMeshEP6aiMeshj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca float, align 4                    ; 7 uses
  %3 = alloca %"class.Assimp::VertexTriangleAdjacency", align 8 ; 9 uses
  %i.d = alloca float, align 4                    ; 9 uses
  %i.e = alloca float, align 4                    ; 5 uses
  store i32 %2, ptr %i.b, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp ne ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp ne i32 %i.i, 0
  %i.k = select i1 %.not.i, i1 %i.j, i1 false
  br i1 %i.k, label %bb.b, label %bb.bm

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %.not.i149 = icmp ne ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = icmp ne i32 %i.o, 0
  %i.q = select i1 %.not.i149, i1 %i.p, i1 false
  br i1 %i.q, label %bb.c, label %bb.bm

bb.c:                                             ; preds = %bb.b
  %i.r = load i32, ptr %1, align 8
  %.not = icmp eq i32 %i.r, 4
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.s, ptr noundef nonnull @.str.7)
  br label %bb.bm

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.u = load i32, ptr %i.t, align 8
  %.not130 = icmp ugt i32 %i.o, %i.u
  br i1 %.not130, label %bb.f, label %bb.bm

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store float 3.000000e+00, ptr %i.c, align 4
  %i.v = zext i32 %i.i to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.v ; 5 uses
  %i.x = tail call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.x, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load i32, ptr %i.t, align 8              ; 2 uses
  %i.z = zext i32 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 2                 ; 3 uses
  %i.ab = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #17 ; 14 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ab, i8 -1, i64 %i.aa, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa ; 9 uses
  %i.ad = load ptr, ptr %i.f, align 8             ; 3 uses
  %.not48.i = icmp eq ptr %i.ad, %i.w
  br i1 %.not48.i, label %._crit_edge.i, label %.preheader41.lr.ph.i

.preheader41.lr.ph.i:                             ; preds = %bb.g
  %.not53.i = icmp eq i32 %i.y, 0
  br i1 %.not53.i, label %.preheader41.i, label %.preheader41.us.i

.preheader41.us.i:                                ; preds = %.preheader41.lr.ph.i, %.loopexit.us.us.2.i
  %.03551.us.i = phi ptr [ %i.bf, %.loopexit.us.us.2.i ], [ %i.ad, %.preheader41.lr.ph.i ] ; 2 uses
  %.03650.us.i = phi i32 [ %.2.us.us.2.i, %.loopexit.us.us.2.i ], [ 0, %.preheader41.lr.ph.i ] ; 2 uses
  %.03849.us.i = phi ptr [ %.3.us.us.2.i, %.loopexit.us.us.2.i ], [ %i.ab, %.preheader41.lr.ph.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.03551.us.i, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.042.us.us.i, i64 4 ; 2 uses
  %i.ai = icmp ult ptr %i.ah, %i.ac
  br i1 %i.ai, label %bb.i, label %..critedge_crit_edge.us.us.i, !llvm.loop !5

bb.i:                                             ; preds = %bb.h, %.preheader41.us.i
  %.042.us.us.i = phi ptr [ %i.ab, %.preheader41.us.i ], [ %i.ah, %bb.h ] ; 2 uses
  %i.aj = load i32, ptr %.042.us.us.i, align 4
  %i.ak = icmp eq i32 %i.aj, %i.ag
  br i1 %i.ak, label %.loopexit.us.us.i, label %bb.h

.loopexit.us.us.i:                                ; preds = %bb.i, %..critedge_crit_edge.us.us.i
  %i.al = phi ptr [ %.pre.i, %..critedge_crit_edge.us.us.i ], [ %i.af, %bb.i ] ; 2 uses
  %.3.us.us.i = phi ptr [ %i.bi, %..critedge_crit_edge.us.us.i ], [ %.03849.us.i, %bb.i ] ; 3 uses
  %.2.us.us.i = phi i32 [ %i.bg, %..critedge_crit_edge.us.us.i ], [ %.03650.us.i, %bb.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load i32, ptr %i.am, align 4            ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.loopexit.us.us.i
  %.042.us.us.1.i = phi ptr [ %i.ab, %.loopexit.us.us.i ], [ %i.aq, %bb.k ] ; 2 uses
  %i.ao = load i32, ptr %.042.us.us.1.i, align 4
  %i.ap = icmp eq i32 %i.ao, %i.an
  br i1 %i.ap, label %.loopexit.us.us.1.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %.042.us.us.1.i, i64 4 ; 2 uses
  %i.ar = icmp ult ptr %i.aq, %i.ac
  br i1 %i.ar, label %bb.j, label %..critedge_crit_edge.us.us.1.i, !llvm.loop !5

..critedge_crit_edge.us.us.1.i:                   ; preds = %bb.k
  %i.as = add i32 %.2.us.us.i, 1
  %i.at = icmp eq ptr %i.ac, %.3.us.us.i
  %spec.select.us.us.1.i = select i1 %i.at, ptr %i.ab, ptr %.3.us.us.i ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %spec.select.us.us.1.i, i64 4
  store i32 %i.an, ptr %spec.select.us.us.1.i, align 4
  %.pre58.i = load ptr, ptr %i.ae, align 8
  br label %.loopexit.us.us.1.i

.loopexit.us.us.1.i:                              ; preds = %bb.j, %..critedge_crit_edge.us.us.1.i
  %i.av = phi ptr [ %.pre58.i, %..critedge_crit_edge.us.us.1.i ], [ %i.al, %bb.j ]
  %.3.us.us.1.i = phi ptr [ %i.au, %..critedge_crit_edge.us.us.1.i ], [ %.3.us.us.i, %bb.j ] ; 3 uses
  %.2.us.us.1.i = phi i32 [ %i.as, %..critedge_crit_edge.us.us.1.i ], [ %.2.us.us.i, %bb.j ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i32, ptr %i.aw, align 4            ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.loopexit.us.us.1.i
  %.042.us.us.2.i = phi ptr [ %i.ab, %.loopexit.us.us.1.i ], [ %i.ba, %bb.m ] ; 2 uses
  %i.ay = load i32, ptr %.042.us.us.2.i, align 4
  %i.az = icmp eq i32 %i.ay, %i.ax
  br i1 %i.az, label %.loopexit.us.us.2.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %.042.us.us.2.i, i64 4 ; 2 uses
  %i.bb = icmp ult ptr %i.ba, %i.ac
  br i1 %i.bb, label %bb.l, label %..critedge_crit_edge.us.us.2.i, !llvm.loop !5

..critedge_crit_edge.us.us.2.i:                   ; preds = %bb.m
  %i.bc = add i32 %.2.us.us.1.i, 1
  %i.bd = icmp eq ptr %i.ac, %.3.us.us.1.i
  %spec.select.us.us.2.i = select i1 %i.bd, ptr %i.ab, ptr %.3.us.us.1.i ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %spec.select.us.us.2.i, i64 4
  store i32 %i.ax, ptr %spec.select.us.us.2.i, align 4
  br label %.loopexit.us.us.2.i

.loopexit.us.us.2.i:                              ; preds = %bb.l, %..critedge_crit_edge.us.us.2.i
  %.3.us.us.2.i = phi ptr [ %i.be, %..critedge_crit_edge.us.us.2.i ], [ %.3.us.us.1.i, %bb.l ]
  %.2.us.us.2.i = phi i32 [ %i.bc, %..critedge_crit_edge.us.us.2.i ], [ %.2.us.us.1.i, %bb.l ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.03551.us.i, i64 16 ; 2 uses
  %.not.us.i = icmp eq ptr %i.bf, %i.w
  br i1 %.not.us.i, label %._crit_edge.i, label %.preheader41.us.i, !llvm.loop !6

..critedge_crit_edge.us.us.i:                     ; preds = %bb.h
  %i.bg = add i32 %.03650.us.i, 1
  %i.bh = icmp eq ptr %i.ac, %.03849.us.i
  %spec.select.us.us.i = select i1 %i.bh, ptr %i.ab, ptr %.03849.us.i ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %spec.select.us.us.i, i64 4
  store i32 %i.ag, ptr %spec.select.us.us.i, align 4
  %.pre.i = load ptr, ptr %i.ae, align 8
  br label %.loopexit.us.us.i

.preheader41.i:                                   ; preds = %.preheader41.lr.ph.i, %.preheader41.i
  %.03551.i = phi ptr [ %i.bx, %.preheader41.i ], [ %i.ad, %.preheader41.lr.ph.i ] ; 2 uses
  %.03650.i = phi i32 [ %i.bw, %.preheader41.i ], [ 0, %.preheader41.lr.ph.i ]
  %.03849.i = phi ptr [ %i.bv, %.preheader41.i ], [ %i.ab, %.preheader41.lr.ph.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.03551.i, i64 8
  %i.bk = icmp eq ptr %i.ac, %.03849.i
  %spec.select.i = select i1 %i.bk, ptr %i.ab, ptr %.03849.i ; 2 uses
  %i.bl = load ptr, ptr %i.bj, align 8            ; 3 uses
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 4 ; 2 uses
  store i32 %i.bm, ptr %spec.select.i, align 4
  %i.bo = icmp eq ptr %i.ac, %i.bn
  %spec.select.1.i = select i1 %i.bo, ptr %i.ab, ptr %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %spec.select.1.i, i64 4 ; 2 uses
  store i32 %i.bq, ptr %spec.select.1.i, align 4
  %i.bs = icmp eq ptr %i.ac, %i.br
  %spec.select.2.i = select i1 %i.bs, ptr %i.ab, ptr %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %spec.select.2.i, i64 4
  store i32 %i.bu, ptr %spec.select.2.i, align 4
  %i.bw = add i32 %.03650.i, 3                    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.03551.i, i64 16 ; 2 uses
  %.not.i150 = icmp eq ptr %i.bx, %i.w
  br i1 %.not.i150, label %._crit_edge.i, label %.preheader41.i, !llvm.loop !6

._crit_edge.i:                                    ; preds = %.loopexit.us.us.2.i, %.preheader41.i, %bb.g
  %.036.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.bw, %.preheader41.i ], [ %.2.us.us.2.i, %.loopexit.us.us.2.i ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.ab) #18
  %i.by = uitofp i32 %.036.lcssa.i to float
  %i.bz = load i32, ptr %i.h, align 8
  %i.ca = uitofp i32 %i.bz to float
  %i.cb = fdiv float %i.by, %i.ca                 ; 2 uses
  %i.cc = fcmp oeq float %i.cb, 3.000000e+00
  br i1 %i.cc, label %bb.n, label %_ZN6AssimpL18calculateInputACMREP6aiMeshPK6aiFacejj.exit

bb.n:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.cd = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.12, i32 noundef %2) #16 ; 0 uses
  %i.ce = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA128_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ce, ptr noundef nonnull align 1 dereferenceable(128) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %_ZN6AssimpL18calculateInputACMREP6aiMeshPK6aiFacejj.exit

_ZN6AssimpL18calculateInputACMREP6aiMeshPK6aiFacejj.exit: ; preds = %._crit_edge.i, %bb.n
  %.037.i = phi float [ 0.000000e+00, %bb.n ], [ %i.cb, %._crit_edge.i ]
  store float %.037.i, ptr %i.c, align 4
  br label %bb.o

bb.o:                                             ; preds = %_ZN6AssimpL18calculateInputACMREP6aiMeshPK6aiFacejj.exit, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.cf = load ptr, ptr %i.f, align 8
  %i.cg = load i32, ptr %i.h, align 8
  %i.ch = load i32, ptr %i.n, align 4
  call void @_ZN6Assimp23VertexTriangleAdjacencyC1EP6aiFacejjb(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef %i.cf, i32 noundef %i.cg, i32 noundef %i.ch, i1 noundef zeroext true)
  %i.ci = load i32, ptr %i.n, align 4             ; 3 uses
  %i.cj = zext i32 %i.ci to i64                   ; 3 uses
  %.not354 = icmp eq i32 %i.ci, 0                 ; 2 uses
  br i1 %.not354, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.o
  %i.ck = shl nuw nsw i64 %i.cj, 2                ; 2 uses
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #17
          to label %.noexc201 unwind label %_ZNSt6vectorIjSaIjEED2Ev.exit195.thread ; 4 uses

.noexc201:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  store i32 0, ptr %i.cl, align 4
  %i.cm = add nsw i64 %i.cj, -1                   ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %.noexc, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc201
  %i.co = getelementptr i8, ptr %i.cl, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.cm, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.co, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false)
  br label %.noexc

.noexc:                                           ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc201
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cj
  %i.cq = ptrtoint ptr %i.cp to i64
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

_ZNSt6vectorIjSaIjEE6resizeEm.exit:               ; preds = %bb.o, %.noexc
  %.pre-phi = phi i64 [ %i.ck, %.noexc ], [ 0, %bb.o ] ; 7 uses
  %.sroa.18.1 = phi i64 [ %i.cq, %.noexc ], [ 0, %bb.o ] ; 2 uses
  %.sroa.0311.1 = phi ptr [ %i.cl, %.noexc ], [ null, %bb.o ] ; 9 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %.sroa.0311.1, i8 0, i64 %.pre-phi, i1 false)
  %i.cr = load i32, ptr %i.h, align 8             ; 3 uses
  %i.cs = mul i32 %i.cr, 3
  %i.ct = zext i32 %i.cs to i64                   ; 3 uses
  %.not355 = icmp eq i32 %i.cr, 0
  br i1 %.not355, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i208

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i208: ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %i.cu = shl nuw nsw i64 %i.ct, 2
  %i.cv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #17
          to label %.noexc217 unwind label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit192.thread ; 5 uses

.noexc217:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i208
  store i32 0, ptr %i.cv, align 4
  %i.cw = add nsw i64 %i.ct, -1                   ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.p, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i210

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i210: ; preds = %.noexc217
  %i.cy = getelementptr i8, ptr %i.cv, i64 4
  %.idx.i.i.i.i.i31.i211 = shl nuw nsw i64 %i.cw, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cy, i8 0, i64 %.idx.i.i.i.i.i31.i211, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i210, %.noexc217
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.ct
  %i.da = ptrtoint ptr %i.cz to i64               ; 2 uses
  %i.db = zext i32 %i.cr to i64
  %i.dc = add nuw nsw i64 %i.db, 63               ; 2 uses
  %i.dd = lshr i64 %i.dc, 3
  %i.de = and i64 %i.dd, 1073741816
  %i.df = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #17
          to label %.noexc156 unwind label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit192.thread567 ; 3 uses

.noexc156:                                        ; preds = %bb.p
  %i.dg = lshr i64 %i.dc, 6                       ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dg
  %.idx.i = shl nuw nsw i64 %i.dg, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.df, i8 0, i64 %.idx.i, i1 false)
  br label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit, %.noexc156
  %.sroa.0300.1521 = phi ptr [ %i.cv, %.noexc156 ], [ null, %_ZNSt6vectorIjSaIjEE6resizeEm.exit ] ; 7 uses
  %.sroa.16308.1519 = phi i64 [ %i.da, %.noexc156 ], [ 0, %_ZNSt6vectorIjSaIjEE6resizeEm.exit ] ; 2 uses
  %.sroa.0287.0 = phi ptr [ %i.df, %.noexc156 ], [ null, %_ZNSt6vectorIjSaIjEE6resizeEm.exit ] ; 5 uses
  %.sroa.15294.0 = phi ptr [ %i.dh, %.noexc156 ], [ null, %_ZNSt6vectorIjSaIjEE6resizeEm.exit ] ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dj = load ptr, ptr %i.di, align 8            ; 11 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.pre-phi
  br i1 %.not354, label %._crit_edge.thread, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.dl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.pre-phi) #17
          to label %.noexc4.i unwind label %_ZNSt12_Vector_baseIjSaIjEED2Ev.exit.i ; 6 uses

.noexc4.i:                                        ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.pre-phi ; 3 uses
  %.not357 = icmp eq i32 %i.ci, 1
  br i1 %.not357, label %bb.r, label %bb.q, !prof !7

bb.q:                                             ; preds = %.noexc4.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dl, ptr align 4 %i.dj, i64 %.pre-phi, i1 false)
  br label %.lr.ph.preheader

bb.r:                                             ; preds = %.noexc4.i
  %i.dn = load i32, ptr %i.dj, align 4
  store i32 %i.dn, ptr %i.dl, align 4
  br label %.lr.ph.preheader

_ZNSt12_Vector_baseIjSaIjEED2Ev.exit.i:           ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt5stackIjSt6vectorIjSaIjEEED2Ev.exit190

._crit_edge.thread:                               ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.dp = getelementptr inbounds nuw i8, ptr null, i64 %.pre-phi
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit160

.lr.ph.preheader:                                 ; preds = %bb.r, %bb.q
  %i.dq = add nsw i64 %.pre-phi, -4               ; 2 uses
  %i.dr = lshr exact i64 %i.dq, 2
  %i.ds = add nuw nsw i64 %i.dr, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dq, 28
  br i1 %min.iters.check, label %.lr.ph.preheader638, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ds, 9223372036854775800     ; 3 uses
  %i.dt = shl i64 %n.vec, 2
  %i.du = getelementptr i8, ptr %i.dj, i64 %i.dt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dx, %vector.body ]
  %vec.phi619 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dy, %vector.body ]
  %i.dv = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.dj, i64 %i.dv ; 2 uses
  %i.dw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4
  %wide.load620 = load <4 x i32>, ptr %i.dw, align 4
  %i.dx = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.dy = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi619, <4 x i32> %wide.load620) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.dx, <4 x i32> %i.dy)
  %i.ea = call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.ds, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader638

.lr.ph.preheader638:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0100406.ph = phi ptr [ %i.dj, %.lr.ph.preheader ], [ %i.du, %middle.block ]
  %.0323405.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ea, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader638, %.lr.ph
  %.0100406 = phi ptr [ %i.ec, %.lr.ph ], [ %.0100406.ph, %.lr.ph.preheader638 ] ; 2 uses
  %.0323405 = phi i32 [ %.sroa.speculated, %.lr.ph ], [ %.0323405.ph, %.lr.ph.preheader638 ]
  %i.eb = load i32, ptr %.0100406, align 4
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %.0323405, i32 %i.eb) ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.0100406, i64 4 ; 2 uses
  %.not131 = icmp eq ptr %i.ec, %i.dk
  br i1 %.not131, label %._crit_edge, label %.lr.ph, !llvm.loop !11

_ZNSt6vectorIjSaIjEED2Ev.exit195.thread:          ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit198

_ZNSt13_Bvector_baseISaIbEED2Ev.exit192.thread:   ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i208
end_hunk_0
