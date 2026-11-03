Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/hizzie?download=true
inline.NumInlined: 99
inline.NumDeleted: 72
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_Z9set_histpP7t_atomsPA3_fP8t_symtabff:bb.a
  %i.mj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mi, <2 x float> %i.mi, <2 x float> %i.mh)
  %i.mk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mf, <2 x float> %i.mf, <2 x float> %i.mj)
  %i.ml = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.mk)
  %i.mm = fpext <2 x float> %i.ml to <2 x double>
  %i.mn = fdiv <2 x double> splat (double 1.000000e-01), %i.mm
  %i.mo = fptrunc <2 x double> %i.mn to <2 x float> ; 3 uses
  %i.mp = shufflevector <2 x float> %i.mo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mq = fmul <2 x float> %i.lj, %i.mp
  %i.mr = fadd <2 x float> %i.le, %i.mq
  store <2 x float> %i.mr, ptr %i.a, align 8, !tbaa !34
  %i.ms = fmul <2 x float> %i.mf, %i.mo
  %i.mt = fadd <2 x float> %i.ly, %i.ms           ; 2 uses
  %i.mu = extractelement <2 x float> %i.mt, i64 0
  store float %i.mu, ptr %i.ix, align 8, !tbaa !34
  %i.mv = shufflevector <2 x float> %i.mo, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.mw = fmul <2 x float> %i.lw, %i.mv
  %i.mx = fadd <2 x float> %i.ls, %i.mw
  store <2 x float> %i.mx, ptr %i.b, align 8, !tbaa !34
  %i.my = extractelement <2 x float> %i.mt, i64 1
  store float %i.my, ptr %i.iy, align 8, !tbaa !34
  %i.mz = call fastcc noundef zeroext i1 @_ZL10chk_hbondsiP7t_atomsPA3_fPKbPbPfff(i32 noundef %.0121.lcssa, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.v, ptr noundef %i.w, ptr noundef %i.a, float noundef %3, float noundef %4)
  %i.na = call fastcc noundef zeroext i1 @_ZL10chk_hbondsiP7t_atomsPA3_fPKbPbPfff(i32 noundef %.0121.lcssa, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.u, ptr noundef %i.w, ptr noundef %i.a, float noundef %3, float noundef %4) ; 0 uses
  %i.nb = call fastcc noundef zeroext i1 @_ZL10chk_hbondsiP7t_atomsPA3_fPKbPbPfff(i32 noundef %.0119.lcssa, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.v, ptr noundef %i.w, ptr noundef %i.b, float noundef %3, float noundef %4)
  %i.nc = call fastcc noundef zeroext i1 @_ZL10chk_hbondsiP7t_atomsPA3_fPKbPbPfff(i32 noundef %.0119.lcssa, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.u, ptr noundef %i.w, ptr noundef %i.b, float noundef %3, float noundef %4) ; 0 uses
  %. = select i1 %i.nb, i32 2, i32 0
  %.0123 = select i1 %i.mz, i32 %., i32 1         ; 2 uses
  %i.nd = load ptr, ptr @stderr, align 8, !tbaa !53
  %i.ne = tail call noundef ptr @_Z17enumValueToString15HistidineStates(i32 noundef %.0123)
  %i.nf = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.ng = sext i32 %i.jo to i64                   ; 2 uses
  %i.nh = getelementptr inbounds [32 x i8], ptr %i.nf, i64 %i.ng
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.nj = load i32, ptr %i.ni, align 8, !tbaa !61
  %i.nk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nd, ptr noundef nonnull @.str.30, ptr noundef %i.ne, i32 noundef %i.nj) #16 ; 0 uses
  %i.nl = tail call noundef ptr @_Z17enumValueToString15HistidineStates(i32 noundef %.0123)
  %i.nm = tail call noundef ptr @_Z10put_symtabP8t_symtabPKc(ptr noundef %2, ptr noundef %i.nl)
  %i.nn = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.no = getelementptr inbounds [32 x i8], ptr %i.nn, i64 %i.ng
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 24
  store ptr %i.nm, ptr %i.np, align 8, !tbaa !62
  br label %bb.ah

bb.ae:                                            ; preds = %.critedge2
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 1 dereferenceable(69) @.str.21, i8 noundef zeroext 2)
  %i.nq = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.nr = sext i32 %i.jo to i64
  %i.ns = getelementptr inbounds [32 x i8], ptr %i.nq, i64 %i.nr
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  %i.nu = load i32, ptr %i.nt, align 8, !tbaa !61
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 311, ptr noundef nonnull @.str.31, i32 noundef %i.nu) #17
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.nv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  resume { ptr, i32 } %i.nv

bb.ah:                                            ; preds = %bb.y, %bb.ad, %bb.x
  %.3 = phi i32 [ %i.jk, %bb.x ], [ %.2.lcssa, %bb.ad ], [ %.1132204, %bb.y ] ; 2 uses
  %.1125 = phi i32 [ %.0124205, %bb.x ], [ %i.jo, %bb.ad ], [ %.0124205, %bb.y ]
  %i.nw = icmp slt i32 %.3, %i.c
  br i1 %i.nw, label %bb.w, label %._crit_edge207, !llvm.loop !48

._crit_edge207:                                   ; preds = %bb.ah, %_ZL9chk_allhbP7t_atomsPA3_fP8t_blockaPKbS6_f.exit
  tail call void @_Z11done_blockaP8t_blocka(ptr noundef nonnull %i.x)
  tail call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.21, i32 noundef 319, ptr noundef nonnull %i.x)
  tail call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 320, ptr noundef %i.u)
  tail call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef 321, ptr noundef %i.v)
  tail call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef 322, ptr noundef %i.w)
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.c, %.critedge, %._crit_edge207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef i32 @_Z14gmx_strcasecmpPKcS0_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZL10chk_hbondsiP7t_atomsPA3_fPKbPbPfff(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef nonnull readonly captures(none) %5, float noundef %6, float noundef %7) unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.d = sext i32 %0 to i64                       ; 3 uses
  %i.e = getelementptr inbounds [36 x i8], ptr %i.c, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i32, ptr %i.f, align 4, !tbaa !24
  %i.h = fmul float %7, %7
  %i.i = icmp sgt i32 %i.a, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds [12 x i8], ptr %2, i64 %i.d ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = getelementptr inbounds i8, ptr %4, i64 %i.d
  %i.p = zext i32 %0 to i64
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 6 uses
  %.03543 = phi i1 [ false, %.lr.ph ], [ %.1, %bb.j ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.r = load i8, ptr %i.q, align 1, !tbaa !31, !range !32, !noundef !33
  %i.s = trunc nuw i8 %i.r to i1
  %.not = icmp ne i64 %indvars.iv, %i.p
  %or.cond.not = and i1 %.not, %i.s
  br i1 %or.cond.not, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw [36 x i8], ptr %i.c, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i32, ptr %i.u, align 4, !tbaa !24
  %.not36 = icmp eq i32 %i.v, %i.g
  br i1 %.not36, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !30
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !27   ; 2 uses
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(4) @.str.13) #15
  %.not37 = icmp eq i32 %i.aa, 0
  br i1 %.not37, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(4) @.str.15) #15
  %.not38 = icmp eq i32 %i.ab, 0
  br i1 %.not38, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !34 ; 2 uses
  %i.ae = load float, ptr %i.k, align 4, !tbaa !34 ; 2 uses
  %i.af = fsub float %i.ad, %i.ae                 ; 2 uses
  %i.ag = fmul float %i.af, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ai = load <2 x float>, ptr %i.ah, align 4, !tbaa !34 ; 3 uses
  %i.aj = load <2 x float>, ptr %i.l, align 4, !tbaa !34 ; 3 uses
  %i.ak = fsub <2 x float> %i.ai, %i.aj           ; 2 uses
  %i.al = fmul <2 x float> %i.ak, %i.ak           ; 2 uses
  %i.am = extractelement <2 x float> %i.al, i64 0
  %i.an = fadd float %i.ag, %i.am
  %i.ao = extractelement <2 x float> %i.al, i64 1
  %i.ap = fadd float %i.an, %i.ao
  %i.aq = load float, ptr %5, align 4, !tbaa !34  ; 2 uses
  %i.ar = fsub float %i.ae, %i.aq
  %i.as = load float, ptr %i.m, align 4, !tbaa !34 ; 2 uses
  %i.at = extractelement <2 x float> %i.aj, i64 0
  %i.au = fsub float %i.at, %i.as
  %i.av = load float, ptr %i.n, align 4, !tbaa !34 ; 2 uses
  %i.aw = extractelement <2 x float> %i.aj, i64 1
  %i.ax = fsub float %i.aw, %i.av
  %i.ay = fsub float %i.ad, %i.aq
  %i.az = extractelement <2 x float> %i.ai, i64 0
  %i.ba = fsub float %i.az, %i.as
  %i.bb = extractelement <2 x float> %i.ai, i64 1
  %i.bc = fsub float %i.bb, %i.av
  %i.bd = fpext float %i.ar to double             ; 3 uses
  %i.be = fpext float %i.ay to double             ; 3 uses
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.bd, double 0.000000e+00)
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.be, double %i.be, double 0.000000e+00)
  %i.bh = fpext float %i.au to double             ; 3 uses
  %i.bi = fpext float %i.ba to double             ; 3 uses
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.bh, double %i.bf)
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bi, double %i.bi, double %i.bg)
  %i.bl = fpext float %i.ax to double             ; 3 uses
  %i.bm = fpext float %i.bc to double             ; 3 uses
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.bl, double %i.bj)
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.bm, double %i.bk)
  %i.bp = fmul double %i.bn, %i.bo                ; 2 uses
  %i.bq = fcmp ogt double %i.bp, 0.000000e+00
  br i1 %i.bq, label %bb.g, label %_ZL9cos_anglePKfS0_.exit

bb.g:                                             ; preds = %bb.f
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.be, double 0.000000e+00)
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.bi, double %i.br)
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.bm, double %i.bs)
  %i.bu = tail call nnan double @llvm.sqrt.f64(double %i.bp)
  %i.bv = fdiv nnan double 1.000000e+00, %i.bu
  %i.bw = fmul double %i.bt, %i.bv
  %i.bx = fptrunc double %i.bw to float
  br label %_ZL9cos_anglePKfS0_.exit

_ZL9cos_anglePKfS0_.exit:                         ; preds = %bb.f, %bb.g
  %.026.i = phi float [ %i.bx, %bb.g ], [ 1.000000e+00, %bb.f ] ; 3 uses
  %i.by = fcmp ogt float %.026.i, 1.000000e+00
  %i.bz = fcmp olt float %.026.i, -1.000000e+00
  %..026.i = select i1 %i.bz, float -1.000000e+00, float %.026.i
  %.027.i = select i1 %i.by, float 1.000000e+00, float %..026.i
  %i.ca = tail call noundef float @acosf(float noundef %.027.i) #13
  %i.cb = fcmp olt float %i.ap, %i.h
  br i1 %i.cb, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZL9cos_anglePKfS0_.exit
  %i.cc = fpext float %i.ca to double
  %i.cd = fmul double %i.cc, f0x404CA5DC1A63C1F8
  %i.ce = fptrunc double %i.cd to float
  %i.cf = fcmp olt float %6, %i.ce
  br i1 %i.cf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.o, align 1, !tbaa !31
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %_ZL9cos_anglePKfS0_.exit, %bb.h, %bb.i, %bb.e, %bb.d
  %.1 = phi i1 [ true, %bb.i ], [ %.03543, %bb.h ], [ %.03543, %_ZL9cos_anglePKfS0_.exit ], [ %.03543, %bb.e ], [ %.03543, %bb.d ], [ %.03543, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !63

._crit_edge:                                      ; preds = %bb.j, %bb.a
  %.035.lcssa = phi i1 [ false, %bb.a ], [ %.1, %bb.j ]
  ret i1 %.035.lcssa
}

declare noundef ptr @_Z17enumValueToString15HistidineStates(i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(69) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(69) %1) #13 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %i.b, ptr %i.a, align 8, !tbaa !65
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !38
  %i.f = load i64, ptr %i.a, align 8, !tbaa !65
  store i64 %i.f, ptr %i.c, align 8, !tbaa !39
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !39
  store i8 %i.h, ptr %i.g, align 1, !tbaa !39
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !66
  %i.k = load ptr, ptr %0, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !41   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #13
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !38     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !39
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #13
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !38     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !39
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef ptr @_Z10put_symtabP8t_symtabPKc(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z11done_blockaP8t_blocka(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #11

declare void @_Z9save_freePKcS0_iPv(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind }
attributes #14 = { cold }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { cold nounwind }
attributes #17 = { noreturn }
attributes #18 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS6t_atom", !9, i64 0}
!11 = !{!"any p2 pointer", !9, i64 0}
!12 = !{!"any p3 pointer", !11, i64 0}
!13 = !{!"p3 omnipotent char", !12, i64 0}
!14 = !{!"p1 _ZTS9t_resinfo", !9, i64 0}
!15 = !{!"p1 _ZTS9t_pdbinfo", !9, i64 0}
!16 = !{!"bool", !5, i64 0}
!17 = !{!"_ZTS7t_atoms", !6, i64 0, !10, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !6, i64 40, !14, i64 48, !15, i64 56, !16, i64 64, !16, i64 65, !16, i64 66, !16, i64 67, !16, i64 68}
!18 = !{!17, !6, i64 0}
!19 = !{!17, !10, i64 8}
!20 = !{!"float", !5, i64 0}
!21 = !{!"short", !5, i64 0}
!22 = !{!"_ZTS12ParticleType", !5, i64 0}
!23 = !{!"_ZTS6t_atom", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !21, i64 16, !21, i64 18, !22, i64 20, !6, i64 24, !6, i64 28, !5, i64 32}
!24 = !{!23, !6, i64 24}
!25 = !{!"p2 omnipotent char", !11, i64 0}
!26 = !{!"p1 omnipotent char", !9, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!17, !13, i64 16}
!30 = !{!25, !25, i64 0}
!31 = !{!16, !16, i64 0}
!32 = !{i8 0, i8 2}
!33 = !{}
!34 = !{!20, !20, i64 0}
!35 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !26, i64 0}
!36 = !{!"long", !5, i64 0}
!37 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !35, i64 0, !36, i64 8, !5, i64 16}
!38 = !{!37, !26, i64 0}
!39 = !{!5, !5, i64 0}
!40 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !9, i64 0}
!41 = !{!40, !40, i64 0}
!42 = distinct !{!42, !28}
!43 = distinct !{!43, !28}
!44 = distinct !{!44, !28}
!45 = distinct !{!45, !28}
!46 = distinct !{!46, !28}
!47 = distinct !{!47, !28}
!48 = distinct !{!48, !28}
!49 = !{!17, !14, i64 48}
!50 = !{!"_ZTS9t_resinfo", !25, i64 0, !6, i64 8, !5, i64 12, !6, i64 16, !5, i64 20, !25, i64 24}
!51 = !{!50, !25, i64 0}
!52 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!"p1 int", !9, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!"_ZTS8t_blocka", !6, i64 0, !54, i64 8, !6, i64 16, !54, i64 24, !6, i64 32, !6, i64 36}
!57 = !{!56, !6, i64 0}
!58 = !{!56, !54, i64 8}
!59 = !{!6, !6, i64 0}
!60 = !{!56, !6, i64 16}
!61 = !{!50, !6, i64 8}
!62 = !{!50, !25, i64 24}
!63 = distinct !{!63, !28}
!64 = !{!35, !26, i64 0}
!65 = !{!36, !36, i64 0}
!66 = !{!37, !36, i64 8}
end_hunk_0
