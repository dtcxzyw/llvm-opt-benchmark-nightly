inline.NumInlined: 38
inline.NumDeleted: 30
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK4ncnn9Pooling3D7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.br = atomicrmw add ptr %i.bq, i32 -1 acq_rel, align 4
  %i.bs = icmp eq i32 %i.br, 1
  br i1 %i.bs, label %bb.n, label %_ZN4ncnn3Mat7releaseEv.exit

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !61 ; 3 uses
  %.not3.i = icmp eq ptr %i.bu, null
  %i.bv = load ptr, ptr %2, align 8, !tbaa !57    ; 3 uses
  br i1 %.not3.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !62
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  tail call void %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef %i.bv), !inline_history !64
  br label %_ZN4ncnn3Mat7releaseEv.exit

bb.p:                                             ; preds = %bb.n
  %.not.i96 = icmp eq ptr %i.bv, null
  br i1 %.not.i96, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.bv) #6
  br label %_ZN4ncnn3Mat7releaseEv.exit

_ZN4ncnn3Mat7releaseEv.exit:                      ; preds = %bb.q, %bb.p, %bb.l, %bb.m, %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.cd, align 8, !tbaa !58
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cb, i8 0, i64 20, i1 false)
  %i.ce = load <2 x ptr>, ptr %1, align 8, !tbaa !65
  store <2 x ptr> %i.ce, ptr %2, align 8, !tbaa !65
  %i.cf = load i64, ptr %i.z, align 8, !tbaa !54
  store i64 %i.cf, ptr %i.bz, align 8, !tbaa !54
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !66
  store i32 %i.ch, ptr %i.ca, align 8, !tbaa !66
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !61
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !61
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cm = load <4 x i32>, ptr %i.cl, align 8, !tbaa !50
  store <4 x i32> %i.cm, ptr %i.cb, align 8, !tbaa !50
  %i.cn = load i32, ptr %i.x, align 8, !tbaa !53
  store i32 %i.cn, ptr %i.cc, align 8, !tbaa !53
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !58
  store i64 %i.cp, ptr %i.cd, align 8, !tbaa !58
  br label %_ZN4ncnn3MataSERKS0_.exit

bb.r:                                             ; preds = %bb.h, %bb.g
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !55
  tail call void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.az, i32 noundef %i.bd, i32 noundef %i.bh, i32 noundef %i.y, i64 noundef %i.aa, ptr noundef %i.cr)
  %i.cs = load ptr, ptr %2, align 8, !tbaa !57
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %_ZN4ncnn3MataSERKS0_.exit, label %_ZNK4ncnn3Mat5emptyEv.exit82

_ZNK4ncnn3Mat5emptyEv.exit82:                     ; preds = %bb.r
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !58
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !53
  %i.cy = sext i32 %i.cx to i64
  %i.cz = mul i64 %i.cv, %i.cy
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.s

bb.s:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit82
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !9
  switch i32 %i.dc, label %_ZN4ncnn3MataSERKS0_.exit [
    i32 0, label %bb.t
    i32 1, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !59
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.q, i32 %i.de)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZNK4ncnn9Pooling3D7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.2, ptr nonnull %i.d, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.h, ptr nonnull %i.c, ptr nonnull %i.g, ptr nonnull %i.b, ptr nonnull %i.f, ptr nonnull %i.a)
  br label %_ZN4ncnn3MataSERKS0_.exit

bb.u:                                             ; preds = %bb.s
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !59
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.q, i32 %i.dg)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZNK4ncnn9Pooling3D7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.3, ptr nonnull %i.d, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.h, ptr nonnull %i.c, ptr nonnull %i.g, ptr nonnull %i.b, ptr nonnull %i.f, ptr nonnull %i.a)
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %bb.r, %_ZN4ncnn3Mat7releaseEv.exit, %bb.i, %bb.t, %bb.u, %bb.s, %_ZNK4ncnn3Mat5emptyEv.exit82
  %.060 = phi i32 [ 0, %bb.t ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit82 ], [ 0, %bb.s ], [ 0, %bb.u ], [ 0, %bb.i ], [ 0, %_ZN4ncnn3Mat7releaseEv.exit ], [ -100, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  br label %_ZNK4ncnn3Mat5emptyEv.exit83.thread

bb.v:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  store i64 0, ptr %i.dn, align 8, !tbaa !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.di, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !67
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 39
  store i8 0, ptr %i.do, align 1, !tbaa !71
  invoke void @_ZNK4ncnn9Pooling3D12make_paddingERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dp = load ptr, ptr %4, align 8, !tbaa !57
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %_ZNK4ncnn3Mat5emptyEv.exit81.thread, label %_ZNK4ncnn3Mat5emptyEv.exit81

_ZNK4ncnn3Mat5emptyEv.exit81:                     ; preds = %bb.w
  %i.dr = load i64, ptr %i.dn, align 8, !tbaa !58
  %i.ds = load i32, ptr %i.dm, align 8, !tbaa !53
  %i.dt = sext i32 %i.ds to i64
  %i.du = mul i64 %i.dr, %i.dt
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %_ZNK4ncnn3Mat5emptyEv.exit81.thread, label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.y:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit81
  %i.dx = load i32, ptr %i.dj, align 4, !tbaa !47 ; 2 uses
  store i32 %i.dx, ptr %i.a, align 4, !tbaa !50
  %i.dy = load i32, ptr %i.dk, align 8, !tbaa !51 ; 2 uses
  store i32 %i.dy, ptr %i.b, align 4, !tbaa !50
  %i.dz = load i32, ptr %i.dl, align 4, !tbaa !52 ; 2 uses
  store i32 %i.dz, ptr %i.c, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !28
  %i.ec = sub nsw i32 %i.dx, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !31
  %i.ef = sdiv i32 %i.ec, %i.ee
  %i.eg = add nsw i32 %i.ef, 1                    ; 2 uses
  store i32 %i.eg, ptr %i.i, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #6
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !29
  %i.ej = sub nsw i32 %i.dy, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !32
  %i.em = sdiv i32 %i.ej, %i.el
  %i.en = add nsw i32 %i.em, 1                    ; 2 uses
  store i32 %i.en, ptr %i.j, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #6
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !30
  %i.eq = sub nsw i32 %i.dz, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.es = load i32, ptr %i.er, align 8, !tbaa !33
  %i.et = sdiv i32 %i.eq, %i.es
  %i.eu = add nsw i32 %i.et, 1                    ; 2 uses
  store i32 %i.eu, ptr %i.k, align 4, !tbaa !50
  %i.ev = load i32, ptr %i.d, align 4, !tbaa !50
  invoke void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.eg, i32 noundef %i.en, i32 noundef %i.eu, i32 noundef %i.ev, i64 noundef %i.aa, ptr noundef null)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ew = load ptr, ptr %2, align 8, !tbaa !57
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.z
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !58
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !53
  %i.fc = sext i32 %i.fb to i64
  %i.fd = mul i64 %i.ez, %i.fc
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ab:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #6
  %i.fg = load i32, ptr %i.ea, align 4, !tbaa !28 ; 7 uses
  %i.fh = load i32, ptr %i.eh, align 8, !tbaa !29 ; 4 uses
  %i.fi = mul i32 %i.fh, %i.fg                    ; 2 uses
  %i.fj = load i32, ptr %i.eo, align 4, !tbaa !30 ; 3 uses
  %i.fk = mul nsw i32 %i.fi, %i.fj                ; 4 uses
  store i32 %i.fk, ptr %i.l, align 4, !tbaa !50
  %i.fl = sext i32 %i.fk to i64                   ; 3 uses
  %i.fm = icmp slt i32 %i.fk, 0
  br i1 %i.fm, label %bb.ac, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
          to label %.noexc98 unwind label %bb.ae

.noexc98:                                         ; preds = %bb.ac
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.ab
  %.not.i.i.i.i = icmp eq i32 %i.fk, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.fn = shl nuw nsw i64 %i.fl, 2
  %i.fo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fn) #18
          to label %.noexc99 unwind label %bb.ae  ; 5 uses

.noexc99:                                         ; preds = %bb.ad
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.fl ; 2 uses
  store i32 0, ptr %i.fo, align 4, !tbaa !50
  %i.fq = add nsw i64 %i.fl, -1                   ; 2 uses
  %i.fr = icmp eq i64 %i.fq, 0
  br i1 %i.fr, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc99
  %i.fs = getelementptr i8, ptr %i.fo, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.fq, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.fs, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !50
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc99, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.9.0 = phi ptr [ %i.fp, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.fp, %.noexc99 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.0100.0 = phi ptr [ %i.fo, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.fo, %.noexc99 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #6
  store ptr %.sroa.0100.0, ptr %i.m, align 8, !tbaa !72
  %i.ft = load i32, ptr %i.a, align 4, !tbaa !50  ; 2 uses
  %i.fu = sub i32 %i.ft, %i.fg
  %i.fv = load i32, ptr %i.b, align 4, !tbaa !50
  %i.fw = sub i32 %i.fv, %i.fh
  %i.fx = mul i32 %i.fw, %i.ft
  %i.fy = icmp sgt i32 %i.fj, 0
  %i.fz = icmp sgt i32 %i.fh, 0
  %or.cond161 = and i1 %i.fy, %i.fz
  %i.ga = icmp sgt i32 %i.fg, 0
  %or.cond162 = and i1 %or.cond161, %i.ga
  br i1 %or.cond162, label %.preheader117.us.preheader, label %._crit_edge.split

.preheader117.us.preheader:                       ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.gb = zext nneg i32 %i.fg to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.fg, 8
  %n.vec = and i64 %i.gb, 2147483640              ; 4 uses
  %i.gc = trunc nuw nsw i64 %n.vec to i32         ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.gb
  br label %.preheader117.us

.preheader117.us:                                 ; preds = %.preheader117.us.preheader, %._crit_edge125.split.us.us
  %.059131.us = phi i32 [ %i.gp, %._crit_edge125.split.us.us ], [ 0, %.preheader117.us.preheader ]
  %.061130.us = phi i32 [ %i.go, %._crit_edge125.split.us.us ], [ 0, %.preheader117.us.preheader ]
  %.064129.us = phi i32 [ %7, %._crit_edge125.split.us.us ], [ 0, %.preheader117.us.preheader ] ; 2 uses
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge.us.us, %.preheader117.us
  %indvars.iv = phi i32 [ %indvars.iv.next, %._crit_edge.us.us ], [ %.064129.us, %.preheader117.us ] ; 2 uses
  %.058124.us.us = phi i32 [ %i.gn, %._crit_edge.us.us ], [ 0, %.preheader117.us ]
  %.162123.us.us = phi i32 [ %i.gm, %._crit_edge.us.us ], [ %.061130.us, %.preheader117.us ] ; 3 uses
  %6 = sext i32 %indvars.iv to i64                ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us
  %i.gd = add nsw i64 %n.vec, %6
  %i.ge = add i32 %.162123.us.us, %i.gc           ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.162123.us.us, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nsw <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  %i.gf = getelementptr [4 x i8], ptr %.sroa.0100.0, i64 %6
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.gg = getelementptr [4 x i8], ptr %i.gf, i64 %index ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  store <4 x i32> %vec.ind, ptr %i.gg, align 4, !tbaa !50
  store <4 x i32> %step.add, ptr %i.gh, align 4, !tbaa !50
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ %6, %.preheader.us.us ], [ %i.gd, %middle.block ]
  %.0120.us.us.ph = phi i32 [ 0, %.preheader.us.us ], [ %i.gc, %middle.block ]
  %.263119.us.us.ph = phi i32 [ %.162123.us.us, %.preheader.us.us ], [ %i.ge, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.a = phi i64 [ %indvars.iv.next.a, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.0120.us.us = phi i32 [ %i.gl, %scalar.ph ], [ %.0120.us.us.ph, %scalar.ph.preheader ]
  %.263119.us.us = phi i32 [ %i.gk, %scalar.ph ], [ %.263119.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.gj = getelementptr inbounds [4 x i8], ptr %.sroa.0100.0, i64 %indvars.iv.a
  store i32 %.263119.us.us, ptr %i.gj, align 4, !tbaa !50
  %indvars.iv.next.a = add nsw i64 %indvars.iv.a, 1
  %i.gk = add nsw i32 %.263119.us.us, 1           ; 2 uses
  %i.gl = add nuw nsw i32 %.0120.us.us, 1         ; 2 uses
  %exitcond.not = icmp eq i32 %i.gl, %i.fg
  br i1 %exitcond.not, label %._crit_edge.us.us, label %scalar.ph, !llvm.loop !77

._crit_edge.us.us:                                ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.ge, %middle.block ], [ %i.gk, %scalar.ph ]
  %i.gm = add nsw i32 %i.fu, %.lcssa              ; 2 uses
  %i.gn = add nuw nsw i32 %.058124.us.us, 1       ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, %i.fg
  %exitcond139.not = icmp eq i32 %i.gn, %i.fh
  br i1 %exitcond139.not, label %._crit_edge125.split.us.us, label %.preheader.us.us, !llvm.loop !78

._crit_edge125.split.us.us:                       ; preds = %._crit_edge.us.us
  %7 = add i32 %i.fi, %.064129.us
  %i.go = add nsw i32 %i.gm, %i.fx
  %i.gp = add nuw nsw i32 %.059131.us, 1          ; 2 uses
  %exitcond140.not = icmp eq i32 %i.gp, %i.fj
  br i1 %exitcond140.not, label %._crit_edge.split, label %.preheader117.us, !llvm.loop !79

._crit_edge.split:                                ; preds = %._crit_edge125.split.us.us, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !9
  switch i32 %i.gr, label %bb.al [
    i32 0, label %bb.af
    i32 1, label %bb.ag
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.gs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #6
  br label %bb.an

bb.af:                                            ; preds = %._crit_edge.split
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !59
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.q, i32 %i.gu)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZNK4ncnn9Pooling3D7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.4, ptr nonnull %i.d, ptr nonnull %4, ptr nonnull %2, ptr nonnull %i.k, ptr nonnull %i.j, ptr nonnull %i.i, ptr nonnull %0, ptr nonnull %i.l, ptr nonnull %i.m)
  br label %bb.al

bb.ag:                                            ; preds = %._crit_edge.split
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !42
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #6
  store i32 0, ptr %i.n, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #6
  store i32 0, ptr %i.o, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #6
  store i32 0, ptr %i.p, align 4, !tbaa !50
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !41
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.hb = load i32, ptr %i.dj, align 4, !tbaa !47
  %i.hc = load i32, ptr %i.r, align 4, !tbaa !47
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !34
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !35
  %i.hh = add i32 %i.hc, %i.he
  %i.hi = add i32 %i.hh, %i.hg
  %i.hj = sub i32 %i.hb, %i.hi
  store i32 %i.hj, ptr %i.n, align 4, !tbaa !50
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.hl = load <2 x i32>, ptr %i.dk, align 8, !tbaa !50
  %i.hm = load <2 x i32>, ptr %i.t, align 8, !tbaa !50
  %i.hn = load <4 x i32>, ptr %i.hk, align 4, !tbaa !50 ; 2 uses
  %i.ho = shufflevector <4 x i32> %i.hn, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.hp = add <2 x i32> %i.hm, %i.ho
  %i.hq = shufflevector <4 x i32> %i.hn, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.hr = add <2 x i32> %i.hp, %i.hq
  %i.hs = sub <2 x i32> %i.hl, %i.hr              ; 2 uses
  %i.ht = extractelement <2 x i32> %i.hs, i64 0
  store i32 %i.ht, ptr %i.o, align 4, !tbaa !50
  %i.hu = extractelement <2 x i32> %i.hs, i64 1
  store i32 %i.hu, ptr %i.p, align 4, !tbaa !50
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.hv = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !59
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.q, i32 %i.hw)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 13, ptr nonnull @_ZNK4ncnn9Pooling3D7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.5, ptr nonnull %i.d, ptr nonnull %4, ptr nonnull %2, ptr nonnull %i.k, ptr nonnull %0, ptr nonnull %i.j, ptr nonnull %i.i, ptr nonnull %i.c, ptr nonnull %i.p, ptr nonnull %i.b, ptr nonnull %i.o, ptr nonnull %i.a, ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #6
  br label %bb.al

bb.ak:                                            ; preds = %bb.ag
  %i.hx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !59
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.q, i32 %i.hy)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZNK4ncnn9Pooling3D7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.6, ptr nonnull %i.d, ptr nonnull %4, ptr nonnull %2, ptr nonnull %i.k, ptr nonnull %i.j, ptr nonnull %i.i, ptr nonnull %0, ptr nonnull %i.l, ptr nonnull %i.m)
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge.split, %bb.ak, %bb.aj, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #6
  %.not.i.i.i = icmp eq ptr %.sroa.0100.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hz = ptrtoint ptr %.sroa.9.0 to i64
  %i.ia = ptrtoint ptr %.sroa.0100.0 to i64
  %i.ib = sub i64 %i.hz, %i.ia
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0100.0, i64 noundef %i.ib) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #6
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %bb.z, %_ZNK4ncnn3Mat5emptyEv.exit, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.1 = phi i32 [ 0, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  br label %_ZNK4ncnn3Mat5emptyEv.exit81.thread

bb.an:                                            ; preds = %bb.ae, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.gs, %bb.ae ], [ %i.ff, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  br label %bb.au

_ZNK4ncnn3Mat5emptyEv.exit81.thread:              ; preds = %bb.w, %_ZNK4ncnn3Mat5emptyEv.exit81, %_ZNK4ncnn3Mat5emptyEv.exit.thread
  %.2 = phi i32 [ %.1, %_ZNK4ncnn3Mat5emptyEv.exit.thread ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit81 ], [ -100, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  %i.ic = load ptr, ptr %i.dh, align 8, !tbaa !60 ; 2 uses
  %.not.i86 = icmp eq ptr %i.ic, null
  br i1 %.not.i86, label %_ZN4ncnn3MatD2Ev.exit84, label %bb.ao

bb.ao:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit81.thread
  %i.id = atomicrmw add ptr %i.ic, i32 -1 acq_rel, align 4
  %i.ie = icmp eq i32 %i.id, 1
  br i1 %i.ie, label %bb.ap, label %_ZN4ncnn3MatD2Ev.exit84

bb.ap:                                            ; preds = %bb.ao
  %i.if = load ptr, ptr %i.di, align 8, !tbaa !61 ; 3 uses
  %.not3.i87 = icmp eq ptr %i.if, null
  %i.ig = load ptr, ptr %4, align 8, !tbaa !57    ; 3 uses
  br i1 %.not3.i87, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ih = load ptr, ptr %i.if, align 8, !tbaa !62
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 24
  %i.ij = load ptr, ptr %i.ii, align 8
  invoke void %i.ij(ptr noundef nonnull align 8 dereferenceable(8) %i.if, ptr noundef %i.ig)
          to label %_ZN4ncnn3MatD2Ev.exit84 unwind label %bb.at, !inline_history !64

bb.ar:                                            ; preds = %bb.ap
  %.not.i94 = icmp eq ptr %i.ig, null
  br i1 %.not.i94, label %_ZN4ncnn3MatD2Ev.exit84, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @free(ptr noundef nonnull %i.ig) #6
  br label %_ZN4ncnn3MatD2Ev.exit84

bb.at:                                            ; preds = %bb.aq
  %i.ik = landingpad { ptr, i32 }
          catch ptr null
  %i.il = extractvalue { ptr, i32 } %i.ik, 0
  call void @__clang_call_terminate(ptr %i.il) #19
  unreachable

_ZN4ncnn3MatD2Ev.exit84:                          ; preds = %bb.ao, %_ZNK4ncnn3Mat5emptyEv.exit81.thread, %bb.aq, %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %_ZNK4ncnn3Mat5emptyEv.exit83.thread

bb.au:                                            ; preds = %bb.an, %bb.x
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.an ], [ %i.dw, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  %i.im = load ptr, ptr %i.dh, align 8, !tbaa !60 ; 2 uses
  %.not.i89 = icmp eq ptr %i.im, null
  br i1 %.not.i89, label %_ZN4ncnn3MatD2Ev.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.in = atomicrmw add ptr %i.im, i32 -1 acq_rel, align 4
  %i.io = icmp eq i32 %i.in, 1
  br i1 %i.io, label %bb.aw, label %_ZN4ncnn3MatD2Ev.exit

bb.aw:                                            ; preds = %bb.av
  %i.ip = load ptr, ptr %i.di, align 8, !tbaa !61 ; 3 uses
  %.not3.i90 = icmp eq ptr %i.ip, null
  %i.iq = load ptr, ptr %4, align 8, !tbaa !57    ; 3 uses
  br i1 %.not3.i90, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ir = load ptr, ptr %i.ip, align 8, !tbaa !62
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  %i.it = load ptr, ptr %i.is, align 8
  invoke void %i.it(ptr noundef nonnull align 8 dereferenceable(8) %i.ip, ptr noundef %i.iq)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ba, !inline_history !64

bb.ay:                                            ; preds = %bb.aw
  %.not.i93 = icmp eq ptr %i.iq, null
  br i1 %.not.i93, label %_ZN4ncnn3MatD2Ev.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @free(ptr noundef nonnull %i.iq) #6
  br label %_ZN4ncnn3MatD2Ev.exit

bb.ba:                                            ; preds = %bb.ax
  %i.iu = landingpad { ptr, i32 }
          catch ptr null
  %i.iv = extractvalue { ptr, i32 } %i.iu, 0
  call void @__clang_call_terminate(ptr %i.iv) #19
  unreachable
end_hunk_0
