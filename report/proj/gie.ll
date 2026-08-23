Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/gie?download=true
inline.NumInlined: 207
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
loop-unroll.NumUnrolledNotLatch: 3
begin_hunk_0_@_ZL11parse_coordPKc:.preheader
bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.q, %._crit_edge56, %bb.p
  %i.bx = phi ptr [ %.pre58, %bb.p ], [ %i.bd, %bb.q ], [ %i.bd, %._crit_edge56 ], [ %i.bw, %bb.w ], [ %.pre57, %bb.v ], [ %.pre57, %bb.u ] ; 4 uses
  %.2.1 = phi double [ %i.ba, %bb.p ], [ %.02442.1, %bb.q ], [ %.02442.1, %._crit_edge56 ], [ %.1.1, %bb.w ], [ %.1.1, %bb.v ], [ %.1.1, %bb.u ]
  %.not39.1 = icmp eq ptr %.126.lcssa.1, %i.bx
  br i1 %.not39.1, label %bb.m, label %.preheader.2

.preheader.2:                                     ; preds = %bb.x
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %.2.1, ptr %i.by, align 8, !tbaa !25
  %i.bz = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL1T, i64 30184), align 8, !tbaa !106
  %i.ca = add i64 %i.bz, 1
  store i64 %i.ca, ptr getelementptr inbounds nuw (i8, ptr @_ZL1T, i64 30184), align 8, !tbaa !106
  %i.cb = load i8, ptr %i.bx, align 1, !tbaa !25  ; 2 uses
  %.not46.2 = icmp eq i8 %i.cb, 0
  br i1 %.not46.2, label %.critedge.2, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.preheader.2
  %i.cc = tail call ptr @__ctype_b_loc() #35
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !96
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %.lr.ph.2
  %i.ce = phi i8 [ %i.cb, %.lr.ph.2 ], [ %i.ck, %bb.z ]
  %.12647.2 = phi ptr [ %i.bx, %.lr.ph.2 ], [ %i.cj, %bb.z ] ; 2 uses
  %i.cf = sext i8 %i.ce to i64
  %i.cg = getelementptr inbounds [2 x i8], ptr %i.cd, i64 %i.cf
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !98
  %i.ci = and i16 %i.ch, 8192
  %.not35.2 = icmp eq i16 %i.ci, 0
  br i1 %.not35.2, label %.critedge.2, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cj = getelementptr inbounds nuw i8, ptr %.12647.2, i64 1 ; 3 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !25  ; 2 uses
  %.not.2 = icmp eq i8 %i.ck, 0
  br i1 %.not.2, label %.critedge.2, label %bb.y, !llvm.loop !179

.critedge.2:                                      ; preds = %bb.y, %bb.z, %.preheader.2
  %.126.lcssa.2 = phi ptr [ %i.bx, %.preheader.2 ], [ %i.cj, %bb.z ], [ %.12647.2, %bb.y ] ; 5 uses
  %i.cl = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.126.lcssa.2, ptr noundef nonnull dereferenceable(9) @.str.81, i64 noundef 8) #32
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %.thread.2, label %bb.aa

bb.aa:                                            ; preds = %.critedge.2
  %i.cn = call noundef double @_Z11proj_strtodPKcPPc(ptr noundef nonnull %.126.lcssa.2, ptr noundef nonnull %i.a) ; 3 uses
  %i.co = fcmp uno double %i.cn, 0.000000e+00
  %.pre61 = load ptr, ptr %i.a, align 8, !tbaa !18 ; 2 uses
  br i1 %i.co, label %bb.ai, label %._crit_edge59

.thread.2:                                        ; preds = %.critedge.2
  %i.cp = getelementptr inbounds nuw i8, ptr %.126.lcssa.2, i64 8 ; 2 uses
  store ptr %i.cp, ptr %i.a, align 8, !tbaa !18
  br label %._crit_edge59

._crit_edge59:                                    ; preds = %bb.aa, %.thread.2
  %i.cq = phi ptr [ %i.cp, %.thread.2 ], [ %.pre61, %bb.aa ] ; 3 uses
  %.02442.2 = phi double [ +inf, %.thread.2 ], [ %i.cn, %bb.aa ] ; 6 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !25  ; 2 uses
  %.not36.2 = icmp eq i8 %i.cr, 0
  br i1 %.not36.2, label %bb.ai, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge59
  %i.cs = tail call ptr @__ctype_b_loc() #35
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !96
  %i.cu = sext i8 %i.cr to i64
  %i.cv = getelementptr inbounds [2 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !98
  %i.cx = and i16 %i.cw, 8192
  %.not37.2 = icmp eq i16 %i.cx, 0
  br i1 %.not37.2, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  %i.cy = call double @proj_dmstor(ptr noundef nonnull %.126.lcssa.2, ptr noundef nonnull %i.b)
  %i.cz = fmul double %i.cy, 1.800000e+02
  %i.da = fdiv double %i.cz, f0x400921FB54442D18  ; 4 uses
  %i.db = fcmp une double %.02442.2, %i.da
  br i1 %i.db, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.dc = call double @llvm.fabs.f64(double %.02442.2) ; 2 uses
  %i.dd = call double @llvm.fabs.f64(double %i.da) ; 2 uses
  %i.de = fcmp olt double %i.dc, %i.dd
  %i.df = fadd double %i.dc, 1.000000e+00
  %i.dg = fcmp olt double %i.dd, %i.df
  %or.cond.2 = and i1 %i.de, %i.dg
  br i1 %or.cond.2, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dh = load ptr, ptr %i.b, align 8, !tbaa !18
  store ptr %i.dh, ptr %i.a, align 8, !tbaa !18
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.1.2 = phi double [ %i.da, %bb.ae ], [ %.02442.2, %bb.ac ], [ %.02442.2, %bb.ad ] ; 4 uses
  %i.di = fcmp oeq double %.1.2, %i.da
  %.pre60 = load ptr, ptr %i.a, align 8, !tbaa !18 ; 3 uses
  br i1 %i.di, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.dj = load ptr, ptr %i.b, align 8, !tbaa !18  ; 3 uses
  %.not38.2 = icmp eq ptr %.pre60, %i.dj
  br i1 %.not38.2, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.dj, ptr %i.a, align 8, !tbaa !18
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ab, %._crit_edge59, %bb.aa
  %i.dk = phi ptr [ %.pre61, %bb.aa ], [ %i.cq, %bb.ab ], [ %i.cq, %._crit_edge59 ], [ %i.dj, %bb.ah ], [ %.pre60, %bb.ag ], [ %.pre60, %bb.af ] ; 4 uses
  %.2.2 = phi double [ %i.cn, %bb.aa ], [ %.02442.2, %bb.ab ], [ %.02442.2, %._crit_edge59 ], [ %.1.2, %bb.ah ], [ %.1.2, %bb.ag ], [ %.1.2, %bb.af ]
  %.not39.2 = icmp eq ptr %.126.lcssa.2, %i.dk
  br i1 %.not39.2, label %bb.l, label %.preheader.3

.preheader.3:                                     ; preds = %bb.ai
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %.2.2, ptr %i.dl, align 8, !tbaa !25
  %i.dm = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL1T, i64 30184), align 8, !tbaa !106
  %i.dn = add i64 %i.dm, 1
  store i64 %i.dn, ptr getelementptr inbounds nuw (i8, ptr @_ZL1T, i64 30184), align 8, !tbaa !106
  %i.do = load i8, ptr %i.dk, align 1, !tbaa !25  ; 2 uses
  %.not46.3 = icmp eq i8 %i.do, 0
  br i1 %.not46.3, label %.critedge.3, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.preheader.3
  %i.dp = tail call ptr @__ctype_b_loc() #35
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !96
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ak, %.lr.ph.3
  %i.dr = phi i8 [ %i.do, %.lr.ph.3 ], [ %i.dx, %bb.ak ]
  %.12647.3 = phi ptr [ %i.dk, %.lr.ph.3 ], [ %i.dw, %bb.ak ] ; 2 uses
  %i.ds = sext i8 %i.dr to i64
  %i.dt = getelementptr inbounds [2 x i8], ptr %i.dq, i64 %i.ds
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !98
  %i.dv = and i16 %i.du, 8192
  %.not35.3 = icmp eq i16 %i.dv, 0
  br i1 %.not35.3, label %.critedge.3, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dw = getelementptr inbounds nuw i8, ptr %.12647.3, i64 1 ; 3 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !25  ; 2 uses
  %.not.3 = icmp eq i8 %i.dx, 0
  br i1 %.not.3, label %.critedge.3, label %bb.aj, !llvm.loop !179

.critedge.3:                                      ; preds = %bb.aj, %bb.ak, %.preheader.3
  %.126.lcssa.3 = phi ptr [ %i.dk, %.preheader.3 ], [ %i.dw, %bb.ak ], [ %.12647.3, %bb.aj ] ; 5 uses
  %i.dy = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.126.lcssa.3, ptr noundef nonnull dereferenceable(9) @.str.81, i64 noundef 8) #32
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %.thread.3, label %bb.al

bb.al:                                            ; preds = %.critedge.3
  %i.ea = call noundef double @_Z11proj_strtodPKcPPc(ptr noundef nonnull %.126.lcssa.3, ptr noundef nonnull %i.a) ; 3 uses
  %i.eb = fcmp uno double %i.ea, 0.000000e+00
  %.pre64 = load ptr, ptr %i.a, align 8, !tbaa !18 ; 2 uses
  br i1 %i.eb, label %bb.as, label %._crit_edge62

.thread.3:                                        ; preds = %.critedge.3
  %i.ec = getelementptr inbounds nuw i8, ptr %.126.lcssa.3, i64 8 ; 2 uses
  store ptr %i.ec, ptr %i.a, align 8, !tbaa !18
  br label %._crit_edge62

._crit_edge62:                                    ; preds = %bb.al, %.thread.3
  %i.ed = phi ptr [ %i.ec, %.thread.3 ], [ %.pre64, %bb.al ] ; 3 uses
  %.02442.3 = phi double [ +inf, %.thread.3 ], [ %i.ea, %bb.al ] ; 6 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !25  ; 2 uses
  %.not36.3 = icmp eq i8 %i.ee, 0
  br i1 %.not36.3, label %bb.as, label %bb.am

bb.am:                                            ; preds = %._crit_edge62
  %i.ef = tail call ptr @__ctype_b_loc() #35
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !96
  %i.eh = sext i8 %i.ee to i64
  %i.ei = getelementptr inbounds [2 x i8], ptr %i.eg, i64 %i.eh
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !98
  %i.ek = and i16 %i.ej, 8192
  %.not37.3 = icmp eq i16 %i.ek, 0
  br i1 %.not37.3, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am
  %i.el = call double @proj_dmstor(ptr noundef nonnull %.126.lcssa.3, ptr noundef nonnull %i.b)
  %i.em = fmul double %i.el, 1.800000e+02
  %i.en = fdiv double %i.em, f0x400921FB54442D18  ; 4 uses
  %i.eo = fcmp une double %.02442.3, %i.en
  br i1 %i.eo, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.ep = call double @llvm.fabs.f64(double %.02442.3) ; 2 uses
  %i.eq = call double @llvm.fabs.f64(double %i.en) ; 2 uses
  %i.er = fcmp olt double %i.ep, %i.eq
  %i.es = fadd double %i.ep, 1.000000e+00
  %i.et = fcmp olt double %i.eq, %i.es
  %or.cond.3 = and i1 %i.er, %i.et
  br i1 %or.cond.3, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.eu = load ptr, ptr %i.b, align 8, !tbaa !18
  store ptr %i.eu, ptr %i.a, align 8, !tbaa !18
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %.1.3 = phi double [ %i.en, %bb.ap ], [ %.02442.3, %bb.an ], [ %.02442.3, %bb.ao ] ; 3 uses
  %i.ev = fcmp oeq double %.1.3, %i.en
  %.pre63 = load ptr, ptr %i.a, align 8, !tbaa !18 ; 3 uses
  br i1 %i.ev, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ew = load ptr, ptr %i.b, align 8, !tbaa !18  ; 2 uses
  %.not38.3 = icmp eq ptr %.pre63, %i.ew
  %spec.select = select i1 %.not38.3, ptr %.pre63, ptr %i.ew
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.am, %._crit_edge62, %bb.al
  %3 = phi ptr [ %.pre64, %bb.al ], [ %i.ed, %bb.am ], [ %i.ed, %._crit_edge62 ], [ %.pre63, %bb.aq ], [ %spec.select, %bb.ar ]
  %.2.3 = phi double [ %i.ea, %bb.al ], [ %.02442.3, %bb.am ], [ %.02442.3, %._crit_edge62 ], [ %.1.3, %bb.aq ], [ %.1.3, %bb.ar ]
  %.not39.3 = icmp eq ptr %.126.lcssa.3, %3
  br i1 %.not39.3, label %bb.l, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %.2.3, ptr %i.ex, align 8, !tbaa !25
  %i.ey = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL1T, i64 30184), align 8, !tbaa !106
  %i.ez = add i64 %i.ey, 1
  store i64 %i.ez, ptr getelementptr inbounds nuw (i8, ptr @_ZL1T, i64 30184), align 8, !tbaa !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !105
  br label %.thread43

.thread43:                                        ; preds = %bb.m, %bb.l, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

declare void @proj_coord(ptr dead_on_unwind writable sret(%union.PJ_COORD) align 8, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #12

declare noundef double @_Z11proj_strtodPKcPPc(ptr noundef, ptr noundef) local_unnamed_addr #12

declare double @proj_dmstor(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #22

declare void @_Z16proj_coord_errorv(ptr dead_on_unwind writable sret(%union.PJ_COORD) align 8) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #23

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc noundef i32 @_ZL20errno_from_err_constPKc(ptr noundef %0) unnamed_addr #10 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %i.a, i8 0, i64 100, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %tolower.exit
  %.023 = phi i64 [ 0, %bb.a ], [ %i.q, %tolower.exit ] ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.023
  %i.c = load i8, ptr %i.b, align 1, !tbaa !25    ; 2 uses
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__ctype_b_loc() #35
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !96
  %i.g = sext i8 %i.c to i64                      ; 2 uses
  %i.h = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !98
  %i.j = and i16 %i.i, 8192
  %.not = icmp eq i16 %i.j, 0
  br i1 %.not, label %tolower.exit, label %bb.d

tolower.exit:                                     ; preds = %bb.c
  %i.k = tail call ptr @__ctype_tolower_loc() #35
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !180
  %i.m = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.g
  %i.n = load i32, ptr %i.m, align 4, !tbaa !70
  %i.o = trunc i32 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %.023
  store i8 %i.o, ptr %i.p, align 1, !tbaa !25
  %i.q = add nuw nsw i64 %.023, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, 99
  br i1 %exitcond.not, label %bb.d, label %bb.b, !llvm.loop !182

bb.d:                                             ; preds = %bb.b, %bb.c, %tolower.exit
  %.0.lcssa = phi i64 [ %.023, %bb.b ], [ %.023, %bb.c ], [ 99, %tolower.exit ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.lcssa
  store i8 0, ptr %i.r, align 1, !tbaa !25
  %i.s = tail call noundef double @_Z7pj_atofPKc(ptr noundef nonnull %0)
  %i.t = fptosi double %i.s to i32                ; 2 uses
  %.not22 = icmp eq i32 %i.t, 0
  br i1 %.not22, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.u = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #32 ; 17 uses
  %i.v = tail call i32 @strncmp(ptr noundef nonnull @.str.104, ptr noundef nonnull %0, i64 noundef %i.u) #32
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.v, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = tail call i32 @strncmp(ptr noundef nonnull @.str.105, ptr noundef nonnull %0, i64 noundef %i.u) #32
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = tail call i32 @strncmp(ptr noundef nonnull @.str.106, ptr noundef nonnull %0, i64 noundef %i.u) #32
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.v, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = tail call i32 @strncmp(ptr noundef nonnull @.str.107, ptr noundef nonnull %0, i64 noundef %i.u) #32
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.v, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = tail call i32 @strncmp(ptr noundef nonnull @.str.108, ptr noundef nonnull %0, i64 noundef %i.u) #32
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.v, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = tail call i32 @strncmp(ptr noundef nonnull @.str.109, ptr noundef nonnull %0, i64 noundef %i.u) #32
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.v, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = tail call i32 @strncmp(ptr noundef nonnull @.str.110, ptr noundef nonnull %0, i64 noundef %i.u) #32
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = tail call i32 @strncmp(ptr noundef nonnull @.str.111, ptr noundef nonnull %0, i64 noundef %i.u) #32
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.v, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = tail call i32 @strncmp(ptr noundef nonnull @.str.112, ptr noundef nonnull %0, i64 noundef %i.u) #32
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.v, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = tail call i32 @strncmp(ptr noundef nonnull @.str.113, ptr noundef nonnull %0, i64 noundef %i.u) #32
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = tail call i32 @strncmp(ptr noundef nonnull @.str.114, ptr noundef nonnull %0, i64 noundef %i.u) #32
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = tail call i32 @strncmp(ptr noundef nonnull @.str.115, ptr noundef nonnull %0, i64 noundef %i.u) #32
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = tail call i32 @strncmp(ptr noundef nonnull @.str.116, ptr noundef nonnull %0, i64 noundef %i.u) #32
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = tail call i32 @strncmp(ptr noundef nonnull @.str.117, ptr noundef nonnull %0, i64 noundef %i.u) #32
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = tail call i32 @strncmp(ptr noundef nonnull @.str.118, ptr noundef nonnull %0, i64 noundef %i.u) #32
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.az = tail call i32 @strncmp(ptr noundef nonnull @.str.119, ptr noundef nonnull %0, i64 noundef %i.u) #32
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bb = tail call i32 @strncmp(ptr noundef nonnull @.str.120, ptr noundef nonnull %0, i64 noundef %i.u) #32
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.lcssa = phi ptr [ @_ZN12_GLOBAL__N_16lookupE, %bb.e ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_16lookupE, i64 16), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_16lookupE, i64 32), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_16lookupE, i64 48), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_16lookupE, i64 64), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_16lookupE, i64 80), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_16lookupE, i64 96), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_16lookupE, i64 112), %bb.l ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_16lookupE, i64 128), %bb.m ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_16lookupE, i64 144), %bb.n ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_16lookupE, i64 160), %bb.o ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_16lookupE, i64 176), %bb.p ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_16lookupE, i64 192), %bb.q ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_16lookupE, i64 208), %bb.r ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_16lookupE, i64 224), %bb.s ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_16lookupE, i64 240), %bb.t ], [ getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_16lookupE, i64 256), %bb.u ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !183
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.d, %bb.v
  %.019 = phi i32 [ %i.t, %bb.d ], [ %i.be, %bb.v ], [ 9999, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i32 %.019
}

declare i32 @proj_errno(ptr noundef) local_unnamed_addr #12

declare ptr @proj_errno_string(i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZL23another_failing_failurev() unnamed_addr #10 {
bb.a:
  %i.a = load i32, ptr @fail_fails, align 4, !tbaa !70
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr @fail_fails, align 4, !tbaa !70
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL1T, i64 30140), align 4, !tbaa !84
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZL1T, i64 30140), align 4, !tbaa !84
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL1T, i64 30152), align 8, !tbaa !85
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr getelementptr inbounds nuw (i8, ptr @_ZL1T, i64 30152), align 8, !tbaa !85
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL1T, i64 30008), align 8, !tbaa !72
  %i.h = tail call i32 @proj_errno_reset(ptr noundef %i.g) ; 0 uses
  ret void
}

declare i32 @proj_angular_input(ptr noundef, i32 noundef) local_unnamed_addr #12

declare void @proj_trans(ptr dead_on_unwind writable sret(%union.PJ_COORD) align 8, ptr noundef, i32 noundef, ptr noundef byval(%union.PJ_COORD) align 8) local_unnamed_addr #12
end_hunk_0
