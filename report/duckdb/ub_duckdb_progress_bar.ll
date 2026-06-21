inline.NumInlined: 1084
inline.NumDeleted: 380
begin_hunk_0_@_ZN6duckdb21UnscentedKalmanFilter10MatrixSqrtERKNS_6vectorINS1_IdLb1ESaIdEEELb1ESaIS3_EEE:bb.a
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.ag = alloca i64, align 8                     ; 4 uses
  %i.ah = alloca i64, align 8                     ; 4 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.ai = alloca i64, align 8                     ; 4 uses
  %i.aj = alloca i64, align 8                     ; 4 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.ak = alloca i64, align 8                     ; 4 uses
  %i.al = alloca i64, align 8                     ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.am = alloca i64, align 8                     ; 4 uses
  %i.an = alloca i64, align 8                     ; 4 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.ao = alloca i64, align 8                     ; 4 uses
  %i.ap = alloca i64, align 8                     ; 4 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.aq = alloca i64, align 8                     ; 4 uses
  %i.ar = alloca i64, align 8                     ; 4 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.as = alloca i64, align 8                     ; 3 uses
  %i.at = alloca i64, align 8                     ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.au = alloca i64, align 8                     ; 4 uses
  %i.av = alloca i64, align 8                     ; 4 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %19 = alloca %"class.duckdb::vector.105", align 8 ; 10 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !171 ; 2 uses
  %i.ay = load ptr, ptr %2, align 8, !tbaa !170   ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = sdiv exact i64 %i.bb, 24                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.bd = icmp ugt i64 %i.bc, 1152921504606846975
  br i1 %i.bd, label %bb.b, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #23
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.ax, %i.ay      ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIN6duckdb6vectorIdLb1ESaIdEEESaIS3_EEC2EmRKS4_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.be = shl nuw nsw i64 %i.bc, 3                ; 3 uses
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #25
          to label %.noexc61 unwind label %bb.h   ; 4 uses

.noexc61:                                         ; preds = %bb.c
  store ptr %i.bf, ptr %19, align 8, !tbaa !167
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bc
  %i.bh = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !168
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bf, i8 0, i64 %i.be, i1 false), !tbaa !161
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.be
  %i.bj = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !169
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.bk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #25
          to label %_ZNSt12_Vector_baseIN6duckdb6vectorIdLb1ESaIdEEESaIS3_EEC2EmRKS4_.exit.i.i unwind label %bb.i

_ZNSt12_Vector_baseIN6duckdb6vectorIdLb1ESaIdEEESaIS3_EEC2EmRKS4_.exit.i.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i, %.noexc61
  %i.bl = phi ptr [ %i.bk, %.noexc61 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 20 uses
  store ptr %i.bl, ptr %0, align 8, !tbaa !170
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !171
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bb
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !172
  %i.bp = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPN6duckdb6vectorIdLb1ESaIdEEEmS3_ET_S5_T0_RKT1_(ptr noundef %i.bl, i64 noundef %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %19)
          to label %bb.f unwind label %bb.d       ; 7 uses

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb6vectorIdLb1ESaIdEEESaIS3_EEC2EmRKS4_.exit.i.i
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdlPv(ptr noundef nonnull %i.bl) #24
  br label %.body

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb6vectorIdLb1ESaIdEEESaIS3_EEC2EmRKS4_.exit.i.i
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !171
  %i.br = load ptr, ptr %19, align 8, !tbaa !167  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdlPv(ptr noundef nonnull %i.br) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br i1 %.not.i.i.i.i.i, label %._crit_edge, label %.preheader328.preheader

.preheader328.preheader:                          ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.bs = ptrtoint ptr %i.bp to i64
  %i.bt = ptrtoint ptr %i.bl to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = sdiv exact i64 %i.bu, 24                ; 2 uses
  %i.bw = ptrtoint ptr %i.bp to i64
  %i.bx = ptrtoint ptr %i.bl to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = sdiv exact i64 %i.by, 24                ; 4 uses
  %i.ca = ptrtoint ptr %i.bp to i64
  %i.cb = ptrtoint ptr %i.bl to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = sdiv exact i64 %i.cc, 24                ; 2 uses
  %i.ce = ptrtoint ptr %i.bp to i64
  %i.cf = ptrtoint ptr %i.bl to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = sdiv exact i64 %i.cg, 24                ; 2 uses
  br label %.preheader328

.preheader328:                                    ; preds = %.preheader328.preheader, %bb.k
  %indvars.iv = phi i64 [ 1, %.preheader328.preheader ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %.047383 = phi i64 [ 0, %.preheader328.preheader ], [ %i.dj, %bb.k ] ; 28 uses
  %.not.i.i.i147 = icmp ult i64 %.047383, %i.bv
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %.047383 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.aw, align 8
  %i.cl = load ptr, ptr %2, align 8               ; 2 uses
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = sdiv exact i64 %i.co, 24                ; 2 uses
  %.not.i.i.i137 = icmp ult i64 %.047383, %i.cp
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %.047383 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.not.i.i.i217 = icmp ult i64 %.047383, %i.bz
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %.047383 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.not386 = icmp eq i64 %.047383, 0
  %.not.i.i.i70 = icmp ult i64 %.047383, %i.cd
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %.047383 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load ptr, ptr %i.aw, align 8
  %i.cx = load ptr, ptr %2, align 8               ; 2 uses
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = sdiv exact i64 %i.da, 24                ; 2 uses
  %.not.i.i.i67 = icmp ult i64 %.047383, %i.db
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %i.cx, i64 %.047383 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.not.i.i.i117 = icmp ult i64 %.047383, %i.ch
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %.047383 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  br label %bb.l

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit66

bb.i:                                             ; preds = %.noexc61
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.e, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.dh, %bb.i ], [ %i.bq, %bb.e ], [ %i.bq, %bb.d ] ; 2 uses
  %i.di = load ptr, ptr %19, align 8, !tbaa !167  ; 2 uses
  %.not.i.i.i65 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIdSaIdEED2Ev.exit66, label %bb.j

bb.j:                                             ; preds = %.body
  call void @_ZdlPv(ptr noundef nonnull %i.di) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit66

_ZNSt6vectorIdSaIdEED2Ev.exit66:                  ; preds = %bb.j, %.body, %bb.h
  %.pn = phi { ptr, i32 } [ %i.dg, %bb.h ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %_ZNSt6vectorIN6duckdb6vectorIdLb1ESaIdEEESaIS3_EED2Ev.exit

bb.k:                                             ; preds = %bb.bw
  %i.dj = add nuw i64 %.047383, 1                 ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 1
  %exitcond428.not = icmp eq i64 %i.dj, %i.bc
  br i1 %exitcond428.not, label %._crit_edge, label %.preheader328, !llvm.loop !182

bb.l:                                             ; preds = %.preheader328, %bb.bw
  %.046382 = phi i64 [ 0, %.preheader328 ], [ %i.mh, %bb.bw ] ; 17 uses
  %i.dk = icmp eq i64 %.047383, %.046382
  br i1 %i.dk, label %.preheader, label %.preheader327

.preheader327:                                    ; preds = %bb.l
  %.not385 = icmp eq i64 %.046382, 0
  br i1 %.not385, label %._crit_edge.split.us, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader327
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %.046382 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  br i1 %.not.i.i.i147, label %.lr.ph.split.us, label %.lr.ph.split, !prof !174

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.n
  %.0337.us = phi i64 [ %i.dy, %bb.n ], [ 0, %.lr.ph ] ; 7 uses
  %.043336.us = phi double [ %i.dx, %bb.n ], [ 0.000000e+00, %.lr.ph ]
  %20 = load ptr, ptr %i.cj, align 8, !tbaa !169
  %21 = load ptr, ptr %i.ci, align 8, !tbaa !167  ; 2 uses
  %22 = ptrtoint ptr %20 to i64
  %23 = ptrtoint ptr %21 to i64
  %24 = sub i64 %22, %23
  %25 = ashr exact i64 %24, 3                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i64 %.0337.us, ptr %i.ac, align 8, !tbaa !63
  store i64 %25, ptr %i.ad, align 8, !tbaa !63
  %.not.i.i.i157.us = icmp ult i64 %.0337.us, %25
  br i1 %.not.i.i.i157.us, label %bb.m, label %.noexc.i276, !prof !174

bb.m:                                             ; preds = %.lr.ph.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %.0337.us
  %i.do = load double, ptr %i.dn, align 8, !tbaa !161
  %i.dp = load ptr, ptr %i.dm, align 8, !tbaa !169
  %i.dq = load ptr, ptr %i.dl, align 8, !tbaa !167 ; 2 uses
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = ashr exact i64 %i.dt, 3                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i64 %.0337.us, ptr %i.aa, align 8, !tbaa !63
  store i64 %i.du, ptr %i.ab, align 8, !tbaa !63
  %.not.i.i.i177.us = icmp ult i64 %.0337.us, %i.du
  br i1 %.not.i.i.i177.us, label %bb.n, label %.noexc.i284, !prof !174

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.0337.us
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !161
  %i.dx = call double @llvm.fmuladd.f64(double %i.do, double %i.dw, double %.043336.us) ; 2 uses
  %i.dy = add nuw i64 %.0337.us, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.dy, %.046382
  br i1 %exitcond.not, label %._crit_edge.split.us, label %.lr.ph.split.us, !llvm.loop !183

.preheader:                                       ; preds = %bb.l
  br i1 %.not386, label %._crit_edge360.split.us, label %.lr.ph359

.lr.ph359:                                        ; preds = %.preheader
  br i1 %.not.i.i.i70, label %.lr.ph359.split.us, label %.lr.ph359.split, !prof !174

.lr.ph359.split.us:                               ; preds = %.lr.ph359, %bb.p
  %.044358.us = phi i64 [ %i.ek, %bb.p ], [ 0, %.lr.ph359 ] ; 7 uses
  %.045357.us = phi double [ %i.ej, %bb.p ], [ 0.000000e+00, %.lr.ph359 ]
  %26 = load ptr, ptr %i.cv, align 8, !tbaa !169
  %27 = load ptr, ptr %i.cu, align 8, !tbaa !167  ; 2 uses
  %28 = ptrtoint ptr %26 to i64
  %29 = ptrtoint ptr %27 to i64
  %30 = sub i64 %28, %29
  %31 = ashr exact i64 %30, 3                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store i64 %.044358.us, ptr %i.aq, align 8, !tbaa !63
  store i64 %31, ptr %i.ar, align 8, !tbaa !63
  %.not.i.i.i79.us = icmp ult i64 %.044358.us, %31
  br i1 %.not.i.i.i79.us, label %bb.o, label %.noexc.i244, !prof !174

bb.o:                                             ; preds = %.lr.ph359.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %27, i64 %.044358.us
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !161
  %i.eb = load ptr, ptr %i.cv, align 8, !tbaa !169
  %i.ec = load ptr, ptr %i.cu, align 8, !tbaa !167 ; 2 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = ashr exact i64 %i.ef, 3                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store i64 %.044358.us, ptr %i.ao, align 8, !tbaa !63
  store i64 %i.eg, ptr %i.ap, align 8, !tbaa !63
  %.not.i.i.i98.us = icmp ult i64 %.044358.us, %i.eg
  br i1 %.not.i.i.i98.us, label %bb.p, label %.noexc.i252, !prof !174

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %.044358.us
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !161
  %i.ej = call double @llvm.fmuladd.f64(double %i.ea, double %i.ei, double %.045357.us) ; 2 uses
  %i.ek = add nuw i64 %.044358.us, 1              ; 2 uses
  %exitcond426.not = icmp eq i64 %i.ek, %.047383
  br i1 %exitcond426.not, label %._crit_edge360.split.us, label %.lr.ph359.split.us, !llvm.loop !184

._crit_edge360.split.us:                          ; preds = %bb.p, %.preheader
  %.045.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %i.ej, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store i64 %.047383, ptr %i.au, align 8, !tbaa !63
  store i64 %i.db, ptr %i.av, align 8, !tbaa !63
  br i1 %.not.i.i.i67, label %bb.ac, label %.noexc.i, !prof !174

.noexc.i:                                         ; preds = %._crit_edge360.split.us
  %i.el = call ptr @__cxa_allocate_exception(i64 16) #22 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.em = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.em, ptr %18, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #22
  store i64 55, ptr %i.p, align 8, !tbaa !63
  %i.en = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef 0)
          to label %.noexc238 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc238:                                        ; preds = %.noexc.i
  store ptr %i.en, ptr %18, align 8, !tbaa !39
  %i.eo = load i64, ptr %i.p, align 8, !tbaa !63  ; 3 uses
  store i64 %i.eo, ptr %i.em, align 8, !tbaa !111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.en, ptr noundef nonnull align 1 dereferenceable(55) @.str.32, i64 55, i1 false)
  %i.ep = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.eo, ptr %i.ep, align 8, !tbaa !110
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.eo
  store i8 0, ptr %i.eq, align 1, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #22
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.el, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull align 8 dereferenceable(8) %i.av)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %.noexc238
  invoke void @__cxa_throw(ptr nonnull %i.el, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.s unwind label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %.body77.sink.split

bb.r:                                             ; preds = %bb.q, %.noexc238
  %.0.i.i.i = phi i1 [ false, %bb.q ], [ true, %.noexc238 ] ; 2 uses
  %i.es = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.et = load ptr, ptr %18, align 8, !tbaa !39   ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.em
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.r
  call void @_ZdlPv(ptr noundef %i.et) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br i1 %.0.i.i.i, label %.body77.sink.split, label %.body77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br i1 %.0.i.i.i, label %.body77.sink.split, label %.body77

bb.s:                                             ; preds = %bb.q
  unreachable

.lr.ph359.split:                                  ; preds = %.lr.ph359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store i64 %.047383, ptr %i.as, align 8, !tbaa !63
  store i64 %i.cd, ptr %i.at, align 8, !tbaa !63
  %i.ev = call ptr @__cxa_allocate_exception(i64 16) #22 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.ew = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  store ptr %i.ew, ptr %17, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #22
  store i64 55, ptr %i.o, align 8, !tbaa !63
  %i.ex = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef 0)
          to label %.noexc241 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i71 ; 3 uses

.noexc241:                                        ; preds = %.lr.ph359.split
  store ptr %i.ex, ptr %17, align 8, !tbaa !39
  %i.ey = load i64, ptr %i.o, align 8, !tbaa !63  ; 3 uses
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.ex, ptr noundef nonnull align 1 dereferenceable(55) @.str.32, i64 55, i1 false)
  %i.ez = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.ey, ptr %i.ez, align 8, !tbaa !110
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ey
  store i8 0, ptr %i.fa, align 1, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #22
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ev, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull align 8 dereferenceable(8) %i.at)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %.noexc241
  invoke void @__cxa_throw(ptr nonnull %i.ev, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.v unwind label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i71: ; preds = %.lr.ph359.split
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %.body77.sink.split

bb.u:                                             ; preds = %bb.t, %.noexc241
  %.0.i.i.i74 = phi i1 [ false, %bb.t ], [ true, %.noexc241 ] ; 2 uses
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fd = load ptr, ptr %17, align 8, !tbaa !39   ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.ew
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i75: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.fd) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br i1 %.0.i.i.i74, label %.body77.sink.split, label %.body77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i76: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br i1 %.0.i.i.i74, label %.body77.sink.split, label %.body77

bb.v:                                             ; preds = %bb.t
  unreachable

.noexc.i244:                                      ; preds = %.lr.ph359.split.us
  %i.ff = call ptr @__cxa_allocate_exception(i64 16) #22 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.fg = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.fg, ptr %16, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #22
  store i64 55, ptr %i.n, align 8, !tbaa !63
  %i.fh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef 0)
          to label %.noexc245 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i80 ; 3 uses

.noexc245:                                        ; preds = %.noexc.i244
  store ptr %i.fh, ptr %16, align 8, !tbaa !39
  %i.fi = load i64, ptr %i.n, align 8, !tbaa !63  ; 3 uses
  store i64 %i.fi, ptr %i.fg, align 8, !tbaa !111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.fh, ptr noundef nonnull align 1 dereferenceable(55) @.str.32, i64 55, i1 false)
  %i.fj = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.fi, ptr %i.fj, align 8, !tbaa !110
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fi
  store i8 0, ptr %i.fk, align 1, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #22
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ff, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %.noexc245
  invoke void @__cxa_throw(ptr nonnull %i.ff, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.y unwind label %bb.x

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i80: ; preds = %.noexc.i244
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %.body77.sink.split

bb.x:                                             ; preds = %bb.w, %.noexc245
  %.0.i.i.i83 = phi i1 [ false, %bb.w ], [ true, %.noexc245 ] ; 2 uses
  %i.fm = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fn = load ptr, ptr %16, align 8, !tbaa !39   ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.fg
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i84: ; preds = %bb.x
  call void @_ZdlPv(ptr noundef %i.fn) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br i1 %.0.i.i.i83, label %.body77.sink.split, label %.body77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i85: ; preds = %bb.x
end_hunk_0
