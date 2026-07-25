inline.NumInlined: 2079
inline.NumDeleted: 821
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6Assimp3IFC21ProcessSweptDiskSolidERKNS0_10Schema_2x317IfcSweptDiskSolidERNS0_8TempMeshERNS0_14ConversionDataE:bb.a
  %i.ao = icmp ult i64 %i.an, %i.af
  br i1 %i.ao, label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 3 uses
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.al
  %i.at = mul i64 %i.ae, 96
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #28
          to label %.noexc162 unwind label %bb.p  ; 4 uses

.noexc162:                                        ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i = icmp eq ptr %i.aj, %i.aq
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc162, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i ], [ %i.au, %.noexc162 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i ], [ %i.aj, %.noexc162 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i64 24, i1 false), !alias.scope !75
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.av, %i.aq
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !7

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc162
  %.not.i8.i = icmp eq ptr %i.aj, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.am) #29
  br label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.g, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.au, ptr %1, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.as
  store ptr %i.ax, ptr %i.ap, align 8
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %i.af
  store ptr %i.ay, ptr %i.ah, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.ba = add i32 %i.m, -1
  %i.bb = zext i32 %i.ba to i64
  %i.bc = mul i64 %i.ac, %i.bb                    ; 4 uses
  %i.bd = icmp ugt i64 %i.bc, 2305843009213693951
  br i1 %i.bd, label %.invoke, label %bb.h

.invoke:                                          ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit, %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #27
          to label %.cont unwind label %bb.p

.cont:                                            ; preds = %.invoke
  unreachable

bb.h:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = load ptr, ptr %i.az, align 8            ; 4 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bj = sub i64 %i.bh, %i.bi                    ; 2 uses
  %i.bk = ashr exact i64 %i.bj, 2
  %i.bl = icmp ult i64 %i.bk, %i.bc
  br i1 %i.bl, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.bi                    ; 3 uses
  %i.bq = shl nuw nsw i64 %i.bc, 2
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #28
          to label %.noexc165 unwind label %bb.p  ; 4 uses

.noexc165:                                        ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.bs = icmp sgt i64 %i.bp, 0
  br i1 %i.bs, label %bb.i, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

bb.i:                                             ; preds = %.noexc165
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.br, ptr align 4 %i.bg, i64 %i.bp, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.i, %.noexc165
  %.not.i8.i163 = icmp eq ptr %i.bg, null
  br i1 %.not.i8.i163, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bj) #29
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i: ; preds = %bb.j, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  store ptr %i.br, ptr %i.az, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bp
  store ptr %i.bt, ptr %i.bm, align 8
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bc
  store ptr %i.bu, ptr %i.be, align 8
  br label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt6vectorIjSaIjEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, %bb.h
  %i.bv = icmp ugt i64 %i.ae, 384307168202282325
  br i1 %i.bv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #27
          to label %.noexc175 unwind label %bb.q

.noexc175:                                        ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %.not385 = icmp eq i64 %i.ae, 0
  br i1 %.not385, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit177, label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i166

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i166: ; preds = %bb.l
  %i.bw = mul i64 %i.ab, %i.ad
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #28
          to label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i174 unwind label %bb.q ; 2 uses

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i174: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i166
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.bx, i64 %i.ae
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit177

_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit177: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i174, %bb.l
  %.sroa.22.6 = phi ptr [ %i.by, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i174 ], [ null, %bb.l ] ; 8 uses
  %.sroa.16.2 = phi ptr [ %i.bx, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i174 ], [ null, %bb.l ] ; 9 uses
  %i.bz = load ptr, ptr %3, align 8               ; 3 uses
  %i.ca = load ptr, ptr %i.w, align 8
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %bb.m, label %bb.r

bb.m:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit177
  %i.cc = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc178 unwind label %bb.q

.noexc178:                                        ; preds = %bb.m
  br i1 %i.cc, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA55_KcEEEvDpOT_.exit, label %bb.n

bb.n:                                             ; preds = %.noexc178
  %i.cd = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc179 unwind label %bb.q

.noexc179:                                        ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.ce = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
          to label %.noexc180 unwind label %bb.q

.noexc180:                                        ; preds = %.noexc179
  store ptr %i.ce, ptr %i.b, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA55_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.cd, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(55) @.str.5)
          to label %.noexc181 unwind label %bb.q

.noexc181:                                        ; preds = %.noexc180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA55_KcEEEvDpOT_.exit

bb.o:                                             ; preds = %bb.d
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit255

bb.p:                                             ; preds = %.invoke, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit255

bb.q:                                             ; preds = %.noexc180, %.noexc179, %bb.n, %bb.m, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i166, %bb.k
  %.sroa.22.0 = phi ptr [ null, %bb.k ], [ %.sroa.22.6, %.noexc180 ], [ %.sroa.22.6, %.noexc179 ], [ %.sroa.22.6, %bb.n ], [ %.sroa.22.6, %bb.m ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i166 ]
  %.sroa.0353.0 = phi ptr [ null, %bb.k ], [ %.sroa.16.2, %.noexc180 ], [ %.sroa.16.2, %.noexc179 ], [ %.sroa.16.2, %bb.n ], [ %.sroa.16.2, %bb.m ], [ null, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i166 ]
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.r:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit177
  %.not509 = icmp eq ptr %i.x, %i.y
  br i1 %.not509, label %.lr.ph496, label %.lr.ph483

.lr.ph483:                                        ; preds = %bb.r
  %.sroa.9349.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.ci = load <2 x double>, ptr %.sroa.9349.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0347.0.copyload = load double, ptr %i.bz, align 8 ; 2 uses
  %i.cj = add nsw i64 %i.ac, -1                   ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.not510 = icmp eq i32 %i.m, 0
  br label %bb.an

.preheader391:                                    ; preds = %._crit_edge
  %.not512 = icmp eq i64 %i.cj, 0
  br i1 %.not512, label %._crit_edge497, label %.lr.ph496

.lr.ph496:                                        ; preds = %bb.r, %.preheader391
  %.sroa.0353.1.lcssa597 = phi ptr [ %.sroa.0353.2.lcssa, %.preheader391 ], [ %.sroa.16.2, %bb.r ] ; 9 uses
  %.sroa.22.1.lcssa595 = phi ptr [ %.sroa.22.2.lcssa, %.preheader391 ], [ %.sroa.22.6, %bb.r ] ; 6 uses
  %.pre-phi550594 = phi i64 [ %i.cj, %.preheader391 ], [ -1, %bb.r ]
  %.not513 = icmp eq i32 %i.m, 0
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 13 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  br i1 %.not513, label %._crit_edge497, label %.lr.ph490.us

4:                                                ; preds = %.lr.ph490.us, %4
  %indvars.iv = phi i64 [ 0, %.lr.ph490.us ], [ %indvars.iv.next, %4 ] ; 3 uses
  %.0133488.us = phi i32 [ 0, %.lr.ph490.us ], [ %.1134.us, %4 ]
  %.0136486.us = phi float [ 1.000000e+10, %.lr.ph490.us ], [ %.1137.us, %4 ] ; 2 uses
  %5 = getelementptr [24 x i8], ptr %i.jn, i64 %indvars.iv ; 3 uses
  %6 = load double, ptr %5, align 8
  %7 = fptrunc double %6 to float
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %9 = load double, ptr %8, align 8
  %10 = fptrunc double %9 to float
  %11 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %12 = load double, ptr %11, align 8
  %13 = fptrunc double %12 to float
  %14 = fsub float %7, %i.je                      ; 2 uses
  %15 = fsub float %10, %i.jh                     ; 2 uses
  %16 = fsub float %13, %i.jk                     ; 2 uses
  %17 = fmul float %15, %15
  %18 = call float @llvm.fmuladd.f32(float %14, float %14, float %17)
  %19 = call noundef float @llvm.fmuladd.f32(float %16, float %16, float %18) ; 2 uses
  %20 = fcmp olt float %19, %.0136486.us          ; 2 uses
  %.1137.us = select i1 %20, float %19, float %.0136486.us
  %21 = trunc nuw i64 %indvars.iv to i32
  %.1134.us = select i1 %20, i32 %21, i32 %.0133488.us ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond537.not = icmp eq i64 %indvars.iv.next, %i.ad
  br i1 %exitcond537.not, label %.preheader.us, label %4, !llvm.loop !79

bb.s:                                             ; preds = %.preheader.us, %bb.am
  %indvars.iv538 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next539, %bb.am ] ; 3 uses
  %i.cn = getelementptr [24 x i8], ptr %i.jc, i64 %indvars.iv538 ; 2 uses
  %i.co = load ptr, ptr %i.cl, align 8            ; 5 uses
  %i.cp = load ptr, ptr %i.ah, align 8
  %.not.i.us = icmp eq ptr %i.co, %i.cp
  br i1 %.not.i.us, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 24, i1 false)
  %i.cq = load ptr, ptr %i.cl, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24 ; 2 uses
  store ptr %i.cr, ptr %i.cl, align 8
  %.pre = load ptr, ptr %i.ah, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit.us

bb.u:                                             ; preds = %bb.s
  %i.cs = load ptr, ptr %1, align 8               ; 5 uses
  %i.ct = ptrtoint ptr %i.co to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu                    ; 4 uses
  %i.cw = icmp eq i64 %i.cv, 9223372036854775800
  br i1 %i.cw, label %.split499.us.invoke, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.us

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.us: ; preds = %bb.u
  %i.cx = sdiv exact i64 %i.cv, 24                ; 3 uses
  %.sroa.speculated.i.i.i.us = call i64 @llvm.umax.i64(i64 %i.cx, i64 1)
  %i.cy = add nsw i64 %.sroa.speculated.i.i.i.us, %i.cx ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.cx
  %i.da = call i64 @llvm.umin.i64(i64 %i.cy, i64 384307168202282325)
  %i.db = select i1 %i.cz, i64 384307168202282325, i64 %i.da ; 3 uses
  %.not.i.i.i.us = icmp ne i64 %i.db, 0
  call void @llvm.assume(i1 %.not.i.i.i.us)
  %i.dc = mul nuw nsw i64 %i.db, 24
  %i.dd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #28
          to label %.noexc198.us unwind label %.loopexit.split.us ; 5 uses

.noexc198.us:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.us
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 24, i1 false)
  %.not10.i.i.i.i.i.us = icmp eq ptr %i.cs, %i.co
  br i1 %.not10.i.i.i.i.i.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.us, label %.lr.ph.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.us:                              ; preds = %.noexc198.us, %.lr.ph.i.i.i.i.i.us
  %.012.i.i.i.i.i.us = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i.us ], [ %i.dd, %.noexc198.us ] ; 2 uses
  %.0911.i.i.i.i.i.us = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i.us ], [ %i.cs, %.noexc198.us ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.us, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.us, i64 24, i1 false), !alias.scope !80
  %i.df = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.us, i64 24 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.us, i64 24 ; 2 uses
  %.not.i.i.i.i.i.us = icmp eq ptr %i.df, %i.co
  br i1 %.not.i.i.i.i.i.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.us, label %.lr.ph.i.i.i.i.i.us, !llvm.loop !7

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.us: ; preds = %.lr.ph.i.i.i.i.i.us, %.noexc198.us
  %.0.lcssa.i.i.i.i.i.us = phi ptr [ %i.dd, %.noexc198.us ], [ %i.dg, %.lr.ph.i.i.i.i.i.us ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.us, i64 24 ; 2 uses
  %.not.i23.i.i.us = icmp eq ptr %i.cs, null
  br i1 %.not.i23.i.i.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.us
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.cv) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us: ; preds = %bb.v, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.us
  store ptr %i.dd, ptr %1, align 8
  store ptr %i.dh, ptr %i.cl, align 8
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %i.dd, i64 %i.db ; 2 uses
  store ptr %i.di, ptr %i.ah, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit.us

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit.us: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us, %bb.t
  %i.dj = phi ptr [ %i.di, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us ], [ %.pre, %bb.t ] ; 4 uses
  %i.dk = phi ptr [ %i.dh, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.us ], [ %i.cr, %bb.t ] ; 2 uses
  %indvars.iv.next539 = add nuw nsw i64 %indvars.iv538, 1 ; 5 uses
  %i.dl = icmp eq i64 %indvars.iv.next539, %i.ad
  %i.dm = trunc nuw i64 %indvars.iv.next539 to i32
  %i.dn = select i1 %i.dl, i64 0, i64 %indvars.iv.next539
  %i.do = getelementptr [24 x i8], ptr %i.jc, i64 %i.dn ; 2 uses
  %.not.i199.us = icmp eq ptr %i.dk, %i.dj
  br i1 %.not.i199.us, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, ptr noundef nonnull align 8 dereferenceable(24) %i.do, i64 24, i1 false)
  %i.dp = load ptr, ptr %i.cl, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24 ; 2 uses
  store ptr %i.dq, ptr %i.cl, align 8
  %.pre544 = load ptr, ptr %i.ah, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit214.us

bb.x:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit.us
  %i.dr = load ptr, ptr %1, align 8               ; 5 uses
  %i.ds = ptrtoint ptr %i.dj to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt                    ; 4 uses
  %i.dv = icmp eq i64 %i.du, 9223372036854775800
  br i1 %i.dv, label %.split499.us.invoke, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i200.us

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i200.us: ; preds = %bb.x
  %i.dw = sdiv exact i64 %i.du, 24                ; 3 uses
  %.sroa.speculated.i.i.i201.us = call i64 @llvm.umax.i64(i64 %i.dw, i64 1)
  %i.dx = add nsw i64 %.sroa.speculated.i.i.i201.us, %i.dw ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.dw
  %i.dz = call i64 @llvm.umin.i64(i64 %i.dx, i64 384307168202282325)
  %i.ea = select i1 %i.dy, i64 384307168202282325, i64 %i.dz ; 3 uses
  %.not.i.i.i202.us = icmp ne i64 %i.ea, 0
  call void @llvm.assume(i1 %.not.i.i.i202.us)
  %i.eb = mul nuw nsw i64 %i.ea, 24
  %i.ec = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #28
          to label %.noexc213.us unwind label %.loopexit.split.us ; 5 uses

.noexc213.us:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i200.us
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.du
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ed, ptr noundef nonnull align 8 dereferenceable(24) %i.do, i64 24, i1 false)
  %.not10.i.i.i.i.i203.us = icmp eq ptr %i.dr, %i.dj
  br i1 %.not10.i.i.i.i.i203.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i208.us, label %.lr.ph.i.i.i.i.i204.us

.lr.ph.i.i.i.i.i204.us:                           ; preds = %.noexc213.us, %.lr.ph.i.i.i.i.i204.us
  %.012.i.i.i.i.i205.us = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i204.us ], [ %i.ec, %.noexc213.us ] ; 2 uses
  %.0911.i.i.i.i.i206.us = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i204.us ], [ %i.dr, %.noexc213.us ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i205.us, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i206.us, i64 24, i1 false), !alias.scope !84
  %i.ee = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i206.us, i64 24 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i205.us, i64 24 ; 2 uses
  %.not.i.i.i.i.i207.us = icmp eq ptr %i.ee, %i.dj
  br i1 %.not.i.i.i.i.i207.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i208.us, label %.lr.ph.i.i.i.i.i204.us, !llvm.loop !7

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i208.us: ; preds = %.lr.ph.i.i.i.i.i204.us, %.noexc213.us
  %.0.lcssa.i.i.i.i.i209.us = phi ptr [ %i.ec, %.noexc213.us ], [ %i.ef, %.lr.ph.i.i.i.i.i204.us ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i209.us, i64 24 ; 2 uses
  %.not.i23.i.i210.us = icmp eq ptr %i.dr, null
  br i1 %.not.i23.i.i210.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i211.us, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i208.us
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.du) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i211.us

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i211.us: ; preds = %bb.y, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i208.us
  store ptr %i.ec, ptr %1, align 8
  store ptr %i.eg, ptr %i.cl, align 8
  %i.eh = getelementptr inbounds nuw [24 x i8], ptr %i.ec, i64 %i.ea ; 2 uses
  store ptr %i.eh, ptr %i.ah, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit214.us

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit214.us: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i211.us, %bb.w
  %i.ei = phi ptr [ %i.eh, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i211.us ], [ %.pre544, %bb.w ] ; 4 uses
  %i.ej = phi ptr [ %i.eg, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i211.us ], [ %i.dq, %bb.w ] ; 2 uses
  %i.ek = add i32 %.1134.us, %i.dm
  %i.el = urem i32 %i.ek, %i.m
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr [24 x i8], ptr %i.ja, i64 %i.em ; 2 uses
  %.not.i215.us = icmp eq ptr %i.ej, %i.ei
  br i1 %.not.i215.us, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit214.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ej, ptr noundef nonnull align 8 dereferenceable(24) %i.en, i64 24, i1 false)
  %i.eo = load ptr, ptr %i.cl, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24 ; 2 uses
  store ptr %i.ep, ptr %i.cl, align 8
  %.pre545 = load ptr, ptr %i.ah, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit230.us

bb.aa:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit214.us
  %i.eq = load ptr, ptr %1, align 8               ; 5 uses
  %i.er = ptrtoint ptr %i.ei to i64
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = sub i64 %i.er, %i.es                    ; 4 uses
  %i.eu = icmp eq i64 %i.et, 9223372036854775800
  br i1 %i.eu, label %.split499.us.invoke, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i216.us

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i216.us: ; preds = %bb.aa
  %i.ev = sdiv exact i64 %i.et, 24                ; 3 uses
  %.sroa.speculated.i.i.i217.us = call i64 @llvm.umax.i64(i64 %i.ev, i64 1)
  %i.ew = add nsw i64 %.sroa.speculated.i.i.i217.us, %i.ev ; 2 uses
  %i.ex = icmp ult i64 %i.ew, %i.ev
  %i.ey = call i64 @llvm.umin.i64(i64 %i.ew, i64 384307168202282325)
  %i.ez = select i1 %i.ex, i64 384307168202282325, i64 %i.ey ; 3 uses
  %.not.i.i.i218.us = icmp ne i64 %i.ez, 0
  call void @llvm.assume(i1 %.not.i.i.i218.us)
  %i.fa = mul nuw nsw i64 %i.ez, 24
  %i.fb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fa) #28
          to label %.noexc229.us unwind label %.loopexit.split.us ; 5 uses

.noexc229.us:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i216.us
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.et
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fc, ptr noundef nonnull align 8 dereferenceable(24) %i.en, i64 24, i1 false)
  %.not10.i.i.i.i.i219.us = icmp eq ptr %i.eq, %i.ei
  br i1 %.not10.i.i.i.i.i219.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i224.us, label %.lr.ph.i.i.i.i.i220.us

.lr.ph.i.i.i.i.i220.us:                           ; preds = %.noexc229.us, %.lr.ph.i.i.i.i.i220.us
  %.012.i.i.i.i.i221.us = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i220.us ], [ %i.fb, %.noexc229.us ] ; 2 uses
  %.0911.i.i.i.i.i222.us = phi ptr [ %i.fd, %.lr.ph.i.i.i.i.i220.us ], [ %i.eq, %.noexc229.us ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i221.us, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i222.us, i64 24, i1 false), !alias.scope !88
  %i.fd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i222.us, i64 24 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i221.us, i64 24 ; 2 uses
  %.not.i.i.i.i.i223.us = icmp eq ptr %i.fd, %i.ei
  br i1 %.not.i.i.i.i.i223.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i224.us, label %.lr.ph.i.i.i.i.i220.us, !llvm.loop !7

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i224.us: ; preds = %.lr.ph.i.i.i.i.i220.us, %.noexc229.us
  %.0.lcssa.i.i.i.i.i225.us = phi ptr [ %i.fb, %.noexc229.us ], [ %i.fe, %.lr.ph.i.i.i.i.i220.us ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i225.us, i64 24 ; 2 uses
  %.not.i23.i.i226.us = icmp eq ptr %i.eq, null
  br i1 %.not.i23.i.i226.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i227.us, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i224.us
  call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef %i.et) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i227.us

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i227.us: ; preds = %bb.ab, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i224.us
  store ptr %i.fb, ptr %1, align 8
  store ptr %i.ff, ptr %i.cl, align 8
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %i.ez ; 2 uses
  store ptr %i.fg, ptr %i.ah, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit230.us

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit230.us: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i227.us, %bb.z
  %i.fh = phi ptr [ %i.fg, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i227.us ], [ %.pre545, %bb.z ] ; 4 uses
  %i.fi = phi ptr [ %i.ff, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i227.us ], [ %i.ep, %bb.z ] ; 2 uses
  %i.fj = trunc nuw i64 %indvars.iv538 to i32
  %i.fk = add i32 %.1134.us, %i.fj
  %i.fl = urem i32 %i.fk, %i.m
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr [24 x i8], ptr %i.ja, i64 %i.fm ; 2 uses
  %.not.i231.us = icmp eq ptr %i.fi, %i.fh
  br i1 %.not.i231.us, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit230.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fi, ptr noundef nonnull align 8 dereferenceable(24) %i.fn, i64 24, i1 false)
  %i.fo = load ptr, ptr %i.cl, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24 ; 2 uses
  store ptr %i.fp, ptr %i.cl, align 8
  br label %bb.af

bb.ad:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backERKS1_.exit230.us
  %i.fq = load ptr, ptr %1, align 8               ; 5 uses
  %i.fr = ptrtoint ptr %i.fh to i64
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = sub i64 %i.fr, %i.fs                    ; 4 uses
  %i.fu = icmp eq i64 %i.ft, 9223372036854775800
  br i1 %i.fu, label %.split499.us.invoke, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i232.us

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i232.us: ; preds = %bb.ad
  %i.fv = sdiv exact i64 %i.ft, 24                ; 3 uses
  %.sroa.speculated.i.i.i233.us = call i64 @llvm.umax.i64(i64 %i.fv, i64 1)
  %i.fw = add nsw i64 %.sroa.speculated.i.i.i233.us, %i.fv ; 2 uses
  %i.fx = icmp ult i64 %i.fw, %i.fv
  %i.fy = call i64 @llvm.umin.i64(i64 %i.fw, i64 384307168202282325)
  %i.fz = select i1 %i.fx, i64 384307168202282325, i64 %i.fy ; 3 uses
  %.not.i.i.i234.us = icmp ne i64 %i.fz, 0
  call void @llvm.assume(i1 %.not.i.i.i234.us)
  %i.ga = mul nuw nsw i64 %i.fz, 24
  %i.gb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ga) #28
          to label %.noexc245.us unwind label %.loopexit.split.us ; 5 uses

.noexc245.us:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i232.us
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.ft
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gc, ptr noundef nonnull align 8 dereferenceable(24) %i.fn, i64 24, i1 false)
  %.not10.i.i.i.i.i235.us = icmp eq ptr %i.fq, %i.fh
  br i1 %.not10.i.i.i.i.i235.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i240.us, label %.lr.ph.i.i.i.i.i236.us

.lr.ph.i.i.i.i.i236.us:                           ; preds = %.noexc245.us, %.lr.ph.i.i.i.i.i236.us
  %.012.i.i.i.i.i237.us = phi ptr [ %i.ge, %.lr.ph.i.i.i.i.i236.us ], [ %i.gb, %.noexc245.us ] ; 2 uses
  %.0911.i.i.i.i.i238.us = phi ptr [ %i.gd, %.lr.ph.i.i.i.i.i236.us ], [ %i.fq, %.noexc245.us ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i237.us, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i238.us, i64 24, i1 false), !alias.scope !92
  %i.gd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i238.us, i64 24 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i237.us, i64 24 ; 2 uses
  %.not.i.i.i.i.i239.us = icmp eq ptr %i.gd, %i.fh
  br i1 %.not.i.i.i.i.i239.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i240.us, label %.lr.ph.i.i.i.i.i236.us, !llvm.loop !7

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i240.us: ; preds = %.lr.ph.i.i.i.i.i236.us, %.noexc245.us
  %.0.lcssa.i.i.i.i.i241.us = phi ptr [ %i.gb, %.noexc245.us ], [ %i.ge, %.lr.ph.i.i.i.i.i236.us ]
  %i.gf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i241.us, i64 24 ; 2 uses
  %.not.i23.i.i242.us = icmp eq ptr %i.fq, null
  br i1 %.not.i23.i.i242.us, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i243.us, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i240.us
  call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef %i.ft) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i243.us

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i243.us: ; preds = %bb.ae, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i240.us
  store ptr %i.gb, ptr %1, align 8
  store ptr %i.gf, ptr %i.cl, align 8
  %i.gg = getelementptr inbounds nuw [24 x i8], ptr %i.gb, i64 %i.fz
  store ptr %i.gg, ptr %i.ah, align 8
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i243.us, %bb.ac
  %i.gh = phi ptr [ %i.gf, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i243.us ], [ %i.fp, %bb.ac ] ; 7 uses
  %i.gi = getelementptr inbounds i8, ptr %i.gh, i64 -24 ; 3 uses
  %i.gj = getelementptr inbounds i8, ptr %i.gh, i64 -72 ; 3 uses
  %i.gk = getelementptr inbounds i8, ptr %i.gh, i64 -96 ; 3 uses
  %i.gl = load double, ptr %i.gk, align 8, !noalias !96 ; 2 uses
  %i.gm = load double, ptr %i.gj, align 8, !noalias !96
  %i.gn = getelementptr inbounds i8, ptr %i.gh, i64 -88
  %i.go = getelementptr inbounds i8, ptr %i.gh, i64 -64
  %i.gp = load double, ptr %i.gi, align 8, !noalias !99
  %i.gq = getelementptr inbounds i8, ptr %i.gh, i64 -16
  %i.gr = load <2 x double>, ptr %i.gn, align 8, !noalias !96 ; 5 uses
  %i.gs = load <2 x double>, ptr %i.go, align 8, !noalias !96 ; 2 uses
  %i.gt = fsub <2 x double> %i.gr, %i.gs          ; 2 uses
  %i.gu = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gv = insertelement <2 x double> %i.gu, double %i.gl, i64 1 ; 2 uses
  %i.gw = shufflevector <2 x double> %i.gs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gx = insertelement <2 x double> %i.gw, double %i.gm, i64 1
  %i.gy = fsub <2 x double> %i.gv, %i.gx          ; 2 uses
  %i.gz = load <2 x double>, ptr %i.gq, align 8, !noalias !99 ; 2 uses
  %i.ha = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.hb = insertelement <2 x double> %i.ha, double %i.gp, i64 1
  %i.hc = fsub <2 x double> %i.gv, %i.hb          ; 2 uses
  %i.hd = fsub <2 x double> %i.gr, %i.gz          ; 2 uses
  %i.he = fneg <2 x double> %i.hd
  %i.hf = fmul <2 x double> %i.gy, %i.he
  %i.hg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gt, <2 x double> %i.hc, <2 x double> %i.hf) ; 2 uses
  %i.hh = load ptr, ptr %3, align 8
  %i.hi = getelementptr inbounds nuw [24 x i8], ptr %i.hh, i64 %.0132495.us ; 3 uses
  %i.hj = load double, ptr %i.hi, align 8, !noalias !102
  %i.hk = fsub double %i.gl, %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hm = load double, ptr %i.hl, align 8, !noalias !102
  %i.hn = extractelement <2 x double> %i.gr, i64 0
  %i.ho = fsub double %i.hn, %i.hm
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hq = load double, ptr %i.hp, align 8, !noalias !102
  %i.hr = extractelement <2 x double> %i.gr, i64 1
  %i.hs = fsub double %i.hr, %i.hq
  %i.ht = shufflevector <2 x double> %i.gt, <2 x double> %i.hg, <2 x i32> <i32 0, i32 3>
  %i.hu = fneg <2 x double> %i.hc
  %i.hv = shufflevector <2 x double> %i.hu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.hw = insertelement <2 x double> %i.hv, double %i.ho, i64 1
  %i.hx = fmul <2 x double> %i.ht, %i.hw
  %i.hy = shufflevector <2 x double> %i.gy, <2 x double> %i.hg, <2 x i32> <i32 1, i32 2>
  %i.hz = insertelement <2 x double> %i.hd, double %i.hk, i64 1
  %i.ia = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hy, <2 x double> %i.hz, <2 x double> %i.hx) ; 2 uses
  %i.ib = extractelement <2 x double> %i.ia, i64 0
  %i.ic = extractelement <2 x double> %i.ia, i64 1
  %i.id = call noundef double @llvm.fmuladd.f64(double %i.ib, double %i.hs, double %i.ic)
  %i.ie = fcmp olt double %i.id, 0.000000e+00
  br i1 %i.ie, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.if = getelementptr inbounds i8, ptr %i.gh, i64 -48 ; 2 uses
  %.sroa.0.0.copyload = load <3 x double>, ptr %i.gk, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gk, ptr noundef nonnull align 8 dereferenceable(24) %i.gi, i64 24, i1 false)
  store <3 x double> %.sroa.0.0.copyload, ptr %i.gi, align 8
  %.sroa.0636.0.copyload = load <3 x double>, ptr %i.gj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gj, ptr noundef nonnull align 8 dereferenceable(24) %i.if, i64 24, i1 false)
  store <3 x double> %.sroa.0636.0.copyload, ptr %i.if, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ig = load ptr, ptr %i.cm, align 8            ; 3 uses
  %i.ih = load ptr, ptr %i.be, align 8
  %.not.i.i247.us = icmp eq ptr %i.ig, %i.ih
  br i1 %.not.i.i247.us, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i32 4, ptr %i.ig, align 4
  %i.ii = load ptr, ptr %i.cm, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  store ptr %i.ij, ptr %i.cm, align 8
  br label %bb.am

bb.aj:                                            ; preds = %bb.ah
  %i.ik = load ptr, ptr %i.az, align 8            ; 4 uses
  %i.il = ptrtoint ptr %i.ig to i64
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = sub i64 %i.il, %i.im                    ; 6 uses
  %i.io = icmp eq i64 %i.in, 9223372036854775804
  br i1 %i.io, label %.split507.us, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us: ; preds = %bb.aj
  %i.ip = ashr exact i64 %i.in, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i248.us = call i64 @llvm.umax.i64(i64 %i.ip, i64 1)
  %i.iq = add nsw i64 %.sroa.speculated.i.i.i.i248.us, %i.ip ; 2 uses
  %i.ir = icmp ult i64 %i.iq, %i.ip
  %i.is = call i64 @llvm.umin.i64(i64 %i.iq, i64 2305843009213693951)
  %i.it = select i1 %i.ir, i64 2305843009213693951, i64 %i.is ; 3 uses
  %.not.i.i.i.i249.us = icmp ne i64 %i.it, 0
  call void @llvm.assume(i1 %.not.i.i.i.i249.us)
  %i.iu = shl nuw nsw i64 %i.it, 2
  %i.iv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iu) #28
          to label %.noexc251.us unwind label %.loopexit386.split.us ; 4 uses

.noexc251.us:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us
  %i.iw = getelementptr inbounds i8, ptr %i.iv, i64 %i.in ; 2 uses
  store i32 4, ptr %i.iw, align 4
  %i.ix = icmp sgt i64 %i.in, 0
  br i1 %i.ix, label %bb.ak, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us

bb.ak:                                            ; preds = %.noexc251.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.iv, ptr align 4 %i.ik, i64 %i.in, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us: ; preds = %bb.ak, %.noexc251.us
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 4
  %.not.i17.i.i.i.us = icmp eq ptr %i.ik, null
  br i1 %.not.i17.i.i.i.us, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us
  call void @_ZdlPvm(ptr noundef nonnull %i.ik, i64 noundef %i.in) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us: ; preds = %bb.al, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i.us
  store ptr %i.iv, ptr %i.az, align 8
  store ptr %i.iy, ptr %i.cm, align 8
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.it
  store ptr %i.iz, ptr %i.be, align 8
  br label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i.us, %bb.ai
  %exitcond537.not.a = icmp eq i64 %indvars.iv.next539, %i.ad
  br i1 %exitcond537.not.a, label %._crit_edge494.us, label %bb.s, !llvm.loop !105

.preheader.us:                                    ; preds = %4
  %i.ja = getelementptr [24 x i8], ptr %.sroa.0353.1.lcssa597, i64 %i.jm ; 2 uses
  br label %bb.s

.lr.ph490.us:                                     ; preds = %.lr.ph496, %._crit_edge494.us
  %.0132495.us = phi i64 [ %i.jl, %._crit_edge494.us ], [ 0, %.lr.ph496 ] ; 3 uses
  %i.jb = mul i64 %.0132495.us, %i.ad
  %i.jc = getelementptr [24 x i8], ptr %.sroa.0353.1.lcssa597, i64 %i.jb ; 5 uses
  %i.jd = load double, ptr %i.jc, align 8
  %i.je = fptrunc double %i.jd to float
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.jg = load double, ptr %i.jf, align 8
  %i.jh = fptrunc double %i.jg to float
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.jj = load double, ptr %i.ji, align 8
  %i.jk = fptrunc double %i.jj to float
  %i.jl = add nuw i64 %.0132495.us, 1             ; 3 uses
  %i.jm = mul i64 %i.jl, %i.ad                    ; 2 uses
  %i.jn = getelementptr [24 x i8], ptr %.sroa.0353.1.lcssa597, i64 %i.jm
  br label %4

._crit_edge494.us:                                ; preds = %bb.am
  %exitcond543.not = icmp eq i64 %i.jl, %.pre-phi550594
  br i1 %exitcond543.not, label %._crit_edge497, label %.lr.ph490.us, !llvm.loop !106

.loopexit.split.us:                               ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i232.us, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i216.us, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i200.us, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit386.split.us:                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.us
  %lpad.loopexit388.us = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.an:                                            ; preds = %.lr.ph483, %._crit_edge
  %.0125481 = phi i32 [ 0, %.lr.ph483 ], [ %.1126, %._crit_edge ] ; 3 uses
  %.0128480 = phi i64 [ 0, %.lr.ph483 ], [ %i.ng, %._crit_edge ] ; 3 uses
  %.sroa.0353.1479 = phi ptr [ %.sroa.16.2, %.lr.ph483 ], [ %.sroa.0353.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.16.0478 = phi ptr [ %.sroa.16.2, %.lr.ph483 ], [ %.sroa.16.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.22.1477 = phi ptr [ %.sroa.22.6, %.lr.ph483 ], [ %.sroa.22.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.0347.0474 = phi double [ %.sroa.0347.0.copyload, %.lr.ph483 ], [ %.sroa.0328.1, %._crit_edge ] ; 3 uses
  %.sroa.0336.0471 = phi double [ %.sroa.0347.0.copyload, %.lr.ph483 ], [ %.sroa.0347.0474, %._crit_edge ] ; 2 uses
  %.sroa.0328.0470 = phi double [ 0.000000e+00, %.lr.ph483 ], [ %.sroa.0328.1, %._crit_edge ]
  %.sroa.0324.0464 = phi double [ 1.000000e+00, %.lr.ph483 ], [ %i.nh, %._crit_edge ] ; 4 uses
  %.sroa.8.0461 = phi double [ 1.000000e+00, %.lr.ph483 ], [ %i.lq, %._crit_edge ] ; 4 uses
  %.sroa.12.0458 = phi double [ 1.000000e+00, %.lr.ph483 ], [ %i.ni, %._crit_edge ] ; 4 uses
  %i.jo = phi <2 x double> [ %i.ci, %.lr.ph483 ], [ %i.jv, %._crit_edge ] ; 4 uses
  %i.jp = phi <2 x double> [ zeroinitializer, %.lr.ph483 ], [ %i.jv, %._crit_edge ]
  %i.jq = phi <2 x double> [ %i.ci, %.lr.ph483 ], [ %i.jo, %._crit_edge ] ; 2 uses
  %.not152 = icmp eq i64 %.0128480, %i.cj
  br i1 %.not152, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jr = load ptr, ptr %3, align 8
  %i.js = getelementptr inbounds nuw [24 x i8], ptr %i.jr, i64 %.0128480 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 24
  %.sroa.0328.0.copyload = load double, ptr %i.jt, align 8
  %.sroa.7330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.js, i64 32
  %i.ju = load <2 x double>, ptr %.sroa.7330.0..sroa_idx, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %.sroa.0328.1 = phi double [ %.sroa.0328.0470, %bb.an ], [ %.sroa.0328.0.copyload, %bb.ao ] ; 3 uses
  %i.jv = phi <2 x double> [ %i.jp, %bb.an ], [ %i.ju, %bb.ao ] ; 3 uses
  %i.jw = fsub double %.sroa.0347.0474, %.sroa.0336.0471
  %i.jx = fsub <2 x double> %i.jo, %i.jq
  %i.jy = fsub double %.sroa.0328.1, %.sroa.0336.0471
  %i.jz = fsub <2 x double> %i.jv, %i.jq
  %i.ka = fadd <2 x double> %i.jx, %i.jz          ; 5 uses
  %i.kb = fadd double %i.jw, %i.jy                ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.ka, %i.ka
  %i.kc = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.kd = call double @llvm.fmuladd.f64(double %i.kb, double %i.kb, double %i.kc)
  %i.ke = extractelement <2 x double> %i.ka, i64 1 ; 2 uses
  %i.kf = call noundef double @llvm.fmuladd.f64(double %i.ke, double %i.ke, double %i.kd) ; 2 uses
  %i.kg = fcmp oeq double %i.kf, 0.000000e+00
  br i1 %i.kg, label %_ZN10aiVector3tIdE9NormalizeEv.exit, label %_ZN10aiVector3tIdEdVEd.exit.i

_ZN10aiVector3tIdEdVEd.exit.i:                    ; preds = %bb.ap
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.kf)
  %i.kh = fdiv double 1.000000e+00, %sqrt.i.i     ; 2 uses
  %i.ki = fmul double %i.kb, %i.kh
  %i.kj = insertelement <2 x double> poison, double %i.kh, i64 0
  %i.kk = shufflevector <2 x double> %i.kj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kl = fmul <2 x double> %i.ka, %i.kk
  br label %_ZN10aiVector3tIdE9NormalizeEv.exit

_ZN10aiVector3tIdE9NormalizeEv.exit:              ; preds = %_ZN10aiVector3tIdEdVEd.exit.i, %bb.ap
  %.sroa.0307.0 = phi double [ %i.kb, %bb.ap ], [ %i.ki, %_ZN10aiVector3tIdEdVEd.exit.i ]
  %i.km = phi <2 x double> [ %i.ka, %bb.ap ], [ %i.kl, %_ZN10aiVector3tIdEdVEd.exit.i ]
  %i.kn = freeze <2 x double> %i.km               ; 7 uses
  %.sroa.0307.0.fr = freeze double %.sroa.0307.0  ; 7 uses
  %i.ko = call double @llvm.fabs.f64(double %.sroa.0307.0.fr)
  %i.kp = fcmp ogt double %i.ko, f0x3EB0C6F7A0000000
  %i.kq = icmp eq i32 %.0125481, 1
  %i.kr = extractelement <2 x double> %i.kn, i64 0 ; 5 uses
  %i.ks = call double @llvm.fabs.f64(double %i.kr)
  %i.kt = fcmp ogt double %i.ks, f0x3EB0C6F7A0000000 ; 2 uses
  %i.ku = icmp ne i32 %.0125481, 2                ; 3 uses
  %i.kv = extractelement <2 x double> %i.kn, i64 1 ; 6 uses
  %i.kw = call double @llvm.fabs.f64(double %i.kv)
  %i.kx = fcmp ule double %i.kw, f0x3EB0C6F7A0000000 ; 3 uses
  br i1 %i.kp, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split.us

_ZN10aiVector3tIdE9NormalizeEv.exit.split.us:     ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit
  %brmerge609 = or i1 %i.ku, %i.kx
  %or.cond = and i1 %i.kt, %brmerge609
  br i1 %or.cond, label %.split.us.split, label %.split417.us

_ZN10aiVector3tIdE9NormalizeEv.exit.split:        ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit
  %i.ky = icmp eq i32 %.0125481, 0
  br i1 %i.ky, label %.split418, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split

_ZN10aiVector3tIdE9NormalizeEv.exit.split.split:  ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split
  br i1 %i.kt, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.us

_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.us: ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split
  %brmerge612 = or i1 %i.ku, %i.kx
  br i1 %brmerge612, label %.split418, label %.split417.us

_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split: ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split
  br i1 %i.kq, label %.split.us.split, label %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.split

_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.split: ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split
  %brmerge615 = or i1 %i.ku, %i.kx
  br i1 %brmerge615, label %.split418, label %.split417.us

.split418:                                        ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.split, %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.us, %_ZN10aiVector3tIdE9NormalizeEv.exit.split
  %i.kz = fmul double %.sroa.12.0458, %i.kv
  %i.la = call double @llvm.fmuladd.f64(double %i.kr, double %.sroa.8.0461, double %i.kz)
  %i.lb = fneg double %i.la
  %i.lc = fdiv double %i.lb, %.sroa.0307.0.fr
  br label %.loopexit397

.split.us.split:                                  ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.us, %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split
  %i.ld = fmul double %.sroa.12.0458, %i.kv
  %i.le = call double @llvm.fmuladd.f64(double %.sroa.0307.0.fr, double %.sroa.0324.0464, double %i.ld)
  %i.lf = fneg double %i.le
  %i.lg = fdiv double %i.lf, %i.kr
  br label %.loopexit397

.split417.us:                                     ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit.split.us, %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.split, %_ZN10aiVector3tIdE9NormalizeEv.exit.split.split.split.us
  %i.lh = fmul double %.sroa.0324.0464, %.sroa.0307.0.fr
  %i.li = call double @llvm.fmuladd.f64(double %i.kr, double %.sroa.8.0461, double %i.lh)
  %i.lj = fneg double %i.li
  %i.lk = fdiv double %i.lj, %i.kv
  br label %.loopexit397

.loopexit397:                                     ; preds = %.split417.us, %.split.us.split, %.split418
  %.sroa.23297.0 = phi double [ %.sroa.12.0458, %.split418 ], [ %.sroa.12.0458, %.split.us.split ], [ %i.lk, %.split417.us ] ; 3 uses
  %.sroa.14.0 = phi double [ %.sroa.8.0461, %.split418 ], [ %i.lg, %.split.us.split ], [ %.sroa.8.0461, %.split417.us ] ; 3 uses
  %.sroa.0290.0 = phi double [ %i.lc, %.split418 ], [ %.sroa.0324.0464, %.split.us.split ], [ %.sroa.0324.0464, %.split417.us ] ; 3 uses
  %.1126 = phi i32 [ 0, %.split418 ], [ 1, %.split.us.split ], [ 2, %.split417.us ]
  %i.ll = load double, ptr %i.ck, align 8
  %i.lm = fmul double %.sroa.14.0, %.sroa.14.0
  %i.ln = call double @llvm.fmuladd.f64(double %.sroa.0290.0, double %.sroa.0290.0, double %i.lm)
  %i.lo = call noundef double @llvm.fmuladd.f64(double %.sroa.23297.0, double %.sroa.23297.0, double %i.ln)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.lo)
  %i.lp = fdiv double %i.ll, %sqrt.i              ; 2 uses
  %i.lq = fmul double %.sroa.14.0, %i.lp          ; 2 uses
  %i.lr = insertelement <2 x double> poison, double %i.lp, i64 0
  %i.ls = shufflevector <2 x double> %i.lr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lt = insertelement <2 x double> poison, double %.sroa.0290.0, i64 0
  %i.lu = insertelement <2 x double> %i.lt, double %.sroa.23297.0, i64 1
  %i.lv = fmul <2 x double> %i.lu, %i.ls          ; 3 uses
  %i.lw = call double @cos(double noundef %i.o) #30 ; 4 uses
  %i.lx = call double @sin(double noundef %i.o) #30 ; 2 uses
  %i.ly = fsub double 1.000000e+00, %i.lw         ; 3 uses
  %i.lz = fmul double %.sroa.0307.0.fr, %i.lx     ; 2 uses
  %i.ma = fneg double %i.lz
  %i.mb = fmul double %i.kr, %i.ly                ; 2 uses
  %i.mc = fmul double %.sroa.0307.0.fr, %i.ly
  %i.md = fmul double %i.kv, %i.ly
  %i.me = insertelement <2 x double> poison, double %i.lx, i64 0
  %i.mf = shufflevector <2 x double> %i.kn, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mg = shufflevector <2 x double> %i.me, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mh = fmul <2 x double> %i.mf, %i.mg          ; 3 uses
  %i.mi = extractelement <2 x double> %i.mh, i64 0
  %i.mj = fneg double %i.mi
  %i.mk = insertelement <2 x double> poison, double %i.mc, i64 0
  %i.ml = shufflevector <2 x double> %i.mk, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.mm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ml, <2 x double> %i.kn, <2 x double> %i.mh) ; 2 uses
  %i.mn = insertelement <2 x double> poison, double %i.mb, i64 0
  %i.mo = shufflevector <2 x double> %i.mn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mp = insertelement <2 x double> poison, double %i.lw, i64 0
  %i.mq = insertelement <2 x double> %i.mp, double %i.ma, i64 1
  %i.mr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mo, <2 x double> %i.kn, <2 x double> %i.mq) ; 2 uses
  %i.ms = insertelement <2 x double> %i.kn, double %.sroa.0307.0.fr, i64 0
  %i.mt = fneg <2 x double> %i.mh
  %i.mu = insertelement <2 x double> %i.mt, double %i.lw, i64 0
  %i.mv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ml, <2 x double> %i.ms, <2 x double> %i.mu)
  %i.mw = insertelement <2 x double> poison, double %i.mj, i64 0
  %i.mx = insertelement <2 x double> %i.mw, double %i.lz, i64 1
  %i.my = insertelement <2 x double> %i.ml, double %i.mb, i64 1
  %i.mz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.my, <2 x double> %i.kn, <2 x double> %i.mx)
  %i.na = call double @llvm.fmuladd.f64(double %i.md, double %i.kv, double %i.lw)
  br i1 %.not510, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.loopexit397
  %i.nb = insertelement <2 x double> poison, double %.sroa.0347.0474, i64 0
  %i.nc = extractelement <2 x double> %i.mr, i64 0
  %i.nd = shufflevector <2 x double> %i.mm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ne = insertelement <2 x double> %i.nd, double %i.na, i64 1
  %i.nf = extractelement <2 x double> %i.mr, i64 1
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit, %.loopexit397
  %.sroa.22.2.lcssa = phi ptr [ %.sroa.22.1477, %.loopexit397 ], [ %.sroa.22.7, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.sroa.16.1.lcssa = phi ptr [ %.sroa.16.0478, %.loopexit397 ], [ %.sroa.16.3, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ]
  %.sroa.0353.2.lcssa = phi ptr [ %.sroa.0353.1479, %.loopexit397 ], [ %.sroa.0353.7, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %i.ng = add nuw i64 %.0128480, 1                ; 2 uses
  %exitcond535.not = icmp eq i64 %i.ng, %i.ac
  %i.nh = extractelement <2 x double> %i.lv, i64 0
  %i.ni = extractelement <2 x double> %i.lv, i64 1
  br i1 %exitcond535.not, label %.preheader391, label %bb.an, !llvm.loop !107

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit
  %.0131455 = phi i32 [ %i.oe, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ], [ 0, %.lr.ph.preheader ]
  %.sroa.0353.2454 = phi ptr [ %.sroa.0353.7, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.0353.1479, %.lr.ph.preheader ] ; 8 uses
  %.sroa.16.1453 = phi ptr [ %.sroa.16.3, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.16.0478, %.lr.ph.preheader ] ; 9 uses
  %.sroa.22.2452 = phi ptr [ %.sroa.22.7, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit ], [ %.sroa.22.1477, %.lr.ph.preheader ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeIN6Assimp3IFC14ConversionData14MeshCacheIndexESt4pairIKS3_St3setIjSt4lessIjESaIjEEESt10_Select1stISB_ES7_IS3_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS5_:bb.a
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %._crit_edge.i45.thread

._crit_edge.i45.thread:                           ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i41.thread, %bb.r
  %i.dy = phi ptr [ %.pre, %bb.r ], [ %i.dm, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i41.thread ] ; 2 uses
  %.020.lcssa33.i46 = phi ptr [ %.020.lcssa34.i55, %bb.r ], [ %.02126.i39, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i41.thread ] ; 2 uses
  %.sroa.06.0.i47 = phi ptr [ %i.dx, %bb.r ], [ %.02126.i39, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i41.thread ] ; 2 uses
  %i.dz = icmp ult ptr %i.dy, %i.ar
  br i1 %i.dz, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i45.thread
  %i.ea = icmp eq ptr %i.dy, %i.ar
  br i1 %i.ea, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i53, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i48

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i53: ; preds = %bb.s
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i47, i64 40
  %i.ec = load i32, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ee = load i32, ptr %i.ed, align 8
  %i.ef = icmp ult i32 %i.ec, %i.ee
  br i1 %i.ef, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i48

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i48: ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i53, %bb.s
  br label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread: ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i48, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i53, %._crit_edge.i45.thread, %._crit_edge.thread.i54, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i24, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i29, %._crit_edge.i21.thread, %._crit_edge.thread.i30, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i, %._crit_edge.i.thread, %._crit_edge.thread.i, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit35.thread, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit11.thread, %bb.c, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit34, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit34.thread, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit10.thread, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit
  %.sroa.078.2 = phi ptr [ %spec.select, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit11.thread ], [ null, %bb.c ], [ null, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit ], [ %spec.select94, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit35.thread ], [ %1, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit34 ], [ null, %._crit_edge.i.thread ], [ %i.bb, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit10.thread ], [ null, %._crit_edge.i45.thread ], [ null, %._crit_edge.i21.thread ], [ null, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit34.thread ], [ %.sroa.06.0.i, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i ], [ null, %._crit_edge.thread.i ], [ null, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i ], [ %.sroa.06.0.i23, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i24 ], [ null, %._crit_edge.thread.i30 ], [ null, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i29 ], [ %.sroa.06.0.i47, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i48 ], [ null, %._crit_edge.thread.i54 ], [ null, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i53 ]
  %.sroa.12.2 = phi ptr [ %spec.select93, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit11.thread ], [ %i.f, %bb.c ], [ %i.f, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit ], [ %spec.select95, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit35.thread ], [ null, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit34 ], [ %.020.lcssa33.i, %._crit_edge.i.thread ], [ %i.bb, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit10.thread ], [ %.020.lcssa33.i46, %._crit_edge.i45.thread ], [ %.020.lcssa33.i22, %._crit_edge.i21.thread ], [ %i.ct, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit34.thread ], [ null, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i ], [ %.020.lcssa34.i, %._crit_edge.thread.i ], [ %.020.lcssa33.i, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i ], [ null, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i24 ], [ %.020.lcssa34.i31, %._crit_edge.thread.i30 ], [ %.020.lcssa33.i22, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i29 ], [ null, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.thread23.i48 ], [ %.020.lcssa34.i55, %._crit_edge.thread.i54 ], [ %.020.lcssa33.i46, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit5.i53 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.078.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN6Assimp3IFC14ConversionData14MeshCacheIndexESt4pairIKS3_St3setIjSt4lessIjESaIjEEESt10_Select1stISB_ES7_IS3_ESaISB_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  invoke void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef %i.e)
          to label %_ZNSt8_Rb_treeIN6Assimp3IFC14ConversionData14MeshCacheIndexESt4pairIKS3_St3setIjSt4lessIjESaIjEEESt10_Select1stISB_ES7_IS3_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #31
  unreachable

_ZNSt8_Rb_treeIN6Assimp3IFC14ConversionData14MeshCacheIndexESt4pairIKS3_St3setIjSt4lessIjESaIjEEESt10_Select1stISB_ES7_IS3_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit: ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #29
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8_Rb_treeIN6Assimp3IFC14ConversionData14MeshCacheIndexESt4pairIKS3_St3setIjSt4lessIjESaIjEEESt10_Select1stISB_ES7_IS3_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind memory(none) }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold noreturn }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { noreturn }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { builtin nounwind }
attributes #30 = { nounwind }
attributes #31 = { noreturn nounwind }
attributes #32 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !6}
!4 = distinct !{!4, !5, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!5 = distinct !{!5, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!6 = distinct !{!6, !5, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZSt11make_sharedIN6Assimp3IFC8TempMeshEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_: argument 0"}
!12 = distinct !{!12, !"_ZSt11make_sharedIN6Assimp3IFC8TempMeshEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_"}
!13 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{!16, !18}
!16 = distinct !{!16, !17, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!17 = distinct !{!17, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!18 = distinct !{!18, !17, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!19 = distinct !{!19, !8}
!20 = !{!21, !23}
!21 = distinct !{!21, !22, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!22 = distinct !{!22, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!23 = distinct !{!23, !22, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZSt19__relocate_object_aIN6Assimp3IFC11TempOpeningES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!28 = distinct !{!28, !"_ZSt19__relocate_object_aIN6Assimp3IFC11TempOpeningES2_SaIS2_EEvPT_PT0_RT1_"}
!29 = !{!30}
!30 = distinct !{!30, !28, !"_ZSt19__relocate_object_aIN6Assimp3IFC11TempOpeningES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!31 = !{!27, !30}
!32 = distinct !{!32, !8}
!33 = !{!34, !36}
!34 = distinct !{!34, !35, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!35 = distinct !{!35, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!36 = distinct !{!36, !35, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev: argument 0"}
!39 = distinct !{!39, !"_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev"}
!40 = !{}
!41 = !{i64 4}
!42 = !{!43, !45}
!43 = distinct !{!43, !44, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!44 = distinct !{!44, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!45 = distinct !{!45, !44, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!46 = !{!47, !49}
!47 = distinct !{!47, !48, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!48 = distinct !{!48, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!49 = distinct !{!49, !48, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!50 = !{!51, !53}
!51 = distinct !{!51, !52, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!52 = distinct !{!52, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!53 = distinct !{!53, !52, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!54 = !{!55, !57}
!55 = distinct !{!55, !56, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!56 = distinct !{!56, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!57 = distinct !{!57, !56, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!58 = !{!59, !61}
!59 = distinct !{!59, !60, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!60 = distinct !{!60, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!61 = distinct !{!61, !60, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!62 = distinct !{!62, !8}
!63 = distinct !{!63, !8}
!64 = distinct !{!64, !8}
!65 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!66 = !{!67, !69}
!67 = distinct !{!67, !68, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!68 = distinct !{!68, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!69 = distinct !{!69, !68, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!70 = !{!71, !73}
!71 = distinct !{!71, !72, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!72 = distinct !{!72, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!73 = distinct !{!73, !72, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!74 = distinct !{!74, !8}
!75 = !{!76, !78}
!76 = distinct !{!76, !77, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!77 = distinct !{!77, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!78 = distinct !{!78, !77, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!79 = distinct !{!79, !8}
!80 = !{!81, !83}
!81 = distinct !{!81, !82, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!82 = distinct !{!82, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!83 = distinct !{!83, !82, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!84 = !{!85, !87}
!85 = distinct !{!85, !86, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!86 = distinct !{!86, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!87 = distinct !{!87, !86, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!88 = !{!89, !91}
!89 = distinct !{!89, !90, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!90 = distinct !{!90, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!91 = distinct !{!91, !90, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!92 = !{!93, !95}
!93 = distinct !{!93, !94, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!94 = distinct !{!94, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!95 = distinct !{!95, !94, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!98 = distinct !{!98, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!101 = distinct !{!101, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_"}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!104 = distinct !{!104, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_"}
!105 = distinct !{!105, !8}
!106 = distinct !{!106, !8}
!107 = distinct !{!107, !8}
!108 = !{!109, !111}
!109 = distinct !{!109, !110, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!110 = distinct !{!110, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!111 = distinct !{!111, !110, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!112 = distinct !{!112, !8}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!115 = distinct !{!115, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_"}
!116 = distinct !{!116, !8}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!119 = distinct !{!119, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_"}
!120 = distinct !{!120, !8}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!123 = distinct !{!123, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_"}
!124 = distinct !{!124, !8}
!125 = !{!126, !128}
!126 = distinct !{!126, !127, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!127 = distinct !{!127, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!128 = distinct !{!128, !127, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!129 = distinct !{!129, !8}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZmlIdE10aiVector3tIT_ERK12aiMatrix4x4tIS1_ERKS2_: argument 0"}
!132 = distinct !{!132, !"_ZmlIdE10aiVector3tIT_ERK12aiMatrix4x4tIS1_ERKS2_"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_ZmlIdE10aiVector3tIT_ERK12aiMatrix3x3tIS1_ERKS2_: argument 0"}
!135 = distinct !{!135, !"_ZmlIdE10aiVector3tIT_ERK12aiMatrix3x3tIS1_ERKS2_"}
!136 = distinct !{!136, !8}
!137 = !{i8 0, i8 2}
!138 = distinct !{!138, !8}
!139 = !{!140, !142}
!140 = distinct !{!140, !141, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!141 = distinct !{!141, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!142 = distinct !{!142, !141, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!145 = distinct !{!145, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_"}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!148 = distinct !{!148, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_"}
!149 = !{!150, !152}
!150 = distinct !{!150, !151, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!151 = distinct !{!151, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!152 = distinct !{!152, !151, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!155 = distinct !{!155, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_"}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!158 = distinct !{!158, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_"}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!161 = distinct !{!161, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!162 = !{!163}
!163 = distinct !{!163, !164, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!164 = distinct !{!164, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!165 = !{!163, !160}
!166 = distinct !{!166, !8}
!167 = !{!168, !170}
!168 = distinct !{!168, !169, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!169 = distinct !{!169, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!170 = distinct !{!170, !169, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!171 = !{!172, !174}
!172 = distinct !{!172, !173, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!173 = distinct !{!173, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!174 = distinct !{!174, !173, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!175 = !{!176}
!176 = distinct !{!176, !177, !"_ZplIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!177 = distinct !{!177, !"_ZplIdE10aiVector3tIT_ERKS2_S4_"}
!178 = !{!179, !181}
!179 = distinct !{!179, !180, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!180 = distinct !{!180, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!181 = distinct !{!181, !180, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!182 = !{!183}
!183 = distinct !{!183, !184, !"_ZplIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!184 = distinct !{!184, !"_ZplIdE10aiVector3tIT_ERKS2_S4_"}
!185 = !{!186, !188}
!186 = distinct !{!186, !187, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!187 = distinct !{!187, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!188 = distinct !{!188, !187, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!189 = !{!190}
!190 = distinct !{!190, !191, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!191 = distinct !{!191, !"_ZmiIdE10aiVector3tIT_ERKS2_S4_"}
!192 = distinct !{!192, !8}
!193 = !{!194}
!194 = distinct !{!194, !195, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!195 = distinct !{!195, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!196 = !{!197}
!197 = distinct !{!197, !198, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!198 = distinct !{!198, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!199 = !{!197, !194}
!200 = !{!201}
!201 = distinct !{!201, !202, !"_ZplIdE10aiVector3tIT_ERKS2_S4_: argument 0"}
!202 = distinct !{!202, !"_ZplIdE10aiVector3tIT_ERKS2_S4_"}
!203 = !{!204, !206}
!204 = distinct !{!204, !205, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!205 = distinct !{!205, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!206 = distinct !{!206, !205, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!207 = distinct !{!207, !8}
!208 = !{!209, !211}
!209 = distinct !{!209, !210, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!210 = distinct !{!210, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!211 = distinct !{!211, !210, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!212 = distinct !{!212, !8}
!213 = !{!214}
!214 = distinct !{!214, !215, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!215 = distinct !{!215, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!216 = !{!217}
!217 = distinct !{!217, !218, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!218 = distinct !{!218, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!219 = !{!217, !214}
!220 = distinct !{ptr @_ZN6Assimp3IFC11TempOpeningD2Ev, ptr @_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!221 = distinct !{ptr @_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!222 = !{!223}
!223 = distinct !{!223, !224, !"_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev: argument 0"}
!224 = distinct !{!224, !"_ZNK6Assimp4STEP6Object12GetClassNameB5cxx11Ev"}
!225 = !{!226}
!226 = distinct !{!226, !227, !"_ZSt11make_sharedIN6Assimp3IFC8TempMeshEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_: argument 0"}
!227 = distinct !{!227, !"_ZSt11make_sharedIN6Assimp3IFC8TempMeshEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_"}
!228 = !{i64 8}
!229 = distinct !{!229, !8}
!230 = distinct !{!230, !8}
!231 = distinct !{!231, !8}
!232 = distinct !{!232, !8}
!233 = distinct !{!233, !8}
!234 = distinct !{null}
!235 = distinct !{!235, !8}
!236 = distinct !{!236, !8}
!237 = distinct !{!237, !8}
!238 = distinct !{!238, !8}
!239 = distinct !{!239, !8}
!240 = distinct !{!240, !8}
!241 = !{!242}
!242 = distinct !{!242, !243, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!243 = distinct !{!243, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!244 = !{!245}
!245 = distinct !{!245, !246, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!246 = distinct !{!246, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!247 = !{!248}
!248 = distinct !{!248, !249, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!249 = distinct !{!249, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!250 = !{!251}
!251 = distinct !{!251, !252, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!252 = distinct !{!252, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!253 = !{!251, !248, !245, !242}
!254 = !{!255}
!255 = distinct !{!255, !256, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!256 = distinct !{!256, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!257 = !{!258}
!258 = distinct !{!258, !259, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!259 = distinct !{!259, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!260 = !{!261}
!261 = distinct !{!261, !262, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!262 = distinct !{!262, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!263 = !{!261, !258, !255}
!264 = !{!265}
!265 = distinct !{!265, !266, !"_ZSt19__relocate_object_aIN6Assimp3IFC11TempOpeningES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!266 = distinct !{!266, !"_ZSt19__relocate_object_aIN6Assimp3IFC11TempOpeningES2_SaIS2_EEvPT_PT0_RT1_"}
!267 = !{!268}
!268 = distinct !{!268, !266, !"_ZSt19__relocate_object_aIN6Assimp3IFC11TempOpeningES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!269 = !{!265, !268}
!270 = !{!271}
!271 = distinct !{!271, !272, !"_ZSt19__relocate_object_aIN6Assimp3IFC11TempOpeningES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!272 = distinct !{!272, !"_ZSt19__relocate_object_aIN6Assimp3IFC11TempOpeningES2_SaIS2_EEvPT_PT0_RT1_"}
!273 = !{!274}
!274 = distinct !{!274, !272, !"_ZSt19__relocate_object_aIN6Assimp3IFC11TempOpeningES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!275 = !{!271, !274}
!276 = distinct !{null, null}
!277 = !{!278, !280}
!278 = distinct !{!278, !279, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!279 = distinct !{!279, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!280 = distinct !{!280, !279, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!281 = !{!282}
!282 = distinct !{!282, !283, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!283 = distinct !{!283, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!284 = !{!285}
!285 = distinct !{!285, !286, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!286 = distinct !{!286, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!287 = !{!288}
!288 = distinct !{!288, !289, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!289 = distinct !{!289, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!290 = !{!291}
!291 = distinct !{!291, !292, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!292 = distinct !{!292, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!293 = !{!291, !288, !285, !282}
!294 = distinct !{!294, !8}
!295 = distinct !{!295, !296}
!296 = !{!"llvm.loop.unroll.disable"}
!297 = distinct !{!297, !8}
!298 = distinct !{!298, !296}
!299 = distinct !{!299, !8}
!300 = distinct !{!300, !296}
!301 = !{!302}
!302 = distinct !{!302, !303, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!303 = distinct !{!303, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!304 = !{!305}
end_hunk_1
