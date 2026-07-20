inline.NumInlined: 1572
inline.NumDeleted: 755
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN6Assimp11MDLImporter34HandleMaterialReferences_3DGS_MDL7Ev:bb.a
bb.g:                                             ; preds = %.lr.ph31
  %i.bo = add i32 %i.bl, -1
  store i32 %i.bo, ptr %i.bk, align 8
  %.pre60 = load ptr, ptr %i.b, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph31
  %i.bp = phi ptr [ %.pre60, %bb.g ], [ %i.bf, %.lr.ph31 ] ; 3 uses
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = zext i32 %i.br to i64
  %i.bt = icmp samesign ult i64 %indvars.iv.next51, %i.bs
  br i1 %i.bt, label %.lr.ph31, label %.loopexit, !llvm.loop !74

bb.i:                                             ; preds = %._crit_edge36, %.lr.ph42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %i.bu = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = zext i32 %i.bw to i64
  %i.by = icmp samesign ult i64 %indvars.iv.next54, %i.bx
  br i1 %i.by, label %.lr.ph42, label %._crit_edge43, !llvm.loop !75
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11MDLImporter29AddBonesToNodeGraph_3DGS_MDL7EPPKNS_3MDL12IntBone_MDL7EP6aiNodet(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(159) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i16 noundef zeroext %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.aiString, align 4           ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 1              ; 2 uses
  %.not39 = icmp eq i32 %i.d, 0
  br i1 %.not39, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = zext i16 %3 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1104 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 1104
  %i.h = load i32, ptr %i.g, align 8
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #31
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 1112 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8
  %i.m = load i32, ptr %i.c, align 1              ; 2 uses
  %.not40 = icmp eq i32 %i.m, 0
  br i1 %.not40, label %._crit_edge38, label %.lr.ph37

.lr.ph37:                                         ; preds = %._crit_edge
  %i.n = zext i16 %3 to i64
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.p = phi i32 [ %i.d, %.lr.ph ], [ %i.x, %bb.d ]
  %.02532 = phi ptr [ %1, %.lr.ph ], [ %i.q, %bb.d ] ; 2 uses
  %.02631 = phi i32 [ 0, %.lr.ph ], [ %i.y, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %.02532, i64 8
  %i.r = load ptr, ptr %.02532, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1120
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.t, %i.e
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = load i32, ptr %i.f, align 8
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.f, align 8
  %.pre = load i32, ptr %i.c, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = phi i32 [ %.pre, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %i.y = add nuw i32 %.02631, 1                   ; 2 uses
  %i.z = icmp ult i32 %i.y, %i.x
  br i1 %i.z, label %bb.b, label %._crit_edge, !llvm.loop !76

._crit_edge38:                                    ; preds = %bb.h, %._crit_edge
  ret void

bb.e:                                             ; preds = %.lr.ph37, %bb.h
  %i.aa = phi i32 [ %i.m, %.lr.ph37 ], [ %i.ar, %bb.h ]
  %.035 = phi ptr [ %1, %.lr.ph37 ], [ %i.ab, %bb.h ] ; 2 uses
  %.02734 = phi i32 [ 0, %.lr.ph37 ], [ %.1, %bb.h ] ; 3 uses
  %.02833 = phi i32 [ 0, %.lr.ph37 ], [ %i.as, %bb.h ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.035, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %.035, align 8            ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1120
  %i.ae = load i64, ptr %i.ad, align 8
  %.not = icmp eq i64 %i.ae, %i.n
  br i1 %.not, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.af = tail call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #31 ; 6 uses
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.af)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr %i.l, align 8
  %i.ah = add i32 %.02734, 1
  %i.ai = zext i32 %.02734 to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ai
  store ptr %i.af, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.ak = load i32, ptr %i.ac, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.o, i8 0, i64 1024, i1 false)
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.ak, i32 1023) ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.am = zext nneg i32 %spec.select.i to i64     ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr nonnull align 4 %i.al, i64 %i.am, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.am
  store i8 0, ptr %i.an, align 1
  store i32 %spec.select.i, ptr %i.af, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ao, ptr nonnull align 4 %i.o, i64 %i.am, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  store i8 0, ptr %i.ap, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.aq = trunc i32 %.02833 to i16
  tail call void @_ZN6Assimp11MDLImporter29AddBonesToNodeGraph_3DGS_MDL7EPPKNS_3MDL12IntBone_MDL7EP6aiNodet(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.af, i16 noundef zeroext %i.aq)
  %.pre41 = load i32, ptr %i.c, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %i.ar = phi i32 [ %.pre41, %bb.g ], [ %i.aa, %bb.e ] ; 2 uses
  %.1 = phi i32 [ %i.ah, %bb.g ], [ %.02734, %bb.e ]
  %i.as = add nuw i32 %.02833, 1                  ; 2 uses
  %i.at = icmp ult i32 %i.as, %i.ar
  br i1 %i.at, label %bb.e, label %._crit_edge38, !llvm.loop !77

bb.i:                                             ; preds = %bb.f
  %i.au = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 1144) #29
  resume { ptr, i32 } %i.au
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11MDLImporter26BuildOutputAnims_3DGS_MDL7EPPKNS_3MDL12IntBone_MDL7E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(159) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %struct.aiString, align 4           ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noalias noundef nonnull dereferenceable(1096) ptr @_Znwm(i64 noundef 1096) #31 ; 11 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %i.c, i8 0, i64 1028, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1032 ; 4 uses
  store <2 x double> <double -1.000000e+00, double 0.000000e+00>, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1048 ; 2 uses
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1056 ; 4 uses
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1064
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1072
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1080
  store i32 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 1088
  store ptr null, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 1              ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.thread93, label %.lr.ph71.preheader

.thread93:                                        ; preds = %bb.a
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef 0) #31
  store ptr %i.m, ptr %i.f, align 8
  br label %._crit_edge80

.lr.ph71.preheader:                               ; preds = %bb.a
  %i.n = zext i32 %i.l to i64
  br label %.lr.ph71

._crit_edge72:                                    ; preds = %bb.b
  %i.o = fcmp une double %i.am, 0.000000e+00
  br i1 %i.o, label %.lr.ph79, label %bb.k

.lr.ph71:                                         ; preds = %.lr.ph71.preheader, %bb.b
  %i.p = phi i32 [ 0, %.lr.ph71.preheader ], [ %i.al, %bb.b ] ; 2 uses
  %i.q = phi double [ -1.000000e+00, %.lr.ph71.preheader ], [ %i.am, %bb.b ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph71.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1144
  %i.u = load ptr, ptr %i.t, align 8              ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 1152
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %bb.b, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph71
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.u to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 2 uses
  %3 = sdiv exact i64 %i.aa, 24                   ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.ab = icmp eq i64 %i.aa, 24
  br i1 %i.ab, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %3, -2
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi double [ %i.q, %.lr.ph.preheader ], [ %.sroa.speculated.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.06168.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ak, %._crit_edge.unr-lcssa ]
  %lcmp.mod98 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod98)
  %4 = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %.06168.epil.init
  %5 = load double, ptr %4, align 8               ; 2 uses
  %6 = fcmp olt double %.epil.init, %5
  %.sroa.speculated.epil = select i1 %6, double %5, double %.epil.init ; 2 uses
  store double %.sroa.speculated.epil, ptr %i.d, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %.sroa.speculated.lcssa = phi double [ %.sroa.speculated.1, %._crit_edge.unr-lcssa ], [ %.sroa.speculated.epil, %.lr.ph.epil.preheader ]
  %7 = add i32 %i.p, 1                            ; 2 uses
  store i32 %7, ptr %i.e, align 8
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.ac = phi double [ %i.q, %.lr.ph.preheader.new ], [ %.sroa.speculated.1, %.lr.ph ] ; 2 uses
  %.06168 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ak, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %.06168
  %i.ae = load double, ptr %i.ad, align 8         ; 2 uses
  %i.af = fcmp olt double %i.ac, %i.ae
  %.sroa.speculated = select i1 %i.af, double %i.ae, double %i.ac ; 3 uses
  store double %.sroa.speculated, ptr %i.d, align 8
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %.06168
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load double, ptr %i.ah, align 8         ; 2 uses
  %i.aj = fcmp olt double %.sroa.speculated, %i.ai
  %.sroa.speculated.1 = select i1 %i.aj, double %i.ai, double %.sroa.speculated ; 4 uses
  store double %.sroa.speculated.1, ptr %i.d, align 8
  %i.ak = add nuw i64 %.06168, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !78

bb.b:                                             ; preds = %.lr.ph71, %._crit_edge
  %i.al = phi i32 [ %i.p, %.lr.ph71 ], [ %7, %._crit_edge ] ; 2 uses
  %i.am = phi double [ %i.q, %.lr.ph71 ], [ %.sroa.speculated.lcssa, %._crit_edge ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = icmp samesign ult i64 %indvars.iv.next, %i.n
  br i1 %i.an, label %.lr.ph71, label %._crit_edge72, !llvm.loop !79

.lr.ph79:                                         ; preds = %._crit_edge72
  %i.ao = zext i32 %i.al to i64
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ap) #31
  store ptr %i.aq, ptr %i.f, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  br label %bb.c

._crit_edge80:                                    ; preds = %.loopexit, %.thread93
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  store i32 1, ptr %i.au, align 8
  %i.av = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #31
  %i.aw = load ptr, ptr %i.as, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  store ptr %i.av, ptr %i.ax, align 8
  %i.ay = load ptr, ptr %i.as, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.ba = load ptr, ptr %i.az, align 8
  store ptr %i.c, ptr %i.ba, align 8
  br label %bb.l

bb.c:                                             ; preds = %.lr.ph79, %.loopexit
  %indvars.iv88 = phi i64 [ 0, %.lr.ph79 ], [ %indvars.iv.next89, %.loopexit ] ; 2 uses
  %.06076 = phi i32 [ 0, %.lr.ph79 ], [ %.1, %.loopexit ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv88
  %i.bc = load ptr, ptr %i.bb, align 8            ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1144 ; 5 uses
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 1152 ; 4 uses
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = icmp eq ptr %i.be, %i.bg
  br i1 %i.bh, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bi = tail call noalias noundef nonnull dereferenceable(1080) ptr @_Znwm(i64 noundef 1080) #31 ; 10 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1048 ; 4 uses
  store ptr null, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 1056 ; 2 uses
  store i32 0, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 1064 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.bi, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i8 0, i64 16, i1 false)
  %i.bm = load ptr, ptr %i.f, align 8
  %i.bn = add i32 %.06076, 1                      ; 2 uses
  %i.bo = zext i32 %.06076 to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bo
  store ptr %i.bi, ptr %i.bp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.bq = load i32, ptr %i.bc, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ar, i8 0, i64 1024, i1 false)
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.bq, i32 1023) ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bs = zext nneg i32 %spec.select.i to i64     ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ar, ptr nonnull align 4 %i.br, i64 %i.bs, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bs
  store i8 0, ptr %i.bt, align 1
  store i32 %spec.select.i, ptr %i.bi, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bu, ptr nonnull align 4 %i.ar, i64 %i.bs, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bs
  store i8 0, ptr %i.bv, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.bw = load ptr, ptr %i.bf, align 8
  %i.bx = load ptr, ptr %i.bd, align 8
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24                ; 4 uses
  %i.cc = trunc i64 %i.cb to i32                  ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 1028 ; 2 uses
  store i32 %i.cc, ptr %i.cd, align 4
  %i.ce = load ptr, ptr %i.bf, align 8
  %i.cf = load ptr, ptr %i.bd, align 8
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = sdiv exact i64 %i.ci, 24
  %i.ck = trunc i64 %i.cj to i32
  store i32 %i.ck, ptr %i.bk, align 8
  %i.cl = load ptr, ptr %i.bf, align 8
  %i.cm = load ptr, ptr %i.bd, align 8
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = sdiv exact i64 %i.cp, 24
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bi, i64 1040
  store i32 %i.cr, ptr %i.cs, align 8
  %i.ct = and i64 %i.cb, 4294967295               ; 3 uses
  %i.cu = mul nuw nsw i64 %i.ct, 24
  %i.cv = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cu) #31 ; 3 uses
  %i.cw = icmp eq i32 %i.cc, 0                    ; 2 uses
  br i1 %i.cw, label %.loopexit67, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %i.ct
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %i.cy = phi ptr [ %i.cv, %bb.e ], [ %i.da, %bb.f ] ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.cz, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 24 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.cx
  br i1 %i.db, label %.loopexit67, label %bb.f

.loopexit67:                                      ; preds = %bb.f, %bb.d
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bi, i64 1032 ; 2 uses
  store ptr %i.cv, ptr %i.dc, align 8
  %i.dd = and i64 %i.cb, 4294967295               ; 4 uses
  %i.de = mul nuw nsw i64 %i.dd, 24
  %i.df = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.de) #31 ; 4 uses
  br i1 %i.cw, label %.loopexit66.thread, label %bb.g

.loopexit66.thread:                               ; preds = %.loopexit67
  store ptr %i.df, ptr %i.bl, align 8
  %i.dg = tail call noalias noundef nonnull ptr @_Znam(i64 noundef 0) #31
  store ptr %i.dg, ptr %i.bj, align 8
  br label %.loopexit

bb.g:                                             ; preds = %.loopexit67
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %i.dd
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %i.di = phi ptr [ %i.df, %bb.g ], [ %i.dk, %bb.h ] ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.di, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.dj, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 24 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.dh
  br i1 %i.dl, label %bb.i, label %bb.h

bb.i:                                             ; preds = %bb.h
  store ptr %i.df, ptr %i.bl, align 8
  %i.dm = shl nuw nsw i64 %i.dd, 5
  %i.dn = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dm) #31 ; 4 uses
  %i.do = getelementptr inbounds nuw [32 x i8], ptr %i.dn, i64 %i.dd
  %i.dp = add nuw nsw i64 %i.ct, 576460752303423487
  %i.dq = and i64 %i.dp, 576460752303423487
  %xtraiter99 = and i64 %i.cb, 7                  ; 2 uses
  %lcmp.mod100.not = icmp eq i64 %xtraiter99, 0
  br i1 %lcmp.mod100.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.i, %.prol.preheader
  %i.dr = phi ptr [ %i.du, %.prol.preheader ], [ %i.dn, %bb.i ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.i ]
  store double 0.000000e+00, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  store i32 1, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter99
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !80

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.i
  %.unr101 = phi ptr [ %i.dn, %bb.i ], [ %i.du, %.prol.preheader ]
  %i.dv = icmp samesign ult i64 %i.dq, 7
  br i1 %i.dv, label %.lr.ph75, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.dw = phi ptr [ %i.eu, %.new ], [ %.unr101, %.prol.loopexit ] ; 25 uses
  store double 0.000000e+00, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  store i32 1, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  store double 0.000000e+00, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 56
  store i32 1, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 64
  store double 0.000000e+00, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ed, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dw, i64 88
  store i32 1, ptr %i.ee, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 96
  store double 0.000000e+00, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dw, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dw, i64 120
  store i32 1, ptr %i.eh, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dw, i64 128
  store double 0.000000e+00, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dw, i64 136
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dw, i64 152
  store i32 1, ptr %i.ek, align 8
end_hunk_0
