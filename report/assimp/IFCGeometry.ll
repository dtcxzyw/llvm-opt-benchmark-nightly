inline.NumInlined: 2079
inline.NumDeleted: 821
begin_hunk_0_@_ZN6Assimp3IFC24ProcessPolygonBoundariesERNS0_8TempMeshERKS1_m:bb.a

.lr.ph:                                           ; preds = %bb.e
  %i.k = load ptr, ptr %3, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds [4 x i8], ptr %i.c, i64 %2
  br label %.loopexit146

bb.g:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %.052154 = phi double [ f0x3DDB7CDFE0000000, %.lr.ph ], [ %.153, %bb.h ] ; 2 uses
  %.sroa.0115.0153 = phi ptr [ %i.c, %.lr.ph ], [ %i.aa, %bb.h ] ; 3 uses
  %.sroa.0112.0152 = phi ptr [ %i.e, %.lr.ph ], [ %.sroa.0112.1, %bb.h ]
  %i.n = ptrtoint ptr %.sroa.0115.0153 to i64
  %i.o = sub i64 %i.n, %i.h
  %i.p = ashr exact i64 %i.o, 2
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.p ; 3 uses
  %i.r = load double, ptr %i.q, align 8           ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load double, ptr %i.s, align 8           ; 2 uses
  %i.u = fmul double %i.t, %i.t
  %i.v = call double @llvm.fmuladd.f64(double %i.r, double %i.r, double %i.u)
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.x = load double, ptr %i.w, align 8           ; 2 uses
  %i.y = call noundef double @llvm.fmuladd.f64(double %i.x, double %i.x, double %i.v) ; 2 uses
  %i.z = fcmp ogt double %i.y, %.052154           ; 2 uses
  %.sroa.0112.1 = select i1 %i.z, ptr %.sroa.0115.0153, ptr %.sroa.0112.0152 ; 2 uses
  %.153 = select i1 %i.z, double %i.y, double %.052154
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0115.0153, i64 4 ; 2 uses
  %.not137 = icmp eq ptr %i.aa, %i.e
  br i1 %.not137, label %.loopexit146, label %bb.h, !llvm.loop !9

.loopexit146:                                     ; preds = %bb.h, %bb.f
  %.sroa.0112.2 = phi ptr [ %i.l, %bb.f ], [ %.sroa.0112.1, %bb.h ] ; 4 uses
  %i.ab = icmp eq ptr %.sroa.0112.2, %i.e
  %.pre164 = load ptr, ptr %3, align 8            ; 2 uses
  br i1 %i.ab, label %bb.as, label %bb.i

bb.i:                                             ; preds = %.loopexit146
  %i.ac = load i32, ptr %.sroa.0112.2, align 4    ; 3 uses
  %i.ad = zext i32 %i.ac to i64                   ; 3 uses
  %i.ae = ptrtoint ptr %.sroa.0112.2 to i64
  %i.af = sub i64 %i.ae, %i.h
  %i.ag = ashr exact i64 %i.af, 2
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %.pre164, i64 %i.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.ai = load ptr, ptr %i.d, align 8
  %i.aj = load ptr, ptr %i.b, align 8
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 2
  %i.ao = add nsw i64 %i.an, -1
  invoke void @_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.ao)
          to label %.lr.ph159 unwind label %bb.k

.lr.ph159:                                        ; preds = %bb.i
  %i.ap = load ptr, ptr %1, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph159, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA55_KcEEEvDpOT_.exit
  %.sroa.0115.1158 = phi ptr [ %i.c, %.lr.ph159 ], [ %i.eo, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA55_KcEEEvDpOT_.exit ] ; 8 uses
  %.sroa.0109.0157 = phi ptr [ null, %.lr.ph159 ], [ %.sroa.0109.1, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA55_KcEEEvDpOT_.exit ] ; 3 uses
  %.sroa.0110.0156 = phi ptr [ %i.ap, %.lr.ph159 ], [ %i.er, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA55_KcEEEvDpOT_.exit ] ; 4 uses
  %i.as = icmp eq ptr %.sroa.0115.1158, %.sroa.0112.2
  br i1 %i.as, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA55_KcEEEvDpOT_.exit, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.l:                                             ; preds = %bb.j
  %i.au = ptrtoint ptr %.sroa.0115.1158 to i64
  %i.av = sub i64 %i.au, %i.h
  %i.aw = ashr exact i64 %i.av, 2
  %i.ax = load ptr, ptr %3, align 8
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.aw ; 3 uses
  %i.az = load double, ptr %i.ay, align 8         ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bb = load double, ptr %i.ba, align 8         ; 2 uses
  %i.bc = fmul double %i.bb, %i.bb
  %i.bd = call double @llvm.fmuladd.f64(double %i.az, double %i.az, double %i.bc)
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bf = load double, ptr %i.be, align 8         ; 2 uses
  %i.bg = call noundef double @llvm.fmuladd.f64(double %i.bf, double %i.bf, double %i.bd)
  %i.bh = fcmp olt double %i.bg, f0x3EE4F8B580000000
  br i1 %i.bh, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bi = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.m
  br i1 %i.bi, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA55_KcEEEvDpOT_.exit, label %bb.n

bb.n:                                             ; preds = %.noexc
  %i.bj = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc67 unwind label %bb.o

.noexc67:                                         ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.bk = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
          to label %.noexc68 unwind label %bb.o

.noexc68:                                         ; preds = %.noexc67
  store ptr %i.bk, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA55_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(55) @.str)
          to label %.noexc69 unwind label %bb.o

.noexc69:                                         ; preds = %.noexc68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA55_KcEEEvDpOT_.exit

bb.o:                                             ; preds = %bb.r, %.noexc68, %.noexc67, %bb.n, %bb.m
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.p:                                             ; preds = %bb.l
  %i.bm = load ptr, ptr %i.aq, align 8            ; 4 uses
  %i.bn = load ptr, ptr %i.ar, align 8
  %.not.i = icmp eq ptr %i.bm, %i.bn
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bm, i8 0, i64 88, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 88 ; 2 uses
  store ptr %i.bo, ptr %i.aq, align 8
  br label %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

bb.r:                                             ; preds = %bb.p
  invoke void @_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.bm)
          to label %._ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit_crit_edge unwind label %bb.o

._ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit_crit_edge: ; preds = %bb.r
  %.pre = load ptr, ptr %i.aq, align 8
  br label %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit: ; preds = %._ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit_crit_edge, %bb.q
  %i.bp = phi ptr [ %.pre, %._ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit_crit_edge ], [ %i.bo, %bb.q ] ; 4 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -88
  %i.br = getelementptr inbounds i8, ptr %i.bp, i64 -80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  store ptr null, ptr %i.bq, align 8
  %i.bs = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #28
          to label %bb.s unwind label %bb.ag      ; 5 uses

bb.s:                                             ; preds = %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i32 1, ptr %i.bt, align 8, !noalias !10
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i32 1, ptr %i.bu, align 4, !noalias !10
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6Assimp3IFC8TempMeshESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bs, align 8, !noalias !10
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bv, i8 0, i64 48, i1 false), !noalias !10
  %i.bw = getelementptr inbounds i8, ptr %i.bp, i64 -56 ; 4 uses
  store ptr %i.bv, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds i8, ptr %i.bp, i64 -48 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8            ; 8 uses
  store ptr %i.bs, ptr %i.bx, align 8
  %.not.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 4 uses
  %i.ca = load atomic i64, ptr %i.bz acquire, align 8 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 4294967297
  %i.cc = trunc i64 %i.ca to i32                  ; 2 uses
  br i1 %i.cb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.bz, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  store i32 0, ptr %i.cd, align 4
  %i.ce = load ptr, ptr %i.by, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #30, !inline_history !13
  %i.ch = load ptr, ptr %i.by, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #30, !inline_history !13
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.v:                                             ; preds = %bb.t
  %i.ck = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cl = add nsw i32 %i.cc, -1
  store i32 %i.cl, ptr %i.bz, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.cm = atomicrmw volatile add ptr %i.bz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i = phi i32 [ %i.cc, %bb.w ], [ %i.cm, %bb.x ]
  %i.cn = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cn, label %bb.y, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !14

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #30
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.u, %bb.s
  %i.co = load ptr, ptr %i.bw, align 8            ; 5 uses
  %i.cp = load i32, ptr %.sroa.0115.1158, align 4
  %i.cq = zext i32 %i.cp to i64                   ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = load ptr, ptr %i.co, align 8            ; 5 uses
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64               ; 2 uses
  %i.cw = sub i64 %i.cu, %i.cv                    ; 2 uses
  %i.cx = sdiv exact i64 %i.cw, 24
  %i.cy = icmp ult i64 %i.cx, %i.cq
  br i1 %i.cy, label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8            ; 3 uses
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.cv
  %i.dd = mul nuw nsw i64 %i.cq, 24
  %i.de = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #28
          to label %.noexc73 unwind label %.loopexit141 ; 4 uses

.noexc73:                                         ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i = icmp eq ptr %i.ct, %i.da
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc73, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dg, %.lr.ph.i.i.i.i ], [ %i.de, %.noexc73 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.df, %.lr.ph.i.i.i.i ], [ %i.ct, %.noexc73 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i64 24, i1 false), !alias.scope !15
  %i.df = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %.not.i.i.i.i72 = icmp eq ptr %i.df, %i.da
  br i1 %.not.i.i.i.i72, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !7

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc73
  %.not.i8.i = icmp eq ptr %i.ct, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cw) #29
  br label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.z, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.de, ptr %i.co, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dc
  store ptr %i.dh, ptr %i.cz, align 8
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %i.cq
  store ptr %i.di, ptr %i.cr, align 8
  %.pre161 = load ptr, ptr %i.bw, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i, %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dj = phi ptr [ %.pre161, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.co, %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 32 ; 4 uses
  %i.dm = load ptr, ptr %i.dl, align 8            ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 40 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8
  %.not.i74 = icmp eq ptr %i.dm, %i.do
  br i1 %.not.i74, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit
  %i.dp = load i32, ptr %.sroa.0115.1158, align 4
  store i32 %i.dp, ptr %i.dm, align 4
  %i.dq = load ptr, ptr %i.dl, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store ptr %i.dr, ptr %i.dl, align 8
  br label %bb.af

bb.ab:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit
  %i.ds = load ptr, ptr %i.dk, align 8            ; 4 uses
  %i.dt = ptrtoint ptr %i.dm to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du                    ; 6 uses
  %i.dw = icmp eq i64 %i.dv, 9223372036854775804
  br i1 %i.dw, label %bb.ac, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.noexc76 unwind label %.loopexit.split-lp142

.noexc76:                                         ; preds = %bb.ac
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ab
  %i.dx = ashr exact i64 %i.dv, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dx, i64 1)
  %i.dy = add nsw i64 %.sroa.speculated.i.i.i, %i.dx ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.dx
  %i.ea = call i64 @llvm.umin.i64(i64 %i.dy, i64 2305843009213693951)
  %i.eb = select i1 %i.dz, i64 2305843009213693951, i64 %i.ea ; 3 uses
  %.not.i.i.i75 = icmp ne i64 %i.eb, 0
  call void @llvm.assume(i1 %.not.i.i.i75)
  %i.ec = shl nuw nsw i64 %i.eb, 2
  %i.ed = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #28
          to label %.noexc77 unwind label %.loopexit141 ; 4 uses

.noexc77:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 %i.dv ; 2 uses
  %i.ef = load i32, ptr %.sroa.0115.1158, align 4
  store i32 %i.ef, ptr %i.ee, align 4
  %i.eg = icmp sgt i64 %i.dv, 0
  br i1 %i.eg, label %bb.ad, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.ad:                                            ; preds = %.noexc77
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ed, ptr align 4 %i.ds, i64 %i.dv, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.ad, %.noexc77
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %.not.i17.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dv) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.ae, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.ed, ptr %i.dk, align 8
  store ptr %i.eh, ptr %i.dl, align 8
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.eb
  store ptr %i.ei, ptr %i.dn, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.aa, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i
  %i.ej = load i32, ptr %.sroa.0115.1158, align 4
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0110.0156, i64 %i.ek
  %i.em = load ptr, ptr %i.bw, align 8
  %i.en = invoke ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPK10aiVector3tIdESt20back_insert_iteratorISt6vectorIS4_SaIS4_EEEEET0_T_SD_SC_(ptr noundef %.sroa.0110.0156, ptr noundef %i.el, ptr %i.em)
          to label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA55_KcEEEvDpOT_.exit unwind label %.loopexit141 ; 0 uses

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA55_KcEEEvDpOT_.exit: ; preds = %bb.j, %bb.af, %.noexc69, %.noexc
  %.sroa.0109.1 = phi ptr [ %.sroa.0109.0157, %bb.af ], [ %.sroa.0109.0157, %.noexc69 ], [ %.sroa.0109.0157, %.noexc ], [ %.sroa.0110.0156, %bb.j ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0115.1158, i64 4 ; 2 uses
  %i.ep = load i32, ptr %.sroa.0115.1158, align 4
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0110.0156, i64 %i.eq
  %.not138 = icmp eq ptr %i.eo, %i.e
  br i1 %.not138, label %._crit_edge, label %bb.j, !llvm.loop !19

bb.ag:                                            ; preds = %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.loopexit141:                                     ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i, %bb.af
  %lpad.loopexit143 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.loopexit.split-lp142:                            ; preds = %bb.ac
  %lpad.loopexit.split-lp144 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

._crit_edge:                                      ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA55_KcEEEvDpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  %i.et = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %.not139 = icmp eq i32 %i.ac, 0                 ; 2 uses
  br i1 %.not139, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i, label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i79

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i79: ; preds = %._crit_edge
  %i.eu = mul nuw nsw i64 %i.ad, 24
  %i.ev = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eu) #28
          to label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i87 unwind label %.loopexit.split-lp ; 4 uses

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i87: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i79
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.ev, ptr %5, align 8
  store ptr %i.ev, ptr %i.ew, align 8
  %i.ex = getelementptr inbounds nuw [24 x i8], ptr %i.ev, i64 %i.ad
  store ptr %i.ex, ptr %i.et, align 8
  br label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i87, %._crit_edge
  %.pre.i101 = phi ptr [ %i.ev, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i87 ], [ null, %._crit_edge ]
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.fa = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #28
          to label %bb.ah unwind label %bb.av     ; 3 uses

end_hunk_0
begin_hunk_1_@_ZN6Assimp3IFC19ProcessExtrudedAreaERKNS0_10Schema_2x320IfcExtrudedAreaSolidERKNS0_8TempMeshERK10aiVector3tIdERS5_RNS0_14ConversionDataEb:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.afj, align 8
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afj, i64 16
  store ptr %i.afh, ptr %i.afs, align 8
  store ptr %i.afj, ptr %i.afi, align 8
  invoke void @_ZNSt6vectorI10aiVector3tIdESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEEvS8_T_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.afh, ptr null, ptr %.sink, ptr %.0.lcssa.i.i.i.i.i)
          to label %bb.em unwind label %bb.gj

bb.em:                                            ; preds = %bb.el
  %i.aft = load ptr, ptr %19, align 8             ; 4 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aft, i64 24 ; 2 uses
  %i.afv = trunc i64 %i.ej to i32                 ; 2 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %i.aft, i64 32 ; 4 uses
  %i.afx = load ptr, ptr %i.afw, align 8          ; 3 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %i.aft, i64 40 ; 2 uses
  %i.afz = load ptr, ptr %i.afy, align 8
  %.not.i.i420 = icmp eq ptr %i.afx, %i.afz
  br i1 %.not.i.i420, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  store i32 %i.afv, ptr %i.afx, align 4
  %i.aga = load ptr, ptr %i.afw, align 8
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 4
  store ptr %i.agb, ptr %i.afw, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit429

bb.eo:                                            ; preds = %bb.em
  %i.agc = load ptr, ptr %i.afu, align 8          ; 4 uses
  %i.agd = ptrtoint ptr %i.afx to i64
  %i.age = ptrtoint ptr %i.agc to i64
  %i.agf = sub i64 %i.agd, %i.age                 ; 6 uses
  %i.agg = icmp eq i64 %i.agf, 9223372036854775804
  br i1 %i.agg, label %bb.ep, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i421

bb.ep:                                            ; preds = %bb.eo
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.noexc427 unwind label %bb.gk

.noexc427:                                        ; preds = %bb.ep
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i421: ; preds = %bb.eo
  %i.agh = ashr exact i64 %i.agf, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i422 = call i64 @llvm.umax.i64(i64 %i.agh, i64 1)
  %i.agi = add nsw i64 %.sroa.speculated.i.i.i.i422, %i.agh ; 2 uses
  %i.agj = icmp ult i64 %i.agi, %i.agh
  %i.agk = call i64 @llvm.umin.i64(i64 %i.agi, i64 2305843009213693951)
  %i.agl = select i1 %i.agj, i64 2305843009213693951, i64 %i.agk ; 3 uses
  %.not.i.i.i.i423 = icmp ne i64 %i.agl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i423)
  %i.agm = shl nuw nsw i64 %i.agl, 2
  %i.agn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.agm) #28
          to label %.noexc428 unwind label %bb.gk ; 4 uses

.noexc428:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i421
  %i.ago = getelementptr inbounds i8, ptr %i.agn, i64 %i.agf ; 2 uses
  store i32 %i.afv, ptr %i.ago, align 4
  %i.agp = icmp sgt i64 %i.agf, 0
  br i1 %i.agp, label %bb.eq, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i424

bb.eq:                                            ; preds = %.noexc428
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.agn, ptr align 4 %i.agc, i64 %i.agf, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i424

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i424: ; preds = %bb.eq, %.noexc428
  %i.agq = getelementptr inbounds nuw i8, ptr %i.ago, i64 4
  %.not.i17.i.i.i425 = icmp eq ptr %i.agc, null
  br i1 %.not.i17.i.i.i425, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i426, label %bb.er

bb.er:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i424
  call void @_ZdlPvm(ptr noundef nonnull %i.agc, i64 noundef %i.agf) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i426

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i426: ; preds = %bb.er, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i424
  store ptr %i.agn, ptr %i.afu, align 8
  store ptr %i.agq, ptr %i.afw, align 8
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %i.agl
  store ptr %i.agr, ptr %i.afy, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit429

_ZNSt6vectorIjSaIjEE9push_backEOj.exit429:        ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i426, %bb.en
  %i.ags = getelementptr inbounds nuw i8, ptr %4, i64 336
  %i.agt = load ptr, ptr %i.ags, align 8          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  %i.agu = getelementptr inbounds nuw i8, ptr %20, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.agu, ptr noundef nonnull align 16 dereferenceable(24) %9, i64 24, i1 false)
  %i.agv = load ptr, ptr %18, align 8
  %i.agw = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store ptr null, ptr %i.aew, align 8
  store ptr null, ptr %18, align 8
  %i.agx = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  store ptr null, ptr %i.afi, align 8
  store ptr null, ptr %19, align 8
  store ptr %0, ptr %20, align 8
  %i.agy = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 3 uses
  store ptr %i.agv, ptr %i.agy, align 8
  %i.agz = getelementptr inbounds nuw i8, ptr %20, i64 40 ; 4 uses
  store ptr null, ptr %i.agw, align 8
  store ptr %i.aex, ptr %i.agz, align 8
  store ptr null, ptr %21, align 8
  %i.aha = getelementptr inbounds nuw i8, ptr %20, i64 48 ; 3 uses
  store ptr %i.aft, ptr %i.aha, align 8
  %i.ahb = getelementptr inbounds nuw i8, ptr %20, i64 56 ; 4 uses
  store ptr null, ptr %i.agx, align 8
  store ptr %i.afj, ptr %i.ahb, align 8
  store ptr null, ptr %22, align 8
  %i.ahc = getelementptr inbounds nuw i8, ptr %20, i64 64 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ahc, i8 0, i64 24, i1 false)
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agt, i64 8 ; 3 uses
  %i.ahe = load ptr, ptr %i.ahd, align 8          ; 10 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.agt, i64 16
  %i.ahg = load ptr, ptr %i.ahf, align 8
  %.not.i.i430 = icmp eq ptr %i.ahe, %i.ahg
  br i1 %.not.i.i430, label %bb.et, label %bb.es

bb.es:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit429
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ahe, ptr noundef nonnull align 8 dereferenceable(88) %20, i64 32, i1 false)
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahe, i64 32
  %i.ahi = load ptr, ptr %i.agy, align 8
  store ptr %i.ahi, ptr %i.ahh, align 8
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahe, i64 40
  %i.ahk = load ptr, ptr %i.agz, align 8
  store ptr null, ptr %i.agz, align 8
  store ptr %i.ahk, ptr %i.ahj, align 8
  store ptr null, ptr %i.agy, align 8
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahe, i64 48
  %i.ahm = load ptr, ptr %i.aha, align 8
  store ptr %i.ahm, ptr %i.ahl, align 8
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahe, i64 56
  %i.aho = load ptr, ptr %i.ahb, align 8
  store ptr null, ptr %i.ahb, align 8
  store ptr %i.aho, ptr %i.ahn, align 8
  store ptr null, ptr %i.aha, align 8
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahe, i64 64
  %i.ahq = load ptr, ptr %i.ahc, align 8
  store ptr %i.ahq, ptr %i.ahp, align 8
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahe, i64 72
  %i.ahs = getelementptr inbounds nuw i8, ptr %20, i64 72
  %i.aht = load ptr, ptr %i.ahs, align 8
  store ptr %i.aht, ptr %i.ahr, align 8
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahe, i64 80
  %i.ahv = getelementptr inbounds nuw i8, ptr %20, i64 80
  %i.ahw = load ptr, ptr %i.ahv, align 8
  store ptr %i.ahw, ptr %i.ahu, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ahc, i8 0, i64 24, i1 false)
  %i.ahx = load ptr, ptr %i.ahd, align 8
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 88
  store ptr %i.ahy, ptr %i.ahd, align 8
  br label %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE9push_backEOS2_.exit

bb.et:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit429
  invoke void @_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.agt, ptr %i.ahe, ptr noundef nonnull align 8 dereferenceable(88) %20)
          to label %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE9push_backEOS2_.exit unwind label %bb.gl

_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.es, %bb.et
  %i.ahz = load ptr, ptr %i.ahc, align 8          ; 3 uses
  %.not.i.i.i.i432 = icmp eq ptr %i.ahz, null
  br i1 %.not.i.i.i.i432, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i, label %bb.eu

bb.eu:                                            ; preds = %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE9push_backEOS2_.exit
  %i.aia = getelementptr inbounds nuw i8, ptr %20, i64 80
  %i.aib = load ptr, ptr %i.aia, align 8
  %i.aic = ptrtoint ptr %i.aib to i64
  %i.aid = ptrtoint ptr %i.ahz to i64
  %i.aie = sub i64 %i.aic, %i.aid
  call void @_ZdlPvm(ptr noundef nonnull %i.ahz, i64 noundef %i.aie) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i:  ; preds = %bb.eu, %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE9push_backEOS2_.exit
  %i.aif = load ptr, ptr %i.ahb, align 8          ; 8 uses
  %.not.i.i.i433 = icmp eq ptr %i.aif, null
  br i1 %.not.i.i.i433, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ev

bb.ev:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 8 ; 4 uses
  %i.aih = load atomic i64, ptr %i.aig acquire, align 8 ; 2 uses
  %i.aii = icmp eq i64 %i.aih, 4294967297
  %i.aij = trunc i64 %i.aih to i32                ; 2 uses
  br i1 %i.aii, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  store i32 0, ptr %i.aig, align 8
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aif, i64 12
  store i32 0, ptr %i.aik, align 4
  %i.ail = load ptr, ptr %i.aif, align 8
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 16
  %i.ain = load ptr, ptr %i.aim, align 8
  call void %i.ain(ptr noundef nonnull align 8 dereferenceable(16) %i.aif) #30, !inline_history !220
  %i.aio = load ptr, ptr %i.aif, align 8
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 24
  %i.aiq = load ptr, ptr %i.aip, align 8
  call void %i.aiq(ptr noundef nonnull align 8 dereferenceable(16) %i.aif) #30, !inline_history !220
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ex:                                            ; preds = %bb.ev
  %i.air = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i1.i = icmp eq i8 %i.air, 0
  br i1 %.not.i.i.i1.i, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.ais = add nsw i32 %i.aij, -1
  store i32 %i.ais, ptr %i.aig, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ez:                                            ; preds = %bb.ex
  %i.ait = atomicrmw volatile add ptr %i.aig, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ez, %bb.ey
  %.0.i.i.i.i.i = phi i32 [ %i.aij, %bb.ey ], [ %i.ait, %bb.ez ]
  %i.aiu = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aiu, label %bb.fa, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !14

bb.fa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aif) #30
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.fa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ew, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i
  %i.aiv = load ptr, ptr %i.agz, align 8          ; 8 uses
  %.not.i.i2.i = icmp eq ptr %i.aiv, null
  br i1 %.not.i.i2.i, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, label %bb.fb

bb.fb:                                            ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 8 ; 4 uses
  %i.aix = load atomic i64, ptr %i.aiw acquire, align 8 ; 2 uses
  %i.aiy = icmp eq i64 %i.aix, 4294967297
  %i.aiz = trunc i64 %i.aix to i32                ; 2 uses
  br i1 %i.aiy, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  store i32 0, ptr %i.aiw, align 8
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiv, i64 12
  store i32 0, ptr %i.aja, align 4
  %i.ajb = load ptr, ptr %i.aiv, align 8
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 16
  %i.ajd = load ptr, ptr %i.ajc, align 8
  call void %i.ajd(ptr noundef nonnull align 8 dereferenceable(16) %i.aiv) #30, !inline_history !220
  %i.aje = load ptr, ptr %i.aiv, align 8
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aje, i64 24
  %i.ajg = load ptr, ptr %i.ajf, align 8
  call void %i.ajg(ptr noundef nonnull align 8 dereferenceable(16) %i.aiv) #30, !inline_history !220
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit

bb.fd:                                            ; preds = %bb.fb
  %i.ajh = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i3.i = icmp eq i8 %i.ajh, 0
  br i1 %.not.i.i.i3.i, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.aji = add nsw i32 %i.aiz, -1
  store i32 %i.aji, ptr %i.aiw, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

bb.ff:                                            ; preds = %bb.fd
  %i.ajj = atomicrmw volatile add ptr %i.aiw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i: ; preds = %bb.ff, %bb.fe
  %.0.i.i.i.i5.i = phi i32 [ %i.aiz, %bb.fe ], [ %i.ajj, %bb.ff ]
  %i.ajk = icmp eq i32 %.0.i.i.i.i5.i, 1
  br i1 %i.ajk, label %bb.fg, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, !prof !14

bb.fg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aiv) #30
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit

_ZN6Assimp3IFC11TempOpeningD2Ev.exit:             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.fc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i, %bb.fg
  %i.ajl = load ptr, ptr %i.agx, align 8          ; 8 uses
  %.not.i.i434 = icmp eq ptr %i.ajl, null
  br i1 %.not.i.i434, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.fh

bb.fh:                                            ; preds = %_ZN6Assimp3IFC11TempOpeningD2Ev.exit
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 8 ; 4 uses
  %i.ajn = load atomic i64, ptr %i.ajm acquire, align 8 ; 2 uses
  %i.ajo = icmp eq i64 %i.ajn, 4294967297
  %i.ajp = trunc i64 %i.ajn to i32                ; 2 uses
  br i1 %i.ajo, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  store i32 0, ptr %i.ajm, align 8
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajl, i64 12
  store i32 0, ptr %i.ajq, align 4
  %i.ajr = load ptr, ptr %i.ajl, align 8
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 16
  %i.ajt = load ptr, ptr %i.ajs, align 8
  call void %i.ajt(ptr noundef nonnull align 8 dereferenceable(16) %i.ajl) #30, !inline_history !221
  %i.aju = load ptr, ptr %i.ajl, align 8
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 24
  %i.ajw = load ptr, ptr %i.ajv, align 8
  call void %i.ajw(ptr noundef nonnull align 8 dereferenceable(16) %i.ajl) #30, !inline_history !221
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.fj:                                            ; preds = %bb.fh
  %i.ajx = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i435 = icmp eq i8 %i.ajx, 0
  br i1 %.not.i.i.i435, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.ajy = add nsw i32 %i.ajp, -1
  store i32 %i.ajy, ptr %i.ajm, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.fl:                                            ; preds = %bb.fj
  %i.ajz = atomicrmw volatile add ptr %i.ajm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.fl, %bb.fk
  %.0.i.i.i.i = phi i32 [ %i.ajp, %bb.fk ], [ %i.ajz, %bb.fl ]
  %i.aka = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aka, label %bb.fm, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !14

bb.fm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ajl) #30
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, %bb.fi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.fm
  %i.akb = load ptr, ptr %i.agw, align 8          ; 8 uses
  %.not.i.i436 = icmp eq ptr %i.akb, null
  br i1 %.not.i.i436, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit440, label %bb.fn

bb.fn:                                            ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.akc = getelementptr inbounds nuw i8, ptr %i.akb, i64 8 ; 4 uses
  %i.akd = load atomic i64, ptr %i.akc acquire, align 8 ; 2 uses
  %i.ake = icmp eq i64 %i.akd, 4294967297
  %i.akf = trunc i64 %i.akd to i32                ; 2 uses
  br i1 %i.ake, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  store i32 0, ptr %i.akc, align 8
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akb, i64 12
  store i32 0, ptr %i.akg, align 4
  %i.akh = load ptr, ptr %i.akb, align 8
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 16
  %i.akj = load ptr, ptr %i.aki, align 8
  call void %i.akj(ptr noundef nonnull align 8 dereferenceable(16) %i.akb) #30, !inline_history !221
  %i.akk = load ptr, ptr %i.akb, align 8
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 24
  %i.akm = load ptr, ptr %i.akl, align 8
  call void %i.akm(ptr noundef nonnull align 8 dereferenceable(16) %i.akb) #30, !inline_history !221
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit440

bb.fp:                                            ; preds = %bb.fn
  %i.akn = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i437 = icmp eq i8 %i.akn, 0
  br i1 %.not.i.i.i437, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.ako = add nsw i32 %i.akf, -1
  store i32 %i.ako, ptr %i.akc, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i438

bb.fr:                                            ; preds = %bb.fp
  %i.akp = atomicrmw volatile add ptr %i.akc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i438

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i438: ; preds = %bb.fr, %bb.fq
  %.0.i.i.i.i439 = phi i32 [ %i.akf, %bb.fq ], [ %i.akp, %bb.fr ]
  %i.akq = icmp eq i32 %.0.i.i.i.i439, 1
  br i1 %i.akq, label %bb.fs, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit440, !prof !14

bb.fs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i438
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.akb) #30
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit440

_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit440: ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.fo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i438, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  %i.akr = load ptr, ptr %i.afi, align 8          ; 8 uses
  %.not.i.i441 = icmp eq ptr %i.akr, null
  br i1 %.not.i.i441, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit445, label %bb.ft

bb.ft:                                            ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit440
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akr, i64 8 ; 4 uses
  %i.akt = load atomic i64, ptr %i.aks acquire, align 8 ; 2 uses
  %i.aku = icmp eq i64 %i.akt, 4294967297
  %i.akv = trunc i64 %i.akt to i32                ; 2 uses
  br i1 %i.aku, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  store i32 0, ptr %i.aks, align 8
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akr, i64 12
  store i32 0, ptr %i.akw, align 4
  %i.akx = load ptr, ptr %i.akr, align 8
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akx, i64 16
  %i.akz = load ptr, ptr %i.aky, align 8
  call void %i.akz(ptr noundef nonnull align 8 dereferenceable(16) %i.akr) #30, !inline_history !221
  %i.ala = load ptr, ptr %i.akr, align 8
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ala, i64 24
  %i.alc = load ptr, ptr %i.alb, align 8
  call void %i.alc(ptr noundef nonnull align 8 dereferenceable(16) %i.akr) #30, !inline_history !221
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit445

bb.fv:                                            ; preds = %bb.ft
  %i.ald = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i442 = icmp eq i8 %i.ald, 0
  br i1 %.not.i.i.i442, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.ale = add nsw i32 %i.akv, -1
  store i32 %i.ale, ptr %i.aks, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i443

bb.fx:                                            ; preds = %bb.fv
  %i.alf = atomicrmw volatile add ptr %i.aks, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i443

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i443: ; preds = %bb.fx, %bb.fw
  %.0.i.i.i.i444 = phi i32 [ %i.akv, %bb.fw ], [ %i.alf, %bb.fx ]
  %i.alg = icmp eq i32 %.0.i.i.i.i444, 1
  br i1 %i.alg, label %bb.fy, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit445, !prof !14

bb.fy:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i443
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.akr) #30
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit445

_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit445: ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit440, %bb.fu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i443, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  %i.alh = load ptr, ptr %i.aew, align 8          ; 8 uses
  %.not.i.i446 = icmp eq ptr %i.alh, null
  br i1 %.not.i.i446, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit450, label %bb.fz

bb.fz:                                            ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit445
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alh, i64 8 ; 4 uses
  %i.alj = load atomic i64, ptr %i.ali acquire, align 8 ; 2 uses
  %i.alk = icmp eq i64 %i.alj, 4294967297
  %i.all = trunc i64 %i.alj to i32                ; 2 uses
  br i1 %i.alk, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  store i32 0, ptr %i.ali, align 8
  %i.alm = getelementptr inbounds nuw i8, ptr %i.alh, i64 12
  store i32 0, ptr %i.alm, align 4
  %i.aln = load ptr, ptr %i.alh, align 8
  %i.alo = getelementptr inbounds nuw i8, ptr %i.aln, i64 16
  %i.alp = load ptr, ptr %i.alo, align 8
  call void %i.alp(ptr noundef nonnull align 8 dereferenceable(16) %i.alh) #30, !inline_history !221
  %i.alq = load ptr, ptr %i.alh, align 8
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 24
  %i.als = load ptr, ptr %i.alr, align 8
  call void %i.als(ptr noundef nonnull align 8 dereferenceable(16) %i.alh) #30, !inline_history !221
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit450

bb.gb:                                            ; preds = %bb.fz
  %i.alt = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i447 = icmp eq i8 %i.alt, 0
  br i1 %.not.i.i.i447, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.alu = add nsw i32 %i.all, -1
  store i32 %i.alu, ptr %i.ali, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i448

bb.gd:                                            ; preds = %bb.gb
  %i.alv = atomicrmw volatile add ptr %i.ali, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i448

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i448: ; preds = %bb.gd, %bb.gc
  %.0.i.i.i.i449 = phi i32 [ %i.all, %bb.gc ], [ %i.alv, %bb.gd ]
  %i.alw = icmp eq i32 %.0.i.i.i.i449, 1
  br i1 %i.alw, label %bb.ge, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit450, !prof !14

bb.ge:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i448
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.alh) #30
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit450

_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit450: ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit445, %bb.ga, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i448, %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br label %bb.go

bb.gf:                                            ; preds = %.noexc414, %.noexc413, %bb.dw, %bb.dv
  %i.alx = landingpad { ptr, i32 }
          cleanup
  br label %bb.gt

bb.gg:                                            ; preds = %bb.dy
  %i.aly = landingpad { ptr, i32 }
          cleanup
  br label %.body461

bb.gh:                                            ; preds = %bb.ee
  %i.alz = landingpad { ptr, i32 }
          cleanup
  br label %bb.gn

bb.gi:                                            ; preds = %bb.ef
  %i.ama = landingpad { ptr, i32 }
          cleanup
  br label %.body463

bb.gj:                                            ; preds = %bb.el
  %i.amb = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.gk:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i421, %bb.ep
  %i.amc = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.gl:                                            ; preds = %bb.et
  %i.amd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp3IFC11TempOpeningD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %20) #30
  call void @_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %22) #30
  call void @_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %21) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk, %bb.gj
  %.pn161 = phi { ptr, i32 } [ %i.amd, %bb.gl ], [ %i.amc, %bb.gk ], [ %i.amb, %bb.gj ]
  call void @_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %19) #30
  br label %.body463

.body463:                                         ; preds = %bb.gi, %bb.ei, %bb.gm
  %.pn161.pn = phi { ptr, i32 } [ %.pn161, %bb.gm ], [ %i.ama, %bb.gi ], [ %i.afn, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %bb.gn

bb.gn:                                            ; preds = %.body463, %bb.gh
  %.pn161.pn.pn = phi { ptr, i32 } [ %.pn161.pn, %.body463 ], [ %i.alz, %bb.gh ]
  call void @_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #30
  br label %.body461

.body461:                                         ; preds = %bb.gg, %bb.eb, %bb.gn
  %.pn161.pn.pn.pn = phi { ptr, i32 } [ %.pn161.pn.pn, %bb.gn ], [ %i.aly, %bb.gg ], [ %i.afb, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br label %bb.gt

bb.go:                                            ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit450, %bb.dx, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA63_KcEEEvDpOT_.exit
  %i.ame = load ptr, ptr %.sroa.gep, align 8      ; 3 uses
  %.not.i.i.i.i451 = icmp eq ptr %i.ame, null
  br i1 %.not.i.i.i.i451, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.amf = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.amg = load ptr, ptr %i.amf, align 8
  %i.amh = ptrtoint ptr %i.amg to i64
  %i.ami = ptrtoint ptr %i.ame to i64
  %i.amj = sub i64 %i.amh, %i.ami
  call void @_ZdlPvm(ptr noundef nonnull %i.ame, i64 noundef %i.amj) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i:                  ; preds = %bb.gp, %bb.go
  %i.amk = load ptr, ptr %13, align 8             ; 3 uses
  %.not.i.i.i1.i452 = icmp eq ptr %i.amk, null
  br i1 %.not.i.i.i1.i452, label %_ZN6Assimp3IFC8TempMeshD2Ev.exit, label %bb.gq

bb.gq:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  %i.aml = load ptr, ptr %.sroa.gep508, align 8
  %i.amm = ptrtoint ptr %i.aml to i64
  %i.amn = ptrtoint ptr %i.amk to i64
  %i.amo = sub i64 %i.amm, %i.amn
  call void @_ZdlPvm(ptr noundef nonnull %i.amk, i64 noundef %i.amo) #29
  br label %_ZN6Assimp3IFC8TempMeshD2Ev.exit

_ZN6Assimp3IFC8TempMeshD2Ev.exit:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i, %bb.gq
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %.not.i.i.i454 = icmp eq ptr %.sroa.0575.2, null
  br i1 %.not.i.i.i454, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit, label %bb.gr

bb.gr:                                            ; preds = %_ZN6Assimp3IFC8TempMeshD2Ev.exit
  %i.amp = ptrtoint ptr %.sroa.22.2 to i64
  %i.amq = ptrtoint ptr %.sroa.0575.2 to i64
  %i.amr = sub i64 %i.amp, %i.amq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0575.2, i64 noundef %i.amr) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit:    ; preds = %_ZN6Assimp3IFC8TempMeshD2Ev.exit, %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %.not.i.i.i455 = icmp eq ptr %.sink, null
  br i1 %.not.i.i.i455, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit456, label %bb.gs

bb.gs:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef %.pre-phi909) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit456

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit456: ; preds = %bb.gs, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit, %bb.b, %bb.c
  ret void

bb.gt:                                            ; preds = %.loopexit682, %.loopexit.split-lp683, %.loopexit675, %.loopexit.split-lp676, %.loopexit672, %.loopexit.split-lp, %.loopexit703, %.loopexit.split-lp704, %.loopexit698, %.loopexit.split-lp699, %.loopexit693, %.loopexit.split-lp694, %.loopexit688, %.loopexit.split-lp689, %bb.du, %bb.gf, %.body461, %bb.dg, %bb.bz, %bb.cp
  %.pn174.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %.pn170.pn.pn, %bb.cp ], [ %lpad.loopexit.split-lp691, %.loopexit.split-lp689 ], [ %i.vr, %bb.bz ], [ %lpad.loopexit.split-lp701, %.loopexit.split-lp699 ], [ %lpad.loopexit.split-lp696, %.loopexit.split-lp694 ], [ %.pn.pn.pn, %bb.du ], [ %.pn161.pn.pn.pn, %.body461 ], [ %i.alx, %bb.gf ], [ %lpad.loopexit.split-lp706, %.loopexit.split-lp704 ], [ %i.abs, %bb.dg ], [ %lpad.loopexit.split-lp678, %.loopexit.split-lp676 ], [ %lpad.loopexit690, %.loopexit688 ], [ %lpad.loopexit695, %.loopexit693 ], [ %lpad.loopexit700, %.loopexit698 ], [ %lpad.loopexit705, %.loopexit703 ], [ %lpad.loopexit, %.loopexit672 ], [ %lpad.loopexit677, %.loopexit675 ], [ %lpad.loopexit684, %.loopexit682 ], [ %lpad.loopexit.split-lp685, %.loopexit.split-lp683 ]
  call void @_ZN6Assimp3IFC8TempMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.gu

bb.gu:                                            ; preds = %.loopexit708, %.loopexit.split-lp709, %.loopexit713, %.loopexit.split-lp714, %bb.ay, %bb.gt
  %.sroa.22.3 = phi ptr [ %.sroa.12.0800, %.loopexit.split-lp714 ], [ %.sroa.22.2, %bb.gt ], [ %.sroa.22.0799, %bb.ay ], [ %.sroa.12.0800, %.loopexit713 ], [ %.sroa.12.0800, %.loopexit708 ], [ %.sroa.12.0800, %.loopexit.split-lp709 ]
  %.sroa.0575.3 = phi ptr [ %.sroa.0575.0801, %.loopexit.split-lp714 ], [ %.sroa.0575.2, %bb.gt ], [ %.sroa.0575.0801, %bb.ay ], [ %.sroa.0575.0801, %.loopexit713 ], [ %.sroa.0575.0801, %.loopexit708 ], [ %.sroa.0575.0801, %.loopexit.split-lp709 ] ; 3 uses
  %.pn188.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp716, %.loopexit.split-lp714 ], [ %.pn174.pn, %bb.gt ], [ %.pn181.pn.pn, %bb.ay ], [ %lpad.loopexit715, %.loopexit713 ], [ %lpad.loopexit710, %.loopexit708 ], [ %lpad.loopexit.split-lp711, %.loopexit.split-lp709 ] ; 2 uses
  %.not.i.i.i457 = icmp eq ptr %.sroa.0575.3, null
  br i1 %.not.i.i.i457, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit458, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.ams = ptrtoint ptr %.sroa.22.3 to i64
  %i.amt = ptrtoint ptr %.sroa.0575.3 to i64
  %i.amu = sub i64 %i.ams, %i.amt
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0575.3, i64 noundef %i.amu) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit458

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit458: ; preds = %.thread655.loopexit, %.thread655.loopexit.split-lp, %bb.gv, %bb.gu, %bb.s
  %.pn188.pn.pn = phi { ptr, i32 } [ %i.gf, %bb.s ], [ %.pn188.pn, %bb.gv ], [ %.pn188.pn, %bb.gu ], [ %lpad.loopexit718, %.thread655.loopexit ], [ %lpad.loopexit.split-lp719, %.thread655.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.gw

bb.gw:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit458, %bb.o
  %.pn192.pn.pn = phi { ptr, i32 } [ %i.ek, %bb.o ], [ %.pn188.pn.pn, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit458 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %.not.i.i.i459 = icmp eq ptr %.sink, null
  br i1 %.not.i.i.i459, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit460, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef %.pre-phi909) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit460

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit460: ; preds = %bb.gw, %bb.gx
  resume { ptr, i32 } %.pn192.pn.pn
}

declare void @_ZN6Assimp3IFC8TempMesh20ComputePolygonNormalEPK10aiVector3tIdEmb(ptr dead_on_unwind writable sret(%class.aiVector3t) align 8, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJPKcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.d = tail call noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
  store ptr %i.d, ptr %i.a, align 8
  call void @_ZN6Assimp6Logger4warnIJPKcS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4 align 2

declare void @_ZN6Assimp3IFC8TempMesh5ClearEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

declare void @_ZN6Assimp3IFC8TempMesh4SwapERS1_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp3IFC11TempOpeningD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8              ; 8 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4
  %i.o = load ptr, ptr %i.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #30, !inline_history !221
  %i.r = load ptr, ptr %i.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #30, !inline_history !221
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i1 = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.x, label %bb.h, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !14

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #30
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8              ; 8 uses
  %.not.i.i2 = icmp eq ptr %i.z, null
  br i1 %.not.i.i2, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit6, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.aa, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.ae, align 4
  %i.af = load ptr, ptr %i.z, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #30, !inline_history !221
  %i.ai = load ptr, ptr %i.z, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #30, !inline_history !221
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit6

bb.k:                                             ; preds = %bb.i
  %i.al = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i3 = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = add nsw i32 %i.ad, -1
  store i32 %i.am, ptr %i.aa, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4

bb.m:                                             ; preds = %bb.k
  %i.an = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i5 = phi i32 [ %i.ad, %bb.l ], [ %i.an, %bb.m ]
  %i.ao = icmp eq i32 %.0.i.i.i.i5, 1
  br i1 %i.ao, label %bb.n, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit6, !prof !14

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #30
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit6

_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit6: ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4, %bb.n
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC24ProcessExtrudedAreaSolidERKNS0_10Schema_2x320IfcExtrudedAreaSolidERNS0_8TempMeshERNS0_14ConversionDataEb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(392) %2, i1 noundef zeroext %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Assimp::IFC::TempMesh", align 8 ; 13 uses
  %5 = alloca %class.aiVector3t, align 16         ; 10 uses
  %6 = alloca %"class.std::vector.29", align 8    ; 11 uses
  %7 = alloca %"struct.Assimp::IFC::TempMesh", align 8 ; 11 uses
  %8 = alloca %"struct.Assimp::IFC::TempMesh", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x313IfcProfileDefEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef zeroext i1 @_ZN6Assimp3IFC14ProcessProfileERKNS0_10Schema_2x313IfcProfileDefERNS0_8TempMeshERNS0_14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(392) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.aa

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %4, align 8
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 24
  %i.k = icmp ult i64 %i.j, 2
  br i1 %i.k, label %bb.aa, label %bb.f

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x312IfcDirectionEEcvRKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6Assimp3IFC16ConvertDirectionER10aiVector3tIdERKNS0_10Schema_2x312IfcDirectionE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(72) %i.n)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load double, ptr %i.o, align 8           ; 2 uses
  %i.q = load <2 x double>, ptr %5, align 16
  %i.r = insertelement <2 x double> poison, double %i.p, i64 0
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x double> %i.s, %i.q
  store <2 x double> %i.t, ptr %5, align 16
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.v = load double, ptr %i.u, align 16
  %i.w = fmul double %i.p, %i.v
  store double %i.w, ptr %i.u, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 328 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = invoke noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x313IfcProfileDefEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.i unwind label %bb.m       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 %i.ac
  %i.ae = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.ad, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x331IfcArbitraryProfileDefWithVoidsE, i64 -1) #30 ; 3 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.x, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 128 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 136 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = icmp eq ptr %i.ag, %i.ai
  br i1 %i.aj, label %bb.x, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 4 uses
  %i.al = load ptr, ptr %i.ak, align 8
  store ptr %6, ptr %i.ak, align 8
  %i.am = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.an = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not5152 = icmp eq ptr %i.am, %i.an
  br i1 %.not5152, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.n

._crit_edge.loopexit:                             ; preds = %_ZN6Assimp3IFC8TempMeshD2Ev.exit43
  %.pre = load ptr, ptr %i.ak, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.k
  %i.au = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %6, %bb.k ]
  store ptr %i.au, ptr %i.x, align 8
  store ptr %i.al, ptr %i.ak, align 8
  br label %bb.x

bb.l:                                             ; preds = %bb.g, %bb.f
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.m:                                             ; preds = %bb.h
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.n:                                             ; preds = %.lr.ph, %_ZN6Assimp3IFC8TempMeshD2Ev.exit43
  %.sroa.048.053 = phi ptr [ %i.am, %.lr.ph ], [ %i.bt, %_ZN6Assimp3IFC8TempMeshD2Ev.exit43 ] ; 2 uses
  %i.ax = invoke noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x38IfcCurveEEcvPKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.048.053)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  %i.ay = invoke noundef zeroext i1 @_ZN6Assimp3IFC12ProcessCurveERKNS0_10Schema_2x38IfcCurveERNS0_8TempMeshERNS0_14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(41) %i.ax, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(392) %2)
          to label %bb.p unwind label %bb.w       ; 0 uses

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN6Assimp3IFC19ProcessExtrudedAreaERKNS0_10Schema_2x320IfcExtrudedAreaSolidERKNS0_8TempMeshERK10aiVector3tIdERS5_RNS0_14ConversionDataEb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(392) %2, i1 noundef zeroext true)
          to label %bb.q unwind label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.az = load ptr, ptr %i.ao, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = load ptr, ptr %i.ap, align 8
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = sub i64 %i.bb, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bd) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i:                  ; preds = %bb.r, %bb.q
  %i.be = load ptr, ptr %8, align 8               ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i1.i, label %_ZN6Assimp3IFC8TempMeshD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  %i.bf = load ptr, ptr %i.aq, align 8
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = sub i64 %i.bg, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bi) #29
  br label %_ZN6Assimp3IFC8TempMeshD2Ev.exit

_ZN6Assimp3IFC8TempMeshD2Ev.exit:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.bj = load ptr, ptr %i.ar, align 8            ; 3 uses
  %.not.i.i.i.i40 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i40, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i41, label %bb.t

bb.t:                                             ; preds = %_ZN6Assimp3IFC8TempMeshD2Ev.exit
  %i.bk = load ptr, ptr %i.as, align 8
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bn) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i41

_ZNSt6vectorIjSaIjEED2Ev.exit.i41:                ; preds = %bb.t, %_ZN6Assimp3IFC8TempMeshD2Ev.exit
  %i.bo = load ptr, ptr %7, align 8               ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN6Assimp3IFC20ProcessGeometricItemERKNS0_10Schema_2x321IfcRepresentationItemEjRSt3setIjSt4lessIjESaIjEERNS0_14ConversionDataE:bb.a

bb.as:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

bb.at:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit167, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.an
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = load ptr, ptr %6, align 8               ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %bb.at
  %i.cp = load i64, ptr %i.cn, align 8
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172, %bb.as
  %.pn = phi { ptr, i32 } [ %i.ck, %bb.as ], [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172 ], [ %i.cl, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.aw

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

bb.av:                                            ; preds = %bb.ao
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ct = load ptr, ptr %7, align 8               ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %bb.av
  %i.cw = load i64, ptr %i.cu, align 8
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175, %bb.au
  %.pn130 = phi { ptr, i32 } [ %i.cr, %bb.au ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175 ], [ %i.cs, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, %bb.ar
  %.pn130.pn = phi { ptr, i32 } [ %.pn130, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174 ], [ %i.cj, %bb.ar ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #30
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.aq
  %.pn130.pn.pn = phi { ptr, i32 } [ %.pn130.pn, %bb.aw ], [ %i.ci, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.loopexit

.critedge157:                                     ; preds = %bb.m, %bb.af, %bb.b, %bb.ad, %bb.ai, %bb.q, %bb.w, %bb.aa, %bb.t
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 336
  %i.cz = load ptr, ptr %i.cy, align 8            ; 4 uses
  %.not146 = icmp eq ptr %i.cz, null
  %i.da = load ptr, ptr %i.f, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = icmp eq ptr %i.da, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = icmp eq ptr %i.df, %i.dh
  %i.dj = select i1 %i.dd, i1 %i.di, i1 false     ; 2 uses
  br i1 %.not146, label %bb.cd, label %bb.ay

bb.ay:                                            ; preds = %.critedge157
  br i1 %i.dj, label %.critedge161.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.dk = load ptr, ptr %0, align 8
  %i.dl = getelementptr i8, ptr %i.dk, i64 -24
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds i8, ptr %0, i64 %i.dm
  %i.do = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.dn, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x313IfcSolidModelE, i64 -1) #30
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr null, ptr %i.b, align 8
  store ptr null, ptr %4, align 8
  store ptr %i.do, ptr %8, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i8 0, i64 24, i1 false)
  store ptr %i.f, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 4 uses
  store ptr null, ptr %i.dp, align 8
  store ptr %i.c, ptr %i.ds, align 8
  store ptr null, ptr %9, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 0, ptr %i.dt, align 8
  store ptr null, ptr %i.dv, align 8
  store ptr null, ptr %i.du, align 8
  store ptr null, ptr %10, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, i8 0, i64 24, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 3 uses
  %i.dy = load ptr, ptr %i.dx, align 8            ; 10 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  %.not.i.i178 = icmp eq ptr %i.dy, %i.ea
  br i1 %.not.i.i178, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.dy, ptr noundef nonnull align 8 dereferenceable(88) %8, i64 32, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.ec = load ptr, ptr %i.dr, align 8
  store ptr %i.ec, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.ee = load ptr, ptr %i.ds, align 8
  store ptr null, ptr %i.ds, align 8
  store ptr %i.ee, ptr %i.ed, align 8
  store ptr null, ptr %i.dr, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 48
  %i.eg = load ptr, ptr %i.dt, align 8
  store ptr %i.eg, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dy, i64 56
  %i.ei = load ptr, ptr %i.du, align 8
  store ptr null, ptr %i.du, align 8
  store ptr %i.ei, ptr %i.eh, align 8
  store ptr null, ptr %i.dt, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dy, i64 64
  %i.ek = load ptr, ptr %i.dw, align 8
  store ptr %i.ek, ptr %i.ej, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.dy, i64 72
  %i.em = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.en = load ptr, ptr %i.em, align 8
  store ptr %i.en, ptr %i.el, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dy, i64 80
  %i.ep = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.eq = load ptr, ptr %i.ep, align 8
  store ptr %i.eq, ptr %i.eo, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, i8 0, i64 24, i1 false)
  %i.er = load ptr, ptr %i.dx, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 88
  store ptr %i.es, ptr %i.dx, align 8
  br label %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE9push_backEOS2_.exit

bb.bb:                                            ; preds = %bb.az
  invoke void @_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr %i.dy, ptr noundef nonnull align 8 dereferenceable(88) %8)
          to label %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE9push_backEOS2_.exit unwind label %bb.cc

_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.ba, %bb.bb
  %i.et = load ptr, ptr %i.dw, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE9push_backEOS2_.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %i.et to i64
  %i.ey = sub i64 %i.ew, %i.ex
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.ey) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i:  ; preds = %bb.bc, %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE9push_backEOS2_.exit
  %i.ez = load ptr, ptr %i.du, align 8            ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 4 uses
  %i.fb = load atomic i64, ptr %i.fa acquire, align 8 ; 2 uses
  %i.fc = icmp eq i64 %i.fb, 4294967297
  %i.fd = trunc i64 %i.fb to i32                  ; 2 uses
  br i1 %i.fc, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 0, ptr %i.fa, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  store i32 0, ptr %i.fe, align 4
  %i.ff = load ptr, ptr %i.ez, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #30, !inline_history !220
  %i.fi = load ptr, ptr %i.ez, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #30, !inline_history !220
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.bf:                                            ; preds = %bb.bd
  %i.fl = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i1.i = icmp eq i8 %i.fl, 0
  br i1 %.not.i.i.i1.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fm = add nsw i32 %i.fd, -1
  store i32 %i.fm, ptr %i.fa, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.fn = atomicrmw volatile add ptr %i.fa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.bh, %bb.bg
  %.0.i.i.i.i.i = phi i32 [ %i.fd, %bb.bg ], [ %i.fn, %bb.bh ]
  %i.fo = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.fo, label %bb.bi, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !14

bb.bi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #30
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.be, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i
  %i.fp = load ptr, ptr %i.ds, align 8            ; 8 uses
  %.not.i.i2.i = icmp eq ptr %i.fp, null
  br i1 %.not.i.i2.i, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 4 uses
  %i.fr = load atomic i64, ptr %i.fq acquire, align 8 ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 4294967297
  %i.ft = trunc i64 %i.fr to i32                  ; 2 uses
  br i1 %i.fs, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %i.fq, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  store i32 0, ptr %i.fu, align 4
  %i.fv = load ptr, ptr %i.fp, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8
  call void %i.fx(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #30, !inline_history !220
  %i.fy = load ptr, ptr %i.fp, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #30, !inline_history !220
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit

bb.bl:                                            ; preds = %bb.bj
  %i.gb = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i3.i = icmp eq i8 %i.gb, 0
  br i1 %.not.i.i.i3.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gc = add nsw i32 %i.ft, -1
  store i32 %i.gc, ptr %i.fq, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

bb.bn:                                            ; preds = %bb.bl
  %i.gd = atomicrmw volatile add ptr %i.fq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i: ; preds = %bb.bn, %bb.bm
  %.0.i.i.i.i5.i = phi i32 [ %i.ft, %bb.bm ], [ %i.gd, %bb.bn ]
  %i.ge = icmp eq i32 %.0.i.i.i.i5.i, 1
  br i1 %i.ge, label %bb.bo, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, !prof !14

bb.bo:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #30
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit

_ZN6Assimp3IFC11TempOpeningD2Ev.exit:             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.bk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i, %bb.bo
  %i.gf = load ptr, ptr %i.dv, align 8            ; 8 uses
  %.not.i.i180 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i180, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZN6Assimp3IFC11TempOpeningD2Ev.exit
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8 ; 4 uses
  %i.gh = load atomic i64, ptr %i.gg acquire, align 8 ; 2 uses
  %i.gi = icmp eq i64 %i.gh, 4294967297
  %i.gj = trunc i64 %i.gh to i32                  ; 2 uses
  br i1 %i.gi, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i32 0, ptr %i.gg, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 12
  store i32 0, ptr %i.gk, align 4
  %i.gl = load ptr, ptr %i.gf, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(16) %i.gf) #30, !inline_history !221
  %i.go = load ptr, ptr %i.gf, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(16) %i.gf) #30, !inline_history !221
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.br:                                            ; preds = %bb.bp
  %i.gr = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i181 = icmp eq i8 %i.gr, 0
  br i1 %.not.i.i.i181, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gs = add nsw i32 %i.gj, -1
  store i32 %i.gs, ptr %i.gg, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bt:                                            ; preds = %bb.br
  %i.gt = atomicrmw volatile add ptr %i.gg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bt, %bb.bs
  %.0.i.i.i.i = phi i32 [ %i.gj, %bb.bs ], [ %i.gt, %bb.bt ]
  %i.gu = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.gu, label %bb.bu, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !14

bb.bu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gf) #30
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, %bb.bq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bu
  %i.gv = load ptr, ptr %i.dp, align 8            ; 8 uses
  %.not.i.i182 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i182, label %.critedge161, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8 ; 4 uses
  %i.gx = load atomic i64, ptr %i.gw acquire, align 8 ; 2 uses
  %i.gy = icmp eq i64 %i.gx, 4294967297
  %i.gz = trunc i64 %i.gx to i32                  ; 2 uses
  br i1 %i.gy, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i32 0, ptr %i.gw, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 12
  store i32 0, ptr %i.ha, align 4
  %i.hb = load ptr, ptr %i.gv, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8
  call void %i.hd(ptr noundef nonnull align 8 dereferenceable(16) %i.gv) #30, !inline_history !221
  %i.he = load ptr, ptr %i.gv, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.hg = load ptr, ptr %i.hf, align 8
  call void %i.hg(ptr noundef nonnull align 8 dereferenceable(16) %i.gv) #30, !inline_history !221
  br label %.critedge161

bb.bx:                                            ; preds = %bb.bv
  %i.hh = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i183 = icmp eq i8 %i.hh, 0
  br i1 %.not.i.i.i183, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hi = add nsw i32 %i.gz, -1
  store i32 %i.hi, ptr %i.gw, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i184

bb.bz:                                            ; preds = %bb.bx
  %i.hj = atomicrmw volatile add ptr %i.gw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i184

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i184: ; preds = %bb.bz, %bb.by
  %.0.i.i.i.i185 = phi i32 [ %i.gz, %bb.by ], [ %i.hj, %bb.bz ]
  %i.hk = icmp eq i32 %.0.i.i.i.i185, 1
  br i1 %i.hk, label %bb.ca, label %.critedge161, !prof !14

bb.ca:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i184
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gv) #30
  br label %.critedge161

bb.cb:                                            ; preds = %bb.cf, %bb.ce
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.cc:                                            ; preds = %bb.bb
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp3IFC11TempOpeningD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %8) #30
  call void @_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #30
  call void @_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %.loopexit

bb.cd:                                            ; preds = %.critedge157
  br i1 %i.dj, label %.critedge161.thread, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZN6Assimp3IFC8TempMesh24RemoveAdjacentDuplicatesEv(ptr noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %bb.cf unwind label %bb.cb

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZN6Assimp3IFC8TempMesh17RemoveDegeneratesEv(ptr noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %bb.cg unwind label %bb.cb

bb.cg:                                            ; preds = %bb.cf
  %i.hn = invoke noundef ptr @_ZN6Assimp3IFC8TempMesh6ToMeshEv(ptr noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %bb.ch unwind label %bb.cs     ; 4 uses

bb.ch:                                            ; preds = %bb.cg
  %.not147.not = icmp eq ptr %i.hn, null
  br i1 %.not147.not, label %.critedge161.thread, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 232
  store i32 %1, ptr %i.ho, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %3, i64 176 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %3, i64 184 ; 5 uses
  %i.hr = load ptr, ptr %i.hq, align 8            ; 2 uses
  %i.hs = load ptr, ptr %i.hp, align 8
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = ptrtoint ptr %i.hs to i64
  %i.hv = sub i64 %i.ht, %i.hu
  %i.hw = lshr exact i64 %i.hv, 3
  %i.hx = trunc i64 %i.hw to i32                  ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %.02022.i.i.i = load ptr, ptr %i.hy, align 8    ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ci, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %bb.ci ] ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.ib = load i32, ptr %i.ia, align 4            ; 2 uses
  %i.ic = icmp ugt i32 %i.ib, %i.hx               ; 2 uses
  %.in.v.i.i.i = select i1 %i.ic, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i187 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i187, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !229

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.ic, label %._crit_edge.thread.i.i.i, label %bb.ck

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.ci
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.hz, %bb.ci ] ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ie = load ptr, ptr %i.id, align 8
  %i.if = icmp eq ptr %.019.lcssa29.i.i.i, %i.ie
  br i1 %i.if, label %select.unfold.i.i, label %bb.cj

bb.cj:                                            ; preds = %._crit_edge.thread.i.i.i
  %i.ig = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #32
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ig, i64 32
  %.pre.i.i188 = load i32, ptr %.phi.trans.insert.i.i, align 4
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %._crit_edge.i.i.i
  %i.ih = phi i32 [ %.pre.i.i188, %bb.cj ], [ %i.ib, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.cj ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.ii = icmp ult i32 %i.ih, %i.hx
  br i1 %i.ii, label %select.unfold.i.i, label %bb.cm

select.unfold.i.i:                                ; preds = %bb.ck, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.ck ] ; 3 uses
  %i.ij = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.hz
  br i1 %i.ij, label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i, label %bb.cl

bb.cl:                                            ; preds = %select.unfold.i.i
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.il = load i32, ptr %i.ik, align 4
  %i.im = icmp ugt i32 %i.il, %i.hx
  br label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i: ; preds = %bb.cl, %select.unfold.i.i
  %i.in = phi i1 [ %i.im, %bb.cl ], [ true, %select.unfold.i.i ]
  %i.io = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %.noexc189 unwind label %bb.ct ; 2 uses

.noexc189:                                        ; preds = %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 32
  store i32 %i.hx, ptr %i.ip, align 4
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.in, ptr noundef nonnull %i.io, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.hz) #30
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ir = load i64, ptr %i.iq, align 8
  %i.is = add i64 %i.ir, 1
  store i64 %i.is, ptr %i.iq, align 8
  %.pre = load ptr, ptr %i.hq, align 8
  br label %bb.cm

bb.cm:                                            ; preds = %.noexc189, %bb.ck
  %i.it = phi ptr [ %.pre, %.noexc189 ], [ %i.hr, %bb.ck ] ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8
  %.not.i = icmp eq ptr %i.it, %i.iv
  br i1 %.not.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  store ptr %i.hn, ptr %i.it, align 8
  %i.iw = load ptr, ptr %i.hq, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  store ptr %i.ix, ptr %i.hq, align 8
  br label %.critedge161.thread

bb.co:                                            ; preds = %bb.cm
  %i.iy = load ptr, ptr %i.hp, align 8            ; 4 uses
  %i.iz = ptrtoint ptr %i.it to i64
  %i.ja = ptrtoint ptr %i.iy to i64
  %i.jb = sub i64 %i.iz, %i.ja                    ; 6 uses
  %i.jc = icmp eq i64 %i.jb, 9223372036854775800
  br i1 %i.jc, label %bb.cp, label %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.cp:                                            ; preds = %bb.co
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
          to label %.noexc191 unwind label %bb.cs

.noexc191:                                        ; preds = %bb.cp
  unreachable

_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.co
  %i.jd = ashr exact i64 %i.jb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.jd, i64 1)
  %i.je = add nsw i64 %.sroa.speculated.i.i.i, %i.jd ; 2 uses
  %i.jf = icmp ult i64 %i.je, %i.jd
  %i.jg = tail call i64 @llvm.umin.i64(i64 %i.je, i64 1152921504606846975)
  %i.jh = select i1 %i.jf, i64 1152921504606846975, i64 %i.jg ; 3 uses
  %.not.i.i.i190 = icmp ne i64 %i.jh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i190)
  %i.ji = shl nuw nsw i64 %i.jh, 3
  %i.jj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ji) #28
          to label %.noexc192 unwind label %bb.cs ; 4 uses

.noexc192:                                        ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.jk = getelementptr inbounds i8, ptr %i.jj, i64 %i.jb ; 2 uses
  store ptr %i.hn, ptr %i.jk, align 8
  %i.jl = icmp sgt i64 %i.jb, 0
  br i1 %i.jl, label %bb.cq, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.cq:                                            ; preds = %.noexc192
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jj, ptr align 8 %i.iy, i64 %i.jb, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.cq, %.noexc192
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %.not.i17.i.i = icmp eq ptr %i.iy, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.iy, i64 noundef %i.jb) #29
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.cr, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.jj, ptr %i.hp, align 8
  store ptr %i.jm, ptr %i.hq, align 8
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.jh
  store ptr %i.jn, ptr %i.iu, align 8
  br label %.critedge161.thread

bb.cs:                                            ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i, %bb.cp, %bb.cg
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.ct:                                            ; preds = %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.critedge161:                                     ; preds = %bb.ca, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i184, %bb.bw, %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %.pre223 = load ptr, ptr %i.b, align 8          ; 2 uses
  %.not.i.i193 = icmp eq ptr %.pre223, null
  br i1 %.not.i.i193, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit197, label %.critedge161.thread

.critedge161.thread:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, %bb.ak, %bb.cn, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.ch, %bb.ay, %bb.cd, %.critedge161
  %.14263 = phi i1 [ true, %.critedge161 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171 ], [ false, %bb.ak ], [ true, %bb.cn ], [ true, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ false, %bb.ch ], [ true, %bb.ay ], [ false, %bb.cd ] ; 3 uses
  %i.jq = phi ptr [ %.pre223, %.critedge161 ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171 ], [ %i.c, %bb.ak ], [ %i.c, %bb.cn ], [ %i.c, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.c, %bb.ch ], [ %i.c, %bb.ay ], [ %i.c, %bb.cd ] ; 7 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8 ; 4 uses
  %i.js = load atomic i64, ptr %i.jr acquire, align 8 ; 2 uses
  %i.jt = icmp eq i64 %i.js, 4294967297
  %i.ju = trunc i64 %i.js to i32                  ; 2 uses
  br i1 %i.jt, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %.critedge161.thread
  store i32 0, ptr %i.jr, align 8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jq, i64 12
  store i32 0, ptr %i.jv, align 4
  %i.jw = load ptr, ptr %i.jq, align 8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.jy = load ptr, ptr %i.jx, align 8
  call void %i.jy(ptr noundef nonnull align 8 dereferenceable(16) %i.jq) #30, !inline_history !221
  %i.jz = load ptr, ptr %i.jq, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  %i.kb = load ptr, ptr %i.ka, align 8
  call void %i.kb(ptr noundef nonnull align 8 dereferenceable(16) %i.jq) #30, !inline_history !221
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit197

bb.cv:                                            ; preds = %.critedge161.thread
  %i.kc = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i194 = icmp eq i8 %i.kc, 0
  br i1 %.not.i.i.i194, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.kd = add nsw i32 %i.ju, -1
  store i32 %i.kd, ptr %i.jr, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i195

bb.cx:                                            ; preds = %bb.cv
  %i.ke = atomicrmw volatile add ptr %i.jr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i195

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i195: ; preds = %bb.cx, %bb.cw
  %.0.i.i.i.i196 = phi i32 [ %i.ju, %bb.cw ], [ %i.ke, %bb.cx ]
  %i.kf = icmp eq i32 %.0.i.i.i.i196, 1
  br i1 %i.kf, label %bb.cy, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit197, !prof !14

bb.cy:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i195
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jq) #30
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit197

_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit197: ; preds = %.critedge161, %bb.cu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i195, %bb.cy
  %.14264 = phi i1 [ true, %.critedge161 ], [ %.14263, %bb.cu ], [ %.14263, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i195 ], [ %.14263, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret i1 %.14264

.loopexit:                                        ; preds = %bb.j, %bb.cs, %bb.ct, %bb.n, %bb.o, %bb.u, %bb.ab, %bb.aj, %bb.ax, %bb.ag, %bb.x, %bb.r, %bb.cc, %bb.cb
  %.merged = phi { ptr, i32 } [ %i.hl, %bb.cb ], [ %i.hm, %bb.cc ], [ %i.ai, %bb.n ], [ %.pn130.pn.pn, %bb.ax ], [ %i.al, %bb.r ], [ %i.an, %bb.u ], [ %i.ap, %bb.x ], [ %i.at, %bb.ab ], [ %i.bb, %bb.ag ], [ %i.bd, %bb.aj ], [ %i.jp, %bb.ct ], [ %i.aj, %bb.o ], [ %i.jo, %bb.cs ], [ %.pn150, %bb.j ]
  call void @_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %.merged

bb.cz:                                            ; preds = %bb.n
  %i.kg = landingpad { ptr, i32 }
          catch ptr null
  %i.kh = extractvalue { ptr, i32 } %i.kg, 0
  tail call void @__clang_call_terminate(ptr %i.kh) #31
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(40) ptr @_ZNK6Assimp4STEP2DB13MustGetObjectEm(ptr noundef nonnull align 8 dereferenceable(392) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.59", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i.i, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp ult i64 %i.e, %1                    ; 2 uses
  %.19.i.i.i.i = select i1 %i.f, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !230

_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i.i, %i.c
  br i1 %i.g, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit.thread, label %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i

_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i: ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp ult i64 %1, %i.i
  br i1 %i.j, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit.thread, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit

_ZNK6Assimp4STEP2DB9GetObjectEm.exit:             ; preds = %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %_ZNK6Assimp4STEP2DB9GetObjectEm.exit.thread, label %bb.g

_ZNK6Assimp4STEP2DB9GetObjectEm.exit.thread:      ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS7_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %bb.a, %_ZNKSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEE4findERS8_.exit.i, %_ZNK6Assimp4STEP2DB9GetObjectEm.exit
  %i.m = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.b unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.b:                                             ; preds = %_ZNK6Assimp4STEP2DB9GetObjectEm.exit.thread
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %1, i64 noundef 1152921504606846975)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.h unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZNK6Assimp4STEP2DB9GetObjectEm.exit.thread
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ false, %bb.c ], [ true, %bb.b ]  ; 2 uses
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.p = load ptr, ptr %2, align 8                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.s = load i64, ptr %i.q, align 8
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0, label %bb.e, label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn16 = phi { ptr, i32 } [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.m) #30
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn15 = phi { ptr, i32 } [ %.pn16, %bb.e ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn15

bb.g:                                             ; preds = %_ZNK6Assimp4STEP2DB9GetObjectEm.exit
  ret ptr %i.l

bb.h:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #11

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA74_KcEEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(74) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.d = tail call noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
  store ptr %i.d, ptr %i.a, align 8
  call void @_ZN6Assimp6Logger4warnIJPKcRA74_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(74) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #30 ; 0 uses
  tail call void @_ZSt9terminatev() #31
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(81) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x314IfcClosedShellEEcvRKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.59", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.k unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !alias.scope !267, !noalias !264
  store <2 x ptr> %i.t, ptr %i.r, align 8, !alias.scope !264, !noalias !267
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.w = load <2 x ptr>, ptr %i.v, align 8, !alias.scope !267, !noalias !264
  store <2 x ptr> %i.w, ptr %i.u, align 8, !alias.scope !264, !noalias !267
  store <4 x ptr> splat (ptr null), ptr %i.s, align 8, !alias.scope !267, !noalias !264
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.y, align 8, !alias.scope !267, !noalias !264
  store <2 x ptr> %i.z, ptr %i.x, align 8, !alias.scope !264, !noalias !267
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !267, !noalias !264
  store ptr %i.ac, ptr %i.aa, align 8, !alias.scope !264, !noalias !267
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false), !alias.scope !267, !noalias !264
  tail call void @_ZN6Assimp3IFC11TempOpeningD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.0911.i.i.i) #30, !noalias !264
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 88 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !32

_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ae, %.lr.ph.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 88 ; 2 uses
  %.not10.i.i.i25 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i25, label %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit31, label %.lr.ph.i.i.i26

.lr.ph.i.i.i26:                                   ; preds = %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i26
  %.012.i.i.i27 = phi ptr [ %i.at, %.lr.ph.i.i.i26 ], [ %i.af, %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 6 uses
  %.0911.i.i.i28 = phi ptr [ %i.as, %.lr.ph.i.i.i26 ], [ %1, %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.012.i.i.i27, ptr noundef nonnull align 8 dereferenceable(88) %.0911.i.i.i28, i64 32, i1 false), !alias.scope !275
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i27, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 32 ; 2 uses
  %i.ai = load <2 x ptr>, ptr %i.ah, align 8, !alias.scope !273, !noalias !270
  store <2 x ptr> %i.ai, ptr %i.ag, align 8, !alias.scope !270, !noalias !273
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i27, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 48
  %i.al = load <2 x ptr>, ptr %i.ak, align 8, !alias.scope !273, !noalias !270
  store <2 x ptr> %i.al, ptr %i.aj, align 8, !alias.scope !270, !noalias !273
  store <4 x ptr> splat (ptr null), ptr %i.ah, align 8, !alias.scope !273, !noalias !270
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i27, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 64 ; 2 uses
  %i.ao = load <2 x ptr>, ptr %i.an, align 8, !alias.scope !273, !noalias !270
  store <2 x ptr> %i.ao, ptr %i.am, align 8, !alias.scope !270, !noalias !273
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i27, i64 80
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 80
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !273, !noalias !270
  store ptr %i.ar, ptr %i.ap, align 8, !alias.scope !270, !noalias !273
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false), !alias.scope !273, !noalias !270
  tail call void @_ZN6Assimp3IFC11TempOpeningD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.0911.i.i.i28) #30, !noalias !270
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 88 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i27, i64 88 ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %i.as, %i.b
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit31, label %.lr.ph.i.i.i26, !llvm.loop !32

_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit31: ; preds = %.lr.ph.i.i.i26, %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i30 = phi ptr [ %i.af, %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.at, %.lr.ph.i.i.i26 ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i32 = icmp eq ptr %i.c, null
  br i1 %.not.i32, label %_ZNSt12_Vector_baseIN6Assimp3IFC11TempOpeningESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit31
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ax) #29
  br label %_ZNSt12_Vector_baseIN6Assimp3IFC11TempOpeningESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6Assimp3IFC11TempOpeningESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit31, %bb.c
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i30, ptr %i.a, align 8
  %i.ay = getelementptr inbounds nuw [88 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ay, ptr %i.au, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN6Assimp3IFC8TempMeshESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN6Assimp3IFC8TempMeshESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i:                ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i.i, label %_ZSt8_DestroyIN6Assimp3IFC8TempMeshEEvPT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #29
  br label %_ZSt8_DestroyIN6Assimp3IFC8TempMeshEEvPT_.exit

_ZSt8_DestroyIN6Assimp3IFC8TempMeshEEvPT_.exit:   ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN6Assimp3IFC8TempMeshESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6Assimp3IFC8TempMeshESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6Assimp3IFC8TempMeshESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #30
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !276
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !276
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !14

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPK10aiVector3tIdESt20back_insert_iteratorISt6vectorIS4_SaIS4_EEEEET0_T_SD_SC_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = udiv exact i64 %i.c, 24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.pre = load ptr, ptr %i.f, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt20back_insert_iteratorISt6vectorI10aiVector3tIdESaIS2_EEEaSERKS2_.exit, %bb.a
  ret ptr %2

bb.b:                                             ; preds = %.lr.ph, %_ZNSt20back_insert_iteratorISt6vectorI10aiVector3tIdESaIS2_EEEaSERKS2_.exit
  %i.h = phi ptr [ %.pre, %.lr.ph ], [ %i.ac, %_ZNSt20back_insert_iteratorISt6vectorI10aiVector3tIdESaIS2_EEEaSERKS2_.exit ] ; 5 uses
  %.07 = phi i64 [ %i.e, %.lr.ph ], [ %i.ae, %_ZNSt20back_insert_iteratorISt6vectorI10aiVector3tIdESaIS2_EEEaSERKS2_.exit ] ; 2 uses
  %.056 = phi ptr [ %0, %.lr.ph ], [ %i.ad, %_ZNSt20back_insert_iteratorISt6vectorI10aiVector3tIdESaIS2_EEEaSERKS2_.exit ] ; 3 uses
  %i.i = load ptr, ptr %i.g, align 8
  %.not.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %.056, i64 24, i1 false)
  %i.j = load ptr, ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  store ptr %i.k, ptr %i.f, align 8
  br label %_ZNSt20back_insert_iteratorISt6vectorI10aiVector3tIdESaIS2_EEEaSERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %2, align 8                ; 5 uses
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.e, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
  unreachable

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.q = sdiv exact i64 %i.o, 24                  ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 384307168202282325)
  %i.u = select i1 %i.s, i64 384307168202282325, i64 %i.t ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.v = mul nuw nsw i64 %i.u, 24
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #28 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %.056, i64 24, i1 false)
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.l, %i.h
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i ], [ %i.w, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %i.l, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !alias.scope !277
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, %i.h
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !7

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.z, %.lr.ph.i.i.i.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.o) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.w, ptr %2, align 8
  store ptr %i.aa, ptr %i.f, align 8
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ab, ptr %i.g, align 8
  br label %_ZNSt20back_insert_iteratorISt6vectorI10aiVector3tIdESaIS2_EEEaSERKS2_.exit

_ZNSt20back_insert_iteratorISt6vectorI10aiVector3tIdESaIS2_EEEaSERKS2_.exit: ; preds = %bb.c, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.ac = phi ptr [ %i.k, %bb.c ], [ %i.aa, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.056, i64 24
  %i.ae = add nsw i64 %.07, -1
  %i.af = icmp sgt i64 %.07, 1
  br i1 %i.af, label %bb.b, label %._crit_edge, !llvm.loop !24
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4warnIJPKcRA47_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(47) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5)
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %5, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %5, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #30
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull %i.a, i64 noundef %i.i)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit unwind label %bb.d ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.d ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5) #30
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit: ; preds = %bb.b, %bb.c
  invoke void @_ZN6Assimp6Logger13formatMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA47_KcEES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %5, ptr noundef nonnull align 1 dereferenceable(47) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit
  %i.l = load ptr, ptr %4, align 8
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.l)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %4, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.r = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.r, ptr %5, align 8
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.t = getelementptr i8, ptr %i.r, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %5, i64 %i.u
  store ptr %i.s, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = load i64, ptr %i.z, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.w, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ad) #30
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 112
end_hunk_3
begin_hunk_4_@_ZN6Assimp6Logger13formatMessageIJERA49_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_:bb.a
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %4, align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #30
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ai) #30
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #30
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS4_14DistanceSorterEEEEvT_SE_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 4 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 1408
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph23

bb.b:                                             ; preds = %.lr.ph23
  %i.g = icmp eq i64 %i.m, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph23, !llvm.loop !353

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge15.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS4_14DistanceSorterEEEEvT_SE_RT0_(ptr %0, ptr %storemerge15.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.h, %.lr.ph.i.i ], [ %storemerge15.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -88 ; 4 uses
  call void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS4_14DistanceSorterEEEEvT_SE_SE_RT0_(ptr %0, ptr nonnull %i.h, ptr nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.a
  %i.k = icmp sgt i64 %i.j, 88
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS4_14DistanceSorterEEEEvT_SE_SE_T0_.exit, !llvm.loop !354

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS4_14DistanceSorterEEEEvT_SE_SE_T0_.exit: ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.loopexit

.lr.ph23:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1522 = phi ptr [ %i.q, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01621 = phi i64 [ %i.m, %bb.b ], [ %2, %.lr.ph ]
  %i.l = phi i64 [ %i.s, %bb.b ], [ %i.c, %.lr.ph ]
  %i.m = add nsw i64 %.01621, -1                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.n = udiv i64 %i.l, 176
  %i.o = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr inbounds i8, ptr %storemerge1522, i64 -88
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS4_14DistanceSorterEEEEvT_SE_SE_SE_T0_(ptr %0, ptr nonnull %i.e, ptr %i.o, ptr nonnull %i.p, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %3)
  %i.q = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS4_14DistanceSorterEEEET_SE_SE_SE_T0_(ptr nonnull %i.e, ptr %storemerge1522, ptr %0, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %5) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS4_14DistanceSorterEEEEvT_SE_T0_T1_(ptr %i.q, ptr %storemerge1522, i64 noundef %i.m, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %3)
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sub i64 %i.r, %i.a                       ; 2 uses
  %i.t = icmp sgt i64 %i.s, 1408
  br i1 %i.t, label %bb.b, label %.loopexit, !llvm.loop !353

.loopexit:                                        ; preds = %.lr.ph23, %bb.a, %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS4_14DistanceSorterEEEEvT_SE_SE_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS4_14DistanceSorterEEEEvT_SE_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Assimp::IFC::TempOpening", align 8 ; 10 uses
  %4 = alloca %"struct.Assimp::IFC::TempOpening", align 8 ; 9 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 88                  ; 2 uses
  %i.e = icmp slt i64 %i.c, 176
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2
  %i.g = lshr i64 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZN6Assimp3IFC11TempOpeningD2Ev.exit21, %bb.b
  %.09 = phi i64 [ %i.g, %bb.b ], [ %i.bm, %_ZN6Assimp3IFC11TempOpeningD2Ev.exit21 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.s = getelementptr inbounds [88 x i8], ptr %0, i64 %.09 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull align 8 dereferenceable(88) %i.s, i64 32, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 64 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load <2 x ptr>, ptr %i.v, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false)
  %i.z = load <2 x ptr>, ptr %i.t, align 8
  store <2 x ptr> %i.z, ptr %i.m, align 8
  %i.aa = load <2 x ptr>, ptr %i.u, align 8
  store <4 x ptr> splat (ptr null), ptr %i.t, align 8
  store <2 x ptr> %i.aa, ptr %i.o, align 8
  store <4 x ptr> splat (ptr null), ptr %i.h, align 8
  store <2 x ptr> %i.y, ptr %i.q, align 8
  store ptr %i.x, ptr %i.r, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterINS4_14DistanceSorterEEEEvT_T0_SF_T1_T2_(ptr nonnull %0, i64 noundef %.09, i64 noundef %i.d, ptr noundef nonnull %4, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %2)
          to label %bb.d unwind label %bb.ae

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.q, align 8             ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.r, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.af) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i:  ; preds = %bb.e, %bb.d
  %i.ag = load ptr, ptr %i.p, align 8             ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 4294967297
  %i.ak = trunc i64 %i.ai to i32                  ; 2 uses
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.ah, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 0, ptr %i.al, align 4
  %i.am = load ptr, ptr %i.ag, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #30, !inline_history !220
  %i.ap = load ptr, ptr %i.ag, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #30, !inline_history !220
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.h:                                             ; preds = %bb.f
  %i.as = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i1.i = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i1.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = add nsw i32 %i.ak, -1
  store i32 %i.at, ptr %i.ah, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.au = atomicrmw volatile add ptr %i.ah, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.ak, %bb.i ], [ %i.au, %bb.j ]
  %i.av = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.av, label %bb.k, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !14

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #30
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i
  %i.aw = load ptr, ptr %i.n, align 8             ; 8 uses
  %.not.i.i2.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i2.i, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  br i1 %i.az, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ax, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 0, ptr %i.bb, align 4
  %i.bc = load ptr, ptr %i.aw, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #30, !inline_history !220
  %i.bf = load ptr, ptr %i.aw, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #30, !inline_history !220
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.bi = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i3.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i3.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = add nsw i32 %i.ba, -1
  store i32 %i.bj, ptr %i.ax, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

bb.p:                                             ; preds = %bb.n
  %i.bk = atomicrmw volatile add ptr %i.ax, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i5.i = phi i32 [ %i.ba, %bb.o ], [ %i.bk, %bb.p ]
  %i.bl = icmp eq i32 %.0.i.i.i.i5.i, 1
  br i1 %i.bl, label %bb.q, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, !prof !14

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #30
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit

_ZN6Assimp3IFC11TempOpeningD2Ev.exit:             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i, %bb.q
  %.not = icmp eq i64 %.09, 0
  %i.bm = add nsw i64 %.09, -1
  %i.bn = load ptr, ptr %i.k, align 8             ; 3 uses
  %.not.i.i.i.i10 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i10, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i11, label %bb.r

bb.r:                                             ; preds = %_ZN6Assimp3IFC11TempOpeningD2Ev.exit
  %i.bo = load ptr, ptr %i.l, align 8
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.br) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i11

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i11: ; preds = %bb.r, %_ZN6Assimp3IFC11TempOpeningD2Ev.exit
  %i.bs = load ptr, ptr %i.j, align 8             ; 8 uses
  %.not.i.i.i12 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i12, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i16, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i11
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 4 uses
  %i.bu = load atomic i64, ptr %i.bt acquire, align 8 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 4294967297
  %i.bw = trunc i64 %i.bu to i32                  ; 2 uses
  br i1 %i.bv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bt, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i32 0, ptr %i.bx, align 4
  %i.by = load ptr, ptr %i.bs, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #30, !inline_history !220
  %i.cb = load ptr, ptr %i.bs, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #30, !inline_history !220
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i16

bb.u:                                             ; preds = %bb.s
  %i.ce = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i1.i13 = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i.i1.i13, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cf = add nsw i32 %i.bw, -1
  store i32 %i.cf, ptr %i.bt, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i14

bb.w:                                             ; preds = %bb.u
  %i.cg = atomicrmw volatile add ptr %i.bt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i14

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i14: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i15 = phi i32 [ %i.bw, %bb.v ], [ %i.cg, %bb.w ]
  %i.ch = icmp eq i32 %.0.i.i.i.i.i15, 1
  br i1 %i.ch, label %bb.x, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i16, !prof !14

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i14
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #30
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i16

_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i16: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i14, %bb.t, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i11
  %i.ci = load ptr, ptr %i.i, align 8             ; 8 uses
  %.not.i.i2.i17 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i2.i17, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit21, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 4 uses
  %i.ck = load atomic i64, ptr %i.cj acquire, align 8 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 4294967297
  %i.cm = trunc i64 %i.ck to i32                  ; 2 uses
  br i1 %i.cl, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.cj, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  store i32 0, ptr %i.cn, align 4
  %i.co = load ptr, ptr %i.ci, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #30, !inline_history !220
  %i.cr = load ptr, ptr %i.ci, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #30, !inline_history !220
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit21

bb.aa:                                            ; preds = %bb.y
  %i.cu = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i3.i18 = icmp eq i8 %i.cu, 0
  br i1 %.not.i.i.i3.i18, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cv = add nsw i32 %i.cm, -1
  store i32 %i.cv, ptr %i.cj, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i19

bb.ac:                                            ; preds = %bb.aa
  %i.cw = atomicrmw volatile add ptr %i.cj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i19

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i19: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i5.i20 = phi i32 [ %i.cm, %bb.ab ], [ %i.cw, %bb.ac ]
  %i.cx = icmp eq i32 %.0.i.i.i.i5.i20, 1
  br i1 %i.cx, label %bb.ad, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit21, !prof !14

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i19
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #30
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit21

_ZN6Assimp3IFC11TempOpeningD2Ev.exit21:           ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i16, %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i19, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !355

bb.ae:                                            ; preds = %bb.c
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp3IFC11TempOpeningD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %4) #30
  call void @_ZN6Assimp3IFC11TempOpeningD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %i.cy

.loopexit:                                        ; preds = %_ZN6Assimp3IFC11TempOpeningD2Ev.exit21, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS4_14DistanceSorterEEEEvT_SE_SE_RT0_(ptr %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #22 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Assimp::IFC::TempOpening", align 8 ; 11 uses
  %5 = alloca %"struct.Assimp::IFC::TempOpening", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %1 to i64
  %i.l = ptrtoint ptr %0 to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 88
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.t = load <2 x ptr>, ptr %i.g, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.u = load <2 x ptr>, ptr %i.b, align 8
  %i.v = load <2 x ptr>, ptr %i.d, align 8
  store <4 x ptr> splat (ptr null), ptr %i.b, align 8
  %i.w = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6Assimp3IFC11TempOpeningaSEOS1_(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(88) %0) #30 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull align 8 dereferenceable(88) %4, i64 32, i1 false)
  store <2 x ptr> %i.u, ptr %i.o, align 8
  store <2 x ptr> %i.v, ptr %i.q, align 8
  store <4 x ptr> splat (ptr null), ptr %i.a, align 8
  store <2 x ptr> %i.t, ptr %i.s, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  store ptr %i.j, ptr %i.x, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterINS4_14DistanceSorterEEEEvT_T0_SF_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.n, ptr noundef nonnull %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %3)
          to label %bb.b unwind label %bb.ac

bb.b:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %i.s, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = load ptr, ptr %i.x, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i:  ; preds = %bb.c, %bb.b
  %i.ad = load ptr, ptr %i.r, align 8             ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.ae, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4
  %i.aj = load ptr, ptr %i.ad, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #30, !inline_history !220
  %i.am = load ptr, ptr %i.ad, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #30, !inline_history !220
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ap = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i1.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i1.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.ah, %bb.g ], [ %i.ar, %bb.h ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.as, label %bb.i, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !14

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #30
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.e, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i
  %i.at = load ptr, ptr %i.p, align 8             ; 8 uses
  %.not.i.i2.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i2.i, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 4 uses
  %i.av = load atomic i64, ptr %i.au acquire, align 8 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 4294967297
  %i.ax = trunc i64 %i.av to i32                  ; 2 uses
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.au, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 0, ptr %i.ay, align 4
  %i.az = load ptr, ptr %i.at, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #30, !inline_history !220
  %i.bc = load ptr, ptr %i.at, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #30, !inline_history !220
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.bf = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i3.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i3.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = add nsw i32 %i.ax, -1
  store i32 %i.bg, ptr %i.au, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

bb.n:                                             ; preds = %bb.l
  %i.bh = atomicrmw volatile add ptr %i.au, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i5.i = phi i32 [ %i.ax, %bb.m ], [ %i.bh, %bb.n ]
  %i.bi = icmp eq i32 %.0.i.i.i.i5.i, 1
  br i1 %i.bi, label %bb.o, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, !prof !14

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #30
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit

_ZN6Assimp3IFC11TempOpeningD2Ev.exit:             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i, %bb.o
  %i.bj = load ptr, ptr %i.f, align 8             ; 3 uses
  %.not.i.i.i.i2 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i2, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i3, label %bb.p

bb.p:                                             ; preds = %_ZN6Assimp3IFC11TempOpeningD2Ev.exit
  %i.bk = load ptr, ptr %i.h, align 8
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bn) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i3

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i3: ; preds = %bb.p, %_ZN6Assimp3IFC11TempOpeningD2Ev.exit
  %i.bo = load ptr, ptr %i.e, align 8             ; 8 uses
  %.not.i.i.i4 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i4, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i8, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %i.bq = load atomic i64, ptr %i.bp acquire, align 8 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 4294967297
  %i.bs = trunc i64 %i.bq to i32                  ; 2 uses
  br i1 %i.br, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bp, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 0, ptr %i.bt, align 4
  %i.bu = load ptr, ptr %i.bo, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #30, !inline_history !220
  %i.bx = load ptr, ptr %i.bo, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #30, !inline_history !220
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i8

bb.s:                                             ; preds = %bb.q
  %i.ca = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i1.i5 = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i1.i5, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = add nsw i32 %i.bs, -1
  store i32 %i.cb, ptr %i.bp, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6

bb.u:                                             ; preds = %bb.s
  %i.cc = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i7 = phi i32 [ %i.bs, %bb.t ], [ %i.cc, %bb.u ]
  %i.cd = icmp eq i32 %.0.i.i.i.i.i7, 1
  br i1 %i.cd, label %bb.v, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i8, !prof !14

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #30
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i8

_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i8: ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6, %bb.r, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i3
  %i.ce = load ptr, ptr %i.c, align 8             ; 8 uses
  %.not.i.i2.i9 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i2.i9, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit13, label %bb.w

bb.w:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 4 uses
  %i.cg = load atomic i64, ptr %i.cf acquire, align 8 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 4294967297
  %i.ci = trunc i64 %i.cg to i32                  ; 2 uses
  br i1 %i.ch, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.cf, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  store i32 0, ptr %i.cj, align 4
  %i.ck = load ptr, ptr %i.ce, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #30, !inline_history !220
  %i.cn = load ptr, ptr %i.ce, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #30, !inline_history !220
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit13

bb.y:                                             ; preds = %bb.w
  %i.cq = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i3.i10 = icmp eq i8 %i.cq, 0
  br i1 %.not.i.i.i3.i10, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cr = add nsw i32 %i.ci, -1
  store i32 %i.cr, ptr %i.cf, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i11

bb.aa:                                            ; preds = %bb.y
  %i.cs = atomicrmw volatile add ptr %i.cf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i11

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i11: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i5.i12 = phi i32 [ %i.ci, %bb.z ], [ %i.cs, %bb.aa ]
  %i.ct = icmp eq i32 %.0.i.i.i.i5.i12, 1
  br i1 %i.ct, label %bb.ab, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit13, !prof !14

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i11
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #30
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit13

_ZN6Assimp3IFC11TempOpeningD2Ev.exit13:           ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i8, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i11, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

bb.ac:                                            ; preds = %bb.a
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp3IFC11TempOpeningD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %5) #30
  call void @_ZN6Assimp3IFC11TempOpeningD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %i.cu
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterINS4_14DistanceSorterEEEEvT_T0_SF_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.aiVector3t, align 8          ; 6 uses
  %6 = alloca %class.aiVector3t, align 8          ; 6 uses
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 8 ; 5 uses
  %8 = alloca %"struct.Assimp::IFC::TempOpening", align 8 ; 9 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load double, ptr %4, align 8             ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load double, ptr %i.f, align 8           ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = load double, ptr %i.i, align 8           ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.034 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %bb.b ] ; 2 uses
  %i.m = shl i64 %.034, 1                         ; 2 uses
  %i.n = add i64 %i.m, 2                          ; 2 uses
  %i.o = getelementptr inbounds [88 x i8], ptr %0, i64 %i.n
  %i.p = or disjoint i64 %i.m, 1                  ; 2 uses
  %i.q = getelementptr inbounds [88 x i8], ptr %0, i64 %i.p
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.s = load ptr, ptr %i.r, align 8
  call void @_ZNK6Assimp3IFC8TempMesh6CenterEv(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %i.s)
  %i.t = load double, ptr %5, align 8, !noalias !356
  %i.u = fsub double %i.t, %i.d                   ; 2 uses
  %i.v = load double, ptr %i.e, align 8, !noalias !356
  %i.w = fsub double %i.v, %i.g                   ; 2 uses
  %i.x = load double, ptr %i.h, align 8, !noalias !356
  %i.y = fsub double %i.x, %i.j                   ; 2 uses
  %i.z = fmul double %i.w, %i.w
  %i.aa = call double @llvm.fmuladd.f64(double %i.u, double %i.u, double %i.z)
  %i.ab = call noundef double @llvm.fmuladd.f64(double %i.y, double %i.y, double %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  call void @_ZNK6Assimp3IFC8TempMesh6CenterEv(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %i.ad)
  %i.ae = load double, ptr %6, align 8, !noalias !359
  %i.af = fsub double %i.ae, %i.d                 ; 2 uses
  %i.ag = load double, ptr %i.k, align 8, !noalias !359
  %i.ah = fsub double %i.ag, %i.g                 ; 2 uses
  %i.ai = load double, ptr %i.l, align 8, !noalias !359
  %i.aj = fsub double %i.ai, %i.j                 ; 2 uses
  %i.ak = fmul double %i.ah, %i.ah
  %i.al = call double @llvm.fmuladd.f64(double %i.af, double %i.af, double %i.ak)
  %i.am = call noundef double @llvm.fmuladd.f64(double %i.aj, double %i.aj, double %i.al)
  %i.an = fcmp olt double %i.ab, %i.am
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %spec.select = select i1 %i.an, i64 %i.p, i64 %i.n ; 4 uses
  %i.ao = getelementptr inbounds [88 x i8], ptr %0, i64 %spec.select
  %i.ap = getelementptr inbounds [88 x i8], ptr %0, i64 %.034
  %i.aq = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6Assimp3IFC11TempOpeningaSEOS1_(ptr noundef nonnull align 8 dereferenceable(88) %i.ap, ptr noundef nonnull align 8 dereferenceable(88) %i.ao) #30 ; 0 uses
  %i.ar = icmp slt i64 %spec.select, %i.b
  br i1 %i.ar, label %bb.b, label %._crit_edge, !llvm.loop !362

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 5 uses
  %i.as = and i64 %2, 1
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.au = add nsw i64 %2, -2
  %i.av = ashr exact i64 %i.au, 1
  %i.aw = icmp eq i64 %.0.lcssa, %i.av
  br i1 %i.aw, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ax = shl nsw i64 %.0.lcssa, 1
  %i.ay = or disjoint i64 %i.ax, 1                ; 2 uses
  %i.az = getelementptr inbounds [88 x i8], ptr %0, i64 %i.ay
  %i.ba = getelementptr inbounds [88 x i8], ptr %0, i64 %.0.lcssa
  %i.bb = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6Assimp3IFC11TempOpeningaSEOS1_(ptr noundef nonnull align 8 dereferenceable(88) %i.ba, ptr noundef nonnull align 8 dereferenceable(88) %i.az) #30 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.1 = phi i64 [ %i.ay, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %8, ptr noundef nonnull align 8 dereferenceable(88) %3, i64 32, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.bf = load <2 x ptr>, ptr %i.bd, align 8
  store <2 x ptr> %i.bf, ptr %i.bc, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.bj = load <2 x ptr>, ptr %i.bh, align 8
  store <2 x ptr> %i.bj, ptr %i.bg, align 8
  store <4 x ptr> splat (ptr null), ptr %i.bd, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.bm = load <2 x ptr>, ptr %i.bl, align 8
  store <2 x ptr> %i.bm, ptr %i.bk, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.bp = load ptr, ptr %i.bo, align 8
  store ptr %i.bp, ptr %i.bn, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i8 0, i64 24, i1 false)
  invoke void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_comp_valINS4_14DistanceSorterEEEEvT_T0_SF_T1_RT2_(ptr %0, i64 noundef %.1, i64 noundef %1, ptr noundef nonnull %8, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.f unwind label %bb.t

bb.f:                                             ; preds = %bb.e
  %i.bq = load ptr, ptr %i.bk, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.br = load ptr, ptr %i.bn, align 8
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bu) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i:  ; preds = %bb.g, %bb.f
  %i.bv = load ptr, ptr %i.bi, align 8            ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 4 uses
  %i.bx = load atomic i64, ptr %i.bw acquire, align 8 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 4294967297
  %i.bz = trunc i64 %i.bx to i32                  ; 2 uses
  br i1 %i.by, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.bw, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store i32 0, ptr %i.ca, align 4
  %i.cb = load ptr, ptr %i.bv, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #30, !inline_history !220
  %i.ce = load ptr, ptr %i.bv, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #30, !inline_history !220
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ch = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i1.i = icmp eq i8 %i.ch, 0
  br i1 %.not.i.i.i1.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ci = add nsw i32 %i.bz, -1
  store i32 %i.ci, ptr %i.bw, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.cj = atomicrmw volatile add ptr %i.bw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.bz, %bb.k ], [ %i.cj, %bb.l ]
  %i.ck = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ck, label %bb.m, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !14

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #30
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i
  %i.cl = load ptr, ptr %i.be, align 8            ; 8 uses
  %.not.i.i2.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i2.i, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 4 uses
  %i.cn = load atomic i64, ptr %i.cm acquire, align 8 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 4294967297
  %i.cp = trunc i64 %i.cn to i32                  ; 2 uses
  br i1 %i.co, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.cm, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  store i32 0, ptr %i.cq, align 4
  %i.cr = load ptr, ptr %i.cl, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #30, !inline_history !220
  %i.cu = load ptr, ptr %i.cl, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #30, !inline_history !220
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.cx = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i3.i = icmp eq i8 %i.cx, 0
  br i1 %.not.i.i.i3.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cy = add nsw i32 %i.cp, -1
  store i32 %i.cy, ptr %i.cm, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

bb.r:                                             ; preds = %bb.p
  %i.cz = atomicrmw volatile add ptr %i.cm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i5.i = phi i32 [ %i.cp, %bb.q ], [ %i.cz, %bb.r ]
  %i.da = icmp eq i32 %.0.i.i.i.i5.i, 1
  br i1 %i.da, label %bb.s, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, !prof !14

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #30
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit

_ZN6Assimp3IFC11TempOpeningD2Ev.exit:             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  ret void

bb.t:                                             ; preds = %bb.e
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp3IFC11TempOpeningD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  resume { ptr, i32 } %i.db
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(88) ptr @_ZN6Assimp3IFC11TempOpeningaSEOS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load <2 x ptr>, ptr %i.e, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.f, align 8              ; 8 uses
  store <2 x ptr> %i.g, ptr %i.d, align 8
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4
  %i.n = load ptr, ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #30, !inline_history !13
  %i.q = load ptr, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #30, !inline_history !13
  br label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit, !prof !14

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #30
  br label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit

_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load <2 x ptr>, ptr %i.y, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.ab = load ptr, ptr %i.z, align 8             ; 8 uses
  store <2 x ptr> %i.aa, ptr %i.x, align 8
  %.not.i.i.i.i6 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i6, label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit10, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ac, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4
  %i.ah = load ptr, ptr %i.ab, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #30, !inline_history !13
  %i.ak = load ptr, ptr %i.ab, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #30, !inline_history !13
  br label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit10

bb.j:                                             ; preds = %bb.h
  %i.an = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i7 = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i.i7, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8

bb.l:                                             ; preds = %bb.j
  %i.ap = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i9 = phi i32 [ %i.af, %bb.k ], [ %i.ap, %bb.l ]
  %i.aq = icmp eq i32 %.0.i.i.i.i.i.i9, 1
  br i1 %i.aq, label %bb.m, label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit10, !prof !14

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #30
  br label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit10

_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit10: ; preds = %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8, %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.at = load ptr, ptr %i.ar, align 8            ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = load ptr, ptr %i.as, align 8
  store ptr %i.ax, ptr %i.ar, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.az = load ptr, ptr %i.ay, align 8
  store ptr %i.az, ptr %i.au, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bb = load ptr, ptr %i.ba, align 8
  store ptr %i.bb, ptr %i.av, align 8
  %.not.i.i.i.i.i11 = icmp eq ptr %i.at, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i11, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EEaSEOS3_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit10
  %i.bc = ptrtoint ptr %i.aw to i64
  %i.bd = ptrtoint ptr %i.at to i64
  %i.be = sub i64 %i.bc, %i.bd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.be) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EEaSEOS3_.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EEaSEOS3_.exit: ; preds = %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit10, %bb.n
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_comp_valINS4_14DistanceSorterEEEEvT_T0_SF_T1_RT2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %class.aiVector3t, align 8          ; 6 uses
  %6 = alloca %class.aiVector3t, align 8          ; 6 uses
  %i.a = icmp sgt i64 %1, %2
  br i1 %i.a, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.018 = phi i64 [ %1, %.lr.ph ], [ %.0919, %bb.c ] ; 3 uses
  %.0919.in = add nsw i64 %.018, -1
  %.0919 = sdiv i64 %.0919.in, 2                  ; 4 uses
  %i.i = getelementptr inbounds [88 x i8], ptr %0, i64 %.0919 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  call void @_ZNK6Assimp3IFC8TempMesh6CenterEv(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %i.k)
  %i.l = load double, ptr %5, align 8, !noalias !363
  %i.m = load double, ptr %4, align 8, !noalias !363
  %i.n = fsub double %i.l, %i.m                   ; 2 uses
  %i.o = load double, ptr %i.b, align 8, !noalias !363
  %i.p = load double, ptr %i.c, align 8, !noalias !363
  %i.q = fsub double %i.o, %i.p                   ; 2 uses
  %i.r = load double, ptr %i.d, align 8, !noalias !363
  %i.s = load double, ptr %i.e, align 8, !noalias !363
  %i.t = fsub double %i.r, %i.s                   ; 2 uses
  %i.u = fmul double %i.q, %i.q
  %i.v = call double @llvm.fmuladd.f64(double %i.n, double %i.n, double %i.u)
  %i.w = call noundef double @llvm.fmuladd.f64(double %i.t, double %i.t, double %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.x = load ptr, ptr %i.f, align 8
  call void @_ZNK6Assimp3IFC8TempMesh6CenterEv(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %i.x)
  %i.y = load double, ptr %6, align 8, !noalias !366
  %i.z = load double, ptr %4, align 8, !noalias !366
  %i.aa = fsub double %i.y, %i.z                  ; 2 uses
  %i.ab = load double, ptr %i.g, align 8, !noalias !366
  %i.ac = load double, ptr %i.c, align 8, !noalias !366
  %i.ad = fsub double %i.ab, %i.ac                ; 2 uses
  %i.ae = load double, ptr %i.h, align 8, !noalias !366
  %i.af = load double, ptr %i.e, align 8, !noalias !366
  %i.ag = fsub double %i.ae, %i.af                ; 2 uses
  %i.ah = fmul double %i.ad, %i.ad
  %i.ai = call double @llvm.fmuladd.f64(double %i.aa, double %i.aa, double %i.ah)
  %i.aj = call noundef double @llvm.fmuladd.f64(double %i.ag, double %i.ag, double %i.ai)
  %i.ak = fcmp olt double %i.w, %i.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %i.ak, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds [88 x i8], ptr %0, i64 %.018
  %i.am = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6Assimp3IFC11TempOpeningaSEOS1_(ptr noundef nonnull align 8 dereferenceable(88) %i.al, ptr noundef nonnull align 8 dereferenceable(88) %i.i) #30 ; 0 uses
  %i.an = icmp sgt i64 %.0919, %2
  br i1 %i.an, label %bb.b, label %.critedge, !llvm.loop !369

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %.0919, %bb.c ], [ %.018, %bb.b ]
  %i.ao = getelementptr inbounds [88 x i8], ptr %0, i64 %.0.lcssa
  %i.ap = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6Assimp3IFC11TempOpeningaSEOS1_(ptr noundef nonnull align 8 dereferenceable(88) %i.ao, ptr noundef nonnull align 8 dereferenceable(88) %3) #30 ; 0 uses
  ret void
}

declare void @_ZNK6Assimp3IFC8TempMesh6CenterEv(ptr dead_on_unwind writable sret(%class.aiVector3t) align 8, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS4_14DistanceSorterEEEEvT_SE_SE_SE_T0_(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %class.aiVector3t, align 8          ; 6 uses
  %6 = alloca %class.aiVector3t, align 8          ; 6 uses
  %7 = alloca %class.aiVector3t, align 8          ; 6 uses
  %8 = alloca %class.aiVector3t, align 8          ; 6 uses
  %9 = alloca %class.aiVector3t, align 8          ; 6 uses
  %10 = alloca %class.aiVector3t, align 8         ; 6 uses
  %11 = alloca %class.aiVector3t, align 8         ; 6 uses
  %12 = alloca %class.aiVector3t, align 8         ; 6 uses
  %13 = alloca %class.aiVector3t, align 8         ; 6 uses
  %14 = alloca %class.aiVector3t, align 8         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  call void @_ZNK6Assimp3IFC8TempMesh6CenterEv(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %13, ptr noundef nonnull align 8 dereferenceable(48) %i.b)
  %i.c = load double, ptr %13, align 8, !noalias !370
  %i.d = load double, ptr %4, align 8, !noalias !370 ; 10 uses
  %i.e = fsub double %i.c, %i.d                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.g = load double, ptr %i.f, align 8, !noalias !370
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load double, ptr %i.h, align 8, !noalias !370 ; 10 uses
  %i.j = fsub double %i.g, %i.i                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.l = load double, ptr %i.k, align 8, !noalias !370
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load double, ptr %i.m, align 8, !noalias !370 ; 10 uses
  %i.o = fsub double %i.l, %i.n                   ; 2 uses
  %i.p = fmul double %i.j, %i.j
  %i.q = call double @llvm.fmuladd.f64(double %i.e, double %i.e, double %i.p)
  %i.r = call noundef double @llvm.fmuladd.f64(double %i.o, double %i.o, double %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8
  call void @_ZNK6Assimp3IFC8TempMesh6CenterEv(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %14, ptr noundef nonnull align 8 dereferenceable(48) %i.t)
  %i.u = load double, ptr %14, align 8, !noalias !373
  %i.v = fsub double %i.u, %i.d                   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.x = load double, ptr %i.w, align 8, !noalias !373
  %i.y = fsub double %i.x, %i.i                   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.aa = load double, ptr %i.z, align 8, !noalias !373
  %i.ab = fsub double %i.aa, %i.n                 ; 2 uses
  %i.ac = fmul double %i.y, %i.y
  %i.ad = call double @llvm.fmuladd.f64(double %i.v, double %i.v, double %i.ac)
  %i.ae = call noundef double @llvm.fmuladd.f64(double %i.ab, double %i.ab, double %i.ad)
  %i.af = fcmp olt double %i.r, %i.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  br i1 %i.af, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.ah = load ptr, ptr %i.s, align 8
  call void @_ZNK6Assimp3IFC8TempMesh6CenterEv(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %i.ah)
  %i.ai = load double, ptr %11, align 8, !noalias !376
  %i.aj = fsub double %i.ai, %i.d                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.al = load double, ptr %i.ak, align 8, !noalias !376
  %i.am = fsub double %i.al, %i.i                 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ao = load double, ptr %i.an, align 8, !noalias !376
  %i.ap = fsub double %i.ao, %i.n                 ; 2 uses
  %i.aq = fmul double %i.am, %i.am
  %i.ar = call double @llvm.fmuladd.f64(double %i.aj, double %i.aj, double %i.aq)
  %i.as = call noundef double @llvm.fmuladd.f64(double %i.ap, double %i.ap, double %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.at = load ptr, ptr %i.ag, align 8
  call void @_ZNK6Assimp3IFC8TempMesh6CenterEv(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %12, ptr noundef nonnull align 8 dereferenceable(48) %i.at)
  %i.au = load double, ptr %12, align 8, !noalias !379
  %i.av = fsub double %i.au, %i.d                 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ax = load double, ptr %i.aw, align 8, !noalias !379
  %i.ay = fsub double %i.ax, %i.i                 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ba = load double, ptr %i.az, align 8, !noalias !379
  %i.bb = fsub double %i.ba, %i.n                 ; 2 uses
  %i.bc = fmul double %i.ay, %i.ay
end_hunk_4
begin_hunk_5_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS4_14DistanceSorterEEEEvT_SE_SE_SE_T0_:bb.a
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.du = load double, ptr %i.dt, align 8, !noalias !397
  %i.dv = fsub double %i.du, %i.i                 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dx = load double, ptr %i.dw, align 8, !noalias !397
  %i.dy = fsub double %i.dx, %i.n                 ; 2 uses
  %i.dz = fmul double %i.dv, %i.dv
  %i.ea = call double @llvm.fmuladd.f64(double %i.ds, double %i.ds, double %i.dz)
  %i.eb = call noundef double @llvm.fmuladd.f64(double %i.dy, double %i.dy, double %i.ea)
  %i.ec = fcmp olt double %i.dp, %i.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %.26 = select i1 %i.ec, ptr %3, ptr %2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sink = phi ptr [ %2, %bb.b ], [ %1, %bb.d ], [ %.26, %bb.e ], [ %., %bb.c ]
  call void @_ZSt4swapIN6Assimp3IFC11TempOpeningEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %.sink) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS4_14DistanceSorterEEEET_SE_SE_SE_T0_(ptr %0, ptr %1, ptr %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %class.aiVector3t, align 8          ; 6 uses
  %5 = alloca %class.aiVector3t, align 8          ; 6 uses
  %6 = alloca %class.aiVector3t, align 8          ; 6 uses
  %7 = alloca %class.aiVector3t, align 8          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.sroa.010.0 = phi ptr [ %0, %bb.a ], [ %i.ak, %bb.f ]
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %.sroa.0.1, %bb.f ]
  %i.l = load double, ptr %3, align 8             ; 4 uses
  %i.m = load double, ptr %i.b, align 8           ; 4 uses
  %i.n = load double, ptr %i.d, align 8           ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.010.1 = phi ptr [ %.sroa.010.0, %bb.b ], [ %i.ak, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.010.1, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  call void @_ZNK6Assimp3IFC8TempMesh6CenterEv(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %i.p)
  %i.q = load double, ptr %6, align 8, !noalias !400
  %i.r = fsub double %i.q, %i.l                   ; 2 uses
  %i.s = load double, ptr %i.a, align 8, !noalias !400
  %i.t = fsub double %i.s, %i.m                   ; 2 uses
  %i.u = load double, ptr %i.c, align 8, !noalias !400
  %i.v = fsub double %i.u, %i.n                   ; 2 uses
  %i.w = fmul double %i.t, %i.t
  %i.x = call double @llvm.fmuladd.f64(double %i.r, double %i.r, double %i.w)
  %i.y = call noundef double @llvm.fmuladd.f64(double %i.v, double %i.v, double %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.z = load ptr, ptr %i.e, align 8
  call void @_ZNK6Assimp3IFC8TempMesh6CenterEv(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %i.z)
  %i.aa = load double, ptr %7, align 8, !noalias !403
  %i.ab = fsub double %i.aa, %i.l                 ; 2 uses
  %i.ac = load double, ptr %i.f, align 8, !noalias !403
  %i.ad = fsub double %i.ac, %i.m                 ; 2 uses
  %i.ae = load double, ptr %i.g, align 8, !noalias !403
  %i.af = fsub double %i.ae, %i.n                 ; 2 uses
  %i.ag = fmul double %i.ad, %i.ad
  %i.ah = call double @llvm.fmuladd.f64(double %i.ab, double %i.ab, double %i.ag)
  %i.ai = call noundef double @llvm.fmuladd.f64(double %i.af, double %i.af, double %i.ah)
  %i.aj = fcmp olt double %i.y, %i.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.010.1, i64 88 ; 2 uses
  br i1 %i.aj, label %bb.c, label %.preheader, !llvm.loop !406

.preheader:                                       ; preds = %bb.c, %.preheader
  %.sroa.0.0.pn = phi ptr [ %.sroa.0.1, %.preheader ], [ %.sroa.0.0, %bb.c ] ; 2 uses
  %.sroa.0.1 = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -88 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.al = load ptr, ptr %i.e, align 8
  call void @_ZNK6Assimp3IFC8TempMesh6CenterEv(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %i.al)
  %i.am = load double, ptr %4, align 8, !noalias !407
  %i.an = fsub double %i.am, %i.l                 ; 2 uses
  %i.ao = load double, ptr %i.h, align 8, !noalias !407
  %i.ap = fsub double %i.ao, %i.m                 ; 2 uses
  %i.aq = load double, ptr %i.i, align 8, !noalias !407
  %i.ar = fsub double %i.aq, %i.n                 ; 2 uses
  %i.as = fmul double %i.ap, %i.ap
  %i.at = call double @llvm.fmuladd.f64(double %i.an, double %i.an, double %i.as)
  %i.au = call noundef double @llvm.fmuladd.f64(double %i.ar, double %i.ar, double %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.av = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -56
  %i.aw = load ptr, ptr %i.av, align 8
  call void @_ZNK6Assimp3IFC8TempMesh6CenterEv(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %i.aw)
  %i.ax = load double, ptr %5, align 8, !noalias !410
  %i.ay = fsub double %i.ax, %i.l                 ; 2 uses
  %i.az = load double, ptr %i.j, align 8, !noalias !410
  %i.ba = fsub double %i.az, %i.m                 ; 2 uses
  %i.bb = load double, ptr %i.k, align 8, !noalias !410
  %i.bc = fsub double %i.bb, %i.n                 ; 2 uses
  %i.bd = fmul double %i.ba, %i.ba
  %i.be = call double @llvm.fmuladd.f64(double %i.ay, double %i.ay, double %i.bd)
  %i.bf = call noundef double @llvm.fmuladd.f64(double %i.bc, double %i.bc, double %i.be)
  %i.bg = fcmp olt double %i.au, %i.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %i.bg, label %.preheader, label %bb.d, !llvm.loop !413

bb.d:                                             ; preds = %.preheader
  %i.bh = icmp ult ptr %.sroa.010.1, %.sroa.0.1
  br i1 %i.bh, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  ret ptr %.sroa.010.1

bb.f:                                             ; preds = %bb.d
  call void @_ZSt4swapIN6Assimp3IFC11TempOpeningEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.010.1, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.1) #30
  br label %bb.b, !llvm.loop !414
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt4swapIN6Assimp3IFC11TempOpeningEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Assimp::IFC::TempOpening", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.d = load <2 x ptr>, ptr %i.b, align 8
  store <2 x ptr> %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.h = load <2 x ptr>, ptr %i.f, align 8
  store <2 x ptr> %i.h, ptr %i.e, align 8
  store <4 x ptr> splat (ptr null), ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.j, align 8
  store <2 x ptr> %i.k, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load ptr, ptr %i.m, align 8
  store ptr %i.n, ptr %i.l, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.o = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6Assimp3IFC11TempOpeningaSEOS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) #30 ; 0 uses
  %i.p = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6Assimp3IFC11TempOpeningaSEOS1_(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) #30 ; 0 uses
  %i.q = load ptr, ptr %i.i, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %i.l, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i:  ; preds = %bb.b, %bb.a
  %i.v = load ptr, ptr %i.g, align 8              ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.w, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #30, !inline_history !220
  %i.ae = load ptr, ptr %i.v, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #30, !inline_history !220
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ah = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i1.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i1.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = add nsw i32 %i.z, -1
  store i32 %i.ai, ptr %i.w, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aj = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.z, %bb.f ], [ %i.aj, %bb.g ]
  %i.ak = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ak, label %bb.h, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !14

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #30
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i
  %i.al = load ptr, ptr %i.c, align 8             ; 8 uses
  %.not.i.i2.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i2.i, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.am, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4
  %i.ar = load ptr, ptr %i.al, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #30, !inline_history !220
  %i.au = load ptr, ptr %i.al, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #30, !inline_history !220
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ax = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i3.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i3.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.am, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

bb.m:                                             ; preds = %bb.k
  %i.az = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i5.i = phi i32 [ %i.ap, %bb.l ], [ %i.az, %bb.m ]
  %i.ba = icmp eq i32 %.0.i.i.i.i5.i, 1
  br i1 %i.ba, label %bb.n, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, !prof !14

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #30
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit

_ZN6Assimp3IFC11TempOpeningD2Ev.exit:             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #23

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS4_14DistanceSorterEEEEvT_SE_T0_(ptr %0, ptr %1, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.aiVector3t, align 8          ; 6 uses
  %4 = alloca %class.aiVector3t, align 8          ; 6 uses
  %5 = alloca %"struct.Assimp::IFC::TempOpening", align 8 ; 10 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit17, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.07.018 = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.not19 = icmp eq ptr %.sroa.07.018, %1
  br i1 %.not19, label %.loopexit17, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.o = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ae
  %.sroa.07.021 = phi ptr [ %.sroa.07.018, %.lr.ph ], [ %.sroa.07.0, %bb.ae ] ; 6 uses
  %.pn20 = phi ptr [ %0, %.lr.ph ], [ %.sroa.07.021, %bb.ae ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.p = getelementptr inbounds nuw i8, ptr %.pn20, i64 120 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8
  call void @_ZNK6Assimp3IFC8TempMesh6CenterEv(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %i.q)
  %i.r = load double, ptr %3, align 8, !noalias !415
  %i.s = load double, ptr %2, align 8, !noalias !415 ; 2 uses
  %i.t = fsub double %i.r, %i.s                   ; 2 uses
  %i.u = load double, ptr %i.b, align 8, !noalias !415
  %i.v = load double, ptr %i.c, align 8, !noalias !415 ; 2 uses
  %i.w = fsub double %i.u, %i.v                   ; 2 uses
  %i.x = load double, ptr %i.d, align 8, !noalias !415
  %i.y = load double, ptr %i.e, align 8, !noalias !415 ; 2 uses
  %i.z = fsub double %i.x, %i.y                   ; 2 uses
  %i.aa = fmul double %i.w, %i.w
  %i.ab = call double @llvm.fmuladd.f64(double %i.t, double %i.t, double %i.aa)
  %i.ac = call noundef double @llvm.fmuladd.f64(double %i.z, double %i.z, double %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.ad = load ptr, ptr %i.f, align 8
  call void @_ZNK6Assimp3IFC8TempMesh6CenterEv(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %i.ad)
  %i.ae = load double, ptr %4, align 8, !noalias !418
  %i.af = fsub double %i.ae, %i.s                 ; 2 uses
  %i.ag = load double, ptr %i.g, align 8, !noalias !418
  %i.ah = fsub double %i.ag, %i.v                 ; 2 uses
  %i.ai = load double, ptr %i.h, align 8, !noalias !418
  %i.aj = fsub double %i.ai, %i.y                 ; 2 uses
  %i.ak = fmul double %i.ah, %i.ah
  %i.al = call double @llvm.fmuladd.f64(double %i.af, double %i.af, double %i.ak)
  %i.am = call noundef double @llvm.fmuladd.f64(double %i.aj, double %i.aj, double %i.al)
  %i.an = fcmp olt double %i.ac, %i.am
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %i.an, label %bb.c, label %bb.ad

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.07.021, i64 32, i1 false)
  %i.ao = load <2 x ptr>, ptr %i.p, align 8
  store <2 x ptr> %i.ao, ptr %i.i, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn20, i64 136
  %i.aq = load <2 x ptr>, ptr %i.ap, align 8
  store <2 x ptr> %i.aq, ptr %i.k, align 8
  store <4 x ptr> splat (ptr null), ptr %i.p, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn20, i64 152 ; 2 uses
  %i.as = load <2 x ptr>, ptr %i.ar, align 8
  store <2 x ptr> %i.as, ptr %i.m, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %.pn20, i64 168
  %i.au = load ptr, ptr %i.at, align 8
  store ptr %i.au, ptr %i.n, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false)
  %i.av = ptrtoint ptr %.sroa.07.021 to i64
  %i.aw = sub i64 %i.av, %i.o                     ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn20, i64 176
  %i.az = udiv exact i64 %i.aw, 88
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN6Assimp3IFC11TempOpeningaSEOS1_.exit, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.dh, %_ZN6Assimp3IFC11TempOpeningaSEOS1_.exit ], [ %i.az, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.bb, %_ZN6Assimp3IFC11TempOpeningaSEOS1_.exit ], [ %i.ay, %.lr.ph.preheader.i.i.i.i.i ] ; 9 uses
  %.078.i.i.i.i.i = phi ptr [ %i.ba, %_ZN6Assimp3IFC11TempOpeningaSEOS1_.exit ], [ %.sroa.07.021, %.lr.ph.preheader.i.i.i.i.i ] ; 7 uses
  %i.ba = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -88 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -88 ; 2 uses
  %i.bc = load ptr, ptr %i.ba, align 8
  store ptr %i.bc, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -80
  %i.be = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false)
  %i.bf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -56
  %i.bg = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -56 ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -48
  %i.bi = load <2 x ptr>, ptr %i.bg, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  %i.bj = load ptr, ptr %i.bh, align 8            ; 8 uses
  store <2 x ptr> %i.bi, ptr %i.bf, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 4294967297
  %i.bn = trunc i64 %i.bl to i32                  ; 2 uses
  br i1 %i.bm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.bk, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bo, align 4
  %i.bp = load ptr, ptr %i.bj, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #30, !inline_history !421
  %i.bs = load ptr, ptr %i.bj, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #30, !inline_history !421
  br label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.bv = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bw = add nsw i32 %i.bn, -1
  store i32 %i.bw, ptr %i.bk, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.bx = atomicrmw volatile add ptr %i.bk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bn, %bb.g ], [ %i.bx, %bb.h ]
  %i.by = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.by, label %bb.i, label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit.i, !prof !14

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #30
  br label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit.i

_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.e, %.lr.ph.i.i.i.i.i
  %i.bz = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -40
  %i.ca = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -40 ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  %i.cc = load <2 x ptr>, ptr %i.ca, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i8 0, i64 16, i1 false)
  %i.cd = load ptr, ptr %i.cb, align 8            ; 8 uses
  store <2 x ptr> %i.cc, ptr %i.bz, align 8
  %.not.i.i.i.i6.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i6.i, label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit10.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 4 uses
  %i.cf = load atomic i64, ptr %i.ce acquire, align 8 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 4294967297
  %i.ch = trunc i64 %i.cf to i32                  ; 2 uses
  br i1 %i.cg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ce, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  store i32 0, ptr %i.ci, align 4
  %i.cj = load ptr, ptr %i.cd, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #30, !inline_history !421
  %i.cm = load ptr, ptr %i.cd, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #30, !inline_history !421
  br label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit10.i

bb.l:                                             ; preds = %bb.j
  %i.cp = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i7.i = icmp eq i8 %i.cp, 0
  br i1 %.not.i.i.i.i.i7.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cq = add nsw i32 %i.ch, -1
  store i32 %i.cq, ptr %i.ce, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8.i

bb.n:                                             ; preds = %bb.l
  %i.cr = atomicrmw volatile add ptr %i.ce, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i9.i = phi i32 [ %i.ch, %bb.m ], [ %i.cr, %bb.n ]
  %i.cs = icmp eq i32 %.0.i.i.i.i.i.i9.i, 1
  br i1 %i.cs, label %bb.o, label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit10.i, !prof !14

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #30
  br label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit10.i

_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit10.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8.i, %bb.k, %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit.i
  %i.ct = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 2 uses
  %i.cv = load ptr, ptr %i.ct, align 8            ; 3 uses
  %i.cw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16
  %i.cx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = load ptr, ptr %i.cu, align 8
  store ptr %i.cz, ptr %i.ct, align 8
  %i.da = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16
  %i.db = load ptr, ptr %i.da, align 8
  store ptr %i.db, ptr %i.cw, align 8
  %i.dc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.dd = load ptr, ptr %i.dc, align 8
  store ptr %i.dd, ptr %i.cx, align 8
  %.not.i.i.i.i.i11.i = icmp eq ptr %i.cv, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i11.i, label %_ZN6Assimp3IFC11TempOpeningaSEOS1_.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit10.i
  %i.de = ptrtoint ptr %i.cy to i64
  %i.df = ptrtoint ptr %i.cv to i64
  %i.dg = sub i64 %i.de, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.dg) #29
  br label %_ZN6Assimp3IFC11TempOpeningaSEOS1_.exit

_ZN6Assimp3IFC11TempOpeningaSEOS1_.exit:          ; preds = %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit10.i, %bb.p
  %i.dh = add nsw i64 %.010.i.i.i.i.i, -1
  %i.di = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.di, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !422

.loopexit:                                        ; preds = %_ZN6Assimp3IFC11TempOpeningaSEOS1_.exit, %bb.c
  %i.dj = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6Assimp3IFC11TempOpeningaSEOS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %5) #30 ; 0 uses
  %i.dk = load ptr, ptr %i.m, align 8             ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %i.dl = load ptr, ptr %i.n, align 8
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.dk to i64
  %i.do = sub i64 %i.dm, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.do) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i:  ; preds = %bb.q, %.loopexit
  %i.dp = load ptr, ptr %i.l, align 8             ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 4 uses
  %i.dr = load atomic i64, ptr %i.dq acquire, align 8 ; 2 uses
  %i.ds = icmp eq i64 %i.dr, 4294967297
  %i.dt = trunc i64 %i.dr to i32                  ; 2 uses
  br i1 %i.ds, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.dq, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  store i32 0, ptr %i.du, align 4
  %i.dv = load ptr, ptr %i.dp, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #30, !inline_history !220
  %i.dy = load ptr, ptr %i.dp, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #30, !inline_history !220
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.t:                                             ; preds = %bb.r
  %i.eb = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i1.i = icmp eq i8 %i.eb, 0
  br i1 %.not.i.i.i1.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ec = add nsw i32 %i.dt, -1
  store i32 %i.ec, ptr %i.dq, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.ed = atomicrmw volatile add ptr %i.dq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i = phi i32 [ %i.dt, %bb.u ], [ %i.ed, %bb.v ]
  %i.ee = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ee, label %bb.w, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !14

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #30
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.s, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i
  %i.ef = load ptr, ptr %i.j, align 8             ; 8 uses
  %.not.i.i2.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i2.i, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 4 uses
  %i.eh = load atomic i64, ptr %i.eg acquire, align 8 ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 4294967297
  %i.ej = trunc i64 %i.eh to i32                  ; 2 uses
  br i1 %i.ei, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.eg, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  store i32 0, ptr %i.ek, align 4
  %i.el = load ptr, ptr %i.ef, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #30, !inline_history !220
  %i.eo = load ptr, ptr %i.ef, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #30, !inline_history !220
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit

bb.z:                                             ; preds = %bb.x
  %i.er = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i3.i = icmp eq i8 %i.er, 0
  br i1 %.not.i.i.i3.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.es = add nsw i32 %i.ej, -1
  store i32 %i.es, ptr %i.eg, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

bb.ab:                                            ; preds = %bb.z
  %i.et = atomicrmw volatile add ptr %i.eg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i5.i = phi i32 [ %i.ej, %bb.aa ], [ %i.et, %bb.ab ]
  %i.eu = icmp eq i32 %.0.i.i.i.i5.i, 1
  br i1 %i.eu, label %bb.ac, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, !prof !14

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #30
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit

_ZN6Assimp3IFC11TempOpeningD2Ev.exit:             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.ae

bb.ad:                                            ; preds = %bb.b
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS4_14DistanceSorterEEEEvT_T0_(ptr nonnull %.sroa.07.021, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Val_comp_iter") align 8 %2)
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, %bb.ad
  %.sroa.07.0 = getelementptr inbounds nuw i8, ptr %.sroa.07.021, i64 88 ; 2 uses
  %.not = icmp eq ptr %.sroa.07.0, %1
  br i1 %.not, label %.loopexit17, label %bb.b, !llvm.loop !423

.loopexit17:                                      ; preds = %bb.ae, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS4_14DistanceSorterEEEEvT_T0_(ptr %0, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Val_comp_iter") align 8 %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.aiVector3t, align 8          ; 6 uses
  %3 = alloca %class.aiVector3t, align 8          ; 6 uses
  %4 = alloca %"struct.Assimp::IFC::TempOpening", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.d = load <2 x ptr>, ptr %i.b, align 8
  %i.e = load ptr, ptr %i.b, align 8
  store <2 x ptr> %i.d, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.i = load <2 x ptr>, ptr %i.g, align 8
  store <2 x ptr> %i.i, ptr %i.f, align 8
  store <4 x ptr> splat (ptr null), ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.l = load <2 x ptr>, ptr %i.k, align 8
  store <2 x ptr> %i.l, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load ptr, ptr %i.n, align 8
  store ptr %i.o, ptr %i.m, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load double, ptr %i.q, align 8           ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load double, ptr %i.t, align 8           ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.x = phi ptr [ %i.e, %bb.a ], [ %.pre, %bb.d ]
  %.sroa.04.0 = phi ptr [ %0, %bb.a ], [ %.sroa.0.0, %bb.d ] ; 4 uses
  %.sroa.0.0 = getelementptr inbounds i8, ptr %.sroa.04.0, i64 -88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNK6Assimp3IFC8TempMesh6CenterEv(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %i.x)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  %i.y = load double, ptr %2, align 8, !noalias !424
  %i.z = load double, ptr %1, align 8, !noalias !424 ; 2 uses
  %i.aa = load double, ptr %i.p, align 8, !noalias !424
  %i.ab = load double, ptr %i.s, align 8, !noalias !424
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.ac = getelementptr inbounds i8, ptr %.sroa.04.0, i64 -56
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void @_ZNK6Assimp3IFC8TempMesh6CenterEv(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %i.ad)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.noexc
  %i.ae = fsub double %i.ab, %i.u                 ; 2 uses
  %i.af = fsub double %i.y, %i.z                  ; 2 uses
  %i.ag = fsub double %i.aa, %i.r                 ; 2 uses
  %i.ah = fmul double %i.ag, %i.ag
  %i.ai = call double @llvm.fmuladd.f64(double %i.af, double %i.af, double %i.ah)
  %i.aj = call noundef double @llvm.fmuladd.f64(double %i.ae, double %i.ae, double %i.ai)
  %i.ak = load double, ptr %3, align 8, !noalias !427
  %i.al = fsub double %i.ak, %i.z                 ; 2 uses
  %i.am = load double, ptr %i.v, align 8, !noalias !427
  %i.an = fsub double %i.am, %i.r                 ; 2 uses
  %i.ao = load double, ptr %i.w, align 8, !noalias !427
  %i.ap = fsub double %i.ao, %i.u                 ; 2 uses
  %i.aq = fmul double %i.an, %i.an
  %i.ar = call double @llvm.fmuladd.f64(double %i.al, double %i.al, double %i.aq)
  %i.as = call noundef double @llvm.fmuladd.f64(double %i.ap, double %i.ap, double %i.ar)
  %i.at = fcmp olt double %i.aj, %i.as
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %i.at, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.au = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6Assimp3IFC11TempOpeningaSEOS1_(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.04.0, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.0) #30 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.b, !llvm.loop !430

bb.e:                                             ; preds = %.noexc, %bb.b
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp3IFC11TempOpeningD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %i.av

bb.f:                                             ; preds = %bb.c
  %i.aw = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6Assimp3IFC11TempOpeningaSEOS1_(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.04.0, ptr noundef nonnull align 8 dereferenceable(88) %4) #30 ; 0 uses
  %i.ax = load ptr, ptr %i.j, align 8             ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = load ptr, ptr %i.m, align 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bb) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i:  ; preds = %bb.g, %bb.f
  %i.bc = load ptr, ptr %i.h, align 8             ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 4 uses
  %i.be = load atomic i64, ptr %i.bd acquire, align 8 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 4294967297
  %i.bg = trunc i64 %i.be to i32                  ; 2 uses
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.bd, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store i32 0, ptr %i.bh, align 4
  %i.bi = load ptr, ptr %i.bc, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #30, !inline_history !220
  %i.bl = load ptr, ptr %i.bc, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #30, !inline_history !220
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.j:                                             ; preds = %bb.h
  %i.bo = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i1.i = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i1.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = add nsw i32 %i.bg, -1
  store i32 %i.bp, ptr %i.bd, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bq = atomicrmw volatile add ptr %i.bd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.bg, %bb.k ], [ %i.bq, %bb.l ]
  %i.br = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.br, label %bb.m, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !14

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #30
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i
  %i.bs = load ptr, ptr %i.c, align 8             ; 8 uses
  %.not.i.i2.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i2.i, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 4 uses
  %i.bu = load atomic i64, ptr %i.bt acquire, align 8 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 4294967297
  %i.bw = trunc i64 %i.bu to i32                  ; 2 uses
  br i1 %i.bv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bt, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i32 0, ptr %i.bx, align 4
  %i.by = load ptr, ptr %i.bs, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #30, !inline_history !220
  %i.cb = load ptr, ptr %i.bs, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #30, !inline_history !220
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.ce = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i3.i = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i.i3.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = add nsw i32 %i.bw, -1
  store i32 %i.cf, ptr %i.bt, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

bb.r:                                             ; preds = %bb.p
  %i.cg = atomicrmw volatile add ptr %i.bt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i5.i = phi i32 [ %i.bw, %bb.q ], [ %i.cg, %bb.r ]
  %i.ch = icmp eq i32 %.0.i.i.i.i5.i, 1
  br i1 %i.ch, label %bb.s, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, !prof !14

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #30
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit

_ZN6Assimp3IFC11TempOpeningD2Ev.exit:             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4warnIJPKcS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %4, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %4, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #30
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull %i.a, i64 noundef %i.i)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit unwind label %bb.d ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.d ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4) #30
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit: ; preds = %bb.b, %bb.c
  invoke void @_ZN6Assimp6Logger13formatMessageIJEPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit
  %i.l = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.l)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %3, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.r = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.r, ptr %4, align 8
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.t = getelementptr i8, ptr %i.r, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %4, i64 %i.u
  store ptr %i.s, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = load i64, ptr %i.z, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.w, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ad) #30
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ae) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.g:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.h:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %3, align 8               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.h
  %i.ak = load i64, ptr %i.ai, align 8
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.g
  %.pn = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.ag, %bb.h ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJEPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = load ptr, ptr %3, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #30
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !431)
  call void @llvm.experimental.noalias.scope.decl(metadata !434)
  call void @llvm.experimental.noalias.scope.decl(metadata !437)
  call void @llvm.experimental.noalias.scope.decl(metadata !440)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.k, ptr %0, align 8, !alias.scope !443
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.l, align 8, !alias.scope !443
  store i8 0, ptr %i.k, align 8, !alias.scope !443
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !noalias !443 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.n, null
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !noalias !443 ; 2 uses
  %i.q = icmp ugt ptr %i.n, %i.p
  %.08.i.i.i.i.i = select i1 %i.q, ptr %i.n, ptr %i.p ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !noalias !443 ; 2 uses
  %i.t = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.s, i64 noundef %i.v)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %0, align 8, !alias.scope !443 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.k
  br i1 %i.z, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
end_hunk_5
