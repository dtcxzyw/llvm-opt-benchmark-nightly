Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpLimMemQuasiNewtonUpdater?download=true
inline.NumInlined: 2195
inline.NumDeleted: 654
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN5Ipopt24LimMemQuasiNewtonUpdater18AugmentDenseVectorERNS_8SmartPtrINS_11DenseVectorEEEd:bb.a
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader56 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ce = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.cf = icmp ugt i64 %i.ce, -4
  br i1 %i.cf, label %._crit_edge, label %.lr.ph

bb.n:                                             ; preds = %bb.c
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %bb.f, %.noexc25, %bb.h, %bb.k, %.noexc31, %bb.m
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = load i32, ptr %i.aa, align 8, !tbaa !42
  %i.cj = add nsw i32 %i.ci, -1                   ; 2 uses
  store i32 %i.cj, ptr %i.aa, align 8, !tbaa !42
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.p, label %.body

bb.p:                                             ; preds = %bb.o
  %i.cl = load ptr, ptr %i.y, align 8, !tbaa !44
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  tail call void %i.cn(ptr noundef nonnull align 8 dereferenceable(248) %i.y) #20, !inline_history !20
  br label %.body

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv
  %i.cp = load double, ptr %i.co, align 8, !tbaa !147
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  store double %i.cp, ptr %i.cq, align 8, !tbaa !147
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !147
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next
  store double %i.cs, ptr %i.ct, align 8, !tbaa !147
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next.1
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !147
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next.1
  store double %i.cv, ptr %i.cw, align 8, !tbaa !147
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next.2
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !147
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next.2
  store double %i.cy, ptr %i.cz, align 8, !tbaa !147
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !479

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %_ZN5Ipopt11DenseVector6ValuesEv.exit34
  %.pr = load ptr, ptr %1, align 8, !tbaa !93     ; 4 uses
  %i.da = sext i32 %.021 to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.da
  store double %2, ptr %i.db, align 8, !tbaa !147
  %i.dc = load i32, ptr %i.aa, align 8, !tbaa !42
  %i.dd = add nsw i32 %i.dc, 1
  store i32 %i.dd, ptr %i.aa, align 8, !tbaa !42
  %.not.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.de = getelementptr inbounds nuw i8, ptr %.pr, i64 8 ; 2 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !42
  %i.dg = add nsw i32 %i.df, -1                   ; 2 uses
  store i32 %i.dg, ptr %i.de, align 8, !tbaa !42
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.di = load ptr, ptr %.pr, align 8, !tbaa !44
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  tail call void %i.dk(ptr noundef nonnull align 8 dereferenceable(248) %.pr) #20, !inline_history !25
  br label %bb.s

bb.s:                                             ; preds = %.thread, %._crit_edge, %bb.q, %bb.r
  store ptr %i.y, ptr %1, align 8, !tbaa !93
  %i.dl = load i32, ptr %i.aa, align 8, !tbaa !42
  %i.dm = add nsw i32 %i.dl, -1                   ; 2 uses
  store i32 %i.dm, ptr %i.aa, align 8, !tbaa !42
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.t, label %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit36

bb.t:                                             ; preds = %bb.s
  %i.do = load ptr, ptr %i.y, align 8, !tbaa !44
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8
  tail call void %i.dq(ptr noundef nonnull align 8 dereferenceable(248) %i.y) #20, !inline_history !20
  br label %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit36

_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit36: ; preds = %bb.t, %bb.s
  %i.dr = load i32, ptr %i.h, align 8, !tbaa !42
  %i.ds = add nsw i32 %i.dr, -1                   ; 2 uses
  store i32 %i.ds, ptr %i.h, align 8, !tbaa !42
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.u, label %_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit

bb.u:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit36
  %i.du = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8
  tail call void %i.dw(ptr noundef nonnull align 8 dereferenceable(160) %i.f) #20, !inline_history !29
  br label %_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit: ; preds = %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit36, %bb.u
  ret void

.body:                                            ; preds = %bb.d, %bb.n, %bb.o, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.z, %bb.d ], [ %i.cg, %bb.n ], [ %i.ch, %bb.o ], [ %i.ch, %bb.p ]
  %i.dx = load i32, ptr %i.h, align 8, !tbaa !42
  %i.dy = add nsw i32 %i.dx, -1                   ; 2 uses
  store i32 %i.dy, ptr %i.h, align 8, !tbaa !42
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.v, label %_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit39

bb.v:                                             ; preds = %.body
  %i.ea = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  tail call void %i.ec(ptr noundef nonnull align 8 dereferenceable(160) %i.f) #20, !inline_history !29
  br label %_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit39

_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit39: ; preds = %bb.v, %.body
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt24LimMemQuasiNewtonUpdater14AugmentLMatrixERNS_8SmartPtrINS_14DenseGenMatrixEEERKNS_17MultiVectorMatrixES7_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !94     ; 2 uses
  %.not107 = icmp eq ptr %i.b, null
  br i1 %.not107, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !110
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !159
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.049 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]   ; 8 uses
  %i.g = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23 ; 8 uses
  %i.h = add nsw i32 %.049, 1                     ; 6 uses
  invoke void @_ZN5Ipopt19DenseGenMatrixSpaceC1Eii(ptr noundef nonnull align 8 dereferenceable(20) %i.g, i32 noundef %i.h, i32 noundef %i.h)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 6 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !42
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8, !tbaa !42
  %i.l = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #23
          to label %.noexc unwind label %bb.j     ; 11 uses

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN5Ipopt14DenseGenMatrixC1EPKNS_19DenseGenMatrixSpaceE(ptr noundef nonnull align 8 dereferenceable(104) %i.l, ptr noundef nonnull align 8 dereferenceable(20) %i.g)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 104) #21
  br label %.body

bb.f:                                             ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 8 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !42
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  store i8 1, ptr %i.q, align 8, !tbaa !190
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(104) %i.l)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !191  ; 5 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !94     ; 4 uses
  %.not108 = icmp eq ptr %i.t, null
  br i1 %.not108, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  store i8 1, ptr %i.u, align 8, !tbaa !190
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(104) %i.t)
          to label %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit58 unwind label %bb.k

_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit58:        ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !191  ; 3 uses
  %i.x = icmp sgt i32 %.049, 0
  br i1 %i.x, label %.preheader109.preheader, label %.preheader

.preheader109.preheader:                          ; preds = %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit58
  %i.y = zext nneg i32 %.049 to i64               ; 11 uses
  %i.z = zext nneg i32 %i.h to i64                ; 2 uses
  %4 = mul nuw nsw i64 %i.y, %i.y
  %5 = shl i64 %4, 3
  %scevgep173 = getelementptr i8, ptr %i.w, i64 %5
  %6 = add nuw nsw i64 %i.y, 2305843009213693951
  %7 = mul i64 %6, %i.z
  %8 = add i64 %7, %i.y
  %i.aa = shl i64 %8, 3
  %scevgep172 = getelementptr i8, ptr %i.s, i64 %i.aa
  %min.iters.check = icmp ult i32 %.049, 4
  %bound0 = icmp ult ptr %i.s, %scevgep173
  %bound1 = icmp ult ptr %i.w, %scevgep172
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %i.y, 2147483644               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.y
  %xtraiter = and i64 %i.y, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader109

.preheader109:                                    ; preds = %.preheader109.preheader, %._crit_edge
  %indvars.iv132 = phi i64 [ 0, %.preheader109.preheader ], [ %indvars.iv.next133, %._crit_edge ] ; 3 uses
  %i.ab = mul nuw nsw i64 %indvars.iv132, %i.y
  %i.ac = mul nuw nsw i64 %indvars.iv132, %i.z
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ab ; 6 uses
  %invariant.gep158 = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ac ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader109, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader109 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %wide.load = load <2 x double>, ptr %i.ad, align 8, !tbaa !147, !alias.scope !492
  %wide.load173 = load <2 x double>, ptr %i.ae, align 8, !tbaa !147, !alias.scope !492
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep158, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <2 x double> %wide.load, ptr %i.af, align 8, !tbaa !147, !alias.scope !493, !noalias !492
  store <2 x double> %wide.load173, ptr %i.ag, align 8, !tbaa !147, !alias.scope !493, !noalias !492
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !483

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader109, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader109 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.ai = load double, ptr %gep.prol, align 8, !tbaa !147
  %gep159.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep158, i64 %indvars.iv.prol
  store double %i.ai, ptr %gep159.prol, align 8, !tbaa !147
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !484

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.aj = sub nsw i64 %indvars.iv.ph, %i.y
  %i.ak = icmp ugt i64 %i.aj, -4
  br i1 %i.ak, label %._crit_edge, label %scalar.ph

bb.i:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 24) #21
  br label %_ZN5Ipopt8SmartPtrINS_19DenseGenMatrixSpaceEED2Ev.exit84

bb.j:                                             ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.h, %bb.f
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit77

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond136.not = icmp eq i64 %indvars.iv.next133, %i.y
  br i1 %exitcond136.not, label %.loopexit, label %.preheader109, !llvm.loop !485

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ao = load double, ptr %gep, align 8, !tbaa !147
  %gep159 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep158, i64 %indvars.iv
  store double %i.ao, ptr %gep159, align 8, !tbaa !147
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.ap = load double, ptr %gep.1, align 8, !tbaa !147
  %gep159.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep158, i64 %indvars.iv.next
  store double %i.ap, ptr %gep159.1, align 8, !tbaa !147
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.aq = load double, ptr %gep.2, align 8, !tbaa !147
  %gep159.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep158, i64 %indvars.iv.next.1
  store double %i.aq, ptr %gep159.2, align 8, !tbaa !147
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.ar = load double, ptr %gep.3, align 8, !tbaa !147
  %gep159.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep158, i64 %indvars.iv.next.2
  store double %i.ar, ptr %gep159.3, align 8, !tbaa !147
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.y
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !486

.loopexit:                                        ; preds = %._crit_edge, %bb.g
  %i.as = icmp sgt i32 %.049, 0
  br i1 %i.as, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.loopexit
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.au = zext nneg i32 %.049 to i64              ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ay = zext nneg i32 %i.h to i64
  %invariant.gep162.sink = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.au
  br label %bb.l

.preheader:                                       ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit73, %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit58, %.loopexit
  %.not119 = icmp slt i32 %.049, 0
  br i1 %.not119, label %._crit_edge122, label %.lr.ph121

.lr.ph121:                                        ; preds = %.preheader
  %i.az = mul nuw nsw i32 %i.h, %.049
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 3
  %scevgep = getelementptr i8, ptr %i.s, i64 %i.bb
  %i.bc = zext nneg i32 %i.h to i64
  %i.bd = shl nuw nsw i64 %i.bc, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.bd, i1 false), !tbaa !147
  br label %._crit_edge122

bb.l:                                             ; preds = %.lr.ph, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit73
  %indvars.iv137 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next138, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit73 ] ; 4 uses
  %i.be = load ptr, ptr %i.at, align 8, !tbaa !130, !noalias !494
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.au
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !131, !noalias !494 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i:  ; preds = %bb.l
  %i.bh = load ptr, ptr %i.av, align 8, !tbaa !134, !noalias !494
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.au
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !78, !noalias !494 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i, label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i, %bb.l
  %.0.i3.i = phi ptr [ %i.bj, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i ], [ %i.bg, %bb.l ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 8 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !42, !noalias !494
  %i.bm = add nsw i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bk, align 8, !tbaa !42, !noalias !494
  br label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit

_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit:   ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i
  %.0.i4.i = phi ptr [ null, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i ], [ %.0.i3.i, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i ] ; 18 uses
  %i.bn = load ptr, ptr %i.aw, align 8, !tbaa !130, !noalias !495
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv137
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !131, !noalias !495 ; 2 uses
  %.not.i.i59 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i59, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i63, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i60

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i63: ; preds = %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit
  %i.bq = load ptr, ptr %i.ax, align 8, !tbaa !134, !noalias !495
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv137
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !78, !noalias !495 ; 2 uses
  %.not.i.i.i64 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i64, label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit65, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i60

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i60: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i63, %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit
  %.0.i3.i61 = phi ptr [ %i.bs, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i63 ], [ %i.bp, %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i3.i61, i64 8 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !42, !noalias !495
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !42, !noalias !495
  br label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit65

_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit65: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i60, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i63
  %.0.i4.i62 = phi ptr [ null, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i63 ], [ %.0.i3.i61, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i60 ] ; 10 uses
  %i.bw = icmp eq ptr %.0.i4.i, %.0.i4.i62
  br i1 %i.bw, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit65
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 88 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !144
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 48 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !122
  %.not.i.i66 = icmp eq i32 %i.by, %i.ca
  br i1 %.not.i.i66, label %._crit_edge.i.i, label %bb.n

._crit_edge.i.i:                                  ; preds = %bb.m
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 96
  %.pre.i.i = load double, ptr %.phi.trans.insert.i.i, align 8, !tbaa !145
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit

bb.n:                                             ; preds = %bb.m
  %i.cb = load ptr, ptr %.0.i4.i, align 8, !tbaa !44
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = invoke noundef double %i.cd(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i)
          to label %.noexc67 unwind label %bb.t, !inline_history !160 ; 2 uses

end_hunk_0
begin_hunk_1_@_ZN5Ipopt24LimMemQuasiNewtonUpdater14AugmentLMatrixERNS_8SmartPtrINS_14DenseGenMatrixEEERKNS_17MultiVectorMatrixES7_:bb.a
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i) #20, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit73

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit73:      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit, %bb.s
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %exitcond141.not = icmp eq i64 %indvars.iv.next138, %i.au
  br i1 %exitcond141.not, label %.preheader, label %bb.l, !llvm.loop !491

bb.t:                                             ; preds = %bb.o, %bb.p, %.noexc69, %bb.n
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i4.i62, i64 8 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !42
  %i.dh = add nsw i32 %i.dg, -1                   ; 2 uses
  store i32 %i.dh, ptr %i.df, align 8, !tbaa !42
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.u, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit75.thread

bb.u:                                             ; preds = %bb.t
  %i.dj = load ptr, ptr %.0.i4.i62, align 8, !tbaa !44
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i62) #20, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit75.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit75.thread: ; preds = %bb.t, %bb.u
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 8 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !42
  %i.do = add nsw i32 %i.dn, -1                   ; 2 uses
  store i32 %i.do, ptr %i.dm, align 8, !tbaa !42
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.v, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit77

bb.v:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit75.thread
  %i.dq = load ptr, ptr %.0.i4.i, align 8, !tbaa !44
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i) #20, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit77

._crit_edge122:                                   ; preds = %.lr.ph121, %.preheader
  %i.dt = load i32, ptr %i.n, align 8, !tbaa !42
  %i.du = add nsw i32 %i.dt, 1
  store i32 %i.du, ptr %i.n, align 8, !tbaa !42
  %i.dv = load ptr, ptr %1, align 8, !tbaa !94    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %._crit_edge122
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !42
  %i.dy = add nsw i32 %i.dx, -1                   ; 2 uses
  store i32 %i.dy, ptr %i.dw, align 8, !tbaa !42
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ea = load ptr, ptr %i.dv, align 8, !tbaa !44
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(104) %i.dv) #20, !inline_history !26
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge122, %bb.w, %bb.x
  store ptr %i.l, ptr %1, align 8, !tbaa !94
  %i.ed = load i32, ptr %i.n, align 8, !tbaa !42
  %i.ee = add nsw i32 %i.ed, -1                   ; 2 uses
  store i32 %i.ee, ptr %i.n, align 8, !tbaa !42
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.z, label %_ZN5Ipopt8SmartPtrINS_14DenseGenMatrixEED2Ev.exit

bb.z:                                             ; preds = %bb.y
  %i.eg = load ptr, ptr %i.l, align 8, !tbaa !44
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(104) %i.l) #20, !inline_history !17
  br label %_ZN5Ipopt8SmartPtrINS_14DenseGenMatrixEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_14DenseGenMatrixEED2Ev.exit: ; preds = %bb.z, %bb.y
  %i.ej = load i32, ptr %i.i, align 8, !tbaa !42
  %i.ek = add nsw i32 %i.ej, -1                   ; 2 uses
  store i32 %i.ek, ptr %i.i, align 8, !tbaa !42
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.aa, label %_ZN5Ipopt8SmartPtrINS_19DenseGenMatrixSpaceEED2Ev.exit

bb.aa:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_14DenseGenMatrixEED2Ev.exit
  %i.em = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(20) %i.g) #20, !inline_history !28
  br label %_ZN5Ipopt8SmartPtrINS_19DenseGenMatrixSpaceEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_19DenseGenMatrixSpaceEED2Ev.exit: ; preds = %_ZN5Ipopt8SmartPtrINS_14DenseGenMatrixEED2Ev.exit, %bb.aa
  ret void

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit77:      ; preds = %bb.k, %bb.v, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit75.thread
  %.pn.pn.pn = phi { ptr, i32 } [ %i.an, %bb.k ], [ %lpad.thr_comm.split-lp, %bb.v ], [ %lpad.thr_comm.split-lp, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit75.thread ] ; 2 uses
  %i.ep = load i32, ptr %i.n, align 8, !tbaa !42
  %i.eq = add nsw i32 %i.ep, -1                   ; 2 uses
  store i32 %i.eq, ptr %i.n, align 8, !tbaa !42
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.ab, label %.body

bb.ab:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit77
  %i.es = load ptr, ptr %i.l, align 8, !tbaa !44
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(104) %i.l) #20, !inline_history !17
  br label %.body

.body:                                            ; preds = %bb.e, %bb.j, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit77, %bb.ab
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.am, %bb.j ], [ %.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit77 ], [ %.pn.pn.pn, %bb.ab ] ; 2 uses
  %i.ev = load i32, ptr %i.i, align 8, !tbaa !42
  %i.ew = add nsw i32 %i.ev, -1                   ; 2 uses
  store i32 %i.ew, ptr %i.i, align 8, !tbaa !42
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.ac, label %_ZN5Ipopt8SmartPtrINS_19DenseGenMatrixSpaceEED2Ev.exit84

bb.ac:                                            ; preds = %.body
  %i.ey = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(20) %i.g) #20, !inline_history !28
  br label %_ZN5Ipopt8SmartPtrINS_19DenseGenMatrixSpaceEED2Ev.exit84

_ZN5Ipopt8SmartPtrINS_19DenseGenMatrixSpaceEED2Ev.exit84: ; preds = %bb.ac, %.body, %bb.i
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.al, %bb.i ], [ %.pn.pn.pn.pn, %.body ], [ %.pn.pn.pn.pn, %bb.ac ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt24LimMemQuasiNewtonUpdater18AugmentSdotSMatrixERNS_8SmartPtrINS_14DenseSymMatrixEEERKNS_17MultiVectorMatrixE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !96     ; 2 uses
  %.not99 = icmp eq ptr %i.b, null
  br i1 %.not99, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !207
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.041 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]   ; 5 uses
  %i.g = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23 ; 8 uses
  %i.h = add nsw i32 %.041, 1                     ; 3 uses
  invoke void @_ZN5Ipopt19DenseSymMatrixSpaceC1Ei(ptr noundef nonnull align 8 dereferenceable(20) %i.g, i32 noundef %i.h)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 6 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !42
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8, !tbaa !42
  %i.l = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #23
          to label %.noexc unwind label %bb.j     ; 11 uses

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN5Ipopt14DenseSymMatrixC1EPKNS_19DenseSymMatrixSpaceE(ptr noundef nonnull align 8 dereferenceable(97) %i.l, ptr noundef nonnull align 8 dereferenceable(20) %i.g)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 104) #21
  br label %.body

bb.f:                                             ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 8 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !42
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 8, !tbaa !42
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(97) %i.l)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  store i8 1, ptr %i.q, align 8, !tbaa !208
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !209  ; 4 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !96     ; 4 uses
  %.not100 = icmp eq ptr %i.t, null
  br i1 %.not100, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(97) %i.t)
          to label %_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit50 unwind label %bb.k

_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit50:        ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  store i8 1, ptr %i.u, align 8, !tbaa !208
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !209  ; 3 uses
  %i.x = icmp sgt i32 %.041, 0
  br i1 %i.x, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit50
  %i.y = zext nneg i32 %.041 to i64               ; 7 uses
  %i.z = zext nneg i32 %i.h to i64                ; 2 uses
  %i.aa = shl nuw nsw i64 %i.y, 3                 ; 3 uses
  %i.ab = add nuw nsw i64 %i.aa, 8
  %i.ac = shl nuw nsw i64 %i.z, 3                 ; 2 uses
  %i.ad = add nuw nsw i64 %i.ac, 8
  %i.ae = getelementptr i8, ptr %i.s, i64 %i.aa
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.loopexit159
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %.loopexit159 ] ; 12 uses
  %i.af = mul nuw nsw i64 %indvars.iv, %i.y
  %i.ag = mul nuw nsw i64 %indvars.iv, %i.z
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.af ; 6 uses
  %invariant.gep142 = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ag ; 6 uses
  %i.ah = sub nsw i64 %i.y, %indvars.iv           ; 3 uses
  %min.iters.check = icmp ult i64 %i.ah, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %i.ai = mul i64 %indvars.iv, %i.ad
  %scevgep157 = getelementptr i8, ptr %i.s, i64 %i.ai
  %i.aj = mul nuw nsw i64 %indvars.iv, %i.ac
  %scevgep156 = getelementptr i8, ptr %i.ae, i64 %i.aj
  %i.ak = mul i64 %indvars.iv, %i.ab
  %scevgep155 = getelementptr i8, ptr %i.w, i64 %i.ak
  %3 = add nuw i64 %indvars.iv, 1
  %i.al = mul i64 %i.aa, %3
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.al
  %bound0 = icmp ult ptr %scevgep157, %scevgep
  %bound1 = icmp ult ptr %scevgep155, %scevgep156
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, -4                      ; 3 uses
  %i.am = add i64 %indvars.iv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = add nuw i64 %indvars.iv, %index         ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %wide.load = load <2 x double>, ptr %i.ao, align 8, !tbaa !147, !alias.scope !508
  %wide.load158 = load <2 x double>, ptr %i.ap, align 8, !tbaa !147, !alias.scope !508
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep142, i64 %i.an ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <2 x double> %wide.load, ptr %i.aq, align 8, !tbaa !147, !alias.scope !509, !noalias !508
  store <2 x double> %wide.load158, ptr %i.ar, align 8, !tbaa !147, !alias.scope !509, !noalias !508
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !499

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %.loopexit159, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %indvars.iv118.ph = phi i64 [ %indvars.iv, %vector.memcheck ], [ %indvars.iv, %.preheader ], [ %i.am, %middle.block ] ; 4 uses
  %i.at = sub i64 %i.y, %indvars.iv118.ph
  %xtraiter = and i64 %i.at, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv118.prol = phi i64 [ %indvars.iv.next119.prol, %scalar.ph.prol ], [ %indvars.iv118.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv118.prol
  %i.au = load double, ptr %gep.prol, align 8, !tbaa !147
  %gep143.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep142, i64 %indvars.iv118.prol
  store double %i.au, ptr %gep143.prol, align 8, !tbaa !147
  %indvars.iv.next119.prol = add nuw nsw i64 %indvars.iv118.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !500

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv118.unr = phi i64 [ %indvars.iv118.ph, %scalar.ph.preheader ], [ %indvars.iv.next119.prol, %scalar.ph.prol ]
  %i.av = sub i64 %indvars.iv118.ph, %i.y
  %i.aw = icmp ugt i64 %i.av, -4
  br i1 %i.aw, label %.loopexit159, label %scalar.ph

bb.i:                                             ; preds = %bb.c
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 24) #21
  br label %_ZN5Ipopt8SmartPtrINS_19DenseSymMatrixSpaceEED2Ev.exit76

bb.j:                                             ; preds = %bb.d
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.h, %bb.f
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit70

.loopexit159:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next, %i.y
  br i1 %exitcond123.not, label %.loopexit, label %.preheader, !llvm.loop !501

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv118 = phi i64 [ %indvars.iv.next119.3, %scalar.ph ], [ %indvars.iv118.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv118
  %i.ba = load double, ptr %gep, align 8, !tbaa !147
  %gep143 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep142, i64 %indvars.iv118
  store double %i.ba, ptr %gep143, align 8, !tbaa !147
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next119
  %i.bb = load double, ptr %gep.1, align 8, !tbaa !147
  %gep143.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep142, i64 %indvars.iv.next119
  store double %i.bb, ptr %gep143.1, align 8, !tbaa !147
  %indvars.iv.next119.1 = add nuw nsw i64 %indvars.iv118, 2 ; 2 uses
  %gep.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next119.1
  %i.bc = load double, ptr %gep.2, align 8, !tbaa !147
  %gep143.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep142, i64 %indvars.iv.next119.1
  store double %i.bc, ptr %gep143.2, align 8, !tbaa !147
  %indvars.iv.next119.2 = add nuw nsw i64 %indvars.iv118, 3 ; 2 uses
  %gep.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next119.2
  %i.bd = load double, ptr %gep.3, align 8, !tbaa !147
  %gep143.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep142, i64 %indvars.iv.next119.2
  store double %i.bd, ptr %gep143.3, align 8, !tbaa !147
  %indvars.iv.next119.3 = add nuw nsw i64 %indvars.iv118, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next119.3, %i.y
  br i1 %exitcond.not.3, label %.loopexit159, label %scalar.ph, !llvm.loop !502

.loopexit:                                        ; preds = %.loopexit159, %_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit50, %bb.g
  %.not108 = icmp slt i32 %.041, 0
  br i1 %.not108, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.bf = zext nneg i32 %.041 to i64              ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.bh = zext nneg i32 %i.h to i64               ; 2 uses
  %invariant.gep146.sink = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bf
  br label %bb.n

._crit_edge:                                      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66, %.loopexit
  %i.bi = load i32, ptr %i.n, align 8, !tbaa !42
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.n, align 8, !tbaa !42
  %i.bk = load ptr, ptr %1, align 8, !tbaa !96    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i, label %bb.y, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !42
  %i.bn = add nsw i32 %i.bm, -1                   ; 2 uses
  store i32 %i.bn, ptr %i.bl, align 8, !tbaa !42
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.m, label %bb.y

bb.m:                                             ; preds = %bb.l
  %i.bp = load ptr, ptr %i.bk, align 8, !tbaa !44
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(97) %i.bk) #20, !inline_history !27
  br label %bb.y

bb.n:                                             ; preds = %.lr.ph, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66
  %indvars.iv124 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next125, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66 ] ; 4 uses
  %i.bs = load ptr, ptr %i.be, align 8, !tbaa !130, !noalias !510 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bf
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !131, !noalias !510 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i:  ; preds = %bb.n
  %i.bv = load ptr, ptr %i.bg, align 8, !tbaa !134, !noalias !510
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bf
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !78, !noalias !510 ; 2 uses
  %.not.i.i.i51 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i51, label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i, %bb.n
  %.0.i3.i = phi ptr [ %i.bx, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i ], [ %i.bu, %bb.n ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 8 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !42, !noalias !510
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %i.by, align 8, !tbaa !42, !noalias !510
  br label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit

_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit:   ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i
  %.0.i4.i = phi ptr [ null, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i ], [ %.0.i3.i, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i ] ; 18 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv124
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !131, !noalias !511 ; 2 uses
  %.not.i.i52 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i52, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i56, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i53

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i56: ; preds = %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit
  %i.cd = load ptr, ptr %i.bg, align 8, !tbaa !134, !noalias !511
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv124
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !78, !noalias !511 ; 2 uses
  %.not.i.i.i57 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i57, label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit58, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i53

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i53: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i56, %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit
  %.0.i3.i54 = phi ptr [ %i.cf, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i56 ], [ %i.cc, %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i3.i54, i64 8 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !42, !noalias !511
  %i.ci = add nsw i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cg, align 8, !tbaa !42, !noalias !511
  br label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit58

_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit58: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i53, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i56
  %.0.i4.i55 = phi ptr [ null, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i56 ], [ %.0.i3.i54, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i53 ] ; 10 uses
  %i.cj = icmp eq ptr %.0.i4.i, %.0.i4.i55
  br i1 %i.cj, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit58
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 88 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !144
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 48 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !122
  %.not.i.i59 = icmp eq i32 %i.cl, %i.cn
  br i1 %.not.i.i59, label %._crit_edge.i.i, label %bb.p

._crit_edge.i.i:                                  ; preds = %bb.o
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 96
  %.pre.i.i = load double, ptr %.phi.trans.insert.i.i, align 8, !tbaa !145
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit

bb.p:                                             ; preds = %bb.o
  %i.co = load ptr, ptr %.0.i4.i, align 8, !tbaa !44
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  %i.cq = load ptr, ptr %i.cp, align 8
end_hunk_1
begin_hunk_2_@_ZN5Ipopt24LimMemQuasiNewtonUpdater16ShiftSdotSMatrixERNS_8SmartPtrINS_14DenseSymMatrixEEERKNS_17MultiVectorMatrixE:bb.a
.noexc55:                                         ; preds = %bb.j
  br i1 %i.cp, label %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread, label %bb.k

bb.k:                                             ; preds = %.noexc55
  %i.cq = load ptr, ptr %.0.i4.i, align 8, !tbaa !44
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = invoke noundef double %i.cs(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i50)
          to label %.noexc56 unwind label %bb.o, !inline_history !160

.noexc56:                                         ; preds = %bb.k
  store double %i.ct, ptr %i.a, align 8, !tbaa !147
  invoke void @_ZN5Ipopt13CachedResultsIdE19AddCachedResult2DepERKdPKNS_12TaggedObjectES6_(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i50)
          to label %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread unwind label %bb.o

_ZNK5Ipopt6Vector3DotERKS0_.exit.thread:          ; preds = %.noexc55, %.noexc56
  %i.cu = load double, ptr %i.a, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.l

_ZNK5Ipopt6Vector3DotERKS0_.exit:                 ; preds = %._crit_edge.i.i, %.noexc
  %i.cv = phi double [ %.pre.i.i, %._crit_edge.i.i ], [ %i.cl, %.noexc ] ; 2 uses
  %i.cw = fmul double %i.cv, %i.cv
  br label %bb.l

bb.l:                                             ; preds = %_ZNK5Ipopt6Vector3DotERKS0_.exit, %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread
  %.sink = phi double [ %i.cw, %_ZNK5Ipopt6Vector3DotERKS0_.exit ], [ %i.cu, %_ZNK5Ipopt6Vector3DotERKS0_.exit.thread ]
  %i.cx = mul nuw nsw i64 %indvars.iv110, %i.aw
  %gep131 = getelementptr [8 x i8], ptr %invariant.gep130.sink, i64 %i.cx
  store double %.sink, ptr %gep131, align 8, !tbaa !147
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i4.i50, i64 8 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !42
  %i.da = add nsw i32 %i.cz, -1                   ; 2 uses
  store i32 %i.da, ptr %i.cy, align 8, !tbaa !42
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.m, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.dc = load ptr, ptr %.0.i4.i50, align 8, !tbaa !44
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i50) #20, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit:        ; preds = %bb.m, %bb.l
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 8 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !42
  %i.dh = add nsw i32 %i.dg, -1                   ; 2 uses
  store i32 %i.dh, ptr %i.df, align 8, !tbaa !42
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.n, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60

bb.n:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.dj = load ptr, ptr %.0.i4.i, align 8, !tbaa !44
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i) #20, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit60:      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit, %bb.n
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count113
  br i1 %exitcond114.not, label %._crit_edge, label %bb.g, !llvm.loop !542

bb.o:                                             ; preds = %bb.j, %bb.k, %.noexc56, %bb.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i4.i50, i64 8 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !42
  %i.do = add nsw i32 %i.dn, -1                   ; 2 uses
  store i32 %i.do, ptr %i.dm, align 8, !tbaa !42
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.p, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit62.thread

bb.p:                                             ; preds = %bb.o
  %i.dq = load ptr, ptr %.0.i4.i50, align 8, !tbaa !44
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i50) #20, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit62.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit62.thread: ; preds = %bb.o, %bb.p
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 8 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !42
  %i.dv = add nsw i32 %i.du, -1                   ; 2 uses
  store i32 %i.dv, ptr %i.dt, align 8, !tbaa !42
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.q, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64

bb.q:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit62.thread
  %i.dx = load ptr, ptr %.0.i4.i, align 8, !tbaa !44
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i) #20, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64

bb.r:                                             ; preds = %._crit_edge, %bb.e, %bb.f
  store ptr %i.i, ptr %1, align 8, !tbaa !96
  %i.ea = load i32, ptr %i.k, align 8, !tbaa !42
  %i.eb = add nsw i32 %i.ea, -1                   ; 2 uses
  store i32 %i.eb, ptr %i.k, align 8, !tbaa !42
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.s, label %_ZN5Ipopt8SmartPtrINS_14DenseSymMatrixEED2Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.ed = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(97) %i.i) #20, !inline_history !18
  br label %_ZN5Ipopt8SmartPtrINS_14DenseSymMatrixEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_14DenseSymMatrixEED2Ev.exit: ; preds = %bb.r, %bb.s
  ret void

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64:      ; preds = %bb.d, %bb.q, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit62.thread
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ax, %bb.d ], [ %lpad.thr_comm.split-lp, %bb.q ], [ %lpad.thr_comm.split-lp, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit62.thread ] ; 2 uses
  %i.eg = load i32, ptr %i.k, align 8, !tbaa !42
  %i.eh = add nsw i32 %i.eg, -1                   ; 2 uses
  store i32 %i.eh, ptr %i.k, align 8, !tbaa !42
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.t, label %common.resume

bb.t:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit64
  %i.ej = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(97) %i.i) #20, !inline_history !18
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt24LimMemQuasiNewtonUpdater18AugmentSTDRSMatrixERNS_8SmartPtrINS_14DenseSymMatrixEEERKNS_17MultiVectorMatrixES7_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !96     ; 2 uses
  %.not99 = icmp eq ptr %i.b, null
  br i1 %.not99, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !207
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.041 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]   ; 5 uses
  %i.g = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23 ; 8 uses
  %i.h = add nsw i32 %.041, 1                     ; 3 uses
  invoke void @_ZN5Ipopt19DenseSymMatrixSpaceC1Ei(ptr noundef nonnull align 8 dereferenceable(20) %i.g, i32 noundef %i.h)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 6 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !42
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8, !tbaa !42
  %i.l = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #23
          to label %.noexc unwind label %bb.j     ; 11 uses

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN5Ipopt14DenseSymMatrixC1EPKNS_19DenseSymMatrixSpaceE(ptr noundef nonnull align 8 dereferenceable(97) %i.l, ptr noundef nonnull align 8 dereferenceable(20) %i.g)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 104) #21
  br label %.body

bb.f:                                             ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 8 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !42
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 8, !tbaa !42
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(97) %i.l)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  store i8 1, ptr %i.q, align 8, !tbaa !208
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !209  ; 4 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !96     ; 4 uses
  %.not100 = icmp eq ptr %i.t, null
  br i1 %.not100, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(97) %i.t)
          to label %_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit50 unwind label %bb.k

_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit50:        ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  store i8 1, ptr %i.u, align 8, !tbaa !208
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !209  ; 3 uses
  %i.x = icmp sgt i32 %.041, 0
  br i1 %i.x, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit50
  %i.y = zext nneg i32 %.041 to i64               ; 7 uses
  %i.z = zext nneg i32 %i.h to i64                ; 2 uses
  %i.aa = shl nuw nsw i64 %i.y, 3                 ; 3 uses
  %i.ab = add nuw nsw i64 %i.aa, 8
  %i.ac = shl nuw nsw i64 %i.z, 3                 ; 2 uses
  %i.ad = add nuw nsw i64 %i.ac, 8
  %i.ae = getelementptr i8, ptr %i.s, i64 %i.aa
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.loopexit159
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %.loopexit159 ] ; 12 uses
  %i.af = mul nuw nsw i64 %indvars.iv, %i.y
  %i.ag = mul nuw nsw i64 %indvars.iv, %i.z
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.af ; 6 uses
  %invariant.gep142 = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ag ; 6 uses
  %i.ah = sub nsw i64 %i.y, %indvars.iv           ; 3 uses
  %min.iters.check = icmp ult i64 %i.ah, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %i.ai = mul i64 %indvars.iv, %i.ad
  %scevgep157 = getelementptr i8, ptr %i.s, i64 %i.ai
  %i.aj = mul nuw nsw i64 %indvars.iv, %i.ac
  %scevgep156 = getelementptr i8, ptr %i.ae, i64 %i.aj
  %i.ak = mul i64 %indvars.iv, %i.ab
  %scevgep155 = getelementptr i8, ptr %i.w, i64 %i.ak
  %4 = add nuw i64 %indvars.iv, 1
  %i.al = mul i64 %i.aa, %4
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.al
  %bound0 = icmp ult ptr %scevgep157, %scevgep
  %bound1 = icmp ult ptr %scevgep155, %scevgep156
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, -4                      ; 3 uses
  %i.am = add i64 %indvars.iv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = add nuw i64 %indvars.iv, %index         ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %wide.load = load <2 x double>, ptr %i.ao, align 8, !tbaa !147, !alias.scope !558
  %wide.load158 = load <2 x double>, ptr %i.ap, align 8, !tbaa !147, !alias.scope !558
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep142, i64 %i.an ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <2 x double> %wide.load, ptr %i.aq, align 8, !tbaa !147, !alias.scope !559, !noalias !558
  store <2 x double> %wide.load158, ptr %i.ar, align 8, !tbaa !147, !alias.scope !559, !noalias !558
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !549

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %.loopexit159, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %indvars.iv118.ph = phi i64 [ %indvars.iv, %vector.memcheck ], [ %indvars.iv, %.preheader ], [ %i.am, %middle.block ] ; 4 uses
  %i.at = sub i64 %i.y, %indvars.iv118.ph
  %xtraiter = and i64 %i.at, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv118.prol = phi i64 [ %indvars.iv.next119.prol, %scalar.ph.prol ], [ %indvars.iv118.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv118.prol
  %i.au = load double, ptr %gep.prol, align 8, !tbaa !147
  %gep143.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep142, i64 %indvars.iv118.prol
  store double %i.au, ptr %gep143.prol, align 8, !tbaa !147
  %indvars.iv.next119.prol = add nuw nsw i64 %indvars.iv118.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !550

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv118.unr = phi i64 [ %indvars.iv118.ph, %scalar.ph.preheader ], [ %indvars.iv.next119.prol, %scalar.ph.prol ]
  %i.av = sub i64 %indvars.iv118.ph, %i.y
  %i.aw = icmp ugt i64 %i.av, -4
  br i1 %i.aw, label %.loopexit159, label %scalar.ph

bb.i:                                             ; preds = %bb.c
  %i.ax = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 24) #21
  br label %_ZN5Ipopt8SmartPtrINS_19DenseSymMatrixSpaceEED2Ev.exit76

bb.j:                                             ; preds = %bb.d
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.h, %bb.f
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit70

.loopexit159:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next, %i.y
  br i1 %exitcond123.not, label %.loopexit, label %.preheader, !llvm.loop !551

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv118 = phi i64 [ %indvars.iv.next119.3, %scalar.ph ], [ %indvars.iv118.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv118
  %i.ba = load double, ptr %gep, align 8, !tbaa !147
  %gep143 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep142, i64 %indvars.iv118
  store double %i.ba, ptr %gep143, align 8, !tbaa !147
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next119
  %i.bb = load double, ptr %gep.1, align 8, !tbaa !147
  %gep143.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep142, i64 %indvars.iv.next119
  store double %i.bb, ptr %gep143.1, align 8, !tbaa !147
  %indvars.iv.next119.1 = add nuw nsw i64 %indvars.iv118, 2 ; 2 uses
  %gep.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next119.1
  %i.bc = load double, ptr %gep.2, align 8, !tbaa !147
  %gep143.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep142, i64 %indvars.iv.next119.1
  store double %i.bc, ptr %gep143.2, align 8, !tbaa !147
  %indvars.iv.next119.2 = add nuw nsw i64 %indvars.iv118, 3 ; 2 uses
  %gep.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next119.2
  %i.bd = load double, ptr %gep.3, align 8, !tbaa !147
  %gep143.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep142, i64 %indvars.iv.next119.2
  store double %i.bd, ptr %gep143.3, align 8, !tbaa !147
  %indvars.iv.next119.3 = add nuw nsw i64 %indvars.iv118, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next119.3, %i.y
  br i1 %exitcond.not.3, label %.loopexit159, label %scalar.ph, !llvm.loop !552

.loopexit:                                        ; preds = %.loopexit159, %_ZN5Ipopt14DenseSymMatrix6ValuesEv.exit50, %bb.g
  %.not108 = icmp slt i32 %.041, 0
  br i1 %.not108, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.bf = zext nneg i32 %.041 to i64              ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.bj = zext nneg i32 %i.h to i64               ; 2 uses
  %invariant.gep146.sink = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bf
  br label %bb.n

._crit_edge:                                      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66, %.loopexit
  %i.bk = load i32, ptr %i.n, align 8, !tbaa !42
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.n, align 8, !tbaa !42
  %i.bm = load ptr, ptr %1, align 8, !tbaa !96    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i, label %bb.y, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !42
  %i.bp = add nsw i32 %i.bo, -1                   ; 2 uses
  store i32 %i.bp, ptr %i.bn, align 8, !tbaa !42
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.m, label %bb.y

bb.m:                                             ; preds = %bb.l
  %i.br = load ptr, ptr %i.bm, align 8, !tbaa !44
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(97) %i.bm) #20, !inline_history !27
  br label %bb.y

bb.n:                                             ; preds = %.lr.ph, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66
  %indvars.iv124 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next125, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit66 ] ; 4 uses
  %i.bu = load ptr, ptr %i.be, align 8, !tbaa !130, !noalias !560
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bf
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !131, !noalias !560 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i:  ; preds = %bb.n
  %i.bx = load ptr, ptr %i.bg, align 8, !tbaa !134, !noalias !560
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bf
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !78, !noalias !560 ; 2 uses
  %.not.i.i.i51 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i51, label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i, %bb.n
  %.0.i3.i = phi ptr [ %i.bz, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i ], [ %i.bw, %bb.n ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 8 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !42, !noalias !560
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr %i.ca, align 8, !tbaa !42, !noalias !560
  br label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit

_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit:   ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i
  %.0.i4.i = phi ptr [ null, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i ], [ %.0.i3.i, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i ] ; 18 uses
  %i.cd = load ptr, ptr %i.bh, align 8, !tbaa !130, !noalias !561
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv124
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !131, !noalias !561 ; 2 uses
  %.not.i.i52 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i52, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i56, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i53

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i56: ; preds = %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit
  %i.cg = load ptr, ptr %i.bi, align 8, !tbaa !134, !noalias !561
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv124
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !78, !noalias !561 ; 2 uses
  %.not.i.i.i57 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i57, label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit58, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i53

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i53: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i56, %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit
  %.0.i3.i54 = phi ptr [ %i.ci, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i56 ], [ %i.cf, %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i3.i54, i64 8 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !42, !noalias !561
  %i.cl = add nsw i32 %i.ck, 1
  store i32 %i.cl, ptr %i.cj, align 8, !tbaa !42, !noalias !561
  br label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit58

_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit58: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i53, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i56
  %.0.i4.i55 = phi ptr [ null, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i56 ], [ %.0.i3.i54, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread.i53 ] ; 10 uses
  %i.cm = icmp eq ptr %.0.i4.i, %.0.i4.i55
  br i1 %i.cm, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit58
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 88 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !144
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 48 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !122
  %.not.i.i59 = icmp eq i32 %i.co, %i.cq
  br i1 %.not.i.i59, label %._crit_edge.i.i, label %bb.p

._crit_edge.i.i:                                  ; preds = %bb.o
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 96
  %.pre.i.i = load double, ptr %.phi.trans.insert.i.i, align 8, !tbaa !145
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit

bb.p:                                             ; preds = %bb.o
end_hunk_2
