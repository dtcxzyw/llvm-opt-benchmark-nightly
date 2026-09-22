Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/readOBJ?download=true
inline.NumInlined: 780
inline.NumDeleted: 336
begin_hunk_0_@_ZN3igl7readOBJIdiEEbP8_IO_FILERSt6vectorIS3_IT_SaIS4_EESaIS6_EES9_S9_RS3_IS3_IT0_SaISA_EESaISC_EESF_SF_RS3_ISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_EESaISN_EE:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.e, i8 0, i64 2048, i1 false)
  %i.ck = call ptr @fgets(ptr noundef nonnull %i.d, i32 noundef 2048, ptr noundef %0)
  %.not736 = icmp eq ptr %i.ck, null
  br i1 %.not736, label %._crit_edge745, label %.lr.ph744

.lr.ph744:                                        ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE5clearEv.exit214
  %i.cl = getelementptr inbounds nuw i8, ptr %24, i64 4 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %24, i64 24 ; 11 uses
  %i.co = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 14 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 14 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 9 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 8 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 12 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 8 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %i.du = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.dv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.dw = getelementptr i8, ptr %i.du, i64 -24
  %i.dx = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %15, i64 88
  %i.dz = getelementptr inbounds nuw i8, ptr %15, i64 104 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %15, i64 72
  %i.eb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  %i.ec = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.ed = getelementptr i8, ptr %i.eb, i64 -24
  %i.ee = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %15, i64 120
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph744, %bb.fg
  %.092742 = phi i32 [ 0, %.lr.ph744 ], [ %.496, %bb.fg ] ; 15 uses
  %.098739 = phi i32 [ 1, %.lr.ph744 ], [ %i.adl, %bb.fg ] ; 7 uses
  %.0100738 = phi i1 [ false, %.lr.ph744 ], [ %.4104, %bb.fg ] ; 11 uses
  %.0503737 = phi i32 [ 0, %.lr.ph744 ], [ %.2, %bb.fg ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  %i.eg = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.f) #17
  %i.eh = icmp eq i32 %i.eg, 1
  br i1 %i.eh, label %bb.i, label %bb.fg

bb.i:                                             ; preds = %bb.h
  %i.ei = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #17 ; 13 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ei ; 5 uses
  %i.ek = load i64, ptr %i.bw, align 8, !tbaa !19
  %i.el = icmp eq i64 %i.ek, %i.ei
  br i1 %i.el, label %bb.j, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread504

bb.j:                                             ; preds = %bb.i
  %i.em = icmp eq i64 %i.ei, 0
  br i1 %i.em, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit: ; preds = %bb.j
  %i.en = load ptr, ptr %10, align 8, !tbaa !18
  %bcmp.i.i = call i32 @bcmp(ptr %i.en, ptr nonnull %i.f, i64 %i.ei)
  %i.eo = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.eo, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread504

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread: ; preds = %bb.j, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  store ptr %i.dl, ptr %16, align 8, !tbaa !15
  %i.ep = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dk) #17 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i64 %i.ep, ptr %i.c, align 8, !tbaa !20
  %i.eq = icmp ugt i64 %i.ep, 15
  br i1 %i.eq, label %.noexc.i232, label %._crit_edge.i.i231

.noexc.i232:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread
  %i.er = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc233 unwind label %bb.t  ; 2 uses

.noexc233:                                        ; preds = %.noexc.i232
  store ptr %i.er, ptr %16, align 8, !tbaa !18
  %i.es = load i64, ptr %i.c, align 8, !tbaa !20
  store i64 %i.es, ptr %i.dl, align 8, !tbaa !21
  br label %._crit_edge.i.i231

._crit_edge.i.i231:                               ; preds = %.noexc233, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread
  %i.et = phi ptr [ %i.er, %.noexc233 ], [ %i.dl, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread ] ; 2 uses
  switch i64 %i.ep, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %._crit_edge.i.i231
  %i.eu = load i8, ptr %i.dk, align 1, !tbaa !21
  store i8 %i.eu, ptr %i.et, align 1, !tbaa !21
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i231
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.et, ptr nonnull align 1 %i.dk, i64 %i.ep, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i.i231
  %i.ev = load i64, ptr %i.c, align 8, !tbaa !20  ; 2 uses
  store i64 %i.ev, ptr %i.dm, align 8, !tbaa !19
  %i.ew = load ptr, ptr %16, align 8, !tbaa !18
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ev
  store i8 0, ptr %i.ex, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %15, ptr noundef nonnull align 8 dereferenceable(32) %16, i32 noundef 8)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.ey = load ptr, ptr %16, align 8, !tbaa !18   ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.dl
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.fa = load i64, ptr %i.dl, align 8, !tbaa !21
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fb) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  store ptr %15, ptr %18, align 8, !tbaa !52
  store i8 1, ptr %i.dn, align 8, !tbaa !53
  %i.fc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.do)
          to label %.noexc235 unwind label %bb.v  ; 2 uses

.noexc235:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !55
  %i.fe = getelementptr i8, ptr %i.fd, i64 -24
  %i.ff = load i64, ptr %i.fe, align 8
  %i.fg = getelementptr inbounds i8, ptr %i.fc, i64 %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !64
  %i.fj = and i32 %i.fi, 5
  %.not1.i.i = icmp eq i32 %i.fj, 0
  br i1 %.not1.i.i, label %.noexc235._ZNSt16istream_iteratorIdcSt11char_traitsIcElEC2ERSi.exit_crit_edge, label %bb.o

.noexc235._ZNSt16istream_iteratorIdcSt11char_traitsIcElEC2ERSi.exit_crit_edge: ; preds = %.noexc235
  %.pre794 = load ptr, ptr %18, align 8, !tbaa !52
  %.pre795 = load i8, ptr %i.dn, align 8, !tbaa !53, !range !65
  br label %_ZNSt16istream_iteratorIdcSt11char_traitsIcElEC2ERSi.exit

bb.o:                                             ; preds = %.noexc235
  store ptr null, ptr %18, align 8, !tbaa !52
  store i8 0, ptr %i.dn, align 8, !tbaa !53
  br label %_ZNSt16istream_iteratorIdcSt11char_traitsIcElEC2ERSi.exit

_ZNSt16istream_iteratorIdcSt11char_traitsIcElEC2ERSi.exit: ; preds = %.noexc235._ZNSt16istream_iteratorIdcSt11char_traitsIcElEC2ERSi.exit_crit_edge, %bb.o
  %i.fk = phi i8 [ %.pre795, %.noexc235._ZNSt16istream_iteratorIdcSt11char_traitsIcElEC2ERSi.exit_crit_edge ], [ 0, %bb.o ]
  %i.fl = phi ptr [ %.pre794, %.noexc235._ZNSt16istream_iteratorIdcSt11char_traitsIcElEC2ERSi.exit_crit_edge ], [ null, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  store ptr %i.fl, ptr %8, align 8, !tbaa !52
  %i.fm = load double, ptr %i.do, align 8, !tbaa !80
  store double %i.fm, ptr %i.dp, align 8, !tbaa !80
  store i8 %i.fk, ptr %i.dq, align 8, !tbaa !53
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %9, i8 0, i64 17, i1 false)
  invoke void @_ZNSt6vectorIdSaIdEE19_M_range_initializeISt16istream_iteratorIdcSt11char_traitsIcElEEEvT_S7_St18input_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9)
          to label %bb.r unwind label %bb.p

bb.p:                                             ; preds = %_ZNSt16istream_iteratorIdcSt11char_traitsIcElEC2ERSi.exit
  %i.fn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fo = load ptr, ptr %17, align 8, !tbaa !38   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fp = load ptr, ptr %i.dt, align 8, !tbaa !39
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = ptrtoint ptr %i.fo to i64
  %i.fs = sub i64 %i.fq, %i.fr
  call void @_ZdlPvm(ptr noundef nonnull %i.fo, i64 noundef %i.fs) #18
  br label %.body

bb.r:                                             ; preds = %_ZNSt16istream_iteratorIdcSt11char_traitsIcElEC2ERSi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.ft = load ptr, ptr %i.dr, align 8, !tbaa !66
  %i.fu = load ptr, ptr %17, align 8, !tbaa !38
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = sub i64 %i.fv, %i.fw                    ; 4 uses
  %i.fy = icmp ugt i64 %i.fx, 16                  ; 2 uses
  br i1 %i.fy, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fz = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.ga = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fz, ptr noundef nonnull @.str.18, i32 noundef %.098739) #19 ; 0 uses
  %i.gb = call i32 @fclose(ptr noundef %0)        ; 0 uses
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit

bb.t:                                             ; preds = %.noexc.i232
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238

bb.u:                                             ; preds = %bb.m
  %i.gd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ge = load ptr, ptr %16, align 8, !tbaa !18   ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.dl
  br i1 %i.gf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236: ; preds = %bb.u
  %i.gg = load i64, ptr %i.dl, align 8, !tbaa !21
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gh) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236, %bb.t
  %.pn163 = phi { ptr, i32 } [ %i.gc, %bb.t ], [ %i.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236 ], [ %i.gd, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br label %bb.af

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit560:                                     ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i, %bb.ad
  %lpad.loopexit562 = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp561:                            ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp563 = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp561, %.loopexit560
  %lpad.phi564 = phi { ptr, i32 } [ %lpad.loopexit562, %.loopexit560 ], [ %lpad.loopexit.split-lp563, %.loopexit.split-lp561 ] ; 2 uses
  %i.gj = load ptr, ptr %17, align 8, !tbaa !38   ; 3 uses
  %.not.i.i.i239 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i.i239, label %.body, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gk = load ptr, ptr %i.dt, align 8, !tbaa !39
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = ptrtoint ptr %i.gj to i64
  %i.gn = sub i64 %i.gl, %i.gm
  call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef %i.gn) #18
  br label %.body

bb.y:                                             ; preds = %bb.r
  %i.go = load ptr, ptr %i.o, align 8, !tbaa !35  ; 6 uses
  %i.gp = load ptr, ptr %i.ds, align 8, !tbaa !40
  %.not.i = icmp eq ptr %i.go, %i.gp
  br i1 %.not.i, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.go, i8 0, i64 24, i1 false)
  %26 = icmp ugt i64 %i.fx, 9223372036854775800
  br i1 %26, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i, !prof !67

.noexc.i.i.i:                                     ; preds = %bb.z
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #20
          to label %.noexc241 unwind label %.loopexit.split-lp561

.noexc241:                                        ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.z
  %i.gq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fx) #21
          to label %.noexc242 unwind label %.loopexit560 ; 6 uses

.noexc242:                                        ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.gq, ptr %i.go, align 8, !tbaa !38
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 2 uses
  store ptr %i.gq, ptr %i.gr, align 8, !tbaa !66
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.fx
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  store ptr %i.gs, ptr %i.gt, align 8, !tbaa !39
  %i.gu = load ptr, ptr %17, align 8, !tbaa !68   ; 3 uses
  %i.gv = load ptr, ptr %i.dr, align 8, !tbaa !68
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = ptrtoint ptr %i.gu to i64
  %i.gy = sub i64 %i.gw, %i.gx                    ; 4 uses
  %i.gz = icmp sgt i64 %i.gy, 8
  br i1 %i.gz, label %bb.aa, label %bb.ab, !prof !69

bb.aa:                                            ; preds = %.noexc242
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gq, ptr align 8 %i.gu, i64 %i.gy, i1 false)
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i

bb.ab:                                            ; preds = %.noexc242
  %i.ha = icmp eq i64 %i.gy, 8
  br i1 %i.ha, label %bb.ac, label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i

bb.ac:                                            ; preds = %bb.ab
  %i.hb = load double, ptr %i.gu, align 8, !tbaa !70
  store double %i.hb, ptr %i.gq, align 8, !tbaa !70
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i

_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i:              ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.hc = getelementptr inbounds i8, ptr %i.gq, i64 %i.gy
  store ptr %i.hc, ptr %i.gr, align 8, !tbaa !66
  %i.hd = load ptr, ptr %i.o, align 8, !tbaa !35
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  store ptr %i.he, ptr %i.o, align 8, !tbaa !35
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit

bb.ad:                                            ; preds = %bb.y
  invoke void @_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.go, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit unwind label %.loopexit560

_ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i, %bb.ad, %bb.s
  %i.hf = load ptr, ptr %17, align 8, !tbaa !38   ; 3 uses
  %.not.i.i.i244 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i244, label %_ZNSt6vectorIdSaIdEED2Ev.exit246, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit
  %i.hg = load ptr, ptr %i.dt, align 8, !tbaa !39
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = ptrtoint ptr %i.hf to i64
  %i.hj = sub i64 %i.hh, %i.hi
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hj) #18
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit246

_ZNSt6vectorIdSaIdEED2Ev.exit246:                 ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  store ptr %i.du, ptr %15, align 8, !tbaa !55
  %i.hk = load i64, ptr %i.dw, align 8
  %i.hl = getelementptr inbounds i8, ptr %15, i64 %i.hk
  store ptr %i.dv, ptr %i.hl, align 8, !tbaa !55
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.dx, align 8, !tbaa !55
  %i.hm = load ptr, ptr %i.dy, align 8, !tbaa !18 ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.dz
  br i1 %i.hn, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit246
  %i.ho = load i64, ptr %i.dz, align 8, !tbaa !21
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hp) #18
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit246, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.dx, align 8, !tbaa !55
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ea) #17
  store ptr %i.eb, ptr %15, align 8, !tbaa !55
  %i.hq = load i64, ptr %i.ed, align 8
  %i.hr = getelementptr inbounds i8, ptr %15, i64 %i.hq
  store ptr %i.ec, ptr %i.hr, align 8, !tbaa !55
  store i64 0, ptr %i.ee, align 8, !tbaa !82
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ef) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br i1 %i.fy, label %bb.fg, label %.critedge176

.body:                                            ; preds = %bb.x, %bb.w, %bb.q, %bb.p, %bb.v
  %.pn165 = phi { ptr, i32 } [ %i.fn, %bb.p ], [ %i.gi, %bb.v ], [ %lpad.phi564, %bb.x ], [ %i.fn, %bb.q ], [ %lpad.phi564, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %15) #17
  br label %bb.af

bb.af:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238
  %.pn165.pn = phi { ptr, i32 } [ %.pn165, %.body ], [ %.pn163, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %bb.ff

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread504: ; preds = %bb.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit
  %i.hs = load i64, ptr %i.bz, align 8, !tbaa !19
  %i.ht = icmp eq i64 %i.hs, %i.ei
  br i1 %i.ht, label %bb.ag, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit248.thread505

bb.ag:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread504
  %i.hu = icmp eq i64 %i.ei, 0
  br i1 %i.hu, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit248.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit248

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit248: ; preds = %bb.ag
  %i.hv = load ptr, ptr %11, align 8, !tbaa !18
  %bcmp.i.i247 = call i32 @bcmp(ptr %i.hv, ptr nonnull %i.f, i64 %i.ei)
  %i.hw = icmp eq i32 %bcmp.i.i247, 0
  br i1 %i.hw, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit248.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit248.thread505

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit248.thread: ; preds = %bb.ag, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  %i.hx = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.ej, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.g, ptr noundef nonnull %i.df, ptr noundef nonnull %i.dg) #17
  %.not160 = icmp eq i32 %i.hx, 3
  br i1 %.not160, label %bb.ah, label %.thread

.thread:                                          ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit248.thread
  %i.hy = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.hz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hy, ptr noundef nonnull @.str.20, i32 noundef %.098739) #19 ; 0 uses
  %i.ia = call i32 @fclose(ptr noundef %0)        ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  br label %.critedge176

bb.ah:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit248.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.ib = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21
          to label %bb.ai unwind label %bb.an     ; 3 uses

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.ib, ptr %19, align 8, !tbaa !38
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 24 ; 2 uses
  store ptr %i.ic, ptr %i.dh, align 8, !tbaa !39
  store ptr %i.ic, ptr %i.di, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ib, ptr noundef nonnull align 16 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa !70
  %i.id = load ptr, ptr %i.ai, align 8, !tbaa !35 ; 6 uses
  %i.ie = load ptr, ptr %i.dj, align 8, !tbaa !40
  %.not.i250 = icmp eq ptr %i.id, %i.ie
  br i1 %.not.i250, label %bb.am, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i252

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i252: ; preds = %bb.ai
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.id, i8 0, i64 24, i1 false)
  %i.if = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21
          to label %.noexc256 unwind label %bb.aq ; 6 uses

.noexc256:                                        ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i252
  store ptr %i.if, ptr %i.id, align 8, !tbaa !38
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 8 ; 2 uses
  store ptr %i.if, ptr %i.ig, align 8, !tbaa !66
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.ii = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  store ptr %i.ih, ptr %i.ii, align 8, !tbaa !39
  %i.ij = load ptr, ptr %19, align 8, !tbaa !68   ; 4 uses
  %i.ik = load ptr, ptr %i.di, align 8, !tbaa !68
  %i.il = ptrtoint ptr %i.ik to i64
  %i.im = ptrtoint ptr %i.ij to i64
  %i.in = sub i64 %i.il, %i.im                    ; 4 uses
  %i.io = icmp sgt i64 %i.in, 8
  br i1 %i.io, label %bb.aj, label %bb.ak, !prof !69

bb.aj:                                            ; preds = %.noexc256
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.if, ptr align 8 %i.ij, i64 %i.in, i1 false)
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i253

bb.ak:                                            ; preds = %.noexc256
  %i.ip = icmp eq i64 %i.in, 8
  br i1 %i.ip, label %bb.al, label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i253

bb.al:                                            ; preds = %bb.ak
  %i.iq = load double, ptr %i.ij, align 8, !tbaa !70
  store double %i.iq, ptr %i.if, align 8, !tbaa !70
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i253

_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i253:           ; preds = %bb.al, %bb.ak, %bb.aj
  %i.ir = getelementptr inbounds i8, ptr %i.if, i64 %i.in
  store ptr %i.ir, ptr %i.ig, align 8, !tbaa !66
  %i.is = load ptr, ptr %i.ai, align 8, !tbaa !35
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  store ptr %i.it, ptr %i.ai, align 8, !tbaa !35
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit258

bb.am:                                            ; preds = %bb.ai
  invoke void @_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.id, ptr noundef nonnull align 8 dereferenceable(24) %19)
          to label %._ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit258_crit_edge unwind label %bb.aq

._ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit258_crit_edge: ; preds = %bb.am
  %.pre793 = load ptr, ptr %19, align 8, !tbaa !38
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit258

bb.an:                                            ; preds = %bb.ah
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit264

_ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit258: ; preds = %._ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit258_crit_edge, %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i253
  %i.iv = phi ptr [ %.pre793, %._ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit258_crit_edge ], [ %i.ij, %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i253 ] ; 3 uses
  %.not.i.i.i259 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i259, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit258
  %i.iw = load ptr, ptr %i.dh, align 8, !tbaa !39
  %i.ix = ptrtoint ptr %i.iw to i64
  %i.iy = ptrtoint ptr %i.iv to i64
  %i.iz = sub i64 %i.ix, %i.iy
  call void @_ZdlPvm(ptr noundef nonnull %i.iv, i64 noundef %i.iz) #18
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE9push_backERKS1_.exit258
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  br label %bb.fg

bb.aq:                                            ; preds = %bb.am, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i252
  %i.ja = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jb = load ptr, ptr %19, align 8, !tbaa !38   ; 3 uses
  %.not.i.i.i262 = icmp eq ptr %i.jb, null
  br i1 %.not.i.i.i262, label %_ZNSt6vectorIdSaIdEED2Ev.exit264, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jc = load ptr, ptr %i.dh, align 8, !tbaa !39
  %i.jd = ptrtoint ptr %i.jc to i64
  %i.je = ptrtoint ptr %i.jb to i64
  %i.jf = sub i64 %i.jd, %i.je
  call void @_ZdlPvm(ptr noundef nonnull %i.jb, i64 noundef %i.jf) #18
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit264

_ZNSt6vectorIdSaIdEED2Ev.exit264:                 ; preds = %bb.ar, %bb.aq, %bb.an
  %.pn161 = phi { ptr, i32 } [ %i.iu, %bb.an ], [ %i.ja, %bb.aq ], [ %i.ja, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  br label %bb.ff
end_hunk_0
